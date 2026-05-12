.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x9
                  li x2, 0x0
                  li x3, 0xd
                  li x4, 0x2
                  li x5, 0xe
                  li x6, 0x9
                  li x7, 0xf029230d
                  li x8, 0x80000000
                  li x9, 0xd
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xb10fd839
                  li x14, 0x1
                  li x15, 0x80000000
                  li x17, 0x5851bb0
                  li x18, 0xf427cb66
                  li x19, 0xe833b814
                  li x20, 0xa
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xd7fe8955
                  li x25, 0x940e3e96
                  li x26, 0xf84f71c0
                  li x27, 0x0
                  li x28, 0x0
                  li x30, 0xb244493e
                  li x31, 0x0
                  la x16, user_stack_end
main:             sub          a4, a4, t5
                  sltiu        gp, a3, 36
                  ori          s0, t1, 1680
                  sra          s3, gp, a0
                  la           a1, sub_1
                  add          t5, s11, t0
                  auipc        t0, 149770
                  slt          s6, t6, a2
                  andi         t6, s6, 1709
                  addi         a1, a1, -469
                  slti         gp, s11, -1920
main_j2:          jalr         sp, a1, 470 #jump main -> sub_1
                  la           sp, region_0+632 #start riscv_load_store_rand_instr_stream_0
                  slt          ra, s7, t1
                  sh           t0, -50(sp)
                  lbu          s5, -236(sp)
                  lb           s1, -161(sp)
                  lbu          t3, 81(sp)
                  lb           a0, 71(sp)
                  sra          s2, t6, a6
                  lhu          a3, -28(sp)
                  sb           zero, 97(sp)
                  lw           s7, 156(sp)
                  lbu          a3, -93(sp)
                  lbu          s2, -129(sp)
                  lbu          s9, 215(sp)
                  or           a5, t5, t5
                  lb           a4, -199(sp)
                  sra          t2, s11, s2
                  lbu          ra, 179(sp)
                  sb           s4, 174(sp)
                  lbu          s10, -143(sp)
                  lb           s10, -121(sp)
                  sb           s10, 158(sp)
                  lb           s3, -196(sp)
                  add          s7, t5, a0
                  sb           s0, -194(sp)
                  andi         s2, s4, -242
                  andi         t0, t6, 1262
                  auipc        tp, 456803
                  sh           a0, -152(sp)
                  sw           sp, -236(sp)
                  sra          s10, a0, a1
                  lbu          s9, 45(sp)
                  sw           t3, -4(sp)
                  and          s11, t3, s8
                  lh           ra, -8(sp)
                  lbu          s3, 37(sp)
                  slti         a3, t2, -1577
                  add          s1, t1, t3
                  sh           s7, -104(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          t1, s11, 6f
                  srl          a5, t1, s5
                  addi         s3, s7, -1136
                  sltiu        s3, s4, 783
                  xori         gp, t3, 397
                  srli         a2, s8, 17
6:                bltu         a6, a2, 8f
                  srl          a5, s1, s5
                  slti         s10, sp, -1801
                  la           s4, sub_1
                  andi         s3, zero, 1682
                  ori          s11, s3, -736
                  xor          tp, a6, sp
                  addi         s4, s4, 672
                  and          t2, s5, s5
                  addi         s10, a7, -204
                  sra          a5, s0, s0
                  bgeu         a3, t0, main_j1 #branch to jump instr
                  srai         s6, a6, 1
                  or           t1, a4, a5
main_j1:          jalr         sp, s4, -672 #jump main -> sub_1
                  bltu         s2, s5, 13f
8:                or           t6, s3, s11
                  slli         s3, a6, 0
                  sll          a3, a0, t0
                  bge          a1, t3, 13f
                  slli         a1, s0, 23
13:               auipc        s1, 704448
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            addi         a6, a6, -8
                  sltu         t6, s4, s4
                  sltiu        a1, t3, -1509
                  lui          s11, 296975
                  or           s0, s2, sp
                  xori         a0, t2, -1436
                  sw           sp, 4(a6)
                  addi         t5, sp, 2046
                  xori         s11, s5, -573
                  slt          a1, t0, a2
                  nop
                  sll          ra, s0, s3
                  sltu         zero, t1, t4
                  la           tp, sub_8
                  addi         tp, tp, -367
                  addi         a4, s4, -1619
                  slti         t0, a4, -1302
                  bge          a7, sp, sub_7_j12 #branch to jump instr
                  add          a1, a5, sp
                  sub          a3, gp, s11
sub_7_j12:        jalr         sp, tp, 368 #jump sub_7 -> sub_8
                  lui          ra, 711811
                  sra          s11, tp, s3
                  srai         t5, gp, 0
                  sll          s1, a0, s9
                  srai         sp, zero, 18
                  sll          a4, a2, s5
                  sub          s1, a7, zero
                  la           t0, sub_8
                  sltiu        a1, ra, 1608
                  addi         t0, t0, 721
                  slli         s10, t0, 27
                  sra          s7, s10, a3
sub_7_j13:        jalr         sp, t0, -721 #jump sub_7 -> sub_8
                  ori          s6, s8, 155
                  slt          t1, s11, tp
                  slti         t5, s9, -1737
                  and          t6, t0, s6
                  or           a3, zero, a1
                  lui          s7, 888393
                  blt          t3, zero, 16f
                  bltu         s8, t3, 11f
                  xor          s5, s4, t4
                  srli         t3, a7, 6
                  ori          t1, s5, -232
11:               xor          s3, a0, a0
                  sltiu        s9, s9, 665
                  xori         ra, zero, 1501
                  xor          s6, a2, s9
                  slt          a7, t4, s9
16:               beq          ra, gp, 26f
                  or           a5, gp, a0
                  blt          tp, a5, 38f
                  sll          tp, gp, s4
                  add          a0, s9, t4
                  sltu         s7, s2, t2
                  xor          a4, gp, a3
                  xori         a4, a6, 832
                  ori          s4, sp, -845
                  bltu         a5, s2, 37f
26:               bltu         tp, s2, 32f
                  bgeu         a4, a4, 28f
28:               auipc        ra, 324587
                  slti         a3, a3, 392
                  bge          s9, ra, 40f
                  sra          t0, a1, t2
32:               ori          t2, t0, 1157
                  blt          a3, t1, 42f
                  xori         s11, t6, 1189
                  sltu         s5, a2, a1
                  sltu         s6, t0, a3
37:               lui          t2, 1035387
38:               sltiu        s3, s5, 634
                  srli         t6, a3, 23
40:               sltiu        zero, s5, 326
                  sub          sp, tp, a6
42:               slli         t2, zero, 3
                  addi         zero, t0, 564
                  bne          t1, a1, 54f
                  ori          t6, s1, 33
                  auipc        s9, 957484
                  beq          s10, s9, 49f
                  slti         s9, a1, 1174
49:               auipc        s5, 266503
                  bge          a5, s2, 59f
                  auipc        s2, 296652
                  beq          a4, sp, 68f
                  sltu         t3, s9, s0
54:               slt          a2, ra, a0
                  srai         s2, ra, 15
                  xori         t6, s6, 1940
                  srai         a5, sp, 7
                  bge          t5, s7, 75f
59:               sltu         s4, s7, t5
                  bgeu         a0, t6, 73f
                  and          t0, s7, t1
                  bne          ra, zero, 79f
                  sltu         a7, t6, t4
                  auipc        t0, 22226
                  add          ra, a2, a6
                  bgeu         t6, a7, 78f
                  ori          gp, ra, -1171
68:               lui          a7, 382351
                  or           s5, s4, s5
                  bne          gp, a1, 82f
                  bge          s0, s11, 90f
                  xor          gp, a0, s0
73:               sltiu        a1, tp, -478
                  slt          a0, s1, s9
75:               bltu         t4, s5, 90f
                  xor          s10, a1, a1
                  sra          tp, s7, t2
78:               xor          gp, a7, t3
79:               slt          s11, s8, a7
                  beq          a1, s5, 90f
                  nop
82:               sra          a0, t1, t4
                  sra          s9, t1, s10
                  srli         s5, t5, 13
                  slli         s4, s8, 7
                  sltu         s7, s8, s2
                  bge          a6, t0, 90f
                  sra          s2, t2, s5
                  srai         zero, s2, 23
90:               addi         t3, zero, -1765
                  or           a2, gp, s9
                  lw           sp, 4(a6)
                  auipc        tp, 456115
                  addi         a6, a6, 8
                  xor          s3, zero, a5
130:              addi x4, x2, 1
130:              jalr x4, x4, 0
sub_9:            or           s9, s1, s6
                  sltiu        a4, t4, 874
                  bne          a7, s0, sub_9_stack_p
                  srl          s7, s8, a7
sub_9_stack_p:    addi         a6, a6, -56
                  and          s7, s7, t1
                  sw           sp, 4(a6)
                  sra          zero, t0, s0
                  bltu         a1, t6, 13f
                  lui          tp, 202621
                  andi         s2, s0, -1168
                  auipc        s3, 759215
                  sltu         gp, a1, t0
                  lui          a5, 1040984
                  xori         gp, s10, 1820
                  slti         s5, s6, 1829
                  sra          s7, a6, s4
                  bltu         t3, s8, 19f
                  ori          s2, a0, 1807
                  xor          sp, s3, t0
                  srai         a0, s1, 31
13:               and          s6, t6, ra
                  xori         gp, s3, 433
                  blt          s0, a3, 26f
                  srl          s7, tp, t4
                  srli         zero, a3, 17
                  srli         gp, a0, 11
19:               srai         s1, t6, 18
                  blt          s2, t0, 40f
                  bge          gp, tp, 25f
                  sra          t0, t1, s9
                  nop
                  sub          s10, s11, a1
25:               nop
26:               andi         s0, a0, 427
                  add          zero, t0, a1
                  srli         t0, s0, 22
                  xor          t0, a0, t5
                  blt          gp, s6, 34f
                  or           tp, a0, t5
                  srl          s9, sp, s9
                  sub          t1, gp, s4
34:               srai         t5, s1, 0
                  sra          ra, s5, s3
                  lui          s5, 528264
                  sll          t1, s3, s7
                  auipc        sp, 211706
                  sltiu        s10, ra, -1974
40:               sltu         t0, gp, s7
                  bne          zero, a4, 56f
                  bge          s3, a6, 57f
                  slli         a2, s1, 14
                  nop
                  beq          a4, gp, 64f
                  xori         a5, s2, -212
                  and          a5, t5, s5
                  or           zero, s10, sp
                  lui          s0, 542717
                  slt          sp, a2, a3
                  srli         s4, a4, 5
                  xori         t5, a5, 14
                  bgeu         tp, a5, 67f
                  slli         s1, s4, 18
                  ori          s10, t2, -1234
56:               add          s9, gp, s8
57:               and          s3, s9, a4
                  bltu         t2, s11, 61f
                  sub          t0, t2, s5
                  srai         s3, t4, 12
61:               nop
                  lui          s10, 940478
                  srai         a1, s5, 17
64:               and          s6, s4, s2
                  xori         a1, s3, -1958
                  blt          t6, a3, 84f
67:               srl          a0, a0, s1
                  and          s5, a6, s2
                  andi         s1, s1, 22
                  slti         zero, a2, 300
                  srai         t5, s5, 25
                  srli         t5, gp, 17
                  and          zero, s7, zero
                  ori          s0, a6, -663
                  nop
                  slt          a3, s4, s2
                  xor          t1, s8, a6
                  slli         t3, s0, 30
                  auipc        zero, 519625
                  sltu         t0, s1, s3
                  slt          sp, t0, ra
                  srl          a3, s5, s10
                  srai         t1, sp, 22
84:               sltiu        s0, a2, 2031
                  sra          s1, sp, s7
                  bltu         t2, s8, 92f
                  blt          s4, s7, 93f
                  ori          s4, a5, 1017
                  bltu         s2, s9, 93f
                  blt          zero, ra, 91f
91:               sra          a4, s3, s5
92:               bgeu         t3, t6, 107f
93:               andi         s2, t3, -312
                  blt          t1, a7, 105f
                  and          s9, a1, t2
                  and          s6, s5, s8
                  xori         t1, s11, -1069
                  slti         s5, t5, 483
                  ori          ra, s5, -923
                  andi         a0, a1, 605
                  add          s3, a6, s7
                  sltiu        s7, s6, -759
                  slti         a1, s4, -1924
                  add          a3, a5, a6
105:              xori         s10, s1, -843
                  srli         s10, s8, 8
107:              sltiu        t0, a0, 1048
                  bgeu         s8, s4, 126f
                  lui          t2, 98262
                  xori         a2, s5, -1657
                  xori         s4, a0, 1684
                  nop
                  sra          a5, a1, zero
                  bltu         t2, s0, 123f
                  srli         a0, s10, 27
                  lui          t3, 550520
                  or           t5, s0, s8
                  bgeu         t1, a1, 135f
                  andi         tp, t0, -662
                  sll          t1, s8, t1
                  bne          s0, s4, 135f
                  slt          t0, s7, sp
123:              auipc        a7, 429846
                  sub          t0, s3, s1
                  bge          s10, a7, 135f
126:              beq          s4, s8, 137f
                  sltiu        a5, t4, 371
                  sltu         a4, s4, t6
                  addi         t0, gp, -1780
                  slt          s2, s5, t5
                  bltu         t6, t5, 142f
                  srai         s1, a4, 13
                  bge          s2, t6, 148f
                  sll          sp, t0, s6
135:              and          ra, s8, s5
                  slli         s3, a6, 15
137:              srl          t2, s11, t6
                  and          a2, s8, s6
                  or           s1, s9, t1
                  lui          a7, 339074
                  blt          s0, a7, 143f
142:              xor          a2, s0, ra
143:              sub          s7, t4, s11
                  bge          s5, t3, 156f
                  sltu         s2, t6, a1
                  xor          s4, t2, a2
                  srl          a5, s2, s0
148:              or           s0, s10, t1
                  sll          s3, t4, s8
                  bge          s11, s8, 153f
                  nop
                  andi         t2, a0, 1548
                  la           sp, region_0+1744 #start riscv_load_store_rand_instr_stream_0
                  sb           a2, 137(sp)
                  lhu          s3, 138(sp)
                  slti         s2, t6, 889
                  add          a4, t3, s0
                  sb           s1, -23(sp)
                  lbu          s3, -75(sp)
                  sb           a0, 102(sp)
                  lb           gp, 195(sp)
                  sb           t1, 179(sp)
                  nop
                  sll          a1, a2, s5
                  lbu          tp, -112(sp)
                  andi         a1, s3, -354
                  lb           a3, -152(sp)
                  sb           sp, 11(sp)
                  sra          ra, a2, t5
                  sra          ra, s8, zero
                  lbu          s7, -147(sp)
                  srli         s6, a0, 12
                  lbu          s1, -220(sp)
                  sb           t6, -213(sp)
                  lw           a1, -44(sp)
                  sub          s5, sp, t2
                  lb           t5, 59(sp)
                  andi         s11, zero, -1897
                  sb           a7, -195(sp)
                  slt          t3, a1, gp
                  srai         s1, zero, 14
                  lbu          t5, 117(sp)
                  srli         t2, a1, 24
                  sll          s11, ra, s2
                  slt          t2, s7, sp
                  sb           s5, -37(sp)
                  addi         s1, a7, 1441
                  sw           t1, 132(sp)
                  sra          a5, s0, a7
                  andi         a5, s8, 931
                  sb           t5, 112(sp)
                  nop
                  lb           a2, 197(sp)
                  sltu         t5, s8, t2
                  srli         a1, a1, 16
                  slt          s9, t0, t4
                  lb           t2, 19(sp)
                  andi         ra, s8, -1332
                  lhu          a7, -184(sp)
                  slti         t6, s8, 1835
                  lb           s7, 183(sp)
                  andi         t3, tp, -644
                  lh           s3, 206(sp)
                  or           a4, s9, s9
                  lhu          s3, -186(sp)
                  lh           a5, 56(sp)
                  auipc        a0, 539769
                  lb           a2, -213(sp) #end riscv_load_store_rand_instr_stream_0
153:              sltiu        s10, zero, 513
                  sra          s2, s7, s11
                  and          ra, s8, a2
156:              bge          s0, t6, 157f
157:              sltu         a4, s9, s6
                  beq          a0, s3, 173f
                  slti         sp, s9, -304
                  bge          t6, t6, 173f
                  or           s9, ra, s8
                  addi         t0, t3, 1156
                  bgeu         zero, t2, 173f
                  andi         s9, s3, -718
                  andi         s2, t2, 1302
                  srai         a5, s9, 14
                  or           gp, s3, t5
                  xori         tp, s7, -1455
                  bltu         s11, t6, 173f
                  srai         t5, a3, 24
                  beq          sp, a0, 173f
                  andi         s3, s1, 681
173:              addi         sp, t3, -1405
                  auipc        s1, 553523
                  lw           sp, 4(a6)
                  slt          a0, a5, s5
                  addi         a6, a6, 56
                  srl          a5, s7, sp
                  slti         a7, tp, -1931
244:              addi x9, x2, 1
244:              jalr x9, x9, 0
sub_4:            and          s4, a1, s8
                  bgeu         s3, a3, sub_4_stack_p
sub_4_stack_p:    addi         a6, a6, -64
                  lui          a2, 944411
                  addi         s5, t0, 571
                  slti         ra, a4, 491
                  lui          ra, 709445
                  lui          s1, 54096
                  sra          a0, t1, zero
                  sw           sp, 4(a6)
                  addi         a5, zero, 320
                  nop
                  slti         t5, a3, -259
                  addi         s4, t5, -995
                  beq          ra, sp, sub_4_j11 #branch to jump instr
                  sltu         a3, t5, s5
                  sra          s4, a7, a7
                  srli         zero, s10, 3
                  auipc        sp, 219502
                  sltiu        s4, a0, -1354
                  sub          s1, gp, s0
sub_4_j11:        jal          sp, sub_7 #jump sub_4 -> sub_7
                  la           s4, region_0+1649 #start riscv_load_store_rand_instr_stream_1
                  and          s2, s3, tp
                  lh           t0, 215(s4)
                  sb           s10, -64(s4)
                  lhu          s2, 245(s4)
                  add          t6, s10, s5
                  andi         s3, s6, 617
                  lui          gp, 517530
                  sb           a3, 142(s4)
                  sb           s9, 74(s4)
                  sra          s10, gp, s9
                  lh           a3, 237(s4)
                  sll          s9, t0, t0
                  slt          t0, s5, t5
                  lb           zero, -90(s4)
                  nop
                  lbu          s9, -20(s4)
                  lb           gp, -88(s4)
                  slli         s6, t4, 8
                  lh           s6, 177(s4)
                  lbu          a2, 42(s4)
                  sb           s2, 96(s4)
                  andi         s10, tp, 1515
                  sltiu        s9, t3, -954
                  lw           t2, -141(s4)
                  sb           a5, -68(s4)
                  lhu          a3, 73(s4)
                  addi         s7, s5, -407
                  auipc        t0, 220266
                  sra          s2, a7, s2
                  lbu          zero, -78(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+247 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 8(s11)
                  slli         s5, s11, 20
                  srai         t6, s7, 7
                  sh           t4, 185(s11)
                  sw           s5, -43(s11)
                  sb           s8, 240(s11)
                  lbu          t2, 186(s11)
                  lb           a7, 95(s11)
                  sll          s9, t6, s8
                  addi         t0, s11, 1434
                  slti         a2, s11, -747
                  sw           zero, 213(s11)
                  or           zero, t1, sp
                  lbu          s7, 86(s11)
                  sb           a3, -218(s11)
                  or           s9, s0, a1
                  lb           a1, 228(s11)
                  lhu          a0, -43(s11)
                  addi         s2, gp, 50
                  sb           s8, 70(s11)
                  addi         t1, s4, 471
                  addi         a0, s5, 986
                  lb           s9, 113(s11)
                  srli         a7, s1, 24
                  sb           ra, -39(s11) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_0+150 #start riscv_load_store_rand_instr_stream_2
                  lh           t1, -8(a0)
                  sb           s8, 2(a0)
                  ori          s9, s0, 440
                  auipc        gp, 57489
                  sw           s6, 14(a0)
                  sb           t3, 1(a0)
                  lw           a4, -2(a0)
                  sub          s6, s1, a4
                  lbu          gp, -7(a0)
                  lbu          sp, 11(a0)
                  lw           s11, 14(a0)
                  lw           a4, -6(a0)
                  sb           s9, 1(a0)
                  xori         s9, s9, -669
                  xori         s1, a0, 1265
                  lb           t3, 9(a0)
                  nop
                  sll          ra, t0, s5
                  xori         a2, t1, -1797
                  lbu          s10, 10(a0)
                  lbu          t0, 5(a0)
                  lb           a5, 4(a0)
                  or           s9, tp, t5
                  sh           s7, 10(a0)
                  andi         t3, s6, 1685
                  lbu          t6, 7(a0)
                  sb           sp, 13(a0)
                  lb           a5, 2(a0)
                  lbu          s3, -2(a0)
                  lb           tp, -8(a0)
                  sb           s6, 13(a0)
                  srai         a7, s3, 16
                  and          s7, t5, a5
                  lbu          a4, -1(a0)
                  addi         a2, s11, 1563
                  sw           a3, -14(a0)
                  ori          t5, gp, 325
                  xor          s1, zero, s6
                  srli         ra, s1, 15
                  lhu          s3, -12(a0)
                  lbu          s5, -1(a0)
                  and          a1, s5, t0
                  sra          s10, a3, t6
                  lui          s2, 899366
                  xori         s9, sp, -1438
                  or           a5, s7, t1
                  sw           s6, 10(a0)
                  xor          a7, a7, s8
                  lbu          s2, -13(a0)
                  lb           t6, 9(a0)
                  sh           zero, -10(a0)
                  lb           s11, -11(a0) #end riscv_load_store_rand_instr_stream_2
                  add          a5, ra, sp
                  srl          t1, s3, a7
                  srl          s11, sp, a3
                  srli         zero, a2, 20
                  bltu         s7, a1, 13f
                  srl          s9, s5, sp
                  beq          s3, s0, 26f
                  beq          s0, sp, 9f
                  add          a7, a1, t3
9:                blt          s6, t5, 15f
                  bge          a2, ra, 25f
                  auipc        tp, 479852
                  ori          a7, s5, 1436
13:               srli         t5, a4, 6
                  nop
15:               srai         s0, t4, 2
                  auipc        tp, 552895
                  xori         ra, a4, 1962
                  or           t0, s4, zero
                  nop
                  blt          a2, a1, 33f
                  bltu         gp, t1, 26f
                  xor          t6, s9, zero
                  srai         t3, t4, 30
                  and          ra, t5, sp
25:               auipc        s3, 1027790
26:               srl          t0, t5, t4
                  lui          s9, 575379
                  beq          t4, a7, 47f
                  andi         t2, s3, 1985
                  bne          s10, a2, 31f
31:               nop
                  xor          t1, t4, s1
33:               srli         t2, a3, 25
                  srli         tp, a0, 4
                  bge          t1, s6, 50f
                  srl          a3, s11, tp
                  andi         s10, t6, -763
                  blt          t3, a2, 54f
                  sub          zero, a3, t0
                  ori          s6, s6, 1137
                  add          zero, s2, s4
                  addi         gp, t5, 1111
                  slli         s4, a0, 31
                  blt          s6, s9, 58f
                  beq          a1, tp, 51f
                  nop
47:               bne          t2, t3, 62f
                  ori          a7, s2, 591
                  addi         a1, a0, -157
50:               sltiu        ra, t6, -1444
51:               nop
                  bltu         t0, a6, 61f
                  slti         tp, s8, -1458
54:               ori          a5, s2, 1106
                  auipc        s11, 574776
                  sra          s7, t2, a5
                  slli         gp, a4, 14
58:               sra          s6, s8, t2
                  add          a1, t3, sp
                  lui          t6, 590992
61:               bltu         s3, s11, 62f
62:               sltiu        ra, t1, -1616
                  beq          s11, t5, 73f
                  blt          a2, s4, 83f
                  ori          s2, a1, 913
                  sltiu        s10, a2, 529
                  slti         s6, s10, -56
                  slli         s4, a6, 16
                  auipc        s0, 313868
                  xori         s3, a7, -1327
                  sra          s9, t3, t6
                  beq          ra, s0, 79f
73:               and          s1, s11, tp
                  slt          t2, s0, t0
                  add          ra, a7, s2
                  slti         t1, s1, -80
                  sra          t2, s7, t1
                  beq          s8, t5, 80f
79:               srli         s4, s0, 12
80:               ori          s9, zero, -1828
                  and          a4, t0, a6
                  ori          s2, a6, 1443
83:               slti         s9, a2, -126
                  sltiu        t6, a0, 1482
                  srai         s5, a5, 1
                  xori         a2, a7, 546
                  nop
                  srl          t6, s3, sp
                  auipc        s2, 344117
                  blt          a1, a6, 109f
                  sltu         t3, a7, a2
                  sll          a3, a0, t4
                  xori         a0, sp, -1362
                  and          s6, t4, a5
                  and          a2, zero, s10
                  sra          a7, t2, t5
                  and          a7, s4, t6
                  sll          a1, a1, a4
                  sll          gp, a2, a5
                  nop
                  or           a5, s2, s6
                  sltiu        s1, t5, -744
                  andi         gp, s1, -352
                  and          s1, ra, s7
                  bge          s2, ra, 116f
                  bgeu         t3, t3, 113f
                  sra          s10, a3, ra
                  sltiu        a2, s9, -910
109:              sra          t0, s0, s8
                  ori          t1, t2, -1935
                  addi         t2, s5, 425
                  srli         s11, a1, 6
113:              xor          t3, t4, a2
                  auipc        t3, 126997
                  blt          t6, t0, 132f
116:              srai         t5, t2, 6
                  or           a5, tp, t6
                  srai         s0, a1, 26
                  addi         a5, a4, -951
                  lui          s10, 760110
                  lui          s0, 874739
                  blt          t6, s4, 132f
                  xori         zero, t1, 1189
                  lui          t2, 744406
                  sll          a5, s2, t5
                  add          sp, a7, tp
                  bne          sp, t1, 142f
                  bne          s7, a6, 129f
129:              srl          s2, a0, t5
                  sll          t2, a3, s6
                  auipc        s1, 458265
132:              sltiu        s0, t1, 233
                  add          s6, gp, a5
                  andi         a1, s0, 670
                  lui          sp, 674671
                  srl          a3, t4, t2
                  add          t0, zero, s9
                  blt          s0, ra, 154f
                  srai         t0, gp, 15
                  slti         s2, s4, 175
                  beq          s5, a7, 152f
142:              auipc        t1, 619272
                  slt          s9, zero, a7
                  slli         s3, t4, 25
                  sub          s6, a3, a7
                  slt          tp, tp, s9
                  bltu         s3, s3, 162f
                  xori         a1, a1, -240
                  slt          s6, s3, a4
                  add          sp, a0, t1
                  add          a2, a2, s9
152:              beq          gp, zero, 158f
                  add          s1, ra, t1
154:              add          s10, t3, s10
                  slti         s2, s11, -1693
                  andi         t5, tp, -1752
                  sll          t6, s4, s1
158:              or           s0, s6, s9
                  blt          t4, t1, 170f
                  ori          tp, s0, 1719
                  sltiu        a0, sp, -1885
162:              or           a4, a5, sp
                  ori          a2, sp, 1993
                  srai         t3, s1, 9
                  sra          tp, a6, s10
                  slti         tp, s9, 1195
                  srl          zero, s1, t1
                  srl          a7, a2, s11
                  add          s5, t6, a2
170:              blt          s10, sp, 183f
                  ori          zero, s6, 1062
                  ori          s6, gp, 1207
                  beq          t2, t5, 180f
                  slt          s3, s9, s6
                  add          a1, s8, a3
                  srai         a3, tp, 7
                  bge          s9, t4, 196f
                  auipc        a3, 164844
                  ori          tp, s2, -1631
180:              srai         t2, ra, 1
                  sltu         t2, a0, tp
                  srli         s0, s2, 11
183:              xor          s0, t5, t5
                  and          tp, t2, sp
                  addi         a1, s1, 1274
                  auipc        a5, 821186
                  bltu         s4, t5, 206f
                  sltu         a7, t5, s6
                  bne          gp, sp, 205f
                  slt          a2, s4, gp
                  srai         s7, s3, 16
                  lui          s7, 708032
                  sub          t0, s3, s10
                  bgeu         sp, t3, 200f
                  sltu         t1, s8, t1
196:              ori          sp, t4, 1669
                  add          s1, t4, s6
                  srli         tp, s5, 15
                  auipc        tp, 825627
200:              sll          t6, ra, t2
                  auipc        s0, 804921
                  sltiu        t5, a2, -616
                  xor          s2, t3, t6
                  blt          t3, a4, 213f
205:              sltu         s5, a5, s1
206:              beq          s1, t1, 211f
                  blt          t0, t4, 218f
                  add          a0, zero, a4
                  andi         a3, s3, 1129
                  sltu         s9, s11, s3
211:              xori         a4, s4, -154
                  bgeu         t1, s7, 227f
213:              sltiu        s4, t2, -1309
                  sll          a1, t3, s10
                  ori          a4, tp, 1953
                  addi         s9, s4, 1428
                  bne          t5, ra, 233f
218:              add          s3, t6, s1
                  xori         s7, t6, 1568
                  sltu         a2, s9, zero
                  sltiu        s7, s7, 771
                  slt          t5, s9, ra
                  sll          a2, s7, s2
                  sll          t3, zero, zero
                  bgeu         t5, t0, 235f
                  nop
227:              andi         s9, a5, 354
                  andi         a5, a5, 227
                  blt          ra, s0, 231f
                  nop
231:              bge          s4, a1, 250f
                  bgeu         s4, s0, 252f
233:              or           a4, a2, s3
                  ori          t2, t1, 1545
235:              srli         t2, s5, 3
                  lui          a0, 292026
                  xori         sp, t0, -1543
                  andi         ra, s1, -1652
                  lui          s3, 402096
                  sltiu        t5, t1, 288
                  add          a1, a4, t1
                  addi         a7, s2, 1412
                  blt          t6, a4, 258f
                  auipc        s6, 466815
                  and          s6, s5, sp
                  and          s3, s0, s0
                  srai         a5, t3, 13
                  auipc        s1, 527041
                  auipc        s10, 1032297
250:              beq          a6, ra, 252f
                  beq          t6, a5, 261f
252:              bge          t1, s5, 267f
                  srai         t2, a2, 23
                  sltiu        a1, s6, -1493
                  slli         a0, t2, 11
                  addi         t0, s7, 1207
                  xor          s2, a7, sp
258:              add          gp, s10, t3
                  xor          a5, t0, a7
                  xori         gp, zero, 1354
261:              bltu         t2, a6, 262f
262:              sll          a3, tp, zero
                  auipc        a0, 610492
                  sltu         tp, s4, t4
                  xor          t2, t0, t1
                  xori         gp, a1, -1453
267:              blt          t2, s2, 268f
268:              xor          s0, a6, ra
                  and          ra, t4, s9
                  andi         zero, a4, 1869
                  bne          s8, s4, 280f
                  beq          t3, a6, 273f
273:              slt          t6, t5, s0
                  sra          t6, a6, t0
                  bge          a1, s10, 290f
                  srli         s9, s3, 15
                  blt          a0, a7, 292f
                  bltu         t1, sp, 285f
                  srli         t5, zero, 18
280:              andi         a1, t2, 946
                  srli         s7, t1, 18
                  bltu         s5, s2, 296f
                  add          ra, s4, t3
                  addi         s5, tp, -675
285:              slli         t1, t2, 14
                  slti         sp, ra, 886
                  add          t3, a7, a0
                  sltiu        s7, t1, -802
                  lui          s11, 815957
290:              lui          t0, 1008333
                  sra          s1, t1, s8
292:              sra          s7, s10, ra
                  sub          t1, s3, a2
                  andi         a7, sp, -1648
                  sra          t0, tp, t1
296:              blt          s8, a6, 313f
                  bne          a3, t1, 311f
                  slt          ra, t0, a7
                  sll          s9, s4, a0
                  addi         ra, a0, 1992
                  nop
                  srai         t5, a1, 30
                  bltu         a4, s6, 318f
                  andi         tp, s1, -1131
                  nop
                  slti         s5, s3, 1601
                  slli         t3, a3, 27
                  addi         s6, gp, 201
                  srl          t3, a6, s4
                  blt          a7, a7, 321f
311:              and          sp, t6, s2
                  bgeu         gp, s3, 313f
313:              beq          a0, a5, 322f
                  xori         a4, s2, 928
                  xori         a2, t2, 464
                  srli         a1, tp, 2
                  beq          a4, a1, 319f
318:              bltu         s8, a4, 325f
319:              addi         t6, s9, -1577
                  beq          s2, ra, 327f
321:              sll          a7, s1, t0
322:              sub          zero, a5, s7
                  lui          ra, 476471
                  andi         s4, zero, 1610
325:              bltu         zero, s2, 331f
                  add          t0, tp, t3
327:              ori          s10, a1, -1604
                  srl          a0, a3, s9
                  slti         a7, zero, -990
                  sra          a5, t4, zero
331:              add          a3, t2, t6
                  slt          t2, t1, s6
                  sltiu        t5, s0, 1610
                  add          a3, s6, a3
                  nop
                  slt          t1, s2, s3
                  xori         a2, s2, 1481
                  sll          s5, a3, a6
                  addi         t6, a6, 542
                  sltiu        t3, a7, -1164
                  and          s1, t3, a6
                  bne          s8, tp, 361f
                  xor          s6, s3, s8
                  andi         zero, t1, 1193
                  sll          s5, a0, s8
                  addi         s4, s8, 1329
                  xori         zero, gp, 222
                  sltu         a7, gp, s10
                  bne          s3, zero, 362f
                  bge          s3, a5, 366f
                  sll          a3, a3, s2
                  bne          a3, a1, 353f
353:              or           s6, a6, t0
                  sltu         sp, s7, a3
                  add          s11, t6, sp
                  sltiu        s6, s1, -1391
                  beq          t0, tp, 358f
358:              ori          s2, t2, -1242
                  srli         s11, sp, 20
                  srai         s2, a3, 28
361:              add          gp, s4, s10
362:              auipc        s9, 218532
                  xori         a0, s10, -615
                  srli         t1, s8, 6
                  bgeu         s11, s6, 382f
366:              srai         a0, a0, 17
                  ori          s3, a4, 1394
                  bgeu         s8, a7, 383f
                  sltu         t5, t6, t1
                  bne          s0, a4, 380f
                  ori          s2, a4, -1574
                  and          s0, t2, t6
                  and          s11, s7, s5
                  bgeu         t4, s10, 390f
                  srai         ra, a3, 24
                  or           s4, t5, s8
                  beq          a1, s10, 396f
                  bge          ra, t5, 393f
                  srl          s1, ra, a1
380:              and          zero, s5, ra
                  bne          a7, s0, 392f
382:              srl          gp, s6, a1
383:              sll          sp, t5, a1
                  or           gp, a0, a1
                  slti         s1, s9, -1632
                  sltu         a5, sp, s5
                  slti         t6, a4, 1016
                  bne          t5, a5, 407f
                  srai         a1, gp, 24
390:              and          t2, sp, tp
                  or           a7, t1, sp
392:              lui          a0, 891794
393:              slti         a1, s3, -222
                  sll          s4, t1, a6
                  sltiu        a7, s5, -1865
396:              srl          t1, gp, t5
                  sltu         s3, s4, s6
                  srli         a0, s4, 5
                  sub          t0, s5, tp
                  sra          zero, gp, t5
                  srli         s1, t0, 20
                  bgeu         s10, a1, 422f
                  or           s6, s2, t2
                  ori          t6, s8, 1601
                  sll          a2, s6, t4
                  sltu         gp, t3, zero
407:              and          t2, s6, s2
                  sub          a5, t0, a2
                  ori          a2, a0, -269
                  and          gp, s9, t3
                  sltiu        s10, t0, -509
                  xor          a0, a2, s10
                  or           s0, s9, t2
                  and          a1, s0, a6
                  sub          t0, zero, a1
                  ori          s1, t3, -808
                  bltu         ra, a5, 426f
                  andi         t5, a0, 25
                  auipc        a4, 420140
                  slt          t3, a4, t6
                  sub          s7, gp, zero
422:              srai         a3, a0, 26
                  sub          s4, t5, ra
                  sltu         s9, t1, sp
                  sll          a0, a0, a3
426:              bltu         a6, a3, 441f
                  srai         s7, t3, 20
                  auipc        a4, 924394
                  slli         t2, t2, 4
                  ori          a5, s7, 642
                  bge          a1, s4, 437f
                  xor          s1, a1, s7
                  bge          t2, s8, 443f
                  srl          a5, s7, a3
                  sltiu        t3, a5, -1857
                  srli         s3, t4, 3
437:              nop
                  slli         s10, a4, 2
                  add          a1, a5, a4
                  sub          a5, s4, s0
441:              lui          t1, 206471
                  nop
443:              or           s4, t5, t2
                  sra          a2, zero, a3
                  sub          ra, s0, s6
                  nop
                  addi         tp, s2, -1486
                  sltiu        s3, a5, -256
                  sltiu        s6, s8, -1312
                  beq          a6, a0, 458f
                  or           t6, a3, s10
                  sra          s11, a1, s0
                  lui          s4, 840931
                  or           t5, sp, a7
                  lui          t1, 968091
                  lui          a7, 685860
                  auipc        s10, 108648
458:              nop
                  lw           sp, 4(a6)
                  sra          zero, s5, ra
                  auipc        a1, 576434
                  addi         a6, a6, 64
                  nop
                  srai         s7, s6, 5
                  sltu         a0, ra, t6
598:              addi x5, x2, 0
598:              jalr x5, x5, 0
sub_2:            slt          s10, s2, t5
                  addi         a3, a4, 694
                  add          s7, a3, a1
                  xor          a4, s11, s11
                  addi         a6, a6, -28
                  add          ra, s8, t2
                  sra          t2, s0, a7
                  srl          s7, a1, a3
                  sw           sp, 4(a6)
                  add          t5, tp, s4
                  la           s2, sub_6
                  sll          t6, tp, s11
                  xor          a4, s8, s1
                  addi         s2, s2, 52
                  nop
                  bne          a6, s6, sub_2_j5 #branch to jump instr
                  slti         a5, sp, -872
                  or           t1, a7, a2
                  sltu         a7, t1, a1
                  sll          tp, t0, a2
                  slli         s3, s1, 11
sub_2_j5:         jalr         sp, s2, -51 #jump sub_2 -> sub_6
                  la           t2, sub_4
                  add          s10, t3, t3
                  addi         t2, t2, -189
                  sra          s6, t2, a1
                  xor          t0, s4, s3
                  lui          t3, 534982
                  or           t3, gp, a0
                  sra          a4, s7, a3
                  add          ra, a5, t6
                  addi         s7, gp, 1277
sub_2_j6:         jalr         sp, t2, 190 #jump sub_2 -> sub_4
                  la           t6, sub_5
                  xor          s2, s4, s7
                  addi         t6, t6, -142
                  sll          a2, s10, s3
                  slti         s4, t5, -324
                  slti         t2, t4, -958
                  slli         s2, t0, 20
sub_2_j7:         jalr         sp, t6, 142 #jump sub_2 -> sub_5
                  srli         gp, zero, 16
                  lui          s4, 668535
                  slti         ra, a2, 968
                  sll          ra, t1, s2
                  andi         t3, a0, -192
                  bne          a1, a7, sub_2_j8 #branch to jump instr
                  sll          s4, t5, s0
                  sltu         t0, s5, a7
                  ori          sp, a4, -1117
                  srai         s11, t6, 23
sub_2_j8:         jal          sp, sub_6 #jump sub_2 -> sub_6
                  lui          a3, 249220
                  sltu         s9, gp, s2
                  beq          s8, a5, sub_2_j9 #branch to jump instr
                  sltu         s3, ra, s3
                  xori         ra, s7, 656
                  sll          s2, t6, ra
                  nop
                  add          a7, t6, t2
sub_2_j9:         jal          sp, sub_3 #jump sub_2 -> sub_3
                  sra          a2, sp, gp
                  sltiu        s7, gp, -1779
                  sll          a1, t0, s0
                  sub          a7, a6, gp
                  srai         a4, a7, 15
                  slti         a1, zero, 919
                  bgeu         s8, a3, 17f
                  bgeu         s1, s5, 23f
                  srl          t5, gp, a3
                  slli         s10, s11, 11
                  slt          s3, a3, a0
                  and          s4, a5, sp
                  srli         a2, t0, 3
                  sltiu        s7, a6, 737
                  srli         s11, t3, 11
                  slti         t6, gp, 642
                  bne          a4, s3, 36f
17:               sra          s2, a2, t6
                  srai         a2, s9, 6
                  srai         s1, s10, 26
                  bgeu         t4, a0, 36f
                  lui          t5, 550323
                  and          s9, s11, a5
23:               andi         a1, s0, 1929
                  srai         s10, s2, 7
                  ori          s0, a7, 562
                  or           s1, t5, a4
                  blt          tp, s3, 34f
                  sltu         a4, t2, a3
                  sltu         a2, t1, s2
                  sltu         t0, a3, t5
                  srai         sp, t1, 27
                  ori          s11, ra, 3
                  blt          a4, t1, 52f
34:               slt          s5, t2, t6
                  blt          s7, tp, 47f
36:               srli         t3, s10, 22
                  bltu         s6, gp, 47f
                  and          s0, t1, s5
                  nop
                  sra          s11, s3, a2
                  bne          s1, gp, 42f
42:               slli         tp, s5, 11
                  slli         s3, zero, 22
                  bltu         t0, s2, 48f
                  slt          t2, s6, s6
                  srli         a2, a1, 30
47:               and          s6, s2, ra
48:               xor          t1, s0, a0
                  srl          t0, s6, ra
                  addi         s7, s10, 1293
                  nop
52:               slli         tp, t3, 4
                  blt          a5, zero, 70f
                  slli         s3, t1, 31
                  lui          t1, 514891
                  srai         a0, s1, 29
                  addi         a4, t6, 417
                  slli         s10, a2, 7
                  or           s9, sp, s1
                  ori          a2, s11, -1505
                  add          tp, a0, s3
                  bltu         a0, zero, 67f
                  bltu         a4, a5, 70f
                  slti         s10, s1, -1876
                  blt          a5, a3, 71f
                  blt          s8, s2, 71f
67:               sltiu        tp, t0, 734
                  bgeu         a1, a4, 71f
                  srai         a5, zero, 19
70:               auipc        a1, 705636
71:               xori         ra, sp, -1560
                  sltu         zero, t6, a6
                  add          a0, t4, a1
                  addi         t1, s11, -1303
                  sra          t5, a6, s10
                  sra          t1, s3, s6
                  add          t2, s2, s1
                  lw           sp, 4(a6)
                  sll          s1, t4, s2
                  and          s9, s1, s5
                  addi         a6, a6, 28
                  srli         a4, t5, 22
                  srli         s1, s9, 10
145:              addi x20, x2, 0
145:              jalr x20, x20, 0
sub_5:            xor          t3, s10, a2
                  bge          zero, a6, sub_5_stack_p
                  auipc        t2, 131880
sub_5_stack_p:    addi         a6, a6, -8
                  auipc        t3, 812062
                  sw           sp, 4(a6)
                  sltu         a4, a6, sp
                  sltiu        ra, t3, -1323
                  slti         s11, s5, -1893
                  slt          a0, s5, s6
                  bne          s9, s2, 2f
2:                beq          s9, ra, 5f
                  auipc        t1, 98999
                  bne          s1, s7, 12f
5:                and          t1, sp, t1
                  slti         t1, s1, 1290
                  sltiu        a3, t6, -1226
                  srai         zero, sp, 13
                  bne          t1, a6, 23f
                  sll          gp, a0, a4
                  sltu         t5, s8, t5
12:               lui          s4, 42145
                  sll          zero, a7, a5
                  auipc        t2, 139365
                  andi         s11, t0, 962
                  auipc        sp, 162765
                  add          s3, s8, sp
                  srl          s7, a1, a3
                  beq          s0, s7, 38f
                  sltiu        a0, s3, -1758
                  lui          ra, 371114
                  beq          ra, a7, 31f
23:               bltu         a5, s4, 40f
                  slt          t0, t2, sp
                  or           sp, a2, s1
                  sll          t5, a6, t3
                  sltu         gp, tp, s2
                  nop
                  sltu         s2, a4, s10
                  sltiu        a7, sp, -299
31:               ori          t3, s5, -1527
                  sub          t6, gp, s11
                  xor          t2, t2, s4
                  lui          t6, 900146
                  srl          s9, t1, a3
                  beq          t6, sp, 45f
                  bgeu         t4, a6, 45f
38:               xori         t6, t2, 918
                  bltu         a7, a1, 45f
40:               addi         t0, s10, 764
                  srai         t3, t6, 27
                  sra          a3, s2, t4
                  bgeu         s11, a6, 45f
                  lui          t2, 780772
45:               sub          s1, t6, a0
                  slt          t0, s11, tp
                  lw           sp, 4(a6)
                  sll          gp, s11, a0
                  sra          t3, s8, a7
                  or           s0, t3, a7
                  sll          a2, gp, s3
                  addi         a6, a6, 8
                  xor          zero, s3, s3
63:               addi x26, x2, 0
63:               jalr x26, x26, 0
sub_1:            addi         a6, a6, -48
                  ori          a7, ra, 914
                  sra          zero, s5, sp
                  lui          ra, 825952
                  srl          a5, s0, s9
                  xori         s0, s8, 1233
                  sw           sp, 4(a6)
                  add          s5, s3, s1
                  lui          gp, 363865
                  srl          t3, s11, a6
                  sltiu        a5, s3, 766
                  la           s10, sub_2
                  auipc        a0, 522493
                  addi         s10, s10, -545
                  xor          a0, a6, a2
                  lui          t0, 689984
                  sltu         t0, a2, s10
                  sra          t6, s9, a6
                  bgeu         a2, s11, sub_1_j3 #branch to jump instr
                  xor          a2, tp, a4
                  or           tp, t2, sp
                  srai         s2, s4, 15
sub_1_j3:         jalr         sp, s10, 546 #jump sub_1 -> sub_2
                  nop
                  srli         t5, a5, 31
                  slti         a4, zero, 939
                  slti         t1, a2, -112
                  ori          gp, s7, 79
                  ori          ra, s7, 2036
                  bne          s10, s5, sub_1_j4 #branch to jump instr
                  slt          a0, s0, a4
                  slti         sp, t1, -639
sub_1_j4:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  la           s6, region_1+304 #start riscv_load_store_rand_instr_stream_1
                  sub          t3, sp, a3
                  lui          s3, 762023
                  srli         zero, t4, 19
                  xor          s5, s11, s1
                  lh           s2, 502(s6)
                  sltu         s9, s7, s10
                  add          a2, sp, s7
                  sb           t6, 1410(s6)
                  and          s9, t1, s11
                  addi         s5, s4, 116
                  slli         a1, s9, 3
                  lbu          tp, 458(s6)
                  lb           s5, 893(s6)
                  lbu          s4, 939(s6)
                  lb           s1, 943(s6)
                  andi         gp, a6, 1389
                  lhu          a0, -226(s6)
                  sb           s7, 873(s6)
                  or           s10, t3, sp
                  add          s11, t5, s5
                  xor          a3, ra, a7
                  xor          t1, t5, a5
                  sub          s10, s0, t3
                  xor          a7, s9, a1
                  lbu          t3, -34(s6)
                  lb           t1, 323(s6)
                  addi         gp, s1, 762
                  lh           s10, 110(s6)
                  lb           a2, 1526(s6)
                  lbu          s9, 1042(s6)
                  slt          t5, t6, s8
                  lb           s5, -135(s6)
                  andi         t5, a3, -751
                  lbu          tp, 1549(s6)
                  nop
                  andi         t3, a6, 694
                  srli         t3, s10, 29
                  srli         s3, s1, 8
                  srli         zero, a4, 10
                  lhu          s4, 890(s6)
                  lb           s10, 749(s6)
                  sub          s5, a3, s3
                  lbu          s0, 789(s6)
                  sb           gp, -69(s6)
                  lbu          sp, 885(s6)
                  and          a4, s3, a2
                  sll          t3, s4, tp
                  lb           a2, -263(s6)
                  or           s3, a4, s0
                  xor          s7, a4, t6
                  sb           a3, 810(s6) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+106 #start riscv_load_store_rand_instr_stream_0
                  sltu         s1, s4, sp
                  sra          a7, t6, s0
                  lb           t0, 184(sp)
                  sll          s0, t5, t4
                  lb           s11, 107(sp)
                  nop
                  auipc        s9, 338720
                  sb           s6, -48(sp)
                  sra          t1, s3, t2
                  lh           s1, 252(sp)
                  lbu          zero, 61(sp)
                  slli         a4, s7, 26
                  sll          t1, a2, t1
                  sra          s4, s7, ra
                  slli         a7, s1, 28
                  lbu          s6, 108(sp)
                  sltiu        s10, s0, -1134
                  srl          s0, t5, s3
                  nop
                  srl          s9, zero, a4
                  lbu          s2, 5(sp)
                  ori          a2, s7, 515
                  lhu          s4, -66(sp)
                  xori         t6, a2, 589
                  lhu          s4, 32(sp)
                  lb           s7, -105(sp)
                  lh           s3, 206(sp)
                  lh           s4, 184(sp)
                  and          ra, t5, a7
                  sb           a3, 19(sp)
                  lh           a7, 36(sp)
                  sb           a6, 83(sp)
                  lh           s7, 228(sp)
                  slli         s7, t1, 17
                  andi         t1, s11, 83
                  lbu          a0, 55(sp)
                  xori         gp, s4, -204
                  lhu          s9, 84(sp)
                  sh           a7, 90(sp)
                  sb           t2, 176(sp)
                  xor          s5, s2, a3
                  srli         a2, ra, 21
                  sb           a7, 106(sp)
                  lhu          s4, 36(sp)
                  sb           s2, 103(sp)
                  srli         s2, s8, 22
                  lb           t2, 59(sp)
                  lh           s10, -54(sp)
                  lh           s11, -74(sp)
                  sh           t3, -92(sp)
                  lb           a7, -94(sp) #end riscv_load_store_rand_instr_stream_0
                  sra          t0, s11, a1
                  nop
                  srli         a0, s8, 6
                  srai         t2, gp, 27
                  sll          s10, s3, t3
                  xor          s9, t6, s7
                  sra          t1, sp, s9
                  srai         t6, s11, 17
                  sub          t6, a0, t0
                  slti         s3, s9, 925
                  srai         a1, a4, 13
                  ori          t3, zero, -2
                  addi         s6, t3, 57
                  sll          s2, a2, t2
                  sub          s11, t4, s7
                  xori         t3, sp, 1050
                  srl          a0, s6, s7
                  lui          s3, 478978
                  nop
                  xor          a3, a1, t3
                  xori         a0, a1, -909
                  slti         t1, s9, -92
                  srli         s0, a3, 19
                  srl          a0, s8, t3
                  xori         s2, a2, 1615
                  auipc        a1, 693933
                  bgeu         a0, s5, 37f
                  srl          tp, s2, s6
                  sll          a3, t1, a4
                  bge          a6, t3, 34f
                  and          s0, s0, sp
                  slli         t6, s11, 30
                  sra          gp, a7, s7
                  slt          t2, a0, s7
34:               xor          s2, a0, s1
                  sub          a4, a6, t1
                  slli         s0, zero, 1
37:               addi         a5, a2, 164
                  srl          s6, s1, s8
                  bne          zero, t2, 55f
                  auipc        gp, 245152
                  slli         t0, ra, 23
                  beq          a0, t0, 45f
                  lui          a5, 410276
                  andi         s10, zero, -1992
45:               sra          t0, a4, a3
                  bgeu         t1, zero, 57f
                  slt          a0, s3, s5
                  slli         gp, t1, 12
                  sra          t6, a4, a3
                  and          a0, t3, a0
                  blt          s4, s8, 60f
                  andi         s9, s7, -454
                  or           a2, a1, s10
                  slti         s11, sp, -1737
55:               bgeu         a0, s5, 73f
                  blt          a6, a1, 61f
57:               andi         a3, a0, 104
                  sub          s3, s11, s8
                  srai         zero, s8, 22
60:               bltu         tp, a2, 63f
61:               or           s7, s7, s9
                  sltu         zero, a1, t0
63:               sll          zero, t0, sp
                  slti         a3, t4, 65
                  slt          s9, s3, s10
                  bge          t1, a4, 76f
                  sltiu        s6, a4, -73
                  bne          a2, t4, 78f
                  bgeu         gp, a3, 81f
                  sub          s0, s1, s9
                  ori          s7, tp, 735
                  srl          s0, s11, t3
73:               auipc        s11, 209645
                  slt          a0, tp, s11
                  or           gp, s9, s3
76:               bne          t5, s7, 83f
                  sltiu        tp, tp, -1093
78:               ori          s11, t4, 1519
                  beq          s10, gp, 96f
                  sra          t6, t2, s10
81:               sltiu        t1, t1, 1139
                  slli         t6, gp, 13
83:               srli         t5, s3, 3
                  lui          t5, 955044
                  nop
                  add          a3, s0, tp
                  bge          s10, s7, 99f
                  ori          t2, a3, 1400
                  srl          s1, a5, s9
                  xor          a3, s6, s6
                  or           a5, a4, a0
                  beq          a5, a4, 94f
                  sltiu        a1, sp, 689
94:               ori          tp, t3, -1705
                  blt          zero, s6, 112f
96:               nop
                  sra          a2, a5, s4
                  nop
99:               srl          sp, s9, s4
                  and          s0, s5, a5
                  sltu         t2, ra, s5
                  sub          t0, tp, t4
                  slti         sp, a1, -355
                  slt          sp, tp, s1
                  srli         sp, a6, 7
                  andi         a0, a4, 1926
                  blt          t6, tp, 114f
                  lui          t6, 574455
                  blt          t3, s6, 118f
                  or           s9, a5, s7
                  sll          t6, gp, a6
112:              sll          a0, ra, zero
                  slli         gp, gp, 30
114:              slt          a0, zero, s6
                  srai         s5, sp, 11
                  or           a5, t0, t5
                  bgeu         s0, zero, 131f
118:              srli         a2, ra, 0
                  slti         tp, s10, -1447
                  bltu         s9, t5, 126f
                  slli         s11, a4, 14
                  sll          s4, a4, s7
                  sll          s9, sp, gp
                  nop
                  beq          t2, ra, 133f
126:              beq          gp, t5, 146f
                  bge          s5, zero, 134f
                  srl          a1, a7, a2
                  addi         a0, t3, -256
                  andi         gp, s10, 3
131:              blt          t0, t1, 147f
                  andi         a5, t0, -1443
133:              sltu         s6, s11, s8
134:              xori         sp, tp, -83
                  ori          s9, a4, 1737
                  srli         s0, zero, 10
                  bge          s11, a4, 138f
138:              srai         t5, s4, 18
                  sub          t0, s10, t6
                  sltu         a5, gp, s6
                  bltu         s0, a4, 151f
                  srai         zero, a3, 24
                  lui          s7, 189269
                  andi         a1, s8, 411
                  ori          a4, s8, 1054
146:              andi         a0, a5, -1648
147:              blt          a5, zero, 166f
                  beq          s10, t3, 161f
                  beq          s6, s0, 156f
                  bge          a3, a6, 167f
151:              xori         a0, t6, 1893
                  beq          a4, a5, 163f
                  srli         a0, s4, 24
                  srl          s5, t6, a6
                  slli         s4, s0, 28
156:              sll          t0, a4, t5
                  srli         a1, s9, 17
                  slli         tp, s0, 10
                  xor          a1, s5, s3
                  srai         a2, t4, 5
161:              nop
                  nop
163:              and          zero, t1, tp
                  slti         t6, t6, -70
                  add          gp, t3, a4
166:              sra          ra, t1, a4
167:              or           t6, t3, s11
                  sub          s6, a0, t3
                  beq          a5, sp, 183f
                  xori         a4, a7, 538
                  sltu         s4, a5, t0
                  srli         s7, t2, 0
                  sub          t3, a1, t1
                  and          s3, ra, a1
                  bge          s5, gp, 191f
                  sltu         tp, s11, sp
                  xori         s2, gp, 1794
                  srai         a2, t4, 14
                  sll          s10, t4, a7
                  slti         a2, t5, -370
                  srl          a2, a4, s0
                  bgeu         sp, s9, 194f
183:              andi         s11, s9, -1806
                  srli         s6, t4, 31
                  sub          a7, a4, a3
                  sltu         s6, t4, s4
                  auipc        a2, 101568
                  sub          t6, s7, s0
                  bltu         a2, s4, 200f
                  slli         s4, s7, 3
191:              slt          a4, s11, t1
                  andi         a4, ra, -1346
                  add          t5, t1, s8
194:              add          s10, s6, a3
                  addi         t0, t3, 2012
                  sltiu        s0, t2, 847
                  addi         s5, s9, -531
                  nop
                  slt          t0, a2, t3
200:              add          s6, t2, t5
                  srl          t1, t1, s6
                  lui          t6, 589464
                  slt          a3, s11, s3
                  andi         a7, s0, 870
                  slti         t6, t3, 206
                  srl          t6, a1, s1
                  slli         a7, s3, 1
                  sltiu        ra, t6, 662
                  sll          a7, t0, s11
                  xor          t1, a5, t5
                  xori         a3, s5, -1776
                  and          t1, a7, s3
                  lui          s5, 17175
                  srl          s7, s6, s4
                  sll          gp, a7, a5
                  bltu         a5, ra, 225f
                  slt          s2, a1, tp
                  bne          t1, ra, 221f
                  srli         a4, t2, 5
                  add          zero, t0, sp
221:              slt          s11, s9, s3
                  srli         s0, a6, 9
                  srl          t0, a3, t3
                  andi         s10, a4, -597
225:              sltu         s9, t4, s11
                  xori         t1, s8, -1974
                  slli         s11, t4, 9
                  sub          s5, s2, t6
                  sltiu        s2, sp, 999
                  xor          s2, a5, zero
                  beq          a6, a0, 239f
                  nop
                  or           a4, s2, s10
                  sra          s3, a2, s8
                  nop
                  sll          a5, s2, sp
                  bgeu         tp, s10, 247f
                  slt          t1, s7, t0
239:              srli         a0, t0, 13
                  sltiu        zero, zero, 1942
                  bge          s9, a6, 260f
                  sra          gp, s5, s9
                  add          s4, s5, s11
                  auipc        s7, 544145
                  slli         gp, t4, 17
                  sra          a1, s10, gp
247:              srai         t0, a6, 14
                  bgeu         a1, s5, 253f
                  ori          s6, tp, 1240
                  bgeu         t3, s5, 260f
                  sll          tp, s11, a4
                  addi         a0, s6, 162
253:              slt          a1, t5, t0
                  srl          tp, a0, s5
                  blt          s1, sp, 256f
256:              andi         s2, zero, 1722
                  bge          a6, t1, 277f
                  blt          t5, a7, 260f
                  srai         a7, t2, 11
260:              slli         s7, ra, 8
                  andi         t6, s1, -488
                  srai         a5, a1, 12
                  slt          s7, a6, s4
                  sra          s9, a4, t6
                  srai         a7, ra, 9
                  srai         s10, t1, 15
                  bgeu         t4, s8, 270f
                  slli         a7, t5, 6
                  sltiu        zero, s3, -195
270:              andi         t3, s7, 1454
                  srl          t1, t5, s6
                  bge          t2, t4, 279f
                  sltu         t2, t2, tp
                  auipc        t6, 886596
                  sltu         t0, tp, t0
                  slt          t1, s7, t1
277:              slti         s9, s9, 1099
                  srl          a3, t6, t5
279:              ori          s2, s3, -829
                  srli         a3, zero, 28
                  auipc        s9, 865981
                  srai         t5, s8, 2
                  beq          s4, a2, 290f
                  auipc        s1, 244615
                  sll          sp, a5, a4
                  andi         t0, sp, 1564
                  slli         a1, s10, 5
                  xori         tp, a0, -1002
                  sll          s2, a5, t3
290:              xor          a5, a0, zero
                  or           s2, a6, t5
                  addi         s11, s0, 878
                  sub          gp, s0, a1
                  sltu         t5, a1, s2
                  srli         t2, s1, 15
                  and          s3, s9, a2
                  bge          s10, t2, 299f
                  sub          ra, a2, t2
299:              sll          a2, t0, s4
                  andi         s6, t4, -578
                  lw           sp, 4(a6)
                  addi         s5, zero, 710
                  nop
                  addi         a6, a6, 48
                  add          t2, t5, a5
443:              addi x5, x2, 0
443:              jalr x5, x5, 0
sub_3:            xori         s1, a2, -858
                  slt          t5, s10, a7
                  addi         a6, a6, -64
                  sltiu        s7, t5, 907
                  sw           sp, 4(a6)
                  or           s7, gp, a7
                  add          t6, t6, a7
                  sltu         s5, a3, sp
                  srl          s3, s4, t0
                  la           a3, region_0+687 #start riscv_load_store_rand_instr_stream_7
                  auipc        s4, 553882
                  srai         gp, tp, 25
                  lbu          gp, -12(a3)
                  sra          t0, sp, s0
                  lbu          zero, -48(a3)
                  sb           s9, 41(a3)
                  and          s2, s9, s3
                  lhu          s3, 25(a3)
                  lbu          t5, -33(a3)
                  xori         gp, a2, 461
                  auipc        tp, 1006694
                  sra          zero, a5, t0
                  ori          ra, t4, -1290
                  xor          s7, gp, t6
                  sh           t5, 31(a3)
                  auipc        s9, 422982
                  sltu         a0, ra, t5
                  lh           gp, 9(a3)
                  lb           tp, -40(a3)
                  slli         s1, a3, 21
                  andi         s2, s7, 1533
                  ori          s3, t0, 1888
                  sh           a1, -57(a3)
                  lb           s7, 52(a3)
                  sb           s7, 8(a3)
                  lb           t1, -62(a3)
                  xori         a0, t0, -1277
                  sub          a1, gp, t4
                  sll          t2, s3, a5
                  or           s1, a5, s11
                  lbu          s6, -40(a3)
                  sb           s6, 18(a3)
                  sw           s3, -35(a3)
                  srli         s10, t0, 21
                  lhu          zero, -11(a3)
                  slti         sp, s8, -2009
                  slt          s6, s2, t5
                  lh           a7, -15(a3) #end riscv_load_store_rand_instr_stream_7
                  la           a1, region_0+1131 #start riscv_load_store_rand_instr_stream_10
                  srai         zero, zero, 11
                  add          a3, s2, tp
                  sltiu        a5, s8, 833
                  lb           s7, 164(a1)
                  lui          a7, 1007324
                  slli         a3, s3, 6
                  lb           a4, -183(a1)
                  slt          s9, zero, t1
                  lbu          ra, 128(a1)
                  sb           t3, -106(a1)
                  sh           a1, -1(a1)
                  lb           t5, 212(a1)
                  lb           tp, 168(a1)
                  sub          a3, t4, tp
                  sb           a0, 130(a1)
                  addi         t2, t5, -1208
                  nop
                  srli         t0, t0, 31
                  and          t6, ra, a5
                  addi         gp, s8, 1184
                  srai         t6, a4, 25
                  sll          t3, s2, a5
                  sh           a2, -241(a1)
                  lb           s1, 234(a1)
                  lhu          t1, -45(a1)
                  sb           a6, 16(a1)
                  slli         zero, a2, 18
                  lbu          tp, 28(a1)
                  lb           t3, -132(a1)
                  lbu          a2, -32(a1)
                  nop
                  srl          a7, sp, t4
                  lb           t3, 162(a1) #end riscv_load_store_rand_instr_stream_10
                  la           s10, region_0+221 #start riscv_load_store_rand_instr_stream_28
                  addi         sp, s7, -290
                  add          gp, s3, s7
                  xor          t3, a0, s10
                  sra          s3, a3, s2
                  lw           s0, 207(s10)
                  lw           t1, -129(s10)
                  sb           a3, 247(s10)
                  sll          s0, t5, a0
                  sw           s4, -113(s10)
                  srl          t6, sp, a4
                  slli         s5, sp, 15
                  and          s2, t6, gp
                  sltiu        s4, s8, 293
                  sb           sp, 0(s10)
                  sb           s7, -221(s10)
                  sltiu        t2, s3, -189
                  lbu          a4, -10(s10)
                  addi         t5, a3, -1243
                  lbu          a2, -174(s10)
                  xori         a4, s8, 680
                  lh           t0, 241(s10)
                  lb           t2, -60(s10)
                  andi         s0, t3, -1405
                  sh           s0, -127(s10)
                  sb           zero, -73(s10)
                  lb           s4, 163(s10)
                  lbu          s11, 174(s10)
                  lhu          s9, 171(s10)
                  sb           t6, 60(s10)
                  sb           a6, -118(s10)
                  lbu          ra, 106(s10)
                  lbu          s3, 187(s10)
                  sll          s9, a2, t1
                  lb           a3, -144(s10)
                  nop
                  sb           s3, -114(s10)
                  sh           s6, 37(s10)
                  sb           t0, 124(s10)
                  sb           t2, 40(s10)
                  sh           t0, -195(s10) #end riscv_load_store_rand_instr_stream_28
                  la           t5, region_1+1592 #start riscv_load_store_rand_instr_stream_25
                  srl          s7, t3, t5
                  lbu          s9, -110(t5)
                  srai         zero, t1, 6
                  lb           t6, 349(t5)
                  lbu          s11, -1083(t5)
                  sb           a4, -1269(t5)
                  xor          t2, t6, s0
                  or           s7, zero, s2
                  sb           ra, -387(t5)
                  sb           t2, 269(t5)
                  slli         a1, t2, 18
                  lb           s11, -221(t5)
                  xori         s10, t4, -1422
                  sltiu        s2, s5, -1068
                  lbu          s4, -1163(t5)
                  add          s11, t2, s0
                  xor          s9, t1, a0
                  lh           a5, -32(t5)
                  xor          s0, t2, t1
                  add          t3, zero, a0
                  slti         t1, a1, -1617
                  sltu         a7, t3, a3
                  lw           t0, 204(t5)
                  lb           s9, -214(t5)
                  sb           s2, -1370(t5)
                  ori          s3, s0, -1411
                  slt          s3, a2, s7
                  ori          gp, s8, 848
                  lb           s2, -1119(t5)
                  lb           t0, -1362(t5)
                  sw           a1, 396(t5)
                  sltu         a3, a4, s7
                  lbu          tp, -770(t5)
                  lb           s7, -958(t5)
                  ori          a5, s3, -1257
                  lbu          a7, -493(t5)
                  lbu          s10, 287(t5)
                  addi         s11, a3, -47
                  sltiu        s2, a1, 1665
                  sb           s11, -333(t5)
                  lb           s5, -1215(t5)
                  srl          a3, t3, s5
                  lbu          a4, -1481(t5)
                  lb           s5, 399(t5)
                  lb           a5, 288(t5)
                  srl          s9, ra, a3
                  sb           t1, -358(t5)
                  sh           s6, -278(t5) #end riscv_load_store_rand_instr_stream_25
                  la           sp, region_0+1936 #start riscv_load_store_rand_instr_stream_12
                  lhu          s0, -2(sp)
                  sub          t5, t6, t0
                  sb           a3, -3(sp)
                  auipc        zero, 894845
                  sltu         s11, s1, a6
                  sb           a7, 9(sp)
                  lh           s9, -6(sp)
                  lb           s0, -1(sp)
                  lh           a3, 10(sp)
                  sra          a7, s10, s5
                  sb           t4, -1(sp)
                  sltu         a2, t1, ra
                  and          a4, s4, s3
                  lb           a2, 0(sp)
                  lhu          a3, 4(sp)
                  lbu          s2, 15(sp)
                  lh           t2, 0(sp)
                  sh           s6, 10(sp)
                  sh           t4, -2(sp)
                  lbu          s2, -1(sp)
                  lh           s9, 14(sp)
                  srl          s3, s2, a3
                  lw           a3, -12(sp)
                  lhu          s11, -2(sp)
                  xor          gp, a4, s2
                  slti         s1, gp, 412
                  nop
                  sw           s0, 8(sp)
                  lb           a5, 11(sp)
                  sb           s2, 5(sp)
                  auipc        gp, 505445
                  and          t5, t2, s9
                  sll          tp, gp, s2
                  lh           s5, -2(sp)
                  lbu          a0, -3(sp)
                  lbu          s10, -15(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+348 #start riscv_load_store_rand_instr_stream_17
                  lw           s9, 1248(sp)
                  sb           t0, 588(sp)
                  nop
                  add          s7, sp, zero
                  auipc        a0, 685997
                  lb           s7, -19(sp)
                  srl          s5, t1, s9
                  lui          a2, 355955
                  lhu          t1, 72(sp)
                  slli         a4, s1, 9
                  lbu          tp, 851(sp)
                  sltiu        s7, s11, 1016
                  lbu          s6, 820(sp)
                  lhu          t5, -316(sp)
                  lbu          s2, 439(sp)
                  ori          a7, s2, 1139
                  ori          gp, s1, 1768
                  lui          t6, 966005
                  lb           t6, 967(sp)
                  xori         t5, s9, 299
                  lbu          s1, 93(sp)
                  add          s10, a2, zero
                  lhu          a4, 1582(sp)
                  nop
                  lbu          a1, 197(sp)
                  xor          ra, t0, s3
                  lb           zero, -63(sp)
                  lh           s7, 818(sp)
                  sltiu        t2, s11, 882
                  slti         s4, t2, -918
                  lb           a1, 822(sp) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_1+834 #start riscv_load_store_rand_instr_stream_9
                  slli         t3, s9, 30
                  addi         ra, s4, 282
                  or           s3, s0, a7
                  nop
                  auipc        s3, 1028451
                  xor          s5, s3, t3
                  xor          a5, sp, a6
                  nop
                  or           s0, a5, tp
                  sb           a1, 46(sp)
                  xori         s1, a4, 961
                  sub          s2, a0, s8
                  sb           s2, -203(sp)
                  sub          s1, a4, a0
                  nop
                  sll          s0, tp, s6
                  srl          a2, ra, gp
                  sll          zero, s5, t3
                  sll          t3, a6, s7
                  sb           a3, 207(sp)
                  and          t3, sp, t2
                  lw           s5, -94(sp)
                  sb           t1, 78(sp)
                  lh           s5, -34(sp)
                  slli         ra, s11, 7
                  sra          a0, gp, s4
                  sb           a2, 211(sp)
                  lb           t3, 177(sp)
                  sub          t0, sp, a2
                  add          t2, t2, a5
                  lhu          s4, 232(sp)
                  slli         a5, s4, 14
                  lh           a5, -92(sp)
                  sb           s11, -20(sp)
                  sb           tp, -61(sp)
                  lb           s11, -151(sp)
                  andi         a2, s6, 680
                  lb           t0, -117(sp)
                  sh           a1, 254(sp)
                  lbu          s7, -121(sp)
                  srl          t3, s10, t4
                  srli         s7, s10, 29
                  sltiu        a7, t3, 1965
                  sltu         a4, a1, s1
                  ori          t0, a1, -1288
                  sh           zero, -130(sp)
                  lw           ra, 74(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+393 #start riscv_load_store_rand_instr_stream_23
                  auipc        t6, 342447
                  sll          s2, t2, a6
                  srai         gp, t0, 9
                  slli         t6, a6, 28
                  lh           t2, -3(sp)
                  sll          s7, s6, gp
                  auipc        s10, 699236
                  lhu          a7, -1(sp)
                  sh           s6, -1(sp)
                  add          s5, s3, gp
                  xor          s4, a4, a6
                  xor          s10, ra, a5
                  nop
                  slli         s5, s5, 4
                  sltiu        s7, t5, -509
                  slti         t3, gp, 142
                  slli         gp, s5, 24
                  and          a2, a2, ra
                  lui          s3, 161956
                  lui          s9, 430120
                  sll          t1, a2, s6
                  lbu          a2, 1(sp)
                  lbu          s7, -2(sp)
                  lb           a4, 8(sp)
                  lh           s6, -1(sp)
                  lb           s4, -8(sp)
                  addi         s4, s4, 216
                  lb           a3, 13(sp)
                  lbu          s2, 2(sp)
                  andi         s11, s5, -1757
                  lb           t1, 16(sp)
                  lb           s3, 4(sp)
                  lh           t3, -9(sp)
                  lb           t2, -2(sp)
                  sw           t1, -1(sp)
                  lbu          s0, 12(sp)
                  lbu          s4, -3(sp)
                  ori          a1, s8, -466
                  sltu         s3, t1, s10
                  lbu          tp, -10(sp)
                  sb           s3, -5(sp)
                  slti         t1, a5, -1235
                  sh           s2, -15(sp)
                  xor          t0, a4, ra
                  xor          gp, ra, s8
                  lb           s4, -16(sp)
                  lbu          gp, -13(sp)
                  sb           t5, -2(sp)
                  auipc        a2, 575714
                  slli         s3, s3, 10
                  slti         a2, sp, -1816
                  lb           t6, -11(sp)
                  slli         a3, a7, 2
                  sltiu        s6, s5, -1972
                  lw           s3, -13(sp) #end riscv_load_store_rand_instr_stream_23
                  la           a7, region_0+1575 #start riscv_load_store_rand_instr_stream_14
                  lbu          s4, -245(a7)
                  sll          s11, s3, s8
                  srl          s10, sp, t1
                  lb           s11, -87(a7)
                  sra          s5, t3, s1
                  lh           a2, -119(a7)
                  srai         s11, s7, 5
                  lbu          s11, 16(a7)
                  xor          s10, a7, t1
                  lui          sp, 355095
                  sb           a3, 230(a7)
                  lh           s1, -135(a7)
                  slli         a0, a6, 27
                  sll          gp, a0, s7
                  xor          tp, s5, s3
                  lb           t3, 232(a7)
                  sb           t2, 150(a7)
                  sw           s5, -155(a7)
                  lui          a5, 97389
                  lbu          s2, -14(a7)
                  lb           zero, -197(a7)
                  lbu          a5, -50(a7)
                  lhu          a3, -185(a7)
                  sltu         s10, a2, a4
                  ori          s4, a2, 1678
                  sw           a3, 61(a7)
                  sh           a7, 237(a7)
                  and          t3, a0, t6
                  lbu          t2, 204(a7)
                  slt          a0, ra, a5
                  sb           ra, -201(a7)
                  lhu          s11, -193(a7)
                  ori          t1, t2, -422
                  sb           s1, -63(a7)
                  or           t0, a2, ra
                  sb           s8, 30(a7)
                  addi         s10, a1, -196
                  ori          a3, s9, 643
                  lbu          a5, -155(a7)
                  lb           a0, -119(a7)
                  lb           s2, -146(a7) #end riscv_load_store_rand_instr_stream_14
                  la           tp, region_0+562 #start riscv_load_store_rand_instr_stream_13
                  sb           t3, 14(tp)
                  ori          a2, gp, 1960
                  lbu          a5, -242(tp)
                  lui          t3, 691915
                  lbu          t5, -102(tp)
                  sb           s10, 173(tp)
                  sb           s3, 13(tp)
                  srai         s2, a2, 21
                  slti         a4, a7, -956
                  lhu          s6, 198(tp)
                  lb           t0, -157(tp)
                  or           s9, zero, a4
                  ori          t0, t6, -148
                  lh           t6, -174(tp)
                  slli         t6, sp, 11
                  lbu          a0, 231(tp)
                  lw           s1, -98(tp)
                  sw           s1, 2(tp)
                  lb           s5, -205(tp)
                  sltiu        sp, a7, 984
                  lbu          s5, -63(tp)
                  sll          t6, s0, t5
                  srli         s3, t0, 21
                  lbu          s9, -111(tp)
                  sb           sp, -45(tp)
                  sltu         t1, s10, t1
                  lb           s3, 176(tp)
                  sb           s10, 7(tp)
                  andi         t1, t6, -241
                  sh           a3, -56(tp)
                  sb           t2, 177(tp)
                  lui          a0, 57852
                  lb           a1, -223(tp)
                  sltiu        t2, t2, 143
                  lbu          s0, -36(tp)
                  xor          s3, s0, t1
                  andi         s5, s2, -856
                  lhu          a2, 2(tp)
                  slt          gp, s9, zero
                  andi         s0, a5, -1644
                  ori          a2, tp, 1890
                  sh           zero, 72(tp)
                  sb           a4, -154(tp)
                  sltiu        s5, a3, -839
                  lb           zero, 218(tp)
                  srl          ra, t4, s2
                  xor          s2, a1, s9
                  nop
                  sltiu        a5, a0, -678
                  sub          s7, a0, t0
                  lb           gp, 100(tp)
                  xori         s0, s6, -804
                  sb           a2, 245(tp)
                  lbu          a5, 154(tp)
                  lb           a7, 60(tp)
                  srai         sp, a2, 7
                  sb           t6, -15(tp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+1568 #start riscv_load_store_rand_instr_stream_22
                  lbu          a4, 5(sp)
                  srli         s10, s5, 18
                  lbu          a1, 15(sp)
                  lh           s4, 12(sp)
                  add          t3, s0, gp
                  xori         s10, t3, -180
                  lbu          s11, 5(sp)
                  add          s10, a0, s9
                  auipc        ra, 507141
                  lb           zero, -3(sp)
                  or           s10, a1, a5
                  sltiu        s1, t4, 1359
                  srai         s2, s8, 25
                  add          s1, a0, s6
                  sll          t5, a2, sp
                  srai         t5, s4, 3
                  sltiu        t5, s0, 936
                  auipc        s0, 256607
                  lh           t1, 4(sp)
                  slti         a5, a5, -1868
                  lh           a7, -6(sp)
                  sh           t5, -2(sp)
                  slt          a4, t1, a1
                  lw           a7, -12(sp)
                  sub          s11, t4, a4
                  sh           s10, -8(sp) #end riscv_load_store_rand_instr_stream_22
                  la           s4, region_0+63 #start riscv_load_store_rand_instr_stream_8
                  sub          s11, t3, s10
                  ori          t5, t2, -1676
                  sb           s7, 1007(s4)
                  nop
                  sltiu        a1, t3, 1430
                  sh           s8, 1225(s4)
                  andi         a4, sp, -1468
                  lh           t6, -23(s4)
                  sll          s1, t1, s10
                  lb           a1, 512(s4)
                  andi         zero, t3, -1144
                  sub          s1, t6, a0
                  sw           t2, 1353(s4)
                  lhu          t5, 915(s4)
                  ori          a2, s7, -25
                  auipc        zero, 522779
                  xor          a5, s3, s1
                  lb           a1, 1236(s4)
                  sub          a2, a7, s2
                  srl          a5, a1, s3
                  andi         s7, s10, -1689
                  lb           a2, 502(s4)
                  lbu          t2, 302(s4)
                  xor          t2, a4, t1
                  sb           s7, 876(s4)
                  sb           s6, 14(s4) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+26 #start riscv_load_store_rand_instr_stream_11
                  srli         s2, a7, 22
                  slti         ra, s0, 1261
                  sb           t6, 7(sp)
                  sb           a0, 8(sp)
                  lbu          s2, 9(sp)
                  lb           s4, 8(sp)
                  sh           s0, 8(sp)
                  lbu          s9, 12(sp)
                  sll          ra, s1, ra
                  lb           tp, 13(sp)
                  srai         zero, a1, 24
                  andi         s11, a2, 753
                  sb           s9, 2(sp)
                  sb           t0, 4(sp)
                  lbu          zero, 5(sp)
                  sw           s10, -6(sp)
                  srli         a2, t3, 13
                  sb           a6, -11(sp)
                  andi         zero, s0, -982
                  lbu          a1, 15(sp)
                  lb           t1, 5(sp)
                  lb           gp, -3(sp)
                  lhu          t2, -12(sp)
                  lhu          s5, 4(sp)
                  sb           a2, 0(sp)
                  sra          a4, s3, s0
                  sltiu        s4, s2, -518
                  lbu          s3, 3(sp)
                  slti         ra, s9, -650
                  srli         t3, a2, 16
                  lbu          t1, 6(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+181 #start riscv_load_store_rand_instr_stream_5
                  sb           ra, -141(sp)
                  srl          s9, a3, a0
                  lbu          s10, 1627(sp)
                  lb           t6, 678(sp)
                  xori         s10, t2, 1253
                  lb           s0, 1608(sp)
                  add          gp, gp, a1
                  slti         a5, a3, 1715
                  nop
                  lh           a7, 195(sp)
                  slt          a7, s3, s0
                  sw           t3, 1091(sp)
                  lh           s9, 265(sp)
                  lbu          s6, 1076(sp)
                  sb           t3, 204(sp)
                  lbu          ra, 659(sp)
                  lbu          s9, 364(sp)
                  lb           s10, 828(sp)
                  srl          s2, a4, s10
                  lb           t6, 264(sp)
                  lb           t0, 1520(sp)
                  sb           s5, 414(sp)
                  sltiu        t0, t6, -371
                  sb           s5, 160(sp)
                  lhu          a4, 1749(sp)
                  auipc        zero, 175873
                  lh           s4, 1665(sp)
                  or           s2, sp, s10
                  sh           s1, 1597(sp)
                  ori          a7, a1, -149
                  lbu          s10, 664(sp)
                  addi         a0, s4, 1537
                  srli         t2, t6, 3
                  or           s7, s7, s3
                  lhu          s2, 683(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+656 #start riscv_load_store_rand_instr_stream_18
                  sb           s6, 41(sp)
                  sll          s3, s4, t3
                  sltu         zero, s9, s6
                  add          t5, s3, s6
                  lui          s4, 817232
                  sub          gp, s0, a3
                  lb           a1, 10(sp)
                  add          a0, t2, a1
                  addi         s11, s4, -322
                  sb           s8, 28(sp)
                  slt          t0, s8, s2
                  lb           a3, -23(sp)
                  ori          s2, a4, 629
                  lbu          tp, -48(sp)
                  sb           s1, 47(sp)
                  nop
                  xori         t5, s5, 46
                  sltu         s1, gp, s3
                  srl          t5, s5, s4
                  sltu         t3, s6, a2
                  lbu          s5, 24(sp)
                  or           t2, s4, s11
                  srli         zero, t0, 28
                  lbu          zero, -16(sp)
                  slli         tp, a4, 10
                  xori         t2, s8, -1846
                  ori          s2, a2, -934
                  lbu          t3, -15(sp)
                  srl          t5, s11, a7
                  and          t0, a3, s4
                  or           s4, s1, a5
                  lb           zero, -39(sp)
                  sltiu        ra, t6, -1823
                  lb           t2, 39(sp) #end riscv_load_store_rand_instr_stream_18
                  la           t2, region_0+1591 #start riscv_load_store_rand_instr_stream_27
                  lb           t1, -1082(t2)
                  sra          gp, t0, gp
                  lh           ra, -1281(t2)
                  sh           t2, -133(t2)
                  lb           s0, -435(t2)
                  add          t6, sp, t6
                  addi         s11, a7, -535
                  lb           zero, -1473(t2)
                  sh           a0, -61(t2)
                  slt          s10, s4, t6
                  slli         s3, a1, 3
                  lui          a5, 896307
                  and          s2, a0, t4
                  srl          t1, s10, s2
                  and          s1, t6, s10
                  sb           s3, -1289(t2)
                  lb           s1, -960(t2)
                  or           a3, s10, a4
                  sb           s4, 158(t2)
                  sra          t5, a5, s8
                  addi         a1, t0, 302
                  sb           t1, -1358(t2)
                  lh           gp, 17(t2)
                  lb           t6, -1230(t2)
                  lbu          s6, -1560(t2)
                  sra          a7, tp, a2
                  sb           ra, 314(t2)
                  slt          s6, sp, s9
                  xori         t1, a6, -1331
                  lbu          a5, -74(t2)
                  lbu          a3, -779(t2)
                  sra          s10, a3, t3
                  sltiu        a0, a7, -1089
                  nop
                  lw           a7, -1311(t2)
                  slti         s4, sp, -329
                  lbu          t3, -544(t2) #end riscv_load_store_rand_instr_stream_27
                  la           t6, region_0+887 #start riscv_load_store_rand_instr_stream_21
                  slt          t3, s10, s11
                  sltiu        t3, tp, 870
                  srl          s5, s10, s11
                  lw           a2, -11(t6)
                  xori         t3, a7, 1347
                  srl          t1, ra, a4
                  sub          s11, a6, t0
                  srl          a5, sp, s3
                  sltu         s4, t3, s3
                  andi         s3, tp, 280
                  ori          s5, s9, 1099
                  sh           s5, -9(t6)
                  sltu         s5, t5, t5
                  xori         t5, ra, -86
                  sll          s1, s3, s0
                  xor          a5, s10, t2
                  auipc        s10, 95876
                  sb           zero, 6(t6)
                  sb           s9, 3(t6)
                  sb           s3, 8(t6)
                  sra          s9, sp, t4
                  lb           t1, -14(t6)
                  lw           a3, 5(t6)
                  nop
                  ori          a2, a1, -1436
                  lbu          s6, 6(t6)
                  xori         a2, a5, -1376
                  lbu          s1, -8(t6)
                  sll          s1, s4, a3
                  slli         a0, t2, 0
                  sra          s1, t2, t3
                  lbu          a1, -8(t6)
                  slt          s11, a7, t5
                  lhu          s9, 3(t6)
                  lb           s0, 14(t6)
                  lbu          s5, 16(t6)
                  sltiu        sp, t0, 220
                  lbu          s11, 5(t6) #end riscv_load_store_rand_instr_stream_21
                  la           sp, region_1+788 #start riscv_load_store_rand_instr_stream_20
                  lb           a3, 1211(sp)
                  lb           s5, 175(sp)
                  auipc        a2, 364722
                  sra          a4, s0, s5
                  slli         s11, t3, 1
                  sll          zero, a5, s7
                  lbu          t1, 338(sp)
                  lb           s5, 459(sp)
                  andi         s11, s3, -667
                  sh           a2, 4(sp)
                  sh           s6, 952(sp)
                  addi         t2, gp, -1120
                  lbu          s6, 511(sp)
                  srai         a0, s3, 11
                  lbu          a2, -363(sp)
                  lbu          a2, -526(sp)
                  and          a4, t6, a5
                  sb           t0, -487(sp)
                  sh           t3, -354(sp)
                  lb           s1, 49(sp)
                  add          a1, t6, t3
                  sll          a4, t5, gp
                  or           s1, a0, t1
                  lb           s6, 549(sp)
                  lbu          s7, -91(sp)
                  sltu         s10, t1, s6
                  sb           t5, -10(sp) #end riscv_load_store_rand_instr_stream_20
                  la           s10, region_0+1474 #start riscv_load_store_rand_instr_stream_26
                  slli         sp, a6, 5
                  lb           a3, -7(s10)
                  sltu         sp, a7, tp
                  sub          a2, t5, t3
                  sub          t6, t5, s4
                  xori         s1, a6, 485
                  andi         s11, t1, -880
                  slt          t6, s2, zero
                  sb           s5, -9(s10)
                  slt          a1, t6, s11
                  slti         s5, a7, 1381
                  lb           s1, -1(s10)
                  slti         ra, s10, 795
                  srai         a0, s11, 20
                  lhu          a7, -12(s10)
                  lb           s11, 15(s10)
                  lb           s6, -6(s10)
                  lbu          s9, 9(s10)
                  lh           s1, -12(s10)
                  sra          tp, s2, s1
                  xori         zero, zero, 987
                  srl          tp, zero, s5
                  lhu          gp, 14(s10)
                  and          s2, t0, t3
                  lbu          tp, -12(s10)
                  lh           s1, -2(s10)
                  lb           s2, 14(s10)
                  lhu          a2, -6(s10)
                  sb           s8, -16(s10)
                  srai         ra, s2, 28
                  addi         t1, s9, 752
                  sb           s5, 3(s10)
                  or           a3, s9, s11
                  lh           tp, -4(s10)
                  xori         s7, a7, 461
                  lhu          a0, -12(s10)
                  lbu          gp, -3(s10)
                  xor          s3, ra, sp
                  lbu          zero, -12(s10)
                  sll          s5, s9, s3
                  lbu          tp, 8(s10)
                  sb           tp, 1(s10)
                  lbu          s9, 5(s10)
                  lbu          t1, 5(s10)
                  lui          a2, 623335
                  lh           s1, 16(s10) #end riscv_load_store_rand_instr_stream_26
                  la           a4, region_1+706 #start riscv_load_store_rand_instr_stream_16
                  or           s10, zero, s6
                  srl          s6, a5, a1
                  lh           t0, 222(a4)
                  add          s5, t6, t3
                  sltu         s10, s0, tp
                  lbu          t3, -109(a4)
                  sb           s8, 48(a4)
                  add          s1, s4, s7
                  sb           s1, 237(a4)
                  lbu          t0, -228(a4)
                  lb           t6, 95(a4)
                  lb           t3, 186(a4)
                  xor          s9, a4, s11
                  addi         a1, t2, -760
                  lbu          t0, -69(a4)
                  lb           a7, 169(a4)
                  sltiu        t0, t2, 1706
                  lhu          gp, 180(a4)
                  xor          t1, t4, s9
                  sb           a1, -44(a4)
                  lb           a3, 40(a4)
                  sub          s3, zero, sp
                  slti         tp, t1, -445
                  lb           a2, -158(a4)
                  srli         s6, zero, 9
                  sll          s0, s2, a3
                  sb           t1, 209(a4)
                  xor          t2, s3, a1
                  lbu          s10, -179(a4)
                  nop
                  sltu         a5, t0, a5
                  nop
                  srl          ra, t2, a3
                  sb           t0, -215(a4)
                  or           a3, a4, s5
                  sltu         sp, tp, s1
                  sb           s3, -151(a4)
                  sb           a1, -39(a4)
                  addi         s3, zero, 736
                  sb           s10, -148(a4)
                  sb           s0, -215(a4)
                  sh           s4, -250(a4)
                  sltiu        s6, s11, 1965
                  addi         t2, s7, -868
                  sb           t4, 223(a4)
                  lb           ra, -170(a4)
                  add          s11, s3, t1
                  sb           s1, 159(a4)
                  sb           t6, 63(a4)
                  sh           t3, 38(a4)
                  and          t3, a5, zero
                  sub          zero, s3, t3
                  lh           t0, -78(a4)
                  lbu          tp, -63(a4)
                  lbu          t2, 91(a4) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_1+1851 #start riscv_load_store_rand_instr_stream_6
                  lbu          s1, -10(sp)
                  slt          a2, s0, a1
                  lbu          a5, 25(sp)
                  srai         a4, tp, 24
                  nop
                  sb           a4, -7(sp)
                  sh           s8, -21(sp)
                  srl          t0, t0, s10
                  lbu          a2, 7(sp)
                  and          zero, a5, t2
                  sb           s11, 26(sp)
                  sra          s6, s10, a7
                  nop
                  lui          s4, 850858
                  lh           a3, -45(sp)
                  or           a2, a2, s4
                  lui          a3, 242789
                  ori          ra, a1, 347
                  lbu          zero, -10(sp)
                  lbu          a1, 25(sp)
                  sw           s8, 61(sp)
                  slt          a0, gp, s7
                  sh           t0, -45(sp)
                  sb           sp, 6(sp)
                  xori         s6, s5, -608
                  lh           a3, 15(sp)
                  add          a4, t0, a6
                  lh           t5, -57(sp)
                  sb           s3, 4(sp)
                  sub          t1, s2, t0
                  sh           t3, -11(sp)
                  sb           s5, -26(sp)
                  or           s0, a6, s9
                  andi         s3, zero, 1500
                  slti         s3, t2, 1601
                  ori          s10, tp, 1658
                  xori         a4, s3, -1681
                  andi         t0, t2, 1543
                  lhu          a3, 49(sp)
                  lb           s11, 31(sp)
                  sub          zero, s4, s3
                  sb           ra, 50(sp)
                  sh           s8, 11(sp)
                  add          t3, t6, a1
                  sb           s11, -40(sp)
                  and          s2, a5, t0
                  sh           t6, -11(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_0+992 #start riscv_load_store_rand_instr_stream_15
                  sb           a2, -134(s0)
                  sb           ra, -178(s0)
                  slti         a3, t0, -1864
                  and          a5, s1, s11
                  add          a0, t3, a7
                  sra          t5, tp, s8
                  slti         a0, s7, -574
                  sltu         gp, gp, t0
                  sb           a7, 39(s0)
                  add          s7, s6, s0
                  sub          a0, a0, t1
                  sub          a7, s2, zero
                  sb           t3, 211(s0)
                  lb           s6, 157(s0)
                  lhu          s5, -86(s0)
                  add          t3, a0, a2
                  add          s6, t6, tp
                  sh           s7, -254(s0)
                  srl          a7, a0, a5
                  sb           s11, -76(s0)
                  sll          sp, s9, t0
                  xori         s9, t1, -746
                  sll          s11, sp, t6
                  sltiu        t1, s5, -735
                  ori          t2, t3, 970
                  srai         a3, t6, 20
                  lbu          s6, -166(s0)
                  lb           t0, -23(s0)
                  ori          zero, s0, -314
                  nop
                  nop
                  addi         t1, a6, -1100
                  ori          a5, s8, -471
                  ori          s1, s10, 1665
                  sb           s6, -233(s0)
                  sra          t0, a1, zero
                  lh           gp, -26(s0)
                  lb           t2, -221(s0)
                  srai         a1, s1, 6
                  auipc        s6, 332650
                  lb           t2, -120(s0) #end riscv_load_store_rand_instr_stream_15
                  andi         s7, s3, -659
                  or           zero, a2, s11
                  slli         ra, a1, 11
                  sltiu        gp, a3, -824
                  sll          t0, s5, t0
                  ori          gp, t0, 1143
                  bltu         s0, s3, 8f
                  sub          a4, t2, a2
8:                or           ra, t1, tp
                  ori          zero, t0, -1622
                  sltu         s5, s8, zero
                  slti         sp, s5, 1226
                  bltu         a1, s4, 30f
                  andi         s5, a1, 1152
                  bltu         sp, s2, 20f
                  add          t5, s7, s0
                  srl          t1, ra, t6
                  bne          ra, s2, 21f
                  addi         s11, s9, -69
                  bltu         zero, s6, 38f
20:               add          a5, a3, s5
21:               blt          s6, t3, 26f
                  sltiu        s4, a3, 138
                  ori          gp, zero, -1733
                  and          t1, t4, sp
                  sra          s9, zero, s5
26:               blt          s1, s4, 40f
                  nop
                  slt          s10, t3, a6
                  sltiu        t1, a5, -1765
30:               slti         t5, a3, -109
                  auipc        a4, 313146
                  srai         s11, t6, 7
                  slli         s1, a2, 20
                  beq          sp, gp, 36f
                  sub          t2, tp, a0
36:               srai         t1, s5, 23
                  sll          s5, s11, a7
38:               bgeu         t3, a4, 47f
                  lui          a3, 174931
40:               andi         tp, s1, -97
                  slt          tp, t3, s10
                  slti         a0, a3, -1619
                  sub          tp, s6, s9
                  blt          a1, tp, 53f
                  addi         s9, a2, -850
                  srli         gp, a1, 11
47:               slti         t0, s9, -1508
                  bne          a1, s0, 55f
                  slt          a3, s10, t3
                  add          s4, a6, a5
                  slt          zero, s9, s2
                  nop
53:               bgeu         t1, s11, 56f
                  srl          sp, s8, t1
55:               lui          s0, 363804
56:               bne          a0, a2, 59f
                  xori         s11, t3, 103
                  beq          zero, sp, 63f
59:               sub          s4, t6, a3
                  xori         a2, s10, -1473
                  ori          a4, s6, -376
                  sll          t5, tp, s9
63:               slli         s11, s7, 20
                  sltu         a4, tp, a4
                  or           t0, a3, t6
                  slti         s9, s8, 5
                  addi         s1, t4, 1375
                  or           t5, s7, s10
                  slt          gp, s6, a1
                  blt          t2, a3, 77f
                  and          t3, t0, t6
                  and          s5, s5, a7
                  andi         a1, t1, -1113
                  sra          s10, zero, t4
                  xori         s4, a2, -540
                  bgeu         t0, s11, 90f
77:               ori          a3, t3, -501
                  and          a1, s1, t4
                  addi         a1, t3, -1592
                  bge          ra, s10, 88f
                  bltu         gp, s6, 101f
                  xori         s0, s10, 942
                  xori         a5, gp, -148
                  xori         a7, t0, 433
                  blt          a4, a4, 105f
                  bltu         zero, s4, 88f
                  sll          t1, s0, s9
88:               sll          tp, t6, a4
                  bne          s0, a6, 99f
90:               auipc        t6, 413580
                  xori         s11, a6, 514
                  add          s2, a3, s4
                  sltiu        s7, s11, -459
                  slli         gp, t5, 26
                  bltu         a7, s7, 110f
                  srli         s7, zero, 0
                  srli         s11, zero, 18
                  sub          t6, gp, s11
99:               bge          s3, t3, 103f
                  lui          s10, 1006549
101:              srai         sp, tp, 4
                  bgeu         s0, a3, 106f
103:              lui          gp, 1015254
                  xor          zero, t2, t0
105:              bgeu         t2, s2, 121f
106:              add          a1, gp, t5
                  slti         t3, t0, -893
                  sub          t5, gp, a1
                  srl          a7, t0, a6
110:              bge          a7, s0, 115f
                  srl          t0, t2, s9
                  sltu         zero, sp, s0
                  or           sp, a5, t2
                  sltu         a3, gp, s4
115:              slt          s6, a4, a4
                  slli         a0, s4, 21
                  nop
                  addi         ra, a7, 398
                  bge          t0, t0, 124f
                  beq          s10, a2, 123f
121:              nop
                  slli         ra, a4, 25
123:              ori          tp, s4, 901
124:              blt          zero, ra, 141f
                  sub          s9, s10, zero
                  srli         a4, t3, 17
                  add          a5, s9, t2
                  slli         a7, a3, 23
                  add          t0, s8, sp
                  sltu         zero, t5, gp
                  andi         a4, s6, -1431
                  bltu         t6, a4, 148f
                  bgeu         s1, s7, 150f
                  srli         a7, sp, 18
                  add          ra, s6, t4
                  sra          t3, s3, s6
                  sll          s9, t3, a1
                  bne          s7, s7, 156f
                  auipc        s7, 790021
                  add          tp, zero, s3
141:              auipc        s1, 613481
                  auipc        s10, 949123
                  auipc        a2, 398105
                  beq          tp, s6, 146f
                  nop
146:              ori          a3, s8, -398
                  srli         s2, s11, 9
148:              sll          sp, gp, zero
                  srli         t3, gp, 12
150:              sltu         s9, sp, a0
                  xor          s9, t2, s7
                  bne          a1, sp, 156f
                  slt          s10, t0, t4
                  xori         a4, a6, 1330
                  bgeu         t0, t6, 158f
156:              sll          t5, gp, s10
                  xori         ra, t6, -1808
158:              slt          s5, t4, t3
                  srai         t0, t3, 20
                  sll          s4, s4, t5
                  slt          t5, t5, t3
                  and          s1, s11, s8
                  addi         zero, s3, -677
                  or           t2, a3, t4
                  sltu         t1, s3, a3
                  blt          s5, t2, 171f
                  sltu         s6, s6, s5
                  slti         zero, a7, 720
                  slti         a1, a5, 60
                  slti         a0, s11, 1366
171:              xori         a0, a6, -1796
                  srli         s11, s9, 5
                  slti         s7, s10, -1612
                  add          a1, a5, s10
                  sltu         zero, t0, s2
                  sltiu        tp, a7, 1109
                  lui          ra, 252367
                  slti         s5, t4, -1825
                  or           t0, a3, a0
                  srl          t6, t0, t3
                  srli         gp, t5, 13
                  bgeu         s6, t2, 184f
                  bne          t4, gp, 203f
184:              bge          t0, a1, 200f
                  xori         s11, s10, 670
                  sra          sp, s8, t6
                  andi         s6, a3, 259
                  xori         s1, s7, -92
                  srl          a1, t4, a6
                  sll          t2, s0, s4
                  addi         a1, a1, 131
                  xor          ra, gp, a4
                  or           s6, s2, gp
                  bne          t1, s7, 208f
                  blt          s2, a2, 210f
                  srli         s1, t0, 12
                  sll          gp, zero, ra
                  srai         zero, a4, 5
                  or           s3, gp, a1
200:              xori         t6, t6, -519
                  bgeu         sp, s1, 215f
                  ori          a7, s1, 6
203:              lui          a3, 115699
                  bgeu         t4, a1, 214f
                  ori          ra, sp, 437
                  addi         a5, t1, 683
                  bge          zero, a6, 211f
208:              bgeu         s3, s5, 212f
                  and          a7, s0, s0
210:              srl          t0, zero, s2
211:              lui          s5, 656189
212:              xori         s2, tp, 64
                  sra          s9, s2, t2
214:              bgeu         zero, s8, 219f
215:              andi         ra, s7, 630
                  andi         t3, a2, -1337
                  srli         s6, t3, 31
                  xor          s0, s1, t3
219:              srai         zero, a1, 22
                  auipc        a5, 316762
                  slt          s7, s10, tp
                  lui          a4, 779858
                  bge          a1, s0, 232f
                  bne          a7, a1, 243f
                  ori          a0, s7, 1776
                  sub          t1, s1, s4
                  xori         s6, s6, 1890
                  blt          a7, s5, 231f
                  slti         a3, s10, 402
                  bge          s2, s7, 237f
231:              add          t2, s0, s4
232:              sll          t0, t2, s10
                  xori         s9, zero, -362
                  srli         a4, s7, 10
                  sltu         a7, s6, a4
                  srli         s1, a5, 12
237:              blt          a4, s7, 243f
                  srai         s0, t3, 14
                  sltiu        s4, sp, 1213
                  xor          t1, a3, s6
                  blt          t5, s2, 261f
                  srai         t3, tp, 10
243:              bgeu         gp, a3, 246f
                  sra          s3, s8, t4
                  add          a2, t6, a4
246:              ori          s6, a1, 338
                  sltu         t1, a0, t6
                  addi         s9, s6, -1050
                  sub          s4, a5, gp
                  sll          t3, s0, sp
                  bne          tp, s5, 256f
                  addi         t3, a0, -595
                  andi         s10, s2, 150
                  xori         a0, s4, -1094
                  srai         s2, tp, 13
256:              sltu         s7, s11, zero
                  bne          a3, sp, 273f
                  andi         s11, a7, -1118
                  sltu         s4, s1, sp
                  addi         s5, sp, -495
261:              beq          s3, s7, 266f
                  sub          s0, t6, a0
                  lui          a1, 643887
                  slti         a2, a4, -811
                  blt          t0, t6, 273f
266:              or           s0, gp, s0
                  or           t6, a5, s9
                  andi         s10, a5, -1991
                  beq          a2, s8, 278f
                  xor          t1, a7, t4
                  srai         tp, gp, 0
                  addi         ra, t5, 1403
273:              nop
                  sra          s9, t1, tp
                  andi         zero, a1, 1759
                  slt          a5, s2, a2
                  xor          zero, a4, a1
278:              sltu         s7, a2, a6
                  bltu         a0, t6, 281f
                  bgeu         t3, s2, 287f
281:              auipc        s4, 262260
                  lui          s3, 1047579
                  bge          s8, t4, 290f
                  slli         s6, s9, 18
                  beq          s11, s7, 288f
                  sltu         s6, s3, a2
287:              xori         tp, a3, 725
288:              nop
                  and          a4, s1, s8
290:              srl          s2, a0, a7
                  slt          a3, t5, a1
                  sub          t1, s1, gp
                  beq          s1, s2, 300f
                  ori          t1, a2, 1939
                  srai         a1, t2, 10
                  sltiu        a0, a0, 1085
                  blt          t0, s0, 300f
                  add          s9, t2, a7
                  srai         t1, t5, 26
300:              srli         t3, t4, 9
                  sub          sp, s2, gp
                  add          s9, s2, t2
                  srli         t6, s5, 25
                  xor          t6, s4, a1
                  beq          a0, s8, 310f
                  srl          t1, s8, t6
                  sltiu        s7, a4, 969
                  andi         s6, t5, 2008
                  blt          t0, s2, 329f
310:              addi         s5, t6, -1851
                  blt          a5, t5, 328f
                  srli         a5, s5, 4
                  bne          s0, a3, 322f
                  sltu         t2, a3, s6
                  or           a1, zero, t2
                  bltu         a2, a4, 332f
                  slti         tp, ra, 1976
                  add          t6, t0, s1
                  slli         gp, s10, 10
                  nop
                  sub          a1, s8, s2
322:              auipc        t2, 562639
                  srl          a2, s11, t4
                  sll          s4, s0, s5
                  slti         s5, tp, -1619
                  or           s7, a3, s11
                  sltu         ra, t1, a2
328:              xori         s3, zero, 1434
329:              add          s1, s9, s8
                  auipc        gp, 636409
                  xor          t1, t2, zero
332:              ori          s0, s10, 848
                  ori          s6, a3, 1844
                  lui          a0, 249784
                  sra          s2, a0, sp
                  sltu         s1, ra, s2
                  slt          ra, t5, a6
                  ori          a1, s0, 738
                  xor          zero, a0, zero
                  sub          tp, t3, a4
                  xori         s4, t4, -1641
                  lui          a5, 433034
                  slt          s0, s2, s7
                  slt          s0, s5, gp
                  bge          s2, s7, 347f
                  add          t0, t4, s1
347:              blt          ra, gp, 356f
                  sra          a1, sp, tp
                  xori         s6, s9, -1044
                  or           zero, t6, ra
                  srai         a5, s7, 25
                  xor          a0, s0, s5
                  auipc        ra, 574254
                  srli         s10, t0, 22
                  sll          s1, a5, tp
356:              lui          s3, 543756
                  sra          a0, t2, sp
                  slli         gp, a3, 20
                  sll          s6, s6, s0
                  bge          t2, t2, 379f
                  slt          a5, s0, t4
                  srai         s1, s5, 30
                  auipc        s9, 634499
                  slti         s11, s8, 1034
                  xori         s0, t0, 1928
                  andi         a1, a0, -1934
                  sltiu        ra, a3, -1283
                  sltu         t2, s10, tp
                  bne          t3, a5, 374f
                  bge          s9, a7, 390f
                  beq          s11, zero, 375f
                  sltu         a0, a7, s9
                  andi         s7, gp, -713
374:              xor          sp, t2, a3
375:              sltu         t6, s5, s5
                  add          t6, s2, s5
                  blt          a2, s10, 379f
                  sra          zero, a7, s1
379:              nop
                  blt          a3, a2, 383f
                  andi         gp, a5, 625
                  bgeu         s2, s2, 387f
383:              bge          s7, t6, 399f
                  sltu         a2, t1, a7
                  bltu         s5, t1, 399f
                  ori          a5, zero, 1133
387:              add          a1, s0, a0
                  slli         s0, s3, 18
                  add          t6, a1, a1
390:              or           s4, s9, a1
                  lui          a2, 962010
                  beq          a3, s7, 410f
                  add          tp, a0, s10
                  beq          s4, t3, 409f
                  bge          s9, a1, 409f
                  sltu         tp, s2, gp
                  srai         s7, t2, 23
                  sra          zero, t1, s3
399:              or           s1, t4, a2
                  sltiu        a1, t6, -539
                  and          a3, sp, s1
                  srl          s6, s7, s9
                  add          t5, s10, s0
                  srl          s7, s4, s11
                  slti         s9, s4, -1179
                  bne          s5, s5, 416f
                  ori          s10, t0, -1942
                  bgeu         s2, s5, 413f
409:              andi         a2, a1, -1361
410:              auipc        s5, 334006
                  bne          t6, s2, 415f
                  sll          t5, s11, a0
413:              slli         s0, a1, 21
                  sll          a5, a5, t6
415:              bltu         a3, s7, 423f
416:              xori         s6, s6, 158
                  beq          t4, s7, 421f
                  nop
                  add          zero, gp, s1
                  auipc        t0, 454229
421:              bltu         s0, s2, 423f
                  ori          a2, a3, 1911
423:              addi         t0, tp, 1543
                  sltiu        t2, t6, 91
                  sra          sp, tp, a2
                  beq          s4, zero, 432f
                  sub          zero, a1, s1
                  sltiu        a5, tp, 1061
                  slli         s10, a5, 11
                  bltu         a6, t3, 450f
                  lui          a1, 504311
432:              addi         s3, a3, 1683
                  auipc        a3, 188719
                  xor          a3, a7, gp
                  nop
                  bltu         ra, t5, 455f
                  sll          a4, t0, a3
                  ori          t1, s0, 775
                  sub          s10, a7, gp
                  sltu         s4, t6, s5
                  nop
                  sltu         a3, s6, a3
                  xor          a2, s0, sp
                  bge          a7, a2, 448f
                  slt          a1, gp, a0
                  add          s7, tp, a0
                  srl          s1, sp, zero
448:              blt          a3, t4, 453f
                  sra          s5, a4, a7
450:              xor          a0, s7, ra
                  addi         s11, a0, 1309
                  xor          ra, s7, zero
453:              nop
                  xor          s1, a7, t1
455:              beq          a2, s0, 457f
                  sub          zero, s10, t2
457:              andi         a2, tp, -244
                  bge          t0, s2, 462f
                  bne          s0, a2, 473f
                  srai         a3, ra, 5
                  ori          zero, a3, -595
462:              blt          s0, s10, 471f
                  xor          t6, t2, t4
                  xori         t6, a0, 790
                  sltu         gp, s3, s2
                  andi         t3, s3, -1632
                  and          t5, a4, s8
                  lui          t2, 542218
                  sra          a2, s10, s4
                  slti         s5, a2, -18
471:              sra          s1, t6, s5
                  nop
473:              sltu         s7, s2, s8
                  srai         a7, s4, 24
                  sll          a2, gp, s7
                  bltu         s10, s11, 478f
                  sra          a7, s3, a2
478:              bltu         t1, t5, 485f
                  sll          s6, a4, s10
                  sra          t5, a1, t6
                  auipc        t1, 782801
                  blt          t1, t2, 491f
                  bltu         s9, t2, 498f
                  sra          s0, s6, ra
485:              blt          s11, s1, 488f
                  bge          s7, s11, 489f
                  auipc        t0, 272448
488:              srai         t0, s9, 29
489:              sll          s0, s6, s8
                  blt          a6, tp, 496f
491:              bge          a7, s3, 507f
                  srl          t2, s8, gp
                  add          a1, a4, t6
                  sub          a0, a2, s6
                  addi         a0, gp, -1061
496:              lui          a1, 573547
                  xori         ra, s5, -256
498:              lui          t3, 390436
                  xori         s1, sp, 386
                  nop
                  ori          s3, t4, -1
                  slt          s5, s8, s4
                  or           s10, gp, a5
                  xori         zero, sp, 733
                  andi         s3, a4, 431
                  add          s5, t6, s4
507:              srli         zero, s0, 22
                  bne          s6, ra, 528f
                  slti         a7, t5, 975
                  srai         ra, ra, 16
                  nop
                  bne          a6, s3, 515f
                  nop
                  beq          s4, a1, 532f
515:              bgeu         s0, s7, 532f
                  xori         t0, s11, -1353
                  slli         a4, tp, 20
                  andi         s3, sp, 301
                  bge          t3, a7, 524f
                  sltiu        gp, s8, 1277
                  blt          s2, s10, 528f
                  slti         gp, tp, -1949
                  slli         t1, s11, 13
524:              srl          a2, a5, zero
                  xori         s0, a0, 1710
                  lui          s7, 47352
                  srli         a3, a6, 17
528:              xor          s2, sp, ra
                  sltiu        s3, ra, 468
                  and          s4, t6, t6
                  slli         t0, a1, 25
532:              sra          sp, a3, gp
                  sub          a2, tp, t5
                  sra          s0, a4, t6
                  sltiu        s4, s9, -1450
                  bge          s5, zero, 540f
                  addi         a5, t4, 550
                  lui          t5, 65969
                  nop
540:              add          t3, a6, t3
                  slt          gp, t5, s4
                  srli         s2, s7, 29
                  sltiu        sp, s1, 930
                  or           s2, a4, tp
                  slli         ra, s0, 24
                  sub          s10, s11, a4
                  add          a1, sp, a2
                  slt          gp, s6, a2
                  sltiu        s9, zero, 1191
                  bne          a1, sp, 555f
                  add          a2, t3, s9
                  sub          a2, t6, a6
                  blt          gp, a6, 555f
                  nop
555:              bgeu         t0, s4, 560f
                  ori          gp, s11, 1106
                  andi         s7, a7, -818
                  andi         a0, a7, 203
                  nop
560:              lui          s5, 497820
                  xor          gp, s0, t4
                  sra          s9, t4, s7
                  nop
                  slti         t6, s5, -415
                  auipc        s0, 850136
                  bltu         s11, a5, 580f
                  sra          s3, s2, s0
                  sll          sp, zero, s0
                  auipc        a5, 351230
                  nop
                  nop
                  sra          t0, t5, a6
                  lui          s11, 73250
                  bgeu         s0, s9, 584f
                  xori         t0, ra, -551
                  beq          s9, ra, 584f
                  bltu         t3, s0, 593f
                  nop
                  bltu         a7, s8, 595f
580:              andi         t6, gp, 1310
                  bgeu         t3, zero, 599f
                  or           t0, a6, s9
                  slti         t3, s0, -36
584:              bne          s0, a5, 593f
                  add          a0, s0, s5
                  blt          s2, a3, 589f
                  srl          a3, s7, s0
                  sra          a2, s3, s7
589:              lui          s2, 729008
                  beq          a0, tp, 595f
                  and          s2, a0, s11
                  xori         t5, ra, 1055
593:              lui          s0, 766053
                  srl          s0, s11, sp
595:              sltiu        tp, t1, -742
                  sub          ra, t3, gp
                  blt          a6, t0, 617f
                  sra          t5, sp, s6
599:              bltu         a1, s8, 604f
                  blt          a2, a7, 607f
                  sll          zero, a2, t5
                  slti         a7, tp, -1269
                  ori          s6, a0, 939
604:              slli         a7, a6, 16
                  sub          s1, s8, t6
                  srli         gp, t3, 22
607:              auipc        a5, 379222
                  beq          s8, a0, 617f
                  slli         s6, zero, 23
                  srai         t2, t3, 6
                  auipc        a4, 746408
                  srl          s3, s4, s5
                  srl          t3, s7, t5
                  blt          t0, s10, 616f
                  auipc        a0, 188497
616:              srai         t1, gp, 10
617:              bltu         a0, a6, 631f
                  slt          a5, t0, a6
                  xor          s3, s0, zero
                  xor          a1, zero, sp
                  srl          t0, s0, t6
                  xori         sp, ra, 1596
                  sltiu        t5, s4, 313
                  sub          a5, t3, s8
                  slt          a2, s10, s6
                  and          s2, s7, a4
                  bgeu         s7, a1, 631f
                  bltu         sp, s10, 635f
                  andi         s4, ra, -2041
                  sub          s9, t3, s10
631:              bgeu         t3, s2, 639f
                  xor          gp, gp, a3
                  sra          a2, tp, s10
                  lui          s11, 537294
635:              srai         zero, zero, 29
                  ori          s10, a5, -1010
                  slt          t0, s8, a7
                  addi         t6, s4, -517
639:              srl          s10, s10, t5
                  xor          a3, s6, s0
                  bltu         a5, s4, 644f
                  sub          s4, s3, a0
                  sub          s4, a2, t1
644:              bgeu         a1, t3, 649f
                  auipc        a7, 54646
                  blt          t2, a6, 652f
                  slli         tp, s8, 28
                  bne          t0, s1, 667f
649:              bgeu         a1, a6, 665f
                  addi         s10, zero, -1974
                  lui          ra, 163004
652:              srli         t0, t4, 2
                  sub          tp, t1, a7
                  slti         ra, a1, -1120
                  lui          gp, 795207
                  xor          t6, s3, t4
                  sll          a2, s2, s2
                  xori         sp, s8, -268
                  auipc        t2, 896332
                  srai         s1, s10, 28
                  auipc        s6, 814143
                  slti         s11, ra, -1161
                  xor          s3, t6, sp
                  xori         t3, a5, 1780
665:              ori          a2, t2, 1066
                  addi         t2, s6, 1000
667:              addi         a1, a2, -443
                  slt          s6, t3, ra
                  srl          s3, a5, t3
                  auipc        s7, 483511
                  add          gp, s7, s4
                  srl          a3, s0, s3
                  blt          a2, t2, 690f
                  addi         t2, t2, -727
                  sub          s3, tp, s8
                  or           a7, t0, gp
                  andi         t3, a3, 573
                  sltiu        t6, ra, 1501
                  ori          zero, t1, 2007
                  xori         gp, s4, -116
                  blt          s3, zero, 683f
                  ori          zero, s2, 187
683:              sra          a2, a3, ra
                  sub          t3, s11, a0
                  beq          a1, s3, 690f
                  blt          s1, zero, 690f
                  or           t6, t5, a6
                  sub          s9, s0, a7
                  sub          ra, t1, s1
690:              beq          tp, a7, 693f
                  add          a5, s10, s2
                  sub          a3, ra, s5
693:              srai         a5, a4, 2
                  ori          t5, a4, 1143
                  srl          ra, s8, a5
                  slli         s6, a3, 11
                  nop
                  and          a1, t5, s10
                  bgeu         t5, s5, 709f
                  srli         t2, s5, 6
                  xori         a5, a4, 908
                  slli         s3, s5, 24
                  sra          tp, s10, a2
                  sltiu        ra, s7, 1700
                  slti         s1, s9, -699
                  and          s5, t1, s0
                  bge          t5, t3, 709f
                  sub          a7, t1, s0
709:              bne          ra, ra, 729f
                  nop
                  addi         a5, s4, 629
                  lui          a0, 689889
                  nop
                  andi         s0, s0, -1803
                  or           gp, a0, a6
                  xor          zero, s10, sp
                  bne          t4, ra, 731f
                  srai         s5, zero, 7
                  beq          s9, t5, 723f
                  ori          gp, sp, -532
                  srli         a4, t4, 2
                  slti         s7, t3, 310
723:              xor          s7, tp, s10
                  addi         s1, tp, -4
                  srl          t5, a5, s10
                  sub          s1, s10, t0
                  add          a5, s3, a2
                  nop
729:              auipc        t3, 968117
                  srai         s5, a1, 26
731:              andi         a1, s6, -470
                  blt          s1, s5, 747f
                  sra          a4, s9, gp
                  and          s1, a5, t5
                  xor          t6, s7, s5
                  slli         a0, gp, 28
                  sra          s6, a2, a1
                  srai         s11, a3, 24
                  sra          s7, t3, a5
                  xor          s9, s9, a1
                  bgeu         s3, t2, 757f
                  beq          s5, t6, 746f
                  sltiu        t6, t3, -711
                  xor          t5, sp, t5
                  bne          a3, t4, 752f
                  la           s11, region_1+1862 #start riscv_load_store_rand_instr_stream_4
                  lb           s4, -5(s11)
                  lui          s4, 677933
                  and          t6, t5, gp
                  slli         a5, a7, 18
                  sb           s9, 4(s11)
                  lbu          a1, 7(s11)
                  slt          sp, s1, a1
                  and          t3, ra, s6
                  lb           s4, 11(s11)
                  slli         t2, t6, 21
                  lh           t3, 2(s11)
                  addi         a4, s7, 473
                  lh           s0, 0(s11)
                  sll          t2, s2, t3
                  sltiu        t3, s1, 351
                  lbu          a2, 0(s11)
                  xori         s10, a1, -1074
                  slti         s5, a2, 1103
                  lbu          s3, 10(s11)
                  or           s3, ra, s11
                  nop
                  sltu         s1, s2, ra
                  ori          s1, s6, -995
                  and          t0, a7, a6
                  ori          s1, s5, -1530
                  slt          a0, a5, a5
                  sltu         s2, a7, s2
                  sltiu        t1, t6, 1078
                  slti         t0, s0, 1745
                  slti         t1, s6, -475
                  xori         sp, s9, 1253
                  srli         zero, t0, 2
                  add          s6, s11, t4
                  sltiu        sp, a1, 613
                  sub          s9, s8, t5
                  sb           s8, 2(s11)
                  lbu          zero, -11(s11) #end riscv_load_store_rand_instr_stream_4
746:              sra          t3, s4, a1
747:              andi         t5, a7, 715
                  srli         a2, t3, 4
                  andi         s5, a0, -249
                  srl          s1, s0, t0
                  and          a2, a7, s3
752:              nop
                  lui          a7, 264706
                  and          t0, t3, s7
                  bgeu         a7, s1, 762f
                  xori         a5, a6, 659
757:              sltu         s7, s10, t6
                  sll          t6, a1, t4
                  bgeu         t2, ra, 762f
                  sltu         t5, a3, s6
                  bltu         s6, s1, 765f
762:              auipc        s0, 399098
                  auipc        t6, 1034408
                  bltu         a0, s11, 772f
765:              srai         a2, tp, 18
                  andi         t6, tp, -1339
                  slti         t5, a0, -458
                  slli         t1, a2, 13
                  sll          t5, s0, s3
                  bgeu         s10, s1, 788f
                  srai         s0, s5, 13
772:              srl          t6, tp, a4
                  add          s4, s7, a0
                  bne          s5, s5, 777f
                  beq          s9, s1, 789f
                  xor          zero, s4, t6
777:              srli         tp, a5, 29
                  or           a2, s6, a0
                  sra          a5, a6, s2
                  slt          s9, s5, a6
                  xori         t0, s0, 1817
                  blt          a4, s4, 787f
                  slli         t0, s5, 12
                  sra          a1, s6, s6
                  sltu         t3, s6, tp
                  addi         sp, s5, 749
787:              sll          zero, ra, a7
788:              auipc        a1, 974761
789:              xori         s7, a3, -431
                  addi         s0, a1, -1760
                  sra          zero, s2, t6
                  slt          t0, s3, t2
                  auipc        gp, 58182
                  andi         s6, s6, -261
                  lui          a7, 969208
                  blt          t2, tp, 800f
                  bge          a1, gp, 814f
                  blt          s5, t6, 813f
                  bltu         s6, s10, 802f
800:              bltu         s4, t1, 814f
                  sub          s0, s11, s2
802:              sltu         t6, s6, a6
                  add          s4, gp, s9
                  nop
                  lui          t6, 1014738
                  add          s0, s7, s6
                  nop
                  xor          s4, a6, s11
                  slti         s6, sp, 2028
                  srai         gp, s9, 14
                  auipc        s1, 451126
                  sub          a0, a1, zero
813:              xor          s0, a1, a2
814:              add          s7, s3, t6
                  xori         a5, a3, -1486
                  or           a4, s10, a0
                  sub          a5, ra, gp
                  srai         s9, a6, 26
                  bgeu         s7, tp, 824f
                  srai         a0, t2, 2
                  bltu         s4, s2, 830f
                  beq          s1, t1, 828f
                  srli         t0, a3, 24
824:              beq          zero, s5, 829f
                  add          s2, a1, s11
                  nop
                  xori         a1, s0, -2027
828:              bltu         a7, a2, 848f
829:              slt          s0, sp, a6
830:              slti         tp, t2, 691
                  add          t0, t2, t3
                  sub          t2, ra, sp
                  and          ra, t0, s11
                  bne          zero, s7, 839f
                  beq          s8, a4, 851f
                  addi         tp, s5, 1636
                  srai         t0, t3, 17
                  auipc        a1, 831764
839:              and          a1, a3, ra
                  and          t0, tp, s10
                  bltu         zero, s9, 850f
                  lui          s7, 769373
                  bge          s4, s0, 863f
                  srli         a1, s9, 25
                  sll          s3, s0, s8
                  ori          s6, s4, -1510
                  bltu         t6, s5, 849f
848:              beq          s4, t0, 850f
849:              sub          t2, s9, a7
850:              auipc        a3, 953781
851:              sltiu        s10, a7, 506
                  slli         t1, t2, 13
                  auipc        a2, 549654
                  auipc        s4, 221422
                  ori          s5, t6, 893
                  bgeu         t2, s1, 875f
                  xori         a4, a3, 516
                  auipc        s2, 538680
                  bltu         s5, a1, 869f
                  addi         s3, s1, -60
                  sll          s10, s3, a5
                  or           s0, s10, t3
863:              and          s4, s11, zero
                  lui          ra, 304594
                  sra          a7, s9, t3
                  bge          zero, s11, 868f
                  auipc        s9, 377462
868:              bne          s6, a2, 883f
869:              sra          s2, sp, s10
                  sll          t2, a7, s9
                  auipc        s6, 802299
                  or           tp, t5, a4
                  addi         a2, a7, -588
                  bgeu         s10, s7, 878f
875:              srl          s0, s6, a0
                  sra          a5, gp, s6
                  sra          ra, gp, t3
878:              sub          s0, s2, a1
                  or           s6, a7, s2
                  sltu         s3, s5, zero
                  or           a3, a4, s8
                  blt          a5, s1, 886f
883:              bgeu         s3, a5, 890f
                  bge          s8, s9, 886f
                  and          t3, a0, a1
886:              slt          t5, s1, a0
                  lui          a0, 894443
                  add          t6, s2, t5
                  lui          zero, 147149
890:              nop
                  lui          a5, 55609
                  bltu         s5, s1, 902f
                  lui          zero, 218333
                  and          t3, t2, t2
                  sltu         t5, a7, tp
                  slt          s0, tp, s0
                  add          t6, a5, s10
                  sub          a2, s1, t5
                  bne          a1, s9, 915f
                  nop
                  and          s2, s4, a1
902:              xori         s0, t4, 1330
                  srli         s5, a2, 4
                  sra          s5, s11, t2
                  srl          gp, t4, s2
                  bltu         s2, s1, 909f
                  srai         a5, s8, 9
                  sll          a2, sp, t4
909:              sltiu        t5, t1, -1149
                  blt          s8, a1, 918f
                  sltiu        s11, s5, -165
                  nop
                  sll          t5, zero, s1
                  bne          a6, a6, 921f
915:              andi         t1, a0, 1945
                  blt          s9, gp, 921f
                  bge          s2, ra, 933f
918:              bgeu         a5, t2, 923f
                  bne          s4, a1, 937f
                  slt          s9, s5, s3
921:              sltiu        zero, t2, 2037
                  slt          t3, t4, t3
923:              nop
                  auipc        s7, 882283
                  sltu         t1, gp, zero
                  sub          s4, t0, a0
                  blt          t4, a0, 930f
                  sll          a3, gp, s0
                  or           a3, t5, tp
930:              add          t6, a5, gp
                  bgeu         s11, s9, 945f
                  ori          t6, s8, 919
933:              auipc        t2, 132734
                  auipc        t5, 134862
                  andi         a2, t1, 1578
                  nop
937:              blt          s8, s7, 957f
                  add          a5, a1, ra
                  srli         s3, s10, 15
                  ori          s3, a4, -299
                  auipc        a3, 700219
                  bltu         a2, a5, 947f
                  sltiu        s2, a1, 1681
                  bgeu         t3, a5, 950f
945:              srl          a5, a5, a6
                  srli         s4, t5, 14
947:              sra          t3, s10, tp
                  sub          s11, s7, t5
                  bne          s10, t4, 958f
950:              andi         tp, s5, 1330
                  srai         s11, a4, 26
                  sltu         a2, a0, a4
                  and          t1, t1, a5
                  auipc        s9, 166930
                  beq          t3, t2, 957f
                  bgeu         s10, zero, 973f
957:              bgeu         s5, gp, 961f
958:              bne          t1, s11, 960f
                  sll          t0, t1, a1
960:              slti         tp, s6, 284
961:              bgeu         a4, gp, 981f
                  lui          t1, 311280
                  and          s0, gp, t0
                  sll          sp, tp, s6
                  bgeu         s7, a2, 979f
                  xori         tp, t4, 591
                  srli         ra, s1, 23
                  bne          s2, t4, 973f
                  srli         a7, s3, 8
                  sltu         gp, a5, t5
                  beq          a5, gp, 974f
                  bge          s8, a0, 981f
973:              add          t1, s11, s1
974:              and          t5, sp, sp
                  srli         a4, s11, 24
                  bne          zero, s2, 995f
                  ori          s5, sp, 1262
                  andi         t1, t3, -210
979:              srl          s4, zero, t3
                  ori          gp, s1, -918
981:              xor          a0, s6, a2
                  or           s4, t1, a7
                  blt          a6, a7, 1003f
                  andi         t3, t2, -1566
                  or           a7, s1, a2
                  sll          a3, s4, tp
                  srl          a0, a2, s2
                  slti         a3, s0, 1506
                  beq          t5, s11, 994f
                  or           s4, a4, gp
                  and          t1, t5, a4
                  and          a1, s4, t1
                  sub          s6, s1, s7
994:              lui          zero, 689769
995:              sll          t2, gp, a2
                  xor          s9, s5, s4
                  or           a4, s11, s4
                  xor          a4, gp, ra
                  bgeu         s7, a5, 1015f
                  bgeu         ra, a0, 1002f
                  or           t6, s10, s9
1002:             bgeu         tp, a4, 1009f
1003:             ori          s7, s4, 1755
                  sltiu        t5, zero, -1373
                  sra          t0, a4, s0
                  sra          s2, s0, s7
                  lui          sp, 452847
                  add          sp, a1, a1
1009:             bgeu         t2, s1, 1012f
                  slli         t1, s11, 19
                  xori         s3, a0, -121
1012:             bgeu         a4, a7, 1016f
                  bltu         zero, s6, 1029f
                  sra          s0, s0, gp
1015:             sll          s0, t2, a7
1016:             xor          sp, t1, a7
                  add          ra, s11, zero
                  auipc        a5, 94597
                  slt          s3, a3, t5
                  xori         s10, s2, -1940
                  bgeu         t1, t3, 1026f
                  and          t3, a4, s2
                  bgeu         s0, s2, 1031f
                  andi         s10, a6, -1793
                  beq          gp, s5, 1032f
1026:             bgeu         t0, a3, 1044f
                  slti         a3, s4, -1364
                  sltiu        s3, t0, 257
1029:             sltu         a4, s10, zero
                  sltiu        a4, a4, 1217
1031:             xor          a4, a3, s11
1032:             auipc        a1, 721806
                  andi         tp, t4, -797
                  bgeu         t0, s8, 1039f
                  auipc        a1, 166382
                  blt          t5, s9, 1046f
                  sltu         s10, s11, a1
                  bgeu         t5, s2, 1055f
1039:             xori         s0, t5, -412
                  or           s9, a2, s11
                  blt          tp, s7, 1047f
                  srai         a3, a5, 29
                  add          a5, tp, tp
1044:             srli         t6, s8, 11
                  bge          s0, a0, 1049f
1046:             auipc        s1, 981635
1047:             add          t6, t1, s0
                  addi         a4, a5, 333
1049:             beq          s5, t1, 1051f
                  sltu         s9, s11, t0
1051:             slli         t5, ra, 10
                  srli         ra, s2, 14
                  ori          tp, t4, 1074
                  sltiu        ra, a5, -754
1055:             slli         tp, t5, 18
                  auipc        zero, 533408
                  bne          t4, zero, 1059f
                  srai         a4, t2, 11
1059:             bge          t6, a1, 1068f
                  srl          s3, zero, gp
                  ori          s1, s4, -1420
                  add          t5, t3, s6
                  slt          a1, tp, tp
                  sra          t2, s0, t1
                  and          tp, a6, a5
                  slt          s4, tp, a1
                  ori          sp, t3, 1196
1068:             nop
                  sub          s1, s1, s4
                  slli         a2, t0, 6
                  addi         a2, a6, -685
                  srl          ra, gp, s6
                  xori         s6, s11, -1040
                  sub          a4, a7, t3
                  sub          tp, s9, s10
                  add          t1, a4, t0
                  lui          s4, 544321
                  sltiu        t3, s10, -1932
                  sub          s10, s6, s9
                  ori          tp, ra, -886
                  srli         a0, tp, 23
                  srli         s1, zero, 14
                  bgeu         tp, s10, 1088f
                  slt          s11, a2, a3
                  lui          s5, 746346
                  sltiu        t1, ra, -556
                  sltu         a1, t4, s3
1088:             andi         tp, a2, 486
                  srai         zero, s2, 9
                  sltu         t6, t3, s10
                  andi         s4, s10, -430
                  beq          a4, zero, 1111f
                  addi         a5, s9, -612
                  srai         s1, s0, 27
                  xor          s11, a5, sp
                  add          t3, s3, tp
                  lui          s2, 606261
                  or           t3, t6, a6
                  xori         a1, s10, 1077
                  blt          t1, a7, 1114f
                  bgeu         a0, s7, 1121f
                  sltiu        t6, s6, -1087
                  lui          t2, 1009770
                  nop
                  nop
                  srai         s5, s6, 25
                  lui          t6, 893581
                  sra          t5, zero, t3
                  srl          t1, zero, ra
                  andi         tp, t0, 217
                  la           sp, region_1+579 #start riscv_load_store_rand_instr_stream_19
                  nop
                  sb           t3, -202(sp)
                  xor          a0, a7, t3
                  srl          gp, s8, s3
                  nop
                  sb           s9, -107(sp)
                  auipc        s9, 366463
                  lbu          s4, -250(sp)
                  addi         s6, t3, -1583
                  addi         a5, a4, 854
                  lbu          ra, 165(sp)
                  sh           s1, 59(sp)
                  xori         s11, a7, 1576
                  slti         tp, gp, -1059
                  andi         t5, a5, -1364
                  lui          s3, 814421
                  slli         t6, s11, 18
                  lhu          a4, 147(sp)
                  sltu         t6, a0, zero
                  sb           a6, 98(sp)
                  slli         s7, s9, 5
                  lh           t2, 9(sp)
                  and          s7, s7, t0
                  xor          t5, a6, s2
                  lb           a5, 174(sp)
                  sltiu        t0, s0, 577
                  lbu          s5, 134(sp)
                  slt          t5, s2, t0
                  srai         a2, t3, 19
                  sltu         gp, s1, tp
                  lh           s2, 243(sp)
                  sltiu        s1, s1, 1621
                  andi         gp, s1, -1283
                  auipc        s0, 227267
                  lb           t6, -245(sp)
                  lb           t6, 149(sp)
                  srl          gp, gp, t5
                  lbu          s3, 230(sp)
                  sub          ra, a3, s0
                  slt          zero, s7, a2
                  lw           a5, -239(sp)
                  srl          t3, a0, a1
                  sb           s4, 225(sp)
                  sb           a3, -182(sp)
                  slti         t2, a3, -1415
                  srai         s11, t1, 9
                  sb           a3, 206(sp) #end riscv_load_store_rand_instr_stream_19
1111:             sll          t3, t4, a2
                  and          s2, t3, s9
                  ori          a3, s7, 575
1114:             srl          s1, a6, s11
                  srai         s5, t5, 9
                  bne          zero, a5, 1119f
                  sub          ra, a6, s3
                  xor          s9, s2, a3
1119:             sra          gp, t0, s6
                  srli         s1, t3, 11
1121:             slti         tp, s1, -1901
                  sra          t6, s10, t0
                  slli         t5, zero, 18
                  sub          tp, s4, ra
                  sltiu        t0, s2, -1533
                  ori          a3, s10, 1814
                  bge          t3, ra, 1136f
                  ori          a4, gp, 1650
                  auipc        t2, 693552
                  sltiu        s4, s6, 693
                  xori         a5, a3, 1834
                  srli         s5, s11, 18
                  bge          a6, t3, 1147f
                  sra          t0, s10, zero
                  or           s10, s8, ra
1136:             srai         a7, s9, 5
                  sltiu        s10, s0, 1486
                  srli         tp, t4, 7
                  bgeu         t3, a3, 1154f
                  bne          gp, gp, 1143f
                  xori         s3, gp, -1326
                  beq          s4, t1, 1146f
1143:             srli         s11, sp, 29
                  auipc        a1, 447787
                  slti         s1, s10, 445
1146:             slti         t6, a5, -1170
1147:             bltu         t4, tp, 1154f
                  lui          a2, 432505
                  xori         sp, s9, 358
                  srl          s1, t4, a1
                  bne          s2, a2, 1158f
                  srai         sp, a5, 30
                  bne          tp, a3, 1158f
1154:             auipc        t5, 604882
                  sll          s3, s9, ra
                  xor          s7, a0, t3
                  srl          a0, s4, a0
1158:             bne          s4, s5, 1174f
                  auipc        t5, 876707
                  bgeu         zero, t6, 1162f
                  auipc        gp, 1037733
1162:             blt          t0, t0, 1170f
                  slli         tp, a3, 4
                  nop
                  sll          t3, s2, s6
                  bge          tp, t4, 1168f
                  xor          s6, a6, s11
1168:             ori          t6, a2, -763
                  xor          s2, a1, s6
1170:             nop
                  auipc        t0, 317586
                  sra          s5, s8, a4
                  sra          s2, zero, t1
1174:             slti         gp, s10, 1581
                  addi         s10, s2, -910
                  xori         s5, ra, 672
                  xor          t3, s7, t6
                  lui          t6, 726344
                  bltu         s0, a3, 1184f
                  ori          s4, tp, 676
                  xor          a2, a2, s4
                  sltu         sp, sp, a2
                  beq          s7, t5, 1200f
1184:             slt          s2, t4, s7
                  ori          s7, t4, -1941
                  sra          s0, gp, s1
                  slti         a1, t3, 2047
                  sltu         ra, gp, tp
                  slt          s4, t2, a3
                  bltu         t6, s11, 1194f
                  bltu         s4, s10, 1210f
                  sltiu        a3, s7, -1598
                  add          a5, s5, t1
1194:             xor          s10, t1, ra
                  srl          t2, tp, t4
                  srai         s5, gp, 18
                  sra          a5, a6, a7
                  andi         sp, s2, -1493
                  xor          t2, s8, s11
1200:             lui          a4, 285090
                  srli         a5, a5, 20
                  xor          s5, a0, s1
                  or           t1, s3, a7
                  xor          a0, s7, s0
                  slti         tp, t5, -1348
                  add          ra, t0, gp
                  sltiu        s10, t0, 1000
                  beq          a1, s11, 1213f
                  slli         s6, s7, 19
1210:             sra          s0, t2, a0
                  lui          a4, 8019
                  or           s4, s2, a1
1213:             ori          s1, s10, 1087
                  sltu         a0, a2, a2
                  srli         t0, s7, 9
                  sltu         t3, zero, s10
                  slt          sp, gp, t1
                  auipc        gp, 309657
                  srl          sp, s6, a4
                  sltu         t1, s0, s8
                  ori          s10, s7, 1935
                  and          a2, a3, gp
                  bne          t6, s0, 1232f
                  nop
                  blt          a0, s11, 1228f
                  srli         s2, a3, 7
                  bgeu         s2, s4, 1230f
1228:             srai         t2, t1, 6
                  bltu         a5, s3, 1243f
1230:             ori          s11, zero, 1910
                  slt          a3, a6, s10
1232:             addi         a0, s8, 1491
                  bge          sp, a2, 1239f
                  and          s6, a1, t4
                  addi         s0, t6, 800
                  sll          s4, t1, a5
                  xori         t5, s11, 760
                  sra          s2, s5, t4
                  slti         tp, t4, 1715
                  la           s10, sub_7
                  addi         s10, s10, -4
                  srai         s0, a2, 28
                  slt          s4, t3, s11
                  bgeu         s3, t2, sub_3_j10 #branch to jump instr
                  slti         t3, t1, 1151
                  sub          a1, t2, zero
sub_3_j10:        jalr         sp, s10, 4 #jump sub_3 -> sub_7
                  bgeu         a4, s7, 1240f
                  sltiu        t2, t3, 1229
                  addi         a0, s1, -350
1239:             lui          s11, 530921
1240:             blt          s11, s4, 1256f
                  sra          s2, t6, a2
                  srl          s5, s0, s4
1243:             add          ra, ra, a6
                  blt          t0, a4, 1262f
                  bltu         tp, a0, 1248f
                  lui          s0, 670703
                  slt          a5, a0, t0
1248:             slt          s6, a7, gp
                  sltiu        a2, sp, 1983
                  or           gp, t1, a5
                  sub          t5, s4, s4
                  srl          s0, s6, a7
                  slli         a4, s7, 28
                  slti         a3, s2, 1593
                  srl          t1, a3, t3
1256:             sub          s3, t5, ra
                  beq          ra, s10, 1266f
                  addi         ra, s2, -702
                  xori         a7, gp, -594
                  srli         zero, t1, 22
                  xori         sp, zero, 1094
1262:             and          s7, s4, s8
                  slt          a4, t0, zero
                  sltiu        t3, a4, -2007
                  and          t0, s3, s6
1266:             sll          tp, a4, a5
                  sub          a0, t0, a2
                  nop
                  andi         t3, sp, 168
                  bge          s0, t4, 1280f
                  srli         s6, t4, 2
                  bgeu         a0, a2, 1276f
                  sub          a0, a1, s5
                  srai         s6, s7, 10
                  bge          sp, s11, 1289f
1276:             beq          a3, t2, 1278f
                  blt          t6, zero, 1282f
1278:             sltu         zero, s10, a1
                  xor          s2, ra, s11
1280:             sltiu        a7, s4, -429
                  slt          ra, t4, a3
1282:             srai         gp, a5, 30
                  slli         s11, tp, 20
                  bgeu         s10, a2, 1304f
                  srl          t5, ra, a0
                  beq          t6, s0, 1306f
                  blt          a6, sp, 1302f
                  add          a5, zero, sp
1289:             sub          s4, s1, s2
                  xor          s0, tp, t6
                  bgeu         a6, a4, 1309f
                  blt          a3, gp, 1298f
                  addi         a3, sp, 8
                  slt          s6, gp, sp
                  blt          a6, a6, 1298f
                  addi         a5, s1, 346
                  slt          s7, a5, t0
1298:             sltiu        ra, tp, 304
                  srl          s6, a2, t2
                  and          t3, t3, t2
                  beq          s2, a0, 1304f
1302:             slti         a2, a4, 439
                  beq          a6, t4, 1307f
1304:             ori          a0, s3, -1998
                  srl          s11, a6, s0
1306:             slli         t1, t6, 23
1307:             blt          t3, t0, 1327f
                  nop
1309:             and          t3, s0, s9
                  sra          s4, a6, tp
                  slt          sp, s1, t6
                  srl          tp, s11, t5
                  lui          tp, 537023
                  sub          t3, t4, tp
                  srai         sp, ra, 15
                  xori         s7, a1, -1142
                  andi         s11, sp, 1607
                  xori         s4, t4, -178
                  bltu         tp, t4, 1324f
                  or           tp, t6, a3
                  ori          a0, t4, -1172
                  addi         s7, gp, 1708
                  nop
1324:             srai         a2, a7, 29
                  beq          ra, a1, 1329f
                  addi         s1, t1, 1433
1327:             bgeu         s10, a1, 1343f
                  sltiu        a0, s8, 155
1329:             sub          ra, zero, t3
                  nop
                  add          t5, a5, t5
                  slt          t6, a3, s2
                  slt          s0, sp, t3
                  srl          s9, s3, s9
                  andi         a5, s0, 1303
                  bgeu         a2, zero, 1340f
                  srl          sp, a4, ra
                  beq          t6, a3, 1355f
                  slt          a5, s4, gp
1340:             bltu         s8, a4, 1355f
                  sra          s11, a7, s0
                  bgeu         t4, sp, 1356f
1343:             srai         t2, t6, 22
                  bltu         a1, t6, 1351f
                  slti         t6, s10, 1026
                  nop
                  ori          s1, s5, 2000
                  beq          a3, t6, 1357f
                  lui          a2, 870241
                  slti         sp, s9, -801
1351:             bltu         s3, t1, 1365f
                  xori         s2, s7, 1933
                  srai         tp, tp, 29
                  slt          s6, a0, t5
1355:             add          s6, a4, t1
1356:             sra          t0, t1, tp
1357:             srl          a5, t6, t1
                  sra          a1, s7, t3
                  sll          s1, s4, zero
                  andi         sp, sp, -1016
                  xor          ra, a0, t5
                  add          t3, a2, a1
                  or           a5, s11, s0
                  andi         a4, sp, -935
1365:             sub          a7, a0, tp
                  and          s5, s11, s2
                  xori         sp, ra, -1732
                  or           tp, a7, ra
                  blt          s5, s9, 1372f
                  sltu         a1, t2, a0
                  sub          t5, s8, a4
1372:             nop
                  sll          ra, a3, t3
                  blt          a2, s6, 1376f
                  add          a5, s7, t6
1376:             bltu         s11, tp, 1396f
                  xor          s3, s10, s11
                  bge          s8, s0, 1383f
                  slti         a5, s8, -1741
                  blt          s1, s5, 1388f
                  beq          s5, s1, 1400f
                  srl          s11, a0, s4
1383:             sltu         s3, t4, s1
                  slt          a7, s1, t2
                  srli         zero, s9, 1
                  andi         a4, gp, -107
                  xori         t2, a7, -1692
1388:             bltu         tp, a3, 1398f
                  xor          s10, s9, s4
                  xor          s5, t4, s10
                  slti         t0, s6, 1424
                  auipc        a7, 623549
                  auipc        gp, 413981
                  auipc        t1, 767631
                  sltu         t3, a5, t3
1396:             auipc        sp, 24247
                  nop
1398:             bge          a1, s2, 1403f
                  nop
1400:             slli         a7, a6, 23
                  sra          a0, gp, t4
                  add          zero, s9, s7
1403:             ori          s11, s8, -1189
                  slli         t2, s0, 12
                  ori          ra, a1, 277
                  bgeu         a6, t4, 1415f
                  sll          gp, s10, s4
                  sltu         s9, a6, sp
                  auipc        t6, 920956
                  bgeu         a4, sp, 1412f
                  sltiu        s5, a5, -1233
1412:             and          s10, s11, a5
                  andi         a5, s6, -1931
                  srl          s9, t0, a1
1415:             srai         a2, t2, 0
                  sub          t2, s6, s1
                  or           t1, t0, t6
                  bge          t1, a5, 1425f
                  srai         gp, sp, 31
                  srli         s3, sp, 16
                  xor          a2, s1, a2
                  bne          tp, sp, 1438f
                  or           s5, tp, t3
                  xor          s7, s5, s4
1425:             srai         a2, a0, 2
                  slt          ra, t4, s11
                  slti         s6, a2, 434
                  and          zero, a4, s11
                  xor          s7, a4, t0
                  ori          t1, ra, -1905
                  xor          t5, s3, t1
                  add          gp, s10, a3
                  srli         s0, t6, 31
                  nop
                  beq          t4, t0, 1440f
                  sltiu        s0, a4, 992
                  add          a0, t3, s6
1438:             auipc        t1, 392221
                  sub          t5, s6, s5
1440:             nop
                  lui          gp, 1045111
                  bge          gp, s11, 1444f
                  sra          a4, zero, a5
1444:             slt          s11, s4, s7
                  srli         ra, a7, 8
                  sll          tp, s10, s2
                  xori         ra, a5, -995
                  and          a1, s1, zero
                  andi         t2, s9, 1293
                  ori          s2, s10, -80
                  sltiu        s2, t5, -1064
                  sll          s9, s8, s6
                  or           a5, t2, s1
                  sll          gp, gp, a5
                  add          t1, t3, t3
                  sub          s1, t3, s8
                  bltu         a5, s6, 1461f
                  bne          s1, t3, 1463f
                  srli         zero, sp, 22
                  slt          gp, a3, s0
1461:             and          s7, s5, t2
                  add          s2, t0, gp
1463:             xori         zero, t6, -442
                  sra          t5, s2, s4
                  bge          s7, a0, 1470f
                  or           s6, a5, sp
                  or           s7, a2, s0
                  nop
                  sltu         s5, a4, t2
1470:             andi         s1, a1, 1160
                  sub          s11, zero, ra
                  andi         t5, a3, -1979
                  sra          s11, tp, s1
                  sub          t2, s2, a3
                  bne          t2, sp, 1480f
                  beq          s6, s1, 1496f
                  beq          a0, s11, 1494f
                  bltu         a4, a0, 1488f
                  lui          s9, 893936
1480:             xor          s3, s4, s0
                  and          a0, t0, t3
                  srli         s9, t2, 27
                  auipc        a1, 454245
                  bgeu         s5, ra, 1487f
                  beq          gp, s1, 1489f
                  addi         tp, ra, 517
1487:             xori         t3, t6, -1650
1488:             xori         zero, a2, -1331
1489:             sltiu        s9, t4, 422
                  auipc        s5, 231406
                  andi         s3, a2, -1952
                  xor          s1, s0, s6
                  andi         t3, t0, -333
1494:             xori         a5, s6, -94
                  sltu         s1, s11, s4
1496:             ori          s9, t3, -436
                  add          s3, s8, a4
                  sll          s11, zero, ra
                  sra          a2, gp, a2
                  bltu         s0, a7, 1507f
                  ori          a4, a1, -1024
                  sltu         s11, s2, a2
                  addi         a1, gp, -367
                  auipc        ra, 1005467
                  and          s11, a3, a6
                  lui          s0, 17916
1507:             slt          a4, t0, t3
                  xor          s4, ra, t2
                  blt          s4, s0, 1523f
                  addi         t2, sp, 1679
                  bne          zero, s0, 1516f
                  slti         a2, s4, 141
                  xori         s2, a1, 885
                  beq          tp, s8, 1520f
                  srli         s2, a1, 26
1516:             xori         zero, ra, 1538
                  nop
                  slli         a1, t3, 11
                  sll          a0, a0, tp
1520:             and          a4, a7, t0
                  auipc        s1, 286574
                  xor          s1, t1, a1
1523:             addi         s6, a1, 814
                  srl          a1, a4, s2
                  srai         s11, tp, 30
                  bge          a5, a6, 1528f
                  beq          t4, a1, 1546f
1528:             nop
                  bne          a1, a7, 1531f
                  andi         t5, zero, 1350
1531:             ori          s7, t4, -1964
                  sltiu        ra, s0, 393
                  bne          a7, t0, 1541f
                  slt          a4, t1, t3
                  xori         tp, t6, -1595
                  xori         t0, a7, -341
                  slt          a0, gp, s2
                  xor          ra, s4, t4
                  lui          t6, 227777
                  slli         a5, t2, 20
1541:             bltu         zero, a3, 1556f
                  lui          t6, 989728
                  sra          ra, s11, a6
                  blt          t2, a0, 1560f
                  ori          s6, a3, -1431
1546:             slti         s9, zero, 597
                  srl          t0, s11, s2
                  bltu         s1, a7, 1564f
                  or           s4, ra, s2
                  bne          zero, s2, 1568f
                  beq          s1, a3, 1554f
                  sltiu        a0, ra, -1052
                  sltu         a5, t5, a3
1554:             blt          t4, s9, 1568f
                  sltiu        s4, s4, -1247
1556:             srl          sp, t3, s1
                  slt          s1, t3, a4
                  blt          t4, t2, 1567f
                  sll          s2, s6, s7
1560:             xor          s1, s7, t3
                  auipc        s1, 673459
                  srl          s7, a7, ra
                  ori          s1, s1, -1617
1564:             bgeu         s2, t5, 1573f
                  bge          a6, s8, 1567f
                  bge          s1, s9, 1573f
1567:             beq          s7, a4, 1570f
1568:             auipc        ra, 524276
                  and          t1, a6, t5
1570:             lui          t2, 682899
                  sll          tp, a0, a0
                  sra          t6, a3, zero
1573:             sltu         ra, t3, ra
                  slt          s4, s3, s4
                  sltiu        a7, t4, 1060
                  bltu         a1, t3, 1596f
                  beq          a6, t3, 1581f
                  sltiu        zero, zero, 1234
                  blt          s11, s11, 1594f
                  bltu         a2, a2, 1588f
1581:             slti         sp, a5, -564
                  addi         t0, a7, -345
                  auipc        t3, 254314
                  lui          s7, 151852
                  srli         t5, t4, 16
                  auipc        a1, 745567
                  srl          s7, t6, t1
1588:             bne          a5, t2, 1604f
                  bne          a7, t2, 1591f
                  sltu         s9, zero, a3
1591:             bne          s2, s8, 1608f
                  auipc        gp, 509360
                  sll          a0, s4, a1
1594:             nop
                  auipc        s4, 386055
1596:             add          s0, a6, sp
                  bgeu         s8, a0, 1616f
                  xor          tp, s8, t0
                  bgeu         t0, s3, 1615f
                  bne          a3, t6, 1605f
                  bge          s0, s1, 1610f
                  slli         s2, s3, 12
                  sltiu        s10, a0, -474
1604:             xor          s5, s4, a5
1605:             bne          a3, tp, 1608f
                  lui          tp, 768824
                  srai         gp, t1, 28
1608:             sra          zero, s11, a5
                  slti         s2, t6, -445
1610:             slli         s1, a7, 20
                  and          s10, s7, s9
                  auipc        t5, 464063
                  slt          a0, a3, ra
                  lui          sp, 486183
1615:             xori         gp, s7, -150
1616:             slti         ra, t6, -1030
                  nop
                  or           a5, s2, s8
                  add          s9, s7, s6
                  la           a4, region_1+35 #start riscv_load_store_rand_instr_stream_1
                  lbu          s2, 1606(a4)
                  lui          s9, 891444
                  add          a3, t2, a1
                  lb           s2, 593(a4)
                  slti         s9, t3, -1457
                  lbu          ra, 368(a4)
                  lbu          a2, 830(a4)
                  or           s6, s3, gp
                  sltiu        ra, s2, 704
                  sh           s0, 1851(a4)
                  lb           t2, 809(a4)
                  sw           s10, 1581(a4)
                  sb           t0, 1426(a4)
                  sh           t3, 867(a4)
                  sltu         zero, s6, a7
                  sll          s0, s0, s6
                  lw           a1, 1057(a4)
                  andi         ra, t5, -1671
                  lhu          zero, 27(a4)
                  sltu         tp, a0, a7
                  srli         s6, zero, 16
                  lbu          a3, 125(a4)
                  sub          a0, a6, a5
                  ori          tp, t1, 1232
                  nop
                  and          t2, t4, s7
                  lbu          s5, 660(a4)
                  lb           s1, -2(a4)
                  sb           tp, 1846(a4)
                  ori          s3, s6, -1577
                  lb           t3, 1056(a4)
                  lb           a7, 867(a4)
                  lw           a7, 833(a4) #end riscv_load_store_rand_instr_stream_1
                  sll          t1, tp, s3
                  addi         a4, s9, -1186
                  ori          sp, ra, 1668
                  slt          zero, s9, s5
                  srli         s5, a1, 3
                  xor          a5, s3, t1
                  nop
                  xor          s9, s5, t6
                  bltu         t6, s6, 1631f
                  srl          a0, s8, t5
                  bge          s10, t3, 1644f
1631:             addi         s4, s3, -937
                  andi         a3, a1, 1679
                  sub          s6, s4, t2
                  slli         t3, zero, 28
                  xori         a2, s0, -608
                  bgeu         s5, a1, 1639f
                  sltu         t2, a7, s1
                  nop
1639:             slt          s2, t3, zero
                  nop
                  ori          a3, s9, 54
                  lui          sp, 438447
                  lui          ra, 243496
1644:             or           s11, a7, tp
                  bne          t3, s5, 1651f
                  add          s7, s4, sp
                  sltu         s5, t0, a4
                  xor          s1, sp, s5
                  srli         a5, s11, 14
                  xori         s4, t5, -1683
1651:             and          t2, t5, t0
                  bgeu         sp, t6, 1657f
                  sltu         a3, ra, a6
                  blt          a2, t2, 1664f
                  add          s5, t0, s2
                  sub          s3, zero, zero
1657:             beq          s0, a3, 1675f
                  sltiu        t5, s2, 812
                  srl          a7, ra, s11
                  lui          s10, 457426
                  lui          a0, 435228
                  andi         a7, tp, 1134
                  or           t2, s8, t3
1664:             addi         s11, t6, 644
                  blt          a1, a4, 1670f
                  slli         sp, ra, 27
                  sltiu        a0, t0, 1257
                  lui          s1, 495699
                  lui          t1, 670655
1670:             slt          a5, s8, a3
                  andi         s4, t2, -443
                  bgeu         s0, s0, 1676f
                  xori         s3, a5, -756
                  auipc        t0, 99398
1675:             andi         s0, a1, 1613
1676:             slli         s9, a2, 15
                  or           sp, s8, s3
                  addi         s0, s10, -1760
                  add          a3, s9, a4
                  and          zero, s10, t0
                  andi         s6, t5, -150
                  xor          s4, s8, s5
                  blt          a5, sp, 1690f
                  bltu         s7, a6, 1688f
                  blt          t6, a2, 1705f
                  slt          t1, a5, s7
                  blt          s0, a3, 1689f
1688:             xori         s4, t0, 1882
1689:             lui          ra, 649099
1690:             auipc        a0, 209606
                  srai         t0, s3, 10
                  slti         s0, a3, -1232
                  sll          t1, sp, t2
                  and          s2, s2, a3
                  srai         a5, s0, 27
                  ori          zero, a4, -87
                  andi         s0, t1, -1557
                  blt          gp, s3, 1718f
                  sltu         a7, s1, t2
                  xor          a4, s9, t0
                  slt          tp, s6, a6
                  addi         s3, s2, 1767
                  ori          a5, tp, -1568
                  beq          a0, a3, 1708f
1705:             xor          sp, a2, a2
                  sra          gp, t6, a0
                  auipc        s9, 40603
1708:             blt          a2, s9, 1710f
                  srai         ra, t2, 16
1710:             lui          t1, 925283
                  sra          s1, a4, t2
                  and          a4, s0, s5
                  bge          a5, a4, 1718f
                  srli         s10, s1, 4
                  sll          s6, s3, a4
                  lui          t0, 339210
                  bge          zero, ra, 1724f
1718:             lui          s7, 794635
                  blt          a2, t0, 1733f
                  blt          t5, s8, 1729f
                  sltu         s4, s4, t1
                  addi         s4, ra, 628
                  ori          a0, a2, 284
1724:             slti         zero, s8, -65
                  nop
                  ori          s11, s6, 1054
                  sra          a5, s7, a5
                  addi         s6, s1, 1683
1729:             bge          s1, s3, 1734f
                  slti         t0, t6, 129
                  slt          t5, s11, a3
                  xori         a3, a2, -955
1733:             blt          a0, a4, 1736f
1734:             slt          a1, zero, s2
                  nop
1736:             and          s2, gp, a5
                  addi         sp, a2, -1036
                  sltu         t6, t5, tp
                  lui          a2, 79474
                  bltu         t4, gp, 1743f
                  lui          s3, 352596
                  or           s4, s3, t3
1743:             slti         a5, t4, -1001
                  ori          a4, s0, -1895
                  slti         tp, a7, 1834
                  nop
                  bgeu         sp, s11, 1756f
                  lui          s9, 443007
                  beq          s4, t4, 1756f
                  or           t6, t5, a7
                  sll          a2, a6, s3
                  bltu         a0, t6, 1754f
                  bgeu         a3, s7, 1773f
1754:             xori         a7, s1, -1457
                  lui          zero, 464937
1756:             ori          s1, t0, -39
                  slti         t6, a3, -1272
                  sub          a0, s11, sp
                  sltiu        gp, a3, 620
                  slt          sp, ra, s9
                  sra          a1, s1, t3
                  xor          s0, sp, s3
                  sltiu        s7, a2, 1806
                  blt          t2, a3, 1780f
                  nop
                  xor          t6, t5, t6
                  add          zero, t4, t2
                  sll          a1, s3, a1
                  and          gp, t2, a5
                  addi         t6, t3, 2001
                  sll          t0, s10, s2
                  slli         t6, s0, 12
1773:             slt          t3, a5, a7
                  nop
                  blt          a7, s0, 1795f
                  blt          s10, s9, 1790f
                  sll          zero, s11, t6
                  and          t3, s4, s8
                  nop
1780:             slli         zero, t2, 6
                  slt          a5, s8, s1
                  andi         a5, t1, -687
                  srl          s3, a0, t3
                  bltu         a0, s5, 1789f
                  slt          t2, s2, tp
                  slli         a1, a7, 16
                  bge          s3, t2, 1791f
                  bltu         t3, a6, 1797f
1789:             srai         a7, t6, 18
1790:             srl          s5, t6, ra
1791:             slt          a0, a0, s2
                  nop
                  sll          s9, s2, s1
                  sltiu        t0, t5, -1947
1795:             srl          s11, a1, a2
                  srai         t6, ra, 20
1797:             blt          s10, zero, 1815f
                  slt          t3, a6, s2
                  blt          a7, ra, 1803f
                  addi         s5, a2, -1988
                  sltiu        t2, s8, 1076
                  sub          a0, a0, s6
1803:             sltiu        s1, t6, -1369
                  xor          a0, a3, s8
                  srli         s1, s7, 9
                  andi         s11, a3, -1090
                  lui          t3, 618673
                  sll          s7, t6, s6
                  sub          s10, a5, a4
                  srli         t0, s5, 30
                  srl          s1, s0, zero
                  bge          t3, a3, 1815f
                  bge          tp, t1, 1818f
                  bgeu         a0, s5, 1829f
1815:             andi         s11, t0, 1234
                  sltu         a7, s2, t2
                  bge          s7, s3, 1819f
1818:             srl          t2, a4, s10
1819:             ori          t6, a3, 226
                  nop
                  and          s11, s2, t2
                  sltiu        s11, s2, -531
                  sub          ra, sp, t5
                  and          a4, s11, s2
                  xori         a0, t5, -398
                  xor          t2, s9, t0
                  bltu         t2, s7, 1833f
                  srli         tp, t5, 7
1829:             slt          s3, s6, t4
                  srl          s5, s7, zero
                  srli         a2, ra, 3
                  sll          t1, zero, t0
1833:             sra          s1, a2, ra
                  sra          zero, zero, a7
                  and          s5, a6, s10
                  srl          t2, s11, s8
                  auipc        a3, 299287
                  add          s2, a0, a1
                  nop
                  slli         s6, a0, 13
                  auipc        ra, 359757
                  and          t0, t6, tp
                  blt          t4, s10, 1845f
                  sub          t2, a6, gp
1845:             slli         a3, s9, 0
                  addi         tp, s5, 920
                  and          s1, ra, s1
                  bge          s0, s0, 1864f
                  srl          s1, t3, s3
                  sll          zero, t4, gp
                  sub          tp, s11, t5
                  and          t5, s11, ra
                  addi         zero, s2, -1048
                  srli         s1, s6, 20
                  addi         a1, s0, -715
                  nop
                  blt          t1, t6, 1865f
                  slli         s3, a0, 27
                  sltu         t5, t3, s5
                  bgeu         a6, t2, 1874f
                  slti         t2, a0, -1021
                  lui          a3, 583994
                  nop
1864:             blt          t1, t2, 1871f
1865:             sll          a2, t3, a5
                  srli         s3, t1, 27
                  sltu         s2, s11, s0
                  srli         s5, a6, 21
                  xor          t1, s11, a3
                  andi         t6, s3, -1268
1871:             ori          s2, gp, -996
                  and          t6, s5, tp
                  andi         t5, t1, 805
1874:             addi         a4, zero, 1293
                  srli         s9, s2, 7
                  slli         a0, a2, 30
                  srl          s7, t4, a4
                  srl          gp, a3, s4
                  bltu         s11, t4, 1896f
                  srl          a4, t1, s7
                  bltu         t6, gp, 1886f
                  sub          zero, a3, zero
                  beq          s0, ra, 1893f
                  srai         s9, s8, 30
                  auipc        a3, 818365
1886:             beq          t0, s8, 1905f
                  add          a0, s0, s11
                  auipc        s6, 154837
                  bge          t0, t6, 1893f
                  bgeu         s5, sp, 1895f
                  sltu         t3, t3, ra
                  bgeu         a4, t2, 1894f
1893:             bne          s4, zero, 1902f
1894:             and          gp, s9, tp
1895:             bne          s4, a7, 1913f
1896:             ori          a2, ra, -739
                  slli         gp, t2, 4
                  xori         t6, a7, 738
                  xor          s0, s3, s10
                  bge          s5, gp, 1919f
                  or           s1, a1, zero
1902:             beq          a4, a7, 1911f
                  sltiu        zero, a6, -854
                  bgeu         a6, a6, 1914f
1905:             slli         sp, t6, 5
                  sra          gp, a3, t4
                  xor          a2, gp, s1
                  blt          gp, s6, 1913f
                  bgeu         tp, t2, 1912f
                  nop
1911:             bge          s11, t6, 1915f
1912:             beq          a5, t0, 1928f
1913:             srai         s4, t6, 20
1914:             add          a2, s9, t4
1915:             slti         s2, s8, 1809
                  slli         a4, t3, 24
                  addi         a0, t6, -1985
                  srli         s1, s5, 8
1919:             slt          zero, t3, s11
                  sltiu        t3, gp, 417
                  ori          zero, s8, 1278
                  bgeu         a3, s3, 1939f
                  or           s1, a4, a2
                  andi         s9, ra, 484
                  sltiu        gp, t2, 1926
                  ori          t3, a6, 1068
                  and          sp, t4, s1
1928:             bne          s4, tp, 1932f
                  sltu         t3, t6, s4
                  srai         a1, zero, 17
                  slli         s9, s4, 16
1932:             sll          a0, s2, s1
                  sltu         t2, s0, a1
                  bge          t1, t4, 1948f
                  srai         a3, t6, 12
                  sub          s3, t6, s8
                  sll          s9, a1, s0
                  sltiu        s2, a5, -552
1939:             slt          t1, s1, a2
                  sltu         s4, t2, a6
                  bge          t1, zero, 1945f
                  lui          s0, 666420
                  bne          t4, s5, 1949f
                  add          t0, a0, a4
1945:             sra          a3, s1, s9
                  ori          t0, s0, -1617
                  and          a5, s7, ra
1948:             sltiu        s7, t5, -1649
1949:             sll          s5, s5, s8
                  bgeu         a7, ra, 1952f
                  sub          zero, s1, a0
1952:             srli         ra, a1, 16
                  srai         a2, ra, 23
                  blt          s9, t3, 1959f
                  blt          zero, s6, 1971f
                  slli         s7, tp, 15
                  bgeu         a4, s11, 1972f
                  blt          s6, a4, 1963f
1959:             bne          a5, s10, 1961f
                  addi         s0, a6, 1197
1961:             slti         t5, t0, -1146
                  sll          ra, t1, t6
1963:             srli         s11, t6, 23
                  srai         s1, s1, 22
                  or           zero, a0, ra
                  xor          t3, a1, a4
                  sll          s10, s5, s2
                  beq          a5, t4, 1982f
                  andi         a4, t3, 1051
                  blt          a6, tp, 1990f
1971:             sub          ra, t5, s8
1972:             or           s3, s1, t3
                  lui          s3, 930018
                  sra          s0, s2, t4
                  auipc        a4, 292240
                  sll          t0, s8, a0
                  xor          s6, s2, s10
                  slt          tp, a7, a1
                  nop
                  sltiu        s4, s8, 1458
                  and          s6, a6, a1
1982:             sltiu        s9, s10, -763
                  xori         a5, s2, -690
                  beq          s5, s9, 1991f
                  bltu         zero, s0, 1993f
                  bne          a2, a1, 1989f
                  slli         t3, t1, 1
                  ori          t5, tp, 378
1989:             slti         s2, a2, -153
1990:             or           zero, a1, s6
1991:             lui          s1, 665794
                  or           t3, t6, s5
1993:             ori          t3, t2, 1762
                  slt          t6, s5, a0
                  slt          s9, sp, s9
                  sub          s7, s3, a2
                  nop
                  blt          zero, a6, 2018f
                  lui          s7, 1064
                  ori          ra, s3, 877
                  xori         t3, t6, 1714
                  sra          a0, a6, s2
                  bltu         a2, s6, 2010f
                  xori         sp, s5, 1458
                  nop
                  nop
                  ori          a5, a3, 640
                  bgeu         s7, a2, 2011f
                  and          a3, t3, t3
2010:             bge          sp, t1, 2016f
2011:             slti         s9, a1, -1588
                  slti         t3, t0, 611
                  ori          s0, gp, -57
                  add          a2, tp, t2
                  bltu         s10, a6, 2022f
2016:             andi         a0, s3, 1848
                  add          a3, a1, zero
2018:             slt          s3, a2, a5
                  blt          a3, a3, 2023f
                  sltiu        s2, s6, 1934
                  bltu         t4, zero, 2026f
2022:             sub          a1, s2, t2
2023:             srli         t6, s7, 29
                  xori         s1, a4, -1078
                  auipc        gp, 820973
2026:             srli         t5, s3, 2
                  sltiu        t5, t1, 379
                  blt          s5, a1, 2031f
                  beq          s11, t5, 2046f
                  sub          t0, t6, a3
2031:             xori         sp, t1, -399
                  slti         a5, a1, -1857
                  slt          t6, s3, a3
                  add          s10, s6, a6
                  auipc        s0, 331208
                  auipc        t2, 28507
                  srli         a0, s1, 27
                  bge          s10, a6, 2047f
                  sra          t6, gp, s8
                  beq          s1, t4, 2042f
                  sll          s0, s11, ra
2042:             lui          a4, 830930
                  sll          sp, a5, t1
                  lui          a2, 35015
                  xori         s11, s8, -367
2046:             sra          s6, a5, s4
2047:             andi         s9, t6, 704
                  bltu         s1, a4, 2068f
                  addi         zero, a6, 848
                  xori         s0, s4, -1571
                  srli         a0, t4, 17
                  add          t0, a6, a0
                  srli         zero, ra, 24
                  slti         s1, a0, 149
                  xori         a0, t4, 435
                  blt          a6, s3, 2060f
                  bne          s8, t5, 2060f
                  sub          a0, s8, sp
                  or           s1, s5, t2
2060:             srai         t0, t3, 20
                  bgeu         s3, gp, 2069f
                  sltiu        s7, s4, -940
                  nop
                  bltu         s8, t2, 2073f
                  sra          tp, a2, s9
                  sltu         s4, t5, t4
                  srai         s2, a2, 1
2068:             lui          zero, 296377
2069:             sll          a3, tp, a5
                  sra          s10, s7, t5
                  or           ra, s8, t5
                  auipc        s3, 304225
2073:             sltiu        a4, a1, -15
                  srai         s10, a4, 1
                  andi         t5, s3, -200
                  srai         s5, a0, 5
                  and          a4, s6, t0
                  blt          a7, ra, 2097f
                  sll          s11, t0, a3
                  and          a7, tp, s4
                  sltiu        a3, s5, -674
                  slt          gp, s0, s5
                  srai         s10, a2, 13
                  srl          s10, s3, sp
                  lui          s0, 373129
                  xor          s4, a0, sp
                  slt          s10, s2, s7
                  xor          ra, sp, a7
                  or           sp, a7, s2
                  slti         a1, a0, -127
                  bne          t2, t0, 2107f
                  slti         t6, t1, 155
                  srli         s3, s0, 21
                  beq          s2, gp, 2098f
                  addi         s0, s2, -396
                  beq          t0, t4, 2103f
2097:             add          zero, s9, s0
2098:             slli         t2, gp, 21
                  auipc        tp, 840219
                  blt          s1, t4, 2105f
                  sltiu        a4, t3, 574
                  srli         t2, a5, 2
2103:             bge          s10, a6, 2118f
                  slt          t1, zero, a1
2105:             andi         s9, t2, 981
                  srli         s6, tp, 30
2107:             srl          t2, ra, zero
                  sltiu        s2, t1, -863
                  sltiu        s9, t2, 524
                  bne          s9, s5, 2115f
                  or           t1, a2, sp
                  sll          s9, t6, s9
                  la           s9, region_1+80 #start riscv_load_store_rand_instr_stream_2
                  srl          a1, t6, a4
                  lb           t5, 15(s9)
                  lh           a1, -8(s9)
                  auipc        a5, 503001
                  sb           s10, 15(s9)
                  srl          s1, s7, a0
                  lbu          s11, -16(s9)
                  sltiu        zero, s10, 538
                  add          t2, t0, t4
                  sw           s4, 12(s9)
                  slti         a2, s3, -113
                  lbu          t5, 15(s9)
                  srli         a7, ra, 28
                  lbu          a7, 9(s9)
                  sb           s9, -1(s9)
                  sltiu        s3, s4, -717
                  sub          s10, zero, t1
                  sub          s10, t2, sp
                  sub          s5, sp, s3
                  sb           s4, 11(s9)
                  lbu          a0, 9(s9) #end riscv_load_store_rand_instr_stream_2
                  slli         sp, s6, 11
                  nop
2115:             and          t5, s5, a7
                  slli         s1, a4, 10
                  slti         ra, t1, -1650
2118:             lui          s0, 431802
                  sltiu        t6, a6, 1602
                  xori         s4, gp, -1419
                  auipc        a1, 177160
                  bltu         t1, t4, 2127f
                  nop
                  sll          t6, s7, s0
                  auipc        a3, 659922
                  srli         zero, a3, 8
2127:             bgeu         tp, s0, 2147f
                  andi         s5, a4, -497
                  blt          a6, tp, 2132f
                  xor          a1, a5, t3
                  andi         t1, s6, 112
2132:             srli         tp, s2, 1
                  sub          a5, a2, t2
                  sll          a0, s3, t2
                  beq          s3, zero, 2149f
                  slt          a5, a1, t0
                  or           s11, s5, ra
                  srli         t5, a5, 7
                  ori          s6, sp, -85
                  sll          tp, s0, s9
                  and          sp, a4, tp
                  bge          s0, t5, 2144f
                  andi         a4, s0, 1932
2144:             sltu         s4, s4, a3
                  lui          s1, 378803
                  srai         a4, s11, 17
2147:             bge          t0, a5, 2149f
                  ori          t2, a0, -1904
2149:             beq          s6, s2, 2159f
                  bltu         s7, s9, 2168f
                  sltu         a7, a3, s11
                  srai         s6, ra, 13
                  bne          s9, s7, 2167f
                  slti         a7, a1, 407
                  slti         t1, ra, -686
                  sub          s4, t0, t4
                  sltiu        s11, a4, -856
                  sra          s1, gp, zero
2159:             sll          t3, t4, a5
                  sltu         t1, s3, s5
                  addi         s4, t0, 960
                  slli         a0, tp, 20
                  slti         s3, t1, -1758
                  bne          s11, s9, 2180f
                  xor          a2, t2, t0
                  nop
2167:             lui          t5, 304890
2168:             and          t5, s5, t5
                  addi         s0, a4, -1889
                  bne          s8, ra, 2173f
                  auipc        s3, 673026
                  ori          t0, gp, -1062
2173:             addi         zero, zero, -535
                  xor          t5, s1, s10
                  and          gp, gp, t1
                  slti         s4, a3, -1707
                  nop
                  sltiu        s10, s5, -1860
                  nop
2180:             bgeu         s1, s10, 2188f
                  blt          s6, s5, 2185f
                  andi         a2, s8, -1576
                  bge          s5, a3, 2203f
                  beq          a1, t6, 2198f
2185:             slli         s7, a1, 22
                  bne          s9, s9, 2192f
                  srl          a1, s5, gp
2188:             auipc        a7, 522417
                  lui          a0, 79617
                  nop
                  add          a3, t1, ra
2192:             bne          s2, s2, 2211f
                  bge          a1, t6, 2195f
                  srli         a1, s0, 24
2195:             or           s1, a6, a3
                  ori          sp, sp, -547
                  sll          t0, s3, a3
2198:             slti         a0, a2, -2009
                  sltu         s1, gp, s5
                  lui          sp, 615085
                  and          s3, a4, s10
                  lui          a3, 854939
2203:             andi         a2, tp, -864
                  nop
                  srai         a5, t5, 20
                  nop
                  beq          tp, s6, 2211f
                  slli         s11, s8, 30
                  srai         a2, gp, 21
                  slli         t1, t2, 27
2211:             srl          a1, t3, a5
                  bltu         t4, t3, 2217f
                  nop
                  sltiu        a7, t5, 718
                  beq          s2, s1, 2232f
                  srai         s0, t4, 21
2217:             sra          s11, t4, t3
                  sltu         a1, t6, tp
                  xor          a4, t4, s5
                  bltu         s11, t4, 2240f
                  bltu         s8, s6, 2224f
                  bge          tp, s5, 2227f
                  auipc        sp, 622075
2224:             slti         t1, s6, -798
                  bne          a1, t4, 2230f
                  or           s11, tp, s11
2227:             bge          s10, tp, 2245f
                  ori          tp, sp, 1293
                  andi         a7, zero, -694
2230:             slt          s7, ra, t0
                  slli         s0, s8, 16
2232:             sub          s2, a4, t2
                  blt          s0, s1, 2248f
                  auipc        t2, 489251
                  sub          a1, s9, a4
                  xori         a1, a0, 1553
                  andi         t6, a1, -198
                  srl          s4, t1, s11
                  srli         gp, a3, 22
2240:             slli         s4, a4, 20
                  or           s6, s3, sp
                  bltu         zero, s4, 2249f
                  bne          a3, a7, 2248f
                  bne          gp, t0, 2246f
2245:             bltu         s6, s8, 2255f
2246:             sltiu        s4, t5, 427
                  beq          a0, sp, 2263f
2248:             bgeu         a4, s10, 2257f
2249:             nop
                  addi         t3, ra, 430
                  sltu         t5, sp, s8
                  srl          a1, s0, a5
                  addi         a5, tp, 1892
                  ori          t5, s0, 1761
2255:             sub          s9, t2, a5
                  sub          s7, a1, sp
2257:             sltu         s9, tp, t5
                  slti         s9, t1, 1804
                  and          ra, a3, s10
                  lui          t2, 86305
                  sltiu        s2, a0, 1451
                  andi         a4, zero, 588
2263:             bge          a5, a0, 2270f
                  ori          a3, gp, -1063
                  slli         s2, t1, 26
                  and          t1, a4, gp
                  andi         s4, s9, -411
                  slti         t6, ra, 185
                  srl          t0, s7, s1
2270:             or           s6, sp, s9
                  sll          a0, s2, s9
                  bltu         zero, s0, 2274f
                  sltiu        t1, a7, -1714
2274:             ori          s6, s0, 1288
                  lui          a4, 1026274
                  xori         s4, s8, 1376
                  addi         t1, t1, 683
                  xori         s1, s8, 1141
                  sll          a0, t1, ra
                  slli         s4, a1, 30
                  auipc        s0, 737485
                  sltiu        a1, s5, 200
                  sll          t5, s6, s8
                  xor          s11, tp, a3
                  bgeu         tp, s8, 2294f
                  andi         t2, a4, -1370
                  sub          sp, s4, s9
                  bgeu         s0, s4, 2304f
                  slli         s5, a3, 9
                  sub          ra, a3, a4
                  andi         s5, t0, -585
                  slli         s9, gp, 29
                  auipc        a7, 693745
2294:             bge          a1, s8, 2308f
                  or           t1, t3, a1
                  bne          s7, a3, 2300f
                  srli         s5, s6, 28
                  sltiu        s10, s0, -1163
                  srl          s2, s0, s0
2300:             sll          s9, s7, a2
                  beq          a4, t0, 2304f
                  blt          s1, t2, 2317f
                  lui          a7, 710360
2304:             xori         a5, a2, 1009
                  andi         a1, s5, 377
                  sltu         t3, s7, a3
                  blt          a5, zero, 2316f
2308:             sub          t5, s8, ra
                  sra          s11, t2, a6
                  auipc        s10, 914559
                  sltiu        t2, sp, -1621
                  bltu         a4, gp, 2330f
                  srl          t0, s7, s8
                  slt          a2, t3, a4
                  sra          gp, a6, t3
2316:             sub          s7, a1, a0
2317:             add          s10, a1, a1
                  sub          s3, zero, s2
                  blt          a7, s8, 2339f
                  lui          sp, 536899
                  blt          ra, ra, 2327f
                  sub          t0, a6, zero
                  xori         a7, a2, 52
                  bge          a4, t2, 2331f
                  sltu         s0, t2, s11
                  nop
2327:             srai         a2, a3, 9
                  or           a1, gp, a2
                  srl          t1, s0, t2
2330:             bge          t4, s11, 2335f
2331:             auipc        t1, 338807
                  slli         s9, a7, 4
                  add          t1, a3, s1
                  srl          s9, a6, t3
2335:             add          a3, s4, sp
                  slli         ra, a1, 20
                  ori          s3, s2, -923
                  xori         ra, a1, 1663
2339:             bltu         a7, t4, 2348f
                  nop
                  slti         a0, a2, -1814
                  sub          a4, tp, s11
                  sll          s3, s1, a5
                  or           a5, a3, t3
                  slt          s9, s0, a4
                  xori         s4, s3, -168
                  xor          a0, a5, a6
2348:             slli         t3, s8, 6
                  xor          t3, s6, s6
                  and          gp, s0, a7
                  ori          s3, a3, 412
                  ori          s1, a2, -840
                  and          s11, sp, s9
                  and          s6, s10, t4
                  bltu         a5, s11, 2362f
                  srai         a1, s0, 23
                  nop
                  or           a2, sp, a0
                  slli         s9, s1, 26
                  or           t5, zero, t3
                  or           sp, s5, s8
2362:             andi         s7, ra, 776
                  and          gp, t3, t5
                  lui          a2, 276839
                  and          sp, s10, s1
                  beq          t5, s10, 2383f
                  sll          s2, sp, a4
                  xori         t5, t1, 2047
                  or           s2, tp, gp
                  bgeu         sp, s11, 2375f
                  auipc        a7, 640141
                  xor          a5, s10, t5
                  slti         s6, tp, 182
                  beq          a2, s4, 2378f
2375:             and          t2, t0, t5
                  and          a4, s6, a0
                  slli         t1, s7, 27
2378:             sll          s2, t1, ra
                  lui          a7, 970286
                  slt          s3, s5, gp
                  srai         a7, t6, 16
                  srli         a7, tp, 8
2383:             bgeu         s6, t0, 2399f
                  and          s10, s3, a0
                  srli         s10, t6, 8
                  or           a3, gp, s6
                  sub          a4, tp, s3
                  bne          t2, a5, 2408f
                  addi         t5, t3, 1100
                  lui          a0, 389216
                  auipc        s11, 264483
                  bgeu         t0, t6, 2394f
                  srai         a4, s8, 27
2394:             xori         a5, a5, 856
                  bltu         s7, zero, 2411f
                  sub          s6, a0, s6
                  slti         s7, s6, 1195
                  slt          a7, zero, s6
2399:             ori          a5, s4, -1088
                  slt          a0, t6, a4
                  bne          a3, a7, 2403f
                  slli         zero, gp, 16
2403:             bgeu         ra, s8, 2406f
                  bgeu         a6, s0, 2408f
                  beq          a5, t0, 2407f
2406:             add          a5, s0, a7
2407:             bne          s7, t3, 2421f
2408:             srl          s2, tp, t4
                  srai         s2, ra, 5
                  blt          t1, gp, 2414f
2411:             blt          s0, a5, 2430f
                  or           s1, s11, t1
                  bgeu         s0, s8, 2418f
2414:             sll          s4, s3, t1
                  ori          s3, t0, 1397
                  slt          t5, a1, a1
                  andi         s2, a6, 971
2418:             srai         a0, a2, 13
                  add          ra, a2, t5
                  sub          s2, gp, a4
2421:             slt          s1, s11, a7
                  xori         s11, t6, -1784
                  auipc        s4, 291469
                  nop
                  nop
                  andi         a0, a5, 256
                  beq          t1, a3, 2430f
                  auipc        gp, 386829
                  sltiu        zero, s8, 1782
2430:             sra          tp, gp, a3
                  sll          s9, t3, a1
                  sra          tp, s2, a3
                  add          s2, s11, s9
                  xori         sp, a3, 1203
                  srl          t5, gp, a5
                  xori         s4, t6, -1301
                  beq          s0, a6, 2440f
                  beq          a0, t1, 2448f
                  blt          a4, t4, 2447f
2440:             lui          ra, 824509
                  auipc        gp, 653268
                  auipc        a2, 7899
                  srai         s2, a5, 22
                  slti         a2, zero, -1040
                  bne          s10, ra, 2450f
                  auipc        t3, 866749
2447:             sra          a4, s8, t0
2448:             or           a1, s1, a3
                  slt          s0, s10, s8
2450:             bne          s6, t1, 2464f
                  xor          s0, s7, t3
                  nop
                  slt          a3, s8, s0
                  bltu         sp, s6, 2474f
                  slt          s2, t0, tp
                  and          s5, a0, a4
                  or           sp, s1, zero
                  beq          s2, t5, 2474f
                  and          s3, ra, s0
                  sub          s2, s1, t6
                  add          a4, a7, s9
                  slt          zero, s4, s6
                  xor          s3, s8, zero
2464:             addi         t0, a7, -1371
                  srl          a2, s9, t3
                  lui          s9, 561041
                  srli         a5, t1, 26
                  bgeu         a0, s3, 2474f
                  srai         t6, a4, 5
                  srl          t5, a0, a3
                  sub          t0, t5, a0
                  sltiu        s7, a5, -1226
                  slt          s4, s7, sp
2474:             xor          s2, tp, t6
                  slt          s9, gp, t2
                  andi         t0, s9, -713
                  sra          gp, t3, t0
                  bne          a4, s0, 2481f
                  sltu         t2, gp, s3
                  bltu         a3, s1, 2494f
2481:             xori         t5, s2, -1139
                  xor          s6, gp, s8
                  sll          tp, s0, s9
                  slti         ra, t5, -910
                  bgeu         t1, s0, 2487f
                  slli         s1, s1, 5
2487:             nop
                  or           a0, zero, a5
                  bltu         s0, a1, 2509f
                  auipc        gp, 558274
                  addi         s10, t3, -1709
                  xor          zero, sp, a3
                  srli         s4, zero, 0
2494:             srai         s7, s6, 10
                  lui          tp, 148493
                  bge          zero, a1, 2499f
                  sltiu        t2, s1, -1551
                  add          s5, a4, s9
2499:             addi         t6, a0, -1859
                  srl          t0, t6, t5
                  nop
                  or           a2, s3, a3
                  nop
                  xor          s9, a4, a7
                  sub          t6, s7, gp
                  nop
                  bge          t0, t0, 2514f
                  addi         s2, s5, 1883
2509:             xori         s11, t0, 1938
                  srli         s4, s9, 30
                  bltu         s5, s3, 2516f
                  sltiu        s1, s2, 1408
                  and          tp, t6, s9
2514:             bge          a2, t3, 2524f
                  slti         a5, a1, 1001
2516:             srli         s7, s11, 27
                  or           a1, zero, s4
                  slti         zero, sp, 1145
                  lui          a7, 600085
                  addi         s11, a5, -309
                  blt          t1, s8, 2535f
                  bge          s11, sp, 2527f
                  xori         t6, s8, -54
2524:             bltu         t2, s3, 2529f
                  blt          a1, s9, 2527f
                  or           gp, s2, a2
2527:             srl          t6, s4, a0
                  bge          tp, zero, 2536f
2529:             sll          a1, tp, a5
                  bge          s6, a3, 2534f
                  sra          a7, a7, a2
                  bge          a4, tp, 2539f
                  sra          a3, zero, s11
2534:             and          t1, s3, ra
2535:             slt          a3, a7, s7
2536:             ori          t5, s6, -1458
                  beq          a1, s8, 2553f
                  bltu         a1, s8, 2557f
2539:             xori         ra, s6, 187
                  bne          t2, s9, 2545f
                  sll          s6, a1, t0
                  andi         a1, s0, 1494
                  srl          s2, s11, t6
                  bgeu         s1, s0, 2561f
2545:             andi         s2, a3, -648
                  bltu         t6, s7, 2550f
                  slti         tp, s11, -1890
                  sltu         t6, zero, s0
                  sltu         s9, s3, s5
2550:             auipc        a4, 597391
                  srl          s5, s10, a7
                  and          t5, t5, t1
2553:             andi         s6, t5, 815
                  sub          a0, t4, tp
                  nop
                  xor          a0, t6, a3
2557:             slli         a3, a1, 30
                  xor          tp, a7, a4
                  xor          s5, sp, a4
                  auipc        gp, 1008730
2561:             and          s11, t4, a7
                  auipc        a7, 797538
                  bge          s0, t1, 2581f
                  lui          a3, 859849
                  xor          a3, a5, s4
                  srai         sp, s4, 27
                  nop
                  xor          zero, s1, s5
                  srai         a2, a1, 27
                  sra          t2, sp, s7
                  sub          s1, s10, s2
                  beq          t2, t6, 2581f
                  xor          a5, tp, a1
                  srli         gp, s3, 12
                  sra          tp, a5, s6
                  slt          s1, s11, t0
                  bge          s6, a1, 2592f
                  auipc        gp, 603282
                  bge          s10, sp, 2583f
                  add          sp, a6, s2
2581:             sltu         t2, s0, s11
                  bne          t6, zero, 2584f
2583:             xori         s5, a3, -1313
2584:             sub          sp, a5, a4
                  andi         s1, s8, 1842
                  sltiu        s1, s6, 1248
                  srl          a7, a7, s1
                  beq          t2, a1, 2591f
                  add          t6, t3, a7
                  nop
2591:             slt          s5, t5, t6
2592:             sltiu        s6, s6, 390
                  la           t1, region_1+204 #start riscv_load_store_rand_instr_stream_3
                  lb           s7, 6(t1)
                  lbu          s0, 15(t1)
                  lb           ra, 56(t1)
                  sb           a7, -25(t1)
                  sltu         t6, t4, s9
                  srli         tp, s4, 14
                  addi         s2, ra, 1211
                  lb           t3, -63(t1)
                  add          a3, t6, a4
                  lbu          a7, 64(t1)
                  lui          s0, 690969
                  sh           t0, 8(t1)
                  and          s10, a3, s2
                  sh           s11, -2(t1)
                  sub          t3, t5, tp
                  auipc        s5, 667953
                  and          a1, s7, t1
                  lbu          ra, 19(t1)
                  sb           s7, 7(t1)
                  sh           a7, -62(t1)
                  sll          s2, t4, t5
                  lh           gp, -20(t1)
                  lhu          a3, -34(t1)
                  lb           sp, 37(t1)
                  nop
                  sh           s7, 26(t1) #end riscv_load_store_rand_instr_stream_3
                  lui          a4, 690526
                  sra          zero, s5, s5
                  slli         s7, s7, 6
                  bge          a3, s8, 2605f
                  nop
                  bltu         a3, s3, 2600f
                  blt          s3, a7, 2603f
2600:             ori          s0, s1, 741
                  ori          t6, s3, 1663
                  bge          a7, a0, 2621f
2603:             sub          a7, a2, zero
                  nop
2605:             and          t3, t4, a0
                  xori         a4, a6, 59
                  sub          zero, a2, gp
                  xori         a0, s6, 1418
                  ori          t1, tp, 1860
                  blt          t2, a5, 2626f
                  sll          a3, sp, t0
                  slt          ra, a2, t3
                  srl          tp, t5, t1
                  srai         s4, ra, 10
                  sub          s2, ra, t3
                  xor          t5, t2, a3
                  bne          zero, t6, 2624f
                  bne          s5, a0, 2623f
                  and          t3, s6, t1
                  or           t6, a0, zero
2621:             sub          a7, t0, a7
                  srli         t2, zero, 23
2623:             srl          s6, s1, a1
2624:             addi         s1, s2, -514
                  sltiu        s6, s9, 1829
2626:             xori         zero, s2, -1358
                  and          sp, s11, s2
                  slti         t1, s1, -1435
                  bne          s1, s2, 2631f
                  srl          t3, s7, zero
2631:             srai         t0, gp, 2
                  ori          ra, t1, 1114
                  sltiu        a7, t3, 602
                  bgeu         a3, s9, 2650f
                  srli         s2, s6, 24
                  lui          t2, 504834
                  bltu         t6, sp, 2657f
                  addi         s6, t1, 1234
                  sub          a7, s11, s3
                  ori          s9, sp, 556
                  sltiu        s7, zero, -1446
                  blt          a6, t3, 2651f
                  srli         t3, t1, 5
                  sub          s3, a0, t5
                  bgeu         s7, s10, 2654f
                  bge          a0, a0, 2660f
                  xor          sp, s9, a6
                  xor          a4, t3, s4
                  xori         t1, s8, 1897
2650:             addi         t1, ra, 1365
2651:             sub          a1, a0, t3
                  srli         s1, a7, 7
                  srl          s5, s1, a2
2654:             bgeu         s10, a6, 2658f
                  andi         s0, a7, 1571
                  andi         s10, ra, 1178
2657:             andi         s1, s10, -1550
2658:             nop
                  andi         a2, sp, 767
2660:             lui          zero, 757988
                  bge          s2, a4, 2669f
                  andi         s9, s9, -869
                  sub          s9, s2, sp
                  bne          a5, a7, 2678f
                  or           ra, a4, a7
                  slli         t6, t1, 30
                  bge          a3, ra, 2685f
                  srl          zero, s5, tp
2669:             srai         s1, s9, 21
                  bne          s3, a0, 2680f
                  blt          zero, t0, 2688f
                  nop
                  bne          t2, tp, 2678f
                  lui          s6, 287587
                  andi         s10, a7, 1158
                  sll          s1, t3, t5
                  sltu         s6, s1, s1
2678:             auipc        a1, 611492
                  sub          s10, t0, sp
2680:             slt          s10, a2, a0
                  xori         t3, s6, 1473
                  sra          tp, s2, tp
                  sltu         t1, zero, s4
                  slli         s1, a4, 18
2685:             auipc        t3, 283469
                  bltu         s5, gp, 2689f
                  and          s1, a1, sp
2688:             bne          t4, s6, 2691f
2689:             blt          a7, s9, 2704f
                  beq          a5, t2, 2692f
2691:             srai         a0, gp, 9
2692:             addi         s1, t0, -2034
                  sra          sp, a6, t6
                  slli         s5, a3, 24
                  srai         gp, t6, 3
                  bne          s3, t4, 2703f
                  and          s6, t0, zero
                  sll          t6, t5, s5
                  sll          s3, zero, s9
                  slli         s3, t5, 30
                  bgeu         s0, s8, 2705f
                  slt          a1, s10, tp
2703:             srli         gp, t4, 1
2704:             sub          a4, sp, sp
2705:             srl          t2, s0, a1
                  slli         s7, s9, 30
                  addi         s7, t4, 689
                  andi         sp, s8, -1822
                  sub          sp, a7, a4
                  sltiu        a4, t0, -571
                  addi         sp, s5, -521
                  bge          tp, gp, 2717f
                  srl          a3, s5, t5
                  and          t5, t5, a4
                  lui          a1, 787516
                  xori         a5, s7, -843
2717:             slt          t1, s9, t1
                  bne          s3, s1, 2721f
                  slt          t2, t4, t4
                  srl          a3, s1, s3
2721:             bltu         sp, t3, 2741f
                  addi         s3, s0, 1883
                  add          a3, t0, t3
                  sub          a3, a3, s0
                  blt          t3, s6, 2731f
                  bne          ra, s11, 2731f
                  add          s9, s9, gp
                  xori         s7, s0, 732
                  auipc        tp, 665259
                  andi         a1, s5, -872
2731:             add          gp, t6, t4
                  xor          t1, t0, a3
                  sll          t5, gp, s6
                  andi         s7, s11, 1945
                  or           s9, sp, s3
                  auipc        t3, 1042483
                  slti         sp, t3, 400
                  andi         a7, a7, -879
                  beq          gp, a6, 2753f
                  sub          a5, t2, t6
2741:             srai         s7, a0, 18
                  sltu         t5, s5, s3
                  auipc        a2, 454896
                  blt          gp, s7, 2750f
                  andi         t1, s3, -1658
                  srai         a7, a1, 1
                  ori          s2, t6, 514
                  bltu         a7, t1, 2752f
                  or           s5, s9, a0
2750:             nop
                  srai         a5, a7, 23
2752:             xor          sp, t2, t3
2753:             slti         tp, s1, -1389
                  bne          t1, s0, 2761f
                  and          a0, zero, a6
                  srli         a2, a1, 24
                  or           s7, s6, s0
                  xor          tp, s7, s4
                  bne          gp, a1, 2778f
                  bgeu         zero, s0, 2764f
2761:             bgeu         s8, t0, 2764f
                  srl          s9, a2, gp
                  srli         s0, sp, 17
2764:             and          t6, t1, s8
                  or           a2, a5, a2
                  bgeu         sp, a3, 2773f
                  sltu         zero, a4, a3
                  lui          t5, 342391
                  or           s9, a7, a7
                  add          t6, ra, t2
                  or           s10, s0, s0
                  xor          t3, a5, t1
2773:             beq          a1, t2, 2778f
                  srai         s6, t4, 2
                  bltu         s9, ra, 2780f
                  slti         s4, t0, -841
                  or           zero, a1, t4
2778:             sltu         s0, s0, t1
                  bgeu         a7, s0, 2784f
2780:             slt          a4, s10, a0
                  and          s10, s9, ra
                  beq          s2, a2, 2791f
                  bne          s5, t6, 2792f
2784:             srai         a5, sp, 9
                  beq          ra, a2, 2793f
                  beq          ra, t3, 2789f
                  or           a2, a2, a2
                  sltu         s4, t5, t3
2789:             srli         gp, s4, 9
                  slli         a2, a6, 31
2791:             bgeu         s11, a1, 2806f
2792:             sltu         t6, s6, s3
2793:             srai         a0, a3, 21
                  andi         s1, s5, -1036
                  sra          a0, s8, t1
                  sltu         t5, t0, t2
                  srli         zero, s10, 9
                  xor          s9, a3, a6
                  xor          a1, s9, s3
                  bgeu         a1, s7, 2802f
                  srai         t2, sp, 17
2802:             slli         t0, s2, 31
                  auipc        t0, 527144
                  sltu         sp, s10, s11
                  beq          t6, t1, 2823f
2806:             srli         t6, s7, 26
                  slli         t0, s10, 15
                  bgeu         t6, t3, 2811f
                  or           t5, t5, s8
                  bne          s10, a7, 2830f
2811:             andi         s3, a0, -412
                  blt          s0, a4, 2814f
                  xori         a2, s11, -1048
2814:             addi         s4, s2, -195
                  lui          s4, 314355
                  auipc        s6, 247446
                  sra          a7, t5, s10
                  andi         t3, s10, 84
                  bge          a5, ra, 2823f
                  bgeu         t0, s10, 2836f
                  or           t2, s5, a4
                  bge          gp, t4, 2832f
2823:             bne          s4, a5, 2843f
                  slti         s11, a5, -1678
                  slt          t6, ra, s8
                  bne          s1, s3, 2840f
                  sub          s1, s8, s0
                  bltu         t1, a3, 2844f
                  and          s1, t5, gp
2830:             slli         s6, a4, 2
                  sra          a2, t3, s10
2832:             nop
                  and          s1, a1, t2
                  slli         t5, s9, 22
                  and          a0, s3, ra
                  la           sp, region_1+1617 #start riscv_load_store_rand_instr_stream_0
                  auipc        a1, 346980
                  lhu          t3, -1461(sp)
                  srli         a5, a0, 13
                  lbu          s5, -1411(sp)
                  sb           s6, -1340(sp)
                  sh           t4, -213(sp)
                  srli         ra, zero, 23
                  lbu          a3, 12(sp)
                  xori         t3, a4, 168
                  srl          a0, s8, a4
                  addi         t5, a1, 804
                  sb           tp, 44(sp)
                  lw           s6, 267(sp)
                  lbu          gp, -72(sp)
                  nop
                  sb           s9, -870(sp)
                  lhu          t5, -817(sp)
                  auipc        gp, 981325
                  sltiu        t1, a0, 455
                  lb           t5, -838(sp)
                  sltiu        t6, t1, 2006
                  sll          tp, t0, a2
                  and          s10, a6, t2
                  lhu          zero, -559(sp)
                  xor          t1, a3, s9
                  lb           zero, -1598(sp)
                  lhu          s5, 145(sp)
                  sh           s2, -1457(sp)
                  add          s10, s2, s0
                  lw           a5, -1005(sp)
                  srai         s0, s11, 14
                  lhu          a2, -845(sp)
                  lb           t0, -983(sp)
                  sb           ra, -1154(sp)
                  lbu          a3, -398(sp)
                  xor          tp, zero, s4
                  auipc        s4, 407248
                  sb           s6, -85(sp)
                  lhu          s5, -1343(sp)
                  slti         t3, a4, 1253
                  slli         t6, a1, 9
                  lui          t3, 1003281
                  sub          s11, tp, t6
                  lb           s9, -1144(sp)
                  lbu          gp, -74(sp)
                  lb           a2, -91(sp)
                  auipc        s4, 780670
                  srai         t5, s5, 3
                  sb           t3, 205(sp)
                  slt          a2, s0, s7
                  or           a1, s3, s8
                  lb           s4, -369(sp)
                  lbu          ra, -629(sp)
                  sh           a4, -1105(sp)
                  lbu          s11, -1359(sp) #end riscv_load_store_rand_instr_stream_0
2836:             and          zero, t6, t6
                  bgeu         t4, t0, 2839f
                  slti         tp, zero, 1381
2839:             slli         a2, a0, 29
2840:             blt          s3, s2, 2857f
                  beq          zero, tp, 2846f
                  nop
2843:             sll          a1, t1, t1
2844:             beq          s11, s7, 2851f
                  addi         s5, a1, 2047
2846:             xor          a4, sp, s10
                  srl          t6, zero, s1
                  slt          a1, s0, s7
                  nop
                  bltu         t2, s7, 2864f
2851:             and          a1, s10, t6
                  add          t1, s11, t3
                  slli         tp, s8, 6
                  srai         s11, a1, 6
                  auipc        s2, 764988
                  srl          a1, s4, a0
2857:             blt          t0, t1, 2876f
                  beq          a7, tp, 2872f
                  srl          s5, t6, s11
                  lui          s6, 663263
                  bne          t1, t2, 2863f
                  andi         t5, a6, 1290
2863:             bne          t4, ra, 2869f
2864:             bne          s11, a1, 2874f
                  sub          ra, t1, t1
                  sub          a3, a6, s11
                  sll          a3, s10, s7
                  sll          a2, a7, t0
2869:             addi         a2, a1, 1477
                  srai         t2, s0, 20
                  sra          s7, a5, t3
2872:             sltiu        a5, t0, -1931
                  bgeu         t5, t1, 2875f
2874:             bne          s11, s2, 2878f
2875:             slti         s11, s10, -1500
2876:             xor          s11, s0, s4
                  srl          s3, s3, zero
2878:             slt          a2, t1, s3
                  auipc        a1, 1038583
                  addi         gp, t2, -1485
                  xor          tp, zero, s5
                  bne          t1, t1, 2900f
                  blt          s6, s9, 2887f
                  bne          t4, t4, 2886f
                  sra          s4, s4, gp
2886:             sltu         s11, s11, t2
2887:             sll          s0, s4, t0
                  slt          s4, a3, a3
                  ori          a2, tp, -545
                  xori         s7, zero, -704
                  sltiu        t5, a5, 1024
                  and          t2, s8, s7
                  addi         s11, s4, 572
                  slli         s4, a5, 20
                  bne          a4, s1, 2904f
                  xori         s3, gp, -2023
                  ori          s11, t2, -28
                  slt          s5, s11, a4
                  and          s11, t2, a4
2900:             andi         tp, tp, 135
                  and          a1, s10, tp
                  sub          t2, s0, tp
                  beq          sp, s11, 2910f
2904:             sltu         s10, t6, s11
                  add          t2, t0, t5
                  srai         ra, s1, 9
                  bltu         a6, tp, 2923f
                  srli         s4, a2, 27
                  sltiu        s7, t6, -1073
2910:             srai         s4, a1, 4
                  srai         a3, a1, 2
                  xor          a4, s5, t1
                  or           zero, s7, a0
                  slli         a0, t4, 20
                  sltu         gp, s11, a0
                  xori         s2, a3, -957
                  sltu         s1, s11, s1
                  srli         s3, s1, 9
                  lui          a7, 949284
                  add          t0, s1, s2
                  andi         t0, a3, -326
                  blt          s9, s5, 2925f
2923:             sltiu        a0, t4, -546
                  xor          t3, a3, a3
2925:             lui          s3, 2096
                  sub          a4, a1, a3
                  auipc        gp, 45772
                  slli         s5, a2, 6
                  andi         s6, ra, 16
                  xori         tp, t3, -1523
                  beq          a0, a7, 2940f
                  sll          t0, a1, a5
                  sub          t1, s10, s8
                  slli         a0, a0, 14
                  sub          s4, s11, zero
                  auipc        a3, 865771
                  slli         t2, a2, 26
                  slti         s3, t5, -732
                  beq          s3, a1, 2942f
2940:             bge          s10, t6, 2943f
                  bltu         t4, s8, 2945f
2942:             sub          zero, a2, a1
2943:             sub          zero, a6, s0
                  nop
2945:             bne          s1, s1, 2953f
                  beq          s9, a0, 2961f
                  andi         s1, s3, 163
                  slli         s7, t0, 2
                  sra          s11, sp, s10
                  sll          s4, s11, t5
                  bltu         a7, a2, 2971f
                  bge          t2, sp, 2957f
2953:             bgeu         t4, t4, 2958f
                  addi         ra, t5, -331
                  ori          a1, s9, -55
                  srl          s1, gp, s11
2957:             bge          s0, a3, 2962f
2958:             bgeu         tp, a4, 2963f
                  sra          ra, s9, a7
                  sll          s1, gp, s1
2961:             nop
2962:             lui          t2, 258370
2963:             bne          t3, t2, 2980f
                  auipc        s0, 131185
                  slti         a5, s11, 962
                  auipc        tp, 699296
                  or           s0, s8, a1
                  xor          t6, s2, a4
                  sltiu        s3, gp, -1428
                  addi         s10, sp, 1092
2971:             xor          s5, t1, t6
                  srli         s2, a3, 17
                  beq          s0, s2, 2989f
                  sll          s1, t6, s3
                  bne          a4, gp, 2995f
                  xor          t1, t1, s3
                  andi         s2, t5, 946
                  slti         t1, s9, 727
                  srai         t0, s10, 14
2980:             blt          ra, a0, 2997f
                  addi         s10, sp, 730
                  bgeu         s2, s1, 2988f
                  sltiu        a1, t0, -1094
                  srl          s3, s11, t3
                  sll          s5, s0, a0
                  sra          a2, s5, a2
                  sll          zero, t5, ra
2988:             sll          t2, ra, s7
2989:             bne          ra, zero, 2992f
                  slti         s4, zero, -460
                  andi         s10, a4, 274
2992:             bge          t0, s6, 2999f
                  addi         t5, s6, 150
                  slt          s0, s2, t4
2995:             sltiu        t5, s1, -1097
                  or           s6, a1, a0
2997:             blt          s6, s0, 3015f
                  xori         zero, t6, -690
2999:             srli         a2, a2, 30
                  lui          s4, 387590
                  sub          a4, sp, t1
                  beq          t0, a0, 3006f
                  nop
                  add          t1, s11, a7
                  nop
3006:             ori          sp, tp, 354
                  andi         t5, s1, 1628
                  or           t5, s8, t0
                  lui          a1, 313397
                  addi         t2, a0, 339
                  beq          sp, ra, 3013f
                  addi         s9, a4, -312
3013:             auipc        ra, 360008
                  slt          sp, s8, t0
3015:             auipc        a0, 684040
                  blt          s9, s8, 3036f
                  sll          t6, s5, a4
                  ori          t1, s3, 1925
                  ori          s9, t1, 1784
                  blt          t0, t3, 3025f
                  ori          s5, a7, -560
                  sltu         s11, a7, s10
                  sltiu        gp, t5, -1479
                  sltu         t1, a5, tp
3025:             andi         a1, s3, 699
                  bge          s0, s0, 3046f
                  srli         a3, a0, 28
                  and          t6, s1, s0
                  auipc        a7, 40914
                  slti         a7, a6, 881
                  bne          s1, a6, 3033f
                  sra          gp, a0, s2
3033:             blt          tp, s7, 3049f
                  add          t5, t4, t5
                  slli         s7, ra, 22
3036:             sra          s1, a1, s7
                  slt          a3, ra, zero
                  or           s6, t6, tp
                  sra          a3, gp, s5
                  bge          t2, s7, 3048f
                  srl          t5, s5, a7
                  beq          s1, t5, 3047f
                  bgeu         t2, a1, 3046f
                  bltu         a1, zero, 3058f
                  xor          a5, s3, t0
3046:             slt          t2, sp, s5
3047:             addi         t6, s6, -725
3048:             bne          t1, tp, 3057f
3049:             nop
                  slti         s9, zero, -1820
                  nop
                  srai         s10, s11, 4
                  bgeu         a4, t1, 3069f
                  beq          t4, ra, 3056f
                  slti         gp, s10, -1064
3056:             addi         tp, s8, -500
3057:             slli         a5, s11, 19
3058:             srl          s4, gp, s8
                  bltu         s3, s1, 3064f
                  bne          s4, s10, 3069f
                  slli         t1, s5, 26
                  slti         s3, s11, 488
                  andi         t2, t3, 300
3064:             slli         t2, a2, 26
                  bge          s4, a5, 3075f
                  add          tp, s7, s4
                  lui          s6, 609780
                  ori          s6, t4, -2005
3069:             sra          s2, a1, s1
                  and          a5, a0, s0
                  add          sp, t5, t6
                  srli         ra, s2, 20
                  slli         s7, s7, 3
                  slt          a4, s0, tp
3075:             sll          gp, t3, a3
                  add          tp, gp, s5
                  nop
                  and          a4, t5, a7
                  bgeu         gp, t1, 3098f
                  slt          s9, t0, a1
                  lui          s10, 790119
                  srli         s4, s2, 3
                  sltu         zero, sp, ra
                  srai         zero, a2, 24
                  bgeu         a0, t0, 3090f
                  bne          s1, s8, 3101f
                  lui          s6, 654208
                  srai         s2, a5, 9
                  xori         t1, t6, 1748
3090:             blt          zero, t2, 3093f
                  add          a2, s7, s11
                  bge          a3, a7, 3106f
3093:             srl          a4, s1, sp
                  sltiu        a3, s9, -1125
                  bne          s0, t0, 3099f
                  lui          t5, 496093
                  xori         t1, s8, 1917
3098:             srai         s3, a3, 28
3099:             sub          s6, s10, s10
                  sltiu        t5, a2, 905
3101:             srai         s0, s9, 26
                  sltiu        tp, a5, -1345
                  sra          gp, a6, a6
                  slli         s4, t1, 8
                  sra          a3, a3, s2
3106:             slti         s7, t3, 21
                  sll          s2, t4, t0
                  slt          a4, a7, a5
                  sltiu        s7, s6, -1148
                  blt          t2, a7, 3117f
                  nop
                  beq          t0, a7, 3116f
                  or           a3, t6, s0
                  bne          a7, t3, 3118f
                  addi         a2, a3, -98
3116:             sll          a1, s0, s8
3117:             slt          tp, s4, t1
3118:             or           s0, ra, s10
                  bne          ra, gp, 3122f
                  bgeu         s1, gp, 3128f
                  srli         s6, a6, 12
3122:             add          s7, a4, s9
                  sltu         t6, s5, s8
                  add          t6, s0, s10
                  lui          s3, 921549
                  bge          t4, s10, 3143f
                  addi         a5, s5, 1579
3128:             andi         s1, s9, -75
                  slti         t6, s5, 1962
                  ori          t6, a3, 588
                  ori          a4, t6, -1493
                  andi         t1, s7, 200
                  srai         t5, gp, 2
                  beq          s10, t5, 3138f
                  beq          tp, a6, 3142f
                  sra          a1, s10, a0
                  beq          ra, a6, 3146f
3138:             bltu         s4, t5, 3153f
                  auipc        a1, 749102
                  add          s6, s3, s8
                  auipc        s10, 902153
3142:             sltiu        t6, s4, -500
3143:             blt          t3, t0, 3150f
                  xor          t2, sp, t6
                  slli         a1, ra, 14
3146:             bne          tp, s6, 3160f
                  auipc        t6, 226347
                  blt          t1, s3, 3153f
                  sll          s10, a4, t4
3150:             lui          s4, 69880
                  bgeu         a4, s5, 3171f
                  srai         a0, s2, 28
3153:             xor          s10, s10, s9
                  or           t2, sp, t2
                  slt          a1, s8, t2
                  bgeu         t6, t3, 3159f
                  srai         t6, a4, 27
                  bltu         t2, a1, 3172f
3159:             slt          s2, s7, sp
3160:             lui          a4, 897633
                  ori          s5, s0, -2033
                  srli         t0, s0, 10
                  bltu         t5, t2, 3167f
                  srli         s5, t1, 6
                  bltu         s3, a1, 3170f
                  nop
3167:             slti         t0, t2, -1305
                  bgeu         t2, ra, 3170f
                  srai         s10, ra, 19
3170:             bgeu         s0, s11, 3176f
3171:             srai         s10, a3, 30
3172:             slli         a3, s5, 31
                  sltiu        s11, a3, -1857
                  xor          t0, a2, a2
                  xor          a4, s10, t4
3176:             lui          a5, 726628
                  srai         s6, tp, 16
                  blt          a5, s4, 3180f
                  ori          t5, s6, 962
3180:             srl          t2, t3, s4
                  lui          t5, 270054
                  xori         zero, t6, 1378
                  sll          sp, a5, a3
                  add          a1, gp, s1
                  auipc        a0, 897766
                  andi         a2, s4, 387
                  bltu         s5, s2, 3207f
                  srl          gp, a1, a5
                  ori          a4, a7, 265
                  auipc        t1, 597664
                  blt          a7, ra, 3193f
                  bltu         t4, s4, 3202f
3193:             xori         s7, gp, -249
                  blt          a7, s7, 3212f
                  sll          a3, a1, t0
                  andi         t2, t1, 805
                  lui          ra, 54591
                  slt          s3, a1, s6
                  auipc        tp, 529321
                  sll          t6, t6, s9
                  xor          a5, a2, t0
3202:             and          s0, s7, s11
                  sll          a1, sp, s4
                  sra          s4, ra, s8
                  sub          a3, gp, gp
                  andi         t6, a4, -1000
3207:             auipc        t6, 342602
                  srai         a7, s4, 15
                  sub          s7, s7, a1
                  sltiu        a3, a2, -1999
                  bgeu         a0, t2, 3214f
3212:             sll          gp, t3, a5
                  bne          zero, a5, 3218f
3214:             xor          a5, s1, a6
                  lui          a1, 345169
                  nop
                  slt          a0, t5, s10
3218:             sll          gp, s8, a7
                  sltu         a5, t6, s9
                  add          tp, s10, s5
                  sra          a4, s5, s4
                  bne          t3, t3, 3231f
                  and          a7, a7, s6
                  bge          tp, a5, 3240f
                  auipc        t2, 427000
                  lui          s4, 275924
                  sub          a5, t2, a3
                  srli         t6, ra, 16
                  sll          t1, sp, a1
                  slt          a5, a7, s4
3231:             and          a2, a3, s5
                  bltu         s1, t0, 3251f
                  slti         s2, s9, -533
                  and          a5, s2, s7
                  slti         s10, t1, -1012
                  blt          a1, a3, 3252f
                  addi         a3, a6, 1197
                  sll          s1, s1, s4
                  ori          s1, t5, 966
3240:             auipc        s2, 318645
                  sltu         s7, s10, ra
                  sll          a7, t2, gp
                  bltu         t2, a2, 3248f
                  ori          s6, ra, -651
                  blt          a2, a3, 3248f
                  bne          s9, t0, 3260f
                  sub          s7, s1, s3
3248:             slt          a0, s9, gp
                  addi         ra, a7, 1730
                  sub          sp, a2, a2
3251:             auipc        s5, 22110
3252:             blt          gp, s5, 3255f
                  or           a0, t1, a6
                  bge          t6, t6, 3258f
3255:             or           s3, ra, t0
                  nop
                  sltu         tp, tp, s1
3258:             addi         t0, s8, -996
                  bge          tp, sp, 3261f
3260:             beq          sp, s2, 3280f
3261:             add          s6, t2, s5
                  bge          a5, s9, 3276f
                  xori         s9, a7, -1126
                  andi         a3, a3, 1645
                  beq          tp, s0, 3269f
                  add          s2, ra, s9
                  lui          t3, 324771
                  xori         a5, a4, 244
3269:             blt          s1, s10, 3287f
                  sltiu        s0, a6, 1421
                  slt          a4, a0, t6
                  xor          s7, s3, s2
                  andi         s0, s10, -1860
                  beq          t0, s2, 3291f
                  ori          ra, s6, 144
3276:             bltu         s11, t0, 3285f
                  srl          a2, s3, a3
                  lui          a4, 805453
                  bltu         gp, sp, 3284f
3280:             bne          sp, s10, 3296f
                  sltu         t5, t4, ra
                  slli         a1, tp, 14
                  sra          t0, t5, t4
3284:             xor          t3, s4, s4
3285:             add          s11, gp, a0
                  lui          t0, 644666
3287:             ori          s0, t1, 642
                  blt          s7, t0, 3295f
                  xor          t6, s10, s1
                  srli         t3, s5, 23
3291:             and          s10, s5, a0
                  auipc        s11, 381162
                  bge          a4, s10, 3298f
                  srai         s4, a7, 19
3295:             auipc        s3, 312064
3296:             lui          s2, 875301
                  blt          a2, ra, 3306f
3298:             nop
                  blt          a4, a4, 3302f
                  xor          t2, t1, a0
                  auipc        a4, 193135
3302:             blt          a6, s10, 3309f
                  and          s2, s1, t6
                  andi         t5, s7, -1500
                  sra          t1, s3, s1
3306:             bne          s10, a2, 3308f
                  auipc        t6, 545807
3308:             bge          s5, s0, 3323f
3309:             xor          s10, s9, a7
                  bge          s3, s3, 3329f
                  or           s11, t3, s3
                  bltu         a1, t6, 3320f
                  and          a2, t2, a1
                  and          s10, s7, s4
                  addi         s4, s7, -1298
                  srli         t2, a2, 18
                  beq          t0, t2, 3327f
                  bne          a6, s7, 3320f
                  sra          tp, s4, s11
3320:             xor          s10, t6, s2
                  addi         a2, a5, -235
                  slt          s0, t4, t5
3323:             beq          s0, t0, 3343f
                  sra          s2, gp, a1
                  and          t3, zero, s0
                  auipc        a7, 910868
3327:             slt          t5, a2, s7
                  sltu         t6, s3, a7
3329:             xori         gp, t1, -1013
                  andi         t3, s6, -646
                  slti         s9, zero, -744
                  sub          gp, t0, s9
                  bltu         s4, s3, 3337f
                  ori          zero, a4, 1226
                  nop
                  addi         s6, a5, -1900
3337:             blt          s8, a5, 3342f
                  slli         a2, a3, 16
                  lui          s5, 155959
                  sra          t0, s11, t3
                  sub          s6, gp, a7
3342:             lui          a2, 972789
3343:             auipc        s0, 246518
                  beq          t4, t0, 3349f
                  sltu         t0, s3, t5
                  xor          ra, s7, s11
                  ori          s4, s9, -1478
                  bltu         a7, s1, 3364f
3349:             slli         ra, s2, 15
                  nop
                  slt          s10, t1, gp
                  ori          s4, t2, -729
                  sra          ra, a4, ra
                  sltiu        s7, s5, -82
                  srai         t1, s4, 11
                  lui          gp, 129582
                  srli         ra, s5, 19
                  lui          ra, 688036
                  srl          t5, s4, s7
                  auipc        sp, 368781
                  sub          s5, t3, s3
                  slli         t3, s2, 18
                  ori          s1, a3, 627
3364:             lui          s1, 387007
                  bge          ra, s3, 3371f
                  or           s5, a1, ra
                  auipc        s10, 390561
                  auipc        s5, 47428
                  andi         s0, s3, 1226
                  srai         ra, a3, 29
3371:             sll          a2, t5, a6
                  add          t2, s2, t5
                  andi         t1, s11, 1312
                  srli         a1, a7, 27
                  addi         s2, a5, -355
                  auipc        t6, 174830
                  lui          gp, 842887
                  bgeu         s2, s1, 3393f
                  slt          s3, a3, s6
                  auipc        a7, 371737
                  bne          t4, t0, 3386f
                  sra          s10, a3, s3
                  bgeu         a5, s1, 3392f
                  bltu         zero, a7, 3398f
                  srai         a3, s6, 21
3386:             add          a3, s9, s4
                  srl          s11, t6, a0
                  sll          t6, a4, s1
                  sub          s5, a5, s2
                  srl          s3, t3, s6
                  srai         zero, s0, 21
3392:             srl          ra, s3, s5
3393:             bge          a6, t4, 3402f
                  lui          gp, 943394
                  bne          a1, ra, 3414f
                  srai         a5, tp, 14
                  add          a7, s7, sp
3398:             sra          s3, s6, gp
                  blt          tp, s1, 3417f
                  srl          tp, a2, a5
                  andi         a1, t2, 464
3402:             bltu         s2, s2, 3404f
                  andi         zero, a3, 2026
3404:             andi         ra, a1, -1346
                  and          t6, a3, s8
                  bge          a7, s4, 3410f
                  bge          zero, ra, 3424f
                  lui          a5, 354867
                  bltu         ra, a5, 3413f
3410:             sltiu        t3, s0, -1883
                  sltiu        s4, t3, 1484
                  nop
3413:             slli         tp, s5, 23
3414:             bltu         a5, a2, 3416f
                  andi         s6, s1, 877
3416:             slt          s2, sp, t6
3417:             and          zero, s11, sp
                  xori         ra, s0, -1449
                  sub          s2, s4, a2
                  nop
                  slli         a2, ra, 6
                  add          s6, s0, tp
                  auipc        t2, 708642
3424:             slt          a0, t5, ra
                  slti         sp, gp, 911
                  bgeu         s11, s0, 3446f
                  xor          tp, s3, a1
                  add          t1, s5, s3
                  srai         a2, s1, 7
                  andi         s6, t4, -329
                  add          s5, tp, a5
                  srli         t0, zero, 28
                  blt          s11, a4, 3443f
                  xor          sp, a3, t1
                  bne          a3, t3, 3439f
                  sltu         t3, t5, s7
                  sltu         a4, s5, gp
                  lui          s5, 639240
3439:             sltu         s5, t2, s4
                  srli         s1, t4, 5
                  addi         s6, s3, 530
                  bge          t3, t5, 3445f
3443:             bltu         s2, s6, 3448f
                  sltu         sp, a0, s8
3445:             or           s9, a6, a4
3446:             sltiu        a4, s8, -1536
                  slt          a2, a4, s7
3448:             srl          t6, t1, s1
                  and          a2, s6, s5
                  sltu         s7, t5, t1
                  srli         s3, t3, 21
                  bltu         t0, a4, 3468f
                  andi         ra, a1, -16
                  or           s10, s10, t5
                  sll          t3, s2, s0
                  andi         s3, a2, 1306
                  bltu         sp, a3, 3462f
                  srl          tp, s11, ra
                  xor          a3, s4, s10
                  blt          s6, s8, 3463f
                  andi         s11, s10, 1720
3462:             ori          s4, tp, 1011
3463:             slt          s7, zero, t3
                  beq          t3, s6, 3480f
                  nop
                  sll          a2, s5, a3
                  andi         t3, t4, -1896
3468:             nop
                  xor          a1, s3, s9
                  and          t2, gp, t1
                  addi         zero, s5, -993
                  sll          t2, s1, t3
                  lui          ra, 394260
                  sra          sp, s1, tp
                  addi         s10, a5, 1612
                  nop
                  lui          a1, 744835
                  slli         zero, t3, 15
                  sll          sp, s11, s6
3480:             bge          t3, s6, 3487f
                  bltu         t4, s8, 3495f
                  nop
                  srai         s2, s4, 21
                  xor          s2, a4, s10
                  bltu         s5, s7, 3491f
                  sltiu        s7, a5, 1971
3487:             srli         s11, s3, 24
                  add          ra, s1, s10
                  xor          s11, s6, zero
                  ori          t6, sp, -83
3491:             blt          s1, t4, 3498f
                  slti         s6, s1, -243
                  srl          s5, gp, s9
                  bge          zero, s9, 3499f
3495:             sltu         a5, s6, s6
                  slt          a4, t4, a7
                  srai         s3, sp, 28
3498:             sltiu        s7, a3, 1788
3499:             add          t6, a2, a2
                  lui          ra, 942263
                  sltiu        s4, s0, -1945
                  and          t6, t5, s5
                  or           t3, s10, t6
                  bltu         a2, s6, 3507f
                  sra          t3, s6, a6
                  srl          s9, s9, a6
3507:             ori          s0, s3, -317
                  sltiu        a3, a2, -1087
                  xor          s10, t4, a3
                  add          t1, t0, t3
                  sltu         s4, t5, t6
                  sub          s11, a2, a1
                  and          s6, s9, s4
                  or           s5, t4, a2
                  xori         s11, s4, 940
                  add          s9, s4, a1
                  sub          s1, t2, gp
                  and          s0, t3, s0
                  sltu         s1, zero, t3
                  bltu         s6, a4, 3528f
                  sub          s7, s1, a6
                  slt          a4, a7, a6
                  slt          s11, s5, t5
                  or           a7, s5, t3
                  la           t3, region_1+1337 #start riscv_load_store_rand_instr_stream_24
                  lbu          s6, 530(t3)
                  sh           t1, -1147(t3)
                  srai         a1, s3, 11
                  lb           s5, -743(t3)
                  add          t0, s9, s7
                  lbu          a1, 452(t3)
                  sh           t3, 523(t3)
                  ori          zero, a5, 1377
                  lb           s4, -1026(t3)
                  xori         s6, s0, -675
                  sb           s9, -1182(t3)
                  sh           a0, 169(t3)
                  lbu          s7, -1231(t3)
                  lbu          s3, -1288(t3)
                  sll          a5, t0, s8
                  lh           tp, 15(t3)
                  lbu          a7, 288(t3)
                  lh           t2, 641(t3)
                  lb           t1, -1188(t3)
                  lbu          a1, 137(t3)
                  sh           s3, -23(t3)
                  nop
                  auipc        s9, 375838
                  lb           a5, 218(t3)
                  sb           s2, 139(t3)
                  sb           a3, -1249(t3)
                  sb           t6, -287(t3)
                  lbu          t2, 414(t3)
                  nop
                  xor          a4, s9, a2
                  auipc        s0, 575066
                  sltiu        s10, t6, 1546
                  slt          a4, s11, a2
                  sltiu        a2, s6, 946
                  lbu          s6, -502(t3) #end riscv_load_store_rand_instr_stream_24
                  lui          a7, 633654
                  andi         sp, s1, 1757
                  slli         a3, t4, 22
3528:             addi         sp, s0, 1292
                  blt          t3, a1, 3531f
                  and          s7, s3, t2
3531:             slti         s2, s2, 1712
                  bltu         t1, gp, 3552f
                  srai         a5, s0, 15
                  ori          a7, zero, 684
                  addi         s11, a4, -1433
                  beq          t6, t2, 3539f
                  bge          s2, s7, 3557f
                  xor          t1, s9, zero
3539:             srli         ra, t6, 0
                  or           a5, t1, a3
                  andi         t1, s8, -1954
                  lui          s2, 743932
                  sra          t2, a5, s10
                  srai         tp, s2, 23
                  sll          a3, t5, t2
                  bne          s7, t4, 3553f
                  and          s2, a1, s11
                  sltu         s3, a3, s6
                  sltu         s0, t1, gp
                  addi         s9, t3, 997
                  beq          s7, s2, 3553f
3552:             srl          t6, a6, s4
3553:             sltu         s6, t1, s4
                  slt          t5, s10, a6
                  ori          tp, a5, 56
                  sltiu        t6, s11, 1373
3557:             bltu         a2, tp, 3572f
                  bne          s1, s2, 3564f
                  bne          s10, ra, 3566f
                  bne          a7, a4, 3578f
                  sub          s0, s11, t2
                  or           gp, t4, a3
                  and          s0, t0, a5
3564:             slti         zero, sp, 1188
                  bne          s7, s10, 3567f
3566:             sll          a4, a6, s4
3567:             addi         tp, s7, 16
                  bne          zero, t6, 3582f
                  xor          t6, t1, zero
                  bge          t3, tp, 3572f
                  and          s9, s9, a5
3572:             srli         s0, t1, 17
                  blt          s5, s5, 3578f
                  srli         sp, s8, 29
                  bge          a4, s6, 3579f
                  bltu         s7, t5, 3581f
                  slti         sp, a4, -1536
3578:             or           t3, a1, a1
3579:             or           t3, ra, s1
                  blt          a1, t6, 3599f
3581:             srli         s7, t6, 21
3582:             addi         s0, a2, 978
                  xori         zero, s2, -828
                  beq          s2, s0, 3588f
                  lui          s5, 466518
                  or           a0, a5, tp
                  lui          s11, 149754
3588:             and          s2, s0, s8
                  xor          s6, t6, s1
                  bge          s4, t0, 3610f
                  bltu         a1, t1, 3607f
                  slti         a5, s9, 737
                  add          s3, t3, zero
                  bgeu         sp, t4, 3603f
                  xor          s6, a4, gp
                  xori         s5, t2, -46
                  bne          s5, s6, 3600f
                  and          t2, t4, ra
3599:             bgeu         s0, a2, 3609f
3600:             sltu         a7, a5, ra
                  bgeu         s7, s1, 3610f
                  and          s5, a1, s0
3603:             addi         sp, gp, 1375
                  bne          a3, s6, 3620f
                  andi         a2, gp, -1436
                  and          a2, t1, a7
3607:             or           t5, t0, s3
                  sll          s4, a7, s1
3609:             slti         t1, ra, -942
3610:             beq          a4, s2, 3613f
                  nop
                  xori         t5, t5, 1058
3613:             srai         s3, a0, 25
                  slti         a2, s6, -607
                  and          a5, tp, t1
                  beq          t0, s6, 3633f
                  or           gp, s4, t0
                  addi         ra, t6, -1736
                  nop
3620:             srl          gp, t6, s11
                  andi         tp, a0, -733
                  bgeu         tp, t2, 3627f
                  bne          t0, a4, 3628f
                  slti         a2, s8, 1825
                  slli         a0, a5, 13
                  xor          sp, s3, sp
3627:             slt          s5, t6, sp
3628:             srai         s6, a0, 10
                  slli         t5, s4, 5
                  add          t3, s11, t6
                  bge          t6, s4, 3641f
                  slt          a0, s11, s4
3633:             and          t3, t5, t6
                  xor          zero, s11, s6
                  or           a7, tp, s11
                  bltu         s10, s9, 3641f
                  auipc        a1, 345928
                  slli         sp, s6, 7
                  bne          s11, zero, 3641f
                  sra          s1, a5, a0
3641:             addi         a5, s1, -1872
                  and          s2, s11, s4
                  sra          s0, a4, a1
                  slli         t1, gp, 27
                  srli         a2, s10, 25
                  lw           sp, 4(a6)
                  addi         a6, a6, 64
                  srli         s9, a6, 1
4822:             addi x28, x2, 0
4822:             jalr x28, x28, 0
sub_8:            bge          a1, tp, sub_8_stack_p
                  sra          s3, a6, a5
sub_8_stack_p:    addi         a6, a6, -52
                  ori          a3, gp, 293
                  sw           sp, 4(a6)
                  slt          s5, s3, s4
                  slli         tp, s5, 27
                  ori          a2, t6, 661
                  auipc        s11, 157896
                  sltiu        t6, ra, -1352
                  addi         s5, s11, 1053
                  lui          s0, 695933
                  and          s9, a4, t1
                  bltu         s11, t3, sub_8_j15 #branch to jump instr
                  andi         s0, t6, 1959
                  srl          a3, tp, s11
                  sub          t0, s1, s9
                  slt          t2, s3, a3
sub_8_j15:        jal          sp, sub_9 #jump sub_8 -> sub_9
                  la           s0, region_1+1812 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, -229(s0)
                  lbu          ra, -1294(s0)
                  slt          a7, s4, a7
                  lhu          a2, -594(s0)
                  lh           a7, -1798(s0)
                  lh           zero, -944(s0)
                  lbu          a4, 36(s0)
                  lb           tp, -69(s0)
                  lbu          s9, -267(s0)
                  lhu          s5, -858(s0)
                  andi         t5, a4, -1774
                  sb           t4, -635(s0)
                  sb           a0, -1433(s0)
                  lb           s3, 117(s0)
                  xor          s5, a3, s3
                  nop
                  sll          a0, ra, s0
                  ori          a1, s6, 1645
                  srl          a3, s6, a5
                  lb           s3, 25(s0)
                  lui          sp, 268471
                  or           s9, a3, a7
                  lb           a4, -1247(s0)
                  sra          t3, a7, t4
                  sltu         s7, t2, t4
                  sw           a6, 28(s0)
                  lbu          t6, -671(s0)
                  lb           s4, -1811(s0)
                  lbu          s10, -846(s0)
                  sltiu        t2, gp, -1056
                  sb           a7, 91(s0)
                  lh           s10, 106(s0)
                  sb           ra, -1439(s0)
                  sb           s4, -357(s0) #end riscv_load_store_rand_instr_stream_0
                  srli         s10, t1, 19
                  nop
                  ori          tp, s6, 520
                  bne          ra, a5, 11f
                  bne          ra, a5, 8f
                  bne          t5, a4, 18f
                  bgeu         ra, s7, 22f
                  beq          ra, s1, 25f
8:                addi         a7, s7, -1661
                  blt          tp, ra, 18f
                  lui          t6, 846716
11:               nop
                  sra          t0, t5, t3
                  bge          a4, a2, 28f
                  or           s2, s7, s9
                  sltiu        zero, t2, 1902
                  bge          s2, a3, 20f
                  auipc        s0, 592304
18:               bge          s11, t5, 32f
                  bge          t1, s9, 20f
20:               add          zero, s1, a2
                  sll          s11, sp, t6
22:               bne          a6, zero, 30f
                  srl          s9, s0, s11
                  xori         s5, s11, -885
25:               sra          s7, t0, gp
                  bge          s10, ra, 30f
                  srai         t0, t3, 23
28:               srl          t0, s5, t3
                  bne          gp, t0, 31f
30:               sub          tp, a5, t0
31:               srai         a0, a1, 27
32:               srli         s5, s6, 12
                  blt          zero, a3, 43f
                  and          s3, t1, t0
                  bltu         s7, a3, 53f
                  beq          t5, gp, 37f
37:               blt          t5, s5, 47f
                  sltu         t1, s4, s2
                  srai         s5, t4, 10
                  or           s4, zero, gp
                  lui          s1, 322002
                  srli         t2, s0, 10
43:               xor          s7, tp, s8
                  addi         s11, a6, 1614
                  andi         s1, a2, -1343
                  slt          s6, a1, s3
47:               beq          t4, s11, 57f
                  sra          s6, s10, a4
                  or           s3, t1, t4
                  addi         t0, s6, 1725
                  beq          a2, a2, 66f
                  bne          t6, zero, 71f
53:               slli         s11, s2, 11
                  lui          s9, 578332
                  bne          s8, t4, 68f
                  addi         a1, s0, -1969
57:               or           a2, a7, a6
                  beq          s10, s5, 66f
                  slli         a7, t3, 1
                  sll          s2, ra, gp
                  andi         a4, zero, 1324
                  blt          a3, a2, 73f
                  ori          a4, s5, 228
                  add          a3, a6, s10
                  sltu         a5, gp, t5
66:               srai         s1, s4, 4
                  bltu         a5, t2, 76f
68:               sll          a1, a0, a4
                  beq          gp, s7, 84f
                  add          sp, t2, s2
71:               add          tp, s9, ra
                  nop
73:               or           s2, a7, s5
                  bne          sp, gp, 87f
                  slti         s4, s1, -750
76:               nop
                  slli         a4, gp, 26
                  slti         a3, a7, -1590
                  sll          s5, a3, s5
                  srli         t5, s6, 25
                  sltiu        t1, t0, -93
                  sub          a1, s1, a4
                  and          s7, s6, a4
                  nop
                  xor          a3, s5, a0
                  sll          a3, zero, s5
sub_8_j14:        jal          sp, sub_10 #jump sub_8 -> sub_10
                  slt          s11, s5, s7
                  xori         t0, a6, 972
                  bne          a5, zero, 80f
80:               beq          a0, a5, 95f
                  srai         t1, s9, 3
                  slti         a5, s0, -1365
                  sll          s9, t1, a2
84:               blt          s4, gp, 88f
                  sltu         s11, t4, gp
                  sltu         s1, a5, s0
87:               andi         a7, s7, -1553
88:               blt          s2, s8, 105f
                  auipc        a4, 430058
                  auipc        s9, 893634
                  or           s11, a1, tp
                  and          t3, a2, s10
                  srai         t1, a0, 5
                  srli         a2, s3, 9
95:               sra          t5, t5, t6
                  bge          s9, s9, 105f
                  xori         t1, t1, 1707
                  slti         sp, s8, -1987
                  xori         s10, t1, -718
                  sltiu        s0, s0, -1842
                  add          a7, s3, a4
                  beq          s3, t4, 104f
                  sll          s11, s4, a0
104:              blt          gp, tp, 119f
105:              addi         zero, s10, 65
                  srai         a7, a3, 4
                  srl          a2, s7, s0
                  xor          s4, a6, t0
                  addi         ra, s7, -1247
                  nop
                  auipc        t2, 401867
                  xor          s3, t0, t3
                  slti         s6, s4, 1604
                  nop
                  slt          a1, t3, s2
                  sltiu        s0, t2, -408
                  and          t1, s4, a0
                  and          a4, s7, s9
119:              xor          t3, a1, a3
                  bge          s3, t6, 121f
121:              sltiu        t6, a1, -1496
                  and          a3, t3, a3
                  sra          sp, a4, s9
                  xor          s3, s10, s1
                  bne          ra, s6, 133f
                  auipc        t2, 1014850
                  nop
                  bge          s2, s2, 143f
                  ori          sp, a2, 1877
                  xori         a0, t2, -1946
                  bgeu         a7, s6, 141f
                  nop
133:              bge          s7, gp, 146f
                  nop
                  or           t5, a4, t1
                  slli         a7, s11, 17
                  beq          s11, gp, 155f
                  bltu         s4, t6, 148f
                  bgeu         t0, a0, 140f
140:              xor          tp, t1, t5
141:              sltiu        zero, s6, -604
                  sll          tp, s10, a5
143:              beq          zero, a5, 147f
                  and          a1, a4, a1
                  srl          t2, s3, s4
146:              or           a0, s9, tp
147:              srl          s7, t3, tp
148:              slti         a1, s10, -456
                  andi         s9, s2, 1158
                  xori         t0, tp, -1035
                  sll          tp, a4, a1
                  sll          s4, tp, t4
                  addi         s11, zero, -1116
                  andi         ra, s7, 1323
155:              sub          a3, t2, s8
                  beq          t0, s8, 157f
157:              andi         t1, s4, -595
                  ori          s9, t4, 1257
                  auipc        sp, 1028315
                  or           a2, a1, s8
                  xor          t2, s11, gp
                  bne          a7, zero, 179f
                  srli         tp, a1, 29
                  sub          s3, ra, t0
                  or           s9, s4, a0
                  and          t2, t0, t6
                  or           gp, s9, s10
                  andi         s7, a1, -1529
                  and          s10, sp, t1
                  bge          s8, s7, 178f
                  bgeu         a5, a3, 180f
                  or           s6, a3, s0
                  srl          s1, gp, s1
                  andi         a3, s2, 1169
                  blt          s2, s4, 180f
                  sra          s4, a0, t6
                  or           ra, s3, a2
178:              nop
179:              sra          s3, t0, a0
180:              lui          t2, 69357
                  lw           sp, 4(a6)
                  and          s7, s2, s6
                  srli         t5, sp, 11
                  srai         t3, gp, 18
                  addi         a6, a6, 52
                  andi         t3, a3, 1009
                  andi         s5, s9, 1406
253:              addi x31, x2, 1
253:              jalr x31, x31, 0
sub_6:            bltu         a2, s1, sub_6_stack_p
                  add          a5, tp, t3
                  srl          a5, a1, t3
                  slt          s7, sp, sp
                  or           a5, s3, s11
                  sll          t0, zero, a4
sub_6_stack_p:    addi         a6, a6, -24
                  add          a4, s10, t0
                  slt          s0, t6, s8
                  slli         s0, a2, 17
                  sw           sp, 4(a6)
                  add          s9, a4, t6
                  sltiu        a1, s7, -46
                  or           s0, t4, t1
                  srai         t2, t5, 16
                  bge          a3, s5, 8f
                  srli         a4, s4, 3
                  or           s11, tp, a2
                  slli         zero, t6, 23
                  slt          t1, s11, t1
8:                slli         s3, s2, 10
                  addi         s0, s6, -225
                  xor          t0, t1, t0
                  sll          zero, t1, s10
                  sltu         s10, t4, s1
                  lw           sp, 4(a6)
                  srl          a7, t2, s6
                  sra          t3, s2, a0
                  auipc        s2, 315365
                  addi         a6, a6, 24
                  slli         a5, a7, 19
                  slli         tp, t4, 0
32:               addi x5, x2, 1
32:               jalr x5, x5, 0
sub_10:           lui          t0, 420446
                  addi         a6, a6, -16
                  sltu         gp, tp, s3
                  add          t5, tp, s3
                  sw           sp, 4(a6)
                  sub          a2, a4, t1
                  sltiu        t3, s3, 1138
                  srl          t6, s2, a3
                  nop
                  sub          a2, gp, t5
                  xori         a0, a5, 510
                  srai         s7, s10, 10
                  sltiu        t3, sp, 1245
                  xori         t2, s5, -923
                  and          s7, s6, s1
                  or           s11, a6, t1
                  ori          gp, t4, 523
                  lw           sp, 4(a6)
                  or           zero, s4, s10
                  srai         a2, a1, 18
                  addi         a6, a6, 16
                  lui          t5, 782573
                  andi         s10, a4, -1878
                  sll          a4, s10, a0
24:               addi x7, x2, 0
24:               jalr x7, x7, 0
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x29, x16, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x6, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x6, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x6, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x6, x31, ecall_handler
                  li x31, 0x1
                  beq x6, x31, instr_fault_handler
                  li x31, 0x5
                  beq x6, x31, load_fault_handler
                  li x31, 0x7
                  beq x6, x31, store_fault_handler
                  li x31, 0xc
                  beq x6, x31, pt_fault_handler
                  li x31, 0xd
                  beq x6, x31, pt_fault_handler
                  li x31, 0xf
                  beq x6, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x16, x29, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
