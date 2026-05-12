.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x49b88fbb
                  li x1, 0x80000000
                  li x2, 0xb
                  li x3, 0x31c8d29a
                  li x4, 0x41c5de6f
                  li x5, 0xf5e1e9f7
                  li x6, 0x80000000
                  li x7, 0xf4c2d3fb
                  li x8, 0xf
                  li x9, 0xf04b472c
                  li x10, 0x201e18ad
                  li x11, 0x3
                  li x12, 0x0
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xfad87c74
                  li x20, 0x4893e1da
                  li x22, 0xe3c7bd04
                  li x23, 0x0
                  li x24, 0xa
                  li x25, 0x0
                  li x26, 0xafb769dc
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x3773f8ce
                  li x31, 0x12795f65
                  la x13, user_stack_end
main:             la           sp, sub_1
                  addi         sp, sp, 449
                  sltiu        t5, s7, -1355
                  andi         s7, t0, -616
                  beq          s2, t4, main_j3 #branch to jump instr
                  addi         s11, s9, -131
                  xori         t6, s9, 1988
                  auipc        s10, 857275
main_j3:          jalr         s6, sp, -449 #jump main -> sub_1
                  la           t1, region_0+233 #start load_store_instr_stream_1
                  sb           t3, 425(t1)
                  la           a2, region_0+1259 #start load_store_instr_stream_0
                  sb           s6, 42(a2)
                  la           sp, region_0+377 #start load_store_instr_stream_2
                  lh           s8, 1099(t1)
                  lb           tp, 1419(sp)
                  sh           sp, 3(a2)
                  lhu          a4, 203(sp)
                  lb           t0, 894(sp)
                  lbu          a5, 1068(sp)
                  sb           tp, -64(a2)
                  lb           s3, 486(sp)
                  lb           a4, 525(t1)
                  lbu          a4, 5(sp)
                  sh           a5, 947(sp)
                  lb           a5, 22(a2)
                  lb           s0, 1321(t1)
                  lb           s6, 107(sp)
                  lb           a0, -11(a2)
                  lb           s7, 205(sp)
                  lbu          a5, 1062(sp) #end load_store_instr_stream_2
                  lhu          t6, 1025(t1) #end load_store_instr_stream_1
                  lbu          t4, -42(a2)
                  sb           a7, -48(a2) #end load_store_instr_stream_0
                  la           a7, region_0+1474 #start riscv_load_store_hazard_instr_stream_0
                  lbu          gp, -205(a7)
                  lbu          t0, -205(a7)
                  sb           gp, -205(a7)
                  sb           gp, -205(a7)
                  ori          s6, t5, 2009
                  sb           s6, -205(a7)
                  sh           s2, 44(a7)
                  lhu          ra, 44(a7)
                  lh           t5, 44(a7)
                  lb           s8, -115(a7)
                  lb           ra, -137(a7)
                  lbu          s3, -21(a7)
                  lbu          a2, -21(a7)
                  add          ra, s6, tp
                  lbu          t3, -21(a7)
                  lbu          s4, -53(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1419 #start riscv_load_store_rand_instr_stream_0
                  sb           t5, -8(sp)
                  lui          s0, 857591
                  addi         t6, t1, 1129
                  sra          s0, a0, a2
                  sra          tp, s0, gp
                  sb           t6, 12(sp)
                  and          t1, s7, a1
                  lbu          t6, -4(sp)
                  xor          s1, a4, t6
                  sra          zero, s5, s3
                  sb           t2, -5(sp)
                  lb           t1, 12(sp)
                  ori          a5, a3, 1232
                  sltu         a7, t4, tp
                  sb           s1, -8(sp)
                  lbu          a5, -14(sp)
                  sb           s5, -6(sp)
                  or           s2, a2, t5
                  slti         a0, s7, -1950
                  add          t6, a6, ra
                  sw           s10, 1(sp)
                  lbu          a0, 8(sp)
                  sb           t3, 4(sp)
                  lb           s3, -8(sp)
                  lb           a5, -11(sp)
                  lb           gp, 14(sp)
                  srli         t6, t1, 27
                  sltiu        s11, t1, -1553
                  lh           t5, -1(sp)
                  lb           t5, -2(sp)
                  lhu          t1, 11(sp)
                  sub          s8, s1, sp
                  xor          ra, ra, t2
                  lbu          t5, 14(sp)
                  lhu          s8, 3(sp)
                  sltu         a2, s9, a0
                  or           s3, s7, tp
                  sw           zero, -11(sp)
                  lw           a7, 9(sp)
                  sw           a5, -7(sp)
                  srai         s4, t1, 19
                  lhu          a2, -3(sp)
                  sb           a1, -4(sp)
                  lb           s7, 1(sp)
                  lb           s3, 7(sp)
                  lhu          a2, 15(sp)
                  lb           s4, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          a2, t4, a0
                  srl          t1, s4, sp
                  sra          s4, gp, s8
                  sltu         ra, t3, s8
                  bge          s6, s9, 6f
                  sub          t3, s8, a4
6:                and          t3, gp, s5
                  blt          t0, a5, 9f
                  bge          ra, zero, 19f
9:                xor          s8, s7, s4
                  xor          s6, a4, tp
                  sra          a7, s7, s1
                  bge          s0, s3, 19f
                  addi         s11, sp, 796
                  srai         t3, t3, 1
                  slli         s4, a7, 13
                  add          t5, a4, a2
                  slli         s4, t1, 8
                  bgeu         a3, s4, 27f
19:               sra          s9, t1, s5
                  sll          tp, s5, s11
                  ori          sp, t5, 1588
                  slt          t1, s3, t0
                  ori          a0, a4, -822
                  ori          t0, a3, 242
                  xori         s11, s0, 952
                  bltu         a0, s8, 30f
27:               nop
                  bltu         s4, a1, 40f
                  sra          t4, s8, a4
30:               bltu         s8, s1, 39f
                  beq          gp, gp, 37f
                  auipc        t1, 319367
                  add          s0, a0, a2
                  addi         t4, zero, 663
                  blt          a0, s4, 54f
                  slti         s0, a1, 1348
37:               sltu         s1, a1, t1
                  addi         s3, s6, -1279
39:               nop
40:               bne          s0, a5, 58f
                  xori         a7, tp, -708
                  and          a5, t5, sp
                  sltu         t0, a4, a4
                  xori         a2, a5, 1118
                  srli         t1, t3, 12
                  or           t5, a5, s9
                  addi         s11, sp, -78
                  auipc        s3, 225018
                  blt          zero, t6, 68f
                  add          t5, t6, s2
                  sub          s4, s10, s7
                  beq          s8, a6, 68f
                  and          a0, zero, s6
54:               srl          s10, t4, s6
                  xor          t2, ra, s2
                  auipc        zero, 766232
                  la           t0, sub_2
                  addi         s1, t1, -1076
                  srai         a1, s1, 7
                  sub          t6, t3, s11
                  addi         t0, t0, 50
                  xor          a5, ra, t4
                  bgeu         sp, s5, main_j2 #branch to jump instr
                  nop
                  srl          t5, t2, s11
                  add          s7, t1, s5
main_j2:          jalr         s6, t0, -50 #jump main -> sub_2
                  auipc        t1, 291612
                  slti         s6, s9, -355
                  xor          gp, s7, tp
58:               add          zero, a4, tp
                  srli         s8, t4, 31
                  bgeu         ra, s10, 73f
                  srl          t5, s0, a1
                  slti         t5, s5, -2024
                  sra          t2, s6, t5
                  slt          t2, t6, tp
                  slli         s11, a0, 26
                  bltu         t3, a0, 84f
                  bge          t1, t0, 74f
68:               bltu         a7, s5, 71f
                  lui          gp, 551645
                  bge          s6, s7, 89f
71:               addi         t0, s9, 815
                  xor          t6, s7, s11
73:               slli         a5, t6, 10
74:               slt          t5, t6, a6
                  sltiu        a2, a5, -931
                  xori         t5, s6, -1254
                  auipc        t6, 717312
                  bgeu         t5, a6, 88f
                  bgeu         ra, s8, 89f
                  andi         s9, s6, -1862
                  slt          s6, a6, s4
                  lui          t4, 21646
                  ori          gp, s7, -863
84:               sltu         tp, zero, s1
                  sltu         s1, s11, s2
                  addi         s10, a1, -1864
                  slli         a7, s6, 4
88:               srli         t0, a6, 3
89:               srai         t6, a3, 12
                  srai         t1, a2, 5
                  srli         ra, zero, 12
                  or           s1, t5, t5
                  sub          t0, t4, s4
                  ori          s3, s7, 705
                  auipc        s2, 35501
                  srai         a1, t0, 15
                  auipc        s2, 420093
                  auipc        t2, 522716
                  slti         a2, t3, 1358
                  add          t5, s7, s1
                  slli         s3, s4, 29
                  bne          s1, s1, 107f
                  sltiu        s0, a7, -1305
                  add          s1, zero, a6
                  and          zero, zero, t3
                  sra          s1, s7, s10
107:              add          s4, t3, s2
                  sub          sp, s5, s6
                  bgeu         a6, s2, 110f
110:              sltiu        t0, s10, -223
                  sub          t4, s6, a1
                  xori         s8, s4, -897
                  xor          sp, t6, gp
                  auipc        t4, 690392
                  sltu         a0, t3, s9
                  bge          a0, s1, 120f
                  andi         t4, s5, 59
                  sltiu        t2, t6, -1576
                  sub          sp, gp, s9
120:              bne          a7, gp, 138f
                  add          s11, s3, t5
                  addi         ra, s10, 644
                  srai         s0, s3, 22
                  sub          t5, a3, s7
                  xori         tp, t6, 268
                  xor          s3, s8, t2
                  srl          t4, s0, s5
                  nop
                  slt          s10, s2, s10
                  sltiu        t4, t1, 1019
                  slt          s9, t2, t3
                  bne          s7, gp, 133f
133:              addi         s2, s0, 107
                  nop
                  xor          t3, a5, s11
                  bgeu         s9, s1, 151f
                  sltu         s9, t3, a0
138:              bgeu         a4, s3, 151f
                  nop
                  srli         a5, t3, 24
                  or           a2, t6, a7
                  sra          a1, s6, zero
                  and          t6, t0, t0
                  bge          s0, a1, 151f
                  bge          a7, t1, 151f
                  sub          t1, s6, s11
                  slli         sp, s3, 29
                  lui          s2, 205726
                  srl          ra, t1, a4
                  or           t2, s11, s7
                  sub          a1, t4, s8
                  la           tp, sub_2
                  or           a7, a6, s3
                  slli         t2, t3, 24
                  add          s9, s0, gp
                  add          t5, t5, t3
                  addi         tp, tp, -62
                  lui          s10, 316557
                  sltu         t5, a2, t6
                  addi         s9, s9, -1388
                  blt          a7, ra, main_j1 #branch to jump instr
                  lui          s4, 524374
main_j1:          jalr         s6, tp, 63 #jump main -> sub_2
151:              srai         t3, s5, 19
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sub          s0, a4, s6
                  xor          a7, s1, a0
                  and          a4, s6, s1
                  sll          s0, a6, s3
                  nop
                  addi         a3, a3, -40
                  slti         sp, a7, -224
                  or           gp, t6, ra
                  sw           s6, 4(a3)
                  slli         a4, gp, 26
                  lui          ra, 609061
                  ori          a0, s5, 1164
                  la           a5, region_0+1841 #start riscv_load_store_rand_instr_stream_0
                  sh           zero, 11(a5)
                  and          ra, s3, t0
                  lb           t3, -9(a5)
                  lh           t4, -15(a5)
                  sb           s7, 11(a5)
                  sltiu        a4, t5, 803
                  addi         t2, s2, 1612
                  or           tp, s8, ra
                  sb           a7, 9(a5)
                  addi         a7, s2, 2036
                  sb           s9, 11(a5)
                  lhu          s4, -15(a5)
                  lb           s6, -14(a5)
                  nop
                  or           t1, s9, a4
                  and          s3, t4, a2
                  auipc        zero, 680321
                  sltiu        t0, a3, 1238
                  sw           s8, 15(a5)
                  lb           t3, 12(a5)
                  lbu          t4, 2(a5)
                  sb           a7, 14(a5)
                  slti         s10, a4, 239
                  addi         a4, s10, 1527
                  and          t5, s6, gp
                  lh           s7, -15(a5)
                  lh           s4, -11(a5)
                  auipc        s8, 366271
                  lhu          tp, -13(a5)
                  sh           s9, -1(a5)
                  sltu         s0, a2, tp
                  sltiu        s6, t1, -1120
                  srai         a0, t4, 8
                  ori          tp, t6, -1029
                  or           s3, t4, a2
                  or           t2, s6, a6
                  slt          s2, t3, a3
                  lbu          a7, 6(a5)
                  sub          t4, s10, s0
                  lbu          s3, 13(a5)
                  lbu          s8, 12(a5)
                  sll          sp, tp, sp
                  lbu          s3, -6(a5)
                  lbu          zero, -16(a5)
                  sb           s4, 11(a5) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+1162 #start riscv_load_store_hazard_instr_stream_0
                  lb           s4, -9(tp)
                  add          t2, tp, s2
                  lbu          s0, -9(tp)
                  lb           s6, -9(tp)
                  sb           t6, 1(tp)
                  lbu          t3, 1(tp)
                  lbu          t1, 1(tp)
                  lbu          t5, 1(tp)
                  lb           t4, 1(tp)
                  sltu         sp, t3, a3
                  lbu          a7, 1(tp)
                  sw           s2, -6(tp)
                  lhu          t6, -6(tp)
                  lb           s4, -6(tp)
                  sltiu        ra, t4, -1690
                  lbu          s6, -16(tp)
                  ori          zero, s9, -429
                  lh           s8, -16(tp)
                  lh           s10, -16(tp)
                  lb           s10, -16(tp)
                  lb           t6, -16(tp)
                  lb           s8, 7(tp)
                  lb           a5, 7(tp)
                  sb           s11, 7(tp) #end riscv_load_store_hazard_instr_stream_0
                  auipc        t1, 596067
                  sltiu        s11, s1, -1328
                  sltiu        s6, t0, -1378
                  sll          t4, s8, zero
                  lui          t0, 768477
                  add          t3, a2, s5
                  bge          t3, s9, 26f
                  sra          a4, a3, s4
                  bgeu         tp, gp, 25f
                  srl          tp, zero, a4
                  sltu         t6, t4, s3
                  bgeu         s8, s8, 15f
                  bge          s10, a0, 22f
                  srl          a7, s8, a6
                  sll          zero, s6, s11
15:               slli         t5, s6, 5
                  and          tp, s0, tp
                  srl          t0, a0, a2
                  addi         sp, ra, -1565
                  srai         t2, s2, 8
                  and          s7, s6, s9
                  sll          a4, t0, a6
22:               srl          t2, t0, t6
                  slt          s2, a1, t4
                  beq          s2, s2, 43f
25:               bltu         sp, a3, 31f
26:               srli         a5, a2, 25
                  add          ra, t5, s1
                  srli         t3, a5, 27
                  bne          s2, s2, 37f
                  srl          s1, s3, s10
31:               auipc        s1, 434041
                  add          s11, t0, s6
                  beq          a1, a1, 52f
                  slt          a4, s3, a7
                  bltu         sp, s6, 45f
                  sltu         s6, s6, a7
37:               bgeu         a6, s11, 44f
                  bgeu         gp, zero, 58f
                  bltu         a6, s3, 43f
                  bltu         sp, a6, 55f
                  andi         s4, s10, 908
                  addi         a1, t0, 1016
43:               bge          s10, s3, 63f
44:               auipc        a0, 267519
45:               sltu         a0, s8, a6
                  add          a7, a7, a4
                  sll          t5, zero, s4
                  sltu         s7, t3, a2
                  andi         s7, s3, 505
                  sra          a2, s2, s4
                  bge          t5, s7, 56f
52:               xor          a7, a3, t3
                  bgeu         s0, gp, 55f
                  bge          t2, a1, 73f
55:               bge          a4, t3, 59f
56:               bgeu         s6, a2, 72f
                  slt          t4, a0, s5
58:               add          t0, t3, s1
59:               bge          s6, s4, 60f
60:               bne          t3, s3, 70f
                  xor          s3, s7, t0
                  and          a2, a2, s9
63:               slti         t6, a2, -106
                  blt          t6, s9, 74f
                  srl          t4, gp, a7
                  nop
                  slt          zero, s10, t4
                  la           a4, region_0+298 #start load_store_instr_stream_0
                  la           s3, region_0+1953 #start load_store_instr_stream_2
                  lb           t6, -257(a4)
                  lb           t5, 277(a4)
                  lb           t0, -6(s3)
                  la           t1, region_0+1907 #start load_store_instr_stream_1
                  lbu          a5, -199(a4)
                  lb           ra, 213(a4)
                  lb           s0, -52(t1)
                  lb           s1, 42(t1)
                  lw           a5, 410(a4)
                  sb           s0, 8(s3)
                  sb           t6, -62(t1)
                  lbu          a2, -9(s3)
                  sb           s10, 6(t1)
                  sb           t4, 1289(a4)
                  sb           zero, 848(a4)
                  lhu          tp, -9(s3)
                  lh           s11, 37(t1)
                  sb           s8, 11(s3)
                  lb           t2, 32(t1)
                  sh           a4, 9(s3)
                  sb           s9, 409(a4)
                  lhu          tp, 55(t1)
                  sw           s1, -27(t1) #end load_store_instr_stream_1
                  lbu          t4, 4(s3) #end load_store_instr_stream_2
                  lb           s1, 259(a4) #end load_store_instr_stream_0
                  srai         tp, a3, 11
                  xori         a5, s1, -1553
70:               addi         s3, a2, 1380
                  bge          s10, a1, 79f
72:               sltu         t0, s6, s8
73:               and          s3, a5, s5
74:               sltu         t6, a1, a5
                  bgeu         t2, t4, 85f
                  bltu         gp, s1, 90f
                  slti         s2, t3, 754
                  bltu         s7, t4, 97f
79:               or           s4, s1, t1
                  bltu         a0, a6, 99f
                  bltu         s9, s11, 88f
                  sra          t1, s11, s1
                  nop
                  srli         s0, t1, 8
85:               slt          zero, s1, s7
                  bltu         a2, gp, 96f
                  addi         s3, s8, 894
88:               xor          t5, sp, a4
                  srli         a2, s2, 30
90:               slt          a0, zero, ra
                  beq          t6, a4, 95f
                  sub          tp, a0, s2
                  srai         s10, s0, 17
                  xor          s3, s11, s11
95:               bltu         s7, t1, 103f
96:               slti         a7, s9, -665
97:               andi         s0, a2, -333
                  sltiu        s1, a4, -1054
99:               sub          a5, a0, s10
                  slti         ra, a7, 326
                  auipc        s2, 933445
                  add          a0, s11, a6
103:              sub          a4, s8, s2
                  lui          s4, 671367
                  nop
                  lw           s6, 4(a3)
                  nop
                  auipc        s4, 943986
                  addi         a3, a3, 40
                  srai         s2, s11, 17
                  slt          gp, sp, zero
222:              addi x4, x22, 0
222:              jalr x4, x4, 0
sub_2:            srl          a7, s3, t1
                  srai         ra, a4, 6
                  bltu         t1, s6, sub_2_stack_p
                  or           t6, s7, a5
sub_2_stack_p:    addi         a3, a3, -20
                  sw           s6, 4(a3)
                  xori         s0, t1, -1028
                  la           t6, region_0+1965 #start load_store_instr_stream_1
                  la           a7, region_0+1894 #start load_store_instr_stream_3
                  la           s11, region_0+1791 #start load_store_instr_stream_0
                  lbu          zero, 7(a7)
                  sh           t2, -9(t6)
                  lb           gp, 8(t6)
                  lb           a0, -1(a7)
                  la           t1, region_0+287 #start load_store_instr_stream_4
                  la           a2, region_0+1309 #start load_store_instr_stream_2
                  sb           s3, -56(t1)
                  lbu          s9, -250(a2)
                  lbu          ra, 11(a7)
                  lb           t5, 2(t6)
                  sb           t1, 0(s11)
                  sb           a2, 9(t6)
                  sb           t4, -60(s11)
                  sh           a2, -237(a2)
                  lw           s4, -2(a7)
                  lb           s0, 9(t6)
                  lbu          t4, 0(t6)
                  sb           s0, -64(a2)
                  sh           t5, -2(a7)
                  sb           gp, -22(t1)
                  sb           t6, -11(t6)
                  sh           a4, -15(t1)
                  lhu          s0, -27(a2)
                  lb           a4, -38(t1)
                  lbu          sp, -57(s11)
                  lbu          s1, -46(a2)
                  lbu          a5, 32(a2)
                  lb           a4, -58(t1)
                  lb           ra, -43(t1)
                  lb           t3, 0(t6) #end load_store_instr_stream_1
                  lbu          ra, -13(a7)
                  sb           sp, -54(a2) #end load_store_instr_stream_2
                  lbu          t2, 38(s11)
                  lbu          sp, -54(s11)
                  lbu          s10, 56(t1) #end load_store_instr_stream_4
                  sb           s11, -33(s11)
                  lbu          t2, -3(a7) #end load_store_instr_stream_3
                  lh           s10, -45(s11) #end load_store_instr_stream_0
                  la           a5, region_1+226 #start riscv_load_store_rand_instr_stream_1
                  srl          t2, t6, s9
                  lbu          t6, 1(a5)
                  lbu          t0, 1(a5)
                  and          a0, s1, a0
                  lui          tp, 509763
                  srli         sp, zero, 18
                  lbu          t3, 7(a5)
                  sltiu        t6, s9, -933
                  lbu          t6, 7(a5)
                  sll          a4, t6, s0
                  slli         s0, s7, 10
                  srl          tp, s6, s2
                  lbu          s1, 7(a5)
                  sra          t0, s10, s1
                  and          a7, sp, t4
                  srli         s1, t3, 8
                  ori          s7, zero, -2027
                  lbu          ra, 5(a5)
                  lw           s2, -10(a5)
                  sb           s9, 0(a5)
                  sb           a2, -15(a5)
                  lbu          t4, -11(a5)
                  sb           t3, 7(a5)
                  nop
                  sb           a5, 1(a5)
                  lbu          ra, 7(a5)
                  lbu          s10, -8(a5)
                  lh           s7, 8(a5)
                  lb           a4, -15(a5)
                  slt          s1, tp, ra
                  lbu          zero, 5(a5)
                  sltu         sp, a3, t3
                  ori          s9, s6, 1577
                  lb           t4, 7(a5)
                  sltu         a7, s9, zero
                  sltiu        t1, s9, -153
                  add          s8, s3, s5
                  sh           s0, 16(a5)
                  lb           s6, -15(a5) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+756 #start load_store_instr_stream_3
                  la           s7, region_1+563 #start load_store_instr_stream_2
                  la           a0, region_1+135 #start load_store_instr_stream_4
                  la           a4, region_1+105 #start load_store_instr_stream_1
                  lhu          s8, 213(s7)
                  lbu          s6, 42(s11)
                  lb           a7, 9(a4)
                  la           t0, region_1+715 #start load_store_instr_stream_0
                  lhu          s4, -89(a0)
                  lbu          a1, 14(a4)
                  lhu          t4, -20(s11)
                  sb           a2, 147(s7)
                  sb           s4, -12(t0)
                  lh           a1, 155(s7)
                  sh           t2, -121(a0)
                  lb           t5, -34(s11)
                  lb           a1, -8(a4)
                  sb           tp, -5(s11)
                  lbu          gp, -51(s11)
                  sb           s5, -2(a4)
                  lb           s4, -16(s7)
                  lb           t2, 14(t0)
                  lw           tp, -32(s11)
                  lw           s9, -5(a4)
                  sw           s10, 189(a0)
                  sb           ra, -14(t0)
                  lb           tp, -58(s11)
                  lb           t3, 14(t0)
                  lb           sp, 0(t0)
                  lb           s10, -39(s11)
                  lbu          ra, 160(a0)
                  lbu          a1, 8(t0)
                  lbu          s8, -8(a4)
                  sw           t0, -155(s7) #end load_store_instr_stream_2
                  lb           a5, 106(a0)
                  sh           tp, 22(s11)
                  lb           a2, 34(a0) #end load_store_instr_stream_4
                  sw           a7, -5(a4) #end load_store_instr_stream_1
                  lb           t5, -17(s11) #end load_store_instr_stream_3
                  lb           t2, 6(t0) #end load_store_instr_stream_0
                  la           s9, region_0+1303 #start load_store_instr_stream_3
                  la           a7, region_0+915 #start load_store_instr_stream_0
                  lbu          a5, -29(a7)
                  la           t6, region_0+692 #start load_store_instr_stream_2
                  lbu          sp, -896(s9)
                  sb           a0, 457(t6)
                  la           t2, region_0+1504 #start load_store_instr_stream_1
                  lbu          s2, -16(a7)
                  lbu          s7, -394(s9)
                  lbu          t5, -17(t2)
                  lbu          s1, -191(t6)
                  lb           t5, -59(t6)
                  lb           s8, -382(t6)
                  lbu          a4, 49(t2)
                  sb           s0, -933(s9)
                  sh           s9, 272(t6)
                  lb           s10, 43(t2)
                  lh           s4, 10(t2)
                  sh           gp, -669(s9)
                  lw           t4, 60(t2)
                  lb           s2, 599(s9)
                  lb           a1, 1139(t6)
                  lhu          ra, -81(a7)
                  sb           s7, 394(s9)
                  sb           t0, -1(t2)
                  lb           t4, -39(t2)
                  sb           zero, 255(s9)
                  lbu          tp, 715(t6) #end load_store_instr_stream_2
                  lb           t1, -17(t2)
                  sb           t3, 210(s9) #end load_store_instr_stream_3
                  sb           a5, -64(a7)
                  sb           t3, -38(t2) #end load_store_instr_stream_1
                  lbu          t1, -52(a7) #end load_store_instr_stream_0
                  la           sp, region_0+142 #start riscv_load_store_hazard_instr_stream_0
                  lui          s1, 389693
                  lb           a2, 11(sp)
                  sb           a6, 11(sp)
                  lb           s11, -1(sp)
                  srli         tp, a7, 13
                  srai         s6, gp, 26
                  lbu          a2, -1(sp)
                  sra          s2, s8, a1
                  xor          s8, a7, a7
                  or           s1, s2, t0
                  lhu          gp, -10(sp)
                  lhu          s9, -10(sp)
                  sb           s10, -15(sp)
                  lbu          a4, 13(sp)
                  lb           s2, 11(sp)
                  lbu          t3, -1(sp)
                  lh           zero, 16(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_0+1400 #start riscv_load_store_rand_instr_stream_3
                  sub          a4, t2, t1
                  srli         t3, a6, 17
                  lbu          t6, -58(tp)
                  sltu         s4, t1, t2
                  lb           t0, -829(tp)
                  lbu          t1, -526(tp)
                  auipc        t3, 178269
                  lbu          a2, -469(tp)
                  sra          s11, s3, tp
                  slli         a7, s0, 4
                  lbu          s8, 457(tp)
                  lbu          s1, 515(tp)
                  ori          t1, zero, 1993
                  sb           s9, 319(tp)
                  slt          s6, s1, a5
                  lb           t6, -251(tp)
                  lh           t1, -1016(tp)
                  lb           t1, -310(tp)
                  lhu          a1, -108(tp)
                  lbu          t3, 180(tp)
                  lb           t0, -969(tp)
                  auipc        a7, 414316
                  lui          s6, 273680
                  lhu          s6, -594(tp)
                  lh           a4, -448(tp)
                  lb           s6, 133(tp)
                  slti         s4, a2, 835
                  slt          t4, s5, t1
                  lh           s11, -298(tp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1933 #start riscv_load_store_hazard_instr_stream_3
                  lb           ra, -126(sp)
                  srl          s10, a2, a2
                  lb           t3, -1433(sp)
                  srl          t6, ra, s6
                  lw           s6, -1433(sp)
                  sltiu        t6, t6, 2000
                  slli         a5, a2, 13
                  lb           a1, -1433(sp)
                  lb           a0, -606(sp)
                  lb           t2, -606(sp)
                  add          s11, s3, t3
                  add          a0, a5, t5
                  lhu          ra, -435(sp)
                  sb           zero, -1547(sp)
                  sb           t5, -1242(sp)
                  sh           s2, -1517(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s9, region_1+1458 #start load_store_instr_stream_3
                  la           s4, region_1+895 #start load_store_instr_stream_2
                  la           t1, region_1+1330 #start load_store_instr_stream_4
                  sb           a0, -100(s9)
                  lbu          s3, 41(s9)
                  la           t0, region_1+374 #start load_store_instr_stream_0
                  lbu          a0, -558(t1)
                  la           a2, region_1+214 #start load_store_instr_stream_1
                  lh           s3, -40(a2)
                  sb           a4, 24(s9)
                  sb           s9, 269(t1)
                  sh           a2, -4(s9)
                  lb           t3, 842(t0)
                  lbu          s10, -191(t0)
                  lb           ra, 9(a2)
                  lhu          s1, 128(s9)
                  sh           s1, -44(a2)
                  lbu          s11, 1479(t0)
                  sh           s0, -90(t0)
                  lb           t2, 36(s4)
                  lbu          t4, -1035(t1)
                  lbu          tp, 52(a2)
                  lbu          s8, -133(s9)
                  lw           s0, 142(s9)
                  sb           zero, -267(t0)
                  lb           s3, 33(a2)
                  lh           a4, 116(s9)
                  lh           t2, 25(s4)
                  lb           t6, 1068(t0)
                  lbu          t5, -4(s4)
                  lb           sp, -649(t1)
                  lhu          s6, 34(a2)
                  sh           s2, 292(t1) #end load_store_instr_stream_4
                  lb           t3, 59(a2) #end load_store_instr_stream_1
                  lb           a4, 18(s4)
                  lb           s10, 3(s4) #end load_store_instr_stream_2
                  sb           s9, 181(s9)
                  lbu          s3, 127(s9) #end load_store_instr_stream_3
                  lbu          a7, 825(t0) #end load_store_instr_stream_0
                  la           t4, region_1+1145 #start load_store_instr_stream_0
                  sh           t4, 571(t4)
                  la           s11, region_1+1597 #start load_store_instr_stream_2
                  la           s0, region_1+508 #start load_store_instr_stream_1
                  lb           gp, 50(s11)
                  lb           s3, 30(s11)
                  lbu          t2, -303(s0)
                  lhu          s6, -371(t4)
                  sh           s7, 1126(s0)
                  lbu          s7, 112(s11)
                  lh           tp, 137(t4)
                  lb           a0, 637(s0)
                  lh           a5, -187(s11)
                  lb           s7, 62(s11)
                  lb           zero, -219(s0)
                  lb           tp, -1130(t4)
                  lb           a0, -223(s11)
                  lbu          t5, -285(s0)
                  lbu          s10, 1145(s0)
                  lb           t1, 254(s11)
                  sh           s11, -121(t4)
                  lbu          t6, 548(s0)
                  lbu          a5, -194(s11)
                  sb           s4, 784(s0) #end load_store_instr_stream_1
                  sb           a1, 238(s11) #end load_store_instr_stream_2
                  lh           a5, -191(t4) #end load_store_instr_stream_0
                  la           sp, region_1+279 #start riscv_load_store_rand_instr_stream_6
                  sb           a6, -12(sp)
                  sh           s3, -21(sp)
                  lbu          s11, 34(sp)
                  xor          a4, a2, t3
                  lb           s10, -19(sp)
                  sb           s10, -38(sp)
                  sb           t1, -58(sp)
                  lb           gp, -30(sp)
                  sb           s3, -60(sp)
                  sltu         t2, s9, s11
                  slti         s9, t3, -165
                  lbu          s3, -61(sp)
                  sb           s9, 22(sp)
                  sb           t2, -51(sp)
                  lbu          s11, 64(sp)
                  sh           a3, 41(sp)
                  xor          t6, s4, zero
                  lb           t2, 16(sp)
                  nop
                  lb           t6, -45(sp)
                  lbu          t3, -28(sp)
                  srl          t0, s0, s5
                  lb           t2, -8(sp)
                  xori         s7, s2, 1752
                  auipc        s7, 631521
                  auipc        s7, 931726
                  lb           a0, 40(sp)
                  sh           a0, -41(sp)
                  lbu          t3, 30(sp)
                  lbu          s3, 4(sp)
                  lui          t1, 1029241
                  lbu          t4, -4(sp)
                  sh           t2, -59(sp)
                  sh           a0, -61(sp)
                  sb           t5, 58(sp)
                  lbu          s2, -38(sp)
                  sb           s9, -37(sp)
                  lbu          a7, 31(sp)
                  sb           s4, 12(sp)
                  auipc        t2, 406342
                  sb           a6, 52(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1085 #start riscv_load_store_rand_instr_stream_2
                  sh           t0, 151(sp)
                  sltu         s7, s11, s6
                  lbu          a0, 82(sp)
                  lbu          s7, -131(sp)
                  lw           tp, 247(sp)
                  sltiu        t4, a5, 543
                  andi         t0, t6, 117
                  lui          gp, 432547
                  sll          a5, a5, a6
                  add          a7, t6, s7
                  sb           s8, -143(sp)
                  nop
                  lb           s0, -166(sp)
                  sltu         t2, s0, ra
                  sh           a6, 157(sp)
                  or           t5, s2, t3
                  sb           s6, 220(sp)
                  slti         s9, s5, -1812
                  sltiu        s3, a0, -1653
                  sb           t4, -54(sp)
                  sb           a2, 104(sp)
                  auipc        t0, 322667
                  addi         tp, zero, 566
                  lbu          s6, -176(sp)
                  sw           s2, 127(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_1+809 #start riscv_load_store_hazard_instr_stream_6
                  lh           t4, -13(s2)
                  slt          t2, s3, s6
                  sh           zero, -13(s2)
                  lw           a7, -13(s2)
                  lh           gp, -13(s2)
                  sb           s1, -13(s2)
                  lh           s9, -13(s2)
                  sub          t2, s8, s5
                  add          t4, zero, a6
                  srai         t6, s2, 0
                  addi         a4, s5, 93
                  lhu          ra, -7(s2)
                  lb           zero, -7(s2)
                  lbu          sp, -7(s2)
                  lb           a4, -7(s2)
                  sb           t6, -7(s2)
                  slli         t5, s2, 18
                  lb           s3, -7(s2)
                  lh           t5, -7(s2)
                  lb           s7, -7(s2)
                  slli         s0, t1, 18
                  lhu          s9, -7(s2)
                  lh           a7, -7(s2)
                  lh           t4, -7(s2) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_1+428 #start riscv_load_store_rand_instr_stream_0
                  slli         ra, s5, 25
                  srli         t5, t2, 13
                  lbu          s6, 1(sp)
                  lh           t0, 22(sp)
                  lhu          t0, 36(sp)
                  lbu          ra, 55(sp)
                  lbu          zero, -1(sp)
                  lb           s3, 37(sp)
                  lb           a4, -43(sp)
                  auipc        t4, 251057
                  sb           a4, -63(sp)
                  slt          s3, s5, a6
                  lw           s6, 40(sp)
                  lb           t1, 43(sp)
                  sltiu        t5, a3, -21
                  lb           t2, -27(sp)
                  sb           s10, 31(sp)
                  sh           s9, 14(sp)
                  addi         t5, s8, 418
                  sb           s9, 37(sp)
                  lbu          tp, 19(sp)
                  sw           a6, 0(sp)
                  sb           a0, 9(sp)
                  lbu          ra, 51(sp)
                  auipc        s10, 1046362
                  sb           s5, 17(sp)
                  sb           a0, 59(sp)
                  and          a1, t5, a4
                  sw           t1, -60(sp)
                  lb           zero, -24(sp)
                  lh           t2, -18(sp)
                  lb           a2, -46(sp)
                  sb           a0, 61(sp)
                  xor          s9, a5, s5
                  lhu          a5, -56(sp)
                  auipc        s8, 784796
                  addi         t6, t1, -1146
                  sh           ra, 30(sp)
                  lb           t2, 51(sp)
                  add          tp, a3, a3
                  lb           tp, 33(sp)
                  lh           t2, 6(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1560 #start riscv_load_store_hazard_instr_stream_5
                  sb           a1, 11(s3)
                  lb           t1, 2(s3)
                  lb           s6, -13(s3)
                  sb           s5, -15(s3)
                  lbu          s2, -14(s3)
                  lb           s1, -14(s3)
                  lhu          a0, -14(s3)
                  xori         a0, s6, -1552
                  sb           s10, -14(s3)
                  ori          s4, a7, -1500
                  lhu          t1, -14(s3)
                  sb           s4, -14(s3)
                  sh           s2, 4(s3)
                  lbu          a7, -16(s3)
                  sh           t4, 4(s3)
                  lw           gp, -16(s3)
                  lb           s2, -16(s3)
                  sb           s1, -5(s3) #end riscv_load_store_hazard_instr_stream_5
                  la           ra, region_0+245 #start load_store_instr_stream_4
                  la           a0, region_0+1380 #start load_store_instr_stream_2
                  la           s8, region_0+341 #start load_store_instr_stream_3
                  la           a4, region_0+592 #start load_store_instr_stream_1
                  lhu          zero, -173(s8)
                  lb           t5, -55(a4)
                  lbu          tp, 192(s8)
                  sb           s9, 49(a0)
                  la           a7, region_0+893 #start load_store_instr_stream_0
                  sh           s7, -2(a0)
                  lbu          s0, -232(s8)
                  lb           t3, -12(ra)
                  lbu          s1, -56(ra)
                  lbu          t5, 641(a7)
                  lh           t6, 46(a0)
                  lbu          a2, -23(ra)
                  sb           s1, -200(a7)
                  sb           t6, -116(s8)
                  lb           t4, 62(ra)
                  sb           tp, 5(a4)
                  lb           t4, 27(a0)
                  lh           t4, 1003(a7)
                  lb           zero, 848(a7)
                  lb           s9, -58(ra)
                  sb           zero, 34(ra)
                  sb           t6, 46(s8)
                  sb           ra, -140(a7)
                  lbu          tp, 790(a7)
                  sw           a7, 48(a0)
                  lbu          s3, -36(ra)
                  lbu          s10, 54(a4)
                  sb           ra, -33(s8)
                  sb           t6, -20(ra)
                  lh           t6, -28(a4)
                  lb           a5, -44(a4)
                  lb           t4, -59(a0) #end load_store_instr_stream_2
                  lb           s2, -11(a4) #end load_store_instr_stream_1
                  sb           t1, -31(ra) #end load_store_instr_stream_4
                  lbu          t1, 202(s8) #end load_store_instr_stream_3
                  sb           s5, -366(a7) #end load_store_instr_stream_0
                  la           s0, region_1+175 #start riscv_load_store_hazard_instr_stream_2
                  lb           t2, -61(s0)
                  sh           t5, -61(s0)
                  lbu          a5, -61(s0)
                  sb           t0, -61(s0)
                  sb           t1, -61(s0)
                  lb           a1, -61(s0)
                  lbu          s9, -61(s0)
                  sb           s5, -61(s0)
                  lb           sp, -61(s0)
                  lhu          gp, -61(s0)
                  lhu          sp, -61(s0)
                  lbu          s6, -61(s0)
                  lhu          s6, -61(s0)
                  lbu          a4, -61(s0)
                  lh           t0, -61(s0)
                  srli         zero, zero, 10
                  lb           s8, -61(s0)
                  nop
                  lb           s6, -61(s0)
                  lb           s6, -61(s0) #end riscv_load_store_hazard_instr_stream_2
                  la           t2, region_0+1938 #start riscv_load_store_rand_instr_stream_4
                  slti         gp, s10, 819
                  lh           s1, -94(t2)
                  andi         a4, a2, 929
                  lbu          s7, 7(t2)
                  sb           s4, -222(t2)
                  sh           a6, 32(t2)
                  addi         a7, a5, 1483
                  ori          zero, ra, 781
                  sh           s5, -218(t2)
                  and          s8, a1, tp
                  or           s11, zero, gp
                  sb           s3, -121(t2)
                  andi         t5, a1, -196
                  lbu          t4, -203(t2)
                  sltiu        t0, ra, -409
                  sb           t1, -75(t2)
                  lb           s11, -205(t2)
                  lui          s4, 391311
                  add          a7, t6, a0
                  xori         s4, zero, -1853
                  lbu          t6, -15(t2) #end riscv_load_store_rand_instr_stream_4
                  la           s11, region_0+1627 #start riscv_load_store_hazard_instr_stream_1
                  sb           t3, -1622(s11)
                  sra          a4, s8, s10
                  lbu          gp, -1622(s11)
                  andi         t3, t4, 1843
                  sb           a5, -1622(s11)
                  lbu          t2, -1622(s11)
                  sh           t4, -1197(s11)
                  lb           a4, -1197(s11)
                  lh           a7, -1197(s11)
                  lb           t3, -1197(s11)
                  sh           t1, -1197(s11)
                  sb           a5, -1197(s11)
                  lhu          t6, -1197(s11)
                  lb           t2, -1197(s11)
                  lb           s8, -1197(s11)
                  lh           a5, -1197(s11)
                  slli         s6, sp, 29
                  sb           t3, -1197(s11) #end riscv_load_store_hazard_instr_stream_1
                  la           s3, region_0+61 #start load_store_instr_stream_2
                  lb           s4, 61(s3)
                  la           t4, region_0+1391 #start load_store_instr_stream_0
                  lbu          a2, 10(s3)
                  lhu          s9, 19(t4)
                  sw           zero, -53(s3)
                  la           a1, region_0+827 #start load_store_instr_stream_1
                  lh           sp, 17(s3)
                  lhu          t5, 157(a1)
                  lb           gp, 4(t4)
                  lhu          s2, -149(a1)
                  lb           gp, 134(a1)
                  lb           ra, 58(t4)
                  lb           a7, -6(t4)
                  lw           gp, -33(s3)
                  lb           s8, 89(a1)
                  lbu          s10, 24(t4)
                  lb           s6, -244(a1)
                  lhu          s6, 61(t4)
                  lh           s8, -49(s3)
                  lbu          ra, -63(t4)
                  lbu          s9, 18(s3)
                  lw           t0, 13(t4)
                  lbu          t2, 28(a1)
                  lb           s11, 110(a1) #end load_store_instr_stream_1
                  sb           s4, -54(s3) #end load_store_instr_stream_2
                  lh           s2, 63(t4) #end load_store_instr_stream_0
                  la           s0, region_0+1899 #start riscv_load_store_rand_instr_stream_5
                  sltiu        t0, s6, -126
                  sb           s6, -40(s0)
                  ori          s6, gp, 2008
                  lbu          s7, 75(s0)
                  sh           t3, -11(s0)
                  or           zero, a7, a1
                  sub          s1, t2, t0
                  srai         s7, a6, 17
                  sub          a1, a0, t4
                  and          s1, t1, s4
                  sb           t6, -170(s0)
                  sb           a4, 62(s0)
                  xori         t5, a2, 770
                  lb           t1, -111(s0)
                  lh           gp, -169(s0)
                  sltu         zero, s10, a6
                  xor          s10, sp, a3
                  addi         tp, s10, -422
                  xor          t4, s3, zero
                  lb           t5, -8(s0)
                  andi         t1, a4, -422
                  srl          s8, a4, s8
                  sb           a0, -202(s0)
                  lbu          s9, -110(s0)
                  lb           a2, -78(s0)
                  lb           t4, 64(s0) #end riscv_load_store_rand_instr_stream_5
                  slti         s3, tp, -1887
                  ori          t0, a1, 109
                  lui          t5, 167652
                  srli         t6, t3, 11
                  srai         s1, t2, 1
                  sra          s3, s9, s6
                  bge          t2, tp, 17f
                  sltu         s1, a6, ra
                  srai         s2, s8, 1
                  blt          s7, tp, 19f
                  srli         t2, a5, 5
                  sltiu        s11, s0, -1247
                  xori         a1, s2, -848
                  ori          t2, t0, -647
                  beq          t6, s10, 18f
                  lui          t2, 595576
                  lui          a1, 746993
17:               nop
18:               auipc        tp, 573254
19:               auipc        t5, 110554
                  sub          s6, a5, s8
                  add          s7, gp, s8
                  or           s6, t1, t6
                  srl          t0, s0, s5
                  blt          s5, a4, 26f
                  xor          a2, ra, s6
26:               and          zero, zero, s9
                  sltiu        t0, t1, -1218
                  slli         t0, t0, 3
                  xori         s7, s1, -1054
                  xori         a2, t3, 596
                  sra          s2, a0, s10
                  slt          s7, tp, a3
                  bge          s8, t1, 34f
34:               sll          t5, t3, s10
                  slti         s1, s8, -1312
                  blt          sp, a5, 48f
                  slt          t2, s10, s8
                  sll          a4, ra, s0
                  srli         tp, a4, 21
                  or           s1, s6, t0
                  sltu         a0, a5, s9
                  auipc        s8, 593108
                  bltu         s10, s7, 46f
                  slti         s9, t6, 274
                  beq          s1, s3, 58f
46:               and          s11, s11, s9
                  bgeu         t2, a2, 53f
48:               add          s4, s0, s3
                  xor          a4, s10, a0
                  sltu         s9, tp, t2
                  sub          s7, s5, a1
                  bne          gp, a6, 57f
53:               sltiu        s3, s2, 1378
                  nop
                  slt          a5, s8, s0
                  slti         a2, t2, -1851
57:               lui          s7, 622344
58:               sltiu        a1, s0, -864
                  lui          a2, 1026799
                  beq          s7, t2, 71f
                  addi         a0, ra, 1384
                  bge          a2, a1, 67f
                  sltu         a2, tp, t1
                  slti         a0, a3, -1072
                  sra          s8, s6, a4
                  sra          zero, a3, s3
67:               sub          t0, gp, a7
                  blt          t4, s1, 72f
                  and          s7, zero, a5
                  ori          a2, zero, 1777
71:               slli         a7, s3, 7
72:               xor          s9, tp, s3
                  srai         sp, s8, 12
                  sra          s7, tp, s8
                  slt          s10, a1, s1
                  sltiu        a5, a2, -365
                  andi         a2, t4, -942
                  or           a7, s8, t0
                  lui          zero, 220501
                  slt          s1, zero, s10
                  srai         t3, t4, 1
                  bne          s5, a3, 99f
                  srli         ra, t6, 18
                  sra          t6, t5, s5
                  sltu         tp, a4, s6
                  addi         s4, s2, -861
                  bgeu         a0, t4, 102f
                  nop
                  sltu         a5, s11, s11
                  addi         gp, t6, 1842
                  blt          sp, t5, 93f
                  sltu         ra, s4, t3
93:               bgeu         s6, tp, 94f
94:               and          t2, s9, s11
                  lui          s6, 716007
                  and          s10, s2, s11
                  andi         a4, s3, -434
                  andi         s7, t3, 306
99:               blt          a7, s11, 112f
                  bne          t3, a5, 113f
                  addi         s8, t5, -660
102:              addi         a1, sp, -895
                  andi         ra, a3, -303
                  sra          s11, a0, a5
                  bgeu         s8, a6, 108f
                  addi         a4, a2, -1654
                  slti         s0, s11, 223
108:              blt          s10, a4, 119f
                  blt          a6, s3, 126f
                  sltiu        t0, t6, -1891
                  sltiu        a4, a4, -1805
112:              bge          t2, a2, 128f
113:              slli         a0, t3, 19
                  and          tp, s11, a0
                  srli         s6, gp, 24
                  bne          s2, s8, 126f
                  xori         a1, zero, -1539
                  bne          t4, t6, 125f
119:              xori         a7, a5, -1763
                  ori          t5, a3, 1361
                  ori          s2, a5, 1212
                  bgeu         s6, s0, 132f
                  ori          s8, t5, -1438
                  addi         s7, tp, -763
125:              srai         t2, s5, 9
126:              bgeu         s0, sp, 130f
                  xor          s0, s11, s6
128:              xor          s0, s0, s9
                  bge          s10, a6, 137f
130:              bne          t0, s10, 137f
                  lui          s3, 956173
132:              sll          a5, s0, gp
                  srli         t4, t0, 19
                  and          zero, t0, tp
                  auipc        a7, 432189
                  sra          a7, s1, a4
137:              nop
                  slt          a1, a2, s11
                  sll          sp, s8, a0
                  sra          a4, zero, s7
                  bltu         s7, a2, 160f
                  slli         zero, s5, 12
                  or           s10, a3, s7
                  xori         tp, t5, 1867
                  lui          ra, 639378
                  xor          a2, s9, sp
                  or           tp, t1, sp
                  bne          s0, s5, 152f
                  bltu         s6, s2, 159f
                  slt          a5, t1, s9
                  srli         t3, a0, 31
152:              slti         sp, s3, -136
                  srli         gp, gp, 6
                  bgeu         a4, a4, 167f
                  bltu         a0, s4, 162f
                  bltu         a5, s9, 158f
                  add          gp, a1, t4
158:              xor          t6, a6, a5
159:              xor          s11, zero, s7
160:              slti         a5, a6, -722
                  srli         zero, a5, 1
162:              blt          a7, s9, 175f
                  auipc        s6, 870498
                  bltu         t4, a3, 169f
                  sll          s8, ra, zero
                  slt          t5, s5, s3
167:              andi         s9, s9, 1914
                  beq          a0, t3, 187f
169:              add          t5, t4, s2
                  lui          a7, 295662
                  beq          a2, s8, 178f
                  sltu         t4, t3, t0
                  srli         t6, s9, 6
                  and          s7, a1, s4
175:              ori          t2, s10, -1337
                  auipc        sp, 880117
                  bgeu         s3, gp, 185f
178:              sub          gp, s9, gp
                  auipc        s6, 142071
                  auipc        a1, 786715
                  xori         s10, a7, 207
                  blt          t2, sp, 195f
                  or           a1, a6, ra
                  bltu         gp, t6, 201f
185:              blt          gp, a5, 201f
                  auipc        s7, 50012
187:              sltiu        zero, s9, -924
                  xori         a4, s9, 1174
                  addi         t2, a0, 826
                  sub          a2, s11, s10
                  beq          s9, t2, 201f
                  srli         a0, t2, 2
                  blt          s5, a0, 205f
                  add          t6, s5, t4
195:              add          gp, t1, t0
                  add          a2, a2, zero
                  add          a2, s10, a0
                  lui          s3, 763676
                  add          s1, a4, s5
                  ori          tp, t4, 1725
201:              ori          tp, a7, -805
                  slt          zero, s9, t5
                  slti         tp, t1, 1905
                  and          a5, a7, s9
205:              bltu         s6, s7, 216f
                  nop
                  or           t2, sp, a3
                  ori          s1, s4, 564
                  beq          a2, sp, 210f
210:              xori         a2, t6, -3
                  ori          s2, s6, 1917
                  andi         t4, a4, 1256
                  srai         t0, a0, 13
                  bge          a6, s11, 217f
                  sra          s7, s3, ra
216:              ori          t1, a5, 755
217:              or           a0, s11, s11
                  bltu         s1, s8, 233f
                  slt          t4, s11, s4
                  addi         a5, s0, -1720
                  blt          a1, t0, 223f
                  blt          s11, t6, 233f
223:              ori          s9, a2, 1255
                  bltu         ra, a1, 225f
225:              bgeu         t2, a3, 230f
                  sltiu        zero, a7, -353
                  andi         gp, a6, -421
                  sll          a4, zero, a0
                  and          t1, s11, a2
230:              addi         gp, t4, 1964
                  bne          tp, s0, 237f
                  andi         s4, zero, -937
233:              srai         s1, a5, 18
                  srai         ra, a1, 8
                  blt          s4, a1, 245f
                  addi         t5, a4, 842
237:              addi         s7, s1, 1775
                  bgeu         ra, sp, 249f
                  lui          a5, 1028983
                  srai         s4, s10, 16
                  sra          ra, s10, s1
                  sll          s11, t3, t0
                  add          ra, a1, s6
                  slti         t0, s1, -1232
245:              ori          t6, s2, 105
                  slt          sp, zero, a5
                  bgeu         a2, s6, 250f
                  blt          s1, sp, 252f
249:              andi         t0, s7, 1672
250:              auipc        t5, 561131
                  sltu         s3, a0, s11
252:              sltiu        ra, a3, -1931
                  la           sp, region_0+881 #start riscv_load_store_hazard_instr_stream_4
                  lhu          tp, 807(sp)
                  lbu          t0, 282(sp)
                  lb           s7, 282(sp)
                  sb           gp, 433(sp)
                  lb           s2, 433(sp)
                  slli         t5, t2, 30
                  sb           t2, 433(sp)
                  lbu          s11, -208(sp)
                  lb           a0, -208(sp)
                  lbu          s2, -208(sp)
                  and          gp, s11, s3
                  lbu          a1, -208(sp)
                  lb           s4, 932(sp)
                  sw           s11, -61(sp)
                  lhu          s1, -613(sp)
                  sh           t6, -613(sp)
                  sra          t5, t4, zero
                  add          s4, ra, t6
                  lb           t0, 918(sp)
                  sb           s5, -758(sp)
                  addi         s4, s0, 214
                  lbu          ra, 1051(sp)
                  sb           a5, -583(sp)
                  lbu          s4, -604(sp)
                  auipc        t1, 528622
                  lb           zero, -400(sp) #end riscv_load_store_hazard_instr_stream_4
                  slt          zero, t0, a7
                  slt          s0, s0, s6
                  and          a7, ra, a2
                  lui          a0, 867509
                  nop
                  and          t1, a4, s9
                  add          t4, tp, sp
                  addi         s4, s10, -1784
                  addi         ra, a7, -286
                  lui          s1, 899264
                  or           s2, s9, a1
                  slli         sp, a2, 20
                  xor          s9, s0, s2
                  sra          t1, s7, t5
                  sll          a1, s7, t0
                  andi         s7, s8, -913
                  beq          ra, s8, 273f
                  slli         ra, a0, 7
                  lui          t0, 1032466
                  auipc        zero, 408772
273:              andi         s7, s6, -1869
                  sll          s1, a6, s5
                  bne          a3, s4, 292f
                  add          s6, t0, s3
                  bgeu         a4, t2, 287f
                  slli         zero, t0, 30
                  bge          s4, s8, 298f
                  sra          gp, t3, s9
                  auipc        t3, 523493
                  add          s1, s9, s2
                  sll          t2, s7, s4
                  sltu         a7, s7, a1
                  srl          tp, t6, t4
                  sll          s3, t6, zero
287:              slti         a4, a0, 1328
                  auipc        tp, 539635
                  bltu         a2, t2, 296f
                  bge          s10, s4, 291f
291:              srli         t5, a3, 26
292:              and          a5, s10, t1
                  bgeu         t6, t6, 295f
                  sra          s0, zero, a1
295:              slt          a4, s8, s0
296:              sub          a2, a3, s5
                  add          gp, zero, zero
298:              sltiu        t5, t3, -237
                  sll          a4, t0, a2
                  xori         s10, s0, 1931
                  srl          a5, a6, s9
                  srai         s7, a3, 31
                  auipc        s11, 814878
                  beq          s9, t0, 319f
                  slli         s3, s0, 13
                  sltu         t5, sp, s6
                  bne          s0, zero, 312f
                  bgeu         a7, s5, 325f
                  beq          s5, a2, 313f
                  bltu         s9, s4, 315f
                  add          a5, a0, a1
312:              ori          a2, t1, 211
313:              auipc        s8, 284473
                  nop
315:              sub          s7, gp, sp
                  sltu         t6, t4, t5
                  sltiu        s2, ra, 1002
                  sub          s2, zero, t0
319:              sub          t3, t0, a4
                  blt          t2, zero, 330f
                  xor          t3, a6, t0
                  bgeu         s3, t4, 333f
                  xor          t4, a7, s10
                  beq          zero, a5, 337f
325:              srl          s7, a4, a2
                  srl          s2, t0, t2
                  beq          s11, a4, 335f
                  lui          t0, 638773
                  srl          sp, a2, ra
330:              ori          s10, t5, -58
                  sra          s2, t6, t2
                  addi         tp, s6, 953
333:              add          sp, sp, a2
                  add          t3, a0, a6
335:              bltu         t3, s4, 346f
                  auipc        s0, 1018032
337:              sltiu        sp, t5, 1002
                  nop
                  slti         a2, a4, 267
                  sltu         t5, tp, a5
                  nop
                  srl          a4, zero, a7
                  sltu         a7, zero, s7
                  beq          s10, t0, 348f
                  srai         s1, a6, 5
346:              sra          a0, s10, a5
                  sll          a1, s0, t6
348:              andi         a4, sp, -712
                  sltu         s3, a1, t3
                  sra          s11, a5, a0
                  addi         t2, s11, -1254
                  ori          ra, t6, -931
                  sll          s11, s6, t4
                  blt          s3, s10, 360f
                  addi         s6, a5, 2003
                  sltu         t4, s4, s5
                  nop
                  sltiu        s4, t0, -1932
                  blt          gp, a4, 371f
360:              sra          s1, s4, t6
                  slt          a0, a3, a7
                  srai         s1, s8, 17
                  slli         a7, t2, 9
                  srai         tp, a5, 27
                  slli         t2, s3, 23
                  sll          s9, s8, s8
                  lui          t3, 943367
                  nop
                  or           t4, a2, a7
                  sltiu        s8, a2, 387
371:              xori         t6, s8, 1043
                  slt          a4, t5, s2
                  bgeu         sp, a5, 374f
374:              srai         s1, s2, 3
                  srl          s8, s2, s2
                  sll          t2, s5, s0
                  sra          a4, t2, ra
                  bne          t1, gp, 381f
                  sltu         a1, s3, s9
                  bltu         t5, a5, 393f
381:              slli         a7, s6, 10
                  sltiu        ra, s7, 405
                  xor          t5, s8, s0
                  add          tp, s1, s10
                  sra          s7, a6, s1
                  slti         a5, s2, 785
                  srl          s8, ra, t4
                  bne          a7, s7, 405f
                  sltu         s6, s0, t0
                  sll          a1, a6, t0
                  and          t3, a5, t6
                  srai         a5, a7, 25
393:              slt          t3, s3, a1
                  andi         t5, s9, -1499
                  srli         t0, tp, 2
                  bge          s2, s10, 400f
                  sltu         tp, s11, s1
                  sltiu        s7, tp, 856
                  xori         s4, sp, -274
400:              andi         a4, s4, -733
                  andi         sp, t3, 1661
                  sltu         ra, s1, t6
                  sltu         a4, t1, t5
                  lui          s4, 628419
405:              slli         s11, a0, 5
                  andi         a2, t6, 1102
                  srli         zero, s6, 23
                  sra          s9, s9, a4
                  ori          a1, sp, 1580
                  bltu         t5, s5, 423f
                  addi         a1, t5, -728
                  sltiu        s6, t5, -1734
                  auipc        t2, 371780
                  bne          zero, a0, 425f
                  and          ra, t0, s4
                  bgeu         s0, sp, 432f
                  sll          a2, s8, a1
                  sltu         s3, a3, s11
                  and          s0, s7, s6
                  ori          tp, s7, 1950
                  sra          s2, t5, s10
                  sub          a0, t1, s7
423:              bltu         t0, t5, 433f
                  sll          s1, a4, a7
425:              slti         ra, a3, 94
                  slti         tp, a7, -1560
                  bgeu         s10, s3, 434f
                  slli         s3, sp, 28
                  bne          t0, a3, 431f
                  or           a0, s10, s1
431:              xori         s1, a6, 606
432:              sub          gp, s5, s1
433:              andi         sp, s1, 1025
434:              addi         t5, t5, -1628
                  srl          a2, t1, t1
                  xori         s3, t3, -1811
                  ori          tp, zero, 1637
                  or           t3, sp, a1
                  srl          a7, a2, a6
                  or           t5, t6, ra
                  andi         s6, gp, 612
                  sub          s11, a4, s0
                  slt          s9, a7, tp
                  slli         s2, tp, 18
                  or           s2, s2, s1
                  beq          a4, t3, 449f
                  sltu         t6, s9, a7
                  or           s2, t2, a5
449:              sub          s9, s2, ra
                  slti         a4, gp, 1155
                  bltu         s0, s4, 458f
                  xor          t5, a2, tp
                  sll          s2, t4, zero
                  xor          zero, s9, a0
                  sltiu        s4, a3, 1713
                  xori         a1, ra, 569
                  sra          sp, a0, gp
458:              bgeu         s4, t1, 471f
                  sltu         a7, s10, a4
                  or           s6, s7, t3
                  blt          s0, t6, 462f
462:              addi         a4, s5, -1327
                  srli         a1, a0, 31
                  xori         s6, s5, -1227
                  andi         a7, a2, 1257
                  xori         s2, a0, 753
                  andi         s3, s11, -1974
                  srl          s8, t6, s11
                  sub          a4, a0, a6
                  lui          s9, 246143
471:              bne          t0, sp, 475f
                  bne          zero, gp, 475f
                  ori          t5, s9, 1781
                  bltu         a6, a3, 489f
475:              sra          s8, a5, s10
                  bne          a0, s5, 477f
477:              sra          a1, a2, zero
                  srai         a2, a3, 28
                  sltiu        s10, s4, -1970
                  srai         t4, gp, 4
                  sll          s6, t0, t1
                  srl          s3, s4, a2
                  auipc        s9, 220323
                  lui          s2, 889014
                  srai         t2, t0, 21
                  xor          sp, t4, s9
                  lui          t0, 63863
                  sub          ra, a3, ra
489:              and          gp, s3, t1
                  bne          s6, a4, 492f
                  bge          t3, s5, 504f
492:              andi         s4, t6, -1479
                  slti         s11, s10, -1560
                  sltu         a1, s10, t0
                  sll          s8, gp, s2
                  add          sp, sp, s3
                  bltu         s8, t1, 507f
                  sltiu        s7, a2, 775
                  sub          s8, a2, s3
                  beq          s8, a3, 512f
                  nop
                  xor          gp, s10, t4
                  slt          t5, s0, s5
504:              sub          tp, s3, tp
                  xor          t0, a1, t4
                  bgeu         s4, s5, 516f
507:              ori          zero, t5, -669
                  add          s2, ra, gp
                  bne          t0, tp, 514f
                  bne          ra, gp, 514f
                  and          t0, s7, t0
512:              sltu         gp, gp, s2
                  bne          ra, s3, 523f
514:              bltu         t5, s4, 525f
                  add          s2, s0, a6
516:              addi         t1, t6, 373
                  andi         s6, s2, 400
                  nop
                  nop
                  addi         a7, s10, -503
                  bge          a3, t2, 523f
                  slli         ra, a2, 21
523:              srai         tp, s2, 23
                  slti         tp, s4, 730
525:              bltu         ra, a7, 531f
                  nop
                  andi         a7, t0, 30
                  bne          a3, s7, 531f
                  slt          t1, t3, a4
                  beq          sp, s2, 537f
531:              blt          s4, s9, 544f
                  sll          s6, s1, zero
                  sra          s1, t4, s7
                  add          sp, s7, t2
                  bgeu         s5, gp, 554f
                  bltu         a6, s10, 547f
537:              bgeu         a5, a5, 553f
                  add          s10, t1, a5
                  add          t5, a4, s9
                  bge          t2, s9, 548f
                  and          s11, a1, a4
                  lui          s8, 406940
                  bgeu         sp, gp, 560f
544:              bge          s2, a6, 555f
                  blt          zero, a0, 550f
                  slt          a0, t6, t0
547:              beq          s8, s3, 564f
548:              blt          a7, s9, 552f
                  bgeu         s5, a5, 551f
550:              srli         s10, s9, 9
551:              lui          t6, 823056
552:              xori         t6, zero, -375
553:              ori          a2, sp, -480
554:              bltu         zero, s6, 569f
555:              bge          s1, t2, 566f
                  srli         s3, s2, 3
                  srli         s3, a3, 3
                  addi         tp, t1, 1818
                  sll          a0, s6, t3
560:              slli         s10, a6, 27
                  andi         s4, zero, 384
                  and          gp, s3, tp
                  or           s0, a6, s8
564:              or           t5, s7, a7
                  add          t3, a5, t3
566:              blt          a0, s10, 576f
                  xori         s8, s0, -1840
                  lui          s4, 75909
569:              bgeu         a4, s7, 570f
570:              srl          s6, a1, tp
                  srli         s11, a1, 28
                  bge          a1, a7, 577f
                  sll          a1, ra, t2
                  srl          a5, a4, s8
                  auipc        tp, 391802
576:              srli         s7, t3, 17
577:              bne          s1, s0, 579f
                  slt          t1, t6, a2
579:              slli         t3, a7, 2
                  xori         s4, a0, -917
                  xori         gp, t6, -1642
                  xori         s2, a4, -1633
                  xor          ra, t6, a2
                  or           a2, s11, s2
                  auipc        s0, 670580
                  bne          t3, a7, 589f
                  sltu         a0, a5, t5
                  sltiu        s0, sp, 1078
589:              beq          t2, gp, 594f
                  sra          s3, a0, ra
                  srai         ra, t1, 19
                  bne          zero, s5, 605f
                  sra          s7, s3, s1
594:              srai         s1, a6, 30
                  lui          a4, 899734
                  slt          t0, t0, s6
                  sltu         a1, a6, a3
                  slt          a1, ra, s8
                  lui          s1, 717817
                  srli         a4, a4, 22
                  auipc        a5, 54264
                  bne          t5, a3, 621f
                  beq          a7, s5, 613f
                  nop
605:              ori          t0, s3, 792
                  sltiu        a7, t5, 1562
                  and          zero, t1, s8
                  slli         t6, s3, 18
                  beq          s7, s8, 619f
                  bltu         a1, s9, 623f
                  xor          t2, s1, a1
                  addi         s6, s10, -279
613:              ori          a2, s7, -122
                  lui          t4, 452953
                  sltiu        a7, a2, 1450
                  srai         s2, ra, 11
                  sll          t1, s6, s8
                  slli         t5, a0, 6
619:              nop
                  xor          a2, tp, s8
621:              slli         zero, a3, 26
                  srai         gp, zero, 10
623:              nop
                  sub          s4, t4, tp
                  nop
                  sltu         tp, a2, t4
                  xor          gp, t3, a2
                  srai         a1, s4, 6
                  xori         a5, s11, 1317
                  slti         sp, sp, 416
                  bltu         t1, s9, 632f
632:              lui          s0, 587078
                  add          s9, gp, a4
                  lui          s2, 799047
                  auipc        sp, 918023
                  sra          s0, a3, a1
                  andi         s0, t1, -1209
                  blt          ra, ra, 649f
                  bge          a6, a0, 652f
                  nop
                  sltu         t4, t6, s6
                  lui          s3, 384621
                  andi         t1, s2, 1337
                  sub          s10, a1, s8
                  bne          s4, t0, 657f
                  sll          ra, t5, t6
                  blt          sp, sp, 650f
                  slli         a5, s7, 11
649:              addi         a4, a1, -1243
650:              xor          t2, s6, a6
                  or           a1, sp, zero
652:              slti         tp, a6, -1602
                  bltu         a1, t2, 659f
                  srai         a7, t0, 8
                  srli         t1, s9, 17
                  sub          s3, a3, a6
657:              sub          gp, s5, t2
                  lui          s1, 740779
659:              beq          s7, s7, 663f
                  bgeu         zero, a5, 668f
                  addi         s9, a0, 313
                  srai         a0, s6, 13
663:              add          a5, s2, t5
                  bne          s11, a7, 668f
                  srli         s8, s11, 3
                  srl          s1, zero, s8
                  addi         zero, a2, -1789
668:              sltiu        t2, t0, 1374
                  addi         t0, s3, -777
                  slt          t0, s0, t3
                  srli         gp, s6, 17
                  sra          t2, t4, a7
                  srai         a0, ra, 16
                  sltiu        a4, s9, 815
                  beq          a2, a3, 679f
                  sltiu        sp, t3, 889
                  slt          ra, s1, a4
                  lui          a7, 528024
679:              bgeu         s10, s10, 686f
                  bgeu         a2, t2, 697f
                  bne          t3, s4, 692f
                  slt          sp, s3, a3
                  lui          t3, 826626
                  xori         a5, s0, 955
                  bltu         gp, tp, 702f
686:              srl          t1, a0, a4
                  xor          s2, ra, s7
                  bne          a2, s2, 704f
                  slti         s1, ra, -345
                  srl          a7, s9, a6
                  or           sp, s1, a6
692:              add          t1, t6, t2
                  ori          s4, s5, -818
                  slti         s2, s5, -782
                  srai         s3, s0, 11
                  sll          zero, s10, s1
697:              xori         a5, ra, -1798
                  sltiu        t2, s6, -296
                  blt          a3, s8, 706f
                  add          s0, s2, a6
                  auipc        s7, 998281
702:              bgeu         s8, s10, 703f
703:              sub          s10, gp, sp
704:              sub          s4, a1, t1
                  or           t0, t0, s9
706:              sltiu        s1, a5, -1959
                  xor          s6, t2, a1
                  srli         zero, ra, 6
                  auipc        a5, 259500
                  andi         t0, t0, -2003
                  lui          s11, 226239
                  andi         s10, a0, 1582
                  ori          zero, t0, -949
                  bltu         zero, sp, 718f
                  bge          s7, s0, 725f
                  nop
                  andi         s11, s3, 1561
718:              add          t4, a6, a2
                  srli         a7, a3, 17
                  sra          zero, a6, a4
                  slli         t2, t5, 10
                  srl          s11, s2, a4
                  nop
                  bge          a1, a5, 735f
725:              xor          t2, gp, a2
                  slti         t0, a5, 1479
                  sub          s10, a5, a1
                  srai         s8, s1, 18
                  srl          s2, s3, a0
                  or           t6, t1, s7
                  srl          a4, s5, a5
                  nop
                  slti         t3, a3, -31
                  addi         s2, a1, 1938
735:              blt          a1, s0, 743f
                  sra          s11, a7, a3
                  slt          s8, s1, a7
                  sltu         s7, a7, a1
                  srai         a5, a4, 4
                  beq          gp, t1, 743f
                  sltu         s1, s0, t1
                  blt          s0, a1, 743f
743:              sll          t2, t2, t6
                  lw           s6, 4(a3)
                  slt          s4, t2, a5
                  srli         s7, t5, 22
                  nop
                  addi         a3, a3, 20
                  slli         a2, a5, 17
                  xori         t1, t3, -1505
                  slt          t0, t3, s1
                  nop
                  sltiu        t1, s7, 2011
1383:             addi x11, x22, 1
1383:             jalr x11, x11, 0
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
mmode_intr_vector_1:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x21, x13, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x25, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x25, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x25, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x25, x31, ecall_handler
                  li x31, 0x1
                  beq x25, x31, instr_fault_handler
                  li x31, 0x5
                  beq x25, x31, load_fault_handler
                  li x31, 0x7
                  beq x25, x31, store_fault_handler
                  li x31, 0xc
                  beq x25, x31, pt_fault_handler
                  li x31, 0xd
                  beq x25, x31, pt_fault_handler
                  li x31, 0xf
                  beq x25, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x13, x21, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
