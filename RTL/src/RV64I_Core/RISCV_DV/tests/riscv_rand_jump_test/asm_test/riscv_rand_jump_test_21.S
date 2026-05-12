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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0xe86eb71e
                  li x1, 0x2deef9d9
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x246ecb0e
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x8bd010e4
                  li x8, 0xf9994090
                  li x9, 0x0
                  li x10, 0xa3f68eb9
                  li x11, 0x9
                  li x12, 0x0
                  li x13, 0x38107859
                  li x15, 0xf8d31a8a
                  li x16, 0x4b558034
                  li x17, 0x5
                  li x18, 0xf2a37be6
                  li x19, 0xbb662e65
                  li x20, 0xe4e90541
                  li x21, 0x3
                  li x22, 0x8
                  li x23, 0x317acd2a
                  li x24, 0x4
                  li x25, 0xf2a7200f
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x93a345a7
                  li x29, 0x80000000
                  li x30, 0x0
                  la x31, user_stack_end
main:             la           t0, region_0+1654 #start riscv_load_store_rand_instr_stream_0
                  slt          a5, t4, s5
                  sltu         s2, sp, tp
                  xori         sp, s1, -1754
                  lh           gp, -688(t0)
                  lbu          t3, -5(t0)
                  lui          s7, 9759
                  lb           s1, 36(t0)
                  addi         t4, a5, -1997
                  add          s0, s3, s11
                  xori         s0, zero, -1064
                  lui          ra, 325192
                  srli         t3, s0, 1
                  lui          gp, 341813
                  sra          s1, s9, ra
                  srai         t3, s4, 19
                  srai         a2, t0, 1
                  sh           s3, -1422(t0)
                  srli         zero, t4, 1
                  lb           t1, 9(t0)
                  andi         a7, t4, -413
                  sll          a5, a6, s11
                  lbu          t5, 145(t0)
                  lb           s3, -853(t0)
                  slti         zero, a3, 651
                  sltiu        a6, t4, 228
                  addi         t1, a0, 1250
                  lb           gp, -295(t0)
                  sb           a1, -182(t0)
                  lhu          s6, -878(t0)
                  xor          zero, a2, gp
                  sltiu        a2, a0, -1040
                  lb           a1, -53(t0) #end riscv_load_store_rand_instr_stream_0
                  bne          t1, a5, 3f
                  bgeu         a3, t6, 11f
                  bne          s0, s0, 20f
3:                xor          s9, t4, t0
                  lui          a3, 770600
                  bgeu         a0, s0, 22f
                  auipc        a3, 294755
                  sub          t5, s11, s7
                  ori          s9, a2, -1239
                  slti         s1, s9, -459
                  sltu         s5, a2, s5
                  sltu         s5, t2, a0
                  la           t3, sub_1
                  addi         t3, t3, -881
                  sra          s2, s6, t1
                  beq          s9, t3, main_j2 #branch to jump instr
                  sll          t4, s9, t1
                  and          a5, s6, a0
main_j2:          jalr         t0, t3, 882 #jump main -> sub_1
                  sltu         s1, s8, s4
                  and          t1, a2, t1
                  beq          a3, tp, 25f
11:               or           s11, s11, a7
                  bne          ra, sp, 16f
                  or           t4, a0, a0
                  andi         zero, s0, 724
                  sltiu        a3, s6, 268
16:               sll          s5, a7, s6
                  or           a2, s2, s11
                  sltiu        s1, t2, -1516
                  srl          s2, s7, sp
20:               and          a7, a5, s1
                  sltu         zero, a7, t0
22:               add          s8, sp, gp
                  xori         a3, s8, 920
                  slti         s6, s4, -1605
25:               andi         t4, s4, 1481
                  bge          s7, s6, 35f
                  nop
                  auipc        s0, 637121
                  sra          t3, a7, s8
                  add          gp, a5, s8
                  srli         a0, s7, 20
                  bne          s5, t1, 34f
                  or           s2, s5, ra
34:               andi         a3, t6, 1266
35:               srai         s0, s7, 21
                  nop
                  sltiu        s1, s4, -1590
                  sltiu        t1, s8, -393
                  sll          a1, gp, a4
                  bgeu         s1, s5, 57f
                  bgeu         zero, s6, 45f
                  srai         a2, t5, 12
                  sll          s5, a5, s10
                  srai         s3, a1, 24
45:               sltiu        s9, s11, 2026
                  auipc        s11, 1142
                  ori          t0, a4, -668
                  or           s11, a4, zero
                  nop
                  beq          s7, a2, 69f
                  slt          s10, a3, t6
                  sra          s2, a1, s9
                  sltu         s10, s2, a1
                  xor          s6, s4, s6
                  blt          t2, s5, 71f
                  sll          t3, t1, sp
57:               bne          tp, sp, 58f
58:               sll          s7, t3, s9
                  auipc        s11, 263666
                  add          t4, tp, sp
                  sltu         s5, t1, a5
                  xor          s1, t1, tp
                  slti         a1, t6, -119
                  or           s0, a1, a4
                  blt          gp, t0, 66f
66:               srli         sp, s10, 12
                  nop
                  auipc        s3, 984929
69:               bgeu         a6, a1, 82f
                  srl          s0, a5, s8
                  la           gp, sub_1
                  srai         t3, a6, 24
                  lui          s0, 292769
                  add          s2, s7, a3
                  andi         s7, a4, 462
                  andi         ra, s10, 1430
                  addi         zero, t1, -250
                  addi         gp, gp, 877
                  nop
                  sra          a2, a7, sp
main_j1:          jalr         t0, gp, -877 #jump main -> sub_1
                  auipc        s0, 216064
71:               add          tp, s9, s5
                  and          tp, s2, s7
                  slti         s11, t3, -1047
                  slli         s10, t0, 5
                  bge          s6, s11, 91f
                  xor          s10, a7, s6
                  ori          s8, s4, 1947
                  bltu         s7, s7, 90f
                  slli         a5, t4, 6
                  slti         sp, s1, 1693
                  or           a1, t0, s8
82:               and          gp, t6, a7
                  or           s1, t1, tp
                  xori         t3, tp, 1525
                  xor          a7, a4, ra
                  xori         ra, t2, -1990
                  sub          a0, s1, t1
                  srai         s3, t6, 28
                  bge          ra, a3, 101f
90:               nop
91:               xori         tp, t3, 1752
                  andi         s7, s9, 979
                  bgeu         s0, a5, 110f
                  blt          s11, s6, 109f
                  bgeu         t5, a7, 113f
                  bltu         t2, s5, 103f
                  slli         zero, s8, 20
                  and          ra, s5, s5
                  bgeu         zero, ra, 117f
                  ori          s0, t2, -1243
101:              slli         a3, a5, 20
                  srai         sp, t5, 12
103:              and          gp, ra, a6
                  addi         tp, t4, -1862
                  addi         a1, gp, -2013
                  or           zero, s6, a7
                  slli         s9, gp, 8
                  sltiu        t0, a4, -67
109:              bne          s5, s5, 111f
110:              xori         a0, s0, -1730
111:              auipc        ra, 254173
                  or           a6, t5, a2
113:              or           zero, gp, s3
                  lui          t3, 640095
                  srai         a7, a6, 6
                  sra          s2, a6, t6
117:              sll          s11, t5, a4
                  blt          s5, zero, 136f
                  and          s3, t1, t1
                  beq          t2, a0, 138f
                  addi         a0, a6, -1750
                  bltu         t2, t4, 136f
                  slt          t2, a3, s10
                  lui          zero, 990502
                  srai         tp, t1, 30
                  and          gp, s5, s6
                  sltiu        s7, gp, -1367
                  or           s1, a3, gp
                  addi         sp, t2, -1781
                  and          a0, s6, t4
                  sra          t3, a7, a4
                  srli         tp, s9, 20
                  sll          s3, s7, s5
                  sub          s7, a4, gp
                  bne          s7, a7, 136f
136:              lui          t1, 1007500
                  bne          s10, s3, 148f
138:              or           s0, zero, t6
                  slti         s6, a2, 1442
                  blt          s7, ra, 144f
                  sub          a5, t1, s6
                  xor          t4, t4, a2
                  slli         sp, t2, 9
144:              slt          s9, a0, a3
                  srl          t1, sp, a5
                  lui          s8, 679415
                  and          t4, a2, s1
148:              sll          s2, zero, s1
                  sub          a2, s7, t5
                  nop
                  sll          t3, t0, sp
                  srli         t0, t5, 0
                  bne          a1, gp, 162f
                  xori         t2, s10, 703
                  srl          s1, t3, a3
                  srli         s2, s5, 31
                  and          a7, s4, s8
                  sll          s7, a3, a5
                  sub          a5, a5, t3
                  add          tp, a5, t4
                  slli         s2, s2, 26
162:              addi         sp, tp, -1774
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            auipc        s10, 142076
                  bge          a3, t6, sub_2_stack_p
                  srl          tp, zero, sp
                  andi         t4, zero, -695
sub_2_stack_p:    addi         t6, t6, -56
                  sll          tp, a6, s9
                  andi         a6, s2, 1378
                  sra          a3, a3, a6
                  sw           t0, 4(t6)
                  srl          s11, s6, s3
                  addi         t4, t6, -1056
                  la           s3, sub_5
                  nop
                  sltu         a3, t0, t2
                  addi         s3, s3, -927
                  sra          a0, t1, a1
                  sra          s9, s6, t0
                  srl          zero, s10, s3
                  lui          t0, 278367
                  nop
sub_2_j6:         jalr         t0, s3, 928 #jump sub_2 -> sub_5
                  xor          a7, s0, s0
                  la           s7, sub_4
                  addi         a2, tp, 1237
                  addi         s7, s7, -776
                  andi         a1, s4, 1833
                  xor          t2, t3, ra
                  xor          t0, s8, t2
sub_2_j7:         jalr         t0, s7, 777 #jump sub_2 -> sub_4
                  sll          zero, s9, zero
                  bne          a3, t4, 3f
                  sltu         t4, s6, tp
3:                xor          s11, s7, s3
                  beq          sp, s3, 9f
                  sra          t4, s6, s0
                  add          s9, t1, s11
                  sub          s8, a6, t4
                  lui          a2, 276316
9:                xor          a5, s3, s9
                  srli         s7, gp, 3
                  ori          t5, ra, 962
                  sub          a0, t3, a0
                  lw           t0, 4(t6)
                  sra          s5, s4, a2
                  sltu         zero, gp, s1
                  addi         t6, t6, 56
                  sll          a2, s2, a6
                  sll          a7, s5, s9
                  and          zero, t5, s9
49:               addi x21, x5, 1
49:               jalr x21, x21, 0
sub_1:            and          s5, s9, s4
                  bltu         a0, tp, sub_1_stack_p
sub_1_stack_p:    addi         t6, t6, -36
                  sll          s1, t0, zero
                  xor          s0, a2, s2
                  srli         t4, a5, 29
                  sw           t0, 4(t6)
                  andi         zero, t2, 374
                  nop
                  add          a0, t2, zero
                  auipc        ra, 975591
                  la           s5, sub_2
                  srai         t4, gp, 26
                  srli         a2, a3, 8
                  xori         gp, a7, -428
                  addi         s9, s11, 1260
                  slti         a0, s1, 585
                  addi         s5, s5, 13
                  sltiu        s0, a7, -281
                  xor          a5, s2, zero
                  slt          s8, s10, gp
sub_1_j3:         jalr         t0, s5, -12 #jump sub_1 -> sub_2
                  la           a6, sub_3
                  addi         s6, s10, 954
                  xor          s8, s7, s7
                  slti         ra, s8, 451
                  addi         a6, a6, -28
                  beq          s10, t6, sub_1_j4 #branch to jump instr
                  and          a5, a0, a3
                  slti         t5, s1, 1103
sub_1_j4:         jalr         t0, a6, 29 #jump sub_1 -> sub_3
                  xori         a5, a6, 752
                  auipc        zero, 993477
                  or           sp, a4, tp
                  andi         a5, t0, -1658
                  sltiu        t2, t5, -1591
                  nop
                  la           a1, sub_2
                  nop
                  sltu         t0, zero, s6
                  sll          ra, s6, a3
                  addi         a1, a1, 123
                  sra          zero, a1, a4
sub_1_j5:         jalr         t0, a1, -123 #jump sub_1 -> sub_2
                  bne          s10, a6, 20f
                  sll          s8, s4, a0
                  sll          a1, tp, zero
                  slt          a7, ra, sp
                  nop
                  bltu         s8, a1, 9f
                  slti         a2, a5, 559
                  auipc        s11, 383979
                  slt          a3, a1, a3
9:                nop
                  bgeu         s4, t4, 18f
                  srl          t1, t0, t5
                  xor          s3, a0, a4
                  bgeu         a1, t3, 31f
                  blt          s11, s2, 31f
                  slt          a7, a6, t3
                  and          s6, t4, t1
                  srai         a0, a6, 25
18:               srl          s3, a4, t6
                  slli         a3, a3, 19
20:               or           a1, s10, s3
                  bne          t0, s5, 28f
                  sub          s3, tp, t5
                  bge          a3, t0, 34f
                  slli         t1, t4, 13
                  auipc        a6, 39847
                  lui          t4, 84641
                  slli         zero, tp, 21
28:               srli         t1, s9, 27
                  bltu         s9, s8, 33f
                  bgeu         s5, s7, 42f
31:               or           s0, s5, zero
                  sltiu        t1, tp, 1664
33:               beq          zero, sp, 35f
34:               srl          a7, s2, a4
35:               bge          s9, s3, 44f
                  bgeu         s2, s3, 44f
                  slti         t0, a7, 961
                  or           zero, s1, s2
                  xori         a1, sp, -360
                  xor          s2, s0, s1
                  andi         a3, s5, 1097
42:               slt          s6, s8, s4
                  auipc        s3, 154834
44:               and          s1, s5, a3
                  sll          zero, t3, t3
                  srli         s3, s3, 9
                  xor          s3, s2, a3
                  sltu         t2, a4, a5
                  lw           t0, 4(t6)
                  sub          sp, s9, a4
                  sub          s9, s8, a6
                  addi         t6, t6, 36
                  xori         tp, t3, 1550
                  xor          a1, t2, s2
                  sub          s8, a7, a6
100:              addi x29, x5, 0
100:              jalr x29, x29, 0
sub_3:            slti         t5, zero, -1033
                  auipc        s1, 792939
                  or           tp, s1, s0
                  add          a2, s5, a5
                  srl          s1, a5, t0
                  blt          s1, t1, sub_3_stack_p
                  slt          a7, s10, s3
                  srli         s10, s11, 11
                  nop
sub_3_stack_p:    addi         t6, t6, -32
                  sw           t0, 4(t6)
                  sltu         sp, s0, s4
                  slt          sp, s7, s10
                  la           sp, region_0+144 #start riscv_load_store_rand_instr_stream_3
                  sh           sp, 964(sp)
                  lb           s6, 401(sp)
                  sb           s5, 405(sp)
                  lb           s11, 307(sp)
                  auipc        s9, 1031574
                  xori         s1, s10, -1221
                  andi         tp, a6, -1920
                  lb           a0, 1753(sp)
                  lui          t2, 14239
                  nop
                  lhu          t1, 588(sp)
                  sltu         a0, s0, s1
                  sb           a1, 1696(sp)
                  lw           a5, 932(sp)
                  xor          tp, s5, s7
                  lbu          a7, 1051(sp)
                  lw           a0, 1220(sp)
                  sub          s6, a6, a7
                  sh           s6, 370(sp)
                  xori         t3, s3, 396
                  sb           s11, 363(sp)
                  sub          a7, t1, s2
                  sltiu        tp, a7, 231
                  srai         a3, sp, 4
                  sub          a1, gp, zero
                  srl          a6, s3, t4
                  lb           t3, 342(sp)
                  ori          s6, tp, 230
                  sb           s4, 853(sp)
                  srli         s1, t1, 15
                  sb           t0, 843(sp)
                  xori         s11, s2, 211
                  sltiu        ra, t5, -1840
                  sh           gp, 1390(sp)
                  xori         s2, s11, 1224
                  sub          ra, s8, t3
                  lbu          s6, 1415(sp)
                  auipc        s1, 819002
                  sb           s5, 219(sp)
                  lbu          gp, 719(sp)
                  srai         s9, s4, 24
                  ori          s8, s8, -815
                  sb           tp, 1389(sp)
                  auipc        s8, 1042190
                  sh           s1, 980(sp)
                  ori          a0, a4, 1819
                  slli         s2, s10, 14
                  lb           t1, 411(sp)
                  lbu          t4, 866(sp)
                  srli         s9, s9, 17
                  lb           s9, 468(sp)
                  sll          t5, a6, t1
                  xor          s9, t0, a7
                  sh           a4, -38(sp)
                  sltu         a5, a7, s1
                  sw           t3, 256(sp)
                  lb           s6, 1219(sp)
                  sb           a2, -73(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+911 #start riscv_load_store_rand_instr_stream_1
                  sb           s4, -29(sp)
                  sw           a1, 37(sp)
                  lhu          s9, 17(sp)
                  xor          t5, t6, t6
                  sb           t5, -21(sp)
                  slli         s5, s8, 8
                  sb           s2, -58(sp)
                  xori         a6, a7, 1889
                  sub          s11, a3, t5
                  lh           t1, -33(sp)
                  lbu          s2, 2(sp)
                  lw           t2, -43(sp)
                  add          t3, s8, tp
                  lb           s11, 64(sp)
                  lbu          t2, 26(sp)
                  addi         a0, sp, 888
                  auipc        a5, 582194
                  lui          t5, 182508
                  lbu          a1, 54(sp)
                  sltu         tp, s2, s2
                  lb           t0, 58(sp)
                  lhu          s0, 39(sp)
                  sb           s1, -5(sp)
                  sltu         a1, s7, s7
                  slli         a6, a4, 16
                  lh           s5, -53(sp)
                  xor          s1, tp, gp
                  lb           t2, 14(sp)
                  sub          s9, a0, t4
                  slti         s6, t5, 1881
                  slli         s5, a0, 13
                  lh           s3, -55(sp)
                  or           s9, t4, a4
                  xor          t5, s2, t1
                  lbu          s1, 34(sp)
                  lbu          t1, 50(sp)
                  xor          a6, a2, t6
                  srli         s9, t5, 4
                  slti         t1, a2, -1995
                  lb           s6, -26(sp)
                  srl          t4, a2, a2
                  sltu         a3, zero, a1
                  lh           t2, -49(sp)
                  lb           a7, -26(sp)
                  lb           s11, 20(sp)
                  lbu          s2, -16(sp)
                  lbu          s7, -52(sp)
                  sll          s8, t0, s6
                  auipc        a6, 81776
                  lb           a5, -5(sp)
                  lhu          t5, 31(sp)
                  sll          s2, a2, t0
                  sh           a5, 55(sp)
                  lb           tp, -24(sp)
                  sh           s3, 27(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1217 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, 16(sp)
                  lbu          s1, -10(sp)
                  slti         a1, s7, -686
                  lbu          s10, 5(sp)
                  ori          t4, zero, -1413
                  lbu          s11, -6(sp)
                  lbu          s5, -4(sp)
                  lbu          a5, 12(sp)
                  sb           s11, 11(sp)
                  slli         s5, zero, 14
                  sb           t5, -13(sp)
                  slt          s3, tp, s2
                  lb           zero, -2(sp)
                  lbu          t5, -2(sp)
                  lbu          s9, -8(sp)
                  sb           t4, -4(sp)
                  srl          s11, a1, s11
                  lb           ra, -12(sp)
                  lb           s2, -14(sp)
                  sb           t1, -10(sp)
                  xori         s10, sp, -940
                  add          t2, t0, zero
                  lh           t1, 5(sp)
                  auipc        a0, 292658
                  lh           s2, -9(sp)
                  sb           tp, -14(sp)
                  lhu          a0, -11(sp)
                  nop
                  sb           s7, 8(sp)
                  sltu         s6, zero, a4
                  slti         a6, a3, -1531
                  lbu          a7, -4(sp)
                  lh           s7, 15(sp)
                  sh           t1, -11(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+936 #start riscv_load_store_rand_instr_stream_5
                  sb           s11, -14(sp)
                  lbu          t1, 47(sp)
                  lb           s9, 64(sp)
                  lhu          s10, -46(sp)
                  sb           a7, 11(sp)
                  lhu          a3, -14(sp)
                  sb           tp, 48(sp)
                  slli         zero, s5, 21
                  sb           a1, 41(sp)
                  sltu         s6, s11, s4
                  and          s9, gp, a4
                  slli         s6, s2, 27
                  lb           a7, 53(sp)
                  lb           t2, -31(sp)
                  auipc        s5, 605228
                  nop
                  sra          tp, s3, s8
                  lbu          s0, 15(sp)
                  slli         a7, s11, 17
                  sra          t1, s7, s5
                  sh           a4, 18(sp)
                  xori         t0, a4, 1032
                  slti         t2, s0, -1965
                  lui          s11, 503931
                  srl          t3, a6, t6
                  srl          a5, a3, t2
                  lb           s9, 13(sp)
                  sb           a6, 10(sp)
                  slti         s9, s5, 1627
                  sw           a4, 32(sp)
                  lb           s9, -27(sp)
                  sh           tp, 22(sp)
                  lw           t1, -36(sp)
                  lb           s6, -52(sp)
                  lb           zero, 25(sp)
                  sh           s7, 30(sp)
                  lb           s0, 30(sp)
                  xor          a3, a2, s4
                  sb           t6, -5(sp)
                  lb           s10, 17(sp) #end riscv_load_store_rand_instr_stream_5
                  sltu         t3, sp, a0
                  nop
                  srai         sp, s0, 30
                  beq          s0, s3, 10f
                  blt          a5, s7, 13f
                  la           s2, region_0+1903 #start riscv_load_store_rand_instr_stream_0
                  slti         s3, zero, 1081
                  or           a6, s7, a0
                  sltiu        t3, s6, -880
                  sltu         gp, s0, s7
                  sltiu        sp, s8, -1782
                  srai         s9, a3, 6
                  lhu          s8, 47(s2)
                  lhu          s0, -57(s2)
                  and          a3, s3, a1
                  lhu          a3, -135(s2)
                  slli         t0, ra, 29
                  lb           ra, 67(s2)
                  lui          t1, 865291
                  lui          a1, 241800
                  sb           ra, -83(s2)
                  xori         a7, gp, 1203
                  lh           t3, -111(s2)
                  auipc        tp, 193650
                  lhu          a2, -89(s2)
                  lhu          a5, 47(s2)
                  lb           s6, -240(s2)
                  lhu          tp, 43(s2)
                  lbu          a0, -185(s2)
                  sb           sp, 48(s2)
                  lbu          t4, -90(s2)
                  xor          a6, a3, s6
                  lh           a1, -41(s2)
                  lhu          s7, -71(s2)
                  xori         t4, s0, -286
                  ori          a6, s4, -1790
                  lb           s0, -173(s2)
                  lbu          tp, -46(s2)
                  slti         t5, s1, -1079
                  lbu          t2, 0(s2)
                  srli         a0, s8, 30
                  sra          s5, s3, s0
                  sub          a6, a7, t0
                  sb           s0, -48(s2)
                  sb           s0, 6(s2)
                  xor          t4, s6, s3
                  sltiu        s6, a3, -2024
                  lb           t2, -226(s2)
                  lbu          t5, -218(s2)
                  srai         zero, t0, 20
                  lb           tp, -210(s2)
                  xori         a2, s2, -484
                  lh           s1, 31(s2) #end riscv_load_store_rand_instr_stream_0
                  add          a7, t5, zero
                  sub          s11, t4, a7
                  and          s10, s4, t6
                  xori         sp, tp, -370
                  blt          a3, ra, 24f
10:               andi         t3, s1, -1051
                  add          s0, s4, t4
                  slli         s11, gp, 15
13:               or           s6, t2, s8
                  add          s8, gp, zero
                  srli         s8, a6, 18
                  add          a5, a7, s9
                  sltu         s8, t3, ra
                  bltu         s1, a0, 19f
19:               or           a5, t5, s3
                  srli         a2, s11, 24
                  sltiu        t4, s10, 1271
                  sltiu        t3, t3, -509
                  auipc        a2, 426655
24:               xori         t3, s0, 168
                  blt          t0, t5, 39f
                  slti         t1, a1, 1515
                  srli         s1, zero, 27
                  xor          a7, s7, s4
                  slti         s1, t0, 64
                  srli         tp, s5, 4
                  addi         s6, s7, -381
                  bne          a7, t2, 52f
                  sub          gp, t5, t3
                  andi         t0, t2, -1264
                  sltu         tp, s10, zero
                  auipc        s2, 71737
                  addi         s9, a5, 1601
                  xor          tp, a6, s6
39:               andi         t2, s2, 1903
                  lui          a7, 58982
                  sub          t2, t5, s5
                  ori          ra, s6, -1739
                  sltiu        a5, s11, -1543
                  slti         s0, t1, -312
                  slt          tp, a4, s11
                  sub          gp, s7, tp
                  auipc        t5, 740850
                  add          a6, s8, t2
                  srai         t1, s8, 24
                  bgeu         t3, s5, 66f
                  addi         s10, a5, -1729
52:               xor          sp, a7, t0
                  andi         tp, a1, 1990
                  beq          t5, ra, 69f
                  blt          a3, s5, 56f
56:               sub          t2, t0, s5
                  bgeu         t3, gp, 76f
                  xor          gp, a7, a4
                  srl          s8, gp, a3
                  blt          t5, s8, 73f
                  sltu         s11, s2, s1
                  bltu         a4, s8, 77f
                  xori         s2, s0, -826
                  or           t0, s7, t5
                  nop
66:               sltiu        a5, s0, -696
                  sltu         a6, s8, zero
                  and          s8, s4, a4
69:               beq          t5, tp, 74f
                  xori         s8, s6, 925
                  beq          a5, s6, 78f
                  or           s3, a0, s1
73:               slt          s9, s0, s4
74:               auipc        t1, 720087
                  srl          s6, ra, tp
76:               xor          t5, sp, a7
77:               bltu         t6, sp, 83f
78:               slt          zero, t2, zero
                  andi         s5, t2, -1733
                  slti         s7, t4, 1557
                  xor          s11, a6, s1
                  auipc        t2, 303863
83:               nop
                  bne          t2, sp, 97f
                  sll          s9, a0, t2
                  xor          s7, s8, s0
                  bge          s6, a4, 88f
88:               blt          a3, gp, 95f
                  slti         t4, s11, 1470
                  slt          a6, s10, zero
                  ori          s7, t6, 816
                  andi         t4, a3, -1025
                  lui          a2, 492556
                  addi         ra, t6, -755
95:               addi         a5, ra, 1177
                  addi         t1, s0, 2025
97:               srai         s2, ra, 18
                  andi         s0, a5, 678
                  ori          a5, s9, -1585
                  srl          a1, s5, s5
                  slti         a0, a7, 1319
                  auipc        s7, 575028
                  nop
                  sltu         t0, t1, s10
                  bne          s3, tp, 110f
                  sub          tp, s5, s10
                  xori         s7, a2, 1921
                  bgeu         t5, a5, 126f
                  slli         a0, t6, 0
110:              sltiu        s11, a3, -1882
                  blt          s0, s1, 130f
                  beq          s5, a5, 130f
                  sub          s0, a2, s1
                  sltu         a2, tp, tp
                  beq          t2, a1, 127f
                  sll          s2, zero, s3
                  blt          a4, t5, 123f
                  or           ra, t1, s8
                  nop
                  srli         s3, s1, 10
                  nop
                  and          ra, t4, ra
123:              sltu         a7, s8, a5
                  sltiu        t1, tp, -1530
                  sltu         t3, a7, a4
126:              sltu         s11, s1, s3
127:              xor          t1, tp, t4
                  srai         s10, ra, 19
                  auipc        tp, 197560
130:              xori         a7, tp, 957
                  srli         s5, t1, 26
                  addi         s10, sp, -1119
                  xori         tp, s9, -147
                  srl          s5, t0, t5
                  lui          t5, 547538
                  bne          a4, s6, 153f
                  slti         s10, a1, -2048
                  bne          tp, a2, 152f
                  bne          sp, a7, 140f
140:              srl          s3, s10, a5
                  and          t0, s11, s0
                  addi         a6, s2, 1352
                  xor          a6, t2, s1
                  ori          sp, a7, 755
                  sll          ra, a7, a7
                  sub          s6, s6, s10
                  slti         s1, s3, -1686
                  sub          a0, a4, a7
                  lui          s2, 817197
                  add          s2, s3, s1
                  slli         a3, s0, 7
152:              and          a7, t0, gp
153:              sll          zero, zero, a6
                  sltiu        a3, zero, 516
                  addi         s5, a1, 1424
                  or           t0, s0, t6
                  beq          s11, s8, 159f
                  slt          s0, t1, s3
159:              bgeu         s8, sp, 178f
                  xor          s1, s9, s10
                  bge          a6, s4, 168f
                  addi         s10, ra, 790
                  auipc        s9, 263797
                  bltu         t0, ra, 165f
165:              or           s11, t5, a0
                  sub          a6, a7, s3
                  srli         s0, a1, 6
168:              slli         ra, ra, 7
                  or           ra, a3, t6
                  srli         t4, s11, 7
                  xor          a3, zero, a5
                  sll          t2, t5, s3
                  auipc        a7, 522046
                  add          t1, s10, s5
                  nop
                  add          s3, gp, s9
                  slti         t2, t0, -330
                  la           gp, sub_5
                  xori         s3, s10, -391
                  addi         gp, gp, 1015
                  srl          a1, a5, s10
                  andi         a2, t4, 642
sub_3_j8:         jalr         t0, gp, -1015 #jump sub_3 -> sub_5
                  add          sp, t5, s6
                  add          s8, s4, s9
178:              andi         gp, s11, 953
                  bgeu         a1, s3, 194f
                  ori          s2, s0, 735
                  bge          s4, s6, 182f
182:              xor          s0, a6, a4
                  srl          s6, zero, a3
                  srai         a3, s0, 14
                  or           s11, a0, a3
                  beq          t0, t3, 188f
                  bge          s11, ra, 206f
188:              xor          s3, a5, s4
                  auipc        a5, 149478
                  srli         s2, s0, 23
                  slt          s3, a0, t6
                  lui          s0, 603878
                  sltiu        a7, s2, 451
194:              slti         t0, a3, 955
                  blt          t1, t3, 211f
                  add          t3, t5, s1
                  sltu         a6, t1, t4
                  and          t5, s9, s1
                  slt          a1, s6, a1
                  sra          t0, s3, tp
                  sltiu        a5, s9, 1396
                  addi         s0, s1, -1674
                  slli         sp, t0, 4
                  srl          s3, t3, s11
                  add          t3, t2, s7
206:              sub          t1, s5, s4
                  sll          gp, t2, ra
                  srli         tp, a3, 0
                  bge          a7, t0, 214f
                  ori          sp, s4, -1390
211:              bltu         gp, a2, 223f
                  lui          s3, 807186
                  slli         s0, ra, 3
214:              srai         t5, t6, 28
                  addi         s1, s0, -1887
                  xori         t2, a3, 404
                  sub          a7, zero, a4
                  bge          s1, s4, 235f
                  bge          a3, s2, 238f
                  addi         a1, s4, 663
                  or           a6, a0, a1
                  andi         s1, a4, 1966
223:              xori         s3, s0, 2017
                  sltu         t3, ra, zero
                  xor          s1, a3, t6
                  add          gp, s0, s2
                  xori         s9, s7, 1650
                  and          s9, s7, t1
                  ori          s2, a7, 401
                  sltu         s7, s1, tp
                  bge          t6, t1, 238f
                  and          t0, t4, s1
                  and          t4, s1, t2
                  sra          t3, s10, a2
235:              sra          s3, s4, a4
                  ori          s9, s1, 1214
                  bne          a1, a6, 257f
238:              bge          a1, t4, 243f
                  or           s5, s3, a0
                  lui          zero, 805289
                  xor          a1, s6, gp
                  srai         a3, sp, 5
243:              blt          a6, t6, 249f
                  sra          a6, s10, t0
                  xori         t5, s8, -654
                  slti         t4, t6, -1320
                  xori         tp, s10, -610
                  nop
249:              and          gp, s11, a0
                  sll          a7, a5, a1
                  nop
                  bne          t0, t3, 259f
                  blt          s10, s7, 254f
254:              addi         t3, s3, 173
                  bne          s11, t4, 269f
                  andi         a0, s8, -1157
257:              sltu         a5, zero, a1
                  sra          s8, s8, t0
259:              srl          a6, s7, a4
                  bne          s2, a6, 269f
                  sra          t5, s9, t5
                  lui          sp, 371930
                  xori         t1, a2, -1407
                  sra          t2, a3, s7
                  ori          t4, t1, 231
                  slt          a6, s5, a0
                  sub          t0, a6, t5
                  auipc        t4, 123541
269:              bne          t0, t2, 288f
                  slli         s6, a5, 1
                  or           t1, s7, s1
                  srl          t1, gp, s6
                  xori         s7, t1, -533
                  blt          s2, s8, 292f
                  srai         t1, s11, 18
                  sra          sp, t0, s9
                  and          t2, s2, s9
                  lui          s0, 677725
                  bne          t0, gp, 280f
280:              bgeu         s6, s9, 287f
                  bge          ra, s8, 296f
                  and          t4, t1, a4
                  slt          t0, a6, ra
                  beq          s11, t5, 298f
                  andi         a3, a0, -1776
                  srl          sp, zero, t5
287:              auipc        s6, 862384
288:              lui          s1, 24332
                  addi         t5, a6, 295
                  lui          a5, 849243
                  srli         a0, t4, 6
292:              lui          t0, 389087
                  bltu         s10, t6, 306f
                  sll          tp, s2, t6
                  slt          a6, t6, a7
296:              srai         a7, t1, 2
                  or           s8, sp, t3
298:              beq          t3, s9, 305f
                  andi         zero, s7, -1911
                  or           tp, t5, s5
                  sltiu        t1, s0, -552
                  nop
                  nop
                  bne          a1, s9, 319f
305:              or           s2, t2, s11
306:              slt          s2, t1, s1
                  slli         sp, ra, 19
                  sra          a5, ra, s9
                  sltiu        tp, s9, 1200
                  addi         s3, sp, 698
                  slti         a3, ra, -1023
                  ori          s6, s10, -303
                  bgeu         a3, a7, 331f
                  srl          sp, t0, gp
                  addi         a6, t5, 505
                  slli         a1, s11, 10
                  nop
                  andi         s7, s5, -1699
319:              ori          a6, gp, -593
                  slli         s5, s11, 14
                  and          t0, t0, sp
                  nop
                  and          a6, t6, a1
                  sltiu        a5, s0, -700
                  srl          t1, a6, a4
                  ori          t4, a7, 184
                  slt          s6, tp, t1
                  addi         s0, s11, 561
                  and          a2, a7, s11
                  bge          t3, t4, 336f
331:              blt          a6, s0, 344f
                  addi         s2, ra, -1742
                  sltu         s7, a7, a3
                  beq          zero, s7, 341f
                  addi         t4, a6, 1949
336:              ori          s11, t2, 578
                  add          a5, zero, s11
                  auipc        a1, 258749
                  bge          a1, s6, 340f
340:              blt          t0, s5, 355f
341:              sub          t2, a6, t2
                  sra          s0, s6, t6
                  bge          t3, s9, 362f
344:              nop
                  sltiu        a3, s3, -189
                  srli         s5, s9, 14
                  or           s6, t6, ra
                  sra          s1, s9, s2
                  xor          t0, t2, zero
                  bne          s2, a3, 351f
351:              srli         t0, s4, 14
                  sltiu        s11, s11, -894
                  bne          a4, t2, 358f
                  andi         a7, t2, 293
355:              auipc        s2, 733104
                  sltu         a3, gp, t4
                  beq          gp, s5, 371f
358:              or           s5, s4, s6
                  sltu         s7, s4, s11
                  sra          s5, s7, s1
                  srl          t0, s4, s11
362:              slt          s11, zero, gp
                  auipc        ra, 165002
                  bge          s6, s5, 365f
365:              slti         t2, a6, -563
                  sltu         a5, ra, t0
                  nop
                  nop
                  addi         t0, t2, -1121
                  slt          s5, a7, s6
371:              sll          s5, s2, a3
                  andi         s5, s0, 1296
                  addi         t0, a4, 926
                  xor          s1, t2, s8
                  and          a7, a5, t0
                  bltu         s1, a1, 394f
                  bne          s1, a1, 390f
                  slt          tp, t0, t3
                  lui          t5, 102302
                  and          s3, a3, a2
                  blt          s7, t2, 397f
                  blt          gp, a7, 400f
                  auipc        s5, 482649
                  xor          s3, s0, s5
                  srli         s8, s6, 5
                  lui          a1, 609561
                  srl          s0, s9, t5
                  sltu         ra, s2, tp
                  slli         a6, t3, 15
390:              andi         a2, s8, 788
                  bltu         t6, t6, 392f
392:              sltu         t1, t5, s10
                  andi         sp, t5, 478
394:              addi         s10, ra, -1977
                  srli         ra, gp, 10
                  srl          t3, s10, t5
397:              srai         a3, gp, 5
                  xor          s7, s6, t4
                  xori         s10, a6, 1927
400:              sltu         gp, t0, s9
                  or           zero, a1, a4
                  bltu         s2, s8, 416f
                  bgeu         s11, s6, 409f
                  srl          s0, s10, t5
                  ori          t4, a2, 1304
                  xor          s7, s1, t5
                  bne          s6, a6, 424f
                  sub          t0, a4, t2
409:              slti         s10, sp, -527
                  bltu         s0, s4, 417f
                  bgeu         s8, sp, 417f
                  sltiu        s0, tp, -169
                  bne          s1, a5, 428f
                  blt          sp, s11, 434f
                  xori         s3, s5, -1897
416:              srl          t5, gp, t3
417:              beq          a5, s5, 424f
                  sub          zero, s11, t0
                  nop
                  srli         t2, t3, 13
                  and          a6, s7, a3
                  blt          a1, s3, 434f
                  srli         s6, s4, 1
424:              sltiu        a7, a4, -1061
                  sub          t3, s2, a5
                  andi         ra, s6, 278
                  slti         t0, t6, 1443
428:              sltiu        s9, a6, 1267
                  bgeu         tp, s7, 442f
                  bne          a1, t3, 437f
                  bne          sp, s3, 436f
                  sltiu        s8, a4, 335
                  slli         s7, s4, 12
434:              bne          t6, a7, 436f
                  sltu         sp, a2, s2
436:              sub          a0, s10, t5
437:              xori         s6, gp, -677
                  sll          t0, s1, s4
                  xor          a5, t4, t4
                  sll          t4, s1, a6
                  lui          s2, 649887
442:              xor          zero, a7, t0
                  lui          a7, 220228
                  slt          tp, s0, a7
                  nop
                  slli         tp, s8, 4
                  blt          s7, t6, 466f
                  sll          t0, a2, t0
                  srli         s10, a7, 7
                  srli         a1, s3, 22
                  nop
                  sub          s10, sp, a6
                  or           a7, s6, s2
                  xor          zero, gp, zero
                  srli         a0, a4, 31
                  sra          t4, tp, a0
                  bgeu         tp, a7, 466f
                  andi         a3, sp, 407
                  auipc        s6, 493515
                  bne          s10, a2, 475f
                  addi         t0, tp, -1599
                  srai         t2, s8, 2
                  or           a3, s7, s5
                  srai         s9, s5, 21
                  slli         a0, tp, 24
466:              bgeu         s2, a4, 485f
                  bne          t1, t0, 480f
                  srl          s11, s11, a7
                  ori          a1, sp, -608
                  sltiu        s1, s4, -1578
                  bgeu         t6, s6, 485f
                  beq          a4, s4, 487f
                  add          gp, s10, s8
                  auipc        s3, 110528
475:              andi         s5, s0, 472
                  srai         s1, t2, 2
                  bgeu         sp, t3, 478f
478:              andi         a2, s11, 561
                  auipc        s6, 594248
480:              or           s1, t0, s8
                  sltu         s1, s9, gp
                  sltu         tp, a7, s3
                  sltiu        s9, s11, 307
                  sll          t2, t1, a2
485:              or           t5, s2, ra
                  beq          a1, s5, 492f
487:              srli         a7, tp, 12
                  sltiu        gp, ra, 598
                  srl          s7, t4, gp
                  xori         t2, s6, 1074
                  srai         ra, tp, 2
492:              xor          a2, s3, t5
                  slt          a3, s1, a4
                  bltu         t2, gp, 513f
                  ori          t3, s6, 1492
                  srai         zero, t0, 27
                  ori          t3, s6, 1086
                  and          s2, t1, t6
                  sll          s11, a2, a5
                  sltiu        t5, s4, -394
                  sltu         a0, a2, s6
                  andi         a5, s0, -237
                  srli         s6, s2, 26
                  and          t4, t1, t1
                  bltu         s10, a4, 523f
                  xori         s5, a2, 40
                  beq          a0, t6, 508f
508:              or           s1, s8, s9
                  add          ra, t6, a6
                  and          s0, s8, t0
                  add          s7, a0, s9
                  sra          s3, zero, s11
513:              blt          s9, s0, 515f
                  ori          gp, s11, 1734
515:              lui          s5, 6874
                  blt          s10, zero, 531f
                  srli         t5, a7, 16
                  sltu         gp, a1, s7
                  blt          s6, t3, 526f
                  beq          a2, s8, 525f
                  slli         a2, a4, 17
                  and          ra, t5, s6
523:              bltu         s8, t3, 532f
                  sltiu        sp, a3, 1264
525:              bltu         s6, a4, 532f
526:              bge          t2, t3, 546f
                  srai         s11, t3, 12
                  xori         s6, a3, 206
                  srai         sp, a6, 17
                  bge          s4, s2, 542f
531:              srl          s2, s2, gp
532:              and          t5, t1, a3
                  ori          s8, s5, -1933
                  bltu         sp, s11, 549f
                  xori         t3, t2, 282
                  addi         t2, a1, 638
                  sltiu        t4, gp, 1140
                  srl          s6, ra, s0
                  bltu         t5, s10, 544f
                  bge          s4, s1, 554f
                  ori          tp, s3, 107
542:              bgeu         zero, s7, 561f
                  sltu         a5, t5, a1
544:              srli         a0, tp, 10
                  addi         t0, t0, 1348
546:              srl          s5, a3, s11
                  sra          s5, t1, zero
                  andi         s11, a2, 511
549:              addi         s8, t6, 570
                  srai         s9, tp, 28
                  addi         a0, s3, 1417
                  or           a1, t5, s7
                  blt          a0, s2, 569f
554:              bne          t4, zero, 561f
                  slt          s8, a6, a3
                  and          s1, s10, sp
                  sltu         tp, t2, s0
                  sltiu        t2, a6, 67
                  beq          a7, zero, 572f
                  beq          t2, a0, 561f
561:              sra          s2, s10, a4
                  slt          s1, s4, s3
                  bltu         a7, s7, 581f
                  add          zero, s2, a4
                  addi         t5, t2, -1349
                  addi         a7, a5, 1187
                  andi         zero, t3, -1146
                  and          s9, s0, t4
                  la           t4, region_0+240 #start riscv_load_store_rand_instr_stream_4
                  lb           sp, 60(t4)
                  srai         a3, t3, 27
                  sb           a3, -59(t4)
                  lbu          s11, 33(t4)
                  sb           zero, 24(t4)
                  slt          s0, tp, s1
                  sb           a4, -53(t4)
                  lbu          a7, 35(t4)
                  lb           a2, -10(t4)
                  sb           a2, 63(t4)
                  sh           gp, -64(t4)
                  sb           t2, 45(t4)
                  srai         sp, t4, 12
                  sb           s0, 56(t4)
                  sb           a5, -26(t4)
                  lhu          sp, -34(t4)
                  sb           s2, -14(t4)
                  auipc        a5, 652963
                  sb           s5, -1(t4)
                  sw           s6, -48(t4)
                  lbu          sp, -41(t4)
                  lb           s7, -41(t4)
                  lb           a2, -42(t4)
                  lbu          s7, -9(t4)
                  sltu         a7, t5, ra
                  lbu          t5, -5(t4)
                  auipc        a6, 959223
                  and          t0, gp, s3
                  sll          t3, s8, s6
                  and          zero, t0, s8
                  andi         s8, s10, 1220
                  lbu          t2, 6(t4)
                  lw           a0, 44(t4)
                  sra          t1, a1, s5
                  lbu          s3, -33(t4)
                  sw           s9, -48(t4)
                  sb           a1, -7(t4)
                  add          s1, t4, t6
                  lb           tp, -11(t4) #end riscv_load_store_rand_instr_stream_4
569:              sra          tp, a7, t4
                  srl          s1, s4, t5
                  srl          t3, s11, t6
572:              bgeu         s0, s11, 589f
                  blt          s2, t0, 579f
                  nop
                  xor          s7, s9, tp
                  slti         gp, s1, 1364
                  xori         a1, a2, 158
                  add          a7, s6, zero
579:              addi         a5, s3, -1618
                  slli         ra, s8, 3
581:              slti         t5, a2, -1729
                  bgeu         s7, s11, 583f
583:              bgeu         a5, s10, 590f
                  sub          a5, s1, ra
                  xori         a6, a5, 1858
                  blt          s2, s4, 605f
                  sltu         t1, s3, t5
                  slli         s9, s8, 27
589:              srl          sp, s1, s7
590:              lui          t4, 30471
                  ori          s0, a4, 1672
                  ori          ra, s3, 437
                  xor          a3, s5, zero
                  and          s3, tp, t3
                  xori         ra, ra, -767
                  xori         ra, s3, -213
                  xor          sp, s5, ra
                  srli         s11, gp, 25
                  slli         t0, s1, 11
                  srli         s5, t6, 30
                  xori         t0, s1, 1091
                  addi         s2, a5, 298
                  srl          t1, t0, sp
                  sltiu        t0, s11, -970
605:              bltu         tp, a4, 611f
                  bltu         a6, s2, 623f
                  srl          t3, sp, s11
                  andi         s0, s5, 1246
                  srl          a7, s6, a5
                  lui          t2, 907443
611:              slli         s3, s5, 8
                  ori          s1, s6, 270
                  sll          t0, s4, s7
                  beq          a5, s2, 628f
                  bge          a2, s6, 633f
                  add          t3, t3, t6
                  or           t0, t6, t2
                  xor          t2, a4, s8
                  add          tp, ra, a1
                  srai         s10, t6, 9
                  or           t1, zero, s1
                  ori          gp, s8, -1012
623:              bne          s7, t5, 625f
                  srli         s1, s5, 23
625:              beq          a4, s11, 639f
                  bne          t1, s6, 644f
                  andi         t4, s1, -1580
628:              srl          s0, s0, t0
                  blt          t3, s3, 642f
                  srli         a6, s5, 7
                  sub          a2, s10, a7
                  sltiu        t4, t2, 2016
633:              sra          a3, a1, s4
                  sub          s2, s2, a7
                  beq          sp, s3, 642f
                  bge          s3, t6, 651f
                  add          zero, s11, a7
                  and          a1, s5, a6
639:              sra          a5, t3, a6
                  or           s11, a5, t4
                  nop
642:              slli         a3, t0, 5
                  srl          s1, gp, sp
644:              sltiu        zero, s10, -408
                  slli         t5, s5, 12
                  bge          gp, gp, 655f
                  ori          s7, t2, 1978
                  nop
                  blt          tp, s10, 654f
                  slti         s3, a1, -503
651:              add          ra, a2, a5
                  sub          t1, ra, s3
                  nop
654:              slt          t1, a2, s8
655:              slli         a5, s11, 14
                  beq          s6, t4, 657f
657:              slti         s1, s4, 1238
                  sltu         s11, s7, t1
                  srl          a2, a6, a3
                  srl          s5, sp, ra
                  blt          s1, s11, 676f
                  nop
                  beq          ra, s3, 678f
                  blt          t3, t6, 683f
                  srli         zero, s3, 17
                  slt          gp, s0, t3
                  sub          t3, zero, a2
                  and          zero, zero, s7
                  sra          s1, t3, t3
                  srli         s8, s2, 25
                  sltu         s7, a5, t0
                  xor          s10, s11, tp
                  xor          zero, a6, t5
                  sltiu        t1, s2, -1009
                  slti         t2, sp, 1266
676:              addi         ra, s10, 207
                  bgeu         sp, a6, 678f
678:              addi         t5, s1, -715
                  or           a7, t5, s10
                  sll          s1, a4, a7
                  srl          tp, s11, zero
                  sra          t5, t2, gp
683:              sltiu        a5, t3, -1717
                  nop
                  srai         t3, s2, 25
                  add          a0, a3, s5
                  bne          sp, zero, 706f
                  add          s1, a3, t1
                  srai         t1, s3, 20
                  slti         zero, a5, -2048
                  bge          t5, ra, 704f
                  bge          t0, a2, 698f
                  beq          t2, t3, 694f
694:              bge          a1, a7, 701f
                  nop
                  bne          s6, s0, 716f
                  srai         a7, s11, 21
698:              srli         a0, a0, 11
                  bltu         a4, a4, 706f
                  slli         s11, s5, 2
701:              sra          gp, sp, t6
                  xor          s6, ra, a5
                  add          s1, s11, s4
704:              bltu         s6, s9, 720f
                  bltu         s8, ra, 717f
706:              slti         a5, t4, 1306
                  nop
                  bge          s4, s7, 715f
                  sub          s0, zero, a3
                  or           a3, s1, s7
                  bgeu         s4, a0, 730f
                  sltu         s5, tp, a3
                  sra          s10, s2, s11
                  blt          t1, a7, 715f
715:              andi         s2, a0, 457
716:              lui          zero, 40779
717:              xor          s9, s11, s0
                  sltu         s0, a5, tp
                  srl          t3, s0, a6
720:              srai         gp, t4, 20
                  slt          s0, s4, a3
                  blt          s1, ra, 727f
                  add          t0, s7, s5
                  beq          a3, s4, 730f
                  srai         t4, a5, 11
                  or           zero, s0, t6
727:              srai         s11, s3, 20
                  sltiu        a1, s5, 446
                  lui          s11, 941078
730:              srl          s11, a4, ra
                  nop
                  sra          zero, s6, s1
                  sub          sp, a1, s10
                  nop
                  bltu         a2, a7, 750f
                  bge          t4, a5, 749f
                  or           a5, zero, t2
                  slli         s10, a1, 12
                  sra          s7, gp, t6
                  srai         a0, a3, 17
                  addi         s3, t3, 1617
                  bltu         a1, a1, 747f
                  sltiu        t0, s3, -1347
                  bgeu         s3, s3, 757f
                  or           s8, s7, a4
                  xor          s8, t4, s1
747:              beq          s4, s11, 766f
                  bltu         a6, t0, 766f
749:              sltu         s6, t0, s1
750:              bgeu         t4, t3, 756f
                  slli         s11, s0, 6
                  srli         a6, s4, 2
                  xori         s2, sp, 178
                  sub          s9, a5, zero
                  slli         s1, tp, 9
756:              srli         ra, a6, 2
757:              bltu         s5, t0, 771f
                  xori         t0, a4, 96
                  bne          a2, s3, 760f
760:              sll          a7, t1, s1
                  slt          s5, tp, s6
                  srli         t2, s1, 17
                  sll          t3, s3, a5
                  andi         s5, s4, 888
                  auipc        s3, 790349
766:              lui          tp, 851955
                  srl          sp, t5, t4
                  bne          s6, s7, 784f
                  and          s6, s9, s8
                  lui          s11, 764455
771:              nop
                  andi         gp, s6, -484
                  and          s1, s1, a3
                  blt          a1, s2, 794f
                  bgeu         gp, t3, 782f
                  sra          a7, a6, a0
                  ori          t0, a1, 1682
                  xor          s11, a5, s4
                  auipc        s8, 355139
                  auipc        a0, 579938
                  srli         a6, a5, 21
782:              sra          t3, a5, t2
                  blt          zero, a5, 784f
784:              blt          a3, a4, 803f
                  sltiu        s0, s8, 839
                  xori         s10, t2, -2041
                  lui          gp, 361429
                  blt          t2, a4, 793f
                  xori         s11, a7, -2015
                  sub          s6, a3, s3
                  lui          s5, 967549
                  sltu         s0, s2, a7
793:              or           a3, s5, a1
794:              slti         t0, s7, -558
                  slli         a7, a3, 24
                  sra          s0, s2, a3
                  nop
                  slt          s10, zero, s8
                  addi         a1, t4, 250
                  andi         s6, s0, 1165
                  bltu         a5, a3, 810f
                  bgeu         s6, s9, 810f
803:              xori         a0, t2, -786
                  and          t0, s0, sp
                  srl          s5, sp, t5
                  srli         gp, s0, 12
                  add          zero, a6, t1
                  sll          s10, t0, t0
                  bne          t2, t5, 810f
810:              slti         t5, s7, -44
                  sll          s6, ra, t0
                  srai         s7, s10, 31
                  lw           t0, 4(t6)
                  addi         t6, t6, 32
                  addi         t1, t3, 1001
                  srl          zero, s7, a3
                  sra          ra, tp, s1
1118:             addi x26, x5, 0
1118:             jalr x26, x26, 0
sub_5:            sra          s10, t3, a4
                  bne          s9, s0, sub_5_stack_p
                  and          a2, s0, s7
sub_5_stack_p:    addi         t6, t6, -44
                  xori         s11, s7, 654
                  lui          s3, 562605
                  and          s9, s6, a2
                  sw           t0, 4(t6)
                  srli         a3, a4, 30
                  and          gp, s6, t5
                  xori         s5, ra, 1359
                  sll          s1, t2, a4
                  srai         s1, s0, 16
                  srli         s8, a3, 21
                  nop
                  srl          s6, t4, a0
                  add          a1, sp, t2
                  xor          t3, s4, t0
                  nop
                  xori         a5, a2, 1317
sub_5_j13:        jal          t0, sub_6 #jump sub_5 -> sub_6
                  sub          a2, s3, t5
                  or           a1, s0, s8
                  blt          t2, s11, 12f
                  slli         t0, s11, 22
                  bne          ra, a1, 12f
                  or           sp, s11, zero
                  bltu         s1, a2, 12f
                  xor          s2, s2, t2
                  ori          a6, s7, -315
                  bne          a7, s0, 12f
                  sltiu        s7, t4, 4
                  sub          t0, t3, a2
12:               or           a5, t5, a5
                  srl          s9, tp, tp
                  sra          a1, ra, s4
                  lw           t0, 4(t6)
                  addi         t6, t6, 44
                  andi         s6, t6, 1256
                  sll          s11, sp, a7
40:               addi x22, x5, 0
40:               jalr x22, x22, 0
sub_7:            bgeu         s1, a6, sub_7_stack_p
                  or           s8, a5, s11
sub_7_stack_p:    addi         t6, t6, -36
                  xori         s2, t0, 1705
                  xori         t4, a0, -1594
                  sw           t0, 4(t6)
                  addi         sp, t0, -409
                  la           a3, sub_10
                  slt          t3, t3, t0
                  addi         a3, a3, 404
                  auipc        s9, 416490
                  bge          gp, s2, sub_7_j14 #branch to jump instr
                  slt          s10, s3, s9
                  andi         s10, s4, 1293
                  or           sp, a6, s7
                  sltiu        a6, s9, 451
sub_7_j14:        jalr         t0, a3, -404 #jump sub_7 -> sub_10
                  bgeu         s11, zero, 14f
                  add          t5, a0, s8
                  addi         tp, ra, -1641
                  auipc        s7, 385676
                  addi         s11, s5, 89
                  sltiu        a1, s2, -1814
                  sll          a5, a5, tp
                  srai         s5, a1, 6
                  sll          sp, s4, t3
                  addi         sp, a4, -1984
                  ori          sp, a2, 1571
                  sub          s11, s7, s4
                  sub          sp, a1, t4
                  bgeu         s5, t5, 21f
14:               ori          s10, t6, -826
                  sll          s2, a6, s9
                  sltiu        s1, a0, 1512
                  beq          t6, t6, 29f
                  ori          s0, s8, -283
                  or           s1, t5, s3
                  srl          s2, a6, ra
21:               blt          sp, tp, 32f
                  xori         a6, a6, -398
                  srli         a3, a0, 29
                  nop
                  add          gp, sp, s11
                  bltu         s10, s6, 39f
                  slli         t3, t6, 0
                  lui          gp, 410212
29:               slli         sp, s8, 31
                  slti         a5, a2, -1539
                  nop
32:               blt          ra, s8, 42f
                  addi         a2, a6, 2014
                  lui          a7, 623681
                  add          ra, t3, s6
                  sub          s8, a6, a2
                  and          a1, s8, s5
                  and          a1, t6, s10
39:               sra          s1, t3, t1
                  auipc        a5, 582295
                  blt          tp, tp, 54f
42:               sltu         s2, t0, t1
                  auipc        s11, 524294
                  sltu         t1, a1, a4
                  sll          zero, sp, tp
                  srai         sp, s2, 16
                  xori         s2, s3, -107
                  sll          t1, s11, a1
                  and          zero, a4, ra
                  bgeu         a7, s2, 63f
                  sra          s3, a4, s11
                  bgeu         t2, a0, 58f
                  slli         s7, s3, 9
54:               xori         a5, gp, -752
                  srai         a5, a5, 18
                  ori          sp, s9, -187
                  nop
58:               srai         s2, s6, 1
                  add          a0, t3, t1
                  sra          a0, s0, a2
                  sub          s6, t2, t0
                  blt          a2, t2, 63f
63:               bltu         s7, gp, 83f
                  bgeu         s2, s8, 82f
                  addi         t5, a3, 735
                  bge          a4, a5, 73f
                  blt          sp, ra, 81f
                  srai         s9, t2, 24
                  xori         a2, s1, 741
                  sltu         a2, t5, s7
                  sub          s11, t2, t4
                  bgeu         s8, sp, 73f
73:               add          t0, gp, a7
                  and          s6, s1, a7
                  sltu         sp, a2, s0
                  lui          s0, 504564
                  slli         t1, a1, 18
                  bgeu         s1, a1, 80f
                  and          gp, t6, s8
80:               lui          s3, 561753
81:               xor          a6, s0, a6
82:               slli         a7, ra, 3
83:               sltiu        t4, t1, -1822
                  andi         sp, a7, -1889
                  or           t4, ra, t5
                  sltiu        s10, s4, -697
                  bne          t0, a2, 92f
                  slt          t4, tp, s11
                  addi         t0, ra, 71
                  sub          s2, s7, a4
                  bgeu         a6, a1, 99f
92:               addi         sp, a2, -820
                  bltu         s11, a4, 99f
                  srli         a0, s10, 1
                  or           s1, zero, s3
                  srli         t4, a2, 14
                  sra          t1, s4, s11
                  srl          a1, t2, zero
99:               xor          s11, t1, gp
                  ori          s9, a3, 130
                  sltiu        s0, s2, 828
                  srl          s10, s4, s1
                  slti         sp, tp, -687
                  auipc        s8, 372178
                  srl          gp, s5, tp
                  addi         s1, a0, 695
                  sltu         gp, a6, a5
                  sub          a2, s2, zero
                  srai         a7, a0, 12
                  addi         sp, s5, 1016
                  slt          ra, a5, a1
                  bge          a3, s8, 119f
                  addi         s6, s7, -1807
                  bltu         s3, t2, 115f
115:              or           s9, s2, tp
                  bne          a2, t0, 120f
                  bne          a1, t1, 120f
                  sltu         ra, a0, t5
119:              or           s3, sp, t0
120:              lui          a6, 616610
                  auipc        t2, 877238
                  auipc        s7, 860212
                  lw           t0, 4(t6)
                  addi         t6, t6, 36
                  sll          a6, a1, t4
                  slti         s1, s11, 1
144:              addi x15, x5, 1
144:              jalr x15, x15, 0
sub_6:            slt          sp, sp, zero
                  bge          a3, a5, sub_6_stack_p
                  xor          a5, t0, s8
sub_6_stack_p:    addi         t6, t6, -28
                  ori          sp, s0, 1932
                  slli         a2, s1, 26
                  srl          s10, a3, a3
                  sltu         s11, t4, gp
                  sw           t0, 4(t6)
                  xori         t4, s5, -1755
                  sltiu        a6, gp, 1796
                  xor          s1, s6, s0
                  la           s7, region_1+1994 #start riscv_load_store_rand_instr_stream_14
                  sltu         s0, t6, t4
                  sll          a7, a4, a0
                  lb           a5, -51(s7)
                  slti         a7, t0, 543
                  add          sp, t6, t3
                  andi         a3, t6, 1280
                  slli         s2, s4, 6
                  xor          s9, a5, a2
                  lb           t5, -196(s7)
                  lw           s11, -214(s7)
                  sw           a6, -62(s7)
                  or           s5, s1, s6
                  sub          a6, a3, ra
                  sll          s3, ra, t0
                  sb           a7, -108(s7)
                  sra          zero, s9, sp
                  or           a2, t0, t6
                  sltiu        s2, t3, -1033
                  ori          a2, t2, -544
                  xor          t4, a3, zero
                  lbu          s2, -180(s7)
                  sra          t1, a5, a4
                  sra          t4, a6, s3
                  sh           zero, -182(s7)
                  sb           s9, -57(s7)
                  sw           zero, -122(s7)
                  auipc        a5, 919951
                  lb           s6, -222(s7)
                  lbu          a3, -235(s7)
                  sb           s10, -61(s7)
                  sltiu        s9, s3, -503
                  lb           s8, -51(s7)
                  slti         a0, a0, 52
                  sb           ra, -91(s7)
                  lb           tp, -207(s7)
                  sll          a3, s5, s8
                  sb           s0, -142(s7)
                  srai         t5, tp, 24
                  slli         t5, s10, 0
                  xori         tp, t6, 1036
                  srai         s11, a2, 0
                  sra          t1, t1, s6
                  lhu          a6, -124(s7) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+464 #start riscv_load_store_rand_instr_stream_0
                  sb           a7, -43(sp)
                  sb           s7, 49(sp)
                  lb           s2, -45(sp)
                  slti         s8, s3, -1607
                  lbu          s5, -41(sp)
                  sb           s11, 42(sp)
                  lw           s1, 32(sp)
                  sra          s3, zero, t5
                  srai         s3, t0, 6
                  sb           s10, -50(sp)
                  auipc        s1, 609634
                  lui          s11, 656024
                  sub          s2, a2, zero
                  sra          ra, t3, a1
                  andi         s9, tp, -1472
                  lhu          t3, 62(sp)
                  sb           zero, -27(sp)
                  srai         a5, s0, 30
                  lw           tp, -8(sp)
                  xori         a6, s8, 1013
                  nop
                  lui          a5, 598590
                  sb           s2, -15(sp)
                  lui          s8, 178357
                  sltiu        t3, t6, -1705
                  sra          a3, s6, s5
                  lb           s11, -1(sp)
                  sb           a1, -19(sp)
                  nop
                  lbu          a1, -4(sp)
                  lb           gp, -61(sp)
                  lbu          a5, -14(sp)
                  or           s11, t0, a1
                  lb           s7, 27(sp)
                  lhu          s5, -28(sp)
                  lb           a7, 41(sp)
                  sltu         s10, s3, s3
                  and          gp, s2, t0
                  lbu          s1, 24(sp)
                  lh           gp, 56(sp)
                  lb           t3, -26(sp) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+90 #start riscv_load_store_rand_instr_stream_13
                  and          s2, s2, s6
                  ori          ra, s5, 221
                  sb           a6, 534(gp)
                  auipc        ra, 11844
                  sub          s6, a4, t2
                  or           ra, s1, a1
                  srli         t1, t0, 19
                  nop
                  srli         tp, s1, 17
                  slti         s6, s9, -1599
                  addi         a6, tp, 379
                  sb           t1, 309(gp)
                  lh           t0, 1488(gp)
                  add          s1, t4, s10
                  sltiu        s0, a6, -118
                  addi         s11, t2, -403
                  lhu          a6, 270(gp)
                  sb           s10, -59(gp)
                  add          s2, s10, s5
                  lbu          a3, 1287(gp)
                  and          tp, s3, s5
                  lui          t1, 539237
                  lb           a5, 83(gp)
                  andi         a0, t0, -1579
                  ori          s1, a6, 1219
                  lbu          s11, 1215(gp)
                  sb           a3, 1039(gp)
                  slti         a3, ra, 1654
                  nop
                  lb           tp, 842(gp)
                  or           a6, zero, t2
                  xor          ra, a3, sp
                  sll          t1, s6, t5
                  sb           zero, 1143(gp)
                  addi         t1, s11, 1289
                  lw           s8, 778(gp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+762 #start riscv_load_store_rand_instr_stream_3
                  sb           t3, -176(sp)
                  ori          a5, s9, 1811
                  lhu          t5, 254(sp)
                  sra          t1, s1, s2
                  ori          a5, a5, 210
                  addi         zero, s11, -656
                  lhu          t4, -82(sp)
                  lhu          ra, 34(sp)
                  lh           s3, -166(sp)
                  xori         t4, a2, 1855
                  srl          s2, s9, t5
                  xor          t1, t6, a6
                  slt          a2, t0, sp
                  sb           a2, -188(sp)
                  lb           s0, -229(sp)
                  xor          a6, a6, t3
                  sra          s5, s2, a7
                  auipc        ra, 882312
                  slti         a7, a4, -597
                  lh           tp, -20(sp)
                  add          t1, a0, a0
                  lb           s9, -239(sp)
                  add          s6, ra, a2
                  nop
                  sb           s9, 191(sp)
                  lb           tp, -177(sp)
                  lbu          a0, 91(sp)
                  sltu         s10, a4, s10
                  lh           t3, -96(sp)
                  sb           s7, 241(sp)
                  xor          t0, a5, s0
                  xor          t2, s1, s7
                  slti         s0, a6, -1234
                  sb           t0, 256(sp)
                  sub          t4, t2, t3
                  srli         s7, s7, 2
                  sltu         s3, t5, s10
                  sb           t3, -207(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s5, region_1+1244 #start riscv_load_store_rand_instr_stream_6
                  lbu          zero, 63(s5)
                  sltiu        a1, s11, 559
                  sb           ra, -11(s5)
                  sra          gp, s0, s1
                  lbu          t3, -63(s5)
                  lb           a7, 13(s5)
                  slli         a1, s8, 11
                  lb           sp, -52(s5)
                  add          s2, a2, s5
                  ori          sp, s10, 1062
                  sltu         a1, ra, tp
                  sra          s10, a5, s8
                  lbu          s6, -17(s5)
                  and          s8, t6, s10
                  sb           t1, -53(s5)
                  lb           a0, -52(s5)
                  lbu          s7, 29(s5)
                  sb           s3, -47(s5)
                  sb           t1, 49(s5)
                  lbu          s11, 13(s5)
                  add          gp, a6, sp
                  xor          t5, a2, t4
                  sb           s8, 13(s5)
                  lw           ra, 0(s5)
                  lb           s6, -59(s5)
                  sb           s8, 47(s5)
                  lbu          s1, 30(s5) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1487 #start riscv_load_store_rand_instr_stream_9
                  srai         a5, t1, 16
                  lbu          t2, 350(sp)
                  sb           a6, -340(sp)
                  srai         s6, t3, 16
                  sb           s0, -1314(sp)
                  xor          a7, a4, t0
                  lhu          s3, -423(sp)
                  lb           a7, -549(sp)
                  and          t1, t0, a3
                  lui          ra, 495027
                  sra          s3, s11, sp
                  lb           ra, -534(sp)
                  sb           s9, -677(sp)
                  slt          t2, t3, s5
                  lbu          a0, -628(sp)
                  lb           t2, -906(sp)
                  and          a0, t0, s8
                  sltu         s9, t4, a2
                  sll          s1, s8, s4
                  slt          s1, s3, t2
                  sb           t5, 33(sp)
                  sra          zero, s8, ra
                  sll          s3, t5, a3
                  srl          s6, s5, ra
                  lhu          s2, -881(sp)
                  lb           t2, 200(sp)
                  lb           s2, 246(sp)
                  sub          s10, zero, zero
                  srai         tp, sp, 4
                  sltiu        ra, a0, -1401
                  and          s6, a4, a7
                  xor          s8, t3, s10
                  addi         a5, s5, -1674
                  lb           s0, -1164(sp)
                  slt          ra, t3, sp
                  slli         ra, s2, 4
                  addi         s10, s5, -265
                  slti         s1, a5, -1976
                  lh           a2, -1121(sp) #end riscv_load_store_rand_instr_stream_9
                  la           ra, region_0+1567 #start riscv_load_store_rand_instr_stream_4
                  sb           gp, 12(ra)
                  sb           a7, 8(ra)
                  auipc        a5, 523402
                  nop
                  addi         s2, t6, -1538
                  xori         a2, a2, -1032
                  sub          sp, a1, s9
                  lui          t5, 8491
                  slt          s11, s0, sp
                  or           a7, t6, a0
                  auipc        tp, 261496
                  srli         a3, sp, 16
                  sh           s5, 5(ra)
                  srli         s9, t4, 5
                  auipc        t3, 301801
                  addi         t0, s11, 1480
                  srai         a7, t4, 9
                  srai         a6, a1, 18
                  slti         s1, s7, -140
                  lbu          a0, -6(ra)
                  lbu          a3, 16(ra)
                  add          zero, s3, gp
                  lb           s1, -14(ra)
                  add          a6, a7, s11
                  nop
                  and          gp, tp, s5
                  srl          s6, t5, a3
                  lw           s5, 13(ra)
                  lbu          tp, 15(ra)
                  sb           sp, -12(ra)
                  and          s11, s3, a1
                  lb           gp, -13(ra)
                  slt          t1, t3, a6
                  xor          t0, s2, s8
                  sb           t5, -11(ra) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1589 #start riscv_load_store_rand_instr_stream_2
                  srl          s5, zero, a6
                  sb           s1, 76(sp)
                  sb           a6, 235(sp)
                  lb           gp, 120(sp)
                  sh           t3, 137(sp)
                  sltiu        s3, zero, 309
                  srai         s5, a7, 20
                  nop
                  lhu          a5, 251(sp)
                  slt          t2, s5, s9
                  lbu          a3, -238(sp)
                  lhu          s5, -63(sp)
                  lhu          tp, 193(sp)
                  slti         s2, s9, 1830
                  sh           t1, -83(sp)
                  lhu          s9, -219(sp)
                  lbu          t0, -128(sp)
                  sb           a0, 183(sp)
                  lb           a5, 186(sp)
                  nop
                  lb           t4, 102(sp)
                  slti         s1, a6, -59
                  sb           s1, -92(sp)
                  or           ra, a4, t3
                  srl          s1, a3, s6
                  lb           s8, 81(sp)
                  lb           tp, -31(sp)
                  lui          s3, 883801
                  sh           tp, -161(sp)
                  sb           s4, -153(sp)
                  sb           a6, 141(sp)
                  slti         s6, ra, -1379
                  lb           s5, -213(sp)
                  lbu          t1, -37(sp)
                  lb           a6, -92(sp)
                  slti         s5, a1, 2019
                  srli         s0, t0, 23
                  sb           t5, 212(sp)
                  xor          s6, a6, s0
                  sb           tp, 147(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_0+528 #start riscv_load_store_rand_instr_stream_5
                  and          a6, s7, a3
                  sltu         zero, a5, a1
                  slti         a5, t0, -609
                  or           a6, s1, a5
                  sb           ra, 13(s8)
                  andi         ra, tp, -897
                  sltu         t5, s11, ra
                  lui          s9, 598402
                  xor          a3, t6, a1
                  srli         a7, a4, 27
                  lb           t4, 14(s8)
                  slt          s11, s3, a0
                  sltu         s0, a5, gp
                  sra          tp, ra, s7
                  addi         t0, t5, -1886
                  lhu          zero, 6(s8)
                  add          a7, sp, t1
                  or           gp, s0, zero
                  sub          a3, s7, tp
                  addi         s2, t1, -1556
                  sb           t4, -10(s8)
                  xori         sp, t2, -1845
                  auipc        s7, 192283
                  and          tp, t5, t3
                  ori          s3, s11, 1200
                  lb           s1, 4(s8)
                  sb           s0, 11(s8)
                  lbu          a3, -10(s8)
                  lw           t0, 0(s8)
                  and          gp, t3, gp
                  xori         t1, t5, 434
                  sh           a0, -2(s8)
                  srai         s5, s2, 10
                  lb           tp, 2(s8)
                  srai         s7, t0, 8
                  lbu          t1, 7(s8) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+824 #start riscv_load_store_rand_instr_stream_8
                  lhu          t1, -2(sp)
                  sltiu        s8, a7, 1160
                  slt          ra, s7, s5
                  lb           s2, 38(sp)
                  lb           s0, 36(sp)
                  xori         a3, t4, -995
                  lbu          t0, 27(sp)
                  addi         gp, t4, -1232
                  slli         gp, a1, 0
                  sra          t1, gp, s9
                  andi         t1, zero, 1900
                  andi         a6, s4, 1823
                  nop
                  srl          t2, a1, t5
                  srl          s10, s9, t0
                  srl          zero, t6, tp
                  sh           s0, -14(sp)
                  srl          s10, a5, sp
                  sb           s9, -17(sp)
                  andi         s9, t6, 1510
                  srli         s7, a7, 25
                  sb           s4, 5(sp)
                  sb           gp, -29(sp)
                  lbu          t4, -43(sp)
                  lb           s0, 43(sp)
                  sltu         a3, sp, tp
                  add          t5, a0, s9
                  sub          t2, t6, t0
                  lbu          s9, -17(sp) #end riscv_load_store_rand_instr_stream_8
                  la           tp, region_1+488 #start riscv_load_store_rand_instr_stream_7
                  or           s5, t5, s1
                  lbu          s7, -195(tp)
                  sb           gp, -145(tp)
                  sra          gp, s8, s2
                  sw           s4, -168(tp)
                  srai         s2, t4, 18
                  lbu          s5, -126(tp)
                  lb           a7, -90(tp)
                  lb           s0, 191(tp)
                  srai         a3, a0, 15
                  sltu         gp, t2, t0
                  sub          ra, a0, sp
                  sb           sp, -164(tp)
                  sw           s4, -12(tp)
                  slt          a7, sp, zero
                  lb           ra, 64(tp)
                  lb           s5, -121(tp)
                  lui          s5, 626532
                  lbu          t2, -71(tp)
                  add          a2, s4, tp
                  sh           a5, 204(tp)
                  lb           gp, -206(tp)
                  lbu          t5, 65(tp)
                  nop
                  lb           s1, 150(tp)
                  sb           t2, 239(tp)
                  lb           sp, -247(tp) #end riscv_load_store_rand_instr_stream_7
                  ori          a7, s10, -677
                  or           tp, a1, s11
                  sll          a1, s3, t5
                  add          ra, s1, t0
                  srai         ra, t6, 31
                  addi         tp, s9, 1229
                  nop
                  sltiu        s0, a2, 1099
                  srl          s6, a0, a6
                  sltu         a5, zero, t4
                  beq          s6, t0, 18f
                  bne          s10, s3, 21f
                  or           t3, a1, a1
                  sra          a7, a1, t3
                  add          ra, tp, t6
                  sltu         s3, a4, s1
                  blt          s3, s2, 30f
                  slt          t4, s6, t5
18:               sll          a7, a3, a6
                  sub          t5, sp, a0
                  sll          s11, s7, t4
21:               bne          a6, s10, 41f
                  bne          s9, s5, 36f
                  bne          s0, s8, 30f
                  sltu         a1, a0, a3
                  sltiu        s6, a2, 285
                  slt          t4, s4, a6
                  bne          s4, t4, 30f
                  bgeu         t1, s2, 46f
                  slt          t3, t5, s8
30:               nop
                  xor          s8, gp, s2
                  sra          zero, s1, ra
                  bgeu         s10, t6, 40f
                  slt          s9, tp, a6
                  andi         s10, t2, -2012
36:               bgeu         s3, zero, 52f
                  xor          s9, tp, a0
                  slti         t2, s5, 310
                  addi         a3, gp, -432
40:               xor          a3, s9, t6
41:               beq          t5, a7, 48f
                  and          t5, sp, a0
                  and          t1, s4, t0
                  bgeu         a0, s6, 49f
                  xori         s6, ra, -639
46:               or           s2, t6, gp
                  bltu         a3, s11, 63f
48:               sltu         s0, t1, t6
49:               beq          s5, t1, 56f
                  ori          tp, s3, -1943
                  addi         t0, s3, 527
52:               beq          tp, t0, 65f
                  bltu         t0, gp, 64f
                  lui          gp, 167056
                  auipc        s0, 458327
56:               and          s5, a4, t6
                  bltu         t0, t3, 59f
                  and          a7, gp, a6
59:               sub          t1, a5, s3
                  srai         zero, t6, 6
                  slli         gp, s5, 7
                  beq          s8, t4, 78f
63:               sll          s6, a5, s6
64:               andi         t4, t6, -1324
65:               sltu         s8, a0, a2
                  bne          sp, t1, 75f
                  slti         t4, s1, -503
                  sltiu        t1, s10, 424
                  srai         a7, sp, 2
                  bgeu         a3, s8, 71f
71:               add          s3, a3, gp
                  sub          t5, t5, s4
                  bge          s0, t1, 80f
                  srai         sp, s5, 23
75:               or           s11, t0, a5
                  slli         a1, a3, 9
                  sub          a6, s11, s4
78:               sltu         ra, t6, s5
                  bge          a5, sp, 82f
80:               sltu         t3, s3, t6
                  ori          s0, a7, -952
82:               ori          s7, t4, 1917
                  bltu         a3, s2, 101f
                  slli         s11, s9, 5
                  slti         t5, s6, -516
                  lui          s9, 530263
                  sra          s3, s1, zero
                  slli         a5, s1, 21
                  sub          t3, s9, a3
                  bgeu         s4, gp, 107f
                  bne          sp, tp, 108f
                  sra          s11, a0, t5
                  sltiu        a3, s5, 434
                  bltu         s4, a4, 99f
                  sll          tp, a1, t0
                  nop
                  sll          tp, t0, s11
                  xori         gp, t6, 180
99:               beq          zero, s2, 105f
                  addi         t5, t0, 853
101:              slt          s1, sp, zero
                  slt          a7, gp, sp
                  beq          a5, s9, 109f
                  bltu         t1, a6, 124f
105:              bne          a3, a1, 106f
106:              auipc        s3, 10773
107:              addi         a7, a5, -1175
108:              auipc        s0, 38627
109:              and          s9, s9, a3
                  srli         t2, a4, 24
                  slti         sp, gp, -1001
                  srai         a0, s0, 23
                  auipc        tp, 411961
                  bge          t5, s9, 121f
                  ori          a1, a6, 559
                  lui          a5, 1019711
                  blt          s9, s9, 128f
                  or           a6, t0, s9
                  xor          s10, t0, t4
                  sra          t0, a7, s10
121:              and          ra, s1, s10
                  slti         s1, s3, -794
                  srai         t0, s0, 4
124:              lui          s5, 950581
                  xori         s2, s9, -129
                  ori          s7, gp, -1679
                  sub          a1, s3, t4
128:              bge          s11, a0, 148f
                  sll          s10, a0, t3
                  sltu         t5, s4, s5
                  bne          a0, s3, 133f
                  sll          s9, t4, a3
133:              bge          s2, s7, 149f
                  or           t3, t4, s1
                  bne          a5, s3, 144f
                  ori          s11, zero, -1514
                  sltu         t0, t2, a4
                  add          s2, t2, a2
                  bgeu         t1, s7, 146f
                  and          s10, s1, a0
                  xor          s8, t0, a3
                  srl          a1, a1, gp
                  auipc        t5, 164934
144:              srl          zero, s9, sp
                  bgeu         s4, s10, 152f
146:              slti         s8, a7, 1665
                  ori          s0, s4, 1342
148:              beq          a1, a6, 168f
149:              srai         a7, s6, 1
                  beq          a2, a6, 166f
                  addi         t0, s8, -1580
152:              blt          t5, s6, 158f
                  bge          t6, s4, 171f
                  bltu         s5, t0, 172f
                  sll          t4, a6, s3
                  xor          s8, s8, t3
                  srai         s6, s4, 13
158:              xori         t4, t4, 589
                  or           zero, t1, s5
                  bne          t1, gp, 163f
                  bgeu         a7, s8, 166f
                  beq          t3, sp, 179f
163:              sll          a1, zero, s9
                  nop
                  srli         a6, a2, 13
166:              bltu         sp, a0, 174f
                  srl          t0, t4, gp
168:              srl          a6, s1, a2
                  srai         s7, s2, 0
                  bgeu         s6, s0, 173f
171:              lui          t0, 644532
172:              nop
173:              bgeu         s5, a5, 187f
                  la           sp, region_0+158 #start riscv_load_store_rand_instr_stream_12
                  srli         t4, t5, 18
                  lh           gp, 222(sp)
                  or           s7, s9, s7
                  auipc        a7, 905208
                  addi         s2, gp, -1596
                  lh           t0, 182(sp)
                  slli         t1, a3, 11
                  slli         ra, a4, 6
                  lh           a1, 46(sp)
                  lbu          a2, -31(sp)
                  xor          s1, s11, s5
                  nop
                  sb           s8, -77(sp)
                  lh           t0, -118(sp)
                  lhu          gp, -14(sp)
                  nop
                  sub          a1, s10, s10
                  lbu          a6, 200(sp)
                  lh           t0, -48(sp)
                  nop
                  lhu          a6, -40(sp)
                  sb           a5, 179(sp)
                  slli         ra, t4, 7
                  lui          s1, 434026
                  lui          s6, 575523
                  srl          s6, zero, a2
                  lb           zero, 45(sp)
                  lb           zero, 126(sp)
                  and          a6, s5, t1
                  lbu          s6, 77(sp)
                  ori          s2, gp, -1945
                  sh           a6, 98(sp)
                  ori          s10, a2, 1105
                  srl          a7, s10, a4
                  sb           s9, 239(sp) #end riscv_load_store_rand_instr_stream_12
174:              bgeu         a7, s2, 191f
                  xor          a0, a6, gp
                  srl          s0, a5, a4
                  slt          s5, s6, s6
                  lui          a1, 683882
179:              add          a7, a6, s4
                  auipc        t4, 581489
                  slt          tp, a0, t3
                  slti         s8, a0, -1174
                  bgeu         s2, s6, 197f
                  sub          t4, s6, t0
                  add          sp, a3, a1
                  bge          s1, a2, 187f
187:              slt          s1, sp, s8
                  or           gp, s7, t0
                  xori         tp, a6, 1395
                  or           s6, s4, s11
191:              xor          t5, s3, s1
                  sll          t4, a3, s5
                  addi         gp, a1, -2046
                  or           sp, s3, t0
                  bne          t6, s6, 196f
196:              lui          sp, 897246
197:              sll          t2, t6, a6
                  andi         s8, s4, -561
                  ori          tp, t4, -143
                  lui          a5, 418353
                  bne          t2, ra, 211f
                  auipc        t3, 730858
                  lui          t2, 52125
                  sltiu        t0, t4, -1136
                  xori         t4, s4, 134
                  srai         t5, t5, 12
                  sltu         s3, s1, ra
                  sub          a0, s3, s0
                  or           t5, a3, a1
                  blt          t6, sp, 223f
211:              or           s3, a5, a2
                  sltiu        t0, t5, -1832
                  beq          s0, t3, 218f
                  sll          a6, a5, sp
                  srl          s6, s1, t0
                  slt          t2, t4, s2
                  sltu         a0, a4, s8
218:              bgeu         t6, a4, 224f
                  sub          a7, t6, s10
                  sll          sp, s10, s0
                  beq          s6, t5, 228f
                  beq          ra, s9, 229f
223:              add          sp, s6, ra
224:              xori         t1, t5, -1946
                  sub          zero, s0, a3
                  srli         tp, a6, 6
                  bne          s3, a1, 243f
228:              xor          s9, s11, t0
229:              andi         s1, s11, 1853
                  sra          a7, t1, s1
                  sub          s6, sp, a3
                  sub          s6, a1, a0
                  bne          s2, s10, 240f
                  slli         t1, sp, 7
                  sub          tp, a5, s11
                  srai         s1, s10, 12
                  and          a6, s3, a2
                  auipc        s0, 972181
                  andi         s9, sp, 1739
240:              sub          s7, zero, s8
                  sll          s8, a6, s11
                  sra          t3, zero, t5
243:              sra          ra, s8, t3
                  srl          s0, s11, gp
                  xor          s6, s7, s9
                  auipc        s5, 980270
                  xor          a5, s6, a2
                  xori         t3, s8, -394
                  slt          sp, ra, t0
                  srl          a6, sp, ra
                  add          t2, ra, t6
                  sltu         t4, t0, s1
                  blt          gp, a5, 260f
                  bltu         t3, gp, 274f
                  srli         s6, a3, 18
                  ori          s3, ra, 693
                  srl          t3, a0, t1
                  add          a6, s4, tp
                  srli         a0, t2, 15
260:              addi         t4, s10, 1730
                  bgeu         s5, a6, 275f
                  sra          a7, a7, a4
                  sll          s6, s3, s8
                  srli         s0, a3, 9
                  bgeu         ra, sp, 282f
                  beq          a5, t3, 273f
                  andi         s5, s7, 549
                  andi         t5, s6, -1031
                  bltu         s5, t3, 272f
                  sll          t2, a4, s1
                  sra          t4, a7, s6
272:              sltu         a3, zero, s3
273:              add          a2, a5, s3
274:              addi         t3, tp, 448
275:              slt          s0, t4, s3
                  srl          s9, s9, a2
                  blt          a0, t5, 293f
                  sub          sp, s4, s11
                  bltu         t5, t3, 297f
                  lui          t5, 721092
                  slti         s10, t6, 209
282:              slt          gp, t3, s4
                  srai         a6, s9, 31
                  slli         s1, s8, 29
                  sub          s9, t5, a1
                  sra          s2, s4, ra
                  xor          t5, s11, s3
                  lui          a0, 514828
                  sub          s7, t3, sp
                  sltu         sp, t2, a5
                  bltu         s1, s11, 300f
                  xori         s2, t3, -1597
293:              sltiu        s5, t6, -158
                  sll          s6, t0, a3
                  slli         sp, a3, 0
                  auipc        t0, 520089
297:              xor          ra, t1, s0
                  srl          a5, s3, s2
                  auipc        t5, 427653
300:              sltiu        a2, gp, -321
                  slt          a6, t4, sp
                  bge          sp, s0, 312f
                  sra          t3, a0, s9
                  and          s7, a6, s10
                  bltu         s9, s6, 312f
                  bgeu         s4, a7, 312f
                  ori          a7, t6, 1658
                  addi         ra, zero, 1034
                  xori         ra, s4, -214
                  sltu         a2, a1, s1
                  sltu         a2, a4, s10
312:              bltu         s0, ra, 318f
                  and          a0, s3, s10
                  nop
                  sltiu        s3, a1, -952
                  sub          a1, s2, tp
                  bltu         t3, s2, 331f
318:              srai         s9, gp, 10
                  auipc        s0, 687858
                  srl          ra, s2, t0
                  bne          a5, a2, 328f
                  srai         t3, t4, 8
                  srli         t1, t6, 9
                  srl          s7, s8, sp
                  sll          tp, s9, ra
                  bge          s8, gp, 342f
                  nop
328:              blt          s1, t5, 348f
                  auipc        t4, 193767
                  xor          s2, s9, ra
331:              or           gp, a7, t5
                  slti         a1, a3, -609
                  beq          a1, a0, 350f
                  add          gp, a4, tp
                  auipc        t2, 182603
                  lui          gp, 486125
                  lui          s7, 428768
                  bltu         sp, s11, 339f
339:              lui          a2, 370471
                  andi         s10, t2, 1891
                  addi         tp, t6, -2023
342:              beq          a2, s6, 347f
                  beq          s3, t3, 348f
                  sltu         tp, s2, a4
                  addi         s6, a6, 1922
                  srl          a3, a0, s4
347:              slti         t4, t3, 114
348:              sub          t1, s5, s10
                  lui          a2, 628987
350:              xori         s5, s3, 394
                  bgeu         s10, s1, 362f
                  bgeu         s6, s3, 355f
                  beq          a1, s1, 369f
                  addi         a0, s1, 1645
355:              beq          s8, a2, 357f
                  ori          t0, s5, 873
357:              slli         a0, zero, 7
                  add          ra, t3, s8
                  srli         gp, a3, 11
                  sra          a3, s4, zero
                  beq          a6, gp, 374f
362:              xor          s3, s0, gp
                  slti         s9, t1, -1420
                  lui          t5, 1018207
                  sltu         s1, a4, t2
                  beq          a0, s10, 384f
                  slti         gp, s9, 537
                  sub          a6, s1, gp
369:              nop
                  slti         a2, s5, 1164
                  xori         s2, a0, 1317
                  srai         t2, a6, 0
                  sub          s7, s3, s11
374:              ori          t3, sp, -226
                  beq          s4, gp, 376f
376:              add          t5, t3, s5
                  auipc        a5, 523908
                  and          gp, a1, a4
                  srai         s0, s5, 25
                  lui          s9, 97478
                  addi         a6, s0, 1118
                  sll          s11, s11, s5
                  blt          s1, s3, 391f
384:              sra          s2, s6, tp
                  and          s3, s10, t1
                  sub          a2, tp, s11
                  auipc        a7, 980955
                  sltiu        a2, s9, -1813
                  blt          s0, s8, 394f
                  nop
391:              auipc        t0, 908057
                  sltu         s5, s1, a7
                  sra          zero, sp, a3
394:              xor          t4, a4, s7
                  sll          a1, s5, t2
                  slti         s0, s2, 1731
                  add          s8, t4, ra
                  auipc        zero, 194564
                  andi         s9, t3, 752
                  andi         s8, a5, -613
                  slt          a5, s2, s4
                  bgeu         a6, a6, 418f
                  and          t0, s2, s9
                  srai         a0, s8, 1
                  srl          t3, zero, a5
                  sub          sp, t0, sp
                  bgeu         a0, a4, 416f
                  bge          s0, s6, 422f
                  sltiu        t4, tp, 113
                  sll          s3, a1, tp
                  bgeu         s6, ra, 417f
                  add          s8, ra, tp
                  slli         a2, s2, 22
                  bgeu         t5, s11, 432f
                  andi         a2, a1, 404
416:              bge          s7, s11, 427f
417:              auipc        a2, 757891
418:              bltu         a0, sp, 431f
                  xor          s10, s5, s2
                  sra          s6, t5, zero
                  slli         s2, zero, 2
422:              slti         a2, t6, -965
                  slti         t5, s3, 610
                  bne          t5, a6, 441f
                  and          a3, zero, a5
                  nop
427:              slt          zero, a2, t6
                  lui          s8, 630032
                  ori          t5, a6, -1356
                  addi         t3, t2, 208
431:              ori          t1, t5, -255
432:              andi         s9, a0, -1305
                  sltiu        s6, a1, 1636
                  sra          a7, s3, sp
                  bgeu         t5, s4, 442f
                  blt          s2, t5, 456f
                  sub          s0, s11, a4
                  beq          s11, s4, 441f
                  xori         s5, s6, 642
                  sra          t5, gp, gp
441:              slli         t2, t5, 20
442:              sltu         zero, a7, s8
                  sra          t4, t0, a4
                  bne          gp, s5, 458f
                  srl          a2, s4, s1
                  xori         a1, s4, 1599
                  srai         s0, a4, 24
                  slt          a6, s11, a1
                  sll          a6, t1, s10
                  xor          s5, tp, a3
                  slli         s3, a2, 21
                  andi         s8, ra, -1579
                  and          s1, t6, a1
                  bge          s6, sp, 470f
                  bgeu         t5, s11, 458f
456:              lui          t5, 424637
                  addi         t3, s5, 630
458:              and          s6, s9, a1
                  srli         s11, t4, 31
                  sltu         s2, s2, a1
                  ori          t3, a3, -1777
                  slt          t5, s3, s9
                  lui          t5, 448973
                  bgeu         tp, s10, 474f
                  bltu         a5, tp, 470f
                  beq          s3, s5, 483f
                  xori         a3, t3, -977
                  slti         t1, zero, -1190
                  or           s2, a0, s11
470:              sra          ra, ra, s3
                  srl          a3, tp, s1
                  ori          s8, s2, -1389
                  blt          s11, a1, 474f
474:              add          s3, s10, s5
                  andi         s10, t0, 51
                  andi         t0, tp, 182
                  sltiu        s1, t5, 1400
                  beq          s7, s10, 479f
479:              and          s11, s2, s3
                  slli         s11, t1, 24
                  nop
                  slli         s3, tp, 12
483:              srai         a5, gp, 29
                  sll          t1, s9, ra
                  auipc        t1, 914410
                  bne          t5, a2, 494f
                  slli         s10, s9, 9
                  sltu         a2, s7, t3
                  sra          s2, zero, gp
                  xori         zero, s2, -440
                  bltu         s11, s7, 511f
                  srai         s3, t5, 28
                  srl          gp, a5, t5
494:              sll          s9, s10, sp
                  la           a3, region_0+1618 #start riscv_load_store_rand_instr_stream_11
                  lb           t1, 169(a3)
                  addi         s3, ra, -242
                  sub          t4, s6, s4
                  lbu          s2, -169(a3)
                  sh           sp, -180(a3)
                  sh           s10, -106(a3)
                  lw           t0, 206(a3)
                  lh           s10, 150(a3)
                  srli         a7, t1, 28
                  and          t1, a4, ra
                  sb           s7, -213(a3)
                  srl          s2, a5, t4
                  sltiu        a7, gp, 613
                  srli         sp, t5, 1
                  sb           s3, -169(a3)
                  sll          s8, t0, t4
                  auipc        a2, 224170
                  xori         s0, a5, -1702
                  lbu          s0, -41(a3)
                  slli         a7, a6, 4
                  andi         sp, t4, 948
                  sltu         s6, a7, s7
                  lbu          s6, 132(a3)
                  sll          s0, a5, s0
                  sb           a4, 31(a3)
                  ori          s1, t4, 1423
                  lb           s3, -130(a3)
                  andi         a5, s0, -737
                  sltu         s0, s3, s1
                  sltiu        s7, s7, 2022
                  lbu          a1, 18(a3)
                  lb           zero, -197(a3)
                  srli         s3, sp, 7
                  lhu          s9, 40(a3)
                  addi         a1, t3, 1084
                  lb           s2, 106(a3)
                  lb           s7, 74(a3)
                  sb           sp, -84(a3)
                  or           ra, a0, s11
                  lw           s7, -174(a3)
                  lbu          gp, -213(a3)
                  sra          t5, s5, a0
                  lb           a2, 177(a3) #end riscv_load_store_rand_instr_stream_11
                  andi         s3, s8, -1659
                  sltu         a5, a6, zero
                  add          a0, gp, a2
                  slt          t4, s11, t4
                  ori          a1, s0, 1522
                  slli         t1, s9, 24
                  srai         a1, s6, 2
                  sltu         t2, a0, a3
                  slli         a3, s7, 4
                  andi         t2, s0, -322
                  sltu         s2, s7, tp
                  xori         s5, s2, -982
                  sltiu        a0, a1, 195
                  slti         s11, t0, -688
                  slli         a2, s7, 13
                  srl          t3, s4, t2
511:              bne          a1, a1, 517f
                  bne          tp, a4, 528f
                  sltu         tp, ra, a3
                  addi         s0, gp, -1052
                  andi         s11, a4, -269
                  srli         a5, s6, 20
517:              lui          s0, 727932
                  and          t2, t6, s1
                  beq          t5, s2, 526f
                  xor          a2, t6, t0
                  beq          t0, s7, 523f
                  lui          t1, 627604
523:              blt          t1, sp, 541f
                  sll          s10, t5, s6
                  sub          a0, s10, s0
526:              andi         a1, gp, -1695
                  sltu         s8, t1, a1
528:              andi         sp, sp, 1145
                  bltu         a0, t6, 536f
                  bgeu         a0, t1, 537f
                  slli         s0, t2, 26
                  bgeu         gp, s1, 539f
                  slti         t5, s5, 34
                  slli         s8, s3, 19
                  and          gp, ra, s3
536:              sltu         sp, s8, gp
537:              bge          s9, s11, 553f
                  blt          a1, s9, 541f
539:              sltu         s9, t5, a6
                  xori         tp, a5, 501
541:              srai         ra, t4, 3
                  xor          s0, s5, a3
                  auipc        a2, 817509
                  sub          a0, s1, a7
                  srai         a5, zero, 26
                  srai         ra, a0, 3
                  bgeu         t3, t6, 561f
                  sltu         s2, s4, a4
                  bgeu         zero, a5, 556f
                  srai         tp, s7, 2
                  xori         s0, a0, 147
                  or           a0, s2, gp
553:              addi         s0, s5, -1474
                  bne          a6, a5, 565f
                  lui          s6, 515495
556:              slli         s6, zero, 0
                  add          t2, s5, s10
                  sltu         s9, sp, a0
                  lui          s1, 994285
                  or           gp, s8, a5
561:              and          t0, a1, a3
                  sltu         t1, s6, sp
                  srli         t0, s0, 1
                  xor          s10, gp, t6
565:              ori          s2, t6, -1436
                  bge          ra, t2, 583f
                  srli         s5, ra, 16
                  or           s0, t0, t4
                  bge          t0, t1, 574f
                  bltu         gp, t5, 590f
                  andi         t2, ra, 1795
                  slli         s3, gp, 7
                  xor          a1, t5, a2
574:              nop
                  lui          s8, 311005
                  beq          t3, s1, 586f
                  sub          t5, a4, a7
                  bltu         zero, tp, 595f
                  ori          s3, s10, 1487
                  ori          a6, s11, -1717
                  addi         a7, a7, 1922
                  bltu         a6, s9, 589f
583:              sub          a0, s2, s1
                  addi         s1, s5, 58
                  auipc        sp, 1014065
586:              blt          s1, tp, 589f
                  bltu         t5, gp, 589f
                  blt          a6, t1, 606f
589:              xor          s10, s0, s3
590:              bne          a0, s7, 599f
                  bge          s0, s9, 607f
                  xori         t2, a2, 1415
                  bltu         s3, s3, 601f
                  bne          s3, s6, 600f
595:              sll          s2, a3, t2
                  sltiu        a2, s5, 1240
                  la           sp, region_0+1197 #start riscv_load_store_rand_instr_stream_1
                  slti         gp, s6, 1824
                  auipc        s5, 752724
                  lb           gp, 4(sp)
                  srli         s7, t5, 29
                  sb           s9, -110(sp)
                  srli         t0, t0, 11
                  sb           t4, 98(sp)
                  lbu          t4, 59(sp)
                  sb           a4, 230(sp)
                  slti         s11, t5, 1983
                  slli         gp, s3, 28
                  andi         t4, s4, -1880
                  srl          t1, s0, t5
                  slli         s6, t2, 2
                  sra          t4, s9, a6
                  lbu          t0, 180(sp)
                  lbu          a3, 106(sp)
                  sub          tp, s7, t3
                  lb           s2, 70(sp)
                  lb           s8, 193(sp)
                  lbu          a5, -131(sp)
                  xor          s0, s8, a7
                  auipc        a0, 743589
                  sh           ra, 5(sp)
                  lbu          s8, -97(sp)
                  sb           s2, 40(sp)
                  srli         a2, t4, 3
                  sb           t5, 112(sp)
                  lhu          t2, -245(sp)
                  lw           ra, 35(sp)
                  lb           s11, -22(sp)
                  lbu          s2, -6(sp)
                  srl          t1, s0, a5
                  and          zero, sp, t2
                  sb           t4, 223(sp)
                  slli         zero, a6, 9
                  lbu          ra, 36(sp)
                  sb           s8, -164(sp)
                  sub          gp, t1, a1
                  sb           s0, 62(sp)
                  sb           s4, 234(sp)
                  slt          s11, s8, zero
                  slli         s0, s2, 12
                  sll          a7, t0, t6
                  sw           s4, 7(sp)
                  sltu         t5, t0, sp
                  lbu          t2, -62(sp)
                  lbu          s11, -241(sp)
                  andi         t4, a4, -668
                  lbu          s7, 143(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         s3, a4, 603f
                  srl          t4, s3, s4
599:              blt          a1, a0, 606f
600:              nop
601:              srl          a1, t2, ra
                  bne          zero, s4, 607f
603:              xori         s10, s2, -524
                  add          s3, a6, a3
                  or           t3, s3, ra
606:              and          a6, a6, t1
607:              andi         t3, s9, 422
                  nop
                  sub          s2, s3, a1
                  sub          t1, s1, s4
                  sltu         a3, a1, s4
                  xor          s9, t2, ra
                  sra          s3, s6, gp
                  addi         s8, gp, -405
                  beq          sp, t0, 622f
                  nop
                  srai         s8, t1, 12
                  slti         zero, s11, -715
                  auipc        ra, 257846
                  lui          t1, 700043
                  sll          a2, s6, t3
622:              bgeu         s6, zero, 642f
                  srli         s9, s2, 8
                  sra          a3, s5, t1
                  slt          s9, s0, a3
                  bgeu         t4, sp, 627f
627:              add          a1, gp, t1
                  srl          a6, a5, a5
                  bltu         zero, t4, 630f
630:              bgeu         a6, s5, 644f
                  auipc        t1, 416122
                  slt          zero, t2, tp
                  sra          s7, t6, s8
                  bltu         a6, s7, 641f
                  andi         a0, t3, 1171
                  srli         a3, t0, 4
                  or           s1, sp, s9
                  and          t5, s9, s10
                  nop
                  xori         s1, sp, 456
641:              slli         t2, s10, 0
642:              bltu         gp, t5, 655f
                  and          tp, a2, a2
644:              xor          a7, s2, s11
                  or           a6, t0, s5
                  addi         a3, tp, 1269
                  lui          s5, 160523
                  sub          t4, t5, s6
                  and          a6, s6, ra
                  srl          s5, s9, tp
                  bgeu         t4, a4, 669f
                  slli         t1, s9, 31
                  beq          s10, ra, 669f
                  sltiu        s1, gp, -1392
655:              sll          a7, a7, s3
                  srli         t5, s4, 10
                  bltu         t0, s4, 671f
                  xor          s11, s3, t3
                  blt          s1, t2, 673f
                  sub          a5, a4, gp
                  sll          s6, t5, gp
                  bltu         a3, t4, 665f
                  and          s7, tp, a5
                  beq          s3, t1, 669f
665:              srli         s7, t1, 1
                  srl          t1, s8, s6
                  auipc        a2, 842759
                  ori          t3, s5, 911
669:              nop
                  ori          sp, t3, -1069
671:              bne          s9, s0, 672f
672:              andi         s0, s2, 1887
673:              andi         t3, s1, -1085
                  and          a2, tp, s0
                  srl          s10, zero, a7
                  sltu         zero, a5, t6
                  and          t1, gp, t3
                  srai         ra, s1, 10
                  bgeu         s6, t5, 699f
                  sub          s2, a6, a7
                  or           s11, a7, a1
                  xori         s0, s7, 805
                  andi         a0, s0, 1845
                  add          a2, t4, sp
                  nop
                  blt          t2, t6, 699f
                  xori         a5, t3, -1333
                  sub          s0, a7, a7
                  sltu         s1, s2, a1
                  srl          s8, a4, s8
                  andi         s11, t6, 1545
                  sub          a1, a1, t1
                  bge          zero, s10, 695f
                  xori         ra, sp, -407
695:              beq          sp, s4, 715f
                  bgeu         s7, s0, 703f
                  xori         a7, t5, 92
                  bltu         a3, t4, 716f
699:              blt          a2, t6, 705f
                  slt          ra, tp, t2
                  srai         s6, ra, 29
                  or           s1, ra, a5
703:              bge          s1, s10, 721f
                  srai         t5, s1, 2
705:              lui          a0, 564641
                  slt          s9, a4, s0
                  srl          s8, a3, a1
                  xor          s11, zero, s10
                  sltiu        a2, s7, 348
                  srli         s1, tp, 18
                  sltu         t2, t6, ra
                  srai         a6, t4, 12
                  lui          t5, 598315
                  sltiu        s0, zero, -1792
715:              sltiu        ra, t6, 738
716:              srl          t0, zero, t6
                  bne          tp, a2, 734f
                  add          t4, t3, tp
                  sra          s10, t6, a7
                  add          s5, t1, t4
721:              sltu         t3, t2, a5
                  auipc        a2, 687051
                  bne          a4, t2, 726f
                  and          a3, tp, s1
                  slli         s10, t6, 4
726:              xor          t5, t5, t1
                  add          s8, s3, s1
                  nop
                  lui          gp, 848672
                  slt          a2, s10, a2
                  srli         t2, s11, 19
                  or           s6, t0, s1
                  and          s11, t5, s4
734:              add          a1, s0, a4
                  blt          s5, a4, 742f
                  bge          t2, gp, 752f
                  bgeu         ra, s7, 753f
                  or           sp, a4, a1
                  ori          s5, a5, 417
                  srl          t0, a1, a7
                  slli         a2, t5, 16
742:              add          s8, a3, s2
                  or           t4, s4, s4
                  sra          s0, a2, s9
                  beq          s9, a0, 752f
                  ori          a0, s7, 1697
                  xor          gp, a0, s2
                  addi         ra, gp, -1388
                  and          s2, s7, t0
                  lui          s1, 959984
                  bltu         s7, t5, 759f
752:              addi         sp, ra, 637
753:              bltu         s1, zero, 762f
                  xori         s0, t4, -590
                  sra          zero, sp, a2
                  sra          s3, t2, s8
                  and          s5, t2, t4
                  xori         gp, zero, -1798
759:              nop
                  sltu         s8, a5, s0
                  sltiu        s8, s10, -341
762:              and          s10, t1, t5
                  srai         a7, a0, 23
                  blt          s1, a3, 770f
                  blt          ra, gp, 782f
                  srl          t1, s6, t3
                  nop
                  addi         s10, s0, 961
                  xori         s5, a4, 2034
770:              sltu         s1, ra, t6
                  slt          tp, a1, s1
                  blt          a3, t1, 777f
                  add          s0, s5, s7
                  xor          s1, a7, s11
                  sll          s1, a2, t2
                  slt          a1, a0, s11
777:              xor          t5, s6, a0
                  bltu         ra, a1, 789f
                  sltiu        s3, a3, -82
                  bgeu         a0, sp, 796f
                  slli         s7, s0, 28
782:              andi         s2, t6, 273
                  xor          s6, a1, a7
                  ori          sp, s3, 1897
                  bgeu         s8, sp, 795f
                  xori         a2, zero, 542
                  slli         s6, s7, 17
                  slli         a6, a6, 27
789:              bne          a7, t4, 790f
790:              srai         t5, ra, 22
                  beq          gp, s2, 798f
                  nop
                  sltiu        a0, t6, -481
                  auipc        s7, 438911
795:              bltu         s9, s4, 802f
796:              slti         a6, a4, 567
                  addi         a2, s9, 1709
798:              xor          a3, tp, a1
                  slt          s11, a7, a4
                  srli         gp, s9, 27
                  srl          s2, t2, t0
802:              sll          t3, a2, s2
                  slti         s1, a6, 1999
                  addi         s7, s9, 1948
                  beq          a6, a4, 823f
                  sltu         s8, t1, tp
                  srli         s3, s3, 10
                  nop
                  blt          tp, a1, 810f
810:              sltu         zero, t0, a0
                  bge          t5, t5, 816f
                  ori          ra, s5, 1293
                  auipc        t2, 308996
                  sltu         a2, t6, s11
                  bltu         s4, s7, 816f
816:              add          a5, s3, t4
                  auipc        zero, 898940
                  auipc        s2, 235444
                  bne          t4, s2, 826f
                  nop
                  ori          a0, ra, -289
                  or           s2, s1, zero
823:              or           ra, zero, s5
                  slli         zero, t1, 18
                  srai         a0, s5, 28
826:              addi         a6, s4, 1305
                  addi         s3, ra, 812
                  bltu         a7, t5, 844f
                  sltiu        t0, t6, 784
                  srli         t4, a5, 0
                  auipc        s8, 542240
                  or           zero, s7, s6
                  slli         s7, t0, 3
                  blt          s7, a2, 850f
                  xori         s5, t3, -1634
                  srl          tp, s3, s6
                  srl          t0, t0, s7
                  sra          s5, a5, t3
                  srl          s1, s11, t0
                  slti         a2, s1, 1459
                  xor          s7, s6, t5
                  sra          t3, a3, a6
                  and          a1, gp, ra
844:              sll          a5, s9, gp
                  andi         s1, gp, 1057
                  bne          a4, s6, 862f
                  bne          a0, t5, 857f
                  slli         t2, t1, 10
                  bge          s1, s4, 854f
850:              bge          s3, s8, 861f
                  and          s3, s10, t6
                  bgeu         t2, a6, 866f
                  srl          ra, s7, t6
854:              beq          t5, t1, 861f
                  sub          t4, t5, s9
                  slt          a3, a6, sp
857:              andi         s5, s6, -1477
                  and          a3, t5, a1
                  sub          t3, a4, s7
                  bne          s7, ra, 868f
861:              slti         a7, s7, -1711
862:              sra          t2, t4, t1
                  auipc        gp, 104364
                  slli         s6, s9, 21
                  nop
866:              sltu         s2, t1, ra
                  beq          t5, zero, 884f
868:              sltiu        a6, s6, -1376
                  ori          t0, t6, -1465
                  sll          s7, gp, t3
                  bge          ra, a7, 877f
                  beq          sp, s5, 881f
                  beq          s2, t4, 880f
                  andi         s0, s3, -1904
                  bgeu         gp, t3, 893f
                  srl          gp, t6, a5
877:              slt          a2, s8, s6
                  bge          a4, a6, 898f
                  slli         ra, s1, 30
880:              slti         s3, s10, -587
881:              lui          s11, 367749
                  bne          s8, t1, 895f
                  or           s7, a1, t3
884:              nop
                  blt          gp, s5, 891f
                  srli         s9, t3, 18
                  auipc        s10, 506448
                  slt          s5, ra, gp
                  srli         a5, t2, 18
                  bltu         s0, s0, 904f
891:              bge          a4, t0, 908f
                  and          a2, s3, t5
893:              bge          tp, t4, 895f
                  bge          a5, s6, 897f
895:              bgeu         a3, a5, 915f
                  add          t0, a2, s3
897:              add          s8, gp, a6
898:              sra          a0, a2, s5
                  xor          s3, s3, s9
                  or           a2, s5, a5
                  addi         t0, a4, 280
                  nop
                  xori         t0, a7, -1980
904:              slt          tp, s5, s6
                  srl          a5, a0, a0
                  blt          a6, a3, 909f
                  nop
908:              sltiu        a2, s2, 397
909:              slt          s0, a2, s4
                  sra          a2, t3, s5
                  auipc        tp, 318894
                  sra          t2, ra, s8
                  bge          a7, t5, 920f
                  or           s0, t3, s5
915:              andi         t4, a0, -1080
                  bltu         ra, t4, 923f
                  sltiu        a1, t6, 885
                  beq          s8, zero, 936f
                  andi         t1, s0, -450
920:              xori         s7, a3, -814
                  bne          a6, s11, 937f
                  auipc        t2, 797627
923:              or           a6, t2, a1
                  ori          s10, tp, -1284
                  bne          a5, t3, 930f
                  bge          gp, a1, 937f
                  bne          s2, t4, 944f
                  srli         t1, s2, 5
                  sll          s3, a4, a0
930:              addi         t4, t2, -61
                  xor          s6, t3, a4
                  bge          t3, t1, 933f
933:              and          s7, t2, t0
                  bgeu         a0, t1, 951f
                  lui          t3, 450839
936:              sub          s7, t5, a2
937:              blt          s9, s10, 944f
                  srli         sp, tp, 13
                  beq          t1, a2, 949f
                  sltiu        gp, t5, 620
                  slli         sp, t0, 9
                  add          s1, zero, t1
                  andi         s11, a0, -1801
944:              xori         t3, a4, -1337
                  sltu         a6, zero, s7
                  xori         a2, t5, -262
                  xor          t5, a3, t4
                  sltu         t4, tp, s9
949:              xori         gp, a7, -331
                  srl          s6, zero, tp
951:              add          s8, sp, s9
                  beq          s5, s10, 972f
                  beq          a3, s8, 960f
                  srli         gp, t0, 4
                  auipc        s11, 302853
                  sltu         s10, a2, t0
                  sltiu        t2, s10, -553
                  andi         s6, zero, 153
                  sll          a7, s9, s11
960:              andi         a0, s9, 1265
                  andi         t0, s9, -327
                  and          s6, a2, zero
                  bne          t3, t3, 964f
964:              nop
                  sltu         s6, s5, t1
                  or           s0, tp, s10
                  sra          a0, s11, s6
                  bgeu         gp, a7, 976f
                  lui          a2, 979728
                  nop
                  beq          t3, t6, 977f
972:              or           gp, s5, s6
                  slti         a7, s4, -1124
                  xori         t2, s10, 1406
                  srl          t1, t4, s3
976:              bltu         a0, t2, 996f
977:              sltiu        s6, s3, 1606
                  slli         s3, a1, 26
                  bgeu         a3, zero, 984f
                  xor          s5, t4, a6
                  slt          ra, s1, s1
                  andi         s10, s10, -2016
                  slli         a3, s3, 30
984:              slli         s0, a3, 5
                  blt          s6, t1, 1003f
                  sltiu        a5, t5, -198
                  sltu         t2, tp, a4
                  sub          s3, t3, s1
                  srai         s11, t3, 2
                  blt          s0, t2, 992f
                  nop
992:              bge          s0, t1, 1005f
                  sltu         a2, sp, t5
                  bne          s1, a6, 1001f
                  bgeu         zero, s8, 1004f
996:              addi         s1, s7, 2000
                  bltu         a4, s6, 1003f
                  srli         s6, s11, 0
                  srli         sp, a6, 17
                  auipc        s2, 794989
1001:             srli         gp, t1, 0
                  srli         s10, s0, 6
1003:             lui          a6, 38962
1004:             add          ra, a7, s3
1005:             xori         s2, a1, 970
                  or           s8, ra, t1
                  xor          s7, s0, s11
                  sra          s8, a3, s4
                  addi         a6, s10, -1908
                  and          s3, t6, s10
                  bltu         t0, a2, 1025f
                  slt          a1, a3, a5
                  bgeu         s5, a2, 1016f
                  srl          a1, s8, t3
                  lui          s0, 628653
1016:             and          zero, s3, sp
                  sll          s0, s10, s11
                  sltu         a5, tp, a7
                  addi         t3, s7, -1620
                  sltiu        tp, s3, 276
                  nop
                  bltu         a0, t3, 1029f
                  blt          s0, a4, 1039f
                  sll          tp, t1, tp
1025:             bltu         zero, zero, 1028f
                  bltu         a7, s2, 1040f
                  srai         s0, s8, 9
1028:             nop
1029:             srl          tp, tp, s6
                  slli         s10, t6, 12
                  slti         s1, s0, -245
                  add          s0, sp, sp
                  bgeu         s8, s3, 1049f
                  srai         t4, zero, 15
                  bltu         zero, a7, 1042f
                  xori         a1, s7, 1211
                  xori         t0, s10, -1274
                  auipc        s5, 658851
1039:             sra          a5, a0, a7
1040:             sub          s6, s5, zero
                  addi         t5, s5, 656
1042:             xori         a7, s6, 873
                  bgeu         a5, s4, 1050f
                  bltu         s6, sp, 1061f
                  sub          sp, s4, t4
                  sra          tp, zero, s9
                  sub          tp, ra, t4
                  slli         a6, tp, 31
1049:             bge          s10, s10, 1063f
1050:             add          s1, s8, sp
                  slti         a6, a1, 1690
                  srai         sp, s9, 24
                  slli         a2, s3, 7
                  or           s1, zero, s6
                  nop
                  blt          t0, s1, 1064f
                  sltu         zero, a7, a0
                  bltu         t5, a3, 1065f
                  sra          a2, t3, t1
                  auipc        gp, 808813
1061:             xori         s1, t6, 948
                  blt          s4, ra, 1063f
1063:             srai         s1, a2, 12
1064:             addi         gp, a7, -1245
1065:             addi         a7, s3, -1893
                  nop
                  ori          s1, t3, 1906
                  addi         a0, t3, 1685
                  sltu         s1, s1, tp
                  ori          t3, s2, -1990
                  slt          s9, a4, s7
                  xori         s2, zero, 1150
                  andi         s3, s11, 1449
                  or           gp, a7, t4
                  or           t1, s10, zero
                  blt          s1, s6, 1089f
                  bgeu         a0, s0, 1083f
                  srai         s6, t3, 31
                  srai         t3, zero, 20
                  or           gp, s2, t6
                  addi         a1, t5, -156
                  bne          t2, a2, 1089f
1083:             addi         gp, t3, -1870
                  slti         a3, t2, 170
                  bltu         a5, a3, 1095f
                  sltiu        t0, a0, 1451
                  addi         t0, s2, 202
                  srai         a3, gp, 0
1089:             sltiu        t3, a6, -50
                  srli         a1, s5, 27
                  sra          ra, tp, tp
                  ori          t2, t2, -1885
                  blt          a4, zero, 1111f
                  bgeu         s6, a6, 1110f
1095:             bne          t2, a6, 1101f
                  slti         a5, a4, 1217
                  slli         zero, ra, 23
                  bgeu         ra, a2, 1114f
                  slt          s9, t4, s2
                  bltu         a6, s0, 1117f
1101:             or           a1, s10, s8
                  bgeu         tp, s11, 1107f
                  and          s9, s1, s1
                  srl          a6, t4, s5
                  andi         t5, s7, -428
                  sltu         gp, a2, a6
1107:             slti         s8, a5, -812
                  nop
                  srl          t5, a5, s5
1110:             addi         a1, sp, 506
1111:             blt          a5, s7, 1131f
                  xor          s5, a3, a5
                  sltu         a6, a7, a6
1114:             sltu         t1, t1, s4
                  nop
                  srl          s1, s1, s6
1117:             sltu         a6, s10, s2
                  lui          a6, 917251
                  bgeu         t3, a0, 1126f
                  sub          t5, a0, s11
                  auipc        gp, 695539
                  addi         t4, t6, 293
                  srl          t4, t0, s7
                  slt          zero, s11, a1
                  slt          t3, a1, t3
1126:             sub          a7, sp, s0
                  or           ra, a4, a4
                  bltu         s6, s0, 1130f
                  bne          s4, s5, 1147f
1130:             sub          t3, a3, s7
1131:             bne          a5, t5, 1151f
                  sll          t3, t4, s2
                  slti         s7, s9, -460
                  nop
                  andi         t5, a0, 76
                  blt          s0, s6, 1152f
                  andi         t0, s8, -1039
                  or           t2, s9, s10
                  srai         t2, s6, 19
                  slt          a1, s8, s7
                  beq          s7, t5, 1155f
                  sub          sp, s1, s0
                  or           a3, s4, s7
                  xor          t1, s10, zero
                  srli         ra, s7, 20
                  ori          a1, s9, -1371
1147:             addi         t3, s3, 1107
                  and          a1, sp, s3
                  andi         a3, a6, -1929
                  srl          a3, t0, tp
1151:             addi         s9, sp, -263
1152:             sra          a7, s5, ra
                  and          ra, t5, t4
                  or           zero, a0, a7
1155:             slli         s0, s3, 26
                  sub          s11, a7, t2
                  bne          s4, a3, 1158f
1158:             slt          s6, a6, t3
                  xori         s3, t3, -1453
                  auipc        s1, 64055
                  bne          gp, s5, 1164f
                  sll          s8, t5, a2
                  bge          s5, t0, 1170f
1164:             slti         s2, s10, -632
                  and          t2, zero, s5
                  blt          s2, s4, 1177f
                  nop
                  nop
                  bge          s6, a4, 1174f
1170:             lui          t1, 1014024
                  beq          a1, s5, 1174f
                  srl          a5, s11, s4
                  add          a7, t1, s0
1174:             beq          s1, tp, 1183f
                  srl          t1, a4, gp
                  bltu         s6, s6, 1179f
1177:             andi         a5, s3, -450
                  srai         t2, t4, 2
1179:             bne          a5, a5, 1197f
                  ori          s10, zero, -895
                  lui          zero, 119495
                  lui          ra, 339938
1183:             bgeu         a6, s2, 1190f
                  nop
                  nop
                  slti         t1, a7, 1202
                  srl          t4, s8, tp
                  srli         s7, a3, 18
                  sll          s8, ra, a7
1190:             sltiu        s1, s5, 409
                  lui          s10, 939778
                  slti         a7, tp, 1488
                  srai         t1, a6, 28
                  lui          s5, 79250
                  or           a6, s7, a3
                  sub          a6, a3, tp
1197:             sltiu        a2, s9, 183
                  srl          tp, ra, t0
                  srl          zero, s1, sp
                  bge          t5, s4, 1207f
                  auipc        a3, 230298
                  bne          s2, s6, 1216f
                  ori          s3, t4, -515
                  and          t1, a6, s2
                  ori          gp, a4, -1956
                  and          ra, s2, a7
1207:             bne          s8, sp, 1210f
                  bge          s4, s1, 1215f
                  ori          a3, sp, 1850
1210:             xor          a7, t4, s11
                  xor          t0, t6, a2
                  auipc        a2, 356522
                  andi         a6, a2, 1414
                  and          t1, t5, t0
1215:             srai         sp, a0, 11
1216:             blt          s7, s2, 1236f
                  nop
                  srai         s3, s8, 16
                  addi         s3, s4, 1374
                  lui          a0, 949340
                  add          t1, tp, t6
                  nop
                  auipc        t5, 341111
                  beq          t1, s0, 1226f
                  add          s10, ra, a3
1226:             or           s1, a3, s5
                  auipc        tp, 958611
                  sll          s5, a2, s2
                  add          s0, t0, gp
                  sub          tp, s5, s10
                  lui          a6, 393558
                  slt          a1, a4, s9
                  sltiu        ra, a4, 1375
                  sltu         a1, tp, s3
                  bge          a1, t2, 1236f
1236:             srl          s3, s5, a7
                  xor          gp, s7, a7
                  srli         zero, t0, 26
                  or           a3, zero, a2
                  slli         s3, t4, 16
                  sub          s10, a7, a2
                  bge          s9, gp, 1258f
                  sub          s0, t5, tp
                  srli         a1, s3, 19
                  or           zero, t3, a1
                  bltu         a4, a1, 1254f
                  slt          s3, a4, s2
                  lui          a0, 127778
                  sra          t5, a0, gp
                  blt          gp, t3, 1257f
                  slli         tp, t2, 9
                  auipc        a1, 907110
                  bne          a0, a2, 1258f
1254:             slt          t4, t4, s8
                  beq          sp, s4, 1261f
                  lui          zero, 494596
1257:             bne          s3, s1, 1274f
1258:             nop
                  blt          a5, s11, 1266f
                  bne          a5, s1, 1276f
1261:             bltu         s2, ra, 1262f
1262:             slti         sp, s2, -1513
                  lui          zero, 721884
                  ori          t0, s3, 1567
                  srl          s3, a5, ra
1266:             sub          s2, t2, s5
                  beq          s1, a7, 1283f
                  sltiu        t1, a7, 942
                  sltiu        s9, s6, -913
                  srai         ra, t1, 17
                  slti         tp, a2, 708
                  bltu         s10, s7, 1292f
                  bge          gp, s5, 1290f
1274:             bne          a2, s8, 1287f
                  and          t4, a1, s2
1276:             sll          sp, s5, a1
                  beq          a6, s6, 1291f
                  slt          tp, s11, s10
                  bltu         s5, s6, 1284f
                  xor          ra, sp, a7
                  srai         t1, t6, 27
                  add          t5, s10, t3
1283:             xor          zero, ra, a6
1284:             andi         t3, t3, 796
                  sll          a6, s2, s9
                  add          a2, s1, a0
1287:             xori         a0, s6, 1213
                  blt          s10, gp, 1298f
                  srai         tp, s10, 6
1290:             auipc        s7, 750967
1291:             add          s2, s0, gp
1292:             ori          s8, t3, -1175
                  sub          s6, ra, t5
                  ori          s3, a3, 422
                  bge          a2, t2, 1301f
                  slt          s1, a3, t3
                  and          t1, sp, s4
1298:             srli         gp, s8, 3
                  andi         s8, s10, 1478
                  add          s11, s11, t0
1301:             sltu         s2, gp, t5
                  sll          a6, t5, s10
                  sra          a0, a2, ra
                  sltu         a0, a1, t5
                  addi         a5, t4, -2003
                  bgeu         tp, a6, 1324f
                  addi         s8, t6, -876
                  sub          a3, s8, s5
                  sll          s11, a2, s6
                  nop
                  xor          t3, t3, t3
                  bne          t4, a0, 1321f
                  bltu         s10, s11, 1324f
                  sra          a3, ra, s7
                  andi         s11, s3, 1712
                  slt          s6, ra, t5
                  sltu         s9, s3, s10
                  or           ra, a6, a7
                  bltu         a3, s8, 1336f
                  addi         s7, a0, -1327
1321:             beq          gp, ra, 1341f
                  sltiu        a7, s5, 647
                  srai         t2, t0, 17
1324:             add          s11, a1, s6
                  lui          a1, 791497
                  slti         t3, a3, 238
                  addi         a6, t4, -1421
                  ori          s10, t5, 1964
                  auipc        a1, 848757
                  add          s7, a3, tp
                  beq          a6, t1, 1341f
                  and          s10, a1, a6
                  srai         t0, s11, 22
                  bge          s3, a4, 1340f
                  lui          s2, 51082
1336:             srai         s1, s3, 0
                  bge          a7, t4, 1348f
                  bge          tp, a4, 1339f
1339:             or           zero, s3, ra
1340:             slt          s7, t5, s11
1341:             beq          s5, gp, 1344f
                  add          s11, s3, s5
                  nop
1344:             lui          s6, 438739
                  ori          t2, a7, 485
                  xori         a5, s0, -554
                  srli         t0, a3, 13
1348:             blt          s0, t4, 1356f
                  sltu         a3, t1, s1
                  blt          zero, t2, 1366f
                  slt          a7, t3, tp
                  andi         s3, s4, -1723
                  srai         ra, t1, 21
                  srai         s6, t0, 14
                  bge          t1, s7, 1373f
1356:             slli         t0, t6, 19
                  andi         gp, tp, 1159
                  srai         a2, s7, 31
                  slti         s3, t6, -1602
                  xor          s3, t0, ra
                  bgeu         gp, a0, 1374f
                  xori         a0, ra, -434
                  bne          s6, zero, 1377f
                  sub          gp, s8, s0
                  blt          s3, s2, 1385f
1366:             sub          s6, a7, s0
                  blt          a6, zero, 1384f
                  sra          t5, t6, zero
                  slt          gp, a6, s11
                  beq          s4, s2, 1371f
1371:             sltiu        zero, a0, -1164
                  nop
1373:             auipc        s3, 934728
1374:             sub          tp, a2, t3
                  add          a7, ra, s9
                  sra          a5, zero, s5
1377:             ori          s3, s9, -1459
                  add          s6, ra, s0
                  srli         s6, t2, 17
                  ori          s6, s1, -1462
                  nop
                  xori         s3, tp, 1094
                  or           a6, a4, a3
1384:             slt          ra, s9, a2
1385:             blt          s3, s11, 1392f
                  sll          s2, s10, a3
                  lui          a2, 1009127
                  beq          tp, t1, 1391f
                  andi         s5, s5, 1425
                  xori         s6, s7, 351
1391:             bge          a5, s10, 1398f
1392:             auipc        gp, 990044
                  andi         a6, a3, -518
                  srai         gp, a6, 2
                  srai         s8, t0, 24
                  sub          s10, a5, t4
                  slti         sp, gp, -1542
1398:             bltu         a7, a5, 1404f
                  sub          a0, a7, tp
                  sra          a3, t0, s0
                  srli         a7, t0, 29
                  auipc        s8, 596399
                  beq          a5, s8, 1417f
1404:             slti         t2, a5, -1780
                  andi         s8, t5, -506
                  nop
                  bge          a0, a6, 1414f
                  auipc        a2, 272358
                  blt          a4, a0, 1425f
                  sub          t5, s9, s0
                  xori         t0, s5, -792
                  sltiu        t4, a0, 1014
                  xor          s8, s3, a4
1414:             slt          sp, a7, a0
                  sltu         gp, s2, a4
                  sltu         s6, s4, s8
1417:             srl          s9, s0, a1
                  bne          t0, s11, 1436f
                  srl          s6, a5, t3
                  lui          a0, 921814
                  bltu         a2, s0, 1437f
                  andi         s6, a5, -43
                  srai         s9, tp, 3
                  add          a1, t3, s7
1425:             auipc        a1, 653834
                  xor          t1, zero, a0
                  and          s5, s9, sp
                  slti         a2, tp, 225
                  slti         sp, s3, -1314
                  or           s10, t0, a2
                  srai         s2, s11, 27
                  xori         a5, a3, -996
                  slt          s7, s6, s8
                  slt          tp, gp, a7
                  bltu         s8, s2, 1444f
1436:             srl          s9, s11, s4
1437:             sltu         a1, sp, t0
                  andi         t2, zero, 1335
                  bltu         s2, s7, 1446f
                  slti         s5, a4, -204
                  add          s9, s9, a0
                  add          t5, a5, gp
                  addi         s10, a4, -1085
1444:             andi         s10, a3, -444
                  slti         t3, s10, -471
1446:             slli         t3, s4, 6
                  sll          a2, s4, s3
                  slti         s8, s11, 1032
                  blt          a2, t4, 1454f
                  srai         s6, t0, 11
                  slt          a5, s1, t5
                  blt          t0, s4, 1459f
                  ori          s11, a0, -162
1454:             auipc        t3, 280416
                  slt          t3, gp, t4
                  xor          t3, a2, a5
                  bltu         s10, t3, 1459f
                  sll          t5, a5, s7
1459:             beq          s6, a4, 1464f
                  srl          t0, a1, s3
                  blt          a3, s2, 1466f
                  slti         s11, s6, 1529
                  andi         s0, s5, 1431
1464:             bgeu         s9, a1, 1471f
                  or           t3, t0, s4
1466:             addi         zero, s5, -1719
                  srli         s3, gp, 25
                  beq          s5, sp, 1484f
                  ori          ra, s6, -1329
                  nop
1471:             addi         a1, t5, 480
                  sra          s5, sp, ra
                  bne          t3, tp, 1493f
                  xor          s3, s5, ra
                  xor          t3, s6, tp
                  bgeu         a1, a5, 1486f
                  sub          ra, s1, a7
                  sra          a3, s4, s7
                  lui          s11, 573472
                  srl          a3, s4, s4
                  slti         a2, a5, -213
                  nop
                  addi         s7, t2, 172
1484:             blt          a3, s10, 1491f
                  blt          s3, s8, 1502f
1486:             srl          a2, s5, s1
                  add          a1, s10, a2
                  bne          a0, a0, 1501f
                  auipc        s7, 45708
                  beq          sp, tp, 1497f
1491:             slt          gp, t4, t0
                  blt          a2, s3, 1497f
1493:             nop
                  sltu         s6, a4, t3
                  srli         sp, s0, 5
                  slt          a7, s8, gp
1497:             bltu         a6, t1, 1500f
                  andi         t2, t1, -45
                  sub          a5, a3, s5
1500:             xori         a1, s3, 1733
1501:             sll          a7, s5, a0
1502:             lui          a2, 1026675
                  lui          t4, 669518
                  and          s7, t1, t1
                  lui          t5, 770843
                  blt          tp, s3, 1512f
                  slt          t2, s4, a6
                  and          t4, a1, s11
                  srai         a7, a2, 12
                  auipc        t3, 225971
                  sltiu        s9, zero, 1556
1512:             srai         ra, s1, 4
                  bltu         ra, a2, 1524f
                  sltu         s0, a1, gp
                  sll          t2, s1, s2
                  addi         s11, sp, 174
                  srli         t4, s7, 14
                  srl          a3, a3, t4
                  srai         a2, s5, 9
                  xori         ra, s1, -261
                  sltu         s10, s10, t0
                  sltu         s11, a6, a0
                  bge          t1, s0, 1539f
1524:             slli         a3, zero, 8
                  andi         s11, a1, 970
                  sll          t2, a4, s2
                  srl          s7, s10, t3
                  lui          a3, 1028776
                  and          t5, s10, s5
                  add          a3, t6, t6
                  ori          t0, gp, -1157
                  add          t2, s8, t0
                  sll          s1, s3, s4
                  lui          a7, 275302
                  sub          t1, a3, t4
                  auipc        s8, 418746
                  slt          s9, a5, s5
                  sll          s7, zero, s3
1539:             sub          s7, s7, t4
                  slli         s5, ra, 28
                  slt          s5, s3, a2
                  bltu         s5, zero, 1549f
                  xor          s7, sp, a0
                  add          a5, a1, s10
                  srli         t1, t0, 26
                  nop
                  blt          a5, s6, 1550f
                  and          t2, s5, s10
1549:             slt          a5, ra, a1
1550:             slt          s6, t1, s10
                  srl          s1, s7, s7
                  bgeu         s11, s7, 1570f
                  sltiu        s8, s0, -1199
                  srli         ra, s4, 23
                  lui          t2, 185596
                  blt          sp, a6, 1563f
                  and          s5, s9, t3
                  srli         t4, s11, 21
                  sltu         a1, a2, a3
                  bne          s5, a2, 1574f
                  nop
                  slt          ra, a1, a0
1563:             bltu         a2, s9, 1577f
                  auipc        s10, 45930
                  xori         s8, s1, -700
                  or           s9, zero, s6
                  sub          a7, t2, s8
                  and          s5, sp, s5
                  andi         s7, t3, 1427
1570:             or           s1, t0, a3
                  bgeu         s1, a1, 1577f
                  and          a6, t5, gp
                  slli         t5, a7, 29
1574:             beq          s5, t0, 1591f
                  srai         sp, a7, 0
                  sub          s8, zero, a3
1577:             srli         sp, t5, 7
                  bne          a2, s10, 1587f
                  andi         tp, s0, 1744
                  auipc        s2, 685617
                  bgeu         a7, a1, 1583f
                  srai         zero, s0, 23
1583:             sll          s10, t0, t3
                  sll          zero, s10, s3
                  auipc        s3, 840732
                  beq          s9, a2, 1594f
1587:             slli         s5, zero, 0
                  sltu         ra, ra, s6
                  sltiu        s3, s4, -444
                  blt          s8, s6, 1606f
1591:             xor          t1, s7, a5
                  or           s0, s1, s6
                  bge          a0, t6, 1613f
1594:             lui          t0, 846712
                  and          s9, a0, s5
                  add          s11, sp, gp
                  addi         t1, s1, 1803
                  sra          a6, t4, t4
                  nop
                  auipc        t5, 930314
                  ori          a0, a7, -78
                  blt          a2, ra, 1603f
1603:             sltiu        s11, t1, 1124
                  andi         t5, a1, 1291
                  slt          s6, a7, a6
1606:             auipc        s11, 573673
                  sll          s3, s7, s7
                  srli         gp, s0, 2
                  andi         s8, a4, 1539
                  beq          a4, s6, 1611f
1611:             slt          gp, a3, s3
                  sra          s11, t6, s9
1613:             xor          a0, s5, s3
                  sltiu        s7, s8, 1503
                  bge          a7, s1, 1633f
                  bge          t3, a3, 1618f
                  slli         ra, t4, 22
1618:             beq          s3, s1, 1621f
                  bgeu         s7, s0, 1637f
                  nop
1621:             blt          a7, s1, 1622f
1622:             sub          a7, gp, s7
                  addi         s0, t1, -449
                  or           gp, a7, t6
                  addi         zero, s5, -594
                  auipc        a1, 352656
                  blt          s9, s0, 1636f
                  sub          t2, s11, a4
                  srli         zero, a3, 20
                  sub          s3, t5, gp
                  slt          s3, s3, a5
                  addi         s7, tp, 1258
1633:             sltiu        s1, a0, -1429
                  bgeu         a6, t6, 1641f
                  ori          s2, t6, 1977
1636:             bne          s6, s0, 1643f
1637:             sub          s6, s7, s0
                  addi         t5, s4, -1625
                  beq          s10, s7, 1642f
                  srl          s10, s10, a6
1641:             sub          gp, a5, t1
1642:             slt          s1, s8, a0
1643:             bgeu         s5, t4, 1663f
                  bltu         zero, s4, 1660f
                  addi         t2, s11, 938
                  lui          sp, 510711
                  xori         s11, t6, -1121
                  sub          a7, s4, a5
                  beq          t4, t6, 1657f
                  xori         ra, a0, -915
                  lui          s10, 365162
                  andi         s6, a6, -335
                  srli         s1, tp, 7
                  addi         t0, a1, 1573
                  slt          s1, ra, s3
                  sltiu        t2, s6, -1794
1657:             sltu         s1, a3, a1
                  slli         a0, a5, 3
                  beq          t4, s0, 1672f
1660:             blt          t2, a2, 1678f
                  nop
                  addi         s7, a7, -851
1663:             sll          s7, s0, t1
                  bgeu         a0, t3, 1670f
                  auipc        a0, 719423
                  la           sp, region_1+1023 #start riscv_load_store_rand_instr_stream_10
                  lh           ra, 803(sp)
                  or           s7, t0, s9
                  auipc        s2, 984283
                  sh           tp, 759(sp)
                  srli         s11, t5, 15
                  sw           s3, 737(sp)
                  xor          a0, s0, t3
                  lh           a5, -861(sp)
                  add          s9, s11, tp
                  lb           ra, -230(sp)
                  lbu          s1, -76(sp)
                  sll          a3, a4, t4
                  srai         t3, s2, 10
                  or           zero, s4, t4
                  or           s10, t5, a6
                  xori         a2, s10, 527
                  ori          t0, a0, 1182
                  or           a6, ra, a7
                  lh           s9, -625(sp)
                  lh           t0, 697(sp)
                  lb           ra, -71(sp)
                  or           tp, sp, t2
                  sub          t4, a6, s6
                  sh           gp, -795(sp)
                  lbu          t0, 254(sp)
                  lb           zero, -27(sp)
                  lbu          a3, -198(sp)
                  sltiu        s10, s9, -2026
                  sb           a4, 239(sp)
                  sltu         s7, t5, s0
                  lw           ra, 905(sp)
                  lw           s10, 309(sp)
                  xor          t0, ra, s7
                  lbu          a7, -131(sp)
                  auipc        t2, 245884
                  lb           s3, 364(sp)
                  lb           s6, -108(sp)
                  lb           a0, -291(sp)
                  auipc        s11, 956323
                  slt          t3, a2, a3
                  addi         s6, a0, 1526
                  sb           s11, 598(sp)
                  lw           t2, -591(sp)
                  lbu          s7, 278(sp)
                  nop
                  lw           s2, 29(sp)
                  lh           s2, -333(sp) #end riscv_load_store_rand_instr_stream_10
                  sub          t3, s7, a5
                  or           s2, a4, t0
                  srai         s5, t0, 20
                  bltu         a0, s5, 1670f
1670:             or           zero, s11, s1
                  sll          t3, s0, a3
1672:             sltu         a2, t2, a1
                  beq          a2, s10, 1687f
                  sll          gp, s0, s4
                  or           t5, s8, a0
                  add          s2, s0, a1
                  bltu         sp, zero, 1683f
1678:             xor          ra, a5, t3
                  xor          a2, s10, s6
                  slli         ra, s9, 28
                  nop
                  or           s3, gp, t5
1683:             bne          a3, a0, 1694f
                  sltiu        ra, gp, 550
                  nop
                  sll          a0, tp, t5
1687:             slt          t4, a6, gp
                  xor          t2, s2, s2
                  sltiu        a6, t4, 1253
                  bne          s10, s5, 1697f
                  xor          gp, t6, s11
                  and          a3, s2, gp
                  lui          s0, 947712
1694:             ori          zero, a3, 615
                  blt          a3, a3, 1715f
                  blt          a6, s9, 1712f
1697:             add          tp, t2, a1
                  slt          a1, s9, s6
                  nop
                  sub          t2, s11, zero
                  srai         t3, s6, 16
                  bne          tp, s0, 1718f
                  bltu         t6, a7, 1710f
                  slli         a5, a0, 9
                  bgeu         t2, t3, 1710f
                  xori         a3, a1, 860
                  addi         zero, gp, -702
                  sra          s11, t3, t1
                  srai         t2, s0, 11
1710:             ori          s3, s6, -253
                  blt          s2, s8, 1721f
1712:             or           t1, s1, s5
                  slli         s2, a3, 2
                  blt          a6, s1, 1719f
1715:             xori         s3, s11, -1852
                  andi         s8, zero, -334
                  xori         s3, a5, -621
1718:             add          t1, s9, zero
1719:             bge          ra, s8, 1736f
                  nop
1721:             sltiu        tp, s9, -234
                  bge          s8, ra, 1739f
                  srli         a1, a1, 19
                  nop
                  sra          a7, t3, s7
                  bne          s5, s11, 1740f
                  sub          s7, t5, s9
                  sub          a5, a4, s0
                  add          a1, s4, s0
                  add          a3, ra, s1
                  bltu         sp, a2, 1738f
                  blt          s3, s4, 1739f
                  andi         t1, s9, -758
                  nop
                  bne          tp, a6, 1748f
1736:             bne          a0, s4, 1750f
                  bgeu         tp, s3, 1754f
1738:             sltu         t5, s0, s10
1739:             srai         a1, s6, 12
1740:             beq          a5, s0, 1745f
                  slti         gp, s9, 1188
                  slti         a1, t5, 44
                  addi         s10, s7, -1994
                  srli         tp, a2, 8
1745:             sll          sp, sp, s0
                  slli         s2, a4, 19
                  andi         s9, gp, 2008
1748:             sll          t3, s4, t1
                  slli         a5, gp, 11
1750:             addi         s9, sp, -1644
                  nop
                  sra          s11, t6, s9
                  add          t1, a3, a4
1754:             slli         a3, t2, 11
                  sra          s10, ra, t5
                  srl          s3, t3, a1
                  bge          s11, s0, 1775f
                  andi         t3, t5, -1615
                  srli         s7, t5, 12
                  add          s9, t5, t5
                  beq          sp, s4, 1768f
                  sll          tp, t3, a4
                  slli         s5, s8, 25
                  sub          t3, a7, tp
                  sll          gp, s10, s5
                  blt          a2, tp, 1782f
                  sltu         t0, a0, t0
1768:             blt          gp, sp, 1785f
                  ori          a7, s7, 1662
                  xor          s0, t5, a4
                  lui          t5, 86522
                  addi         s5, zero, 2034
                  or           a6, s1, s3
                  xor          t5, s4, s1
1775:             slli         t0, t3, 11
                  xor          a3, t1, s9
                  slti         tp, sp, 1016
                  bgeu         t5, s2, 1784f
                  sub          s7, a7, s7
                  sll          s2, s0, a5
                  slt          a3, tp, a2
1782:             bne          t6, s2, 1791f
                  or           s1, s4, s9
1784:             sll          s11, s10, a2
1785:             nop
                  sltu         a5, s4, a3
                  addi         a2, t6, 1869
                  sltiu        s9, t1, 1058
                  blt          a1, s7, 1790f
1790:             sll          t3, s9, a3
1791:             slt          a0, a3, s2
                  and          zero, gp, t0
                  or           s11, t4, t2
                  bne          s4, s1, 1810f
                  lui          s9, 925325
                  sltiu        s1, tp, 442
                  bne          tp, s1, 1807f
                  sltiu        t3, s11, 683
                  beq          a5, ra, 1805f
                  xor          t3, s0, sp
                  sltu         t2, s9, s10
                  srl          tp, tp, t1
                  bge          a2, s9, 1819f
                  bne          a4, gp, 1812f
1805:             slt          s7, a5, t4
                  bne          t1, tp, 1824f
1807:             srl          sp, s9, s6
                  sra          t0, a2, s10
                  bne          sp, t6, 1829f
1810:             slti         t4, tp, 390
                  andi         t0, s3, -523
1812:             bltu         t5, sp, 1819f
                  slli         t3, a4, 5
                  sra          tp, s4, sp
                  beq          sp, a2, 1826f
                  bge          s1, a0, 1836f
                  srai         s3, s2, 11
                  ori          s2, a6, 1637
1819:             slli         s8, a0, 6
                  sub          s1, tp, sp
                  sltu         s9, s2, t5
                  bne          gp, t0, 1823f
1823:             bge          s2, a0, 1826f
1824:             ori          s11, a2, -648
                  sll          a2, zero, a3
1826:             slti         s9, t1, 1549
                  blt          a2, ra, 1834f
                  addi         ra, a0, -1586
1829:             or           sp, t6, s7
                  sltu         s6, s8, a3
                  and          ra, s7, gp
                  srli         s0, a1, 14
                  srli         s11, zero, 9
1834:             slli         s7, s5, 22
                  add          s9, t6, a2
1836:             or           a0, s6, s3
                  srai         s8, s10, 20
                  add          a1, zero, t4
                  and          t3, tp, a1
                  sltu         s3, t5, a0
                  bltu         a3, t3, 1846f
                  xor          s9, a0, gp
                  slli         t5, s10, 25
                  add          s11, t6, s7
                  and          s3, s4, t4
1846:             sltiu        s11, a2, 1614
                  xor          a1, a1, t6
                  add          ra, tp, t6
                  andi         s1, t0, 2044
                  sltu         s11, t5, gp
                  blt          a0, s9, 1858f
                  bltu         s11, s7, 1854f
                  bge          t1, a0, 1867f
1854:             sltiu        ra, a7, 1328
                  sub          s1, s10, ra
                  bne          s1, a0, 1859f
                  srli         s10, s7, 4
1858:             bne          a5, t0, 1869f
1859:             srli         ra, t6, 31
                  xor          s6, s6, a5
                  nop
                  andi         a1, a4, 1192
                  addi         s2, sp, -789
                  sltu         s8, tp, a3
                  bltu         a6, s0, 1866f
1866:             ori          s8, a4, -1723
1867:             srl          ra, t6, s1
                  sltu         s11, t1, t3
1869:             nop
                  srli         a0, t3, 30
                  slt          a3, a7, s11
                  nop
                  slti         sp, a4, 1106
                  srai         s5, t5, 22
                  xori         a6, sp, 1497
                  auipc        a2, 201080
                  andi         t0, t2, 1922
                  bne          t6, s4, 1892f
                  slt          t5, zero, a5
                  sra          t2, s9, t0
                  and          t0, t4, a3
                  addi         s0, a5, -1583
                  sll          t5, s7, a0
                  xori         s0, a5, 175
                  beq          a3, a5, 1892f
                  bltu         zero, a7, 1892f
                  srl          a7, t6, zero
                  srli         s10, t6, 1
                  and          t5, s7, s7
                  slli         s2, s10, 25
                  bne          t1, a5, 1898f
1892:             blt          tp, s3, 1899f
                  bgeu         t3, s2, 1913f
                  xor          s0, s2, sp
                  sub          a5, s5, s9
                  and          s9, s0, s7
                  srli         s0, s6, 14
1898:             sll          s7, s5, zero
1899:             addi         t4, s5, -402
                  sub          t4, s1, s9
                  beq          t1, t3, 1910f
                  sltu         zero, a5, a1
                  bne          s11, t0, 1905f
                  sll          t1, t3, s8
1905:             sltu         s11, s11, a4
                  slli         t4, a2, 11
                  nop
                  beq          sp, a2, 1914f
                  auipc        s2, 423975
1910:             lui          sp, 605250
                  srl          t2, a7, a7
                  slti         s7, s5, -1698
1913:             slli         tp, s2, 27
1914:             auipc        gp, 23105
                  sll          gp, t1, s4
                  and          a6, ra, tp
                  bgeu         s6, t3, 1920f
                  andi         a1, t6, -597
                  auipc        t5, 920634
1920:             srl          a3, gp, a0
                  add          a2, ra, a4
                  and          t5, s6, s6
                  srli         s9, s2, 5
                  blt          a5, t4, 1943f
                  srl          s2, t2, t0
                  andi         s6, s4, 1790
                  or           zero, zero, s8
                  or           s5, a5, t4
                  srl          a6, tp, s8
                  slli         s6, ra, 21
                  slt          s7, a3, s5
                  and          s6, a2, a3
                  srli         a6, s5, 17
                  blt          s0, s6, 1941f
                  sub          t4, s11, s3
                  xor          t4, t0, s10
                  slti         s2, t0, -589
                  bgeu         t5, s2, 1943f
                  beq          s10, a2, 1942f
                  addi         s3, t0, 599
1941:             add          t1, t0, t6
1942:             nop
1943:             lui          a0, 922486
                  slti         s6, a4, 1274
                  slli         a3, t1, 1
                  and          s10, t0, a0
                  sll          a3, s1, t4
                  lui          s1, 732794
                  lw           t0, 4(t6)
                  sltu         a5, t3, s7
                  sll          s2, t4, s11
                  srl          t1, s1, t1
                  or           a6, a7, t0
                  addi         t6, t6, 28
                  srai         a2, a3, 29
2549:             addi x17, x5, 1
2549:             jalr x17, x17, 0
sub_8:            and          a3, a2, a1
                  srl          a6, ra, a7
                  beq          a7, a4, sub_8_stack_p
                  sltiu        a2, s3, -1953
sub_8_stack_p:    addi         t6, t6, -16
                  sw           t0, 4(t6)
                  xori         t2, s6, -1599
                  andi         s8, gp, 516
                  or           s2, a0, s8
                  sll          t5, s5, ra
                  bgeu         tp, t4, 13f
                  and          a5, s3, s9
                  beq          a7, a2, 17f
                  ori          a5, s7, -624
                  sltiu        tp, gp, -1554
                  and          s0, sp, gp
                  and          s8, s3, tp
                  srli         s7, s0, 30
                  bne          tp, s10, 19f
                  srl          sp, a4, s3
                  bge          a7, tp, 15f
                  ori          ra, s4, -1832
                  andi         a2, s5, 206
13:               sltiu        s0, a3, -1342
                  ori          a0, s8, 756
15:               slti         a0, a7, -710
                  add          t2, s9, t6
17:               bge          tp, t1, 33f
                  sub          zero, a1, a6
19:               or           s11, tp, zero
                  add          t0, s6, s9
                  bltu         s1, t3, 35f
                  xor          s9, t1, a6
                  bgeu         ra, s3, 32f
                  xor          s5, a0, a4
                  sll          sp, sp, s4
                  ori          sp, t2, -912
                  sltu         tp, t4, a2
                  bltu         t2, a7, 44f
                  ori          s7, s5, 1196
                  xori         a5, s8, 1865
                  sll          a1, t2, s3
32:               bltu         s4, sp, 48f
33:               srli         s11, s6, 23
                  or           a3, s8, s3
35:               nop
                  beq          s7, s11, 48f
                  sltiu        a2, sp, -1212
                  sra          s1, t1, s5
                  nop
                  bltu         sp, a3, 44f
                  sll          zero, s0, a2
                  auipc        sp, 92406
                  sra          a3, t3, a7
44:               xor          tp, a1, s0
                  bne          s4, a1, 55f
                  srl          s1, zero, a3
                  bge          t1, s9, 61f
48:               sub          s9, s11, s6
                  sll          a3, t3, gp
                  bltu         s10, s9, 51f
51:               addi         a3, a5, 1430
                  bge          s9, s2, 67f
                  bge          s9, a0, 71f
                  slti         s10, t4, -451
55:               sltiu        t2, s3, 1560
                  slt          t0, s1, zero
                  sltiu        t0, sp, -1107
                  blt          s2, gp, 64f
                  or           t2, s11, tp
                  bge          t0, t2, 75f
61:               sltu         a3, s11, s9
                  srl          tp, a0, sp
                  srl          a1, t6, t4
64:               andi         gp, t4, -62
                  blt          tp, t5, 73f
                  bgeu         s10, s5, 72f
67:               bltu         s4, t4, 74f
                  andi         ra, tp, -926
                  srl          t3, s3, s8
                  add          s6, s1, a1
71:               srli         a3, s3, 5
72:               or           a6, a3, t1
73:               lui          s6, 620190
74:               sll          a1, t4, a4
75:               sltu         a2, a4, a4
                  nop
                  and          s0, a0, t6
                  lui          ra, 408703
                  sll          s6, ra, a0
                  add          s7, a2, sp
                  beq          tp, s4, 86f
                  slli         gp, s4, 9
                  add          t4, a1, s7
                  bgeu         a2, a0, 94f
                  blt          s0, sp, 98f
86:               sll          t3, a7, tp
                  sra          s9, t3, s5
                  slti         s8, a1, -1824
                  add          tp, s1, a1
                  slti         t0, s6, -1840
                  slli         s0, s2, 6
                  slti         zero, t3, -1140
                  sll          gp, s6, s9
94:               lui          a7, 151810
                  srli         s2, ra, 24
                  blt          s2, a0, 98f
                  bltu         s9, s8, 98f
98:               sll          sp, t2, sp
                  sltiu        s10, s2, 786
                  slt          ra, ra, s8
                  lw           t0, 4(t6)
                  auipc        s6, 848986
                  sltu         s9, a4, s8
                  addi         t6, t6, 16
                  or           a6, gp, a3
116:              addi x23, x5, 0
116:              jalr x23, x23, 0
sub_4:            sub          t5, t0, t3
                  addi         t6, t6, -28
                  add          s10, s9, s7
                  andi         t4, s4, -2037
                  sw           t0, 4(t6)
                  srl          s6, s5, s5
                  srl          ra, t5, t5
                  sub          a7, s1, ra
                  addi         a1, t3, 1601
                  sll          s8, t6, a6
                  slli         s3, a2, 24
                  srai         ra, s0, 8
                  nop
sub_4_j9:         jal          t0, sub_7 #jump sub_4 -> sub_7
                  or           s10, a1, zero
                  srai         s5, s1, 14
                  andi         s1, t0, 292
                  sltu         s1, a2, t6
                  slt          t3, a4, s2
                  srl          t3, s9, s3
                  sll          s11, s5, a3
                  lui          s2, 369667
sub_4_j10:        jal          t0, sub_7 #jump sub_4 -> sub_7
                  and          sp, s0, tp
                  lui          a5, 487594
                  la           s9, sub_8
                  ori          t3, a4, 658
                  lui          s6, 66642
                  slli         t4, t5, 27
                  andi         t2, t5, 1797
                  srai         s11, s5, 8
                  addi         s9, s9, 252
                  srai         s2, t3, 27
                  lui          t2, 1010903
sub_4_j12:        jalr         t0, s9, -252 #jump sub_4 -> sub_8
                  la           sp, region_0+1169 #start riscv_load_store_rand_instr_stream_0
                  sb           t6, 20(sp)
                  lb           s11, -75(sp)
                  lbu          t5, 177(sp)
                  addi         s8, s5, 93
                  srl          a1, s5, s6
                  sb           gp, -212(sp)
                  sb           a1, 221(sp)
                  lhu          t4, -73(sp)
                  add          a1, s10, t4
                  srl          s7, a2, s0
                  auipc        a3, 271282
                  lb           t2, 200(sp)
                  sb           gp, 202(sp)
                  add          a3, s8, s2
                  lui          t2, 959004
                  lb           s11, 240(sp)
                  sh           s11, 183(sp)
                  sb           ra, -156(sp)
                  and          a6, a0, s10
                  lb           a0, 202(sp)
                  sb           s2, 146(sp)
                  lb           a7, -6(sp)
                  lbu          zero, -60(sp)
                  lbu          s1, 28(sp)
                  lui          a3, 337182
                  nop
                  sh           a0, -45(sp)
                  lh           s11, -123(sp)
                  lb           s6, 256(sp) #end riscv_load_store_rand_instr_stream_0
                  ori          s5, t0, -1534
                  andi         s9, s6, 1797
                  xori         s8, s7, -1804
                  srli         t2, a7, 15
                  sltiu        t1, s10, 862
                  or           s3, s7, s2
                  add          s2, t5, tp
                  srli         s2, a0, 28
                  bne          a2, sp, 15f
                  slt          s5, gp, s5
                  and          s8, s3, a7
                  srl          a2, a2, s6
                  slli         a0, t1, 29
                  blt          t5, a6, 18f
                  sub          s10, s0, tp
15:               srl          a7, s8, t5
                  and          t5, t1, s5
                  lui          s8, 546725
18:               sub          s3, t2, t6
                  addi         t0, s9, -1126
                  nop
                  beq          s2, s2, 29f
                  sub          a6, a5, t2
                  slti         a1, s10, -968
                  slli         tp, t6, 2
                  or           s3, s7, t3
                  slli         a1, s8, 15
                  bltu         s4, s11, 28f
28:               xori         a3, a1, 1640
29:               auipc        s2, 195989
                  sub          s0, t2, t1
                  beq          s1, s0, 39f
                  sltiu        t1, a4, -208
                  srai         a1, a6, 12
                  bltu         s9, s3, 44f
                  sra          a7, a7, s4
                  srl          a3, s3, a3
                  beq          s0, t1, 55f
                  sub          gp, s3, t3
39:               bge          a6, t5, 51f
                  sltu         t0, t2, tp
                  sll          tp, s5, s7
                  srli         s0, a1, 27
                  srai         a3, t2, 4
44:               bge          t3, s4, 48f
                  slti         s7, gp, 1149
                  bltu         a1, s9, 63f
                  sub          s11, a1, a2
48:               add          s3, s11, s0
                  xori         s3, ra, 1361
                  and          s1, sp, a6
51:               xor          gp, a3, t0
                  beq          s11, s3, 69f
                  addi         s0, t6, -741
                  sltu         t5, s0, s8
55:               bne          s8, gp, 74f
                  sub          s7, t3, s8
                  bge          a0, s9, 72f
                  bge          t4, s4, 60f
                  sll          s9, s9, a6
60:               sll          s8, a6, s11
                  bne          s11, s0, 64f
                  andi         sp, s0, 380
63:               nop
64:               ori          s8, a0, -86
                  bne          a7, a7, 66f
66:               bltu         t4, s5, 78f
                  sra          s8, t4, t0
                  bltu         a6, a7, 84f
69:               bgeu         a0, s3, 84f
                  blt          a0, ra, 79f
                  sltiu        s0, a5, -882
72:               sltiu        gp, s2, -1622
                  sll          a3, s6, s10
74:               sub          a5, zero, s1
                  slt          a7, s6, t2
                  srai         t5, s4, 31
                  srli         s7, gp, 27
78:               srl          s7, s10, t3
79:               andi         s3, a1, -1190
                  beq          a6, t6, 98f
                  add          a1, s7, t3
                  slli         s2, t4, 11
                  blt          tp, s1, 97f
84:               lui          s6, 191076
                  nop
                  slli         t3, a6, 26
                  sltu         t3, s10, a2
                  srl          a5, a5, s2
                  slt          s8, tp, a5
                  nop
                  slt          s2, zero, t5
                  srl          a0, t4, a6
                  sltiu        t2, s1, 1274
                  slli         t1, a7, 19
                  slti         tp, a2, -642
                  and          t0, s5, s2
                  lui          s9, 172097
                  slti         a1, s2, 1870
                  ori          s7, t5, -1804
sub_4_j11:        jal          t0, sub_9 #jump sub_4 -> sub_9
                  add          sp, a0, ra
                  xori         zero, s11, -243
                  sll          sp, sp, s4
                  bltu         s9, ra, 96f
96:               slli         tp, s1, 2
97:               addi         s2, s3, -496
98:               sra          a1, a7, s5
                  sub          a1, t6, tp
                  sra          ra, s10, s0
                  add          a7, t5, a6
                  or           a3, s0, s3
                  ori          t4, s3, 1690
                  xor          a0, s9, t1
                  and          a5, t6, s2
                  beq          a6, s8, 114f
                  bge          t6, t1, 115f
                  or           s3, ra, a6
                  bne          s4, t4, 118f
                  beq          a4, t1, 129f
                  xori         t4, s2, -1048
                  sub          s7, s0, tp
                  blt          t2, gp, 129f
114:              xor          s1, sp, s10
115:              auipc        s9, 737939
                  ori          s2, tp, 2020
                  addi         a0, s8, -495
118:              slli         zero, t3, 9
                  auipc        s2, 990980
                  andi         a7, a5, -1370
                  slli         t4, s2, 24
                  and          a2, a1, t3
                  xori         a2, s10, -1546
                  slli         t4, t5, 9
                  bgeu         t6, s8, 145f
                  slli         s6, a7, 27
                  bge          t2, t6, 137f
                  bge          ra, gp, 143f
129:              bltu         t5, zero, 144f
                  srai         a2, s4, 25
                  bge          t6, s0, 141f
                  ori          s7, t1, 369
                  sltiu        gp, a5, 576
                  auipc        t4, 946240
                  srl          s2, s7, s3
                  and          s5, a7, ra
137:              slt          s0, s10, a7
                  bge          t3, t3, 142f
                  sltiu        s9, a3, 586
                  srai         a5, s9, 12
141:              bge          s9, t5, 144f
142:              nop
143:              ori          s2, s8, -1199
144:              nop
145:              bne          s8, s6, 165f
                  slt          t3, s4, a1
                  addi         tp, s11, 1908
                  srai         s11, s3, 14
                  bgeu         t6, s3, 166f
                  bne          s5, s7, 159f
                  bltu         s4, t4, 153f
                  slti         a5, s7, -1276
153:              ori          a5, t5, 1686
                  ori          t0, a5, 613
                  nop
                  and          a0, s9, s9
                  blt          t3, s10, 167f
                  ori          a2, a1, -1904
159:              xori         t0, ra, -830
                  slt          a2, sp, tp
                  ori          a6, t5, 501
                  blt          s4, t6, 167f
                  or           s6, s5, a5
                  blt          s0, t2, 167f
165:              addi         sp, s9, 1699
166:              and          s10, s10, a4
167:              slli         s10, a3, 17
                  sub          zero, tp, a0
                  lw           t0, 4(t6)
                  and          a5, zero, s6
                  srli         s6, a0, 27
                  lui          ra, 286519
                  sll          a5, s6, t2
                  slt          gp, s1, s4
                  addi         t6, t6, 28
                  and          s7, s7, s0
                  sub          a2, a7, s10
                  sltu         s6, ra, s0
                  lui          zero, 222941
254:              addi x16, x5, 0
254:              jalr x16, x16, 0
sub_9:            lui          s3, 843990
                  slli         s10, a7, 10
                  addi         t6, t6, -52
                  sw           t0, 4(t6)
                  sltiu        s8, a0, -1684
                  la           t2, region_0+1932 #start riscv_load_store_rand_instr_stream_9
                  sh           tp, 4(t2)
                  lbu          s7, -57(t2)
                  sb           s6, 58(t2)
                  lb           a6, -50(t2)
                  or           t0, t6, t1
                  addi         a5, s2, -496
                  sra          t4, a3, s5
                  slti         t0, gp, 563
                  srai         s3, a2, 9
                  lbu          a0, 61(t2)
                  sltiu        tp, t5, 257
                  slli         a5, s5, 4
                  nop
                  sw           a0, 44(t2)
                  lb           zero, 3(t2)
                  xor          s3, t4, s7
                  lh           s6, 58(t2)
                  andi         t3, ra, -1735
                  lbu          s10, 1(t2)
                  lb           a1, -14(t2)
                  lui          t3, 580785
                  srli         a6, s3, 25
                  lb           a2, 24(t2)
                  lbu          s11, 3(t2)
                  lbu          s0, -17(t2)
                  lhu          tp, -64(t2)
                  lb           s1, 23(t2)
                  lb           s1, -27(t2)
                  slli         s10, t0, 7
                  lb           s7, -7(t2)
                  lb           a1, 51(t2)
                  sb           s2, -55(t2)
                  lb           s0, 61(t2)
                  sub          s3, s11, s0
                  lh           sp, -20(t2)
                  lhu          t0, -32(t2)
                  sll          gp, a3, a2
                  auipc        a7, 408902
                  lh           t1, -10(t2)
                  sb           s5, -63(t2)
                  srai         t5, s10, 20
                  lh           t4, 32(t2)
                  xor          s1, t5, s11
                  andi         a7, s7, -612
                  sb           s10, -33(t2)
                  sub          t1, s3, a5
                  auipc        a2, 563252
                  lhu          ra, -14(t2)
                  lw           a3, 4(t2) #end riscv_load_store_rand_instr_stream_9
                  la           a2, region_1+275 #start riscv_load_store_rand_instr_stream_8
                  sub          t3, s1, s7
                  sh           a3, 7(a2)
                  sb           gp, 76(a2)
                  sb           s0, -234(a2)
                  lbu          s1, 220(a2)
                  lbu          t4, -120(a2)
                  lui          s5, 876713
                  auipc        a5, 1000298
                  slt          s10, s9, s8
                  sh           t4, -3(a2)
                  lbu          gp, 152(a2)
                  lh           s9, -97(a2)
                  lh           t1, -151(a2)
                  nop
                  sll          s10, s0, zero
                  lbu          t1, -126(a2)
                  sh           s7, -239(a2)
                  lbu          a6, 110(a2)
                  lb           t3, -207(a2)
                  sb           s9, -92(a2)
                  lbu          s0, -197(a2)
                  sh           gp, -191(a2)
                  lb           t3, -148(a2)
                  add          s11, zero, t3
                  lb           t0, -14(a2)
                  lb           t3, -190(a2)
                  lbu          s6, -227(a2)
                  xori         s1, s11, 1097
                  lui          gp, 231289
                  lui          s8, 468861
                  sw           s9, -3(a2)
                  add          sp, ra, t1
                  lbu          s5, 22(a2)
                  addi         s10, a3, -1961
                  lbu          s1, -100(a2)
                  sltu         s9, s11, sp
                  andi         a3, t1, -928
                  sb           s1, 30(a2)
                  sw           t4, -143(a2)
                  slli         t2, s0, 15
                  sb           sp, 132(a2)
                  lb           zero, 54(a2)
                  slt          s2, t6, gp
                  lbu          tp, 216(a2)
                  lbu          a1, -245(a2)
                  lh           s7, -243(a2) #end riscv_load_store_rand_instr_stream_8
                  la           a7, region_1+510 #start riscv_load_store_rand_instr_stream_7
                  lbu          t1, -1(a7)
                  sb           zero, -11(a7)
                  and          zero, s3, s2
                  or           s5, s7, s5
                  add          a3, s7, s6
                  lhu          s5, -14(a7)
                  lbu          s7, -12(a7)
                  auipc        s10, 998750
                  lbu          gp, 11(a7)
                  sll          t1, s3, zero
                  lb           t2, 5(a7)
                  and          t0, sp, t2
                  sb           t4, 7(a7)
                  or           s10, s0, t5
                  sh           s9, 4(a7)
                  srli         s6, s2, 17
                  sb           a5, -13(a7)
                  sw           gp, -14(a7)
                  sw           t4, 10(a7)
                  slti         t1, s5, 366
                  lbu          t0, 13(a7)
                  sb           s1, 5(a7)
                  xor          a5, t1, a4
                  lb           t0, 9(a7)
                  nop
                  ori          s3, t1, -180
                  lbu          t4, 12(a7)
                  sb           a1, -7(a7)
                  sub          sp, a6, sp
                  sb           zero, 9(a7)
                  sub          a0, gp, sp
                  sub          a0, s0, s10
                  slt          s0, t2, a7
                  lhu          zero, 4(a7)
                  sb           a2, 7(a7)
                  or           s10, s6, s4
                  sub          s6, s1, s11
                  lb           a1, 11(a7)
                  addi         t1, s1, -780
                  lb           a6, 7(a7)
                  sltiu        a3, a0, 1846
                  slti         s6, s4, 1875
                  srai         ra, s2, 11
                  sub          s6, t0, s7
                  or           a3, t1, zero
                  sb           a5, -2(a7)
                  sh           s1, -6(a7)
                  and          s7, a4, s8
                  ori          a1, s5, 698
                  sltu         s1, s9, gp
                  lw           s9, 2(a7)
                  lw           a3, -14(a7)
                  slt          s3, a6, zero
                  sb           t2, 2(a7)
                  lbu          s9, -2(a7)
                  sb           gp, 12(a7) #end riscv_load_store_rand_instr_stream_7
                  la           s6, region_0+1059 #start riscv_load_store_rand_instr_stream_3
                  lhu          s2, 7(s6)
                  lhu          a3, 15(s6)
                  srl          s2, t2, t2
                  and          s8, sp, s3
                  addi         a7, s3, 878
                  slli         s11, s8, 2
                  lb           t4, 6(s6)
                  lhu          s11, -13(s6)
                  lbu          s0, 9(s6)
                  lhu          t4, 3(s6)
                  and          s8, s8, t2
                  nop
                  lbu          s10, -6(s6)
                  or           zero, a3, s6
                  srli         a7, s9, 28
                  sw           s10, -15(s6)
                  lb           s10, -5(s6)
                  sb           ra, 15(s6)
                  addi         s7, s1, -1963
                  lhu          t0, -11(s6)
                  slt          s9, a2, s8
                  sb           s10, -1(s6)
                  sltiu        a1, sp, -1094
                  lb           zero, -13(s6)
                  auipc        s0, 762637
                  srai         t5, s2, 14
                  srl          gp, tp, s1
                  sub          s0, s7, s1
                  slti         a2, s0, -1477
                  lb           t0, 15(s6)
                  sltu         a5, s3, t4
                  ori          t4, t4, 52
                  lbu          s8, -14(s6)
                  lbu          a0, -14(s6)
                  lhu          s11, -1(s6)
                  andi         t2, s0, 1406
                  lb           a1, 3(s6) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+991 #start riscv_load_store_rand_instr_stream_11
                  srai         s7, a6, 27
                  lbu          gp, 0(s9)
                  slli         s1, a4, 9
                  lbu          s10, -4(s9)
                  sb           t2, 13(s9)
                  lb           s2, 12(s9)
                  sll          a2, s8, a1
                  lbu          a3, -8(s9)
                  addi         tp, a6, -909
                  lb           t2, -10(s9)
                  lbu          s3, -12(s9)
                  lb           a7, -16(s9)
                  lh           a3, 1(s9)
                  lbu          t5, -3(s9)
                  sb           a1, -8(s9)
                  sll          s5, s4, sp
                  slli         t1, s5, 26
                  lb           s6, -16(s9)
                  sub          s1, tp, t0
                  lui          s5, 715521
                  lbu          a7, 4(s9)
                  sltu         s6, s6, tp
                  lb           t0, 6(s9)
                  slt          a7, t4, t5
                  sh           tp, 1(s9)
                  lb           t0, -16(s9)
                  sb           a1, 14(s9)
                  slt          t0, a4, a2
                  lb           t4, -7(s9)
                  sb           s2, -4(s9)
                  lb           sp, 2(s9)
                  sb           sp, 5(s9)
                  sub          t0, s0, sp
                  sub          t0, a1, s5
                  sh           s11, -7(s9)
                  sub          t3, s8, gp
                  lw           a7, -7(s9)
                  lb           tp, -16(s9)
                  sub          s2, gp, gp
                  sh           t3, -11(s9) #end riscv_load_store_rand_instr_stream_11
                  la           t5, region_0+717 #start riscv_load_store_rand_instr_stream_5
                  andi         s0, a0, -1058
                  andi         s8, s5, 1874
                  ori          a1, ra, 1459
                  sll          a7, a5, a4
                  sra          s8, a2, sp
                  slti         t4, t2, -406
                  add          s7, s6, t3
                  lh           s9, 275(t5)
                  lb           zero, 558(t5)
                  or           s8, t0, t1
                  sh           s6, -459(t5)
                  sra          a2, t4, s4
                  lbu          s3, 1061(t5)
                  sltu         tp, s2, a1
                  lbu          a1, 293(t5)
                  slt          t1, sp, a5
                  lbu          s2, 665(t5)
                  lb           a6, 996(t5)
                  ori          a0, t2, 403
                  sb           a3, 72(t5)
                  sh           a6, 615(t5)
                  or           s2, s10, s11
                  nop
                  slli         zero, a1, 20
                  slt          t4, s4, s3
                  lui          t3, 376448
                  lh           tp, -225(t5)
                  lbu          t2, 990(t5)
                  slti         a1, t5, 350
                  sub          t4, ra, a5
                  sb           s5, 618(t5)
                  or           zero, s0, s3
                  lh           a5, 197(t5)
                  lh           s9, 743(t5)
                  lbu          s8, 676(t5)
                  lb           gp, 424(t5)
                  lui          ra, 366758
                  add          a1, a3, t1
                  sh           a3, -147(t5)
                  sll          a7, a6, t2
                  sll          t2, a6, ra
                  sltiu        t4, s6, -580
                  sw           a5, -197(t5)
                  auipc        t4, 838147
                  lbu          s11, 489(t5) #end riscv_load_store_rand_instr_stream_5
                  slt          s1, s7, s11
                  slti         gp, s6, -1369
                  bgeu         a5, a5, 7f
                  blt          tp, t4, 7f
                  auipc        gp, 442718
                  sll          zero, gp, zero
                  ori          a7, t1, 731
7:                slti         t5, a7, -1264
                  add          a2, s9, zero
                  srai         s6, a7, 26
                  addi         sp, sp, -1973
                  xori         s3, t2, -145
                  srl          tp, a3, a1
                  srl          tp, a5, s2
                  sltu         s6, s8, t5
                  bltu         a3, s7, 33f
                  nop
                  srli         t5, a2, 8
                  sra          s11, a4, a2
                  lui          s2, 988113
                  nop
                  lui          s3, 132222
                  bgeu         a4, zero, 36f
                  slli         s1, s3, 26
                  bne          s7, a0, 36f
                  srai         a1, zero, 15
                  bge          a2, a5, 42f
                  sll          t4, a2, s7
                  srai         gp, t4, 15
                  addi         s2, s1, 784
                  slti         t4, zero, -1577
                  slti         s6, a4, -547
                  sll          s9, s1, tp
33:               ori          a7, a1, 67
                  slli         t1, t6, 13
                  auipc        zero, 168823
36:               blt          t0, gp, 38f
                  sltu         ra, zero, t3
38:               ori          a2, s0, 1786
                  auipc        a7, 727002
                  addi         zero, s1, 403
                  xori         a5, a0, -1083
42:               xor          a0, a6, t3
                  auipc        sp, 630114
                  xori         a3, a4, 1284
                  slli         a0, s3, 18
                  srai         sp, t6, 17
                  add          t3, s10, t1
                  nop
                  srai         s1, s7, 14
                  sll          s5, a6, zero
                  bltu         s11, ra, 61f
                  srl          a0, a0, t1
                  bltu         a7, t3, 66f
                  or           t3, a4, a6
                  andi         s3, s1, -1328
                  beq          a2, s8, 61f
                  ori          a6, t3, 436
                  bne          a6, a2, 78f
                  and          s6, s7, t1
                  nop
61:               auipc        gp, 722573
                  slti         t1, tp, 1599
                  beq          s3, t6, 79f
                  sltu         a2, s9, s7
                  srl          a1, s0, s6
66:               beq          s3, s7, 78f
                  sltu         s6, t6, s6
                  bltu         a4, s11, 76f
                  ori          s6, a2, -579
                  and          s7, t0, a6
                  nop
                  and          a6, s5, s6
                  andi         t3, a2, 123
                  slti         s8, a1, -1404
                  bltu         s7, s10, 79f
76:               srl          s0, t5, sp
                  sra          t5, t5, a1
78:               srai         s0, a5, 20
79:               and          s7, a5, t0
                  ori          t0, s2, 263
                  blt          tp, s6, 93f
                  beq          a4, t6, 94f
                  nop
                  and          s10, s5, a3
                  lui          ra, 59567
                  ori          s8, s5, -1193
                  slt          t3, s2, a2
                  bgeu         s9, s8, 99f
                  andi         tp, a5, -1526
                  sub          a2, a4, a4
                  bgeu         t2, t2, 101f
                  srai         t5, a1, 9
93:               addi         s7, a7, -813
94:               sra          a0, gp, ra
                  srl          tp, t3, gp
                  srli         a2, zero, 0
                  bgeu         a1, sp, 116f
                  bne          s11, s2, 102f
99:               xor          s3, a3, t6
                  xor          s1, a7, a6
101:              blt          t2, t1, 120f
102:              sub          s2, t6, gp
                  sub          a2, a3, a2
                  slli         s9, s11, 7
                  sra          s3, gp, a7
                  srl          a3, s3, a2
                  xor          t1, s2, t4
                  beq          sp, a2, 118f
                  andi         s1, a0, -1488
                  slt          a1, gp, a7
                  sll          a1, s8, ra
                  bltu         s10, s6, 118f
                  add          s5, t4, sp
                  bne          s6, s0, 134f
                  sub          s1, sp, t0
116:              srai         a5, a7, 9
                  slli         ra, s7, 26
118:              slti         t2, s2, 1032
                  auipc        s0, 376229
120:              slt          s1, a1, a4
                  beq          s11, s3, 131f
                  sra          a6, s8, s0
                  auipc        a6, 324171
                  srl          t3, t5, s9
                  andi         s7, sp, -1039
                  lui          s10, 957513
                  bltu         s1, t5, 145f
                  add          s9, a1, a7
                  sub          s6, t4, a2
                  sll          s10, zero, gp
131:              auipc        a6, 104879
                  and          s6, s4, t3
                  slt          t1, s8, t0
134:              sltiu        t4, a3, -1536
                  bge          s1, a0, 138f
                  sub          t0, gp, s2
                  slt          s7, t5, t2
138:              bne          s3, t5, 146f
                  ori          ra, s6, -221
                  srai         t0, sp, 18
                  and          t4, tp, s6
                  slt          s6, a5, s5
                  xor          a1, t0, a4
                  slti         a1, ra, -292
145:              xori         s11, a6, -1162
146:              ori          s8, t2, 406
                  slli         s8, s6, 22
                  sltu         s2, s5, a7
                  addi         s7, t3, 1463
                  bne          s11, s2, 166f
                  slt          t1, s8, s9
                  sra          sp, s7, sp
                  sra          s10, tp, s3
                  srai         s1, s11, 26
                  andi         t3, s7, 283
                  bgeu         s5, t0, 164f
                  beq          zero, t6, 161f
                  auipc        s9, 406524
                  sltiu        a6, s9, -1938
                  srl          s7, s8, gp
161:              slti         a0, t6, -1593
                  bne          s5, s4, 165f
                  xori         t0, s9, 164
164:              xori         t2, t5, 1236
165:              srl          s2, a1, a6
166:              andi         t5, t6, 1636
                  srl          tp, zero, s7
                  xor          ra, s3, t1
                  srai         s5, t2, 27
                  xori         a6, s4, -1670
                  nop
                  lui          a1, 1046299
                  slti         t4, s11, -1217
                  andi         t4, s1, 476
                  or           tp, s2, ra
                  andi         t2, a0, -1718
                  beq          a5, a7, 189f
                  srli         zero, a3, 20
                  bne          a7, s3, 190f
                  and          s5, a0, s9
                  slt          s10, s6, sp
                  bne          a6, s1, 196f
                  addi         zero, a0, -1886
                  sltu         s6, t4, s2
                  srai         a2, t5, 1
                  andi         s3, s9, -846
                  bge          tp, s2, 199f
                  srl          t5, a3, s7
189:              slti         s8, a5, 249
190:              andi         t5, s4, 134
                  srli         s2, a2, 2
                  bgeu         a7, t1, 210f
                  sra          a3, tp, s1
                  sll          gp, s11, zero
                  srli         s10, s2, 24
196:              auipc        s8, 488106
                  bge          t0, s6, 210f
                  srai         gp, sp, 10
199:              xori         t2, t2, 457
                  xor          t4, tp, a4
                  sra          t0, s6, s4
                  beq          gp, a5, 222f
                  bge          a3, s7, 213f
                  srli         t3, a1, 26
                  lui          t1, 68992
                  srl          gp, a0, a7
                  andi         t5, t5, 1894
                  or           t3, a1, ra
                  bge          s3, t0, 219f
210:              ori          a5, t2, 2040
                  srli         a7, a5, 6
                  andi         ra, sp, -1177
213:              srl          s5, zero, a7
                  lui          s7, 286645
                  sll          a2, s9, a1
                  bgeu         zero, s8, 235f
                  bne          s11, s6, 221f
                  auipc        s10, 670615
219:              add          s9, a1, t2
                  slti         s7, zero, 1865
221:              and          t0, s1, t2
222:              or           gp, t4, s8
                  bltu         a1, gp, 228f
                  xori         t2, s3, -104
                  addi         a5, t5, 575
                  and          t3, s2, t1
                  sltu         s6, t0, tp
228:              blt          sp, tp, 238f
                  andi         a0, s6, 1422
                  andi         a3, a3, 400
                  xor          a3, t4, t2
                  sltu         t1, t2, t5
                  bgeu         a5, s11, 239f
                  xor          zero, s7, s4
235:              sll          t0, a0, t3
                  beq          s3, t1, 255f
                  auipc        t0, 204475
238:              ori          t1, s0, -1961
239:              xori         s1, t2, -300
                  srai         s8, s1, 21
                  sltu         a1, a1, a3
                  add          ra, sp, s1
                  bgeu         t3, s11, 259f
                  srli         t4, a2, 29
                  sltiu        t4, t0, 1895
                  or           s0, s5, s10
                  slti         t0, s1, 1010
                  andi         a1, a0, 1075
                  bge          s4, ra, 261f
                  and          s1, t6, s5
                  srl          s6, a3, s0
                  bltu         s7, a5, 272f
                  andi         sp, t6, 970
                  slti         a2, sp, 657
255:              ori          a5, s5, 1630
                  sub          s3, s5, a6
                  slt          s11, s0, s9
                  slli         s7, sp, 30
259:              andi         a3, ra, 409
                  sll          s7, s7, s7
261:              sub          s10, t2, t0
                  auipc        zero, 201075
                  and          t0, sp, ra
                  lui          a0, 643649
                  slli         s7, s7, 29
                  srli         a1, a5, 21
                  slli         a2, s6, 27
                  addi         t5, ra, 70
                  and          zero, s1, s6
                  sltiu        s3, a3, -937
                  ori          s11, a3, -499
272:              xor          s2, s2, t1
                  and          a1, a6, s11
                  xor          ra, t0, gp
                  auipc        a6, 610079
                  bgeu         s11, t1, 292f
                  sltiu        t5, t6, 1950
                  ori          a1, t0, 1794
                  slli         a1, a6, 4
                  sll          tp, a1, s3
                  sub          t0, tp, t5
                  sll          s3, ra, s5
                  sltiu        s5, ra, -1906
                  addi         s6, t6, 1645
                  add          s1, s8, t5
                  blt          t4, s11, 294f
                  bgeu         s8, a2, 305f
                  auipc        a2, 602126
                  addi         sp, s0, 23
                  or           ra, t5, a2
                  bgeu         ra, s1, 303f
292:              bgeu         a5, a3, 297f
                  sltu         s11, a6, s0
294:              and          tp, a0, a7
                  and          gp, s2, s3
                  sub          s2, t3, t0
297:              addi         gp, a1, -1861
                  beq          s2, zero, 302f
                  slti         t5, s3, 363
                  nop
                  slti         zero, zero, 1853
302:              blt          ra, s3, 318f
303:              bne          a2, s6, 305f
                  and          a7, s9, a1
305:              bne          s5, zero, 315f
                  slli         a5, t2, 1
                  srli         s8, a2, 28
                  sltu         s8, tp, s1
                  bne          s10, t0, 313f
                  srl          t2, a7, a6
                  andi         a3, t0, 1660
                  sra          s6, t3, s9
313:              sll          s6, s10, a3
                  blt          s10, ra, 318f
315:              bge          a1, t5, 333f
                  sltu         t5, zero, a1
                  add          s10, s1, tp
318:              sll          s6, gp, a7
                  sra          t1, t3, t1
                  andi         s2, s1, 1447
                  bge          s11, s10, 337f
                  ori          s10, s6, -619
                  sub          ra, s8, a2
                  blt          s6, s10, 329f
                  sll          a1, gp, zero
                  srai         tp, ra, 28
                  slli         s1, s8, 30
                  bgeu         gp, ra, 338f
329:              ori          s7, s6, -402
                  add          s0, a1, s5
                  slt          s9, a6, t3
                  sltu         t3, s3, s4
333:              slt          s6, s5, a3
                  bltu         sp, s1, 338f
                  ori          s9, s10, 1897
                  or           s8, s1, tp
337:              and          s2, t2, a0
338:              srl          s5, t1, a7
                  srai         t4, s11, 0
                  auipc        a0, 21223
                  sltiu        s1, a6, 440
                  sltiu        t4, gp, -1738
                  ori          a5, tp, 1719
                  sltiu        t4, t6, -1866
                  slli         a0, sp, 13
                  or           t1, s11, a2
                  xor          a1, s3, t6
                  nop
                  slli         s3, s4, 25
                  bgeu         s7, a1, 360f
                  bne          tp, s0, 361f
                  auipc        t3, 820900
                  srli         sp, s6, 22
                  beq          t4, s4, 356f
                  bge          gp, a5, 366f
356:              slt          s10, a5, a5
                  srl          s10, s0, sp
                  slti         t0, gp, 218
                  bne          s0, t3, 379f
360:              xor          s2, s3, a0
361:              sll          ra, a4, a6
                  ori          t4, a4, -572
                  slt          a6, ra, t0
                  or           a6, a1, s6
                  nop
366:              ori          sp, t6, -1740
                  srli         s10, s6, 5
                  auipc        s2, 642575
                  or           s5, s2, t5
                  xori         a2, t4, 1813
                  auipc        t4, 842326
                  slt          t2, a1, a4
                  addi         a7, t0, 745
                  xor          s7, t2, s11
                  blt          s5, a4, 380f
                  xori         s1, tp, 1351
                  sltu         a2, t6, tp
                  beq          s0, s8, 396f
379:              addi         ra, t0, 389
380:              add          a7, t3, t0
                  lui          t5, 935162
                  sra          s3, s3, s3
                  andi         s1, s8, -1197
                  xor          s1, a7, a6
                  srl          a2, s0, a5
                  slt          zero, t6, s10
                  ori          s11, t2, 2011
                  sltu         s1, a5, s8
                  and          a5, t1, t2
                  lui          tp, 291003
                  blt          s6, s7, 397f
                  bne          a0, a0, 406f
                  sltu         a6, s11, zero
                  addi         a2, a4, -661
                  add          s5, gp, a2
396:              sltu         s0, a5, s6
397:              slt          sp, a3, a1
                  la           s1, region_0+1280 #start riscv_load_store_rand_instr_stream_1
                  or           a2, a4, a1
                  xori         s5, s6, 654
                  andi         t1, a1, 1485
                  addi         s0, a5, 1406
                  lbu          t5, 109(s1)
                  lb           t3, -396(s1)
                  sb           s7, 378(s1)
                  sb           t4, -414(s1)
                  lhu          zero, 406(s1)
                  sll          s9, a3, s5
                  auipc        a5, 3316
                  or           zero, t4, t2
                  lb           s8, -598(s1)
                  lbu          zero, -1181(s1)
                  andi         gp, a4, 1216
                  lb           t1, -164(s1)
                  srai         s2, s4, 15
                  sb           s4, -1201(s1)
                  lb           t4, -386(s1)
                  addi         a2, a2, -1959
                  sltu         s10, s6, s6
                  lbu          s2, -866(s1)
                  addi         s11, t0, -818
                  sb           t6, -1162(s1)
                  nop
                  sll          a0, s7, a6
                  lbu          s10, 83(s1)
                  xor          s3, sp, a3
                  and          t5, t2, ra
                  sb           a0, 339(s1)
                  sltiu        a5, s0, -624
                  sltiu        tp, s6, 149
                  sra          a7, s7, t5
                  sltu         ra, zero, s1
                  lb           tp, -313(s1)
                  sltu         a1, sp, tp
                  lb           zero, -487(s1)
                  lbu          s7, 314(s1)
                  lb           a6, 90(s1)
                  slt          s11, s5, sp
                  andi         s11, zero, -1685
                  lhu          s7, -190(s1) #end riscv_load_store_rand_instr_stream_1
                  srli         t0, a1, 6
                  and          s10, gp, zero
                  addi         t1, s1, 1608
                  nop
                  sltu         gp, s11, a3
                  or           zero, sp, t1
                  slli         t5, s0, 0
                  ori          s3, s1, 21
406:              andi         a1, s3, -1809
                  or           ra, t3, t3
                  sra          s8, sp, a4
                  srl          t4, s0, s2
                  sll          s1, t2, tp
                  srai         s6, zero, 7
                  srl          s0, t0, t5
                  nop
                  xor          gp, t2, t4
                  slli         gp, a3, 31
                  bge          s6, s3, 435f
                  bgeu         a3, t5, 420f
                  sra          s11, s7, t2
                  ori          s1, sp, -135
420:              blt          tp, ra, 428f
                  xor          t5, gp, a1
                  blt          t0, t4, 432f
                  lui          s9, 84701
                  bne          a0, s4, 443f
                  or           t5, a6, a4
                  nop
                  xori         zero, a3, -1931
428:              sltu         s11, t6, t6
                  ori          a6, s10, -1680
                  sll          tp, s9, a7
                  bge          t3, a6, 447f
432:              slti         t2, s4, -1602
                  andi         s7, t0, 1744
                  slli         s8, a1, 17
435:              bge          s1, a4, 447f
                  bge          gp, a7, 449f
                  bltu         a2, t2, 449f
                  srai         a2, s0, 22
                  add          a1, s9, gp
                  add          t5, s5, a4
                  sltiu        sp, s7, -1344
                  slli         s9, a5, 26
443:              sltu         ra, s3, t0
                  blt          sp, a7, 464f
                  andi         t0, zero, 240
                  srli         s2, t6, 0
447:              srai         a2, a7, 7
                  xor          sp, a6, t5
449:              sltu         gp, ra, a3
                  slt          a6, s2, t3
                  sltiu        s11, s6, -1965
                  xori         t4, gp, -1274
                  and          ra, a4, tp
                  slli         a5, ra, 5
                  andi         s0, s1, 1862
                  slti         a1, t3, 1412
                  and          ra, a6, gp
                  sra          s6, t4, t5
                  srli         a3, s7, 29
                  bgeu         s4, s4, 472f
                  bltu         s8, sp, 473f
                  lui          s11, 822506
                  sll          t1, t0, t5
464:              srli         ra, t6, 2
                  and          zero, s0, gp
                  bgeu         t2, tp, 482f
                  blt          s11, s5, 475f
                  bgeu         s5, s4, 470f
                  sub          sp, s0, s9
470:              srli         tp, t5, 6
                  slli         ra, a3, 11
472:              xor          s3, a5, t1
473:              srl          a3, s11, t5
                  nop
475:              addi         t3, s9, 765
                  add          s9, s7, s3
                  xor          s0, a1, t1
                  xor          sp, s0, s10
                  srl          gp, s11, s7
                  bne          t0, t2, 485f
                  la           sp, region_1+585 #start riscv_load_store_rand_instr_stream_10
                  sb           s6, -22(sp)
                  addi         s2, t4, 225
                  sub          t0, ra, s9
                  srai         t0, s0, 14
                  sb           s1, -199(sp)
                  lb           a0, 81(sp)
                  lbu          gp, -254(sp)
                  lw           t4, 31(sp)
                  sltiu        gp, t4, 1767
                  lb           a1, 232(sp)
                  srl          gp, a7, a6
                  lbu          s11, 21(sp)
                  lb           a7, 78(sp)
                  add          a6, s2, a4
                  lb           a1, 53(sp)
                  lw           a7, -25(sp)
                  lui          s9, 134486
                  lbu          t3, -6(sp)
                  slli         s1, a3, 26
                  sb           t4, 151(sp)
                  lbu          s10, -216(sp)
                  srai         a2, gp, 16
                  lhu          s5, -119(sp)
                  nop
                  sub          s9, gp, s4
                  lbu          t0, 25(sp)
                  add          a7, a2, a6
                  srli         s9, t6, 2
                  sb           a0, 130(sp) #end riscv_load_store_rand_instr_stream_10
                  srl          s11, ra, a4
482:              xori         s8, gp, 452
                  beq          t4, s8, 493f
                  addi         a2, a7, -834
485:              sltiu        s7, s7, 1981
                  srli         t4, a1, 16
                  bge          t5, s10, 506f
                  lui          zero, 741672
                  sltu         a0, s1, s8
                  andi         s9, a5, 43
                  sub          s3, s1, s9
                  srli         s6, s10, 19
493:              bltu         s9, t5, 513f
                  srl          a3, zero, a0
                  lui          a3, 969943
                  bltu         t2, a0, 512f
                  sltiu        s2, a0, -1742
                  sub          s5, tp, t4
                  sra          s0, s10, s3
                  bltu         s9, sp, 504f
                  add          s7, s2, s5
                  nop
                  srl          s10, ra, s11
504:              bgeu         t1, a1, 520f
                  sra          a7, s10, a5
506:              sll          t4, a7, s6
                  bgeu         s7, t6, 515f
                  add          t2, a4, s6
                  sra          sp, a1, t0
                  ori          t0, a1, -865
                  sra          s9, t3, a4
512:              sll          t0, t5, t4
513:              xor          s3, s0, a5
                  sub          s10, ra, zero
515:              srl          s7, a4, t3
                  and          t1, a0, t2
                  sub          t1, tp, s4
                  bne          s3, a7, 524f
                  srl          zero, s6, t0
520:              srli         a7, s6, 8
                  and          t0, s2, s8
                  srai         s3, t0, 22
                  sub          tp, s9, a4
524:              bltu         a5, s6, 536f
                  add          t5, a6, t6
                  srai         s2, s0, 5
                  sltu         s6, t2, ra
                  sltiu        s9, t1, -1356
                  bgeu         t1, a0, 542f
                  sll          a7, s0, sp
                  bge          s6, s5, 551f
                  sll          sp, s8, sp
                  addi         a2, s4, -1775
                  srai         tp, t3, 20
                  slli         a6, s9, 21
536:              sltu         t3, a4, t1
                  add          sp, a0, t0
                  lui          a0, 269380
                  xor          a6, a0, zero
                  nop
                  bge          t4, a2, 552f
542:              auipc        t3, 24189
                  lui          t4, 309474
                  srl          tp, a2, a7
                  bgeu         ra, t4, 557f
                  srli         s2, s4, 30
                  sub          a3, a1, s2
                  slli         a6, s11, 19
                  sub          gp, a1, t6
                  xori         t0, t0, -1418
551:              and          s10, a0, gp
552:              slli         s11, t2, 25
                  or           s11, t6, t4
                  or           ra, gp, s8
                  slt          s10, zero, s6
                  sll          s2, s2, t2
557:              srai         a2, s3, 14
                  slti         a1, a1, -569
                  blt          sp, t2, 569f
                  srl          s0, s0, s1
                  slti         s7, a4, -1819
                  slti         a6, s2, -550
                  lui          a1, 173164
                  sra          a3, t6, a3
                  srli         s0, t2, 31
                  and          zero, s7, s7
                  slli         t3, a1, 12
                  sltiu        s3, s10, 2036
569:              bge          s11, s3, 585f
                  srl          zero, a0, t4
                  xori         zero, tp, 950
                  lui          s3, 361234
                  sub          s0, t2, s5
                  sltiu        s9, ra, 746
                  bgeu         t0, a4, 593f
                  andi         s3, s7, -1496
                  andi         t0, s2, -1620
                  bltu         s10, t1, 590f
                  and          tp, t3, zero
                  sub          sp, s6, s9
                  xor          t5, t6, t1
                  and          s5, s2, a3
                  slt          ra, t1, s7
                  auipc        s11, 522533
585:              xori         s0, t1, -681
                  sltiu        sp, a0, 255
                  and          ra, t4, t6
                  sltiu        zero, t5, -2024
                  sll          s9, zero, s0
590:              slt          a2, zero, t1
                  srl          s0, s5, a1
                  srl          tp, t0, ra
593:              xor          a1, s2, tp
                  srl          a3, s9, s11
                  beq          a1, t3, 607f
                  srl          gp, s4, s0
                  sll          a7, s6, gp
                  ori          a6, s10, 1442
                  auipc        a3, 196453
                  srli         s8, a3, 1
                  addi         s2, a1, 696
                  bge          s6, a0, 605f
                  sll          s8, a3, s10
                  slti         a2, s6, -1583
605:              sltu         t4, s2, t0
                  auipc        t3, 185408
607:              addi         a7, t1, -1717
                  blt          zero, s1, 616f
                  add          t5, s11, t0
                  bge          s4, t6, 614f
                  xor          s9, a7, gp
                  andi         t5, a1, 1765
                  xori         a7, s2, -1284
614:              xor          a7, a1, a5
                  xori         s11, s2, 1424
616:              srai         t3, t5, 26
                  slli         s11, s8, 14
                  bgeu         a1, s9, 628f
                  sltiu        s1, t6, 1083
                  srai         s5, s3, 16
                  sra          s11, t5, a3
                  blt          a1, t3, 627f
                  xori         a7, s6, -13
                  lui          s6, 871517
                  sltiu        ra, s6, 1087
                  auipc        s0, 597149
627:              slti         sp, s3, 878
628:              slt          sp, s3, s11
                  srai         s5, t6, 13
                  bgeu         a0, sp, 634f
                  bltu         a4, t1, 641f
                  add          s6, s7, s2
                  bltu         sp, tp, 652f
634:              and          s3, s8, t5
                  lui          s1, 403655
                  slli         a6, t0, 23
                  bne          a2, a5, 651f
                  xor          zero, a4, a5
                  bltu         t1, s4, 657f
                  sltu         s7, a1, a6
641:              addi         s0, s4, 1505
                  xor          s7, s4, tp
                  srli         a1, t5, 13
                  sltu         a5, t4, tp
                  sub          gp, a6, s11
                  andi         s9, a3, -1292
                  ori          t3, zero, 315
                  slli         zero, t5, 22
                  xori         s10, t3, 128
                  sll          t5, s6, s2
651:              beq          a3, t0, 655f
652:              and          t2, s8, t3
                  sub          s3, a5, a1
                  srl          t3, s9, t2
655:              beq          s4, a7, 665f
                  bgeu         a3, t5, 672f
657:              srl          s0, zero, t6
                  slti         t4, a7, 1870
                  sltiu        a1, t3, -352
                  slt          a0, s6, t3
                  lui          a6, 496433
                  srl          s5, tp, a4
                  sll          t0, t2, s5
                  la           gp, sub_10
                  addi         gp, gp, -851
                  addi         t2, tp, 1523
                  ori          t4, a3, 1590
                  nop
                  addi         a0, ra, 1287
                  blt          s7, a4, sub_9_j15 #branch to jump instr
                  sub          ra, a2, a0
sub_9_j15:        jalr         t0, gp, 852 #jump sub_9 -> sub_10
                  andi         a6, s0, -1818
                  ori          s8, gp, -269
                  ori          s10, a2, 1295
                  sll          t3, t4, gp
665:              and          t1, zero, t4
                  or           s0, s1, s0
                  bltu         a0, s8, 671f
                  sll          s11, s11, zero
                  srli         a2, gp, 3
                  sll          t5, a5, a5
671:              bltu         sp, s7, 674f
672:              sra          t4, s11, zero
                  auipc        a2, 966008
674:              xor          t1, t6, s11
                  srli         zero, t6, 10
                  slti         a5, tp, -1843
                  bltu         a1, s9, 689f
                  and          t0, ra, s9
                  bgeu         t4, t2, 695f
                  xor          s0, s9, s11
                  bltu         t4, zero, 683f
                  sub          s6, a5, a3
683:              auipc        s8, 772370
                  addi         t3, t1, 1948
                  xori         a6, a0, -520
                  addi         a0, gp, -131
                  auipc        a2, 464278
                  beq          a7, a5, 700f
689:              and          s0, t2, a7
                  lui          ra, 281193
                  bne          t6, a5, 705f
                  slti         s11, t2, 176
                  add          t4, t5, a4
                  srl          t3, a2, s11
695:              sll          t2, s1, ra
                  auipc        a6, 404008
                  add          zero, s3, t2
                  nop
                  addi         a3, s0, 1958
700:              or           s5, ra, t0
                  slli         t1, a7, 23
                  xor          a2, a3, t3
                  sltu         s9, s2, a1
                  or           tp, t3, gp
705:              bltu         s0, a2, 710f
                  and          zero, ra, s6
                  and          s5, s6, a4
                  bgeu         tp, a2, 728f
                  bne          ra, a2, 720f
710:              srli         ra, a2, 2
                  ori          a7, s9, 120
                  srl          a5, a2, s9
                  slti         t2, s9, -1120
                  ori          a0, s5, -547
                  sltiu        t2, t2, 1188
                  bne          t4, t0, 734f
                  beq          s10, a2, 722f
                  sltu         s2, zero, s11
                  bltu         s10, a3, 725f
720:              xor          t5, zero, t4
                  bltu         s2, a5, 731f
722:              or           t0, tp, t4
                  srai         s1, s3, 21
                  bgeu         s2, a3, 744f
725:              sll          s1, t0, a7
                  bne          s7, t5, 734f
                  sub          s6, s11, a1
728:              srai         ra, s5, 28
                  bltu         t1, a2, 748f
                  andi         s1, s2, 1982
731:              and          s8, a4, zero
                  or           s9, s5, t0
                  srai         s2, ra, 9
734:              bge          gp, s9, 746f
                  srli         a5, t5, 5
                  sll          s7, sp, t2
                  sltu         s11, s7, a5
                  srli         t4, s10, 9
                  srl          a5, ra, ra
                  beq          s2, a6, 750f
                  sltu         a0, a7, a2
                  bltu         a1, s8, 754f
                  slli         a7, s1, 30
744:              srai         a3, s3, 28
                  sll          a1, t3, ra
746:              srli         s2, a1, 17
                  slli         t1, s10, 1
748:              ori          s1, s6, -785
                  nop
750:              slti         s0, s4, 416
                  auipc        tp, 599225
                  xor          s8, a6, t2
                  bge          s3, s6, 769f
754:              or           s7, a6, gp
                  bge          a1, s1, 763f
                  slt          t3, s4, s0
                  srl          s7, zero, s1
                  bne          ra, a0, 776f
                  and          a6, t4, s2
                  or           s10, s4, s10
                  sub          zero, ra, a2
                  addi         a0, s7, -783
763:              add          a3, sp, a1
                  bltu         a6, a6, 768f
                  slli         a1, a7, 4
                  andi         a0, t1, -884
                  srli         t4, t2, 20
768:              blt          s2, s3, 778f
769:              auipc        sp, 679776
                  or           ra, s6, t0
                  sll          t2, s6, s9
                  or           s6, t2, t6
                  nop
                  bltu         s10, a1, 787f
                  srl          s5, a3, s3
776:              nop
                  la           t5, region_1+1982 #start riscv_load_store_rand_instr_stream_2
                  sra          ra, a4, zero
                  lbu          a7, -1035(t5)
                  slti         s11, a3, 1398
                  lui          gp, 1034457
                  add          s5, s10, a7
                  lhu          tp, -160(t5)
                  and          ra, a6, t2
                  lw           s9, -906(t5)
                  ori          s7, t2, 1758
                  lbu          zero, -317(t5)
                  or           s8, a2, a4
                  slt          a3, s7, s1
                  lb           tp, -668(t5)
                  srai         s10, gp, 19
                  lb           s10, -921(t5)
                  lui          a0, 674258
                  or           s9, a0, tp
                  lb           a0, -1019(t5)
                  addi         gp, a2, 1740
                  lb           s2, -359(t5)
                  lhu          s0, -1618(t5)
                  lui          t4, 151299
                  lbu          s5, -1185(t5)
                  lb           s11, -1195(t5)
                  srli         t3, t1, 30
                  lbu          gp, -1654(t5)
                  slt          a5, s5, t3
                  lbu          a2, -1474(t5)
                  or           sp, s8, s2
                  sb           s5, -1603(t5)
                  sra          t2, a0, s6
                  lb           t1, -883(t5)
                  sb           a3, -1745(t5)
                  lb           s0, -543(t5)
                  sb           sp, -116(t5)
                  sb           t6, -1568(t5)
                  srli         a6, s8, 30
                  slt          a5, t1, s6
                  lbu          s2, -867(t5)
                  lh           a7, -1528(t5)
                  lbu          s10, -1358(t5)
                  lhu          s11, -1950(t5)
                  and          t0, s4, s3
                  sb           s8, -250(t5) #end riscv_load_store_rand_instr_stream_2
                  srai         gp, a3, 21
778:              nop
                  bltu         t4, s7, 798f
                  addi         s7, s9, -765
                  srl          s7, sp, a6
                  nop
                  beq          s7, s0, 795f
                  nop
                  sub          s0, s2, a2
                  sra          s7, s3, s10
787:              sltu         s7, t1, t3
                  slt          a6, s9, t5
                  beq          zero, s7, 803f
                  srli         a6, s8, 29
                  bgeu         s10, gp, 811f
                  auipc        s9, 892210
                  ori          s10, ra, 1043
                  sltu         s1, t4, t5
795:              slli         ra, s3, 1
                  sub          s0, s1, a0
                  or           t0, s6, s2
798:              xori         a3, s6, 27
                  bne          s3, a0, 807f
                  ori          s9, a5, -212
                  srli         a3, sp, 2
                  sra          s8, s0, s2
803:              bgeu         t2, s1, 809f
                  bgeu         a4, t4, 820f
                  bgeu         s9, ra, 807f
                  sltiu        t2, s3, -838
807:              add          s8, s8, s10
                  or           t0, t3, t5
809:              sltu         zero, s7, a0
                  bltu         t4, a4, 814f
811:              srl          t1, a7, s5
                  bltu         zero, a1, 817f
                  ori          t5, s8, 1873
814:              slt          a5, s6, zero
                  blt          s5, t5, 823f
                  slti         s6, t6, -1628
817:              sltiu        t3, s5, -527
                  sll          s5, s11, s6
                  bge          t3, sp, 835f
820:              xori         s3, s10, -1105
                  and          s9, s6, t5
                  sra          t3, ra, t5
823:              sll          t2, s9, zero
                  slli         a5, a4, 5
                  xor          a5, t0, s5
                  slli         a0, a3, 30
                  andi         a6, s1, -1900
                  bgeu         s2, s3, 844f
                  slt          gp, ra, sp
                  ori          t1, gp, -245
                  sltiu        t5, s9, -86
                  lui          s3, 322492
                  bgeu         t4, tp, 843f
                  bltu         tp, a1, 846f
835:              auipc        a7, 328108
                  or           s8, a1, a4
                  and          s6, t5, s0
                  la           a7, region_0+738 #start riscv_load_store_rand_instr_stream_0
                  srli         s7, s0, 11
                  andi         s10, tp, 28
                  lb           s8, -7(a7)
                  auipc        s6, 710530
                  auipc        t3, 761215
                  lbu          t3, -15(a7)
                  lh           a5, 12(a7)
                  slli         s3, a4, 3
                  lb           s8, -9(a7)
                  sub          t4, s4, zero
                  sll          s1, a3, t3
                  sb           a2, 4(a7)
                  lb           s0, -3(a7)
                  lhu          zero, -8(a7)
                  slli         s6, ra, 21
                  and          t5, zero, s2
                  sb           s2, -15(a7)
                  lb           s3, 10(a7)
                  sub          a3, a6, s4
                  add          a6, s10, ra
                  lui          t2, 979769
                  xori         a1, s0, -1312
                  sb           t2, 15(a7)
                  add          a1, t0, t2
                  lbu          s9, -10(a7)
                  sb           a6, 3(a7)
                  lb           t0, 9(a7)
                  lb           s5, -5(a7)
                  lbu          s1, 15(a7)
                  sltu         zero, s4, sp
                  auipc        a2, 119059
                  sh           s5, -4(a7)
                  sb           a7, 5(a7)
                  and          sp, a4, a2
                  sh           s2, -4(a7) #end riscv_load_store_rand_instr_stream_0
                  slli         t4, a0, 23
                  slli         s9, zero, 28
                  srai         t4, a1, 0
                  sltu         t1, tp, t0
                  andi         s7, t0, -270
843:              blt          t5, s1, 853f
844:              lui          s10, 206614
                  sub          s1, s6, s0
846:              slt          s7, s11, s3
                  sll          gp, s4, t4
                  xori         t5, a0, -1665
                  slti         s9, t3, -1102
                  bge          a6, gp, 854f
                  sll          t5, ra, a4
                  sub          a7, a7, a5
853:              sll          a0, t6, s1
854:              xor          s10, t4, s1
                  slt          t0, tp, a7
                  lui          t0, 981942
                  bgeu         s7, a3, 860f
                  add          s6, s2, t6
                  slli         gp, s10, 0
860:              xori         a2, a7, -399
                  bltu         t2, s5, 871f
                  bne          zero, s6, 881f
                  xori         zero, a1, 1792
                  blt          s7, sp, 869f
                  slli         t4, t6, 23
                  bltu         ra, s3, 877f
                  sub          t3, t5, tp
                  srai         gp, s3, 27
869:              add          s3, s7, t5
                  sltu         sp, s0, a2
871:              bgeu         s5, s8, 890f
                  sltiu        tp, s4, -1939
                  bne          zero, s6, 885f
                  xori         s3, zero, 1176
                  xor          s2, s11, zero
                  bgeu         t0, a2, 889f
877:              nop
                  ori          zero, t0, 924
                  bltu         a4, t0, 883f
                  xor          t3, a5, t3
881:              andi         t2, tp, -533
                  bge          tp, s7, 902f
883:              bne          a7, a5, 895f
                  andi         a2, zero, -837
885:              beq          s1, s1, 895f
                  sltu         s10, s11, sp
                  xori         a0, s4, -992
                  sll          sp, t4, a3
889:              sub          a1, s2, ra
890:              sltiu        s3, a0, 108
                  sub          s9, ra, t1
                  blt          s5, s3, 910f
                  nop
                  srli         a0, s1, 1
895:              sltu         t5, s11, a1
                  beq          t4, t5, 914f
                  sltu         sp, a6, s6
                  lui          s1, 141282
                  xori         t4, tp, -375
                  sltiu        s1, t0, 34
                  or           t5, tp, a1
902:              sub          gp, s5, t0
                  add          a0, a0, t0
                  xor          s9, t1, a7
                  addi         t0, zero, -817
                  ori          s6, gp, 260
                  srai         t3, t3, 27
                  sub          tp, s7, s9
                  blt          ra, s2, 913f
910:              sra          t4, t1, s5
                  auipc        tp, 996439
                  beq          ra, sp, 924f
913:              addi         s2, t4, 1013
914:              sltiu        t3, tp, -880
                  sub          s2, s5, a5
                  beq          s5, s8, 928f
                  srl          zero, s0, a0
                  srai         ra, t3, 12
                  beq          s3, gp, 932f
                  or           tp, s10, a1
                  bne          s11, a7, 931f
                  srli         s10, a5, 18
                  slti         a6, s1, 1425
924:              lui          s1, 492083
                  sra          a2, t1, s1
                  addi         s6, a3, 538
                  slti         a5, s9, -748
928:              nop
                  sll          tp, a3, s7
                  andi         t0, t2, 1465
931:              slli         s9, s10, 0
932:              srl          s5, t4, s0
                  addi         s10, t2, 481
                  ori          a3, s6, -1397
                  sll          t5, tp, s11
                  and          s6, s2, s0
                  lui          sp, 720239
                  srli         s11, s4, 21
                  srai         s10, s7, 16
                  sra          t1, t4, zero
                  addi         a6, s6, 347
                  slti         a6, zero, -1680
                  lui          s10, 511953
                  srli         sp, a6, 25
                  nop
                  slt          s6, t1, s1
                  xori         t4, t1, -156
                  bltu         s4, s5, 967f
                  bgeu         a3, s6, 960f
                  srl          a2, a3, s1
                  nop
                  xori         s10, a4, 720
                  slt          s9, s11, s0
                  sra          t5, t4, a7
                  auipc        ra, 914676
                  add          s8, t3, ra
                  andi         zero, a3, 1583
                  lui          s2, 432676
                  xori         s0, a2, -1458
960:              bgeu         a7, tp, 966f
                  blt          ra, s2, 980f
                  andi         a1, s11, -1835
                  bne          ra, a4, 983f
                  and          t3, a4, t6
                  lui          a2, 389703
966:              sra          s3, s5, s8
967:              beq          s11, t5, 971f
                  sra          t2, a7, s2
                  slli         sp, t1, 25
                  sltu         a7, tp, t1
971:              slti         s8, t6, 1949
                  add          t1, a3, t1
                  ori          s8, s3, -166
                  bgeu         t5, tp, 988f
                  sra          t2, s5, t4
                  add          s5, t0, s10
                  slt          s1, a6, t1
                  bge          a5, a3, 983f
                  beq          zero, s4, 995f
980:              and          a3, s4, a6
                  sll          t3, s9, s7
                  sltu         t5, zero, tp
983:              srli         ra, tp, 25
                  xor          sp, zero, gp
                  slti         a6, s11, -281
                  blt          sp, t2, 996f
                  bgeu         t1, s10, 1003f
988:              bgeu         t3, ra, 996f
                  bltu         s1, s10, 1001f
                  sltu         ra, s5, a3
                  auipc        s10, 1024491
                  auipc        t3, 290671
                  srai         t3, a2, 28
                  andi         s0, t6, -434
995:              srli         s7, t1, 31
996:              beq          t5, a3, 998f
                  beq          tp, t2, 1007f
998:              beq          sp, s6, 1016f
                  or           ra, s10, t4
                  sub          a2, s7, zero
1001:             nop
                  slli         s7, sp, 31
1003:             sll          a2, s5, tp
                  slt          s7, s6, s1
                  xori         s6, t6, 1733
                  slt          ra, s10, tp
1007:             lui          t5, 186022
                  bgeu         a0, a1, 1026f
                  bne          s5, a6, 1025f
                  nop
                  srli         s1, s2, 12
                  slt          a3, s6, s3
                  bgeu         s9, t4, 1021f
                  srli         s1, a3, 1
                  sltiu        s11, gp, -1347
1016:             bne          t2, a7, 1028f
                  slti         s6, t5, 383
                  bne          a0, s3, 1028f
                  sub          a6, tp, s10
                  or           s6, t6, s2
1021:             sub          s3, s10, a4
                  slti         s2, t6, 301
                  bltu         a7, a5, 1028f
                  sltu         s10, s1, a3
1025:             sltu         a1, t1, s8
1026:             xori         ra, s3, -916
                  xori         t1, s4, -242
1028:             bne          t4, s9, 1031f
                  lui          t4, 400240
                  nop
1031:             sra          a2, s11, a2
                  sra          gp, t5, a5
                  nop
                  slt          s8, s8, s9
                  auipc        sp, 213506
                  bltu         t0, t0, 1040f
                  sltu         gp, s8, t6
                  lui          t4, 198297
                  bne          s9, a6, 1059f
1040:             srl          t3, s1, a6
                  xori         s1, t5, -983
                  bgeu         a6, s2, 1062f
                  srli         s8, a6, 16
                  nop
                  sra          tp, s2, s2
                  xori         a3, s10, -1686
                  auipc        s5, 840001
                  and          tp, gp, a7
                  slt          s0, tp, a2
                  beq          a3, sp, 1058f
                  xori         t2, t3, -936
                  bltu         s9, tp, 1068f
                  srl          s6, tp, s0
                  lui          s2, 629992
                  bgeu         s2, t5, 1059f
                  srli         gp, s2, 3
                  and          s6, a5, t5
1058:             or           sp, a5, a4
1059:             bltu         t1, a5, 1065f
                  and          s8, a4, sp
                  ori          gp, s8, -164
1062:             sll          t5, a2, s2
                  slli         ra, t2, 17
                  bgeu         a6, t3, 1076f
1065:             beq          t3, a6, 1069f
                  srai         t5, a4, 4
                  bltu         zero, s5, 1079f
1068:             or           s5, a5, t6
1069:             srli         a7, a1, 9
                  bne          t5, t4, 1089f
                  bgeu         t0, a3, 1091f
                  xor          s7, s9, t6
                  andi         s2, a7, 633
                  bne          a1, s8, 1090f
                  slli         a1, t4, 20
1076:             bge          t5, s9, 1086f
                  addi         t3, t4, 598
                  nop
1079:             beq          s6, s11, 1092f
                  nop
                  andi         s8, s4, -1910
                  beq          t4, s2, 1094f
                  lui          t4, 406938
                  nop
                  slli         s1, a1, 3
1086:             srl          s11, t6, s3
                  lui          s1, 626236
                  and          a2, s5, s2
1089:             srai         t0, s4, 8
1090:             sll          t0, t5, t3
1091:             slti         s10, t3, 1436
1092:             sub          gp, a4, a3
                  and          zero, t0, s5
1094:             sltiu        gp, gp, -820
                  slti         a5, a0, -1444
                  lui          a2, 951348
                  blt          t0, s4, 1107f
                  srai         s6, a4, 11
                  nop
                  sub          s11, t2, zero
                  addi         ra, t5, 1899
                  ori          zero, a1, 342
                  slt          s0, t1, t2
                  sub          t5, a6, s4
                  sub          a7, a4, s8
                  sll          ra, t3, t2
1107:             beq          s10, sp, 1110f
                  bgeu         s5, a7, 1126f
                  sub          a2, s4, s8
1110:             ori          tp, a7, -740
                  srai         sp, s2, 8
                  srai         s11, s2, 18
                  bge          ra, t0, 1123f
                  and          s10, a6, s2
                  auipc        t1, 600899
                  srl          s2, t1, sp
                  sltu         sp, s2, s7
                  srl          s10, t5, zero
                  srli         ra, a3, 25
                  addi         s7, s6, 486
                  bge          t4, a6, 1133f
                  sltiu        a3, s4, 611
1123:             bgeu         s5, a6, 1142f
                  andi         sp, zero, 658
                  andi         s0, tp, -1262
1126:             andi         ra, a3, -1805
                  slti         sp, s6, 739
                  auipc        a7, 976404
                  auipc        a3, 800447
                  xori         a0, s11, -939
                  srl          t3, t6, ra
                  lui          a2, 522867
1133:             and          s6, s7, s8
                  slt          s0, zero, a0
                  srai         a2, a7, 22
                  bge          s8, tp, 1138f
                  bgeu         s6, t2, 1151f
1138:             slt          t2, s1, zero
                  sltu         s11, a6, s11
                  la           sp, region_0+320 #start riscv_load_store_rand_instr_stream_6
                  sb           a0, -1(sp)
                  sra          s8, t0, tp
                  sb           s10, -9(sp)
                  lbu          t4, -1(sp)
                  lh           a3, -2(sp)
                  lhu          a5, 2(sp)
                  addi         s1, a1, 1329
                  lbu          t1, -14(sp)
                  lhu          a5, 10(sp)
                  srai         a1, a5, 26
                  lbu          a0, 11(sp)
                  lb           s6, 11(sp)
                  lbu          a2, 15(sp)
                  sb           t0, 8(sp)
                  slt          s5, t1, t1
                  lbu          t1, 3(sp)
                  sra          s0, t4, gp
                  slli         t3, s2, 23
                  slli         t4, s11, 1
                  add          s3, t6, a6
                  sltiu        t2, s11, 231
                  lh           s2, -14(sp)
                  xor          s8, s0, zero
                  nop
                  slt          s9, t5, s4
                  or           s2, t5, zero
                  srli         s8, a2, 7
                  xori         ra, s9, 1659
                  sra          a2, s2, s7
                  or           s0, t3, t6
                  lhu          s6, -2(sp)
                  and          zero, t0, t3
                  lb           gp, -14(sp) #end riscv_load_store_rand_instr_stream_6
                  sra          a1, t3, a0
                  srl          s3, s2, t5
1142:             add          s6, t5, t5
                  sltu         ra, a2, s5
                  and          s3, t0, t4
                  auipc        sp, 675357
                  or           s11, t1, t1
                  xor          a0, t2, s11
                  slli         a7, a0, 15
                  sltu         t4, s9, a0
                  bgeu         a3, t4, 1155f
1151:             auipc        t3, 540760
                  slti         gp, s7, 2047
                  bltu         a2, s4, 1158f
                  xori         s1, t1, 325
1155:             andi         t1, s1, -1272
                  slt          s2, s8, t0
                  ori          s6, t0, 791
1158:             bgeu         s9, a5, 1174f
                  and          t3, s3, a4
                  xor          ra, s0, s11
                  and          s10, zero, t2
                  slli         zero, t6, 14
                  bgeu         s5, t1, 1173f
                  ori          sp, gp, 1687
                  slti         s7, s8, -485
                  srl          ra, a0, a2
                  srl          s11, s4, a5
                  or           t4, a0, t4
                  sltu         s8, sp, s6
                  bltu         a2, s11, 1174f
                  sltu         s3, s5, t0
                  sltiu        s3, s2, -57
1173:             add          t5, s3, s5
1174:             srl          a5, s9, s1
                  addi         t4, s6, 519
                  addi         s5, s11, 1668
                  slt          zero, tp, s0
                  xor          a6, a5, a7
                  bltu         s10, a4, 1187f
                  slli         t4, s1, 24
                  bltu         sp, ra, 1192f
                  xori         t4, a3, -2017
                  sltu         ra, t3, s10
                  or           t5, a1, a1
                  add          s0, a7, s4
                  ori          s8, s8, -104
1187:             slli         s9, s11, 18
                  sra          s3, gp, s2
                  xor          sp, t1, s4
                  sll          s1, t2, t4
                  xori         t4, tp, -970
1192:             blt          sp, s10, 1210f
                  slt          a2, t3, s1
                  slli         t2, a3, 3
                  auipc        ra, 118375
                  sub          a7, s9, s8
                  blt          s1, t6, 1213f
                  srai         s0, s3, 21
                  addi         s5, s2, 1742
                  srl          t2, a6, tp
                  sltiu        t1, s10, 344
                  bgeu         tp, a0, 1220f
                  add          s8, tp, ra
                  beq          zero, s6, 1216f
                  srl          s0, t5, s6
                  xor          ra, s4, s4
                  sltiu        a5, t6, 806
                  ori          s10, a0, -354
                  addi         s10, t0, -1655
1210:             ori          a5, a6, 1796
                  addi         t1, t3, 1431
                  add          t1, t1, a6
1213:             sll          sp, a5, s2
                  and          t1, s9, a3
                  xori         sp, s2, -1321
1216:             srl          a7, sp, s6
                  bltu         t4, zero, 1236f
                  srai         a3, t1, 10
                  beq          s4, t2, 1231f
1220:             sll          s7, a1, s8
                  srl          s8, t4, s11
                  sltiu        t0, s3, -934
                  sub          a3, s8, t1
                  addi         s1, t0, 1625
                  bltu         s10, t5, 1233f
                  addi         a7, a0, 43
                  slli         t4, s8, 26
                  andi         a7, t2, 498
                  la           s5, region_1+1807 #start riscv_load_store_rand_instr_stream_4
                  and          ra, s1, ra
                  lhu          tp, -129(s5)
                  ori          t2, t4, 712
                  slt          a3, t3, ra
                  sb           t0, -42(s5)
                  nop
                  srl          s1, s6, s2
                  lb           t3, 47(s5)
                  slli         s2, a0, 2
                  ori          a3, s9, 1000
                  sb           s1, -53(s5)
                  lb           s9, 24(s5)
                  lbu          a0, 15(s5)
                  xori         t4, s5, 835
                  auipc        s8, 542977
                  lbu          t5, 74(s5)
                  srai         t1, t2, 10
                  sw           sp, -147(s5)
                  lb           s7, -218(s5)
                  nop
                  lb           s7, -213(s5)
                  lbu          a7, -74(s5)
                  lb           tp, 121(s5)
                  lb           zero, -99(s5)
                  sb           a6, -56(s5)
                  sll          a0, t6, a1
                  sltiu        s10, s1, 654
                  sra          a7, t4, s4
                  and          s6, a3, ra
                  lhu          a1, -9(s5)
                  sb           s7, 107(s5)
                  lb           s1, -240(s5)
                  andi         a5, tp, 791
                  addi         sp, ra, 1464
                  slt          ra, ra, t2
                  sll          s8, a3, a0
                  xor          s0, zero, a6
                  sltiu        sp, a1, 243
                  slli         sp, t6, 22
                  andi         t0, a6, 1376
                  sb           s10, -50(s5) #end riscv_load_store_rand_instr_stream_4
                  slt          s9, sp, t0
                  addi         t4, a3, 254
1231:             sltu         a7, a1, a4
                  blt          a4, s10, 1236f
1233:             beq          s7, tp, 1249f
                  xor          a3, sp, tp
                  sltiu        a1, a7, -19
1236:             xori         s1, s7, 1210
                  xor          s1, a5, a7
                  add          s0, s11, s10
                  srai         s10, ra, 6
                  xor          s0, zero, t6
                  andi         s6, a0, 228
                  xori         a6, s7, 488
                  bge          s0, t6, 1247f
                  sltu         s8, a7, tp
                  andi         gp, t1, -405
                  bne          a1, t2, 1249f
1247:             slt          s7, s6, s10
                  lui          a7, 983981
1249:             sra          t3, s10, t5
                  nop
                  blt          s6, s2, 1262f
                  nop
                  slti         gp, a6, -1328
                  bne          sp, t6, 1260f
                  sltiu        ra, s10, -1085
                  nop
                  lui          s10, 1030769
                  sra          s6, s6, a7
                  srli         t4, t5, 19
1260:             ori          s5, s3, -1218
                  bge          zero, s9, 1273f
1262:             blt          s8, s5, 1272f
                  blt          a6, a5, 1271f
                  blt          a7, a3, 1266f
                  addi         s0, a5, 1434
1266:             sra          s2, s0, t0
                  bne          sp, s7, 1287f
                  sltu         t0, s2, s5
                  sltu         s11, t4, t1
                  sll          t4, gp, sp
1271:             xori         t3, t0, 399
1272:             bge          a6, t6, 1284f
1273:             add          s2, sp, ra
                  sub          t5, sp, t5
                  srli         sp, a3, 2
                  addi         t0, gp, -1627
                  addi         t1, s11, 1841
                  sub          a2, t3, t6
                  sll          a6, t5, t6
                  srl          s10, t6, t0
                  sltu         s1, t2, a2
                  nop
                  auipc        tp, 858515
1284:             sub          s3, a2, t2
                  srli         s2, a4, 0
                  ori          s8, tp, -322
1287:             sltu         a6, s5, s5
                  slt          s0, a6, a1
                  sltiu        s8, a5, -126
                  sltu         s0, a7, ra
                  sltu         a6, t4, s5
                  lui          gp, 816256
                  blt          s8, a4, 1298f
                  slti         s8, s5, 53
                  sltiu        a1, a4, -1075
                  srai         s3, t5, 29
                  bltu         ra, s11, 1315f
1298:             sltiu        gp, a0, 368
                  slti         s11, t6, -1337
                  addi         s0, s2, -603
                  bltu         s9, s9, 1321f
                  sltu         ra, a6, a4
                  add          t4, tp, tp
                  sltiu        s7, s2, -556
                  sltu         s1, a5, tp
                  bltu         a2, t3, 1316f
                  bltu         s5, a0, 1317f
                  sltu         s9, tp, gp
                  xor          sp, s4, s3
                  srli         s0, t6, 5
                  or           a7, t2, s5
                  add          s11, zero, t0
                  srli         s8, a6, 31
                  add          a5, t5, t5
1315:             bltu         t1, ra, 1328f
1316:             xor          s0, t4, sp
1317:             sub          s3, gp, t4
                  srli         a3, t6, 5
                  bgeu         a1, t2, 1323f
                  add          t2, sp, sp
1321:             bgeu         a7, s6, 1331f
                  sub          a7, s9, s3
1323:             ori          s0, a0, -668
                  sltiu        a6, s5, 435
                  sltiu        a6, a5, -159
                  sra          t0, s8, t6
                  and          s8, t0, s3
1328:             xor          tp, gp, gp
                  srai         t3, tp, 23
                  ori          s8, a4, 1971
1331:             sra          s6, sp, ra
                  sub          a3, zero, s4
                  sub          s5, a1, gp
                  bltu         tp, s8, 1350f
                  and          s11, zero, t6
                  and          s7, sp, a2
                  ori          t4, a0, -1902
                  andi         t3, s10, -1226
                  beq          s10, t5, 1358f
                  and          sp, s10, t5
                  sltu         t5, a4, a6
                  auipc        s2, 404168
                  or           a2, s7, s6
                  slt          gp, s4, t2
                  bne          s8, s6, 1350f
                  add          a6, a1, s2
                  add          t1, t0, s11
                  bge          ra, sp, 1362f
                  srai         s7, s8, 24
1350:             bge          t5, zero, 1355f
                  xori         t5, a6, -1813
                  sra          s9, a6, s3
                  bne          sp, s11, 1365f
                  bne          s4, s3, 1359f
1355:             bgeu         s0, t4, 1361f
                  srl          t0, t6, tp
                  add          gp, sp, s8
1358:             xor          sp, s4, gp
1359:             blt          s11, t6, 1379f
                  bgeu         a6, s7, 1364f
1361:             srai         t3, s7, 30
1362:             lui          a6, 75091
                  and          a2, t0, t2
1364:             nop
1365:             lui          s8, 346216
                  sltu         t1, t3, s5
                  xor          a6, s7, s6
                  sltu         s7, a5, s2
                  xori         s3, t2, -1808
                  auipc        a0, 376479
                  bne          s3, t2, 1379f
                  srli         s10, a3, 27
                  nop
                  bne          t1, s1, 1378f
                  slti         tp, t4, 840
                  blt          s10, s6, 1388f
                  sltu         s2, a3, t1
1378:             srai         s0, a2, 27
1379:             nop
                  or           s11, s5, s4
                  bne          a3, sp, 1391f
                  or           a3, s2, s6
                  lui          s8, 358966
                  srli         sp, s7, 17
                  xori         t3, s8, 1216
                  srai         gp, s2, 4
                  bltu         s2, a0, 1390f
1388:             beq          t5, a6, 1400f
                  blt          tp, t2, 1391f
1390:             slt          t2, s10, s5
1391:             sltiu        a7, t0, 748
                  andi         a3, t6, -938
                  slti         a5, a4, 595
                  bne          s4, s11, 1404f
                  srai         zero, t5, 30
                  srl          gp, s8, s1
                  bne          a2, a1, 1413f
                  beq          t1, t3, 1417f
                  blt          s3, a2, 1407f
1400:             bge          a1, a0, 1419f
                  srl          t3, s11, s10
                  sub          t3, a6, s8
                  sra          s0, zero, s5
1404:             bgeu         a3, a6, 1418f
                  auipc        a5, 1008320
                  auipc        s10, 702724
1407:             srai         gp, sp, 21
                  srai         a6, gp, 16
                  andi         s7, t1, -210
                  blt          t1, s0, 1430f
                  bltu         t0, t4, 1422f
                  andi         a5, s5, 1413
1413:             lui          ra, 1036460
                  lui          t4, 661855
                  bltu         a2, a2, 1433f
                  xor          gp, zero, t4
1417:             xori         s11, s2, 820
1418:             or           a0, s10, t3
1419:             nop
                  sub          s11, a1, a7
                  srl          s5, t6, tp
1422:             auipc        s7, 307383
                  sltiu        a7, t2, -1213
                  slli         tp, s8, 5
                  sltiu        a0, s7, -1004
                  bltu         s6, s10, 1442f
                  sll          a6, a0, a6
                  srai         s3, t0, 2
                  sltu         t2, t1, t1
1430:             srl          s6, a3, sp
                  slli         s2, a2, 19
                  sll          t4, t2, tp
1433:             addi         s1, s8, -619
                  xor          s10, a7, t6
                  beq          t6, s1, 1451f
                  srli         zero, s9, 11
                  lui          s0, 639132
                  srli         zero, a2, 26
                  srai         s0, t4, 17
                  slt          t4, s3, s11
                  xori         s8, a6, 991
1442:             bge          sp, a1, 1454f
                  lui          t1, 229726
                  bltu         t0, s3, 1448f
                  andi         s0, s0, -933
                  sltiu        ra, a4, -1147
                  add          s6, s0, s11
1448:             blt          gp, tp, 1466f
                  add          a7, s6, t2
                  sra          s2, a2, s7
1451:             xor          gp, t4, a6
                  and          s1, a5, t5
                  or           tp, s0, t3
1454:             bne          t2, s9, 1464f
                  lui          s11, 366701
                  auipc        a6, 326139
                  bltu         t0, a2, 1467f
                  ori          ra, t1, -1307
                  or           s1, t0, s6
                  slli         a5, s6, 9
                  bge          s6, gp, 1474f
                  addi         s7, a5, -110
                  xor          a7, s3, a1
1464:             sra          s1, a2, a0
                  nop
1466:             add          a3, s0, s7
1467:             and          s1, tp, a0
                  xor          s2, s1, t0
                  sub          s11, s10, gp
                  auipc        s7, 896352
                  xor          s10, s6, t6
                  or           a2, t5, s0
                  addi         zero, s4, 1190
1474:             sltiu        tp, s10, -153
                  sltiu        a0, s7, 14
                  srli         t3, ra, 14
                  bltu         a0, t1, 1479f
                  bltu         a2, t0, 1494f
1479:             beq          a0, t5, 1489f
                  slli         s8, t4, 16
                  bltu         s10, t6, 1497f
                  add          s10, t6, s4
                  or           t0, s9, s9
                  srl          s6, a4, s6
                  add          ra, t0, t5
                  auipc        gp, 430374
                  sra          s8, s6, s10
                  xor          s10, gp, a7
1489:             sltu         sp, s8, s1
                  srai         gp, t4, 30
                  srli         sp, s4, 23
                  sll          s10, s9, t1
                  sub          s9, a0, s10
1494:             slti         s9, a1, -115
                  bge          s5, a1, 1500f
                  blt          a5, s1, 1514f
1497:             bgeu         t6, s9, 1509f
                  sltiu        s5, s6, 1843
                  or           a3, a4, a6
1500:             slli         s1, a2, 17
                  bne          a0, s0, 1520f
                  bne          s9, s9, 1522f
                  xori         t0, a0, 891
                  slli         s10, a7, 1
                  slti         s9, a1, 918
                  srai         s5, t5, 1
                  sltu         t1, t4, s4
                  sub          a2, s6, s2
1509:             bltu         s10, t4, 1515f
                  xor          a5, a6, s4
                  slti         s11, s3, 1436
                  auipc        s7, 151102
                  beq          a7, zero, 1518f
1514:             srai         s9, a1, 6
1515:             lui          s3, 804145
                  bgeu         t2, a2, 1526f
                  lui          ra, 19842
1518:             bgeu         t6, a4, 1522f
                  beq          s5, t6, 1530f
1520:             add          t0, ra, s5
                  slti         a3, s4, -982
1522:             sltiu        s10, tp, -356
                  blt          s7, t1, 1541f
                  beq          s10, s3, 1534f
                  blt          zero, s11, 1538f
1526:             srl          s10, t0, s11
                  srli         ra, zero, 24
                  bltu         s10, a0, 1542f
                  sltiu        sp, s10, 1193
1530:             sltiu        s3, zero, 147
                  or           zero, s6, s5
                  add          t3, s8, ra
                  slti         a1, s4, 1647
1534:             sltiu        s7, s5, 29
                  slt          a7, s7, a5
                  slti         a1, t3, 61
                  and          a7, t2, s7
1538:             bne          t0, t3, 1546f
                  sra          zero, a0, t5
                  nop
1541:             xor          t4, s8, s9
1542:             addi         s1, s0, -1211
                  addi         s0, tp, -952
                  or           sp, zero, a2
                  lui          s0, 729470
1546:             slli         t1, sp, 29
                  blt          t3, s8, 1559f
                  bge          s1, t5, 1564f
                  or           s8, s4, t1
                  auipc        a6, 14700
                  sub          s10, s0, a1
                  beq          gp, s9, 1560f
                  bgeu         t2, a4, 1563f
                  bgeu         a2, a2, 1557f
                  lui          s8, 720095
                  add          s2, gp, sp
1557:             xori         t3, gp, 510
                  slt          s5, a3, a7
1559:             ori          s11, a0, -412
1560:             auipc        a0, 232110
                  sltiu        s10, a1, -735
                  beq          gp, s5, 1574f
1563:             sltiu        a1, s3, 846
1564:             srli         a6, s6, 22
                  auipc        s7, 590683
                  sltu         s6, a7, s6
                  sra          s9, s11, s7
                  slt          s2, t6, s10
                  bge          tp, t1, 1588f
                  andi         t2, s5, 1369
                  andi         t1, tp, 1469
                  ori          t3, s4, -1848
                  blt          t3, tp, 1585f
1574:             bne          a1, a4, 1578f
                  slti         sp, t4, 693
                  xor          s9, s5, a0
                  slli         s7, a7, 13
1578:             lui          s7, 902595
                  and          gp, a0, s9
                  bgeu         a5, t1, 1600f
                  auipc        tp, 49437
                  bgeu         tp, gp, 1586f
                  srl          s8, sp, s1
                  and          a3, t0, s8
1585:             andi         a1, s6, -1399
1586:             lui          s1, 636574
                  xor          t5, t5, t3
1588:             and          s9, zero, a6
                  and          s10, s4, s7
                  bltu         s0, t0, 1609f
                  and          a3, s3, a1
                  nop
                  bgeu         gp, tp, 1610f
                  andi         s10, s2, -1535
                  andi         a0, t0, -619
                  sra          sp, gp, s0
                  sub          zero, zero, t5
                  bgeu         s11, s6, 1610f
                  slli         a1, s1, 21
1600:             lui          s8, 246838
                  srli         s1, a5, 11
                  nop
                  nop
                  sra          gp, a2, a0
                  and          s1, a7, t4
                  slt          t0, t1, a6
                  or           s5, gp, a1
                  blt          s3, t3, 1610f
1609:             ori          a1, a5, -1892
1610:             auipc        s10, 326771
                  xor          sp, a6, t3
                  lw           t0, 4(t6)
                  slli         s9, s8, 31
                  ori          t1, s2, 594
                  slli         s8, a1, 12
                  addi         t6, t6, 52
                  auipc        a2, 536065
                  add          a7, s2, t5
                  lui          s8, 199114
2146:             addi x15, x5, 0
2146:             jalr x15, x15, 0
sub_10:           slti         a6, a3, -832
                  ori          t3, s6, 172
                  andi         s6, sp, -1792
                  auipc        t1, 200521
                  bltu         a4, a5, sub_10_stack_p
                  xor          s2, s5, zero
sub_10_stack_p:   addi         t6, t6, -40
                  sw           t0, 4(t6)
                  ori          s2, s7, -1183
                  addi         s8, zero, -410
                  sll          s10, t5, zero
                  sltu         tp, tp, s11
                  auipc        s7, 885289
                  beq          a1, s5, 4f
                  slt          s5, s5, a3
                  lui          s9, 845193
                  auipc        s11, 61939
4:                srl          t0, t6, sp
                  slt          s6, s11, t5
                  bltu         a7, s4, 10f
                  srl          tp, a1, s0
                  addi         t2, a1, 856
                  xori         s7, sp, -1624
10:               xor          t4, ra, a6
                  bge          s8, s11, 12f
12:               xor          s8, a0, gp
                  sra          t4, t5, s9
                  lw           t0, 4(t6)
                  slti         t3, a6, 1068
                  addi         t6, t6, 40
                  add          t1, s0, a0
                  srl          a3, s8, t1
                  sub          s10, sp, a2
                  sll          s0, s0, tp
34:               addi x8, x5, 1
34:               jalr x8, x8, 0
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
.word 0x0650a2c8, 0x77bb684a, 0xd20104ae, 0xa3eff17f, 0x89b12e0d, 0x92a187b8, 0x1f96bd09, 0x7632aad6
.word 0xd567d7a0, 0xc175332d, 0x5f0c3c6a, 0x10f56773, 0x01850806, 0x638ee73f, 0x85ce4d10, 0xf8679d5a
.word 0xe4847a68, 0x1b386495, 0x9773f6f5, 0xc54c651d, 0x49fd3dad, 0x2e38fe81, 0x2394fbb3, 0x0a0e9be6
.word 0x9c93ffc2, 0x38054840, 0x80385c6c, 0xdf5e1f97, 0x5d7b0422, 0xea017995, 0x52b7efe1, 0x2c991f2d
.word 0x70ea8501, 0x25640125, 0xdd788611, 0x4961df09, 0x679c2bb3, 0x8b3490a4, 0xcb314171, 0xf45c6188
.word 0xc8638767, 0x46b800ff, 0x0373bb61, 0x1fb74fcd, 0x726deb48, 0x38311ea7, 0x76a0d9c1, 0x841d7dfb
.word 0x273f556d, 0xc2b46090, 0x53159ab5, 0x77dd05f7, 0x03243f93, 0xc36f8ff5, 0xa484b59b, 0xbf01e342
.word 0x91df6c4d, 0x7b0db836, 0xb6d5f98e, 0x093270bb, 0xcf6ed52e, 0xe4976235, 0x33dfa8aa, 0x798dd1b0
.word 0x488c7578, 0xf77d86dc, 0x7c4bec90, 0xc854baf1, 0x73ea2b4b, 0xea78bf22, 0xaef19847, 0x3b6612d8
.word 0x748d2287, 0x21b6c9b1, 0xea86dd59, 0x894b9d72, 0xba11a9c8, 0x0b27f4ae, 0xec0f24cf, 0xff6904e8
.word 0xf519e189, 0x47edbc58, 0xa1252854, 0x5dd9f199, 0x1660e899, 0xe646f488, 0x4619c75e, 0x7af44445
.word 0x3264c647, 0xdc4309ea, 0xad504138, 0x6faadf59, 0xc32d2488, 0x5bfaca56, 0xe358ca7f, 0x8212234d
.word 0x243ddaef, 0xc1f4dc12, 0x4e62005f, 0x8117bff1, 0xa7e1f1b5, 0xee1dee0f, 0x0c20687c, 0x86427a1e
.word 0x3fdf3cb5, 0xf449e5ff, 0x15843a65, 0x23817ef4, 0x6f801a1e, 0x452db8de, 0x045e50ca, 0xbd55381d
.word 0xa747b0bc, 0x5c5b3571, 0xc2701a21, 0x60eed2c6, 0x6067fdf6, 0xe1167b28, 0x11a0e51d, 0x23758ac5
.word 0x3d3bd7c3, 0x94e30666, 0x997935d5, 0xcdf1b7a1, 0x89d6fe60, 0x0351fc89, 0xbb6f51f9, 0x73802dfd
.word 0xf36b23d5, 0xfcf83628, 0x83c9edfb, 0x258c0817, 0x6e635f94, 0x3bd23a9a, 0xd901083e, 0xbef96c6f
.word 0xfd3f8ef3, 0xd0bba3fd, 0x1db69279, 0xda17a418, 0xf68aec05, 0xc8dc3041, 0xd3177960, 0x96e594ee
.word 0xef338d67, 0x0f320ec7, 0x9a4ab5d9, 0x63005674, 0xcad74158, 0xccba37e4, 0x2001ac92, 0x19add9e4
.word 0x8e9226fb, 0xb19f26bc, 0xfde02320, 0x30c97c34, 0x36e215d5, 0x5813d8e2, 0x09b53331, 0xb2e79136
.word 0x151cb334, 0xef48a7d5, 0x0c187814, 0x4b0e37eb, 0x9f633463, 0xa67e5e24, 0xc150058c, 0x9f84d9b6
.word 0x3d8beab4, 0x4f4cc41b, 0xb0f8c0dc, 0xe853aaec, 0xde9cdcce, 0x2e5b5336, 0xaaae0175, 0xfe6db66d
.word 0xd40bc423, 0xd68e9a23, 0xb578cfa0, 0x95873dfa, 0x13467fae, 0xbcb06ef8, 0x62e6230d, 0x9530c169
.word 0x2afb4a36, 0xbfa2b731, 0x1fa95d5c, 0xbecf59fd, 0x2a4b9fb6, 0x4a7f23f7, 0x40b91fcd, 0x6d25cc6a
.word 0x502ef1dd, 0x83af609f, 0x91d5ddf7, 0x682f1e27, 0xc443ed6c, 0xe56315e5, 0xe045e07d, 0x8133d351
.word 0xe2185d60, 0x529c1d07, 0xd8830b5c, 0xd11e5ca0, 0x90914b78, 0x5fc3c6d4, 0xb60c1927, 0x9b3b3f7c
.word 0xa492c5e8, 0x1df9821e, 0x83ef126d, 0x7d874bcb, 0x21a309d3, 0xbec287ed, 0x0cf56808, 0x1877325e
.word 0xe9995aa4, 0x321d4c87, 0x2b19ea2a, 0xb76ff54f, 0x67c1ac95, 0xc85150f2, 0xdf5f2d53, 0x2b895815
.word 0xa9b80bc0, 0xf6c3f73b, 0x1a370b30, 0xa8f37f0c, 0x274feab1, 0x67d419b9, 0xf759d823, 0x41de3a00
.word 0x67e0eb1a, 0x67d4db22, 0x93eb319c, 0xc2e0c00f, 0x1dc46806, 0xf6781851, 0x12cb4706, 0x20934d7a
.word 0xcd16a67e, 0x7e9584fc, 0xe291fc56, 0x81174afd, 0xb67b72de, 0x4e0f30ed, 0x871d7398, 0x6b6a50f7
.word 0xba37d2c6, 0x4ea38663, 0x091dc853, 0x94c979f2, 0xbfb7ee55, 0xf167be35, 0xf9e3306f, 0x1241ab59
.word 0x2c30dcc7, 0x3d49b856, 0x35ae6058, 0x8d938444, 0x22329a33, 0xc89ef026, 0xbee0d1a0, 0x3fc26021
.word 0xd1c29b1e, 0x5255face, 0x3961b688, 0x6cdebd19, 0xcd43753d, 0xa2018e2d, 0x78ccf9ee, 0x821f753d
.word 0x1a7b1269, 0xb9f01646, 0x12ce2ba2, 0x3d767317, 0x4e9b2087, 0x2d52f763, 0x5e97cbaf, 0xd782eb0b
.word 0xa2731d06, 0x2bfd0912, 0x276b104a, 0x41ad668c, 0xac353739, 0xe12047b5, 0xc028906d, 0x571d3414
.word 0xcb9876f9, 0x37016203, 0x712a8843, 0x95701250, 0xcf5e6fb4, 0x2d2851f1, 0x492fae88, 0x5f026d46
.word 0xf1ee4a23, 0x3caa0ea0, 0x13368a63, 0x3ced436f, 0x3087018b, 0xa4e02ad4, 0x5b47442c, 0x9e125993
.word 0xa6f4a653, 0x95631fc3, 0x1b872067, 0x4358bc78, 0x3f3f55b0, 0x478e63e5, 0xe63c95b4, 0x162dddd6
.word 0x758b197c, 0x9d5fe995, 0x33ac4586, 0x311a3939, 0x6a1b929c, 0x7d478602, 0xa2f036d1, 0xff011606
.word 0x61f98a2b, 0x73683244, 0xb9506bc1, 0x3443bd85, 0x95b8bde5, 0xfe71d197, 0xc4cf52a9, 0x8b9fdbb8
.word 0x4a74b841, 0x0c6f2f8f, 0x17a8f5f4, 0x2d490227, 0x9b6993ec, 0x8abbffe7, 0x0105dcce, 0x4c3b2698
.word 0x4c0142ad, 0x4be83941, 0xe33eee8d, 0x5d3e43d9, 0x4a47ae76, 0xcf2948c5, 0x7787c683, 0xa7444c4c
.word 0x7146fff6, 0xa275cf18, 0x72a3df3f, 0x67a602d5, 0x1fc93b45, 0xce6c716b, 0x16cd73be, 0x09687b10
.word 0xac8ab86f, 0x0abecdcc, 0x4685dc16, 0xc2ca81ed, 0xaee35416, 0x7a36b7ad, 0x06d980e4, 0x70054da9
.word 0x0e63bc95, 0x799f0051, 0x90e787ac, 0xc5bdd634, 0x8cf559e6, 0x21742021, 0x3da1b702, 0xf853cdd5
.word 0x48373f85, 0x76effa2d, 0xb2b92a00, 0xc668f09a, 0xde1ad8d8, 0xe8e6d630, 0xaee13751, 0x8dc64d9b
.word 0x374e8823, 0xfb97dc30, 0xab96f665, 0x935d5a25, 0x96842cfb, 0xcf9ed1b0, 0x72cbffa3, 0x7f98d622
.word 0xe01b8504, 0x0600a044, 0xe36b7879, 0xcbd3de9a, 0x088629ca, 0x779ec82f, 0x8f080c5c, 0x07722899
.word 0xa54b066b, 0xcedbb6e5, 0x503ddd77, 0xf1420380, 0x8afd4f08, 0xd7266358, 0x70e8c3a2, 0xae0d38cb
.word 0x7a066d1f, 0xac72df94, 0xac343205, 0x84ccd4f5, 0x5ad1729e, 0xc720aeb9, 0xd1b1f979, 0xdf7a70cf
.word 0x98b30b9f, 0x6da9ac10, 0x25c8bdaa, 0x89acab59, 0xc0076e48, 0xfd96168e, 0x2fcd7f2a, 0x634b5b39
.word 0x4537ab6c, 0x67bc2d10, 0xd8a5418e, 0xa85e927f, 0x9cf7d805, 0xe92b66b1, 0x180f4396, 0xc55fe5ae
.word 0xed4f8643, 0x48f75122, 0x2a5adca2, 0x3fea0693, 0x10de474d, 0x4ca2255f, 0xb49b0610, 0x25418247
.word 0x8c625df2, 0xd68f1c13, 0x8ab575fc, 0xb8a9e27f, 0x28f22f86, 0x219d7b77, 0x35e34332, 0xff7c0a4c
.word 0xeb5f5f68, 0x0adecd20, 0xf17ad200, 0xe37fb72a, 0xb1a8e608, 0xeb28f71a, 0xaa596fa1, 0xfce023b2
.word 0x358719b1, 0x447adba9, 0x59eb3548, 0x36327e3d, 0x2aebb984, 0x3566d406, 0x97cd856c, 0xe1b7268e
.word 0xf81de261, 0xbb508558, 0x714da86b, 0x01d480bd, 0x09a29ed5, 0xc6b018b8, 0x221c6c36, 0x001604eb
.word 0x8e344f8b, 0xb2c96765, 0x2c5285bc, 0xfb1ca29b, 0xc2374f88, 0xc37dc2fc, 0xed7ac0cc, 0x8e490c9a
.word 0xa02bc345, 0x6b7c98d5, 0x75a10ed0, 0x5c655a7a, 0x07ea7ae4, 0xa373cbe8, 0x876de388, 0x0057b89a
.word 0xa951475e, 0xa394b80d, 0x81b92734, 0xee359491, 0x21c007f9, 0xf76b632e, 0xb93577d6, 0xdf2983e0
.word 0x6ea6d299, 0x550e6039, 0xb384fe43, 0x7e9b95ae, 0x8ffb715e, 0x898631e6, 0x124f0f42, 0x331f2638
.word 0xd8384105, 0x0e5882ed, 0x8138fe97, 0x36e178fd
.section .region_1,"aw",@progbits;
region_1:
.word 0x29faa337, 0x71b11e35, 0x9abf9462, 0x0aef4eef, 0x912edde2, 0xd02bc26f, 0xd727d2d3, 0x0c0ce719
.word 0x8e2cc33b, 0x7c1598a6, 0x8d77b7d2, 0x1fee5fa0, 0x8a3af79d, 0x5f919971, 0x49e03031, 0x9a08b059
.word 0xd83b0b3c, 0x2947f0cd, 0xda540e47, 0x04a418c5, 0xaef4cdb3, 0x6fd46683, 0x6c23f77f, 0x00fde3f0
.word 0x8a25aa63, 0x27775518, 0x96c6abb9, 0xa58fb2a7, 0x9e8013ca, 0xc8e9ad2c, 0xd80d0e80, 0xf16e8c48
.word 0xaf4778e1, 0x404429d5, 0x52d9d063, 0x8ef63ecf, 0x0f66b0f6, 0x49e595ed, 0xb3c7d45f, 0xf6e81b18
.word 0x649c5639, 0x4c2fecfb, 0xe21f00a5, 0x9cd84618, 0x2a736281, 0x6ac5643c, 0x5db29bf9, 0x4d2da9be
.word 0x014c10e2, 0x50612251, 0x62d5a019, 0x8e7bf77f, 0x91d9364a, 0x7dafc02d, 0x8166ea8b, 0x8f2dabbf
.word 0x440679e8, 0xcb87011d, 0x057e4a4f, 0xbe52dfb2, 0x843f3458, 0x5771a9a7, 0x5b3007af, 0x4ede0946
.word 0x7ef85106, 0x344638d7, 0x4d65990e, 0x3e05d670, 0x3675f517, 0x6fd031cb, 0xf9c81854, 0xe864a5a9
.word 0x5d3b30ab, 0x5cd69c23, 0x0df7439b, 0x3a2bd9e7, 0x0aa36165, 0x93829bb6, 0xcb6d5ecc, 0x55f3c52d
.word 0x65669156, 0x9ec5da01, 0xa608828f, 0x9f9cb8f6, 0xd2829d46, 0x02d111ac, 0x474ed774, 0xa3eb50ca
.word 0x5df38cb7, 0xf51ab132, 0xecae6b82, 0x0e9227bd, 0x9cdc0add, 0x8b20a8d8, 0xecf91d2f, 0xd4bc50e3
.word 0xbff66c78, 0xe94795d3, 0x341fc9d5, 0xb97c279e, 0x02c41427, 0x568fc6eb, 0xab6b6adc, 0xe88d9bb5
.word 0x00e7b50f, 0xae49d150, 0x376a45eb, 0xa155e9a5, 0xa37cb6a2, 0xd1e1c0ac, 0x450a9bd8, 0xc2d373a9
.word 0xe6d3546b, 0x1aa55db6, 0xcf42547a, 0x3c68fc20, 0x255ece23, 0xadc01e8a, 0x9223a560, 0x1a8cbc29
.word 0xc205349f, 0x3fc4e5ed, 0x4c680ab3, 0xacf09c27, 0x12fef71a, 0xbecdf741, 0xb0fc62f1, 0xc0a7625b
.word 0x9aba7d3a, 0x9bd6cc09, 0x85eec265, 0x9cafee86, 0x63e2b143, 0x4d361d43, 0x5e54f1f5, 0xad1c4eb6
.word 0x8157a301, 0x11ebdfb0, 0xc9808692, 0xa0931f66, 0xae1dce9c, 0x076ba9e7, 0x7bd4b38f, 0x7b9d6651
.word 0x4439279a, 0x2f95cf8f, 0xe03ac320, 0x82c34c15, 0x5861dd8a, 0xe5c73497, 0x8b4ee6b5, 0x18b3741b
.word 0xe17f6703, 0x7b8ef0b1, 0x725ec56f, 0x888b3bb4, 0xf870ca44, 0xd5d0ede2, 0x22621cda, 0xd02526a0
.word 0x34fb7b05, 0x0b3c6064, 0xc6b18351, 0xf6c1c9d0, 0xc78a3dfd, 0x5cf0e227, 0x91756eba, 0xd313b9d8
.word 0xe5fe36f3, 0x0e28d532, 0x3dc3ab6f, 0x15063e69, 0xd86f84a2, 0x40f2cb9c, 0xf9bf90c3, 0x69054ce6
.word 0x2cdcb3cc, 0x22c7a7ac, 0xb4236aad, 0x0d27524d, 0x96826529, 0x421cc325, 0x0a1e6b5c, 0x5b457370
.word 0x0216ea66, 0x815eb0e5, 0xa1cf030d, 0xa920465c, 0x9ebd28ea, 0x006edf80, 0x0268b55a, 0x688d71c5
.word 0xdc4318b0, 0xc40d8c25, 0x58c681d1, 0x84ac3661, 0x5f129c39, 0x9abf462d, 0x229924b0, 0x0b216ea1
.word 0x9399a494, 0xa7411cd5, 0xa34fc6c9, 0xe34d480f, 0x844e304f, 0x44c9a546, 0x7fcdf10c, 0x943e588d
.word 0x43687a67, 0x121962af, 0xe408b3dd, 0x4a360807, 0x58aac7a8, 0xfa330c3f, 0x6a5a6136, 0x52214b68
.word 0x94754f84, 0xef4afa4b, 0xa0ed3a09, 0xb65caee5, 0x76d45374, 0xabb88bcc, 0xad1e93a8, 0xdd389780
.word 0x006bf780, 0x2e97d103, 0xd7459670, 0x7116bfb4, 0xbca40ef6, 0x1e6b2a69, 0xe795958a, 0x8256cad6
.word 0xb46e8c3d, 0x90a20a5d, 0x4b318d5a, 0x0ac91305, 0xbdcadc9f, 0x92e39541, 0x8a325f83, 0x0aec9e5c
.word 0xdbc50f37, 0x7c85d2d3, 0xa2924a4a, 0xad06aaa7, 0x32012c25, 0xdf8232fa, 0xf0e1d2b2, 0x72db1dc1
.word 0x062ecf7b, 0x10cc133e, 0x086155e0, 0x441b470c, 0xbbd634c5, 0xf581eb39, 0x0ff386c4, 0xa50daf9b
.word 0xa5ac0b3d, 0x0984f190, 0xd7efbed6, 0xe77df2ab, 0x73e03fbc, 0x2feb06a7, 0xdb4f486a, 0xed639161
.word 0x77a60a3a, 0x98489ccd, 0x58f8c984, 0xe3121dcf, 0x10915209, 0x0e0ee659, 0x06af8252, 0x0b797533
.word 0x98c7a5f6, 0x06b5b4a0, 0xd906f5dc, 0x81254c06, 0xd8abe8e9, 0xffaaf11a, 0x19658ab4, 0xd6ed705b
.word 0xb85aa5f9, 0x6ce6f8f7, 0xbc2ae068, 0xd07b59cf, 0x29da8da8, 0x9c3c325d, 0x619aac96, 0x5a9a58de
.word 0x2e64cb4b, 0x7b5ccc2f, 0xc0df4bba, 0x56ad3d19, 0xe3df9419, 0xd7868629, 0x2e27a029, 0xd54ca3ea
.word 0xd935b4d9, 0x4c6425f7, 0xe4a13e7a, 0xf87e7943, 0x7c1cc1e0, 0x63c8bb1c, 0xca246240, 0x0ebb414e
.word 0xf325b269, 0x1f947a9e, 0x5a391223, 0x47e350c4, 0x0c8a599b, 0xa5f1bfdb, 0xaf0c2559, 0x4db73d7a
.word 0x829d3251, 0x7653c08e, 0x37158686, 0xde491fc0, 0x46d2f124, 0xc5dcdfd3, 0xe1d2be5f, 0xb7bef058
.word 0x4443a602, 0xf8e6b804, 0xcf5247e6, 0x5ac99c48, 0xfeb01a0f, 0x2a1a6049, 0x03877189, 0x41d5b66f
.word 0x6466a9a3, 0xc0136117, 0x21b5eefa, 0x2a3b7dfe, 0xc4c3d931, 0xbe6e2ebe, 0x01022876, 0xea6b89c4
.word 0xd4ddd818, 0x8a2eab2c, 0x1b8143de, 0x3b5103cf, 0x465f2012, 0xb9dca664, 0x5ad1703b, 0x4a1c9059
.word 0x8bc8bec5, 0x56871469, 0x0978d1e1, 0xed99142c, 0x95f8759d, 0x36198fcd, 0x02bd959d, 0x0086d43a
.word 0x5393823f, 0x58845092, 0x5d6a766e, 0x23b006cd, 0x3f64045a, 0x5a5778cf, 0x93020b6a, 0x3f0f0eec
.word 0x4ef3fd1c, 0xd1389467, 0xce271075, 0xbcb463c5, 0xfe360e41, 0xfab34fa7, 0x35020bc7, 0x4e59459c
.word 0x01bafdd2, 0xeb8bc568, 0x63d19f24, 0x61831225, 0xe2bca438, 0x10754eba, 0x8301a07f, 0x77e40564
.word 0x01a9dae9, 0xeff3d6ac, 0x9f760350, 0x532ae8c0, 0x18538f43, 0x611cc490, 0xac3a2db1, 0x91d3df9c
.word 0x6aa6966c, 0x81bcc6ea, 0xd21ddcd5, 0x994c09a4, 0x1735f9b2, 0xc8675819, 0x47fe7d72, 0xe84d5904
.word 0x15d3019b, 0x08a067d8, 0x6cccf18b, 0x709fe164, 0x55c85dbf, 0x1e6b3c8f, 0xf60182ff, 0xe9f61e29
.word 0x22fa48ab, 0xf540a635, 0x6eae58bc, 0xe70fea15, 0xcc30049f, 0xff3e36a6, 0xa4956f99, 0xd740dd8d
.word 0xc0b5d7c8, 0x711814ce, 0xd30aa047, 0xf58d741b, 0x5ed65fe9, 0xf6ce6022, 0x8a81ab7b, 0x97830d5d
.word 0xd052ae5b, 0x7098c555, 0xb1bc931a, 0x47416c7f, 0xa3db7669, 0x4089e51c, 0x57ae52c4, 0xc99b7d5b
.word 0x0af11887, 0x5dbda407, 0x769cb1b2, 0x0a4bd673, 0x3f0292f3, 0x6e39b27e, 0x4a844625, 0x91cbad2b
.word 0xc5eecd5f, 0xec8ca742, 0xa327ee81, 0x6bb89710, 0xf2d89be5, 0x2cd40b68, 0x3b7a2eaa, 0xde3e9ced
.word 0xa7f0eeb9, 0xd56949c1, 0xfd0f0218, 0x0e13e3d8, 0xb65b079e, 0x18d6f476, 0x31521710, 0xa998814d
.word 0xd94f39e8, 0x082f1805, 0xbf541f8b, 0xbde4a325, 0x6d7b60dd, 0xdd9c6b39, 0xbb0fc925, 0x3fc2f1a7
.word 0x15bb4cd6, 0x8292352e, 0x91ad058a, 0x64a9cc5f, 0xde97ccce, 0x113c50bb, 0x69f54978, 0x0e90f51b
.word 0x5cdcc01b, 0xa5c5a6a6, 0x348d5f73, 0x6e249035, 0x71509d34, 0xb5e3b2c0, 0x809840bb, 0x72908269
.word 0xbe20e539, 0x4d4e54d5, 0x5e7d4202, 0xfd25d2c3, 0xd6c03b40, 0x288ed262, 0xf7b6ae70, 0xf344f41a
.word 0x9995e48a, 0xc5fcee19, 0xdbeca59e, 0x13e57b4c, 0x01d02a7f, 0x620e437f, 0x5e974f47, 0xd319a8bf
.word 0x1126cb87, 0x1c4e97c8, 0xbe338642, 0x4d5ced2a, 0x1b1d3e7c, 0x1af3ba14, 0x982aeeca, 0x67cded5e
.word 0x5cbf8d1f, 0x05024efd, 0xcec0d430, 0xd7d36ebd
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x14, x31, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x16, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x16, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x16, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x16, x13, ecall_handler
                  li x13, 0x1
                  beq x16, x13, instr_fault_handler
                  li x13, 0x5
                  beq x16, x13, load_fault_handler
                  li x13, 0x7
                  beq x16, x13, store_fault_handler
                  li x13, 0xc
                  beq x16, x13, pt_fault_handler
                  li x13, 0xd
                  beq x16, x13, pt_fault_handler
                  li x13, 0xf
                  beq x16, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x31, x14, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
