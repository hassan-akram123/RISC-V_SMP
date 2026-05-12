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
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x25, kernel_stack_end

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
                  li x0, 0x9671bb2a
                  li x1, 0x7
                  li x2, 0x64a74349
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xfa691a85
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x1
                  li x11, 0x0
                  li x12, 0xc
                  li x13, 0x80000000
                  li x14, 0xfdd89fa9
                  li x15, 0xfd804525
                  li x16, 0xfbe8a62c
                  li x17, 0x80000000
                  li x18, 0xf8450977
                  li x19, 0xfe870754
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xfb94dafa
                  li x24, 0xb
                  li x26, 0xa
                  li x27, 0xe
                  li x28, 0x0
                  li x29, 0xfa1d7870
                  li x30, 0x80000000
                  li x31, 0xb
                  la x23, user_stack_end
main:             la           a7, region_1+911 #start load_store_instr_stream_2
                  la           a3, region_1+1330 #start load_store_instr_stream_0
                  lbu          s10, -201(a7)
                  lb           s8, 20(a3)
                  lb           s2, 251(a7)
                  la           tp, region_1+1237 #start load_store_instr_stream_1
                  lh           t3, -67(tp)
                  la           t5, region_1+1834 #start load_store_instr_stream_4
                  sb           t4, 116(a7)
                  lbu          t3, -38(a3)
                  la           a5, region_1+1665 #start load_store_instr_stream_3
                  sb           a1, -12(a5)
                  lb           s10, -157(t5)
                  lbu          a4, 58(tp)
                  sh           zero, -90(t5)
                  sh           a4, -89(tp)
                  lw           t3, -14(a3)
                  sb           s5, 20(a3)
                  lbu          s2, -236(a7)
                  lbu          a0, -203(tp)
                  lb           t6, -182(a7)
                  sb           a7, 53(a3)
                  sb           t0, 46(a5)
                  lbu          s0, 37(a3)
                  lb           zero, -38(a5)
                  lhu          s0, 3(a5)
                  lbu          a6, -27(t5)
                  sb           a7, -136(tp)
                  sb           a7, -74(a7)
                  lhu          a0, -255(tp)
                  lhu          a4, -10(t5)
                  lb           a4, 163(a7)
                  lbu          a2, -22(a5)
                  sb           gp, -9(a3)
                  lh           t1, -247(a7)
                  lw           s2, 14(a3)
                  lhu          s8, -33(a5)
                  lb           s6, 72(tp) #end load_store_instr_stream_1
                  sb           a3, -253(a7) #end load_store_instr_stream_2
                  lhu          gp, -12(a3)
                  sb           t0, 10(a5)
                  sb           s8, 52(a5) #end load_store_instr_stream_3
                  sb           t2, 143(t5) #end load_store_instr_stream_4
                  sb           t2, -52(a3) #end load_store_instr_stream_0
                  la           s8, region_0+418 #start riscv_load_store_rand_instr_stream_2
                  lb           tp, -8(s8)
                  lb           t0, 5(s8)
                  sltiu        t0, t3, 1192
                  slti         s0, s11, 257
                  sub          s4, t2, t5
                  xori         s10, s11, -1787
                  ori          zero, t0, 1469
                  sltu         s5, s6, s7
                  srai         a6, s6, 0
                  lhu          s10, 0(s8)
                  sltu         t4, tp, s2
                  sub          a0, a1, a2
                  lb           t2, -16(s8)
                  xor          a1, s6, a1
                  lhu          t4, -4(s8)
                  sb           s8, -8(s8)
                  sltiu        a2, t1, 1012
                  nop
                  sb           s2, -16(s8)
                  and          gp, s4, a1
                  sb           sp, -10(s8)
                  lhu          t6, -2(s8)
                  sll          a4, s0, sp
                  lb           t1, 1(s8)
                  andi         gp, a1, -1003
                  andi         t1, s6, 872
                  or           t3, zero, s5
                  add          a0, a0, a0
                  sub          s10, ra, sp
                  addi         a1, a4, 1764
                  sll          s1, s3, s6
                  lhu          tp, -10(s8)
                  sltiu        t6, sp, -1482
                  lbu          ra, 14(s8)
                  slli         a1, s9, 19
                  sb           s7, -8(s8)
                  and          a0, s8, tp
                  srl          t4, s11, a5
                  xor          t0, a0, s3
                  sh           s2, -6(s8) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+1969 #start riscv_load_store_hazard_instr_stream_2
                  sh           tp, -17(t5)
                  lbu          s8, -19(t5)
                  lb           s1, -4(t5)
                  sh           s8, -19(t5)
                  sb           a5, 7(t5)
                  lb           t4, 7(t5)
                  sh           zero, -15(t5)
                  lbu          a2, -15(t5)
                  lb           s6, -15(t5)
                  sb           s8, 10(t5)
                  sb           s1, 10(t5)
                  lhu          s3, 7(t5)
                  lb           s5, -24(t5)
                  ori          s6, s0, 985
                  lbu          t1, -24(t5)
                  lbu          a4, 18(t5)
                  lw           a4, -33(t5)
                  sb           s8, -33(t5)
                  lb           t0, -58(t5) #end riscv_load_store_hazard_instr_stream_2
                  la           s3, region_0+1471 #start load_store_instr_stream_2
                  lb           s5, 160(s3)
                  la           s10, region_0+317 #start load_store_instr_stream_3
                  lbu          t6, -246(s3)
                  la           t2, region_0+171 #start load_store_instr_stream_1
                  lbu          s1, -165(s3)
                  lb           zero, -93(s3)
                  sh           t0, 219(t2)
                  la           t5, region_0+1101 #start load_store_instr_stream_0
                  sw           a5, -239(s3)
                  lbu          a1, 101(t2)
                  sb           a6, 1067(s10)
                  la           a2, region_0+1152 #start load_store_instr_stream_4
                  lbu          t6, -33(t5)
                  sb           a7, -35(t5)
                  lhu          sp, -193(s3)
                  lb           s1, 52(t5)
                  lbu          ra, 144(t2)
                  sb           t1, 74(t2)
                  lbu          a1, 21(t5)
                  lb           t1, 57(t2)
                  lw           s0, -21(t5)
                  lb           a6, 284(s10)
                  lb           s1, 0(a2)
                  lbu          a0, 28(t5)
                  sb           s10, -16(a2)
                  lw           t0, -61(t5)
                  lbu          a3, 114(s3)
                  lbu          zero, 101(s10)
                  lbu          gp, 54(t5)
                  lb           a7, 1305(s10)
                  sb           a5, -200(s3)
                  lw           a4, 527(s10)
                  lbu          a3, 843(s10)
                  lb           t3, 126(t2)
                  lbu          s4, 9(a2)
                  sh           zero, -169(t2)
                  lb           s1, 441(s10)
                  sh           s3, -2(a2)
                  lb           a0, 49(s3)
                  lbu          a7, -16(a2)
                  sb           tp, -9(a2) #end load_store_instr_stream_4
                  sw           s2, 1575(s10)
                  sh           s9, 481(s10)
                  lbu          a5, -64(t5)
                  sw           a3, -135(t2) #end load_store_instr_stream_1
                  sb           t4, 88(s3) #end load_store_instr_stream_2
                  sb           s5, 30(s10) #end load_store_instr_stream_3
                  sb           a1, -26(t5) #end load_store_instr_stream_0
                  la           s6, region_1+1347 #start riscv_load_store_hazard_instr_stream_1
                  lh           sp, -11(s6)
                  or           s1, a5, t0
                  srai         a1, s9, 3
                  sub          a6, s6, t5
                  lb           a2, -11(s6)
                  lb           tp, 0(s6)
                  lbu          gp, 4(s6)
                  or           s2, zero, t0
                  lbu          s5, 4(s6)
                  sb           a7, 4(s6)
                  lb           t3, -8(s6)
                  lbu          s0, 12(s6)
                  lh           gp, 7(s6)
                  srli         t2, s4, 2
                  lhu          s2, -1(s6)
                  lbu          t4, -7(s6)
                  lb           t5, 5(s6)
                  nop
                  sw           t4, 5(s6) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_1+1577 #start riscv_load_store_hazard_instr_stream_0
                  lb           a3, -105(a6)
                  sub          gp, a4, s3
                  lbu          ra, -105(a6)
                  sh           a1, -1(a6)
                  lbu          s1, -1(a6)
                  sb           t1, -206(a6)
                  lbu          s0, -119(a6)
                  lw           zero, 243(a6)
                  sb           a3, -242(a6)
                  lb           a0, -242(a6)
                  sw           s4, 243(a6)
                  lbu          tp, -20(a6)
                  lbu          t3, -20(a6)
                  lbu          s0, 53(a6) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+186 #start load_store_instr_stream_1
                  lh           tp, 50(a3)
                  la           a1, region_1+309 #start load_store_instr_stream_0
                  lw           s6, 191(a1)
                  lhu          t2, 19(a1)
                  sb           ra, 192(a1)
                  sb           t1, 62(a3)
                  sb           a7, -20(a1)
                  lh           t4, 135(a1)
                  lh           sp, 52(a3)
                  lb           s4, -144(a1)
                  sh           sp, -40(a3)
                  sh           s0, -32(a3)
                  lw           t1, -137(a1)
                  sb           s2, 50(a3) #end load_store_instr_stream_1
                  sb           s7, -3(a1)
                  lb           zero, -44(a1)
                  sw           a7, -237(a1) #end load_store_instr_stream_0
                  la           s10, region_0+686 #start riscv_load_store_rand_instr_stream_0
                  sub          t5, a3, t2
                  sb           a1, -22(s10)
                  srai         a0, s6, 7
                  lh           t2, 56(s10)
                  sh           ra, -20(s10)
                  and          a1, a2, s7
                  sll          s2, t4, a7
                  slli         s6, t6, 7
                  lbu          t2, -55(s10)
                  or           gp, zero, s4
                  xor          tp, s2, t1
                  andi         a1, a7, 1511
                  or           s4, s10, t6
                  slt          sp, s3, s8
                  andi         s4, tp, 1056
                  lbu          t6, -9(s10)
                  auipc        s5, 559262
                  xor          t6, t4, t2
                  slti         s2, s1, -1096
                  lb           a0, -25(s10)
                  lbu          s8, -57(s10)
                  lhu          s4, -6(s10)
                  slti         s5, s3, 1169
                  srli         t0, tp, 23
                  andi         s8, t6, 474
                  lh           a6, 24(s10)
                  lh           s0, -32(s10)
                  slti         s2, t2, 1380
                  slli         a4, t2, 3
                  sltiu        a2, gp, 93
                  sh           s5, -20(s10) #end riscv_load_store_rand_instr_stream_0
                  sub          t4, gp, a7
                  sltiu        t1, a2, -1684
                  bgeu         s5, t1, 8f
                  sra          t1, tp, a1
                  sra          ra, t2, t4
                  la           gp, region_1+1958 #start riscv_load_store_rand_instr_stream_1
                  lb           t1, 8(gp)
                  lbu          s6, -4(gp)
                  sb           s2, 13(gp)
                  slt          t4, t6, a0
                  lb           t5, 7(gp)
                  lb           a5, 8(gp)
                  lh           a7, 0(gp)
                  lhu          s3, -10(gp)
                  sb           a6, -11(gp)
                  lhu          s10, -12(gp)
                  add          a4, a0, s1
                  lh           a4, -14(gp)
                  lui          t0, 17397
                  sltiu        s4, t2, 1411
                  lb           a3, 6(gp)
                  slli         a1, s6, 21
                  sb           s0, -8(gp)
                  lb           a2, 0(gp)
                  lbu          t2, 15(gp)
                  lbu          s0, 14(gp)
                  and          t5, s8, s1
                  lbu          a1, -5(gp)
                  andi         tp, s0, 1773
                  sb           s2, -4(gp)
                  lbu          s1, 8(gp)
                  lui          s1, 1028371
                  sll          s0, s8, gp
                  sltiu        ra, s11, -915
                  lb           a6, 10(gp)
                  slli         s5, ra, 24
                  addi         t6, a7, 1500
                  xori         tp, s2, -1758
                  sh           s8, 6(gp)
                  nop
                  lb           a5, -14(gp)
                  sra          t0, a3, t5
                  lb           s6, 11(gp)
                  sh           t0, 12(gp)
                  slt          a1, s11, s6
                  lhu          ra, 14(gp)
                  addi         a7, a5, 753
                  lb           t1, 13(gp)
                  ori          t0, s5, -1150
                  sb           tp, -14(gp)
                  lh           t0, 12(gp)
                  lh           a3, -14(gp)
                  sh           t1, 12(gp)
                  lb           zero, 4(gp) #end riscv_load_store_rand_instr_stream_1
                  sltu         a3, t5, a5
                  bge          a3, a1, 15f
                  auipc        t4, 791097
8:                nop
                  srl          a3, a4, s3
                  srai         t5, s0, 10
                  sltiu        a1, t2, -1003
                  sltiu        a3, s9, -2039
                  srai         a4, t6, 31
                  bgeu         a3, t5, 31f
15:               sub          s8, t5, t2
                  srai         a4, s0, 29
                  auipc        t3, 764752
                  sub          a5, a7, s6
                  srl          s8, sp, gp
                  addi         s6, s11, 2005
                  srai         a2, t5, 17
                  xor          t1, t1, s9
                  bltu         s0, t6, 34f
                  or           t2, s1, a3
                  sra          t6, s11, a6
                  ori          a2, a0, 1063
                  sltu         t1, a2, t6
                  and          sp, s3, s5
                  bge          t4, s5, 36f
                  xor          t3, s4, s5
31:               sll          t2, s7, s5
                  slli         t4, t0, 16
                  srai         a5, gp, 26
34:               bgeu         t1, a0, 43f
                  auipc        tp, 605140
36:               sra          s10, a6, s10
                  ori          s0, a3, 580
                  or           s6, a2, s5
                  srai         a4, sp, 5
                  nop
                  slti         t3, t0, 1014
                  sra          ra, a6, s0
43:               slli         a6, a2, 2
                  beq          sp, s10, 61f
                  bltu         s10, s0, 60f
                  bne          s6, t2, 52f
                  xori         t6, s0, -1552
                  slti         t1, a0, -1694
                  auipc        t4, 27113
                  auipc        a0, 910171
                  slli         t6, a1, 16
52:               srli         a5, s2, 15
                  sltiu        s0, ra, 1561
                  xor          a2, s2, s1
                  xor          t4, tp, a1
                  slli         t5, a0, 31
                  ori          s2, s6, 258
                  and          t5, s10, s9
                  slli         zero, a1, 11
60:               and          tp, s8, ra
61:               bltu         gp, t4, 80f
                  addi         a5, s9, 1077
                  bge          s2, tp, 72f
                  blt          a0, s2, 82f
                  bne          a1, t4, 76f
                  lui          s4, 127641
                  blt          a5, s9, 72f
                  and          gp, a2, s2
                  bge          s10, ra, 80f
                  sltu         s2, a0, a7
                  sub          sp, s0, a1
72:               bne          t6, t4, 92f
                  bne          ra, a3, 90f
                  sltu         ra, a5, s11
                  slti         t0, t5, -1849
76:               slli         s5, gp, 11
                  beq          s2, t1, 85f
                  slti         s4, t5, -400
                  slti         gp, s5, -1350
80:               sll          a5, a2, s8
                  addi         t2, s7, 44
82:               blt          s0, s0, 93f
                  lui          zero, 261207
                  sltu         s1, s9, t6
85:               srai         s4, t6, 19
                  sltiu        zero, t0, -306
                  addi         sp, t6, -912
                  bltu         zero, t6, 92f
                  bgeu         t4, ra, 105f
90:               bge          a6, a0, 92f
                  bgeu         s1, zero, 105f
92:               auipc        t3, 782378
93:               auipc        s3, 221054
                  lui          s3, 27452
                  bge          t1, a2, 109f
                  beq          t2, s0, 116f
                  slli         s3, t4, 5
                  lui          s5, 897253
                  bgeu         a7, a5, 105f
                  nop
                  sra          a5, a4, zero
                  slti         t3, s2, -147
                  sub          s1, t3, gp
                  bge          s3, s2, 112f
105:              add          a3, gp, a6
                  and          a4, t1, a6
                  slt          s5, sp, a7
                  add          t0, s1, t4
109:              sll          t0, a4, s4
                  srai         a1, a2, 13
                  sltu         a2, t0, a1
112:              lui          ra, 635439
                  ori          a1, a5, -645
                  ori          zero, a7, -451
                  bgeu         zero, zero, 119f
116:              srl          s3, s0, a2
                  bne          s9, s3, 126f
                  lui          s3, 978225
119:              sltiu        t0, s4, 1781
                  xor          s1, t0, a0
                  beq          s11, zero, 140f
                  lui          t4, 976871
                  sltu         t1, a4, s1
                  ori          s4, s0, 1042
                  xori         t4, tp, 646
126:              slt          a4, a3, s7
                  beq          sp, t3, 135f
                  and          a1, a4, a2
                  srl          s4, a0, sp
                  bgeu         t5, s6, 139f
                  lui          t5, 571029
                  and          a0, a7, a5
                  xori         a0, s5, -1797
                  sltiu        s5, s2, 657
135:              addi         t1, gp, -24
                  slli         zero, tp, 11
                  bltu         sp, a0, 151f
                  bge          a3, t4, 147f
139:              srli         s4, s5, 5
140:              auipc        zero, 277073
                  lui          t2, 551837
                  slti         gp, s11, -1347
                  la           t6, sub_1
                  nop
                  addi         t6, t6, -106
                  slti         t2, gp, 413
                  beq          s6, s3, main_j1 #branch to jump instr
                  sltu         s10, t5, a1
                  xor          s0, s5, s2
main_j1:          jalr         ra, t6, 106 #jump main -> sub_1
                  sltiu        t6, a5, -1373
                  lui          s2, 766187
                  srl          s10, s5, s10
                  slti         a7, t2, -1905
                  sltu         s8, s0, s3
147:              sltiu        a4, s0, -776
                  auipc        t0, 344174
                  bne          s10, t6, 154f
                  sltu         a1, t0, a5
151:              slti         zero, a0, 1260
                  auipc        t4, 421090
                  or           a7, a1, s5
154:              ori          a0, s5, 755
                  nop
                  sll          ra, t4, t3
                  srl          t6, tp, s6
                  addi         t5, t4, 1787
                  addi         a0, gp, 1318
                  srai         t3, s1, 3
                  auipc        s6, 605754
                  or           t3, a2, s7
                  slti         s4, s6, -1354
                  auipc        s0, 225264
                  bge          t0, s3, 182f
                  add          a6, t4, s3
                  or           t2, a5, gp
                  bgeu         ra, t3, 174f
                  andi         s6, a0, -694
                  nop
                  and          a3, s4, a3
                  slli         s1, a7, 14
                  auipc        a5, 527114
174:              ori          t6, t4, 1938
                  srli         a1, a5, 17
                  ori          t1, ra, -136
                  slti         a7, s10, 1294
                  srli         gp, ra, 29
                  sltiu        t3, t1, 1124
                  nop
                  sub          t3, t4, sp
182:              blt          tp, ra, 193f
                  blt          s9, t2, 198f
                  add          zero, a3, s6
                  sltu         gp, ra, s3
                  srai         s3, a3, 5
                  andi         a0, a2, -1444
                  lui          s2, 821284
                  srai         a6, s11, 8
                  nop
                  add          tp, t0, s5
                  bge          a0, t2, 210f
193:              bne          sp, a4, 199f
                  slli         a0, t5, 12
                  xor          a2, s9, t4
                  ori          gp, t3, 1019
                  or           a0, a7, a3
198:              add          t1, s7, s2
199:              slti         s8, s2, -725
                  bgeu         a2, s9, 204f
                  or           a3, s1, s8
                  addi         s4, t2, 1165
                  addi         s5, a5, -1925
204:              xor          s1, gp, t2
                  srai         a1, s1, 14
                  andi         s5, t2, -1375
                  ori          s5, s3, 1580
                  slt          t3, a1, s6
                  sltu         s0, s8, a6
210:              auipc        a2, 1008066
                  xor          a2, s4, tp
                  beq          s1, s10, 229f
                  andi         t0, s11, 648
                  andi         s6, a7, -1201
                  srli         a5, s0, 4
                  la           s4, sub_1
                  auipc        t3, 56695
                  addi         s4, s4, -355
                  sll          a1, gp, s4
                  add          t5, a0, s4
                  addi         s6, a4, 509
                  srl          s10, s1, t3
                  lui          s6, 61611
                  bgeu         a2, t0, main_j2 #branch to jump instr
                  srli         ra, gp, 26
main_j2:          jalr         ra, s4, 355 #jump main -> sub_1
                  bne          tp, s1, 233f
                  xori         s5, t2, 2031
                  xor          t4, ra, a7
                  slt          t2, s4, gp
                  srai         a2, s7, 15
                  sra          s5, a4, s0
                  andi         t4, s6, -95
                  bltu         s0, gp, 236f
                  auipc        a6, 915283
                  srli         t6, s10, 0
                  bltu         s8, s2, 225f
                  andi         t5, t4, 1924
225:              bne          t0, sp, 245f
                  slt          s10, t4, t2
                  and          a5, a5, t5
                  xori         a3, s11, -1465
229:              sltiu        tp, a6, 1773
                  addi         s1, s8, -871
                  sltiu        t2, s5, -85
                  addi         a1, a4, 1503
233:              add          s8, t3, t0
                  srl          t5, s7, a4
                  sltu         a6, ra, t4
236:              or           sp, a6, a4
                  sltiu        a1, sp, -1870
                  andi         s3, a2, 435
                  slti         zero, a1, 694
                  xori         t1, t1, 1276
                  srli         s0, s10, 4
                  auipc        a2, 1026083
                  xor          ra, t5, t3
                  srai         t0, t3, 0
245:              xor          gp, s0, t2
                  bgeu         a0, s5, 265f
                  slli         s8, s2, 23
                  bge          s11, t0, 257f
                  lui          a4, 383236
                  slt          t1, tp, s6
                  srli         gp, a2, 7
                  slt          a5, sp, sp
                  addi         ra, a4, -1792
                  beq          s1, ra, 268f
                  bgeu         t3, ra, 274f
                  or           s4, a6, a0
257:              auipc        t0, 794035
                  auipc        s2, 65581
                  srli         s4, a7, 27
                  xor          tp, s0, zero
                  slt          a3, s5, t6
                  auipc        s3, 553435
                  srli         a3, ra, 10
                  slt          s10, s3, tp
265:              slli         t6, a4, 21
                  and          a1, ra, s8
                  add          s2, t2, t1
268:              addi         a6, a5, -846
                  beq          ra, s3, 278f
                  beq          s11, s2, 274f
                  blt          s2, a5, 282f
                  sltiu        t1, t3, -937
                  sltu         t6, zero, s6
274:              sltiu        s4, sp, 1473
                  ori          s6, s11, -1209
                  or           s10, t1, zero
                  bne          s0, a5, 285f
278:              sra          zero, a3, ra
                  sltu         t4, sp, s8
                  beq          tp, s11, 286f
                  xor          t6, t2, s3
282:              auipc        ra, 672811
                  srli         a1, t1, 29
                  sub          a7, a6, a5
285:              srl          a4, s5, a3
286:              nop
                  bge          s8, s10, 294f
                  lui          ra, 615306
                  blt          s8, a5, 300f
                  lui          s8, 37265
                  slti         t1, gp, -966
                  nop
                  or           a0, a6, s0
294:              srl          t5, t0, s7
                  or           a4, t0, t6
                  beq          a2, t4, 313f
                  sra          s8, s3, t3
                  bge          t1, gp, 309f
                  or           s10, s11, ra
300:              add          s5, s3, s5
                  sra          s6, zero, a1
                  bge          s11, ra, 304f
                  slt          t3, s10, s7
304:              bgeu         s9, s0, 313f
                  ori          s8, sp, -182
                  ori          a6, t4, -1996
                  bge          sp, a5, 327f
                  srai         s5, t5, 9
309:              sub          zero, t4, t4
                  bgeu         a5, ra, 319f
                  sltiu        s1, s9, 1403
                  srl          t2, s10, t3
313:              srai         a2, a3, 25
                  sub          s10, sp, a5
                  or           t1, t3, s1
                  add          t2, t2, a0
                  addi         t6, t5, -337
                  sltiu        a4, a5, -1377
319:              slli         s6, s6, 23
                  bltu         tp, a6, 334f
                  sltiu        s10, t0, -91
                  sub          sp, s6, s3
                  or           tp, s5, s6
                  lui          ra, 1002005
                  and          t2, a1, a6
                  slt          a6, t4, t2
327:              xori         a2, a3, 2018
                  sra          a0, s1, t2
                  bge          a7, a7, 343f
                  srai         t3, gp, 19
                  andi         tp, s10, 1077
                  auipc        ra, 96917
                  nop
334:              bgeu         a3, s6, 345f
                  sll          a4, s4, ra
                  beq          a0, tp, 340f
                  slti         s6, s0, 993
                  xor          t5, s1, t3
                  slt          t2, t4, a0
340:              srli         tp, a0, 17
                  ori          tp, gp, 1618
                  sltiu        s3, gp, 1781
343:              srl          a2, t2, gp
                  bge          a2, s1, 350f
345:              bgeu         a6, s1, 358f
                  bge          s9, tp, 357f
                  slli         s6, t1, 20
                  andi         t1, t1, 1277
                  srai         t0, s8, 18
350:              xor          s0, s8, s1
                  sltu         s6, a2, t6
                  bge          a4, ra, 358f
                  sll          tp, s3, s1
                  addi         t3, s6, -1604
                  slli         t1, s5, 12
                  slt          zero, t6, a6
357:              xori         s2, s9, 1653
358:              and          s10, t0, t3
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            auipc        s2, 263405
                  sltiu        tp, s7, 601
                  beq          s9, t1, sub_1_stack_p
                  addi         t4, a4, 834
                  slt          tp, s11, zero
                  slli         t3, a5, 8
sub_1_stack_p:    addi         s7, s7, -56
                  or           s2, a0, sp
                  sw           ra, 4(s7)
                  srl          a3, a5, s3
                  and          s8, t0, s11
                  sub          a2, a1, s2
                  andi         a3, s9, 1620
                  sltu         t4, s7, s1
                  or           t0, s7, t3
                  srai         s0, s9, 10
                  slli         s10, s3, 1
                  addi         gp, s0, -1982
                  lui          s8, 467387
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           s3, region_1+1510 #start load_store_instr_stream_1
                  lb           zero, -5(s3)
                  lbu          a7, 22(s3)
                  la           s2, region_1+1820 #start load_store_instr_stream_0
                  sb           s3, 4(s2)
                  lb           a7, -5(s2)
                  lbu          s4, -1(s2)
                  lb           s4, 40(s3)
                  lbu          t1, 29(s3)
                  lbu          a6, 9(s2)
                  lh           t1, 10(s2)
                  sh           s6, 4(s3)
                  sb           a6, 10(s2)
                  lbu          s5, 21(s3)
                  lb           a5, 4(s2)
                  sb           s6, 59(s3) #end load_store_instr_stream_1
                  sb           a4, -14(s2) #end load_store_instr_stream_0
                  la           sp, region_0+218 #start riscv_load_store_hazard_instr_stream_1
                  lw           t1, 338(sp)
                  sb           s0, 937(sp)
                  lb           a3, 177(sp)
                  lbu          s3, 609(sp)
                  lb           a2, 1583(sp)
                  srli         a0, s3, 29
                  sh           s0, 1246(sp)
                  lb           s10, 1246(sp)
                  lb           a0, 1494(sp)
                  sll          tp, a3, s2
                  lb           t1, 1130(sp)
                  lbu          a2, 1563(sp)
                  lh           s10, 422(sp)
                  lhu          t2, 992(sp)
                  lbu          t2, 1371(sp)
                  andi         t4, ra, -1353
                  lb           t3, 1371(sp)
                  lw           t3, 682(sp)
                  lbu          a5, 241(sp)
                  sh           s2, 678(sp)
                  lb           s10, 932(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1478 #start riscv_load_store_rand_instr_stream_2
                  ori          a7, s3, -875
                  auipc        s1, 1036650
                  ori          s3, a2, 992
                  sh           a4, 120(sp)
                  sh           s11, -478(sp)
                  sll          a0, ra, gp
                  lh           tp, -1272(sp)
                  sb           sp, -1183(sp)
                  xor          t2, s4, s2
                  addi         t3, t0, 435
                  slli         s3, t4, 17
                  sb           s3, -1027(sp)
                  lw           s6, -1322(sp)
                  sb           s0, -302(sp)
                  slti         t2, s6, 1172
                  lbu          t4, -1351(sp)
                  auipc        s0, 362167
                  lbu          s3, 159(sp)
                  slti         s4, t3, -1826
                  lhu          t3, 230(sp)
                  sw           s0, -582(sp)
                  lui          gp, 521536
                  addi         a3, s11, 335
                  lb           a2, 67(sp)
                  addi         a0, s0, 226
                  sub          a4, s11, a3
                  ori          a5, s2, 347
                  nop
                  lb           a3, -819(sp)
                  add          a3, sp, a6
                  sb           t2, -1096(sp)
                  ori          a2, a6, 1324
                  lbu          a6, 401(sp)
                  slt          t2, s2, s1
                  and          t2, s9, t3
                  lbu          t4, 485(sp)
                  lbu          s2, -1253(sp)
                  sb           a5, -607(sp)
                  nop
                  lhu          a7, 504(sp)
                  sw           gp, -1274(sp)
                  lh           s10, -1380(sp)
                  lb           s5, -603(sp)
                  or           a3, a5, s11
                  lb           s4, -565(sp)
                  lh           a0, -458(sp)
                  slt          a0, tp, a3
                  lbu          t2, 117(sp)
                  sw           sp, -314(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_0+1036 #start load_store_instr_stream_4
                  la           ra, region_0+1404 #start load_store_instr_stream_1
                  lbu          s6, 11(s8)
                  la           a0, region_0+224 #start load_store_instr_stream_0
                  la           tp, region_0+438 #start load_store_instr_stream_3
                  la           a7, region_0+246 #start load_store_instr_stream_2
                  sb           ra, 493(ra)
                  lb           gp, 17(a7)
                  sb           a7, 9(ra)
                  sb           s9, -7(tp)
                  lb           t6, 33(a7)
                  sb           a6, -99(a0)
                  lbu          t4, 1405(a0)
                  lb           t6, -25(ra)
                  lbu          gp, -41(a7)
                  lbu          t1, 6(s8)
                  sb           tp, 61(tp)
                  lb           t1, -483(ra)
                  lhu          t1, 72(ra)
                  lhu          s5, 30(tp)
                  lb           zero, 137(ra)
                  lbu          t0, -60(a7)
                  sb           s10, 1645(a0)
                  sb           a3, 40(tp)
                  lh           s1, 32(a7)
                  lw           t0, 10(tp)
                  lb           a3, 3(s8)
                  lbu          t6, -8(s8)
                  lb           sp, -1207(ra)
                  sw           s6, 38(a7)
                  lb           t6, -12(tp)
                  sb           ra, 47(a7)
                  lbu          s2, 611(a0)
                  lb           t5, 3(s8)
                  lb           t5, 79(ra)
                  lw           sp, 1140(a0)
                  sb           s4, 329(a0)
                  sb           s10, 47(a7)
                  sh           s8, -58(tp)
                  lb           a6, 1725(a0)
                  sh           s10, -56(a0)
                  sb           a5, -15(s8)
                  lb           t2, -37(tp)
                  lh           zero, 22(tp)
                  sb           a7, -1245(ra)
                  lb           t0, 494(ra) #end load_store_instr_stream_1
                  sb           s10, 1285(a0)
                  sh           a7, 16(s8) #end load_store_instr_stream_4
                  lh           zero, -62(tp) #end load_store_instr_stream_3
                  lb           t4, -12(a7) #end load_store_instr_stream_2
                  sb           ra, 1407(a0) #end load_store_instr_stream_0
                  la           gp, region_1+1252 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t3, zero, -69
                  addi         t5, s7, -260
                  sh           s11, -944(gp)
                  lbu          s8, -1009(gp)
                  xor          s6, s11, s3
                  sb           a2, -382(gp)
                  xori         t0, s8, -1136
                  lbu          sp, -754(gp)
                  srai         t5, s10, 11
                  lbu          t6, -423(gp)
                  xor          s0, a5, s1
                  sb           a5, -226(gp)
                  add          t2, a4, s8
                  sh           s3, 646(gp)
                  sra          a2, t4, s7
                  sb           a1, -654(gp)
                  slli         ra, s10, 19
                  sltu         s3, s7, ra
                  addi         s1, s6, -1703
                  nop
                  sb           s0, -950(gp)
                  slli         s4, s8, 2
                  lb           ra, -35(gp)
                  lbu          a0, -185(gp)
                  sb           s7, -167(gp)
                  sltu         s2, gp, s0
                  srli         s3, s9, 25
                  lh           s0, -148(gp)
                  lb           a0, -693(gp)
                  sh           s8, -784(gp)
                  lb           a3, -188(gp)
                  addi         t5, t5, 967
                  sltu         t2, a3, s11
                  lb           tp, 383(gp)
                  srli         a2, a7, 11
                  sb           a6, -1243(gp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1578 #start riscv_load_store_hazard_instr_stream_2
                  sb           t0, -61(sp)
                  lbu          zero, -7(sp)
                  lbu          a6, -25(sp)
                  sb           s2, -51(sp)
                  lb           a5, -51(sp)
                  lb           a1, -51(sp)
                  lbu          a7, -51(sp)
                  lb           a5, -54(sp)
                  xor          t1, s1, s9
                  sra          t0, s2, s2
                  lb           zero, -33(sp)
                  sltu         zero, s8, s11
                  lb           s3, 29(sp)
                  sh           t1, -54(sp)
                  lbu          a7, 48(sp)
                  sh           s9, -16(sp)
                  lbu          t0, -16(sp)
                  lb           gp, 41(sp)
                  sb           gp, -49(sp)
                  lb           t5, -49(sp)
                  sb           s6, -49(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t3, region_0+228 #start riscv_load_store_rand_instr_stream_0
                  lbu          a3, 5(t3)
                  sltu         t2, t0, s3
                  srli         s6, t0, 16
                  lh           t6, 6(t3)
                  lbu          s8, 7(t3)
                  sll          sp, s3, t0
                  lb           tp, 15(t3)
                  sb           s11, 15(t3)
                  add          a4, ra, a0
                  srl          s6, t6, tp
                  sb           t5, 15(t3)
                  srai         t0, s4, 22
                  sw           s0, 16(t3)
                  sub          a7, s11, s2
                  sb           t4, 2(t3)
                  srai         a3, t0, 0
                  slti         gp, a0, -238
                  and          s10, sp, s2
                  lbu          s0, 7(t3)
                  sltiu        t2, a4, -1292
                  ori          a1, gp, -987
                  slt          s10, s5, sp
                  lb           s3, 6(t3)
                  and          a7, a4, a6
                  sra          a2, zero, a0
                  lhu          t1, 4(t3)
                  sw           t0, 4(t3)
                  sb           s4, 6(t3)
                  sb           s10, 5(t3)
                  sh           a3, -10(t3)
                  sh           a7, -14(t3)
                  lbu          t1, -11(t3)
                  or           s10, s10, t0
                  sb           t1, -10(t3)
                  lhu          s0, 6(t3)
                  sltiu        s5, s11, -1556
                  lbu          a3, -13(t3)
                  sltiu        a2, s3, 2031
                  slli         t2, a4, 5
                  add          t0, s3, a0
                  andi         s10, s0, -1474
                  lbu          sp, -7(t3)
                  xor          t1, t0, zero
                  sltiu        gp, tp, -1996
                  or           a5, a4, a4
                  lhu          gp, 4(t3)
                  add          s6, t0, s8
                  xor          t0, sp, a1
                  ori          sp, s10, -244
                  lb           s3, 13(t3)
                  lui          ra, 772677
                  lb           a6, 7(t3)
                  andi         ra, tp, -1035
                  sb           zero, 15(t3) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+261 #start load_store_instr_stream_2
                  sb           s10, 122(a6)
                  la           s10, region_1+1995 #start load_store_instr_stream_1
                  la           a2, region_1+80 #start load_store_instr_stream_3
                  lb           sp, -138(a6)
                  la           s6, region_1+1470 #start load_store_instr_stream_4
                  lh           tp, -1(s10)
                  lbu          t3, 45(s6)
                  lw           s1, -205(a6)
                  la           t4, region_1+1111 #start load_store_instr_stream_0
                  lb           t5, -16(s6)
                  lhu          zero, -30(a2)
                  lbu          a4, 0(s10)
                  lbu          sp, -16(s10)
                  sb           a4, 210(a6)
                  sh           s7, -22(a2)
                  lhu          t0, 71(t4)
                  sb           t4, -19(s6)
                  lb           s4, -4(s10)
                  sb           s5, -191(a6)
                  sb           s5, 16(a2)
                  lb           t0, 7(t4)
                  lbu          a5, 34(s6)
                  lb           t6, 7(s6)
                  sb           s8, 226(a6)
                  lh           t0, 36(s6)
                  lh           s0, 175(a6)
                  sh           t1, -20(a2)
                  sb           sp, -5(a2)
                  sb           s6, -4(s10)
                  lb           tp, 190(a6)
                  lb           s1, 30(s6)
                  sb           s11, -231(t4)
                  sb           tp, -15(s10)
                  lbu          zero, 0(s10)
                  lb           t0, -6(s10) #end load_store_instr_stream_1
                  sh           tp, -95(t4)
                  sw           a6, 50(s6)
                  lb           t0, 51(a2)
                  sw           sp, 2(s6) #end load_store_instr_stream_4
                  lbu          tp, 114(a6)
                  sb           s6, 62(a2) #end load_store_instr_stream_3
                  lb           a0, -200(a6) #end load_store_instr_stream_2
                  sb           t3, -122(t4) #end load_store_instr_stream_0
                  add          a7, s2, a0
                  srli         sp, ra, 16
                  srai         s10, t0, 9
                  auipc        a5, 923231
                  beq          s3, t6, 16f
                  or           a1, s11, t3
                  add          s3, a6, a2
                  bge          s2, a2, 20f
                  sll          t3, s4, a5
                  addi         s0, a2, 1406
                  srli         t3, a4, 15
                  sltiu        a5, a2, 1186
                  lui          a3, 92233
                  add          s10, zero, s8
                  xori         t1, s2, 76
                  sub          a7, ra, s3
16:               slti         s4, a3, 494
                  xor          t3, t6, a1
                  beq          a0, a5, 38f
                  sltiu        t0, t1, -1827
20:               and          t5, s1, ra
                  beq          t0, a7, 30f
                  srai         a1, t4, 19
                  ori          a6, s6, 881
                  beq          s5, t1, 43f
                  and          a6, s6, t5
                  nop
                  sltiu        a4, s4, -573
                  bne          s3, s10, 33f
                  xor          t4, tp, t0
30:               beq          s11, s2, 40f
                  sll          s8, s4, s10
                  slt          s6, a0, a6
33:               ori          a5, t4, -1305
                  xori         s6, t1, 1170
                  slli         t0, zero, 28
                  srli         s4, a0, 22
                  beq          a1, s11, 47f
38:               andi         t4, s11, -795
                  sltu         s2, s2, t3
40:               nop
                  slti         t6, t1, -17
                  xor          ra, gp, t3
43:               blt          a1, s6, 56f
                  bne          s8, t3, 62f
                  slli         a0, s2, 6
                  sltiu        t2, s3, 1283
47:               andi         s3, t1, -443
                  srli         a2, s8, 21
                  or           s8, a2, a2
                  slli         sp, t5, 13
                  blt          t2, t4, 55f
                  blt          a2, sp, 62f
                  bgeu         a7, a5, 68f
                  srl          ra, s9, a3
55:               lui          a1, 476655
56:               bgeu         a1, s4, 64f
                  add          t1, gp, s2
                  auipc        a4, 862466
                  srli         a5, sp, 11
                  slli         a0, t6, 19
                  slli         t3, sp, 18
62:               sltu         a7, s9, s6
                  slt          s8, a0, t0
64:               lui          s2, 490197
                  sub          s0, s11, tp
                  slli         t6, t5, 26
                  blt          a6, s7, 86f
68:               srai         s4, t6, 28
                  nop
                  xori         gp, s10, -554
                  nop
                  srai         s4, s3, 11
                  srl          t4, s9, s5
                  nop
                  slli         s8, s10, 11
                  slt          a5, s11, a4
                  srai         a5, s1, 25
                  or           t0, a1, ra
                  bgeu         sp, ra, 93f
                  bltu         s4, t6, 92f
                  ori          ra, tp, 608
                  bgeu         s0, a7, 94f
                  slti         a5, sp, 408
                  sltu         a1, s2, s2
                  sll          s2, s11, a1
86:               sra          s10, t1, a0
                  ori          a1, s11, -1953
                  bgeu         t1, s2, 103f
                  ori          a3, s11, -85
                  srli         a3, s10, 28
                  srl          zero, a2, s10
92:               lui          s2, 981850
93:               sltiu        a5, sp, 1625
94:               srli         s4, a0, 27
                  sltiu        s8, ra, -829
                  blt          t5, t4, 97f
97:               and          a6, s8, zero
                  sra          s0, t6, s3
                  beq          t4, s5, 108f
                  sltiu        s6, t3, -1025
                  or           t0, t4, t4
                  slli         a7, a3, 17
103:              sltu         t0, s6, t3
                  bne          a2, t0, 116f
                  bltu         s7, t0, 113f
                  and          zero, t3, s3
                  beq          s2, s5, 110f
108:              xori         s8, t3, -810
                  bge          s2, a2, 124f
110:              beq          t3, a7, 129f
                  slt          t1, a7, zero
                  srl          sp, s7, a3
113:              xori         t4, a5, -693
                  bltu         s8, t6, 126f
                  beq          a1, t3, 116f
116:              srl          a5, a2, s11
                  xori         t2, a3, 1905
                  slli         t5, t1, 18
                  xor          t0, ra, t0
                  or           a5, a5, a5
                  addi         t0, ra, 1679
                  addi         s0, a4, -86
                  ori          ra, s6, -1219
124:              slt          s4, gp, s10
                  lui          s1, 1041904
126:              addi         a5, a7, 1567
                  sltiu        gp, t6, -1890
                  srai         s5, a1, 2
129:              addi         t2, s7, -1153
                  ori          a5, s2, 1359
                  addi         a0, s5, 1480
                  ori          t3, s7, 1310
                  bgeu         s4, tp, 148f
                  auipc        t1, 105226
                  bge          t4, a5, 145f
                  srai         zero, t2, 30
                  bge          a5, gp, 152f
                  addi         ra, a6, 1024
                  srli         a1, s2, 21
                  and          gp, sp, tp
                  and          s2, t5, tp
                  sltu         s6, t1, a7
                  bltu         gp, ra, 153f
                  slti         t5, s8, -737
145:              bgeu         t2, tp, 158f
                  nop
                  blt          s7, s10, 159f
148:              bne          s9, s2, 163f
                  slt          s6, sp, zero
                  xor          s5, tp, t5
                  sra          a6, t0, s3
152:              sra          t3, t6, t3
153:              blt          ra, s10, 165f
                  slli         gp, s9, 6
                  srai         a6, s0, 6
                  auipc        ra, 396012
                  or           t0, t3, a5
158:              sltiu        s4, a3, -676
159:              blt          t1, a1, 163f
                  bgeu         s3, s7, 172f
                  bne          s0, s0, 173f
                  beq          s8, s3, 165f
163:              andi         t6, a3, -722
                  blt          a5, a4, 172f
165:              slt          a5, s0, s5
                  srai         a0, tp, 21
                  bne          s11, a7, 177f
                  xor          gp, s10, gp
                  xori         t1, tp, 1988
                  sltiu        s2, t4, 451
                  bne          t3, a6, 180f
172:              bgeu         gp, s0, 173f
173:              bne          t2, s9, 185f
                  addi         sp, s4, 32
                  addi         s10, s9, -219
                  bne          s6, tp, 186f
177:              blt          sp, s9, 197f
                  srai         t2, t6, 15
                  auipc        s1, 851203
180:              add          zero, t5, s7
                  auipc        t4, 908536
                  sub          t5, a3, s5
                  srai         t4, s11, 16
                  slli         sp, a7, 1
185:              or           zero, t4, t2
186:              bne          t2, a5, 191f
                  xori         s1, t3, -344
                  or           s4, s6, a0
                  bne          s3, s6, 199f
                  bgeu         t6, s10, 209f
                  la           ra, region_0+1359 #start riscv_load_store_hazard_instr_stream_0
                  sltiu        a6, s5, -992
                  lb           s8, 184(ra)
                  lb           sp, -766(ra)
                  sb           s11, -766(ra)
                  auipc        s10, 213443
                  sb           a4, -766(ra)
                  srai         t1, s8, 19
                  lb           t4, -766(ra)
                  sb           t2, -766(ra)
                  sh           s7, 67(ra)
                  xor          t6, s6, a6
                  lhu          a3, 67(ra)
                  lbu          t5, 67(ra)
                  sh           t0, 67(ra)
                  lh           s3, 67(ra)
                  ori          s8, a6, 959
                  lbu          a3, 78(ra)
                  sb           s4, 78(ra)
                  sb           a0, 78(ra)
                  lb           s0, -611(ra)
                  lbu          zero, 629(ra)
                  lh           a2, 629(ra)
                  sw           tp, 629(ra)
                  and          t3, t0, s1
                  addi         a3, s7, -1777
                  lb           sp, 629(ra)
                  lw           s1, 629(ra) #end riscv_load_store_hazard_instr_stream_0
191:              slt          t2, a3, a7
                  srai         a7, a3, 5
                  srli         a6, tp, 4
                  beq          s8, t1, 213f
                  bltu         s3, a7, 204f
                  sra          t3, s11, a7
197:              sra          t1, s1, tp
                  ori          t4, s7, -152
199:              auipc        t3, 402481
                  slti         a1, a5, 1685
                  addi         s4, a5, -569
                  add          t0, a3, t5
                  lui          a0, 848559
204:              srai         sp, s0, 16
                  nop
                  srl          s5, a3, a2
                  ori          t6, t2, -911
                  lui          s3, 392393
209:              lui          gp, 94703
                  sll          s0, a3, a0
                  addi         a2, a5, -127
                  add          t4, t5, a1
213:              addi         a0, gp, 1746
                  sll          tp, a1, s11
                  xori         a3, a6, -1089
                  sltu         a5, sp, a6
                  slli         tp, t3, 11
                  add          a7, t6, a6
                  bge          s11, a6, 234f
                  bne          a5, a3, 239f
                  xori         a5, gp, -1429
                  srai         gp, a0, 12
                  auipc        t2, 985371
                  sra          a4, s6, t0
                  bne          t0, a1, 240f
                  sltu         a4, t6, s8
                  srl          s5, a7, s6
                  add          a1, s1, s6
                  lui          t5, 93685
                  or           t6, s2, zero
                  or           a6, a1, a7
                  ori          a5, s11, -72
                  nop
234:              and          sp, s6, t4
                  add          zero, s0, t5
                  bne          a0, s3, 249f
                  slli         s10, s0, 7
                  sll          s3, s7, s8
239:              slti         a3, t3, 776
240:              bge          t4, tp, 248f
                  or           s6, t4, ra
                  and          s1, a4, t2
                  ori          a4, s9, -1148
                  auipc        zero, 932886
                  beq          s4, a3, 263f
                  sll          s5, t6, t3
                  ori          a0, s1, 1539
248:              blt          a3, s10, 249f
249:              xor          sp, t0, s9
                  auipc        t4, 350968
                  srli         t6, tp, 27
                  sltu         t0, t5, gp
                  beq          a1, ra, 267f
                  ori          sp, t2, -509
                  addi         tp, s1, 1938
                  slt          ra, a6, a6
                  bge          s4, s4, 265f
                  slli         tp, s3, 20
                  bne          s11, s1, 271f
                  bne          a6, s3, 274f
                  srl          t0, a5, sp
                  slt          s3, a4, t0
263:              bge          t4, a0, 282f
                  sltu         s1, s11, t6
265:              sub          s1, s9, t6
                  srli         s5, gp, 27
267:              srli         s5, tp, 14
                  srl          t2, s4, sp
                  xori         zero, s2, 1450
                  bne          a6, a2, 271f
271:              andi         a4, t3, -1149
                  sra          s6, sp, s5
                  nop
274:              bgeu         s7, s1, 286f
                  xori         a6, a1, -572
                  and          s2, zero, a7
                  sltiu        s3, t1, 1794
                  sra          a4, a3, t6
                  slti         s1, t6, 140
                  bge          s0, tp, 290f
                  nop
282:              lui          s10, 1020119
                  slt          a7, a1, a2
                  xori         t6, s5, -1438
                  beq          s2, a6, 304f
286:              lui          a3, 635793
                  beq          a2, ra, 305f
                  addi         s4, t6, 1968
                  bltu         a7, a5, 294f
290:              bne          tp, t4, 305f
                  and          ra, s7, s9
                  sll          zero, a2, t5
                  add          a6, s2, a7
294:              srli         ra, ra, 23
                  or           t6, s8, a7
                  bgeu         s8, s2, 311f
                  sltu         a5, s2, a6
                  sub          gp, sp, s2
                  sll          zero, sp, s8
                  sra          s6, s11, tp
                  srli         gp, sp, 19
                  addi         t0, s2, 575
                  slli         s1, ra, 6
304:              blt          a6, s3, 314f
305:              blt          t3, t6, 320f
                  srai         a4, s11, 25
                  bgeu         t2, s10, 311f
                  add          a2, s3, s7
                  beq          s11, a2, 321f
                  sra          tp, s7, s11
311:              slt          a2, s0, s6
                  bgeu         t4, a4, 324f
                  bge          a6, a5, 323f
314:              bne          sp, tp, 326f
                  bge          s7, s2, 328f
                  slti         a1, t3, -1724
                  srai         a6, s5, 22
                  ori          a1, gp, -1746
                  slti         tp, a1, -732
320:              srli         a2, a0, 18
321:              beq          a3, t4, 329f
                  sra          a7, s2, tp
323:              sub          a2, a5, t1
324:              auipc        a6, 925234
                  and          a3, t4, t6
326:              and          t6, t6, s0
                  add          s0, s4, a3
328:              srl          ra, a4, a7
329:              srli         gp, t5, 9
                  slt          s5, s11, s2
                  xor          a0, s0, a5
                  add          s6, a5, a6
                  srai         a4, s8, 16
                  lui          t1, 679585
                  add          a6, tp, s2
                  sra          tp, s11, a4
                  bge          t0, a0, 346f
                  bltu         s7, s3, 351f
                  slt          t6, ra, sp
                  sra          a4, a4, s7
                  sltiu        s4, a2, -883
                  srli         s10, a2, 15
                  srli         a0, s10, 2
                  xor          a5, tp, tp
                  blt          s4, s2, 355f
346:              srli         s10, s5, 26
                  and          sp, gp, s5
                  sll          t0, s10, sp
                  ori          a2, t5, 1242
                  slt          s5, sp, s6
351:              beq          zero, s7, 352f
352:              or           tp, s0, tp
                  ori          a2, t4, -247
                  auipc        s1, 443662
355:              lui          t3, 189722
                  sltu         s10, t3, t5
                  beq          s7, a7, 363f
                  andi         a7, s7, 1062
                  sltu         t3, s1, t3
                  sltiu        a2, a6, -974
                  andi         a2, t5, 515
                  add          s6, s10, zero
363:              sub          a4, t1, tp
                  sltu         t4, t1, a0
                  sll          a2, t5, gp
                  lw           ra, 4(s7)
                  nop
                  add          t6, tp, a4
                  add          a6, s7, s8
                  slli         s4, a4, 3
                  addi         s7, s7, 56
                  lui          t5, 10154
                  add          sp, t1, tp
720:              addi x20, x1, 0
720:              jalr x20, x20, 0
sub_2:            sltiu        s3, s0, -1678
                  nop
                  addi         s7, s7, -8
                  sltu         a2, a1, s4
                  srl          a4, a1, zero
                  and          a6, s3, s6
                  addi         s0, sp, -1567
                  auipc        gp, 89730
                  slti         s6, t1, -346
                  sw           ra, 4(s7)
                  srai         s6, s11, 28
                  ori          t6, a1, -957
                  la           s8, region_1+96 #start riscv_load_store_hazard_instr_stream_0
                  sh           a3, 226(s8)
                  ori          a7, s2, -1169
                  sb           a2, 119(s8)
                  lbu          s10, 119(s8)
                  lbu          a1, 119(s8)
                  lb           s5, 119(s8)
                  lbu          s3, 234(s8)
                  lhu          s3, 234(s8)
                  xor          a2, s6, zero
                  lb           a0, 234(s8)
                  lbu          a0, 234(s8)
                  sh           s6, 234(s8)
                  lhu          a6, 234(s8)
                  sb           s6, 234(s8)
                  lb           t6, -11(s8)
                  lbu          t4, -11(s8)
                  sb           t6, -11(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+359 #start load_store_instr_stream_0
                  la           s3, region_1+615 #start load_store_instr_stream_3
                  la           a2, region_1+812 #start load_store_instr_stream_2
                  lb           s0, -44(s3)
                  sb           t2, 71(a2)
                  lbu          s4, 199(s3)
                  lw           gp, -207(s3)
                  la           t0, region_1+1217 #start load_store_instr_stream_1
                  lbu          s4, -29(a2)
                  lbu          a7, -14(sp)
                  lh           a3, -53(t0)
                  lb           s10, -2(s3)
                  lbu          t2, 151(a2)
                  lbu          tp, -239(a2)
                  lhu          t5, 15(t0)
                  lb           s5, -182(s3)
                  sb           s11, -19(t0)
                  lb           s5, -158(a2)
                  sw           t3, 9(sp)
                  lbu          gp, 178(s3)
                  lb           s4, 14(s3)
                  lhu          zero, -39(t0)
                  lb           s5, 22(s3)
                  lb           t6, 26(t0)
                  lbu          t3, 187(a2)
                  lbu          a1, 4(sp)
                  lh           a1, -42(a2)
                  lbu          ra, -50(t0)
                  lb           s6, -245(a2)
                  sh           t1, -7(sp)
                  lbu          a1, 7(t0)
                  lw           s5, 212(a2)
                  sh           s5, 15(sp)
                  lh           s4, -7(s3)
                  lw           tp, 27(t0) #end load_store_instr_stream_1
                  sb           a4, -73(a2) #end load_store_instr_stream_2
                  lb           a0, 12(s3) #end load_store_instr_stream_3
                  sw           t1, 5(sp) #end load_store_instr_stream_0
                  la           t6, region_1+668 #start load_store_instr_stream_1
                  la           tp, region_1+1093 #start load_store_instr_stream_0
                  sb           t5, 1116(t6)
                  lbu          a2, -547(t6)
                  lbu          t3, -608(t6)
                  lh           t4, -470(t6)
                  lb           a0, -6(tp)
                  lh           s8, 1(tp)
                  lh           a4, -7(tp)
                  lh           s0, 1208(t6)
                  sb           t5, -414(t6)
                  lh           s10, 13(tp)
                  sb           s7, 16(tp)
                  sh           gp, -556(t6)
                  lh           a3, -9(tp)
                  lb           s6, -1(tp)
                  lbu          s6, -657(t6)
                  lb           s0, 1007(t6)
                  lb           ra, 14(tp)
                  lh           s5, 332(t6) #end load_store_instr_stream_1
                  sb           s3, -7(tp) #end load_store_instr_stream_0
                  la           s8, region_1+1890 #start riscv_load_store_rand_instr_stream_0
                  sb           a3, 62(s8)
                  or           t5, t3, s6
                  sb           s0, -175(s8)
                  ori          s0, s10, 1848
                  sb           gp, -209(s8)
                  lb           s4, -220(s8)
                  xor          t0, t1, t5
                  addi         a2, t1, 1997
                  sltiu        s0, sp, 263
                  sb           zero, -171(s8)
                  nop
                  add          t0, a3, a7
                  add          t4, a7, t2
                  or           s3, t6, s7
                  lbu          t4, 95(s8)
                  andi         s5, t0, -320
                  sra          t2, t4, s4
                  sltiu        s5, s5, 1023
                  srli         ra, s1, 9
                  addi         a0, a6, 1619
                  xor          a5, s4, a6
                  sll          t5, t0, a0
                  slti         s5, s8, -1371
                  lui          s0, 978965
                  sb           a6, -57(s8)
                  lbu          a0, -255(s8)
                  ori          t2, a3, -1087
                  ori          a5, s5, 1431
                  xor          s1, s10, t5
                  sb           s8, 51(s8)
                  addi         a2, s8, -1316
                  lbu          a2, -11(s8)
                  sra          t1, s9, s1
                  sub          t0, s6, ra
                  lb           gp, 9(s8)
                  sw           t1, 74(s8)
                  addi         t3, t2, -1257
                  lbu          t4, 68(s8) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+896 #start riscv_load_store_hazard_instr_stream_1
                  lb           a3, 8(a7)
                  sb           s8, 11(a7)
                  srli         t2, t4, 1
                  lb           s8, 11(a7)
                  ori          s3, t2, -27
                  lb           s1, 11(a7)
                  sb           s11, 11(a7)
                  sb           s9, 11(a7)
                  lb           t3, 11(a7)
                  or           a2, s4, sp
                  sb           t6, 11(a7)
                  add          ra, t5, t5
                  sb           s1, 11(a7)
                  lui          t5, 536935
                  lbu          a0, 11(a7)
                  sll          a5, s10, s5
                  sb           s11, 2(a7)
                  lh           a5, -14(a7)
                  lb           sp, -14(a7)
                  ori          gp, s2, -714
                  lh           s3, -12(a7)
                  sw           a1, -12(a7) #end riscv_load_store_hazard_instr_stream_1
                  bltu         t0, tp, 18f
                  blt          t1, t6, 15f
                  addi         s0, t3, 1488
                  xor          a2, t6, a5
                  bgeu         s5, gp, 13f
                  lui          s8, 243602
                  blt          t0, t4, 24f
                  xori         a3, s6, 718
                  sltiu        a7, t5, 1097
                  slli         s1, a3, 2
                  andi         a6, a7, -927
                  slli         ra, s6, 13
                  beq          gp, s5, 15f
13:               sra          tp, t4, t6
                  sll          zero, s9, s5
15:               blt          t2, a6, 23f
                  add          a1, s4, t6
                  addi         s4, s9, 1285
18:               sub          tp, a6, t4
                  srli         s5, a3, 3
                  slt          ra, tp, a3
                  srl          zero, t2, s0
                  bge          a3, t1, 31f
23:               srl          t4, a4, s6
24:               srli         s2, s2, 13
                  slli         s4, t2, 24
                  bge          s4, a7, 32f
                  addi         a3, a1, -1669
                  or           s1, s6, s8
                  srli         s2, t6, 3
                  ori          a1, s0, -471
31:               xori         t2, a6, -350
32:               nop
                  ori          t4, ra, 304
                  lui          s0, 398459
                  add          t1, s7, gp
                  bne          s1, s3, 42f
                  slti         t1, a1, 3
                  andi         t6, s1, 1511
                  bge          s2, a7, 49f
                  srai         gp, tp, 18
                  sll          a3, s1, a7
42:               ori          s10, t3, 153
                  beq          s5, a6, 51f
                  beq          ra, a5, 50f
                  nop
                  ori          t2, a1, 1653
                  srai         a3, a0, 5
                  ori          a1, a2, 1348
49:               sub          s8, t3, s5
50:               slti         t6, s9, 1813
51:               sub          s8, s10, t0
                  addi         s8, t2, 434
                  sub          s0, t5, t0
                  xori         s5, s2, -323
                  xor          s5, t1, a2
                  sll          s4, s3, s4
                  auipc        s4, 191585
                  slt          zero, t0, s6
                  sltiu        t3, a7, -1482
                  and          t0, s7, t1
                  slt          s5, s6, s5
                  nop
                  sltu         s5, ra, s3
                  sub          gp, s5, a6
                  addi         t3, s9, 1165
                  slti         s4, s2, 1512
                  add          s10, tp, s1
                  slt          t4, s2, zero
                  nop
                  sltu         t6, a6, a4
                  srai         a4, s11, 20
                  nop
                  sltiu        s6, t5, 2012
                  xor          a0, s1, s1
                  lui          s4, 500597
                  bge          zero, ra, 93f
                  andi         t5, s4, -746
                  slli         tp, a1, 14
                  srli         t4, a7, 10
                  srai         a3, s5, 5
                  slt          s1, s1, ra
                  xor          t4, tp, t4
                  lui          a1, 202998
                  sra          a5, a5, t6
                  sra          s6, gp, tp
                  slt          t4, t3, t2
                  sltiu        a0, s3, -464
                  bltu         a4, s0, 93f
                  andi         s5, s4, 1098
                  add          s3, s5, s9
                  bltu         a7, zero, 103f
                  slli         s5, s9, 10
93:               and          s2, s11, s6
                  slt          s1, s9, ra
                  or           a6, a2, a6
                  srli         t5, t4, 19
                  slt          s3, a7, s0
                  xori         zero, tp, -55
                  sub          t1, s6, a1
                  slti         t5, zero, 1247
                  xor          a3, s2, s6
                  xori         s8, gp, -610
103:              slli         s5, a6, 19
                  slti         tp, s11, -1071
                  sltiu        s10, s5, 1661
                  xori         s6, s2, 1080
                  sub          s8, t5, a0
                  srai         t0, t2, 29
                  addi         t6, tp, -1044
                  xori         a4, t1, 1781
                  bge          s6, a6, 120f
                  blt          gp, t6, 121f
                  addi         gp, a5, 1860
                  bltu         s4, tp, 128f
                  xor          sp, t1, t3
                  sltu         s8, t0, s4
                  lui          zero, 675096
                  bge          a4, s9, 124f
                  slti         a3, s10, -50
120:              nop
121:              blt          a0, a6, 137f
                  sub          s1, t2, a4
                  slli         s4, s0, 26
124:              sll          t2, s2, a6
                  sltu         tp, t2, s6
                  bgeu         zero, s11, 133f
                  bne          t0, s3, 130f
128:              srli         t1, sp, 21
                  srli         a1, t6, 19
130:              and          t4, s8, t0
                  auipc        a6, 218935
                  slli         a5, a3, 11
133:              ori          t5, s10, -1679
                  xor          a1, a7, s3
                  srl          a0, s0, zero
                  blt          s8, s5, 137f
137:              sll          s4, sp, a6
                  and          s3, ra, s3
                  srl          a5, s10, s9
                  beq          t3, s7, 141f
141:              add          s10, a4, t6
                  bltu         a7, s5, 154f
                  andi         a3, t4, -1063
                  slli         a0, s0, 21
                  slli         zero, a6, 22
                  andi         a1, s9, -364
                  sltu         t3, s8, s2
                  bge          a1, a0, 155f
                  sll          t1, ra, s11
                  slli         s1, t0, 29
                  sub          a0, a2, a1
                  bge          s6, zero, 163f
                  bne          tp, s3, 156f
154:              lui          gp, 634165
155:              slt          a3, a5, t3
156:              slli         a1, s11, 5
                  auipc        a6, 240436
                  addi         s4, t6, -1918
                  sub          s4, s1, s0
                  sub          s10, s2, t2
                  bne          a4, s1, 169f
                  srli         a1, s0, 10
163:              ori          s1, s0, -1903
                  and          t5, ra, a5
                  addi         gp, a1, 1551
                  bne          s7, a2, 172f
                  slt          t3, gp, a3
                  xor          a6, s9, a6
169:              beq          a7, ra, 175f
                  srl          a1, s7, s5
                  bne          s0, s6, 172f
172:              slti         a3, a0, -647
                  sll          a4, s1, t0
                  add          a7, t1, gp
175:              sub          a4, s3, s4
                  srl          s5, s4, s2
                  bgeu         ra, a2, 186f
                  sltu         a4, t0, zero
                  lui          s1, 17971
                  lui          a3, 972312
                  srl          a7, sp, t1
                  andi         gp, s8, -508
                  andi         a7, t1, 757
                  sll          a0, a2, t4
                  slti         t0, s2, -1841
186:              xor          s0, ra, t1
                  srai         a2, s7, 23
                  slt          a7, t3, t1
                  bltu         s1, s5, 201f
                  bne          t3, t1, 196f
                  srl          t6, s0, a7
                  sra          t3, t0, s0
                  add          t4, zero, ra
                  sltu         a2, t1, ra
                  sub          a6, s8, s10
196:              beq          s3, t5, 199f
                  bne          a4, s8, 208f
                  bge          gp, s2, 206f
199:              xor          t6, s9, s9
                  sub          s4, gp, a0
201:              sra          sp, t4, s3
                  nop
                  sltiu        s5, a3, -84
                  xori         s2, s3, -1425
                  ori          a4, s6, -1152
206:              andi         a4, a3, 1071
                  bge          ra, s10, 216f
208:              srli         t0, a3, 6
                  srl          t2, t2, sp
                  andi         s4, s1, 1857
                  slt          t2, t6, tp
                  sltu         s2, zero, s2
                  andi         a2, a4, -629
                  bgeu         s11, zero, 222f
                  sltu         a2, s8, t1
216:              bgeu         t5, a2, 224f
                  addi         s3, s7, -604
                  blt          s0, ra, 230f
                  beq          s10, gp, 228f
                  sub          ra, t4, t1
                  sub          a0, t6, s0
222:              sltu         s4, s0, a3
                  bne          s6, zero, 228f
224:              xori         t1, tp, -819
                  or           s2, tp, a4
                  slli         t3, s1, 17
                  slt          s10, a0, t5
228:              xori         t2, a4, 1228
                  slt          t1, s3, s0
230:              bltu         t0, s8, 239f
                  la           sp, region_1+486 #start riscv_load_store_rand_instr_stream_1
                  lbu          t1, 11(sp)
                  sltiu        s1, s2, -1001
                  srli         s8, a5, 0
                  lbu          t5, 7(sp)
                  lbu          a7, -61(sp)
                  sw           a7, 50(sp)
                  srli         a5, s10, 11
                  lb           s8, -44(sp)
                  slti         a4, ra, -366
                  nop
                  ori          a6, ra, -1916
                  lbu          s2, -47(sp)
                  lhu          t6, 6(sp)
                  ori          t2, s3, 165
                  sh           s1, -18(sp)
                  srai         tp, gp, 1
                  lb           t6, 39(sp)
                  sh           t5, -36(sp)
                  lw           ra, -2(sp)
                  sub          s8, t3, a1
                  lbu          a3, -51(sp)
                  lbu          s4, -22(sp)
                  lb           a7, 20(sp)
                  andi         s5, a2, 1086
                  sb           a6, 23(sp)
                  lbu          s6, 58(sp)
                  lbu          s3, 63(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         s2, t3, 238f
                  sltu         t6, s10, ra
                  slt          ra, t4, t5
                  blt          a7, s0, 250f
                  slti         s6, a1, 1655
                  sra          a5, t2, s9
                  blt          a5, s4, 243f
238:              bge          a2, t2, 239f
239:              auipc        a3, 876279
                  bne          a7, s7, 258f
                  sltiu        a6, t4, -1634
                  sltu         a6, a7, a2
243:              slt          a1, zero, s2
                  sll          t2, t3, t2
                  ori          s4, s1, -1987
                  sltu         t6, s2, s0
                  addi         s0, a3, 1690
                  or           s5, s11, t6
                  srl          s3, s0, s5
250:              add          a1, s1, ra
                  sltiu        s10, gp, -1979
                  add          gp, sp, a4
                  sub          t5, gp, a5
                  add          a7, s10, s11
                  slli         s0, a7, 17
                  blt          a3, s0, 262f
                  slli         s0, a3, 5
258:              srli         s2, a4, 19
                  or           a1, sp, zero
                  and          t3, s5, a0
                  andi         s6, a4, -2023
262:              sll          sp, s1, a3
                  slti         tp, t3, 467
                  bge          a4, a2, 267f
                  sltu         tp, t6, s10
                  slt          a3, a7, s4
267:              ori          t0, s0, 37
                  srli         t0, s8, 13
                  slti         t3, s6, 1145
                  srli         sp, ra, 4
                  lui          s3, 247575
                  sra          a1, a2, s2
                  slt          s6, t0, a0
                  lui          t4, 203898
                  xori         zero, s3, -842
                  slt          t6, s3, t2
                  xori         zero, a0, 670
                  lw           ra, 4(s7)
                  auipc        s6, 984703
                  srl          a1, s5, zero
                  addi         s7, s7, 8
                  lui          t6, 592784
                  or           a6, s5, a2
                  addi         a5, a7, -997
                  andi         s4, s9, 1453
465:              addi x2, x1, 1
465:              jalr x2, x2, 0
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x25, x23, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x7, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x7, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x7, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x7, x12, ecall_handler
                  li x12, 0x1
                  beq x7, x12, instr_fault_handler
                  li x12, 0x5
                  beq x7, x12, load_fault_handler
                  li x12, 0x7
                  beq x7, x12, store_fault_handler
                  li x12, 0xc
                  beq x7, x12, pt_fault_handler
                  li x12, 0xd
                  beq x7, x12, pt_fault_handler
                  li x12, 0xf
                  beq x7, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x23, x25, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
