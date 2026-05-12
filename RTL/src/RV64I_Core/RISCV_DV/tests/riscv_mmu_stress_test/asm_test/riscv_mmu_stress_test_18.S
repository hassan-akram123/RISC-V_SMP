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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
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
                  li x0, 0x59dd9ea6
                  li x1, 0x730db784
                  li x2, 0xfd393e10
                  li x3, 0x0
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x4
                  li x8, 0x1
                  li x10, 0xf
                  li x11, 0x0
                  li x12, 0xc
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x17ef0d67
                  li x16, 0x80000000
                  li x17, 0x3
                  li x18, 0xfdcd5e37
                  li x19, 0xfb0f8e3d
                  li x20, 0x80000000
                  li x21, 0x2
                  li x22, 0x0
                  li x23, 0xf226d7c1
                  li x24, 0xffc00035
                  li x25, 0x7
                  li x26, 0x80000000
                  li x27, 0xdacdc20f
                  li x28, 0x0
                  li x29, 0x7016674
                  li x30, 0x80000000
                  li x31, 0x0
                  la x9, user_stack_end
main:             la           ra, region_1+1311 #start load_store_instr_stream_3
                  la           t5, region_1+482 #start load_store_instr_stream_2
                  la           a2, region_1+1369 #start load_store_instr_stream_1
                  lbu          t0, -116(t5)
                  lw           t0, 173(ra)
                  la           s11, region_1+139 #start load_store_instr_stream_0
                  lhu          s4, -170(t5)
                  lw           s8, 239(a2)
                  lw           s2, -35(ra)
                  lb           a6, -204(ra)
                  lbu          a5, 1053(s11)
                  sb           s10, 175(t5)
                  lbu          a6, 199(a2)
                  lbu          s7, -269(t5)
                  sb           sp, 855(s11)
                  sb           a0, -120(ra)
                  lb           sp, 1259(t5)
                  lb           sp, 859(t5)
                  sh           t4, 141(a2)
                  lh           t2, -37(a2)
                  sb           a0, -58(ra)
                  lbu          a7, -223(t5)
                  lbu          s5, -254(ra)
                  lh           s7, -41(s11)
                  sb           a3, 200(ra)
                  lhu          s7, 72(t5)
                  sh           a4, 181(a2)
                  lb           s5, -2(s11)
                  sh           t4, -79(a2)
                  sh           s4, -35(ra)
                  sb           a4, 1172(t5)
                  lbu          a0, 46(a2)
                  sb           s3, -60(a2)
                  sb           tp, -133(a2) #end load_store_instr_stream_1
                  lbu          a6, 86(ra) #end load_store_instr_stream_3
                  lbu          zero, 1155(t5) #end load_store_instr_stream_2
                  sb           a5, 1130(s11) #end load_store_instr_stream_0
                  la           a6, region_0+560 #start load_store_instr_stream_4
                  la           t1, region_0+538 #start load_store_instr_stream_0
                  la           s7, region_0+1991 #start load_store_instr_stream_3
                  lbu          s10, 1075(a6)
                  la           a7, region_0+662 #start load_store_instr_stream_1
                  lb           s11, 85(a6)
                  la           s0, region_0+1071 #start load_store_instr_stream_2
                  sh           t3, 8(t1)
                  lh           s11, -150(a6)
                  sb           t6, -38(s7)
                  sb           t0, 132(t1)
                  lhu          ra, 59(s0)
                  lb           ra, 3(a7)
                  lbu          zero, -78(s7)
                  lbu          t6, 58(s0)
                  lb           t5, -20(s0)
                  sh           a0, -30(t1)
                  lh           ra, -14(a7)
                  lb           sp, -278(a6)
                  lbu          a5, -176(s7)
                  lbu          a2, -30(s0)
                  lbu          a0, 1312(a6)
                  lbu          t4, -3(a7)
                  sb           s7, -46(s0)
                  sb           a2, 51(s0)
                  sb           s4, 1148(a6)
                  sb           t5, 1269(a6)
                  lh           s5, -43(s7)
                  sb           ra, -184(s7)
                  lb           sp, -15(a7)
                  lbu          t4, -19(t1)
                  lbu          a2, -43(s0)
                  sb           s2, -6(s7)
                  sh           a5, 2(a7)
                  lhu          s6, -21(s7)
                  lb           t6, 21(t1)
                  sb           zero, -236(t1)
                  lhu          a3, -94(t1)
                  lh           a5, -13(s7)
                  sb           s2, 837(a6)
                  sb           a1, -29(s0)
                  lb           a1, 13(a7)
                  sh           a7, -4(a7)
                  lh           a4, 45(s0) #end load_store_instr_stream_2
                  sb           s9, -169(s7) #end load_store_instr_stream_3
                  lbu          t4, 874(a6) #end load_store_instr_stream_4
                  lh           s4, 6(a7) #end load_store_instr_stream_1
                  lbu          sp, 211(t1) #end load_store_instr_stream_0
                  la           sp, region_0+1111 #start riscv_load_store_rand_instr_stream_1
                  sb           t0, 130(sp)
                  xori         t1, s10, 277
                  srl          zero, s2, ra
                  andi         s0, s9, 914
                  ori          s5, t4, -1621
                  nop
                  srai         zero, a4, 22
                  addi         zero, a1, -1662
                  andi         a0, s9, -844
                  srai         t0, s0, 16
                  ori          s11, s1, -1444
                  lbu          a5, -88(sp)
                  slti         a4, s1, 1413
                  ori          t4, t1, -826
                  and          s8, a3, t0
                  sb           s7, -76(sp)
                  sltiu        s2, tp, 1772
                  sub          ra, a4, s9
                  sll          s5, s9, a1
                  or           s4, gp, s11
                  sh           s7, 19(sp)
                  sltiu        t4, ra, -299
                  lbu          a1, 192(sp)
                  or           t1, a7, t6
                  srai         s5, a3, 22
                  lb           gp, -176(sp)
                  sh           s8, -123(sp)
                  srli         s4, a2, 2
                  lbu          s5, 224(sp)
                  add          s8, s6, t0
                  sltu         s4, t0, a5
                  slti         s6, a4, 1107
                  lhu          t1, -241(sp)
                  slt          s7, ra, t1
                  lbu          a2, 66(sp)
                  slti         s10, s4, -877
                  sub          s7, t6, t1
                  sb           s6, 43(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_1+1261 #start riscv_load_store_rand_instr_stream_0
                  srl          zero, t2, s6
                  xor          s6, t4, a6
                  slli         s8, zero, 23
                  lhu          gp, 707(s9)
                  sh           s6, -239(s9)
                  lbu          s8, -228(s9)
                  lbu          a7, 301(s9)
                  sltiu        ra, a0, -1721
                  sb           a2, -340(s9)
                  lhu          s5, -375(s9)
                  sb           s7, -14(s9)
                  or           s4, a4, a5
                  xor          zero, a0, t1
                  xor          sp, gp, s1
                  lh           a3, -711(s9)
                  lui          a4, 695468
                  srli         t2, a7, 4
                  lb           s5, 510(s9)
                  lhu          a6, -233(s9)
                  and          a6, gp, t2
                  or           t5, t3, s5
                  srl          ra, s3, t1
                  sh           t4, -101(s9)
                  lb           s10, -591(s9)
                  sh           a2, 85(s9)
                  lh           t5, -1175(s9)
                  sb           t1, -392(s9) #end riscv_load_store_rand_instr_stream_0
                  sll          zero, t6, a2
                  sub          sp, a3, s10
                  lui          a3, 22306
                  add          t1, s11, tp
                  lui          t4, 782310
                  nop
                  lui          a2, 451816
                  lui          t1, 910077
                  add          a2, a6, a0
                  xor          t5, s6, zero
                  add          s7, a2, s0
                  nop
                  bltu         t2, a2, 15f
                  slt          a1, a6, gp
                  nop
15:               addi         s9, a1, 1876
                  and          t4, t6, a6
                  bgeu         t0, s5, 27f
                  sltu         s8, s3, t6
                  lui          t2, 383223
                  sra          s7, t3, a7
                  bne          t1, sp, 28f
                  lui          t2, 352064
                  bgeu         a2, t0, 38f
                  srai         a5, t1, 25
                  lui          t5, 497028
                  sltiu        s10, a1, 1258
27:               blt          a2, t5, 42f
28:               or           s9, sp, a4
                  lui          ra, 844045
                  or           a7, zero, s9
                  bltu         a3, t0, 39f
                  bge          ra, sp, 33f
33:               ori          s0, s11, 1433
                  nop
                  bltu         ra, a1, 40f
                  nop
                  sll          s10, a3, t1
38:               bgeu         t3, a0, 47f
39:               auipc        s2, 418895
                  sll          a6, s1, s2
                  la           gp, sub_1
                  addi         gp, gp, 485
                  andi         a0, a2, 1926
                  bgeu         a4, a1, main_j1 #branch to jump instr
                  sub          t6, s2, s4
                  auipc        s5, 322876
                  addi         a4, t5, 1760
                  sra          s4, s7, gp
                  sub          s4, a4, t6
main_j1:          jalr         s4, gp, -484 #jump main -> sub_1
40:               ori          s6, tp, 1311
                  nop
42:               bge          a1, s5, 48f
                  and          t0, a5, a4
                  xor          s10, s9, s0
                  xor          s6, s6, a2
                  xori         t3, tp, -1868
47:               andi         s0, a7, -819
48:               beq          sp, gp, 58f
                  slti         a6, tp, 2044
                  bge          s3, s9, 59f
                  blt          s7, t0, 61f
                  blt          s1, s3, 66f
                  bgeu         s10, zero, 73f
                  auipc        a3, 519454
                  beq          s4, s7, 73f
                  slli         a2, s8, 7
                  sub          sp, a2, a2
58:               bgeu         t5, t2, 61f
59:               xor          t5, zero, s4
                  sra          s7, s11, t6
61:               slli         s11, t1, 1
                  xori         s2, t4, 1648
                  bge          s7, s7, 64f
64:               bltu         s2, s10, 68f
                  addi         s11, s5, 1942
66:               srli         s8, s2, 2
                  addi         a7, t6, 1979
68:               or           s8, s9, t1
                  and          t4, a4, t4
                  sltiu        t6, gp, 957
                  and          s8, a2, s1
                  srai         s8, a1, 0
                  la           sp, region_0+76 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t4, -47(sp)
                  lb           s5, -33(sp)
                  lb           zero, -33(sp)
                  slt          a5, a5, s4
                  lhu          s6, -4(sp)
                  ori          t2, t4, 1830
                  lb           s7, 0(sp)
                  nop
                  lbu          s5, -23(sp)
                  lb           a6, -23(sp)
                  andi         s0, t1, 517
                  lb           s11, 29(sp)
                  sb           gp, 29(sp)
                  lb           gp, 29(sp)
                  lb           t0, 29(sp)
                  lbu          s9, 29(sp)
                  sb           s9, 29(sp)
                  lbu          ra, 29(sp)
                  lb           s4, 27(sp)
                  lbu          s6, 27(sp)
                  lbu          a5, -13(sp)
                  sb           t5, -13(sp)
                  sb           t3, -13(sp) #end riscv_load_store_hazard_instr_stream_0
73:               or           s4, a0, sp
                  beq          t3, zero, 78f
                  nop
                  bltu         s1, s3, 78f
                  bge          t0, a3, 81f
78:               beq          sp, t3, 82f
                  bne          zero, gp, 84f
                  xor          zero, a1, tp
81:               andi         a6, a6, -1096
82:               and          a4, t1, s7
                  sll          t6, ra, t0
84:               bgeu         s2, s1, 103f
                  and          t4, s2, s6
                  bgeu         s6, s2, 88f
                  sltu         s11, a1, a6
88:               beq          s9, s8, 90f
                  blt          s7, s2, 94f
90:               srli         s5, t3, 2
                  slti         s4, a5, -653
                  bne          tp, a6, 106f
                  bge          s10, t6, 102f
94:               srli         gp, a3, 6
                  auipc        t1, 508396
                  xori         s0, t2, 1998
                  bgeu         a2, t3, 106f
                  sltiu        t5, s1, -274
                  slli         t1, t4, 31
                  bge          t0, a5, 119f
                  slli         s6, t1, 15
102:              slt          s9, sp, t1
103:              slli         s2, t3, 4
                  srl          t2, s1, s1
                  bltu         t2, t5, 108f
106:              sll          a4, s3, a3
                  xori         a1, t1, -221
108:              sll          s0, s10, s1
                  slt          s6, t1, t0
                  nop
                  slli         sp, s5, 0
                  slt          a7, ra, s9
                  ori          gp, s8, -288
                  add          a5, s3, zero
                  ori          a7, t0, -992
                  and          sp, t6, s0
                  slli         s5, a1, 18
                  xori         a1, gp, -716
119:              sra          t1, a2, t2
                  xori         ra, s4, -1653
                  auipc        t5, 317040
                  andi         zero, t3, -411
                  addi         s7, s8, 663
                  nop
                  srli         a5, s7, 14
                  srl          s4, ra, s9
                  xori         s7, t4, 1868
                  xor          t4, a3, s8
                  slti         s9, t1, -207
                  auipc        t4, 281854
                  bgeu         gp, a4, 141f
                  beq          ra, sp, 142f
                  srl          zero, s3, tp
                  slt          t6, gp, tp
                  and          ra, s5, t1
                  ori          t6, s3, -219
                  lui          ra, 454140
                  srl          s7, s1, s8
                  nop
                  srl          s11, s7, a3
141:              sra          t3, a0, zero
142:              ori          s8, tp, 544
                  slli         t2, s6, 19
                  and          gp, gp, t0
                  xori         sp, zero, 276
                  bne          gp, s11, 161f
                  slti         zero, t5, 515
                  sra          a0, t0, a0
                  xor          s11, a5, s3
                  beq          t2, s5, 151f
151:              sltiu        gp, s5, 203
                  andi         t6, s7, -1427
                  srai         a5, s7, 25
                  srai         t1, a6, 18
                  slti         a3, s11, -2014
                  beq          zero, s5, 166f
                  bge          s4, s3, 175f
                  blt          ra, s9, 163f
                  sltiu        a6, a7, -1192
                  bge          zero, t4, 161f
161:              addi         s9, a3, -1173
                  and          s10, t0, a4
163:              bge          s5, a6, 167f
                  slti         a4, s4, 1255
                  bgeu         s4, a4, 168f
166:              sll          a2, s9, s4
167:              blt          s3, t5, 171f
168:              lui          s9, 924088
                  sltiu        s4, t2, -476
                  bge          t6, s5, 175f
171:              auipc        s10, 3740
                  ori          s10, s8, -347
                  srl          a6, t4, s0
                  nop
175:              sltiu        s4, a3, -868
                  slli         a1, ra, 6
                  auipc        a7, 731113
                  slli         zero, s8, 15
                  srai         ra, s10, 30
                  lui          a0, 297570
                  or           zero, a5, s5
                  sltu         a3, s11, a5
                  bge          a7, zero, 197f
                  ori          s8, s3, 1676
                  srl          s2, s4, s3
                  add          zero, a3, s2
                  srli         s10, t1, 1
                  bltu         t6, a5, 208f
                  lui          t6, 643774
                  lui          a5, 734408
                  bgeu         s1, t3, 195f
                  sll          s2, a2, t4
                  slt          a6, a2, t2
                  bne          s0, s2, 198f
195:              slli         zero, a7, 18
                  or           s10, s8, zero
197:              sub          s11, s7, s4
198:              addi         ra, s2, -1201
                  srai         t2, tp, 11
                  bltu         s9, s3, 207f
                  xori         t6, sp, 1662
                  addi         gp, t3, 318
                  sltiu        a6, t1, 706
                  sub          a1, s2, ra
                  bltu         t5, s0, 207f
                  lui          s0, 177483
207:              andi         t1, a3, -198
208:              bne          t1, s7, 223f
                  sub          t5, s4, s1
                  xori         a3, s5, 969
                  sltu         s8, s1, gp
                  sub          s11, s2, t4
                  xori         a6, s3, 446
                  srl          t5, s6, s1
                  slt          gp, t5, s0
                  andi         s7, s11, 869
                  auipc        a1, 865640
                  sltiu        s4, s6, 2007
                  addi         gp, s7, -1875
                  andi         s11, s5, -1115
                  xori         a7, a5, -1277
                  blt          s0, a7, 231f
223:              xor          s2, a0, s5
                  nop
                  slli         t5, a3, 19
                  or           s4, a0, a2
                  xori         a0, a7, 1411
                  or           t6, tp, s0
                  blt          t6, t5, 235f
                  or           ra, a5, s5
231:              bge          tp, a0, 245f
                  or           s0, s11, tp
                  lui          ra, 399400
                  nop
235:              srli         s0, s4, 24
                  bltu         t0, a6, 238f
                  slti         s8, s0, -1347
238:              beq          sp, s2, 240f
                  add          gp, a2, s10
240:              ori          zero, s2, 435
                  addi         t6, s5, -1598
                  xori         s11, gp, -1490
                  sub          s10, t5, a6
                  or           t3, tp, gp
245:              sltu         s4, s0, a1
                  ori          t4, s6, -664
                  sra          s4, a3, a6
                  sra          t3, s5, gp
                  srli         t6, a0, 20
                  auipc        t1, 819087
                  bne          a0, s5, 256f
                  slt          a6, s3, t3
                  slti         s7, zero, 1927
                  srli         zero, t6, 13
                  sltiu        s0, s0, 1410
256:              xori         s9, s8, 600
                  bltu         s4, t1, 265f
                  xori         a5, a4, 123
                  bltu         sp, t5, 268f
                  sll          t1, t4, zero
                  xor          t5, t5, s5
                  la           a2, region_1+1786 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s8, -753(a2)
                  lb           gp, -753(a2)
                  slli         gp, a5, 10
                  lbu          gp, -753(a2)
                  lbu          gp, -753(a2)
                  lb           s5, -753(a2)
                  lbu          a6, -753(a2)
                  lbu          gp, -753(a2)
                  lbu          a1, -753(a2)
                  lb           a5, -1364(a2)
                  lbu          gp, -377(a2)
                  lbu          a3, -377(a2)
                  srl          s7, s8, s8
                  lb           s11, -377(a2)
                  sb           t3, -377(a2)
                  lbu          a6, -377(a2)
                  lb           t5, -377(a2)
                  lbu          zero, -377(a2)
                  lbu          a5, -377(a2)
                  sb           s8, -377(a2) #end riscv_load_store_hazard_instr_stream_1
                  addi         s6, t0, -1310
                  and          s10, s3, a5
                  slt          t1, s3, a2
265:              or           s11, s0, s4
                  ori          s2, t2, 1277
                  or           a2, s9, t3
268:              xor          t6, s10, s10
                  sub          t1, t6, a0
                  xori         s5, s10, 1163
                  nop
                  nop
                  sltu         t0, gp, a5
                  srli         s8, zero, 25
                  slli         s10, s8, 21
                  sltiu        ra, s4, 1805
                  srl          t6, t4, t4
                  lui          s8, 819938
                  slli         s6, s6, 1
                  andi         t4, a1, -251
                  slti         s8, s7, 1040
                  srli         a4, s2, 3
                  beq          t4, t5, 290f
                  lui          s7, 105461
                  srli         a1, a4, 31
                  lui          a7, 664525
                  ori          s0, t3, -1505
                  slt          a3, t6, t4
                  sltu         t0, t1, s0
290:              srl          t3, a4, t4
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slli         sp, s3, 14
                  bne          a1, a7, sub_1_stack_p
sub_1_stack_p:    addi         s1, s1, -32
                  sltiu        a6, s0, 1248
                  or           sp, a0, t0
                  sw           s4, 4(s1)
                  slli         t6, t1, 2
                  sltiu        t4, a3, -335
                  la           sp, sub_2
                  ori          s0, s1, 937
                  sub          s5, t3, a2
                  andi         a5, t4, 478
                  and          s5, t0, s2
                  addi         sp, sp, -844
                  slti         t1, a5, -343
                  and          t4, s11, gp
sub_1_j2:         jalr         s4, sp, 844 #jump sub_1 -> sub_2
                  sra          a1, zero, a7
                  sll          s8, a1, a0
                  sub          t4, t3, s10
                  and          a0, t4, tp
                  sra          a2, t3, a5
                  xori         s7, a7, -1135
                  nop
                  srai         s2, a4, 31
                  xor          t2, s9, a7
                  andi         gp, t2, -769
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  nop
                  slti         t2, a2, 1766
                  auipc        a3, 288627
                  sll          zero, t6, s1
                  ori          zero, s2, 654
                  sltiu        sp, a0, 625
                  andi         t2, s11, 393
                  sltiu        s7, t6, -300
                  nop
                  lui          s8, 462362
                  srl          s8, a6, t6
                  lui          s6, 814864
                  xor          s6, a7, a0
                  sltu         s0, tp, s1
                  and          t5, a6, t3
                  or           t2, s4, s10
                  xori         a3, t0, -1942
                  sltiu        a3, a5, 1941
                  bgeu         a0, t0, 37f
                  andi         s9, s1, 628
                  srai         s4, t2, 28
                  bltu         s9, s2, 34f
                  bgeu         a3, s11, 33f
                  sub          a6, sp, a0
                  and          a4, zero, t2
                  andi         a3, t5, -1295
                  srli         a7, s4, 7
                  bne          t0, a0, 37f
                  bltu         s7, s8, 30f
                  sub          s7, s4, t3
30:               slti         s2, t4, -808
                  sub          t4, zero, s0
                  ori          t3, a7, -1321
33:               slli         a6, t0, 2
34:               slt          t4, t2, s2
                  add          zero, t1, a2
                  auipc        s2, 647367
37:               nop
                  srli         s9, s11, 2
                  or           a3, s2, s4
                  sra          a6, a3, a1
                  srl          a2, a7, t0
                  addi         s11, sp, -1659
                  sub          t5, s5, t3
                  srli         s6, s2, 16
                  bgeu         gp, tp, 61f
                  lui          s2, 971758
                  xori         ra, s9, -1047
                  lui          t2, 7293
                  bge          s4, t3, 61f
                  sra          t5, s5, t1
                  sll          s10, a2, a1
                  add          s7, s0, s7
                  bge          tp, s8, 61f
                  bltu         a1, t0, 56f
                  andi         t0, s4, 2014
56:               bge          s8, a0, 57f
57:               srai         a7, s9, 13
                  nop
                  srl          s9, t4, s10
                  srai         t5, s3, 8
61:               srli         a6, s7, 17
                  lw           s4, 4(s1)
                  sltu         s5, s4, tp
                  addi         s1, s1, 32
                  add          a4, a5, s5
                  lui          a3, 753629
                  srai         a0, a5, 14
                  slti         gp, t4, 1950
97:               addi x7, x20, 1
97:               jalr x7, x7, 0
sub_2:            xor          a5, a3, s2
                  nop
                  beq          a2, s2, sub_2_stack_p
sub_2_stack_p:    addi         s1, s1, -44
                  sw           s4, 4(s1)
                  nop
                  la           s11, region_1+1311 #start load_store_instr_stream_1
                  lb           a7, -1(s11)
                  la           t4, region_1+1760 #start load_store_instr_stream_0
                  la           t5, region_1+1768 #start load_store_instr_stream_2
                  sb           gp, -29(s11)
                  lw           a2, -144(t5)
                  lbu          s7, 15(t4)
                  sb           a3, -62(s11)
                  lw           s8, -16(t4)
                  lbu          s10, -24(s11)
                  sb           gp, -183(t5)
                  lb           a2, 187(t5)
                  sb           s6, 8(t4)
                  lhu          a0, -178(t5)
                  sh           s6, 47(s11)
                  lhu          s7, -90(t5)
                  sb           s1, 7(t4)
                  sh           ra, -6(t4)
                  lb           ra, -20(s11)
                  sb           a1, -12(s11)
                  sb           a3, 11(t4)
                  lbu          s10, -4(t5)
                  sh           ra, -1(s11)
                  sb           s11, -2(s11) #end load_store_instr_stream_1
                  lb           a4, -123(t5)
                  sh           t0, -218(t5)
                  lbu          a0, -157(t5)
                  lb           s2, 141(t5) #end load_store_instr_stream_2
                  lbu          a7, -16(t4)
                  lbu          t0, 1(t4) #end load_store_instr_stream_0
                  la           s2, region_0+1898 #start load_store_instr_stream_1
                  la           a5, region_0+1408 #start load_store_instr_stream_0
                  lb           zero, -479(a5)
                  sh           s2, 60(s2)
                  lb           s7, 320(a5)
                  sb           ra, -29(s2)
                  lb           a6, -795(a5)
                  sb           s7, -9(s2)
                  lb           ra, -7(s2)
                  lbu          s9, -336(a5)
                  lbu          t6, 4(s2)
                  lh           s7, 166(a5)
                  sb           s1, 9(s2)
                  sb           s10, -610(a5)
                  lb           s8, 29(s2)
                  sw           a2, -524(a5)
                  lhu          t0, 36(s2) #end load_store_instr_stream_1
                  sb           t4, -474(a5) #end load_store_instr_stream_0
                  la           ra, region_1+1029 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a5, 162(ra)
                  lbu          a6, 162(ra)
                  lb           gp, 162(ra)
                  lb           a6, 162(ra)
                  sb           ra, 162(ra)
                  lb           a7, 162(ra)
                  lbu          s6, 162(ra)
                  add          s5, t3, s0
                  xori         a5, t6, 701
                  lbu          a0, 162(ra)
                  lb           a7, 162(ra)
                  sb           s11, 162(ra) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1412 #start riscv_load_store_rand_instr_stream_4
                  lbu          a3, -58(sp)
                  lbu          a3, -45(sp)
                  lb           t6, 63(sp)
                  sra          a7, s10, t0
                  add          s2, a0, zero
                  srl          s9, zero, gp
                  lbu          a4, -24(sp)
                  sh           gp, -18(sp)
                  lb           s8, -17(sp)
                  xori         a2, a6, 2030
                  lb           s7, -53(sp)
                  sh           a7, 60(sp)
                  lb           gp, 21(sp)
                  srl          s5, ra, s6
                  sh           a4, 60(sp)
                  lbu          a2, 59(sp)
                  lb           s2, 1(sp)
                  sll          t2, s4, a1
                  or           t5, t3, s2
                  sb           t3, 22(sp)
                  sll          s2, a7, s3
                  sra          s9, a0, t4
                  srli         s6, t6, 22
                  lbu          s9, -21(sp)
                  sub          t4, sp, a0
                  lhu          s7, -2(sp)
                  sb           s3, 9(sp)
                  or           t4, t6, gp
                  sb           s4, 33(sp)
                  lh           t1, -18(sp)
                  add          a0, a7, s11
                  lbu          t2, -46(sp)
                  lbu          zero, -52(sp)
                  add          a5, t1, t5
                  sll          t6, s7, t6
                  sra          a0, tp, tp
                  sb           s1, -11(sp)
                  sra          zero, zero, ra
                  lhu          a5, 24(sp)
                  lbu          s8, -26(sp)
                  slt          a1, gp, ra
                  lb           a5, 33(sp)
                  andi         t2, s3, 1132
                  srai         a3, s1, 1
                  lb           a3, -11(sp)
                  sh           a6, 10(sp)
                  sltu         t4, tp, t6
                  addi         s2, a3, 1283
                  lh           t4, 38(sp)
                  slti         a3, a6, 1952
                  lhu          t4, -10(sp) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_0+1093 #start riscv_load_store_hazard_instr_stream_0
                  and          s2, t5, s4
                  lbu          t0, -210(ra)
                  sra          t0, t1, s5
                  sb           t6, -210(ra)
                  lbu          a7, -210(ra)
                  lbu          sp, -210(ra)
                  lb           a5, -210(ra)
                  lbu          t4, -232(ra)
                  sb           t5, -232(ra)
                  addi         s8, ra, -1497
                  lw           gp, 255(ra)
                  lh           t1, -191(ra)
                  xori         a1, s6, 1962
                  sb           zero, -191(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           gp, region_1+357 #start load_store_instr_stream_0
                  la           s6, region_1+1137 #start load_store_instr_stream_1
                  la           t3, region_1+1220 #start load_store_instr_stream_3
                  sh           t1, -9(s6)
                  sb           a0, -2(t3)
                  lbu          sp, 15(t3)
                  la           s2, region_1+1894 #start load_store_instr_stream_2
                  la           a5, region_1+1981 #start load_store_instr_stream_4
                  lh           s9, 2(t3)
                  lbu          a4, -900(a5)
                  lb           a6, -51(gp)
                  lhu          s4, -561(a5)
                  lbu          t2, 15(t3)
                  lb           a1, -12(s2)
                  sb           a7, -12(s6)
                  lhu          a4, 61(gp)
                  sb           s3, 8(s6)
                  sb           sp, 28(gp)
                  sb           a2, 9(s2)
                  sb           t2, -10(t3)
                  sb           a5, 52(gp)
                  sh           a1, -10(t3)
                  lb           sp, 47(gp)
                  lbu          t6, -497(a5)
                  lb           t5, -1008(a5)
                  lw           s8, 0(t3)
                  lhu          a1, 10(s2)
                  lb           s8, -15(s2)
                  lb           s7, 3(s6)
                  lhu          t4, 8(s2)
                  lbu          s11, -32(gp)
                  lbu          a4, -1402(a5) #end load_store_instr_stream_4
                  lhu          a7, -11(gp)
                  lb           s0, -13(s2)
                  lb           t4, -14(s2)
                  lb           t1, -4(s6)
                  sb           s6, -9(s2)
                  lbu          sp, -36(gp)
                  sb           s9, -9(s2)
                  lh           t6, -7(s6) #end load_store_instr_stream_1
                  lb           s10, 3(t3)
                  sb           s6, 13(t3) #end load_store_instr_stream_3
                  lbu          t2, -5(s2) #end load_store_instr_stream_2
                  lb           a1, -49(gp) #end load_store_instr_stream_0
                  la           sp, region_1+1320 #start riscv_load_store_rand_instr_stream_5
                  lbu          t0, 3(sp)
                  sb           a2, -14(sp)
                  lw           s5, 8(sp)
                  sll          a2, t0, s10
                  add          t2, t2, tp
                  sb           s11, 6(sp)
                  sb           s0, 3(sp)
                  lb           t2, -1(sp)
                  sll          s10, sp, s9
                  lbu          t5, 7(sp)
                  lb           t2, -8(sp)
                  sb           t5, 1(sp)
                  lh           s6, -10(sp)
                  xori         t0, s4, -1941
                  sb           sp, 15(sp)
                  srli         s11, t5, 27
                  srai         s6, s0, 8
                  lbu          s6, -14(sp)
                  xor          s7, t2, s4
                  lbu          a6, 3(sp)
                  sra          a0, a2, a6
                  slt          a0, ra, t0
                  xor          a2, t1, a4
                  auipc        s9, 493467
                  lb           a7, 3(sp)
                  srai         s6, gp, 19
                  sh           a7, -8(sp)
                  lb           s4, 11(sp)
                  sh           gp, 16(sp)
                  lbu          a6, 11(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+406 #start riscv_load_store_rand_instr_stream_1
                  andi         s5, s11, -283
                  lbu          s2, -169(sp)
                  slti         t0, s8, 344
                  nop
                  add          a3, s5, s3
                  sub          s2, a1, s2
                  nop
                  sw           t2, 82(sp)
                  sll          s11, t5, a5
                  xor          t5, t2, t0
                  and          s8, t2, t4
                  lbu          t3, -219(sp)
                  slti         a4, t5, -170
                  auipc        s7, 925832
                  lbu          a0, 171(sp)
                  ori          s11, a1, 179
                  xori         a6, s1, 658
                  xor          s10, a6, t3
                  lbu          a7, 41(sp)
                  lb           t3, 190(sp)
                  xor          ra, gp, t1
                  slt          t4, tp, t6
                  lw           t1, -70(sp)
                  slli         a4, a5, 28
                  lui          t1, 232950
                  slt          t3, s6, t1
                  lbu          t0, 81(sp)
                  xori         t6, a3, 1353
                  sb           zero, 223(sp)
                  lw           zero, -18(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a5, region_0+175 #start riscv_load_store_hazard_instr_stream_3
                  sb           s1, 1020(a5)
                  lbu          a2, 1524(a5)
                  xori         t3, s9, 39
                  sb           s0, 464(a5)
                  lb           ra, 538(a5)
                  lb           s9, 1771(a5)
                  lbu          s8, 1771(a5)
                  srli         a4, s6, 11
                  slli         a0, a5, 30
                  lbu          s4, 466(a5)
                  xor          s5, a3, t1
                  lhu          s2, 1395(a5)
                  lb           a1, -55(a5)
                  lbu          s10, 1710(a5)
                  lb           a2, -111(a5)
                  srai         t4, a4, 3
                  sw           s5, -111(a5)
                  lb           t4, 578(a5)
                  add          t6, t2, t4
                  lb           t3, 578(a5) #end riscv_load_store_hazard_instr_stream_3
                  la           a4, region_1+1712 #start load_store_instr_stream_3
                  la           a7, region_1+308 #start load_store_instr_stream_1
                  lb           s10, 7(a4)
                  la           s4, region_1+1104 #start load_store_instr_stream_2
                  sb           t6, -611(s4)
                  la           t4, region_1+73 #start load_store_instr_stream_4
                  lb           a5, 9(a4)
                  sb           s1, 4(a7)
                  lhu          t2, 360(s4)
                  lbu          t1, 11(t4)
                  sw           a7, 176(s4)
                  sb           t1, 15(a7)
                  lb           s9, -4(a4)
                  sh           t6, 294(s4)
                  la           s2, region_1+199 #start load_store_instr_stream_0
                  lh           t1, 864(s4)
                  lh           a0, -10(a4)
                  lbu          zero, -6(t4)
                  sb           t5, -53(a7)
                  sh           s11, 1(t4)
                  lh           t1, -464(s4)
                  lhu          s0, -5(t4)
                  sw           s0, -15(s2)
                  sh           tp, -22(a7)
                  lh           a6, 7(s2)
                  lh           a5, -612(s4)
                  lbu          a2, 43(a7)
                  lbu          sp, 577(s4)
                  lbu          s11, 10(a7)
                  lw           s7, 160(s4)
                  lbu          gp, -4(t4)
                  lbu          a3, 10(s2)
                  sb           t4, 22(a7)
                  lbu          t5, 13(s2)
                  sw           a6, 11(t4)
                  lbu          s9, -4(t4)
                  lhu          a6, -5(s2)
                  lbu          s11, -9(a4)
                  lbu          t0, -11(a7)
                  lhu          a5, 2(a4) #end load_store_instr_stream_3
                  sh           a1, 860(s4) #end load_store_instr_stream_2
                  lbu          t3, -4(t4) #end load_store_instr_stream_4
                  lbu          a6, 59(a7) #end load_store_instr_stream_1
                  sb           a5, 2(s2) #end load_store_instr_stream_0
                  la           t5, region_1+1997 #start riscv_load_store_rand_instr_stream_2
                  sh           s11, -1719(t5)
                  lhu          a2, -1791(t5)
                  lui          a2, 181868
                  sltiu        t2, t3, -1179
                  sra          s8, gp, ra
                  sra          s10, a0, s0
                  nop
                  slt          t0, a5, t5
                  slt          a6, t1, t0
                  auipc        s10, 701964
                  lui          a1, 652191
                  sw           a0, -689(t5)
                  lbu          t2, -954(t5)
                  lb           s8, -274(t5)
                  lh           s5, -1829(t5)
                  lbu          gp, -1481(t5)
                  srli         s11, s9, 16
                  srl          t0, sp, s11
                  lb           zero, -1876(t5)
                  xori         s2, zero, 795
                  lb           a2, -266(t5)
                  sb           s9, -1515(t5)
                  sltu         ra, a5, tp
                  srli         a4, a1, 13
                  sb           a3, -1450(t5)
                  nop
                  sb           t2, -1317(t5)
                  auipc        t0, 659236
                  nop
                  slt          t0, a5, a2
                  lh           a1, -1411(t5)
                  sltu         a7, s3, a2
                  slli         s8, ra, 25
                  sw           s5, -241(t5)
                  and          a7, t3, s5
                  sltu         a2, ra, s4
                  ori          t1, sp, -1210
                  sb           t1, -1349(t5)
                  xori         a7, s6, -559
                  auipc        s4, 1012563
                  slli         a0, sp, 20
                  slt          t2, a1, s3
                  and          a2, a1, tp
                  lb           t6, -288(t5)
                  sltiu        s4, s11, -1502
                  sll          t2, sp, s9
                  lh           s4, -841(t5) #end riscv_load_store_rand_instr_stream_2
                  la           t4, region_1+1988 #start load_store_instr_stream_0
                  sb           a7, -61(t4)
                  la           s5, region_1+680 #start load_store_instr_stream_1
                  lb           gp, 22(s5)
                  la           a0, region_1+220 #start load_store_instr_stream_3
                  lb           s11, 10(t4)
                  la           s8, region_1+925 #start load_store_instr_stream_2
                  la           ra, region_1+1249 #start load_store_instr_stream_4
                  sb           a3, 42(ra)
                  lh           s4, 58(s5)
                  sb           zero, -11(s5)
                  sw           a5, -237(s8)
                  lbu          a7, 51(s5)
                  lbu          s9, -64(a0)
                  lbu          zero, 146(s8)
                  sb           s2, -183(s8)
                  sh           s6, -46(t4)
                  lw           s0, -24(a0)
                  lh           a1, 26(a0)
                  lb           s6, 10(s5)
                  lbu          t5, 58(ra)
                  lhu          t3, 0(t4)
                  sb           s8, 31(s5)
                  lhu          t3, 209(s8)
                  sw           t1, -48(t4)
                  lb           a2, -37(a0)
                  lhu          t1, 8(s5)
                  lb           a6, -53(ra)
                  lb           s4, -53(ra)
                  lbu          sp, -3(a0) #end load_store_instr_stream_3
                  lhu          t5, -34(t4)
                  lbu          t1, 184(s8)
                  lbu          s2, -53(ra) #end load_store_instr_stream_4
                  lb           s11, 22(s5) #end load_store_instr_stream_1
                  lb           a5, 123(s8) #end load_store_instr_stream_2
                  sb           tp, -35(t4) #end load_store_instr_stream_0
                  la           a7, region_1+1384 #start riscv_load_store_rand_instr_stream_3
                  lb           t2, 139(a7)
                  andi         s10, ra, 1673
                  xori         t5, s8, 981
                  sb           t5, 196(a7)
                  slt          ra, t6, a6
                  sub          a6, s6, s7
                  slt          t4, t1, t6
                  sra          s4, a1, s8
                  add          sp, s7, t5
                  nop
                  sub          t3, zero, t4
                  auipc        a6, 544456
                  sw           tp, 248(a7)
                  sb           s8, 202(a7)
                  sh           t1, 250(a7)
                  lbu          t1, 49(a7)
                  sb           s5, 103(a7)
                  lbu          a4, -180(a7)
                  lb           t4, -205(a7)
                  addi         a1, t0, -1873
                  xori         gp, gp, -516
                  lb           s0, -184(a7)
                  xori         s6, s7, -1671
                  slti         s5, s10, -2036
                  slti         s11, s11, 1806
                  sh           t1, -136(a7)
                  sb           s1, -101(a7)
                  lb           s0, -255(a7)
                  sw           a0, 52(a7)
                  lbu          t2, 184(a7)
                  lhu          s8, -188(a7)
                  srl          a3, t5, a2
                  lui          a6, 658333
                  lb           s10, 22(a7)
                  lbu          s9, -255(a7)
                  lbu          sp, 65(a7)
                  lhu          s7, 92(a7)
                  lbu          s11, 59(a7)
                  lb           a5, 201(a7)
                  sh           t6, 20(a7)
                  srai         s7, gp, 28
                  lbu          a1, -237(a7) #end riscv_load_store_rand_instr_stream_3
                  la           a5, region_0+419 #start riscv_load_store_hazard_instr_stream_4
                  sw           a2, -179(a5)
                  sb           t4, 1566(a5)
                  lw           t6, 345(a5)
                  lb           s9, 1188(a5)
                  lbu          s10, 15(a5)
                  lbu          t4, 173(a5)
                  sltiu        a6, s9, -1323
                  lh           s10, 1403(a5)
                  lb           t2, -236(a5)
                  lb           a6, 1518(a5)
                  lbu          t3, 1518(a5)
                  lbu          sp, 1518(a5)
                  lb           t4, 994(a5)
                  lb           t1, 1213(a5) #end riscv_load_store_hazard_instr_stream_4
                  la           a7, region_1+114 #start load_store_instr_stream_1
                  la           t1, region_1+1802 #start load_store_instr_stream_0
                  sb           s9, 2(t1)
                  la           a2, region_1+1737 #start load_store_instr_stream_2
                  lhu          s7, -5(a2)
                  lhu          a0, -4(a7)
                  sh           s10, 13(a2)
                  sb           a0, -13(t1)
                  lb           s2, 13(t1)
                  lb           s2, -11(a2)
                  lbu          s11, 16(t1)
                  lbu          s8, -3(t1)
                  sb           t4, 5(a7)
                  lhu          a6, 2(t1)
                  lbu          s5, 12(a2)
                  lbu          s7, 11(a7)
                  lbu          a5, 8(a2)
                  lw           s0, 14(a7)
                  sh           a4, -3(a2)
                  lh           gp, 13(a2)
                  lb           s8, 5(t1)
                  lbu          t0, -12(a2) #end load_store_instr_stream_2
                  lbu          gp, -4(t1)
                  lbu          ra, -2(a7) #end load_store_instr_stream_1
                  sb           a7, 2(t1) #end load_store_instr_stream_0
                  la           sp, region_0+457 #start riscv_load_store_hazard_instr_stream_5
                  lh           t3, -35(sp)
                  lb           a5, 28(sp)
                  or           s4, tp, sp
                  ori          t3, t2, -286
                  lui          a3, 609719
                  sb           a4, 1(sp)
                  sh           s2, 1(sp)
                  sub          a7, a0, t1
                  srai         a5, t4, 12
                  srli         t0, s2, 7
                  lhu          a0, 57(sp)
                  lb           t2, 64(sp)
                  lh           t0, -1(sp)
                  lhu          t3, -1(sp)
                  sb           t0, 27(sp)
                  lhu          t6, 59(sp)
                  lh           s0, -63(sp)
                  lbu          s7, -63(sp)
                  ori          t5, a4, -1532
                  lbu          a3, -63(sp)
                  sb           ra, 34(sp)
                  lb           ra, 58(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           s2, region_1+611 #start riscv_load_store_hazard_instr_stream_1
                  lbu          gp, 96(s2)
                  srl          t1, t4, s3
                  lh           s11, 209(s2)
                  sb           a4, 68(s2)
                  slti         sp, t0, -1135
                  lbu          zero, 68(s2)
                  sra          t4, s0, t1
                  lbu          ra, 68(s2)
                  sb           t2, 147(s2)
                  lbu          s5, 147(s2)
                  add          a1, s6, s6
                  lb           s8, 147(s2)
                  lbu          a3, -93(s2)
                  lh           a0, -93(s2)
                  lbu          s0, -93(s2)
                  lb           a3, -93(s2)
                  sh           a5, -93(s2)
                  lbu          a5, -120(s2)
                  lb           t4, -120(s2) #end riscv_load_store_hazard_instr_stream_1
                  sltiu        s11, gp, 28
                  xori         t4, a5, 1978
                  blt          s8, zero, 20f
                  srli         zero, a2, 26
                  sll          s6, a4, s9
                  sltiu        a5, a7, -981
                  srli         zero, t2, 18
                  bgeu         s8, s5, 25f
                  slli         a7, tp, 21
                  slti         s9, t5, 360
                  slli         t3, tp, 20
                  srl          gp, t0, s11
                  sltiu        s5, a2, -1485
                  beq          s10, t2, 16f
                  andi         s6, t1, -1854
                  sltu         t0, ra, a0
16:               xori         s4, ra, -1367
                  beq          s1, s6, 29f
                  sltu         s8, a0, t4
                  nop
20:               sltiu        s6, sp, -1636
                  and          t4, tp, a5
                  sub          s11, gp, a6
                  bgeu         s5, s2, 38f
                  addi         s4, zero, 1433
25:               bge          s10, a6, 34f
                  slti         s7, t1, 906
                  slli         ra, t0, 28
                  and          a4, s2, a5
29:               auipc        a7, 323466
                  beq          t3, s8, 43f
                  lui          a6, 641431
                  lui          s8, 885668
                  xori         s2, s5, -360
34:               sra          s0, s0, a3
                  bgeu         s7, a2, 51f
                  srl          s2, s9, ra
                  andi         t1, s6, 828
38:               nop
                  sltiu        s5, s6, -1405
                  andi         s5, a6, 1820
                  andi         t4, a5, -1957
                  and          t0, s1, t6
43:               sltiu        ra, s8, 391
                  sub          s2, tp, gp
                  xor          a5, s3, s2
                  nop
                  bne          gp, a0, 56f
                  srl          a6, a3, t6
                  sra          a2, sp, t4
                  lui          a4, 334863
51:               sll          s4, s0, sp
                  sub          t5, a4, s11
                  xor          a0, t4, ra
                  xori         t1, t0, -12
                  bge          a1, s8, 71f
56:               xor          ra, s3, s8
                  addi         t1, a5, -105
                  lui          a1, 1011099
                  and          t3, sp, gp
                  bne          a2, a6, 68f
                  blt          ra, t6, 76f
                  xori         a1, a5, 32
                  addi         t6, s8, -1967
                  nop
                  nop
                  nop
                  xori         a6, a2, 861
68:               slt          t5, s9, a5
                  and          s10, a0, a3
                  xor          t5, sp, t0
71:               sra          ra, t1, s2
                  sll          a5, t0, a6
                  andi         a0, s3, 1636
                  sra          a0, s9, s8
                  sra          a1, t1, gp
76:               slli         t0, a7, 1
                  srai         a3, s10, 1
                  bne          t0, a7, 81f
                  and          s7, s4, s5
                  sub          s8, t3, t3
81:               ori          s0, s9, 1235
                  bgeu         s6, s11, 96f
                  add          zero, t2, ra
                  bne          a0, a7, 87f
                  slti         t4, t0, -1016
                  slli         ra, s0, 9
87:               srai         t3, a6, 3
                  or           zero, s6, s7
                  lui          s9, 949467
                  or           t5, s11, sp
                  lui          s8, 388252
                  srli         a0, t1, 7
                  and          a3, s10, s11
                  slt          t0, s8, s3
                  srl          a7, a7, s0
96:               slli         s9, t2, 0
                  bltu         tp, s2, 98f
98:               ori          s5, a6, 542
                  ori          s10, a6, 671
                  slt          a6, gp, t0
                  lui          t3, 589293
                  sll          t4, s5, s1
                  beq          s7, ra, 115f
                  sltiu        sp, t4, 1220
                  lui          a5, 369714
                  ori          s0, t5, 2034
                  nop
                  srli         gp, a7, 29
                  beq          s11, a6, 113f
                  sra          a7, s3, sp
                  sltiu        t1, s11, 714
                  sra          s0, a1, s5
113:              blt          a4, s6, 125f
                  sra          s10, ra, t1
115:              and          t0, s10, a0
                  nop
                  srli         gp, s0, 21
                  slti         s11, t2, -1996
                  slli         gp, s0, 17
                  slt          a3, a3, s5
                  slti         a3, s8, 1542
                  sltu         a5, s3, a1
                  blt          a5, s11, 135f
                  sub          s6, s2, a3
125:              addi         t3, a5, 349
                  sra          t0, s11, t3
                  slt          gp, t6, a6
                  bltu         a1, t4, 145f
                  beq          s9, t1, 133f
                  add          s8, a4, s3
                  blt          a7, t5, 135f
                  slt          s9, s10, s9
133:              or           s2, t4, s2
                  slti         t5, t1, 752
135:              beq          s3, a1, 142f
                  sll          s11, a1, s9
                  addi         t0, sp, -1546
                  lui          a6, 140604
                  slli         a0, s2, 30
                  srai         s0, s3, 15
                  add          t6, a4, a1
142:              sltiu        s4, a0, 549
                  xori         t0, s5, 1521
                  bne          t5, t6, 157f
145:              and          a3, a2, s2
                  srli         s11, a7, 10
                  sra          t1, s8, t6
                  sra          s0, s9, gp
                  addi         t4, a5, -1499
                  auipc        s0, 894430
                  slti         t5, s6, -1346
                  srl          s7, zero, t3
                  sltiu        s5, s9, 28
                  sltu         a6, s6, s1
                  sra          t3, s7, s11
                  xor          a7, s4, a2
157:              sra          s4, a4, s10
                  andi         zero, s1, -1327
                  srli         s9, s4, 13
                  slt          s8, s8, s6
                  nop
                  ori          a7, s11, 427
                  blt          s0, a3, 169f
                  blt          s7, s3, 169f
                  sll          s2, s3, s6
                  sltu         s0, a2, a6
                  slli         gp, t2, 20
                  blt          s10, t4, 173f
169:              sra          zero, s4, s5
                  sll          s4, s11, s8
                  bltu         t0, s1, 182f
                  nop
173:              srl          t1, s10, zero
                  slt          a5, a1, s10
                  xor          ra, t4, a6
                  srl          gp, s4, s4
                  xor          s5, t4, t2
                  blt          s3, a1, 183f
                  slti         s8, a4, 484
                  blt          s8, s0, 198f
                  lui          t2, 987201
182:              lui          a1, 687084
183:              lui          a2, 321666
                  sltiu        s8, s8, -561
                  add          s10, s6, sp
                  sra          ra, ra, a1
                  slli         t2, s9, 2
                  srai         t6, sp, 17
                  srli         a0, gp, 7
                  sll          a1, a4, a3
                  sltu         s2, tp, t4
                  slti         sp, t0, -1092
                  andi         zero, s0, -1839
                  blt          s2, s5, 200f
                  slli         s7, s1, 7
                  sub          t2, t4, s8
                  beq          t0, s3, 210f
198:              bgeu         a2, s5, 205f
                  xori         sp, s10, -1255
200:              sltu         a4, a4, t3
                  bne          zero, a6, 206f
                  bltu         s9, s11, 206f
                  bge          s3, t4, 206f
                  addi         s11, t3, -1965
205:              andi         t6, s7, -1529
206:              addi         s9, s8, 989
                  srai         t5, s2, 19
                  slli         s4, zero, 13
                  lui          s6, 850671
210:              xori         s8, s1, 804
                  slti         s10, s7, -54
                  add          t1, a7, s10
                  and          s6, t6, t2
                  slt          ra, s10, a2
                  bgeu         t4, a4, 227f
                  bge          a7, s4, 221f
                  bne          s11, s5, 226f
                  slt          s2, sp, a3
                  srli         gp, s6, 24
                  nop
221:              and          a2, a2, t2
                  bgeu         tp, s7, 240f
                  bge          a7, a2, 235f
                  and          s8, a6, t4
                  bltu         s5, zero, 236f
226:              or           a1, a0, t6
227:              sltu         t2, gp, t6
                  or           t1, a2, a5
                  sltu         s2, s10, a7
                  sll          a3, sp, t0
                  sll          t1, s6, t1
                  nop
                  srli         t4, a1, 2
                  srai         t4, s3, 14
235:              ori          s10, s2, 1633
236:              srai         a6, a1, 23
                  bltu         ra, t4, 252f
                  bltu         zero, a7, 242f
                  add          s4, a2, a6
240:              and          a1, s10, sp
                  sub          t5, s11, t3
242:              and          s7, a3, s9
                  sltu         a5, tp, s6
                  sltiu        s6, s0, -369
                  bgeu         tp, s9, 248f
                  bltu         t2, s10, 263f
                  and          s7, s6, tp
248:              lui          s10, 173134
                  slt          s0, s8, s0
                  srli         a1, sp, 24
                  xor          s11, s0, a1
252:              sltiu        a4, t4, 276
                  auipc        t0, 89866
                  nop
                  srl          s6, t6, a3
                  slli         a6, a6, 30
                  bne          ra, s4, 269f
                  slt          a4, s6, a3
                  slti         s8, s11, 53
                  blt          s4, sp, 265f
                  xori         t1, a5, 1352
                  srli         s7, s7, 15
263:              sltiu        s11, t6, -430
                  bltu         a7, s0, 276f
265:              srai         s9, a4, 9
                  beq          t1, t6, 281f
                  xori         a6, s3, -1863
                  srl          s8, s3, a0
269:              slt          gp, s4, t0
                  and          s2, s5, sp
                  slti         gp, a0, -132
                  sra          a4, t5, t3
                  and          a5, s6, s4
                  lui          t4, 6076
                  bgeu         t1, a6, 279f
276:              srli         ra, t0, 25
                  ori          a2, a7, 952
                  and          sp, s8, t2
279:              slti         a0, zero, 734
                  bge          a2, a7, 294f
281:              and          s7, s2, a2
                  sltu         zero, a1, t2
                  sub          t4, a4, gp
                  sll          t3, ra, a5
                  bgeu         s10, a2, 286f
286:              slti         a1, a5, -1941
                  sltu         a0, ra, a4
                  add          s10, a1, sp
                  bltu         a1, zero, 292f
                  bltu         t4, a6, 298f
                  lui          s0, 162403
292:              andi         a0, a3, 1177
                  auipc        s9, 401114
294:              slt          s2, tp, a6
                  beq          t2, a1, 304f
                  sra          t6, s11, t0
                  slti         zero, s3, 1109
298:              beq          a1, s11, 314f
                  add          s2, s2, s5
                  xor          zero, t1, sp
                  srai         a4, s2, 9
                  nop
                  beq          a0, a3, 319f
304:              slli         gp, t3, 2
                  xori         s5, a0, 1984
                  xor          s6, s1, s5
                  slti         t5, a7, -1747
                  srli         t2, zero, 0
                  or           s7, a3, s5
                  bne          a3, a1, 323f
                  lui          s0, 571464
                  xor          a4, gp, t6
                  srli         a6, a1, 16
314:              slli         a3, a7, 11
                  andi         zero, t6, -1531
                  add          a7, s2, s1
                  slti         a3, s0, -1089
                  ori          t5, ra, 1331
319:              srai         s8, s11, 19
                  xor          a2, zero, s9
                  addi         t3, gp, 1663
                  beq          s9, s7, 336f
323:              xor          t6, s1, a1
                  sltu         s5, t0, s1
                  bne          s11, t5, 337f
                  xor          t4, a7, s2
                  slli         s6, s0, 25
                  ori          a6, sp, -1107
                  srli         s11, s8, 29
                  srli         a3, tp, 9
                  bgeu         t1, a1, 338f
                  beq          s1, sp, 344f
                  bge          a4, t6, 344f
                  and          t0, a6, s8
                  add          s11, a1, s0
336:              andi         a1, a4, -768
337:              bge          a5, s9, 338f
338:              auipc        zero, 674359
                  xori         s6, t5, 145
                  add          s8, a0, t1
                  bgeu         a6, s3, 354f
                  sub          s11, s5, s10
                  bge          t1, t2, 347f
344:              sub          sp, s8, a2
                  sub          t1, a6, s9
                  add          t3, s2, s5
347:              blt          a4, ra, 365f
                  slli         a4, ra, 22
                  addi         s9, s1, 234
                  or           t2, a4, t4
                  andi         ra, a1, 1363
                  bne          a3, s3, 368f
                  bltu         s2, s2, 358f
354:              xori         t4, a3, 362
                  xor          a4, a1, ra
                  bge          s4, s8, 361f
                  and          t5, t5, t0
358:              lui          zero, 482931
                  beq          a0, a4, 362f
                  andi         a0, s8, 372
361:              nop
362:              add          a3, ra, s6
                  or           s4, zero, a5
                  slti         a5, s0, -1126
365:              nop
                  slt          s5, s10, zero
                  nop
368:              lui          a7, 423099
                  bltu         ra, s0, 372f
                  lui          s9, 694247
                  and          s10, t0, s10
372:              andi         a0, s11, 658
                  lui          zero, 97223
                  sub          sp, s6, a4
                  slti         t5, s0, -104
                  sll          t1, a0, a0
                  slt          ra, a5, s11
                  blt          s1, a7, 381f
                  auipc        t6, 469021
                  bne          s9, a5, 392f
381:              sltiu        a5, t1, -1438
                  and          a1, a0, a2
                  sra          s11, t1, a2
                  bge          s7, ra, 388f
                  bltu         s9, s5, 393f
                  andi         sp, t6, 386
                  xori         s8, a6, -1521
388:              andi         s2, t5, 1983
                  addi         t6, s1, 622
                  sub          a7, a3, a4
                  andi         a0, s7, 1914
392:              blt          s1, t0, 401f
393:              beq          s2, t2, 408f
                  xor          gp, a7, t6
                  blt          s3, t5, 401f
                  andi         a7, sp, -528
                  sll          s5, a0, s9
                  sub          a2, s3, tp
                  sll          t5, s10, a6
                  beq          s7, s10, 412f
401:              bltu         t6, s11, 405f
                  bltu         s5, a5, 415f
                  sltiu        a7, s5, -531
                  bgeu         a0, zero, 422f
405:              srli         zero, zero, 24
                  beq          s6, t5, 422f
                  nop
408:              xor          a1, s2, sp
                  slt          a6, t5, a0
                  srli         s4, s1, 7
                  sltu         s11, t6, tp
412:              or           s10, s2, s0
                  bge          s3, a5, 428f
                  bgeu         s8, t4, 419f
415:              lui          ra, 824639
                  slti         s7, ra, -913
                  sra          a6, t1, t3
                  sub          s2, a4, a4
419:              auipc        t3, 370318
                  and          s2, t4, t5
                  bge          a1, a7, 430f
422:              bltu         a7, gp, 439f
                  add          s9, t5, s0
                  sra          s10, a3, a3
                  bne          t2, s10, 438f
                  sltiu        s2, a1, 1454
                  sltiu        s10, t6, -967
428:              sub          s9, zero, t5
                  xor          a6, ra, s8
430:              sltiu        a4, t4, 403
                  blt          zero, a0, 443f
                  lui          a3, 336217
                  blt          s1, a7, 445f
                  srai         sp, a6, 3
                  nop
                  srli         t2, s4, 30
                  blt          s11, t0, 441f
438:              slli         t4, a0, 18
439:              andi         t1, s8, 1723
                  slti         t0, s11, -195
441:              andi         s9, ra, -1464
                  sll          a5, zero, t4
443:              sltiu        a0, a4, -397
                  or           a1, a7, s2
445:              sra          t6, gp, t6
                  bge          t5, a4, 451f
                  andi         s7, s0, 614
                  andi         sp, zero, 69
                  xori         t5, s1, 683
                  beq          s0, a3, 453f
451:              xori         a6, s9, -976
                  slli         ra, gp, 11
453:              andi         t2, s1, 1411
                  sltu         s2, t3, s0
                  xori         s6, gp, -1800
                  sra          t3, s9, s4
                  xor          s4, s6, s8
                  bge          a4, s11, 469f
                  sub          s11, s5, a5
                  la           s8, region_0+964 #start riscv_load_store_rand_instr_stream_0
                  sw           t0, 1032(s8)
                  lw           a7, -560(s8)
                  sll          ra, zero, t4
                  lbu          ra, -224(s8)
                  sh           a4, 676(s8)
                  lb           ra, -479(s8)
                  lbu          a0, -762(s8)
                  srl          s4, a5, gp
                  slti         ra, a4, 943
                  lbu          a7, -922(s8)
                  lb           s11, 425(s8)
                  lb           s2, 814(s8)
                  lb           s10, 139(s8)
                  or           a7, s6, s7
                  lbu          a3, 133(s8)
                  srli         t1, s9, 10
                  sub          s10, tp, s9
                  sh           s9, 716(s8)
                  lh           t4, -616(s8)
                  addi         s9, gp, 1117
                  addi         ra, t1, -433
                  xor          t0, s8, a5
                  slt          t3, a4, t2
                  andi         zero, t6, -1112
                  addi         s5, t3, 126
                  sub          s6, s3, t3
                  or           s5, t2, s1
                  lh           t6, -840(s8)
                  lb           s6, 379(s8)
                  lb           a2, 898(s8)
                  lb           t3, 892(s8)
                  srl          s10, s2, zero
                  lhu          a2, -214(s8)
                  lb           s10, -792(s8)
                  lbu          s11, -813(s8)
                  lb           a5, 779(s8)
                  lbu          s6, -824(s8)
                  sb           a2, -715(s8)
                  add          s2, s5, a3
                  nop
                  lhu          s2, -12(s8)
                  lhu          s7, 168(s8)
                  sltu         a6, a7, tp
                  srl          a3, s8, s8
                  xori         t6, a2, -969
                  sll          a5, gp, a6
                  nop
                  sltiu        a3, s0, 1068
                  sub          t1, s8, s0
                  add          s9, t6, s9
                  sb           t2, 919(s8)
                  sb           a1, -27(s8) #end riscv_load_store_rand_instr_stream_0
                  sltu         a4, ra, t0
                  sll          t5, t2, s5
                  or           s7, t6, a6
                  xori         s0, zero, -221
                  beq          s6, s10, 479f
                  beq          s3, s1, 474f
                  nop
                  bge          a0, a2, 474f
                  sub          t3, s7, t4
469:              bltu         s4, s7, 482f
                  auipc        s10, 338883
                  andi         s4, s7, 597
                  bltu         s4, t4, 480f
                  slli         t4, a6, 6
474:              sub          a7, t5, t0
                  beq          ra, a5, 480f
                  srl          t4, t2, s3
                  or           s0, ra, t6
                  auipc        t4, 921443
479:              ori          t5, s5, -1944
480:              slt          t5, tp, a5
                  ori          s0, s1, -1482
482:              sub          s2, t6, t6
                  add          s8, s3, zero
                  xor          s2, s0, s1
                  ori          t0, a0, 202
                  slli         a2, t5, 25
                  bltu         t2, s5, 493f
                  bltu         s7, s9, 500f
                  or           s4, a5, a7
                  slt          t3, sp, t0
                  blt          s2, t4, 506f
                  xori         a3, t6, -593
493:              beq          s7, s10, 511f
                  xor          sp, ra, t0
                  bne          s7, tp, 500f
                  sll          t6, sp, a2
                  xor          a5, s8, s3
                  lui          t4, 388040
                  or           s2, s10, t4
500:              xor          s10, t3, t2
                  or           t3, s6, s7
                  or           s5, s10, s3
                  sltiu        t5, s8, -1763
                  bgeu         zero, s2, 520f
                  bge          ra, ra, 506f
506:              slti         a2, t1, -1138
                  bltu         a3, s0, 525f
                  sll          s10, a4, s9
                  sll          s7, ra, s4
                  addi         t3, s7, -1775
511:              sltiu        a1, s4, 1871
                  sltiu        t2, t6, -1242
                  slti         gp, a0, -966
                  sltiu        s5, s0, -426
                  addi         a3, sp, -850
                  sll          a6, t1, t4
                  blt          a7, s9, 520f
                  andi         gp, t5, -1127
                  ori          s4, s1, -552
520:              bne          a2, s9, 536f
                  sub          s7, s11, t3
                  addi         s8, a1, 1914
                  xori         a1, a0, 1827
                  slti         zero, sp, 674
525:              srai         a0, a2, 16
                  srli         s5, a6, 25
                  bgeu         zero, s1, 530f
                  bge          s6, a7, 540f
                  bgeu         s7, t6, 533f
530:              srl          t3, s9, t5
                  xori         s7, gp, -230
                  srl          a4, sp, s5
533:              andi         t5, a2, -1796
                  bltu         gp, s11, 543f
                  add          t1, s3, a6
536:              bne          s5, t3, 540f
                  sll          a2, s7, t3
                  bgeu         t4, a4, 552f
                  addi         s8, t6, -370
540:              srli         t6, ra, 8
                  slli         t0, a4, 12
                  bgeu         s7, gp, 559f
543:              sltiu        s0, a6, -1359
                  add          s0, t0, a1
                  add          t2, ra, tp
                  slti         a6, s11, -17
                  or           ra, tp, t6
                  sltu         t6, tp, a5
                  auipc        s0, 444003
                  add          t6, t0, tp
                  andi         s10, a3, -962
552:              addi         a5, a6, 425
                  sll          a5, s1, a5
                  xor          a4, s4, s7
                  slti         s6, t3, 805
                  srli         zero, s5, 1
                  sll          s9, sp, a6
                  xor          ra, s9, s4
559:              srli         a3, a3, 8
                  or           a4, a0, gp
                  bne          s11, a4, 568f
                  bne          t4, s9, 565f
                  sltu         s2, gp, s1
                  sll          a0, a2, s6
565:              srai         s10, t6, 16
                  ori          t6, a0, -581
                  or           a5, s3, a6
568:              srl          s6, t2, a0
                  andi         a6, a1, 1173
                  slti         t4, a3, -684
                  slt          a4, s2, ra
                  srli         t2, a0, 13
                  nop
                  slti         t2, t0, 305
                  slli         t3, zero, 3
                  xori         s2, ra, 1567
                  auipc        s4, 338960
                  srli         t0, s10, 15
                  and          s8, gp, gp
                  sltiu        s2, a5, 1713
                  xori         a4, s8, 206
                  sltu         s5, ra, t6
                  and          s6, t4, a6
                  slt          s2, t0, s2
                  bne          t1, a5, 601f
                  andi         s8, s8, 270
                  sub          a3, t2, a2
                  slli         s5, t1, 4
                  bne          a5, s0, 601f
                  and          s9, s3, a1
                  srli         sp, a7, 7
                  bne          a4, s6, 603f
                  srai         t1, a0, 20
                  sub          s11, a2, s9
                  bltu         a4, a6, 610f
                  srl          a3, s11, a4
                  sltu         t1, sp, t5
                  nop
                  sub          sp, a1, s8
                  or           gp, s7, t6
601:              slli         s0, a1, 8
                  srai         t5, gp, 6
603:              andi         t1, s3, -1737
                  auipc        s7, 1019693
                  slti         ra, s5, 778
                  xori         t1, t2, -1442
                  sra          s4, s7, t1
                  bge          a2, s11, 613f
                  add          a6, zero, gp
610:              addi         s8, s4, 511
                  and          t2, s3, s4
                  sll          s11, a7, a5
613:              and          t3, a1, t0
                  andi         s8, s3, 152
                  sltiu        t2, s7, -578
                  addi         t0, s4, 1645
                  slli         s8, s2, 17
                  srl          s9, s3, ra
                  sltu         a5, t3, t1
                  srli         s8, ra, 1
                  sub          a5, tp, a6
                  sub          a1, a7, sp
                  addi         a7, s0, 438
                  ori          s6, s3, -1627
                  bgeu         t5, s6, 643f
                  lui          s4, 222844
                  bgeu         s8, s3, 631f
                  srl          a0, t2, s5
                  or           a7, s11, s0
                  auipc        a6, 348598
631:              bgeu         zero, s10, 645f
                  srli         a5, sp, 3
                  xor          zero, s5, a1
                  sub          s10, tp, s7
                  sra          t0, t1, s4
                  ori          a4, s7, -535
                  srli         t5, t1, 18
                  beq          a5, a5, 645f
                  auipc        t4, 953612
                  xori         a6, t3, -269
                  beq          s5, s9, 645f
                  sltu         s7, a3, a2
643:              sll          ra, a7, gp
                  or           t2, a1, sp
645:              xori         s8, s11, 1992
                  lw           s4, 4(s1)
                  slli         gp, a2, 14
                  xori         t4, s10, 1556
                  xor          s0, sp, t6
                  addi         s1, s1, 44
                  ori          a6, t4, 1203
                  lui          s9, 691399
                  lui          t5, 899430
                  auipc        a2, 894852
1223:             addi x1, x20, 0
1223:             jalr x1, x1, 0
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
.word 0x34614c3c, 0xcdb33e60, 0x4d3dfb73, 0x98bbde1a, 0x4367a15b, 0xc3523d0a, 0xb4cb0ee3, 0x294eb427
.word 0x1bf5a6db, 0xc1d73c03, 0x753e6d9f, 0x105683d1, 0x0653fd9f, 0x78f6e0e0, 0xe7ea4889, 0xe1fb7e8c
.word 0x02b31719, 0xa1922823, 0x02c2d40f, 0xa29565ad, 0x9183f1dc, 0xaf93d57e, 0x16fa539e, 0xe5a6b59d
.word 0x6e96ed0b, 0xeaaad0e9, 0xeabf6cc2, 0x82dac8b4, 0x872fca28, 0x8e1cc244, 0x49f9aa66, 0xf6db3774
.word 0xdd0b9709, 0xcafb0fac, 0xdba8d2a5, 0xc39c47bf, 0xcbcae797, 0x1568edd9, 0xcfa449cc, 0x3e7b4d74
.word 0x8b7f9b8b, 0xf2f7fe99, 0xaac41511, 0xe30a824a, 0xbe39f1c6, 0x1971718c, 0xcc0fb001, 0xa499f6ce
.word 0x098e4fb2, 0xf5fc5c62, 0x4d43c727, 0x5587273a, 0x470eacbc, 0x84d83f08, 0x03b3bc3d, 0xfde69cdc
.word 0x662b52e0, 0x07c60ff0, 0xb2ab2653, 0xe88a1fae, 0x389095fb, 0xe8f45252, 0x49252770, 0x78e566d4
.word 0x5aa26a0f, 0x0bf56e64, 0xa1ea08dc, 0xa0d81065, 0xb8359362, 0xea3a9b9a, 0x672b6797, 0xb0a858cc
.word 0x0cd4a8ee, 0xbed6df4f, 0x0528df3a, 0xf4421ccc, 0xea5a354c, 0xa0d7180e, 0x4e2ff97b, 0x50b2150e
.word 0x4affcf91, 0xc571deab, 0x0cc4c862, 0xc37a7f02, 0x93ca432c, 0x60b0f1af, 0x35c19fb6, 0x4fe4e39c
.word 0x28bc0ec2, 0x3d84ad29, 0x441f245e, 0xd41d5f0b, 0x2db92e75, 0x71cd54cb, 0x983ba30a, 0xe2baf152
.word 0x13292475, 0x1f83235e, 0xe0140336, 0xaac45844, 0x05afd87f, 0xb2346ca9, 0xa54f13d6, 0xd18e36cb
.word 0x9bd4585c, 0xc558e45d, 0x840a52ab, 0xb328ab59, 0xc2e5effd, 0xd67b7be6, 0x7dc9be6a, 0x5a662b0b
.word 0x9503852e, 0x5a79438f, 0x82698684, 0xbff086d8, 0xa743cc0b, 0x19c35e5e, 0x7249390f, 0xdc02285c
.word 0xa066376f, 0x5ff33b58, 0x7c707bba, 0xb90654b6, 0x9b7a704b, 0x0cf7dc91, 0xe2cdef1e, 0xf7fd3886
.word 0x4934f7be, 0xdc895e21, 0x96f6e648, 0x7bec7e9d, 0x2ce5c859, 0x16f4dce5, 0x579b5c1f, 0xcc1fc83d
.word 0x3ca9a174, 0xfce9cd81, 0x459615b2, 0x0ac9a82f, 0x5ef7104e, 0x0b4c7055, 0x9b429d53, 0x8a3991a8
.word 0x5a3d5573, 0x22002e80, 0x842b7f9a, 0x4a232729, 0x55b0735f, 0xcf1bf081, 0x404062ed, 0x7a5e5d48
.word 0x7709c5cf, 0x019ac607, 0x677623e5, 0xd757e4b8, 0x7c577a22, 0x75922edd, 0x10c3f943, 0xe7e0aca0
.word 0x5bcf33f7, 0x9b147236, 0x4e711580, 0xe1763316, 0x71eb31fe, 0xca0246d4, 0x9b359dca, 0x0045f8e2
.word 0x395d398b, 0xd95b8b6a, 0x0bbf7320, 0x539c7f04, 0x9a760a94, 0xacac8234, 0xdd0a2de7, 0x32a3a664
.word 0x4a780838, 0x97bf77f4, 0x38c101fe, 0x5d3e1add, 0x30bdd343, 0x1c0d22ab, 0x80fb2e03, 0xd36a332b
.word 0xb1e40e21, 0x39625112, 0xfe67e5cb, 0x07237cd9, 0xcab86cf5, 0x81412ee3, 0x08f884ef, 0x569f2b5b
.word 0x5d89b204, 0x0910e866, 0x151a81ca, 0xe76b045f, 0x350e89a5, 0x49863cc7, 0x6c0bbb37, 0x33bcf9d6
.word 0x15a66bb2, 0x423a4f9a, 0x643f151e, 0xa7a248b0, 0x7f0da47e, 0xe817eb80, 0x3bd3b0df, 0xebc152e1
.word 0x32dc7ea2, 0x74c5af79, 0x9f170c93, 0xa64f6336, 0x771aebe9, 0xc0f5e3ec, 0x81665d29, 0x5a634dfb
.word 0xca1fcfbf, 0x2e084feb, 0x2dccceda, 0x33134f08, 0x8cb7983b, 0x979897e1, 0xf54ab582, 0xdfeb334c
.word 0x0b7d74fb, 0x77884718, 0x08a49b17, 0x381ac01b, 0xf562f93d, 0xf99b3406, 0x15a18897, 0xaa980abc
.word 0x23ccf626, 0xb55e00b8, 0x918f3f01, 0x58e4df4e, 0x6f395e7c, 0xbc845888, 0x093e79e7, 0xd1e8e818
.word 0x645250b0, 0xe34dee1b, 0x2df38e46, 0x0962115f, 0x3374de79, 0xb9d5fefc, 0xae517ce4, 0x6ee86ee4
.word 0xc2e65052, 0x49fb8403, 0x300484a2, 0xa5cae5eb, 0x2593cf17, 0x8cd3183b, 0xe0ac1a3f, 0x6ab01472
.word 0x68351b24, 0x2d71bbdc, 0x9982d9b0, 0x8760719d, 0x45eb7344, 0xdd5a2572, 0x81e47576, 0xb0804c26
.word 0x9d62331c, 0x7b8b167b, 0xcda94302, 0xe335aa99, 0xffe93124, 0x1f039085, 0xe472902d, 0x845e2974
.word 0xd4f3ba85, 0x1fde6181, 0x57288b76, 0x7856b7aa, 0x9d46f9e3, 0xa685a7a1, 0x08dbfbac, 0x3405af0d
.word 0x78564328, 0x8c8290ff, 0xd7ab38f2, 0x7aa05909, 0xe1ebec50, 0x46d80cc4, 0x1d64cb80, 0xed3d2285
.word 0x625092bb, 0xb3a66384, 0xb9ba5b63, 0x7ceb0f16, 0xaa496c7e, 0x9e30ac2f, 0xe1a5c887, 0x36e6fb9f
.word 0x283fc591, 0x689b32a0, 0xfe2c0e14, 0xf3946f18, 0x2debe849, 0x6a5687b8, 0xab4ad7e5, 0xbc31b758
.word 0xe8792f54, 0x0619bd14, 0x5cc47877, 0xdedfd2fa, 0x728685a7, 0x0628232d, 0x525e2731, 0x325c0770
.word 0xfc0b51fe, 0x25455f36, 0x3fe10f0b, 0xe4f66502, 0x44fd96ba, 0xd20de606, 0x973b6398, 0x0bf472c1
.word 0x0b3eacea, 0x58c8b1fa, 0x298c9407, 0x30514451, 0x6dc59d77, 0xb62f3e07, 0x19200f75, 0x4f355c08
.word 0xef7241bb, 0x50e222d8, 0x1e86526c, 0x8329e0ca, 0xacbae6d5, 0x708d099f, 0x0cd8f1b2, 0x12ae9c22
.word 0x297c4da1, 0xd36fbdf2, 0x9d5148bf, 0x5d9c3295, 0x2d54bac1, 0x452df624, 0x2e006667, 0x6683c997
.word 0xa43508eb, 0x70013ca0, 0xa710b30a, 0x738b22f8, 0x047d553b, 0x0b44ee19, 0xa7e54e78, 0x8b062ab1
.word 0xa9ed2a51, 0x8da29c65, 0x5717597d, 0xa24bd659, 0x300b8b3c, 0x17cd73f4, 0xeed411e3, 0xe220746c
.word 0x1677cb96, 0x77b73c3f, 0xbd51eedb, 0xa25295bf, 0xbf6b9e48, 0x1b9d2ad9, 0x0f6a12b9, 0x166e35d9
.word 0x4692eeb3, 0x99e78a33, 0x8db80261, 0xd1084acb, 0x54ea9923, 0x44e70c8e, 0xf28ec240, 0x30cb43fe
.word 0x3e158213, 0x3c705b7f, 0xfc1cf07e, 0x0c71f2d9, 0xdfe88e76, 0x550eb557, 0xb8368ba8, 0xb5672b2e
.word 0xcfd35ea7, 0xd537a14f, 0x06494d71, 0xe4c726b3, 0x88de1fd1, 0x34d2d5ac, 0x75680bbf, 0x9ddfdbce
.word 0x08d0cd80, 0xc90a4a44, 0xadc2c38a, 0x3db1d31c, 0xf8cfe265, 0xb0832349, 0xbc75fbdc, 0x03df1329
.word 0x1d65785d, 0x7a72562d, 0x4e929008, 0x1d85f92f, 0xfe79a0f3, 0xb72cec49, 0x61cd8c00, 0x3d17e621
.word 0xb4224d5b, 0x6febfd6b, 0xad815948, 0x49e3f8b9, 0x5a4f5a43, 0xc6ccd51b, 0x3cf8ed53, 0x81caf629
.word 0x8b2655c0, 0x9ebc36f4, 0x0caf45e9, 0xc9097a46, 0x8cb63296, 0x19142f5b, 0xa3e9f775, 0x6a028611
.word 0x24115b0d, 0xfbcc5b63, 0xe4ba295a, 0xdffe6c71, 0x3242035d, 0xa3e3e6d0, 0xfe8f38b4, 0x2ee0604b
.word 0x84f702ce, 0x15f0b3bc, 0x328e19f4, 0x20ba28b7, 0xda190981, 0x9f24f250, 0x5e014424, 0xd3353c33
.word 0xab0ce4c9, 0x9e8bc9de, 0x635e3d8f, 0x95b17c40, 0x3cb0c753, 0x4b734694, 0x155be65f, 0x041a0d57
.word 0x7a246fbc, 0x9d620c1f, 0xaad173e6, 0xce69dd1c, 0x6f241702, 0xf5bf3187, 0x092d0ac3, 0x689fdc2f
.word 0xaf99c6d6, 0xe18445a8, 0x5b2baad0, 0x65bd9c92, 0x8e017c1d, 0x10586fb3, 0xad91c09f, 0x4844d171
.word 0x779ef5b1, 0xd7b14934, 0x36ef9e04, 0x6581b287, 0xe67c8a10, 0xac6eafab, 0x29ee1049, 0x2a6f7765
.word 0xc903c92a, 0x15e94bb7, 0x2b91a82d, 0x7193ae47, 0xc7c2c23e, 0xb56a1be6, 0x201e2715, 0xb59de3c8
.word 0x509c5170, 0x5217c997, 0x20c3d851, 0x6f92adb9, 0xdec89fb3, 0x1ab4def2, 0x6e973339, 0x8e9d1f0e
.word 0x91251b4f, 0x8d4412b8, 0xb67c9a12, 0x2830202f, 0x368a0d60, 0x7567b0aa, 0x14603a05, 0x2dfde376
.word 0x68dc2120, 0x6b30fb87, 0x4b518bca, 0x503d9a9a
.section .region_1,"aw",@progbits;
region_1:
.word 0xc7786b04, 0x94143b01, 0x79a51a7c, 0x6e7f48e6, 0xafed1f8e, 0xa0789aba, 0x7fc6c518, 0x974155f8
.word 0x86d0581b, 0x9251b404, 0xbbd135b9, 0x148005af, 0x7f4e4bbc, 0x6b7c0cfb, 0x74f60c2d, 0x3274001a
.word 0xace7695a, 0x04907373, 0x1c3353f7, 0xa38b6fc5, 0xbdf7bdb8, 0xe9d8f97c, 0x1be18140, 0xf6e1c7dd
.word 0xe7ce04da, 0xc9920703, 0x35e369b9, 0x1bd69fa3, 0x16fb9e73, 0xad29e63b, 0xeab129d6, 0x5c7cb7bc
.word 0x4afcd8d2, 0x0c4ba1c9, 0xd57f0ec1, 0x015cf9ed, 0xb91c9e7c, 0xb0e908f3, 0x51ffd96b, 0x84211adf
.word 0x286be6a8, 0x57bbbeb7, 0xbd88950b, 0x6892c909, 0x14017893, 0x559dea60, 0x230a92bc, 0x1435d01d
.word 0xe4c32ca1, 0xa9ac988d, 0x33077c36, 0x27bf295b, 0xc48b00b6, 0xd01d86ee, 0x1967bb0f, 0x117dda40
.word 0xc42094bc, 0xd8516045, 0x43ea7239, 0x398a6a2a, 0x194debee, 0x7a683cca, 0x915c931d, 0x0fb18283
.word 0xbc8f17dc, 0xe8569c35, 0x1d87be27, 0x12529cdc, 0x41aca51e, 0xe270cb6f, 0x31d5f8c1, 0x83014e16
.word 0x954af825, 0x4ef51e46, 0xe0665a50, 0xba974ae4, 0x430311f2, 0xbeef0919, 0xcacbab60, 0x064b9ea7
.word 0xe723a146, 0x16d68968, 0x883e72c1, 0x76e0bf8e, 0xe354eaa3, 0x4d417e51, 0x69b8cbb4, 0x99b8c2fa
.word 0x4dde99b6, 0x421f15d3, 0x30c37f50, 0x53987a39, 0x4b3a70b4, 0x7ff52c5a, 0xaeb5ae13, 0x049b7f9a
.word 0xde39096e, 0xf317a23b, 0xba7ac9e8, 0xfb8ea264, 0x2f983743, 0x8c5d0753, 0xe752c06c, 0xe1074d9e
.word 0xa48e766c, 0xbaaba84d, 0xee1c4d9a, 0xf7fa86c0, 0x39b67dd4, 0xaa81a947, 0xcb9b5124, 0xc6160276
.word 0x5f230e0a, 0x10262906, 0x989d1ad8, 0x7be4c4b8, 0xfd1c17f9, 0x37aea18b, 0xf6f5b36e, 0x8a2197ba
.word 0x7937ce8d, 0xf57dd2c5, 0x053a34a6, 0xe3e5f2ae, 0x75693cb9, 0xb98c8e69, 0xc844e117, 0x245d6c9f
.word 0x61c967ba, 0xf33454b2, 0x545d42a8, 0x3ddd2505, 0x142ec2d8, 0x6be5c00e, 0x27e65d02, 0x0264dae1
.word 0x6b5f1845, 0x3b5bace7, 0x18a6139c, 0x1a32ada9, 0x7d26c57a, 0xbdd12ba1, 0x7183228b, 0xf8e8227e
.word 0x9311bb2c, 0xb2a99af9, 0x648ecf94, 0xda7830a6, 0x2d7840cd, 0x547344ac, 0x5dc6ff93, 0x68c23a8c
.word 0xa2012c8e, 0x6384f2df, 0xa25c1385, 0x3d14d61a, 0xde3494e5, 0x9e08068c, 0xf507ccc5, 0xebe91e7e
.word 0xdde9a907, 0x200a9dcc, 0xa80ca1a2, 0xb4f7505e, 0x1a42d982, 0x0e761d6f, 0x307e78c2, 0x49ab73e1
.word 0x89b72c97, 0xc0f83576, 0x70c182a7, 0x23b1b020, 0x342ecb1e, 0x5ed70c7d, 0xec63088c, 0x83a2b010
.word 0x14f0649e, 0x4d2e44f7, 0xe6120109, 0x408d3a07, 0xc07c6742, 0x1ca0e0dc, 0x82da81e3, 0x19c53167
.word 0x78498486, 0x02a44f3b, 0xa116a43b, 0xb2042dc8, 0x743f386f, 0x4bdc6662, 0x549ff41e, 0xf96b5ba3
.word 0x89d5422e, 0x99a87f3c, 0xaefdfa91, 0x5ecb38e8, 0xb703d1a8, 0xa6454b24, 0xcd68fbde, 0xb056d671
.word 0xa37352ae, 0xdfae6abf, 0xac2ff723, 0x444fbbeb, 0xcf816012, 0x7557bed2, 0x4738298e, 0xd549885e
.word 0x1a1574fa, 0xb4b116fd, 0x45a71d3d, 0x54994d0d, 0x06835afe, 0xe91d0b9e, 0xe40a30ec, 0x9967f3eb
.word 0xc0f63f13, 0x061fe87e, 0x2153bfb3, 0x9e0c862c, 0x7024a98d, 0xe272d5a3, 0xa5e3ed6a, 0x614e40e4
.word 0x55d3ea97, 0x8d5f48f1, 0xa2859a02, 0x147c1741, 0xcfdcdaa2, 0xdd87a8ac, 0x7386e76c, 0xa98e97a5
.word 0x78efe903, 0xf02f9f9f, 0xfadcf592, 0x6328ce57, 0xfc77cdf4, 0x2262214c, 0xb3eb42d9, 0x07ed77fd
.word 0xdbf5f2e3, 0x70bfca4a, 0xb157e0ec, 0x7165bd2f, 0xc1f78b8b, 0x2a64c189, 0x9a58fca4, 0x3f5f1222
.word 0x5e9c0b7e, 0x2886822c, 0x01f749dd, 0xc6ee2a5a, 0xb4dc06de, 0x8be8fe2c, 0x3dd509b5, 0x08bf3107
.word 0xaf09803a, 0x73ed4fac, 0x2fb8cd6a, 0x0e08e4e8, 0xd75bed5e, 0x65015ac2, 0xc77a7ead, 0x03b7d57d
.word 0xea82b8a2, 0x085da95e, 0x46450c7d, 0x416b3e6e, 0xd9e4e2bd, 0xcb2cbf73, 0xfdd07f2a, 0x3f55e7d5
.word 0x94b9a94b, 0x7d72fd13, 0xbcdd4757, 0x552dc8a1, 0xa3536fe8, 0x6318c327, 0x18f1f1c6, 0x3eee9c30
.word 0x3e772e88, 0x2a2ba68c, 0x3961dd29, 0xfbbfce9c, 0x7382e3ce, 0x713f76af, 0x3d6d0e21, 0xdc118431
.word 0xb8cbdadb, 0x7df0c9c8, 0x06d78199, 0x8a53c371, 0xb925dbd7, 0x9942e5a2, 0x980c92b9, 0x653a6840
.word 0x6d1c19f1, 0x90749b61, 0x1a539b55, 0x42fecff9, 0xafc15235, 0xae73ffed, 0x1efd0f0d, 0xdf299cea
.word 0x4532752c, 0x9ab4a211, 0x3fa4118d, 0x1f71a487, 0x1c31f2c8, 0x704a31de, 0x8ff90056, 0xeb0e0f8e
.word 0x265fb67c, 0x2ebc7d2e, 0x43687f0c, 0xed98c9d3, 0x4a30ba6e, 0x349ab31e, 0x15924a74, 0xf49ac1c7
.word 0x94f61384, 0x42c62bd2, 0x7e7c2569, 0xd54a1b6b, 0x465786ac, 0x28bbdebb, 0xa48cdc50, 0x949a74ab
.word 0x8a573cfe, 0x6191027b, 0xcdc161a2, 0xa7585e62, 0x936f44bf, 0x40ee3c01, 0xcdb9a6f8, 0x96f50093
.word 0xb4e4cc9a, 0xea8c1912, 0x730154d0, 0x2f5d2507, 0xaf3cac31, 0x32040c35, 0x93afb97a, 0xa99f5fed
.word 0xafede4b0, 0xa15611b3, 0x468f5cc1, 0x90518a85, 0x87903070, 0x5f1f7168, 0x3eb06fb0, 0xbdfdf0df
.word 0x27bdabd2, 0x2ebcbfaf, 0x67771809, 0x2cf3a617, 0x0da13506, 0x72e62ca2, 0x7cba00ab, 0x519647c3
.word 0x654049ee, 0x3d015ee2, 0x1795b963, 0x128625c2, 0xfe218d23, 0x5fe10013, 0x44de6dd1, 0xe14aa7ea
.word 0x77972b34, 0xce4be19e, 0xbf34fe33, 0xa10bdc7e, 0xb5b18598, 0xdf03e71c, 0xb2468045, 0x70dc552a
.word 0x95f7906a, 0xbf0d9442, 0xa3fce310, 0xd5547625, 0x2dd2a841, 0x1dca14cb, 0x79acdfca, 0x58e53d6b
.word 0x5d402e83, 0x1224a50d, 0x94a593b1, 0x046e88a7, 0x08d1aae3, 0x6fa8a20f, 0xd49f6df4, 0x1b0705d2
.word 0x11686139, 0x6e2d4fb0, 0x5ddddbac, 0x75beb244, 0x5bc9bf2d, 0xb3605c6a, 0x065eda3b, 0x93b614f3
.word 0x23a15d86, 0xa3275bc1, 0xb1ea44cf, 0x080ed974, 0x0472750b, 0x8c7b12ce, 0xcd49b3ab, 0x17e15dc7
.word 0xa56e787b, 0xbe75c912, 0xa34f286c, 0x7455f23a, 0x3a59afb8, 0xdbe0d820, 0xe60da210, 0xd5f22211
.word 0xebf5c0f1, 0x2293e398, 0xc45bc46e, 0xe448fa21, 0xd8dc262d, 0x095fad5f, 0xe577a823, 0x15d23021
.word 0x743b3d31, 0x869c1bf6, 0xe758d154, 0x2472a792, 0x7d4370ee, 0x568d1b8c, 0x88f392d0, 0xca346943
.word 0x1c205c64, 0x6b82c155, 0xf5fb595b, 0x0c48d950, 0x4349d13a, 0xd448c1c6, 0x79a17237, 0x3177267c
.word 0x9ed5347d, 0x9089e5ce, 0x7d4b1ad9, 0x0e7a877e, 0xe952977f, 0x7b0560d9, 0xd8e5b22f, 0xa6015b85
.word 0x6c10ec63, 0x02dc961c, 0x7aba0e7a, 0xfaa81257, 0x5d918102, 0x5324abc9, 0xe1abd4b7, 0xf56eab16
.word 0xb8ced737, 0x50bed55c, 0xe55b2c85, 0xc7491abe, 0x15217f03, 0x066c104b, 0xf45f7fee, 0xee995e41
.word 0x6afd9624, 0x536a46c1, 0xa69aba37, 0xa43fcc91, 0xe91d920a, 0xa0fa6083, 0x29e89541, 0xdcfd824c
.word 0xd63cc5bf, 0xa37363b2, 0x20a7782c, 0xc5f2c6d9, 0x48a4570d, 0x3a9619f0, 0x9ff011bd, 0x882112e7
.word 0xb48da89f, 0x10e69026, 0x0fadd27c, 0x04076ed9, 0x41273167, 0x1bfa60f6, 0x34d3a84f, 0x054a2b6f
.word 0x0dbee8a3, 0x114244df, 0x22ee3b50, 0xdd72bbc0, 0x663f1ac7, 0xa14d1a75, 0xbe4f5b41, 0x4a4884e5
.word 0x59d002e1, 0x10da028b, 0x1d069ba2, 0xc32e707b
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
                  add x4, x9, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x16, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x16, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x16, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x16, x7, ecall_handler
                  li x7, 0x1
                  beq x16, x7, instr_fault_handler
                  li x7, 0x5
                  beq x16, x7, load_fault_handler
                  li x7, 0x7
                  beq x16, x7, store_fault_handler
                  li x7, 0xc
                  beq x16, x7, pt_fault_handler
                  li x7, 0xd
                  beq x16, x7, pt_fault_handler
                  li x7, 0xf
                  beq x16, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x9, x4, zero
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
                  add x9, x4, zero
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
                  add x9, x4, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x9, x4, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x9, x4, zero
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
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x9, x4, zero
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
