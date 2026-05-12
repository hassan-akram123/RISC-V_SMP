.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xfb3dd0af
                  li x3, 0x0
                  li x4, 0x2
                  li x5, 0x4
                  li x6, 0xf04c8a74
                  li x7, 0x0
                  li x8, 0xf9d19821
                  li x9, 0x80000000
                  li x10, 0x2f4fcc50
                  li x11, 0xfef80fbd
                  li x12, 0x80000000
                  li x13, 0x4
                  li x14, 0x7f6d2cdb
                  li x15, 0xe8a520c5
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xff5b3797
                  li x20, 0x80000000
                  li x21, 0xfada07b9
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xd7cce173
                  li x28, 0xff948f6e
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x0
                  la x2, user_stack_end
main:             la           a6, sub_1
                  sra          a5, s1, t0
                  ori          s8, a4, 1218
                  auipc        t5, 358167
                  addi         a6, a6, -198
                  bge          t1, s0, main_j2 #branch to jump instr
                  xor          t1, s6, zero
                  sltu         s9, s10, a1
main_j2:          jalr         ra, a6, 199 #jump main -> sub_1
                  la           a3, region_0+83 #start riscv_load_store_hazard_instr_stream_0
                  nop
                  lbu          t5, -44(a3)
                  lw           t5, 33(a3)
                  sb           t5, 10(a3)
                  sra          a6, sp, a2
                  sltu         s4, a4, t3
                  sb           gp, 10(a3)
                  lbu          t4, -14(a3)
                  lhu          t5, -41(a3)
                  lb           ra, -41(a3)
                  addi         t4, a4, -946
                  lb           a5, 62(a3)
                  sb           t1, 50(a3)
                  sb           a3, 8(a3)
                  sh           a2, 19(a3)
                  ori          t2, a0, -1378
                  lhu          gp, 19(a3)
                  sub          a0, a1, s8
                  lh           a1, 19(a3)
                  lb           s5, 59(a3)
                  lhu          t5, 13(a3)
                  sb           s4, 14(a3)
                  lhu          s0, 13(a3) #end riscv_load_store_hazard_instr_stream_0
                  la           a1, region_1+1365 #start load_store_instr_stream_1
                  la           s11, region_1+1269 #start load_store_instr_stream_0
                  la           t1, region_1+1164 #start load_store_instr_stream_2
                  lb           t2, -126(s11)
                  la           a7, region_1+1234 #start load_store_instr_stream_3
                  lh           s2, 64(t1)
                  lb           a2, -424(a7)
                  lb           s1, 16(a1)
                  sb           s2, 305(a7)
                  lh           s1, 25(a1)
                  lbu          a6, -2(t1)
                  sb           s6, 721(a7)
                  lb           t0, -33(t1)
                  lbu          t3, -459(a7)
                  sb           a6, -79(a7)
                  lhu          a6, -7(s11)
                  sb           t4, 61(t1)
                  sb           s4, -45(t1)
                  sb           a6, -3(a1)
                  lb           s8, -52(a1)
                  lb           s9, -583(a7)
                  lhu          s5, 49(a1)
                  lbu          s9, 51(t1)
                  sb           t2, -382(a7)
                  sb           s0, -155(s11)
                  sb           s2, 488(a7)
                  lbu          s2, 28(a1)
                  sb           s0, 162(s11)
                  lh           t0, -31(a1)
                  lb           tp, -19(t1) #end load_store_instr_stream_2
                  lbu          s3, 6(a1)
                  lhu          tp, -157(s11)
                  lbu          a6, -40(a1)
                  sb           s9, -26(s11)
                  sh           t0, 454(a7)
                  sb           s2, -59(a1) #end load_store_instr_stream_1
                  lb           gp, -1159(a7) #end load_store_instr_stream_3
                  lbu          s5, -18(s11) #end load_store_instr_stream_0
                  la           s5, region_1+440 #start load_store_instr_stream_1
                  la           t2, region_1+372 #start load_store_instr_stream_2
                  la           ra, region_1+1069 #start load_store_instr_stream_0
                  lbu          tp, -4(ra)
                  lh           a2, -7(ra)
                  lb           a1, 15(s5)
                  lh           s8, 9(ra)
                  lbu          a0, -11(s5)
                  lhu          a1, -4(s5)
                  lb           s2, -102(t2)
                  lb           s0, 0(ra)
                  sb           t6, -2(s5)
                  lb           t1, -73(t2)
                  sw           t2, 4(s5)
                  sh           s6, -14(s5)
                  lb           s9, 1306(t2)
                  lbu          s2, 13(ra)
                  sb           a2, -1(s5)
                  sb           s6, -1(ra)
                  lbu          t3, 9(s5)
                  lbu          t5, 8(ra)
                  sw           a4, 1248(t2)
                  sb           zero, 4(ra)
                  lbu          s2, 607(t2)
                  lbu          a5, 363(t2) #end load_store_instr_stream_2
                  lb           t0, -15(s5)
                  sb           zero, 1(s5) #end load_store_instr_stream_1
                  lbu          gp, 2(ra)
                  lw           s8, -5(ra) #end load_store_instr_stream_0
                  la           ra, region_1+1083 #start riscv_load_store_hazard_instr_stream_2
                  lb           s4, 365(ra)
                  lbu          s11, 452(ra)
                  sb           a5, 452(ra)
                  nop
                  slt          s8, t0, t5
                  lb           a2, 314(ra)
                  sb           s3, 314(ra)
                  srli         s9, t6, 14
                  addi         t0, t3, -1302
                  srli         a0, s9, 18
                  lbu          a0, 314(ra)
                  lb           s10, 314(ra)
                  lhu          a0, 679(ra)
                  lbu          s2, -920(ra)
                  lbu          s2, 576(ra)
                  lb           a3, 576(ra)
                  sb           a0, 576(ra) #end riscv_load_store_hazard_instr_stream_2
                  la           s10, region_1+269 #start riscv_load_store_rand_instr_stream_1
                  sb           s0, 143(s10)
                  sb           s1, -225(s10)
                  auipc        gp, 673511
                  lhu          t2, 27(s10)
                  or           a3, a2, tp
                  sb           a5, 43(s10)
                  lb           s5, -125(s10)
                  srli         a7, s0, 30
                  sb           a0, -210(s10)
                  lh           s3, -149(s10)
                  sb           s10, 139(s10)
                  sb           s5, 196(s10)
                  andi         ra, a0, 872
                  xori         a6, s2, -420
                  sb           gp, 31(s10)
                  slt          s5, t2, sp
                  sra          tp, tp, s8
                  sb           zero, -90(s10)
                  xori         s1, s0, -1545
                  lh           a2, 59(s10)
                  sltu         s8, t5, s3
                  lui          gp, 692562
                  slli         t6, t3, 6
                  nop
                  andi         ra, t1, -670
                  lbu          gp, -40(s10)
                  srl          a6, s1, a4
                  sb           s9, 208(s10)
                  xor          t1, s4, a4
                  sh           t3, 67(s10)
                  sb           zero, -237(s10) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_1+218 #start riscv_load_store_hazard_instr_stream_1
                  srl          s3, tp, tp
                  lhu          tp, -16(s2)
                  lb           gp, -16(s2)
                  sh           s10, -16(s2)
                  sltu         t1, ra, a6
                  lbu          s1, -16(s2)
                  sltiu        a2, s3, 1532
                  lbu          t6, 15(s2)
                  ori          zero, sp, 980
                  sb           s5, 15(s2)
                  lbu          t3, 15(s2)
                  lb           a7, 15(s2)
                  lh           s3, 4(s2)
                  ori          t4, sp, -1208
                  sub          t6, a7, s5
                  lh           tp, 4(s2)
                  lh           t3, 4(s2)
                  lhu          ra, 4(s2)
                  lb           a4, 4(s2)
                  lb           a7, 4(s2)
                  lh           zero, 4(s2)
                  lb           a2, 4(s2) #end riscv_load_store_hazard_instr_stream_1
                  la           s11, region_1+502 #start load_store_instr_stream_1
                  la           a7, region_1+1286 #start load_store_instr_stream_0
                  sb           sp, 11(s11)
                  sb           a1, -1108(a7)
                  sb           t1, -4(s11)
                  lb           s1, 15(s11)
                  lb           t3, -11(s11)
                  lh           a3, 24(a7)
                  lw           s1, 62(a7)
                  sb           t4, 145(a7)
                  lb           s4, -568(a7)
                  lhu          s5, -6(s11) #end load_store_instr_stream_1
                  lb           s5, -643(a7) #end load_store_instr_stream_0
                  la           t4, region_0+1529 #start riscv_load_store_rand_instr_stream_0
                  lhu          s3, -1125(t4)
                  auipc        s4, 226503
                  sltiu        tp, s8, -877
                  andi         a0, t4, -1506
                  sltiu        gp, a0, 1039
                  lw           a1, 435(t4)
                  sh           s5, -489(t4)
                  sltu         s9, s9, s5
                  lbu          s11, -1423(t4)
                  sb           s9, -283(t4)
                  srl          a5, t6, tp
                  sb           a1, -134(t4)
                  lb           a6, -802(t4)
                  slti         tp, s1, 345
                  xori         t5, s11, 1469
                  ori          s5, a5, 135
                  ori          a2, a3, 489
                  sub          s5, t0, s11
                  or           a7, s10, zero
                  sltiu        s8, a0, 180
                  lbu          a3, -1482(t4)
                  sb           a7, -876(t4)
                  xori         t1, s7, 959
                  andi         a7, a1, -879
                  sh           t4, 389(t4)
                  lbu          s1, -837(t4)
                  lb           gp, 372(t4)
                  srli         a5, t5, 8
                  lbu          a5, -924(t4)
                  sb           t1, -1173(t4)
                  lbu          s9, -1518(t4)
                  sb           s1, -1290(t4)
                  lbu          ra, -603(t4)
                  srl          s8, a4, s3
                  lb           zero, -1310(t4)
                  sh           zero, -1441(t4)
                  sub          a4, t0, s7
                  lw           s2, -17(t4)
                  lb           zero, -1326(t4)
                  lb           gp, -1066(t4)
                  lbu          s1, 28(t4)
                  auipc        t3, 315114
                  sub          s4, s9, a4
                  sra          a6, s1, s0
                  sub          s0, s3, a0
                  lb           s3, 335(t4)
                  sh           t1, -527(t4)
                  sb           s3, -250(t4)
                  lh           s1, -675(t4)
                  lbu          s9, -631(t4) #end riscv_load_store_rand_instr_stream_0
                  slli         t0, a6, 27
                  bne          tp, sp, 17f
                  bgeu         a6, t6, 16f
                  sll          a6, t3, s0
                  sltiu        t2, t5, 1343
                  sltiu        ra, s6, -1332
                  sub          a2, s10, a7
                  sltu         a1, s9, s0
                  slt          a2, a3, ra
                  xor          s8, ra, a7
                  sra          t0, a0, a2
                  blt          s7, s8, 23f
                  or           a6, sp, a2
                  bltu         zero, a1, 18f
                  bltu         a3, s10, 33f
                  xor          s10, s0, s2
16:               lui          a0, 420012
17:               addi         t2, a2, 1987
18:               lui          a1, 485439
                  nop
                  addi         a3, t2, -1866
                  bge          t2, a3, 36f
                  slti         a2, s7, -885
23:               add          s3, a7, a1
                  slti         s5, s3, -1352
                  bne          zero, s11, 40f
                  sltu         zero, s0, s5
                  ori          ra, s6, -1266
                  srli         ra, s9, 4
                  slt          s11, t6, t6
                  sltiu        gp, a6, 649
                  srl          t0, s2, t0
                  xori         s0, s7, 594
33:               andi         s5, a2, -221
                  srli         s1, s0, 13
                  srli         a1, s3, 5
36:               slti         a7, t0, 850
                  slti         a2, s6, -9
                  add          ra, t0, t1
                  bge          t1, s8, 40f
40:               and          s2, gp, s6
                  sll          a5, t6, s2
                  addi         s8, s4, -1973
                  slli         a6, a6, 2
                  slt          a2, s6, s1
                  add          a2, t2, s5
                  ori          s11, a1, 1788
                  sltiu        t0, t1, -134
                  andi         a3, gp, 1887
                  slli         t1, s7, 3
                  sltiu        ra, t0, 812
                  or           t4, tp, gp
                  addi         a3, gp, -872
                  lui          s11, 964702
                  slti         s2, a1, 1861
                  xor          gp, s1, s1
                  ori          s10, a2, -964
                  auipc        a1, 341780
                  xori         s8, ra, 964
                  slti         a1, zero, -1786
                  slt          s11, a0, s7
                  bltu         s11, zero, 80f
                  srl          a3, s0, t1
                  slli         s8, s11, 6
                  andi         t5, a5, 1593
                  lui          t6, 902677
                  slt          gp, a4, s11
                  andi         a2, t3, 632
                  sra          a6, zero, s4
                  beq          t0, ra, 89f
                  srli         a4, tp, 16
                  lui          a2, 759058
                  xor          t0, tp, a2
                  beq          t2, s11, 87f
                  beq          s11, t1, 93f
                  andi         s2, s0, -180
                  slti         s0, a2, -82
                  sra          a6, a4, t5
                  andi         s10, s3, 120
                  sub          t1, s2, s1
80:               add          s4, s4, a6
                  xori         t1, sp, -575
                  bgeu         s10, ra, 100f
                  sra          gp, t1, t4
                  bltu         t5, s3, 90f
                  slt          t3, a1, s9
                  bgeu         a0, s11, 100f
87:               slli         t6, t2, 13
                  ori          s0, zero, -227
                  sra          s1, t1, tp
                  and          t4, s10, ra
                  sra          t5, t1, s4
                  slt          t1, a3, s3
                  auipc        t6, 41220
                  la           t2, sub_1
                  addi         t2, t2, -358
                  srai         tp, s0, 20
                  bge          a0, a6, main_j1 #branch to jump instr
                  lui          t6, 44575
main_j1:          jalr         ra, t2, 359 #jump main -> sub_1
89:               sltiu        a7, s5, 258
90:               sub          a1, a5, t3
                  sll          zero, a4, s7
                  sll          a2, ra, a2
93:               bgeu         a2, sp, 111f
                  andi         a7, s3, -21
                  sub          s9, t5, s0
                  andi         t6, s1, 271
                  nop
                  bgeu         s4, sp, 103f
                  nop
100:              bltu         s6, tp, 104f
                  and          a1, gp, t0
                  bne          t4, a4, 106f
103:              slli         t5, gp, 22
104:              ori          a2, t0, 468
                  addi         t3, a0, 483
106:              addi         a3, s2, 930
                  addi         tp, a3, 1752
                  bge          a0, zero, 127f
                  sra          a7, a0, s9
                  srai         t1, gp, 22
111:              srai         zero, a2, 27
                  xori         s9, a1, -239
                  bgeu         t0, a3, 127f
                  slli         s10, s1, 5
                  addi         zero, a5, 1691
                  xori         a3, s8, 1034
                  bge          s3, s7, 126f
                  sub          t3, s10, a4
                  slli         s11, t6, 19
                  sra          s5, t1, t5
                  or           gp, gp, a4
                  xori         a4, t0, 106
                  sltiu        a0, a6, 586
                  or           a3, sp, a4
                  addi         a3, a4, 560
126:              sltiu        a5, s4, 1664
127:              beq          s6, t0, 132f
                  slli         s9, s1, 23
                  lui          s1, 336908
                  nop
                  bgeu         s3, t1, 133f
132:              slti         s3, a6, -523
133:              sub          t5, t5, s11
                  sub          s3, s11, t0
                  slt          s1, a6, t2
                  add          s3, sp, gp
                  andi         ra, s3, -394
                  bgeu         t0, s7, 144f
                  andi         t2, s5, -1721
                  sra          a1, s5, s10
                  bge          a1, t3, 150f
                  sltu         s8, a7, a2
                  lui          a0, 584632
144:              andi         a3, s9, -1880
                  slti         a3, a0, -1175
                  nop
                  and          s4, a4, s5
                  blt          t4, s7, 168f
                  srai         s9, ra, 19
150:              or           a4, a7, s11
                  addi         s4, a4, 969
                  or           a6, a5, t1
                  slti         s5, s2, 123
                  sub          t1, t2, a3
                  or           a1, s9, a6
                  sltu         a4, gp, gp
                  sra          a7, sp, s0
                  sub          t0, t1, t5
                  lui          a1, 1034222
                  xori         t6, s1, -388
                  nop
                  beq          ra, s9, 164f
                  bge          s4, a5, 176f
164:              or           a1, a3, zero
                  slt          s10, s8, a7
                  sltiu        zero, t2, 1755
                  sltu         t6, a7, s4
168:              sub          gp, s9, sp
                  beq          s11, a5, 188f
                  xori         s4, sp, -1204
                  xori         a5, a6, 1626
                  nop
                  bgeu         s3, sp, 182f
                  and          a1, t3, t2
                  and          t2, s3, s6
176:              bge          sp, a6, 191f
                  srai         a5, a5, 14
                  bgeu         t4, t1, 197f
                  sra          t5, s0, t3
                  bge          t2, tp, 185f
                  xori         a0, a2, 1870
182:              andi         t4, s11, 851
                  slt          a7, t5, a2
                  and          s9, s9, t1
185:              sll          s3, ra, s1
                  bne          s5, a0, 202f
                  sltu         t4, t5, t2
188:              xori         s10, s5, -1447
                  sra          t4, s5, s0
                  sra          t4, a2, a6
191:              bltu         s8, a4, 203f
                  auipc        a5, 89301
                  ori          s4, s1, 1215
                  xor          s0, a0, s1
                  bltu         sp, a6, 200f
                  xor          s0, s4, sp
197:              beq          a2, gp, 215f
                  slli         t5, s7, 2
                  ori          a4, a7, 938
200:              xor          a6, a4, a2
                  sub          a6, s3, a4
202:              add          ra, s11, s6
203:              auipc        s2, 174768
                  bge          a0, s10, 205f
205:              addi         s4, s7, 926
                  nop
                  beq          s3, zero, 213f
                  blt          a2, t0, 222f
                  and          a4, tp, a7
                  slti         a0, s3, -73
                  srli         s9, a3, 24
                  sltu         s3, s7, t1
213:              beq          zero, s4, 227f
                  sltiu        t6, t4, 380
215:              andi         s8, s10, -548
                  slti         t3, s2, -2027
                  bgeu         a2, a1, 221f
                  add          a2, s5, sp
                  sltu         zero, t0, s5
                  xori         t2, zero, 471
221:              add          s3, t4, sp
222:              slt          s2, s11, t0
                  and          t6, s6, t4
                  bge          s3, zero, 226f
                  slli         s1, t6, 2
226:              slli         s5, s4, 22
227:              bge          sp, t2, 246f
                  bge          s9, s8, 237f
                  sub          a4, t0, s5
                  addi         ra, s8, 1058
                  sltu         s10, a0, t0
                  lui          s1, 476637
                  sltu         a2, a2, a2
                  lui          a2, 937762
                  or           t5, ra, s7
                  andi         s11, t5, 145
237:              srai         s3, sp, 16
                  xori         s10, gp, -1740
                  bltu         t3, t4, 253f
                  srl          s4, a4, s10
                  add          s9, t3, a5
                  la           a3, region_1+1405 #start riscv_load_store_rand_instr_stream_2
                  xor          t0, t4, a5
                  sb           gp, 1(a3)
                  sb           a4, 8(a3)
                  addi         t2, sp, -477
                  and          a2, t4, a4
                  lh           a5, 3(a3)
                  lbu          gp, 12(a3)
                  srl          s0, t6, t6
                  lbu          s5, -5(a3)
                  srl          t2, s2, s3
                  lhu          a5, -15(a3)
                  lw           s8, 3(a3)
                  xori         ra, a2, 576
                  sltu         s10, t1, gp
                  lbu          t3, 10(a3)
                  sh           t4, 3(a3)
                  lw           t4, -13(a3)
                  lbu          tp, -10(a3)
                  srli         t6, s6, 7
                  lbu          gp, -6(a3)
                  lbu          t4, -7(a3)
                  sb           s0, -8(a3)
                  srl          tp, s8, s4
                  lb           a2, 6(a3)
                  lui          ra, 600992
                  xori         a6, gp, -811
                  sb           s10, 2(a3)
                  lbu          s10, 9(a3)
                  lbu          tp, 5(a3)
                  or           s9, s10, s6
                  srl          s5, t0, s9
                  lb           s10, 11(a3)
                  or           t6, t5, t1
                  nop
                  ori          s1, t3, -1163
                  lb           a1, 11(a3) #end riscv_load_store_rand_instr_stream_2
                  bne          a7, a2, 256f
                  ori          tp, s7, 1365
                  or           s8, s6, t6
                  add          s9, a0, s3
246:              sltu         t3, t2, s6
                  bge          gp, a0, 265f
                  srai         s8, s2, 19
                  or           t6, t5, s8
                  ori          t4, a0, -697
                  xori         t4, zero, -835
                  xor          s0, a3, a7
253:              bne          t1, sp, 257f
                  xori         a7, t2, -1442
                  xor          t5, s1, a3
256:              slli         a0, s10, 22
257:              sll          t0, a7, sp
                  ori          a6, t0, 931
                  lui          t3, 365507
                  srai         gp, a1, 19
                  srl          s3, s3, t4
                  slti         s1, s6, 1169
                  ori          a3, s7, -1416
                  srl          a3, t3, t0
265:              xori         t2, s2, -1977
                  sltiu        ra, sp, 1461
                  or           s1, t6, ra
                  srl          a0, s1, a1
                  blt          a0, s5, 271f
                  bltu         t3, s0, 276f
271:              xori         a6, s2, -16
                  nop
                  srai         a4, s6, 6
                  sra          t4, ra, a3
                  slti         a5, t1, -205
276:              and          s4, s3, t0
                  nop
                  sra          t3, s3, t2
                  beq          a3, t2, 284f
                  addi         zero, a6, 1143
                  slli         t3, t6, 17
                  lui          t1, 130450
                  auipc        a7, 492047
284:              and          t2, a4, s6
                  nop
                  slli         s4, a1, 0
                  sub          t3, sp, s1
                  ori          a1, t6, -1479
                  slt          s4, t1, a5
                  bne          t1, t6, 310f
                  bgeu         s0, s11, 306f
                  andi         t3, s0, 1079
                  sub          t0, s4, a4
                  sltiu        a5, t5, 710
                  add          a3, s5, a1
                  slt          s4, a3, s11
                  srli         a5, ra, 11
                  or           s0, sp, t2
                  sltiu        a1, s5, 161
                  slt          s5, s1, s4
                  add          s8, s6, t5
                  bgeu         s7, a0, 315f
                  xor          s3, sp, s3
                  addi         t6, t5, 677
                  sll          t3, t3, s5
306:              bne          a0, a1, 315f
                  and          zero, a3, t0
                  lui          s4, 23685
                  bgeu         t3, s2, 315f
310:              bne          ra, sp, 315f
                  slt          s1, a7, a1
                  bltu         t5, t4, 315f
                  srli         s9, a2, 8
                  beq          s9, tp, 315f
315:              sra          a7, s5, s9
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xori         s11, t0, 1886
                  addi         sp, sp, -60
                  srai         s10, s6, 2
                  sw           ra, 4(sp)
                  auipc        a1, 378420
                  slti         s9, a6, 1401
                  sra          gp, sp, a5
                  srai         t4, t1, 5
                  and          a5, sp, s4
                  srl          s5, s2, a6
                  srai         t6, t3, 31
                  addi         s3, a6, -495
                  sll          s10, s4, t5
                  bge          a6, a4, sub_1_j3 #branch to jump instr
                  sltiu        t1, a3, -1804
                  sub          ra, a6, sp
                  sltiu        t6, t0, -1659
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           ra, region_1+873 #start riscv_load_store_hazard_instr_stream_1
                  lb           t5, 1(ra)
                  lh           t2, -15(ra)
                  lhu          a0, 7(ra)
                  lh           t1, 7(ra)
                  sb           sp, -6(ra)
                  nop
                  lb           a0, -6(ra)
                  lbu          a5, -6(ra)
                  lb           s10, -6(ra)
                  lb           s5, -6(ra)
                  lb           t3, -6(ra)
                  lbu          t2, -3(ra)
                  lhu          tp, -3(ra)
                  lw           t4, 11(ra)
                  sb           s2, -2(ra)
                  sb           t4, -2(ra)
                  lbu          t0, -2(ra)
                  lb           s9, -2(ra)
                  lbu          a1, -12(ra)
                  lbu          tp, -12(ra)
                  sb           s2, -12(ra) #end riscv_load_store_hazard_instr_stream_1
                  la           a7, region_1+1478 #start riscv_load_store_rand_instr_stream_1
                  sb           s7, 229(a7)
                  sb           t6, -65(a7)
                  lb           t0, -143(a7)
                  srai         t2, t2, 8
                  lb           s0, -180(a7)
                  slti         s8, s9, 208
                  lb           a2, -47(a7)
                  sh           s6, -16(a7)
                  addi         s4, t6, -758
                  sb           a0, -241(a7)
                  lb           s9, 173(a7)
                  sw           t3, 94(a7)
                  or           s3, a3, t6
                  sb           a2, 37(a7)
                  lb           s0, 157(a7)
                  xor          t4, a4, t1
                  lb           a6, -130(a7)
                  lbu          t2, -209(a7)
                  sb           s5, -5(a7)
                  andi         a6, a4, -671
                  and          ra, t3, s1
                  srl          tp, t5, s11
                  ori          t2, s8, 892
                  lb           t1, -172(a7)
                  sra          t2, a5, s8
                  lbu          a2, 79(a7)
                  sub          s8, a0, a5
                  sh           a3, 206(a7)
                  lbu          s8, -249(a7)
                  lb           s1, 17(a7)
                  lb           a5, -12(a7)
                  sb           s6, -73(a7) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+319 #start load_store_instr_stream_0
                  la           t0, region_1+345 #start load_store_instr_stream_1
                  lbu          t2, -6(t0)
                  la           ra, region_1+1767 #start load_store_instr_stream_2
                  sh           t0, 7(ra)
                  sb           s9, 2(ra)
                  lb           t5, 88(t0)
                  lhu          t1, -29(t0)
                  lhu          a2, 15(s1)
                  lb           t4, 11(ra)
                  lb           t4, 184(t0)
                  lbu          t5, 13(s1)
                  lb           s10, -4(s1)
                  lbu          a1, 7(ra)
                  lw           s3, -237(t0)
                  sh           zero, 13(s1)
                  lh           s3, 205(t0) #end load_store_instr_stream_1
                  lbu          a6, -8(s1)
                  lw           a0, 29(ra)
                  lb           t4, -3(s1)
                  lb           s11, 10(s1)
                  lb           a6, -7(s1)
                  sb           s9, 14(ra) #end load_store_instr_stream_2
                  lh           s0, -7(s1)
                  sh           s11, -9(s1) #end load_store_instr_stream_0
                  la           t2, region_1+1729 #start riscv_load_store_hazard_instr_stream_0
                  lb           a6, -184(t2)
                  addi         s2, t2, 604
                  sb           gp, -1414(t2)
                  lbu          s4, -1414(t2)
                  sltu         s9, zero, gp
                  lbu          a4, -1414(t2)
                  lb           s1, -1414(t2)
                  lbu          s8, -1414(t2)
                  sb           a0, -1414(t2)
                  lbu          s4, -1414(t2)
                  lbu          t6, -1414(t2)
                  sb           s6, -1414(t2)
                  sltu         tp, t3, s4
                  sb           t1, -1414(t2)
                  sb           a5, -1414(t2)
                  lbu          s8, -1128(t2)
                  lb           s9, 134(t2)
                  lb           t6, 134(t2)
                  lb           t3, 134(t2)
                  srli         s8, sp, 5
                  sltiu        s2, s4, 1405
                  lbu          a4, 134(t2)
                  auipc        t6, 266370
                  sra          t6, a4, tp
                  sw           t2, -409(t2)
                  lh           ra, -409(t2) #end riscv_load_store_hazard_instr_stream_0
                  la           ra, region_1+1556 #start riscv_load_store_rand_instr_stream_0
                  or           gp, t4, s6
                  sb           s8, -3(ra)
                  srli         a4, a5, 5
                  xor          t6, t0, s8
                  lbu          gp, -6(ra)
                  sb           t0, 5(ra)
                  srai         a4, t6, 12
                  xor          a3, t0, s10
                  srl          t3, a0, a2
                  add          s11, tp, tp
                  lhu          gp, -16(ra)
                  lh           t1, -2(ra)
                  sll          s4, t1, s5
                  srai         s2, t6, 20
                  lbu          s8, -10(ra)
                  andi         t5, s3, 1998
                  lb           s9, -1(ra)
                  sb           t2, 6(ra)
                  lb           s8, -13(ra)
                  sb           s1, 7(ra)
                  sb           s5, 5(ra)
                  lb           t4, 15(ra)
                  sb           s11, -13(ra)
                  lb           tp, 15(ra)
                  lui          t0, 452553
                  and          s5, gp, t5
                  slt          t6, t6, a5
                  slt          a2, s11, s2
                  andi         t5, s2, 992
                  lbu          s4, 3(ra)
                  lw           t6, 4(ra)
                  lui          a4, 1021060
                  lbu          t4, -3(ra)
                  sub          s1, t3, a1
                  sb           gp, 7(ra)
                  sltiu        s11, a7, 5
                  slti         tp, tp, -83
                  sb           a3, 11(ra)
                  lb           t6, 2(ra)
                  slt          s5, zero, tp
                  sub          s10, sp, sp
                  sltiu        t4, sp, 670
                  srli         tp, sp, 9
                  lb           gp, -1(ra) #end riscv_load_store_rand_instr_stream_0
                  nop
                  sub          s10, a3, a4
                  bne          s8, tp, 19f
                  slli         a5, a2, 30
                  ori          t4, zero, 1898
                  slli         a1, a1, 7
                  bltu         t5, s7, 19f
                  slli         t3, a7, 1
                  slt          s8, s11, s7
                  nop
                  sub          t4, s0, gp
                  bge          s5, s6, 18f
                  lui          t6, 319291
                  sll          a4, t3, a5
                  beq          s8, t4, 34f
                  addi         a6, a4, -1375
                  and          t1, a4, s4
                  slli         s2, s4, 4
18:               sltu         a3, a1, s5
19:               bltu         s11, s4, 31f
                  srai         a7, s6, 28
                  srl          t6, a2, s5
                  sll          a0, s6, s4
                  add          s9, s5, s4
                  bne          t0, s0, 37f
                  sltu         zero, zero, s10
                  beq          s11, a1, 28f
                  sltiu        s8, s10, 738
28:               srai         a5, a3, 10
                  sltiu        t2, a7, 84
                  sub          t5, a7, s6
31:               and          a6, gp, a4
                  srl          tp, gp, t4
                  and          s11, a0, t0
34:               auipc        a2, 861564
                  sra          s3, s8, s3
                  add          t5, a7, a1
37:               beq          s0, s9, 52f
                  xor          t2, s7, s4
                  srai         a4, s0, 8
                  srli         a6, s11, 13
                  bne          s3, a7, 57f
                  bge          s2, a6, 59f
                  srli         t2, a1, 15
                  or           gp, t1, a0
                  sll          a2, s3, a6
                  xor          zero, gp, t3
                  sll          gp, sp, sp
                  and          t0, s2, s9
                  sll          a3, tp, s10
                  lui          t1, 362170
                  lui          gp, 820242
52:               blt          sp, ra, 72f
                  srli         t1, s8, 29
                  xor          gp, s9, a7
                  lui          a3, 715438
                  sltu         a1, t4, a3
57:               bgeu         t1, t4, 75f
                  sub          t2, t0, a2
59:               addi         gp, s0, 261
                  xor          s3, s4, s5
                  nop
                  or           s5, a7, t0
                  srl          s8, s1, s8
                  sltu         s2, s11, s9
                  slti         s0, a5, 402
                  andi         a0, s3, -1872
                  xori         t4, tp, 1396
                  and          a4, a3, gp
                  bne          s1, t3, 83f
                  slti         s11, t0, 364
                  sub          s4, s8, t5
72:               sll          s1, s5, a4
                  bne          t6, s3, 92f
                  slli         tp, t5, 14
                  la           a1, region_0+690 #start load_store_instr_stream_1
                  la           s0, region_0+485 #start load_store_instr_stream_0
                  lb           a7, 37(a1)
                  sb           a2, 11(s0)
                  lb           a0, 50(a1)
                  sb           s7, -6(s0)
                  lhu          t2, -12(a1)
                  lb           t3, 10(s0)
                  lh           t4, -3(s0)
                  sb           s5, 6(s0)
                  lb           s11, 61(a1)
                  lbu          t1, 0(s0)
                  lhu          s1, 60(a1) #end load_store_instr_stream_1
                  lb           t0, -2(s0)
                  lbu          s2, 9(s0)
                  lb           t1, -15(s0) #end load_store_instr_stream_0
75:               srl          a2, s4, a0
                  slli         s4, s11, 2
                  add          t3, s1, t3
                  bge          s6, t3, 79f
79:               add          t5, t3, s5
                  ori          s2, a1, -40
                  xor          t6, s4, t5
                  slti         s0, s4, 1133
83:               sltiu        t6, s5, 1388
                  srai         t1, a1, 30
                  sub          s5, t4, t3
                  xori         s8, s0, 1598
                  srli         s10, s10, 5
                  xor          s3, sp, s11
                  xor          t0, a6, a4
                  nop
                  xor          s5, s0, s9
92:               sltu         a1, gp, s10
                  auipc        t2, 616524
                  slti         tp, t5, -841
                  sub          ra, t4, a3
                  slt          s5, ra, a2
                  bge          t4, s0, 107f
                  or           ra, s9, a4
                  add          a1, s5, tp
                  sub          tp, t5, s11
                  slti         s1, s8, 1297
                  sub          s9, s7, ra
                  bge          gp, a7, 117f
                  or           ra, t2, s8
                  beq          s2, zero, 112f
                  bgeu         a5, a2, 109f
107:              slli         a7, gp, 1
                  auipc        a7, 467536
109:              sltiu        s11, t3, -676
                  xor          s4, a2, s4
                  srl          a5, s9, a1
112:              andi         s10, s6, 1737
                  bgeu         s3, sp, 130f
                  srai         a6, zero, 29
                  or           s1, t6, s2
                  lui          s9, 481040
117:              bltu         ra, s8, 123f
                  or           s5, s7, a7
                  sltiu        a4, a6, 929
                  or           s1, sp, s0
                  addi         s0, t1, -1989
                  andi         t4, a6, 1824
123:              slli         t6, a5, 18
                  xor          t2, a5, a1
                  slti         s8, tp, 737
                  and          a0, s8, a4
                  andi         gp, s1, 1718
                  bge          a3, s11, 132f
                  beq          a7, s10, 147f
130:              beq          sp, a4, 148f
                  bge          a2, s10, 132f
132:              nop
                  bne          s10, s3, 151f
                  or           a2, t2, gp
                  addi         s0, t2, -1174
                  slt          t2, ra, t2
                  slt          tp, t1, s0
                  srl          s1, s8, s2
                  lui          zero, 78207
                  bne          a3, t1, 143f
                  or           a5, a0, s7
                  nop
143:              sra          s10, s6, s9
                  add          s11, a4, t3
                  srai         t4, s10, 12
                  add          a5, tp, t3
147:              andi         a4, s5, 627
148:              addi         t4, a7, -455
                  or           gp, t6, s4
                  sra          s4, a0, s5
151:              andi         t5, a3, -46
                  bgeu         a4, s5, 153f
153:              sltiu        a1, gp, -827
                  slli         ra, t0, 28
                  auipc        a7, 963012
                  auipc        s2, 831611
                  andi         a1, a7, -1986
                  sub          t3, a3, s0
                  and          s2, ra, s1
                  blt          t0, s4, 179f
                  bgeu         s9, a2, 181f
                  slli         a6, s7, 5
                  lui          s9, 96000
                  xori         s8, a5, 1429
                  sltu         s0, a1, a4
                  xor          a1, a2, t4
                  blt          a7, t6, 184f
                  bltu         t3, a6, 188f
                  sltu         a7, t1, s8
                  bne          t5, sp, 188f
                  bge          a4, a1, 184f
                  sltiu        t3, s5, -810
                  sltiu        s0, s7, -496
                  addi         a7, t3, -840
                  slli         a5, ra, 17
                  bge          a0, a5, 179f
                  sra          s4, a3, a2
                  bltu         t0, s1, 179f
179:              beq          s7, s10, 180f
180:              sra          s9, s4, a2
181:              and          s10, a5, s6
                  bgeu         t3, s1, 196f
                  bltu         a6, t1, 201f
184:              sub          t4, s6, s8
                  sltu         s4, ra, zero
                  bge          a3, s1, 192f
                  and          s4, a4, t6
188:              addi         a3, a6, -285
                  bgeu         zero, ra, 206f
                  bge          s4, s2, 206f
                  sltu         zero, t0, a0
192:              bltu         t5, gp, 199f
                  lui          s1, 154964
                  bltu         t5, a3, 195f
195:              sra          t3, t0, s9
196:              andi         a2, t1, 695
                  auipc        s4, 886670
                  and          s8, s4, t4
199:              slt          a4, t4, t4
                  srai         t2, t1, 16
201:              lui          t2, 38803
                  and          s9, s9, a6
                  slt          t4, gp, a5
                  srai         a7, s10, 10
                  bne          ra, s8, 217f
206:              bgeu         t4, s8, 208f
                  srli         t0, s8, 23
208:              srl          s9, s9, a4
                  nop
                  beq          a6, ra, 218f
                  srli         s5, tp, 9
                  nop
                  lui          s5, 957346
                  bgeu         a4, s10, 218f
                  slti         tp, a5, -592
                  andi         s1, a0, -1884
217:              addi         s4, zero, 1277
218:              addi         s10, t3, -1189
                  sub          t0, s2, sp
                  srl          tp, t1, s4
                  xori         s11, s8, -172
                  lw           ra, 4(sp)
                  addi         sp, sp, 60
                  slti         t1, s0, 215
411:              addi x27, x1, 0
411:              jalr x27, x27, 0
sub_2:            beq          s6, s10, sub_2_stack_p
                  slli         t2, a4, 26
sub_2_stack_p:    addi         sp, sp, -52
                  andi         a7, s8, -1619
                  slti         a1, t0, 641
                  and          zero, s11, t0
                  sw           ra, 4(sp)
                  addi         s9, s9, -308
                  xor          a1, a7, gp
                  la           s5, region_1+1510 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a1, -68(s5)
                  lbu          t4, -68(s5)
                  lhu          a4, -68(s5)
                  lb           a0, -68(s5)
                  sb           tp, -68(s5)
                  lbu          t5, -68(s5)
                  sh           s4, -68(s5)
                  slli         s9, s4, 8
                  sh           sp, -68(s5)
                  auipc        s2, 842013
                  sb           s10, -68(s5)
                  sh           a5, -68(s5)
                  lbu          a1, -68(s5)
                  lb           zero, -68(s5)
                  sh           a5, -68(s5)
                  lhu          t6, -68(s5)
                  lhu          s0, -68(s5)
                  lb           a6, -68(s5)
                  lhu          a1, -68(s5)
                  sub          t0, s11, a3
                  lbu          a4, -68(s5)
                  sb           t4, -68(s5)
                  lh           s11, -68(s5) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_0+717 #start load_store_instr_stream_4
                  la           s10, region_0+513 #start load_store_instr_stream_2
                  la           a2, region_0+1912 #start load_store_instr_stream_0
                  la           t5, region_0+1074 #start load_store_instr_stream_3
                  lbu          s9, 1314(s10)
                  la           s0, region_0+838 #start load_store_instr_stream_1
                  lb           s2, 71(t5)
                  lb           a5, 103(t5)
                  sb           a1, -480(s10)
                  lbu          tp, -27(s0)
                  lbu          ra, -21(s0)
                  lh           t0, -954(a2)
                  lb           a5, 522(t3)
                  sh           s5, 661(t3)
                  sw           tp, -984(a2)
                  sw           s10, -229(s10)
                  lb           t2, -613(t3)
                  lbu          t1, -653(t5)
                  lh           s9, -6(s0)
                  sb           sp, -123(t5)
                  lh           tp, -538(t5)
                  sh           zero, -212(a2)
                  sb           gp, -1134(a2)
                  lb           a5, 471(t5) #end load_store_instr_stream_3
                  lb           s9, -433(a2)
                  lbu          tp, 388(s10)
                  lh           s8, 767(t3)
                  sb           a6, 1262(s10)
                  lb           t6, -29(s0)
                  lbu          a5, -242(a2)
                  lw           t2, 555(t3)
                  lbu          a3, 39(s0) #end load_store_instr_stream_1
                  sb           sp, 446(t3) #end load_store_instr_stream_4
                  lb           s9, 23(s10) #end load_store_instr_stream_2
                  sw           t4, -1464(a2)
                  lbu          t0, -879(a2) #end load_store_instr_stream_0
                  la           s5, region_1+893 #start riscv_load_store_rand_instr_stream_1
                  xori         a7, t1, 769
                  sltiu        t5, s3, 1442
                  sh           s5, -17(s5)
                  add          s8, t6, a7
                  sra          ra, s2, s6
                  andi         t3, a5, -74
                  sb           s2, -18(s5)
                  sw           s6, -5(s5)
                  nop
                  add          a1, s6, a0
                  sb           ra, 60(s5)
                  sltiu        tp, a4, 254
                  slti         s2, sp, -1575
                  srli         s4, s6, 23
                  sltiu        s9, t4, 839
                  sb           t0, -50(s5)
                  sh           s5, 11(s5)
                  nop
                  or           t0, t0, s4
                  lb           s10, -14(s5)
                  lw           tp, -29(s5)
                  slt          a0, tp, sp
                  lh           t0, -7(s5)
                  lh           tp, -39(s5)
                  ori          a6, t5, 1070
                  and          a1, s11, a2
                  and          zero, a1, t2
                  auipc        gp, 675708
                  slt          s2, s2, a0
                  andi         s4, s0, -1545
                  lb           tp, 6(s5)
                  sll          s8, s7, a7
                  lb           t0, -30(s5)
                  sub          s2, t2, ra
                  lb           a1, 32(s5)
                  sb           a2, -50(s5)
                  andi         t3, gp, 1867
                  sb           s7, -30(s5)
                  srl          s3, a6, s11
                  lhu          s3, 3(s5)
                  lui          s0, 582588
                  sb           t3, 10(s5)
                  lh           s4, 39(s5)
                  sb           s2, 56(s5)
                  lbu          a0, -38(s5)
                  sltu         s4, t0, a6
                  ori          t4, a6, -1600
                  sh           gp, 51(s5)
                  lbu          s8, -8(s5)
                  lbu          zero, 59(s5)
                  lui          s2, 348661
                  sh           a4, -59(s5) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+1024 #start riscv_load_store_hazard_instr_stream_1
                  sb           s0, -211(a1)
                  addi         s2, t2, -912
                  lbu          s2, -66(a1)
                  lb           s5, 19(a1)
                  lbu          s5, 19(a1)
                  lb           a2, 19(a1)
                  lbu          tp, 19(a1)
                  lbu          s2, -143(a1)
                  sb           s5, -143(a1)
                  lb           s9, -236(a1)
                  lb           t1, -161(a1)
                  sb           a0, -161(a1)
                  lbu          ra, -161(a1)
                  sb           t6, -161(a1)
                  lbu          t2, -161(a1)
                  lb           t0, -161(a1)
                  lui          t2, 796376
                  lb           s0, -161(a1)
                  lb           t2, 103(a1)
                  lbu          s9, 103(a1)
                  lbu          s9, 253(a1)
                  lb           a0, 253(a1) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_0+488 #start riscv_load_store_hazard_instr_stream_2
                  lb           zero, 139(a6)
                  lb           tp, 1455(a6)
                  sw           a0, 1468(a6)
                  lh           s8, 310(a6)
                  lb           t2, 310(a6)
                  lh           zero, 310(a6)
                  nop
                  sltiu        s9, s10, 528
                  lhu          a0, 310(a6)
                  lhu          tp, 1298(a6)
                  sh           a4, 1298(a6)
                  sub          s10, a7, t4
                  lb           t3, 1418(a6) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_0+1385 #start riscv_load_store_rand_instr_stream_0
                  lbu          s5, -197(a1)
                  lhu          s9, 53(a1)
                  sb           t4, -29(a1)
                  lbu          s3, -247(a1)
                  or           a6, a5, zero
                  lbu          s8, -212(a1)
                  srai         tp, a7, 23
                  lb           s4, -162(a1)
                  srl          a6, t0, s9
                  auipc        t4, 495608
                  sltu         a2, t4, a5
                  sltiu        a4, t3, -1589
                  nop
                  andi         s0, tp, 1508
                  slt          t5, gp, s6
                  lb           a6, 162(a1)
                  lbu          s2, -6(a1)
                  and          zero, s1, a0
                  sb           sp, -49(a1)
                  slli         tp, a5, 2
                  lbu          s11, 252(a1)
                  sub          t6, s8, s6
                  srl          s10, t3, gp
                  and          s0, s9, s8
                  lb           ra, -88(a1)
                  auipc        s4, 590638
                  lhu          t2, 47(a1)
                  sb           s10, -96(a1)
                  andi         s10, t2, 41
                  lhu          zero, 67(a1)
                  sb           a5, 98(a1)
                  slli         s9, t5, 26
                  and          s5, a6, t3
                  lh           a2, -47(a1)
                  sh           tp, -151(a1) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+70 #start load_store_instr_stream_0
                  la           s0, region_1+387 #start load_store_instr_stream_1
                  lb           a6, 7(t0)
                  sb           a3, -5(t0)
                  lbu          tp, -141(s0)
                  sh           s9, 12(t0)
                  sh           s8, -81(s0)
                  lbu          a3, -15(t0)
                  lb           t3, -90(s0)
                  sb           t0, 90(s0)
                  sb           a0, -1(t0)
                  lbu          s4, -210(s0)
                  sb           t3, -127(s0)
                  sb           s8, -12(t0)
                  lbu          s4, 14(s0)
                  lhu          s4, 5(s0) #end load_store_instr_stream_1
                  lb           t6, -16(t0)
                  lb           t3, -6(t0) #end load_store_instr_stream_0
                  la           a7, region_0+1825 #start riscv_load_store_rand_instr_stream_3
                  lb           s0, -118(a7)
                  lh           s1, -151(a7)
                  xori         a5, s10, 494
                  sh           a0, -201(a7)
                  lbu          a0, 96(a7)
                  addi         t6, a3, 1396
                  lhu          s5, -17(a7)
                  lb           gp, 134(a7)
                  nop
                  lbu          a3, 102(a7)
                  sub          s10, a2, s0
                  lb           s3, -20(a7)
                  lbu          s10, -180(a7)
                  lbu          t0, -10(a7)
                  sb           gp, -104(a7)
                  lbu          gp, 20(a7)
                  or           s11, a2, s3
                  sltu         tp, a4, zero
                  sh           s9, 173(a7)
                  lh           s11, -19(a7)
                  ori          t6, a7, 651
                  lui          t3, 856367
                  sh           a6, -197(a7)
                  sb           a1, -240(a7)
                  sb           s7, 108(a7)
                  andi         s3, a5, -1597
                  nop
                  lbu          ra, 145(a7)
                  sra          a5, a0, s3
                  xori         a3, a2, -1656
                  lh           a4, -129(a7) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_1+676 #start load_store_instr_stream_1
                  la           t3, region_1+1069 #start load_store_instr_stream_2
                  sb           a6, -14(t3)
                  la           gp, region_1+726 #start load_store_instr_stream_4
                  la           s11, region_1+312 #start load_store_instr_stream_3
                  la           t5, region_1+1849 #start load_store_instr_stream_0
                  sw           sp, 8(s9)
                  sb           a0, 124(t5)
                  sb           s1, -15(t3)
                  lbu          s1, -11(s9)
                  sb           sp, 219(s11)
                  lbu          a2, 10(t3)
                  lw           s2, -8(s9)
                  lb           s5, -70(t5)
                  lw           a2, 44(s11)
                  lhu          t0, -104(s11)
                  lbu          s0, 15(t3)
                  lbu          s8, 1245(gp)
                  lh           s1, -2(s9)
                  lbu          t2, -168(t5)
                  sb           zero, 809(gp)
                  lb           s10, 14(t3)
                  lhu          t1, -32(s11)
                  lb           a7, 978(gp)
                  lh           a3, 51(t5)
                  lb           s2, 297(gp)
                  lhu          s3, -42(s11)
                  sb           t5, 415(gp)
                  sh           a0, -4(s9)
                  lb           a0, 12(t3)
                  lbu          s1, 0(t3)
                  sb           a5, -547(gp)
                  lbu          s0, -10(t3)
                  lb           s10, 119(t5)
                  lbu          s3, -162(s11)
                  lb           a4, -185(s11)
                  sb           a7, 97(t5)
                  lbu          s1, 0(t3)
                  sb           a4, -7(s9) #end load_store_instr_stream_1
                  lb           tp, 16(t3) #end load_store_instr_stream_2
                  lbu          t1, 473(gp) #end load_store_instr_stream_4
                  sb           s10, 131(s11) #end load_store_instr_stream_3
                  lb           a3, 118(t5)
                  lb           a2, -54(t5) #end load_store_instr_stream_0
                  la           a6, region_0+56 #start riscv_load_store_rand_instr_stream_2
                  lbu          a7, 1788(a6)
                  srai         s5, gp, 9
                  slt          s3, a5, sp
                  srl          a7, s9, t6
                  and          s2, s9, s9
                  sltiu        s5, s10, 936
                  addi         s0, s4, -1321
                  lui          s1, 74946
                  slt          t6, s8, s4
                  slli         zero, a7, 23
                  add          ra, s8, a4
                  srli         t2, a6, 30
                  lbu          t5, 1411(a6)
                  srli         t5, s7, 29
                  lbu          t0, 1803(a6)
                  sb           gp, 339(a6)
                  sll          t2, a2, sp
                  lb           s10, 1936(a6)
                  sh           a3, 1846(a6)
                  auipc        t0, 18913
                  lb           s11, 501(a6)
                  lb           ra, 1939(a6)
                  sltiu        t2, sp, -564
                  lb           t0, 840(a6)
                  sltu         s8, s0, a4
                  or           s4, s0, s9
                  sltu         a3, a3, tp
                  srli         a7, a6, 1
                  sltu         tp, zero, zero
                  xori         s10, a3, 1378
                  sltu         a4, a1, a7
                  slti         t4, t0, -801
                  sltiu        t6, s1, -206
                  slli         a3, a1, 5
                  sltu         t4, s2, a3
                  nop
                  sb           t2, 1008(a6)
                  addi         s1, a7, 1999
                  sb           sp, 1235(a6) #end riscv_load_store_rand_instr_stream_2
                  bltu         s11, a2, 5f
                  srai         t1, a0, 0
                  lui          a2, 265422
                  sltiu        a2, t5, 1200
                  sll          a4, s2, s9
5:                lui          a4, 181468
                  ori          t3, t1, -1971
                  sltiu        s5, s9, 1480
                  slli         t4, ra, 17
                  or           t0, a7, s9
                  srai         tp, s11, 24
                  sll          s3, tp, s7
                  slti         s10, t2, -1247
                  sll          s3, t5, gp
                  and          t1, t4, s4
                  beq          a0, s11, 34f
                  ori          s2, tp, 1847
                  nop
                  blt          a7, sp, 25f
                  srai         t3, a3, 12
                  ori          a1, t3, 1749
                  slli         ra, s2, 0
                  slt          t0, t6, sp
                  srli         t0, t1, 17
                  sra          a5, s9, s4
25:               xori         zero, t4, -147
                  andi         t2, t0, 1271
                  blt          t2, t1, 46f
                  srl          t4, t2, s6
                  beq          a0, zero, 40f
                  slti         a0, s4, 1513
                  slti         a6, sp, -634
                  bge          sp, t2, 52f
                  add          s9, s9, t5
34:               ori          s2, t0, -488
                  add          ra, s7, s6
                  sltu         t0, ra, ra
                  bltu         s5, s3, 52f
                  bgeu         t6, a2, 45f
                  and          t6, s0, s0
40:               blt          ra, t3, 60f
                  addi         s3, t1, 654
                  srai         s4, s3, 16
                  blt          a2, a4, 62f
                  slli         a0, s4, 0
45:               sra          a2, a7, s4
46:               bgeu         s5, a1, 61f
                  sll          t6, s2, ra
                  sub          t2, zero, gp
                  sltiu        s1, gp, 1511
                  srli         s5, a2, 3
                  srl          a4, zero, t2
52:               sll          t3, s7, t3
                  beq          a1, s8, 61f
                  slli         t3, zero, 27
                  bgeu         s10, s2, 61f
                  bgeu         t3, a2, 60f
                  sll          a0, a3, s8
                  srai         tp, t0, 26
                  xor          t6, s6, s3
60:               sll          a1, tp, gp
61:               auipc        ra, 779259
62:               ori          s8, s9, 240
                  slli         t2, s9, 30
                  slli         s5, s8, 24
                  blt          a6, zero, 75f
                  addi         s5, s3, -32
                  add          s0, s2, zero
                  blt          s10, a2, 77f
                  nop
                  bge          t2, a4, 78f
                  andi         s5, s6, 1742
                  nop
                  bgeu         s10, sp, 91f
                  sra          s3, a4, t3
75:               nop
                  slli         s0, a2, 29
77:               add          a4, gp, s11
78:               slti         a3, sp, -1907
                  slti         s1, s5, -1733
                  slli         zero, gp, 13
                  add          zero, tp, zero
                  auipc        t0, 1003564
                  slli         a1, s7, 9
                  or           t0, a4, t2
                  srai         t6, a5, 16
                  xori         ra, s9, 576
                  bltu         t0, s11, 97f
                  auipc        t3, 992004
                  andi         s11, s1, 1628
                  sll          s9, a3, a6
91:               slt          t3, sp, s4
                  srl          gp, zero, zero
                  nop
                  la           s4, region_1+161 #start riscv_load_store_hazard_instr_stream_3
                  sw           s5, 747(s4)
                  sb           t0, 1833(s4)
                  sb           a1, 610(s4)
                  srl          gp, s6, s11
                  slti         t0, zero, -1482
                  lbu          a1, 610(s4)
                  lhu          tp, 995(s4)
                  lb           s5, 1828(s4)
                  sh           s6, -9(s4)
                  lb           a3, 850(s4)
                  sltu         t3, a7, tp
                  sb           s9, 662(s4)
                  ori          a2, sp, 951
                  lb           zero, 442(s4)
                  lbu          a5, 1590(s4)
                  add          a1, sp, t0
                  slt          tp, gp, s4
                  lbu          s11, 944(s4)
                  lbu          s2, 944(s4)
                  lbu          s10, 1833(s4)
                  sh           t1, 1833(s4)
                  lb           t6, 203(s4)
                  lb           s0, 542(s4)
                  auipc        s10, 43063
                  lb           a6, 919(s4) #end riscv_load_store_hazard_instr_stream_3
                  ori          a5, s3, -44
                  sll          s10, a7, a2
                  srl          t3, t3, a7
97:               andi         s1, t2, -218
                  sra          a3, t3, tp
                  lui          s10, 382836
                  srl          gp, t1, t6
                  sub          t2, s8, s7
                  sra          s8, gp, s8
                  andi         s3, s1, -640
                  xor          s2, a1, a0
                  sll          t1, t0, a3
                  la           a3, region_0+1125 #start load_store_instr_stream_1
                  sb           t3, 136(a3)
                  la           s2, region_0+76 #start load_store_instr_stream_0
                  lb           tp, -194(a3)
                  lhu          a7, 221(a3)
                  lb           a2, 23(s2)
                  sh           tp, -249(a3)
                  lhu          s3, 8(s2)
                  sb           a4, -51(s2)
                  lbu          a6, -37(s2)
                  sb           t2, 88(a3) #end load_store_instr_stream_1
                  lh           a1, -36(s2) #end load_store_instr_stream_0
                  andi         a7, s2, 1416
                  add          s8, s2, s9
                  beq          s0, s6, 119f
                  bltu         a1, zero, 125f
                  sltu         s4, s8, s2
                  sltiu        t2, a3, 1831
                  slti         t2, t2, 1409
                  add          s0, s7, tp
                  slt          s11, a6, a3
                  srli         s11, s11, 9
                  bge          tp, t0, 117f
117:              slt          s8, t2, s10
                  bne          s3, s6, 124f
119:              slli         s2, t6, 0
                  sltu         s5, t0, sp
                  slti         s8, t5, 1236
                  xori         zero, s4, -1539
                  xor          tp, t2, zero
124:              srli         t3, s5, 15
125:              srl          t6, a0, t0
                  bge          sp, t5, 135f
                  srl          s1, t5, a4
                  beq          t3, ra, 139f
                  bne          s5, s7, 136f
                  bgeu         zero, a5, 148f
                  srli         a6, t4, 11
                  bgeu         s10, s0, 147f
                  blt          t5, s6, 140f
                  sub          a1, a6, t3
135:              bne          s3, gp, 146f
136:              sra          zero, t5, tp
                  blt          s7, s4, 152f
                  auipc        t4, 132048
139:              andi         s4, s3, 425
140:              srli         t2, a7, 17
                  beq          sp, a7, 147f
                  bgeu         t6, t0, 152f
                  addi         t2, a1, -1642
                  srli         a7, a1, 28
                  xori         s4, tp, 1966
146:              ori          ra, t6, 1109
147:              nop
148:              xori         a7, t0, 1839
                  or           gp, s11, a2
                  blt          s9, a4, 161f
                  nop
152:              slli         t1, t3, 13
                  blt          zero, t5, 164f
                  add          s10, sp, zero
                  srai         zero, sp, 0
                  sra          t1, ra, s1
                  sub          gp, s2, s5
                  sll          tp, s0, sp
                  bge          s5, t6, 174f
                  slti         s3, s5, 1419
161:              andi         t0, sp, -552
                  auipc        zero, 5214
                  auipc        a5, 490702
164:              srl          zero, sp, zero
                  bge          t6, s8, 171f
                  bgeu         gp, s6, 174f
                  lui          a6, 545767
                  slt          a6, a4, s0
                  lui          s3, 308254
                  srl          a4, a7, t3
171:              sltiu        t2, tp, -224
                  slli         t4, a5, 1
                  blt          a2, a7, 183f
174:              ori          t5, s3, -1045
                  sra          s1, s4, t0
                  beq          t2, a5, 195f
                  blt          s10, t3, 195f
                  bgeu         a6, sp, 182f
                  sub          a4, s0, gp
                  lui          t6, 845993
                  bne          t4, t3, 190f
182:              beq          a1, t5, 189f
183:              sltu         s10, a3, t3
                  and          zero, t3, gp
                  blt          a0, a1, 205f
                  beq          s4, t2, 206f
                  bge          s5, t2, 196f
                  lui          t3, 131560
189:              addi         s11, zero, 629
190:              sll          tp, t2, s6
                  xor          s9, s9, zero
                  slti         a1, a5, -2030
                  ori          t6, t4, 1932
                  add          s4, s7, a5
195:              bge          t4, s4, 214f
196:              or           a2, s6, a6
                  sra          s1, s11, a7
                  beq          s9, a2, 205f
                  srl          a1, s11, t3
                  srai         s3, t2, 4
                  and          zero, t4, a5
                  blt          s6, t0, 209f
                  slt          s1, a3, a0
                  sub          t2, ra, a7
205:              addi         s11, a0, -1047
206:              add          t4, sp, s0
                  or           a3, s9, a7
                  slli         ra, a5, 10
209:              srai         s3, t5, 15
                  bgeu         t6, s10, 211f
211:              slli         t2, a4, 22
                  bltu         a5, gp, 230f
                  bgeu         s6, s4, 220f
214:              bne          sp, a1, 233f
                  add          t4, t5, a2
                  slti         t0, sp, -1672
                  bgeu         t5, s5, 225f
                  slli         s5, t5, 5
                  lui          a3, 262271
220:              srl          t1, t3, s1
                  blt          s7, s2, 236f
                  blt          a7, ra, 227f
                  sltiu        ra, t0, -1919
                  xori         t0, s1, -1263
225:              bne          a0, s2, 236f
                  sub          a3, t0, s2
227:              slti         t6, s5, -930
                  or           a4, t4, gp
                  or           t1, t3, s4
230:              nop
                  and          s2, s3, a1
                  ori          a5, t3, -1615
233:              nop
                  slt          gp, s11, t1
                  xor          s0, a6, a2
236:              sub          s0, zero, s10
                  add          a0, s4, s1
                  sub          s11, t5, t2
                  bgeu         t1, a4, 255f
                  slli         s5, t6, 27
                  sub          a3, t1, a6
                  bge          t1, a7, 253f
                  sltu         s5, a4, a7
                  sub          tp, s2, sp
                  blt          ra, s0, 256f
                  bltu         t0, t5, 253f
                  slt          s4, s1, t3
                  bgeu         s5, a3, 268f
                  blt          s8, s3, 260f
                  andi         t6, a7, 1273
                  srl          a4, s10, a3
                  slt          s5, s11, s3
253:              slti         gp, t1, -179
                  addi         s5, a1, -596
255:              slt          t2, a6, s11
256:              lui          s4, 1042220
                  slti         t6, gp, -2031
                  bge          a3, s9, 273f
                  slt          s8, s3, s5
260:              lui          t6, 713573
                  sra          tp, s8, t0
                  sra          a5, s11, s2
                  sll          a1, s7, t5
                  xori         zero, a6, 774
                  nop
                  slt          tp, gp, a3
                  bgeu         t2, s8, 277f
268:              slti         a3, s11, -505
                  or           s4, t1, s3
                  xori         s10, t1, -11
                  auipc        a2, 115418
                  xor          tp, a0, ra
273:              srl          zero, sp, gp
                  bgeu         a2, s4, 289f
                  lui          s9, 596169
                  sltiu        s5, zero, -882
277:              slli         t2, a3, 10
                  sltu         a6, sp, a3
                  sll          t4, a4, s10
                  add          s10, s5, t1
                  slt          a2, s6, s1
                  ori          s8, t2, -1843
                  sll          s10, a5, tp
                  slt          a1, s0, sp
                  sltu         a4, s0, a1
                  slti         ra, a0, 1689
                  xori         t0, a5, 60
                  beq          t4, a0, 306f
289:              bge          t2, s4, 296f
                  and          t3, ra, sp
                  andi         s3, t6, -1402
                  sub          a0, sp, s0
                  srli         a0, s7, 30
                  srai         zero, gp, 21
                  slt          t3, t2, t5
296:              ori          s3, a1, 279
                  srl          s1, s7, tp
                  andi         t5, s2, -1562
                  blt          a5, sp, 310f
                  nop
                  addi         s10, s5, -879
                  slli         t4, t6, 24
                  addi         a5, t3, -1006
                  nop
                  beq          ra, a2, 325f
306:              sltiu        s11, s8, 256
                  or           a5, s7, t6
                  xor          a1, s3, t1
                  or           t4, a0, s1
310:              nop
                  ori          t1, sp, -1491
                  bltu         a1, a6, 323f
                  xor          a2, s6, s4
                  sltu         t1, a2, a3
                  or           s0, s9, a2
                  blt          a0, t0, 335f
                  slti         a7, s8, -1547
                  bne          s4, s8, 334f
                  srai         zero, zero, 0
                  beq          a5, tp, 328f
                  bltu         t6, s10, 327f
                  slti         t5, s5, 433
323:              srl          s5, a1, s10
                  sub          tp, t3, s7
325:              bne          t3, t0, 340f
                  bgeu         s8, a1, 345f
327:              bne          a4, a5, 336f
328:              bne          t6, t4, 329f
329:              sub          t0, t4, t6
                  xori         t2, t0, -1999
                  sll          s10, a3, s11
                  bne          s4, a4, 342f
                  sub          t5, s8, s0
334:              bne          t3, s6, 339f
335:              xor          a4, s5, t3
336:              andi         s11, t6, 940
                  slli         t6, s1, 3
                  auipc        s1, 280991
339:              xori         t3, gp, 1341
340:              srl          t0, s0, a2
                  or           s2, s11, zero
342:              beq          t0, a1, 349f
                  and          s5, t5, a5
                  slti         s9, s0, -708
345:              sltiu        a7, s9, 1753
                  nop
                  ori          t2, s3, 257
                  sltu         s2, zero, t6
349:              slli         t3, t6, 4
                  bne          tp, s2, 358f
                  beq          tp, ra, 357f
                  sltiu        a6, t4, -1628
                  andi         t4, a1, 2035
                  auipc        a6, 960401
                  beq          s1, sp, 374f
                  slt          s0, zero, s4
357:              beq          a4, s0, 364f
358:              nop
                  xor          s9, zero, t4
                  bltu         a2, s4, 378f
                  sltu         a3, s3, s1
                  srl          s3, s9, t4
                  bgeu         a0, t5, 372f
364:              bne          s2, sp, 368f
                  bne          s3, a3, 380f
                  xori         a1, s0, 1332
                  sra          a0, ra, t1
368:              bne          t5, s3, 374f
                  sltiu        s0, a0, -516
                  blt          ra, s1, 385f
                  slti         a3, a4, 1706
372:              slt          s8, s1, s5
                  and          a2, s4, s2
374:              bltu         s4, gp, 378f
                  slli         a6, s9, 16
                  slli         gp, gp, 26
                  bge          s4, s11, 384f
378:              sll          zero, a7, s7
                  slt          s8, a5, t2
380:              beq          t0, sp, 396f
                  srl          s10, s3, s6
                  and          a2, a5, s3
                  sltiu        t0, s6, 1918
384:              sltiu        s10, t3, -1372
385:              nop
                  xor          t6, sp, a7
                  sll          s11, s9, sp
                  xori         zero, a5, 161
                  and          s3, a3, t3
                  sra          a4, s8, a7
                  add          a1, s11, t0
                  sltu         a6, a6, sp
                  srli         s5, t0, 11
                  xori         s1, t1, -1258
                  and          ra, t3, sp
396:              slt          tp, t2, t3
                  auipc        t1, 477707
                  sll          a7, sp, sp
                  sltu         s3, a3, tp
                  addi         zero, gp, -1953
                  xor          a0, gp, a4
                  slli         gp, a2, 18
                  bltu         t4, a7, 413f
                  lui          s2, 298403
                  slti         t0, t0, 57
                  nop
                  add          ra, a5, s2
                  bltu         s5, a2, 415f
                  or           a3, tp, t4
                  sra          s4, t2, a4
                  blt          s3, a1, 431f
                  xor          a6, a5, t2
413:              andi         a2, t2, 294
                  sub          t4, a2, tp
415:              nop
                  slti         a6, s4, 129
                  xori         s2, s1, -786
                  auipc        t0, 71470
                  srli         ra, s5, 17
                  srl          zero, s11, a3
                  lui          s10, 748641
                  nop
                  srli         t5, s9, 28
                  andi         a5, a6, -1524
                  blt          zero, s8, 431f
                  beq          a1, s7, 431f
                  srli         t3, a1, 24
                  xor          s5, a3, a4
                  addi         ra, s2, -334
                  xori         a7, a7, 430
431:              nop
                  lui          s9, 452428
                  or           a2, s5, s4
                  slti         gp, t5, 181
                  or           s2, s7, a0
                  nop
                  lui          t4, 541726
                  andi         s9, s4, 229
                  srli         s3, s6, 22
                  or           t6, t0, tp
                  lui          s0, 626335
                  auipc        t6, 987483
                  lui          t2, 608524
                  srai         tp, a1, 9
                  slti         a1, t6, -875
                  nop
                  beq          t0, t1, 462f
                  sltiu        t3, s7, -113
                  srl          s9, s10, t4
                  bltu         tp, s10, 457f
                  or           s1, s1, s3
                  slli         a7, a0, 2
                  sll          s0, s0, s3
                  sltu         t3, t3, s4
                  sll          s4, s9, t2
                  slli         a2, s3, 28
457:              nop
                  bne          zero, a7, 463f
                  lui          tp, 153093
                  xor          a4, a2, a0
                  xori         s2, a0, -1357
462:              sub          t0, s10, a2
463:              and          zero, zero, s2
                  sra          gp, t3, t6
                  lw           ra, 4(sp)
                  addi         t5, t1, 256
                  ori          s0, s2, 1771
                  xor          s1, sp, s10
                  sra          a1, s9, tp
                  addi         sp, sp, 52
                  andi         t2, a1, 1936
839:              addi x27, x1, 0
839:              jalr x27, x27, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x22, x2, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x8, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x8, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x8, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x8, x30, ecall_handler
                  li x30, 0x1
                  beq x8, x30, instr_fault_handler
                  li x30, 0x5
                  beq x8, x30, load_fault_handler
                  li x30, 0x7
                  beq x8, x30, store_fault_handler
                  li x30, 0xc
                  beq x8, x30, pt_fault_handler
                  li x30, 0xd
                  beq x8, x30, pt_fault_handler
                  li x30, 0xf
                  beq x8, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x2, x22, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
