.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
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
                  li x0, 0x80000000
                  li x1, 0x61c38b10
                  li x2, 0x80000000
                  li x3, 0x2
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x7
                  li x11, 0x5
                  li x12, 0x0
                  li x13, 0x1
                  li x14, 0xfab4ca1e
                  li x15, 0x8
                  li x16, 0x0
                  li x17, 0xf6af5ebc
                  li x18, 0xff80e1b5
                  li x19, 0x80000000
                  li x21, 0xe
                  li x22, 0xfb8db8bb
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xffee522f
                  li x26, 0x0
                  li x27, 0x60bdfd7d
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0xf23a97f1
                  la x30, user_stack_end
main:             la           s6, region_0+1819 #start riscv_load_store_rand_instr_stream_0
                  sll          s11, a0, a4
                  lb           s5, -8(s6)
                  lb           gp, -1(s6)
                  slt          s3, a3, a3
                  srli         s8, t5, 20
                  sb           a7, 6(s6)
                  sll          zero, t3, t2
                  lb           gp, -5(s6)
                  sh           s7, 7(s6)
                  sra          s1, s1, s2
                  lbu          t3, 14(s6)
                  lb           t0, 8(s6)
                  sw           s6, 9(s6)
                  sltiu        a2, a3, 1872
                  auipc        a3, 214804
                  nop
                  add          ra, s7, s7
                  xor          gp, s3, s4
                  srai         a2, a7, 24
                  lb           a7, 9(s6)
                  lb           gp, 10(s6)
                  sll          zero, tp, a2
                  xor          gp, tp, a1
                  lb           a4, 2(s6)
                  lb           a1, -4(s6)
                  lb           a7, -10(s6)
                  sb           s5, 12(s6)
                  lbu          s2, -14(s6)
                  lb           s9, -8(s6)
                  andi         a7, t2, 343
                  lb           a6, -4(s6)
                  lb           t6, -9(s6)
                  and          a1, gp, a3
                  lb           t2, -16(s6)
                  lui          s10, 298557
                  lbu          s9, -9(s6)
                  lbu          s3, -8(s6)
                  lw           a0, -11(s6) #end riscv_load_store_rand_instr_stream_0
                  slti         a0, s7, 1594
                  and          t1, s10, ra
                  bge          s7, s1, 17f
                  xori         a7, a5, -1226
                  addi         a3, a5, -1338
                  add          a6, s5, a5
                  auipc        ra, 149196
                  lui          s2, 577486
                  slli         s0, s5, 3
                  addi         t6, s5, 1288
                  auipc        zero, 503572
                  and          a5, ra, a1
                  srai         zero, t2, 26
                  ori          s6, s8, 821
                  slti         t3, tp, -1680
                  la           s5, sub_1
                  slli         a3, t1, 10
                  add          a7, a1, t1
                  and          s6, gp, s0
                  lui          s3, 959979
                  addi         s5, s5, -946
                  or           t1, t0, t4
                  bge          s4, s3, main_j1 #branch to jump instr
                  sra          s6, t2, t3
main_j1:          jalr         tp, s5, 947 #jump main -> sub_1
                  xor          t0, t2, s10
                  auipc        s8, 368019
                  and          a0, s8, s9
                  and          s1, sp, t2
17:               sub          s2, ra, gp
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         t5, t5, -64
                  lui          t3, 576763
                  lui          s5, 490052
                  or           a5, s11, s4
                  sw           tp, 4(t5)
                  addi         ra, a5, 1763
                  lui          a1, 413869
                  srai         t0, t2, 0
                  ori          zero, t1, -120
                  and          s6, s10, t5
                  ori          s10, a6, -1563
                  la           gp, region_1+1050 #start riscv_load_store_rand_instr_stream_2
                  srli         t4, t2, 4
                  sb           t4, -15(gp)
                  sh           a4, 8(gp)
                  sb           s10, -11(gp)
                  lb           a3, 1(gp)
                  srl          a0, s9, s11
                  lb           t2, 1(gp)
                  lb           t6, 8(gp)
                  lbu          s11, 15(gp)
                  sb           tp, 8(gp)
                  sltiu        a6, s11, -1476
                  sb           s5, -1(gp)
                  sltu         t6, s3, a2
                  xori         s11, s6, -501
                  sub          a6, t4, s5
                  auipc        s3, 1032205
                  sb           t6, -6(gp)
                  sltiu        a6, a7, -1090
                  sra          a3, a2, s6
                  lh           s5, -12(gp)
                  xor          s11, a6, s5
                  ori          s10, t0, -1095
                  lh           t2, -8(gp)
                  sb           a1, -3(gp)
                  lhu          s11, -8(gp)
                  sb           a6, -1(gp)
                  xor          s1, s4, a4
                  lh           ra, 4(gp)
                  lh           ra, 0(gp)
                  nop
                  lbu          s2, 2(gp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_1+1550 #start riscv_load_store_rand_instr_stream_0
                  sb           s5, -971(a7)
                  sltu         s7, a6, s8
                  xori         t6, t5, -820
                  lhu          s0, 210(a7)
                  sub          a5, t1, a5
                  lb           s6, -473(a7)
                  sltu         s3, a3, s9
                  lbu          s7, -1192(a7)
                  sh           t3, -1054(a7)
                  ori          t1, t5, -1795
                  sltu         s11, s8, s10
                  andi         t6, a1, 561
                  xori         t2, s4, -1250
                  slt          t0, s10, s3
                  add          a5, a0, gp
                  slt          a3, s7, s10
                  ori          t4, t0, 1938
                  lb           t4, -347(a7)
                  sb           s9, -448(a7)
                  sw           t0, -1514(a7)
                  and          gp, s10, s3
                  slt          s0, t0, s3
                  sltu         s10, s8, s0
                  or           s1, s10, t0
                  sll          s3, s8, t5
                  slli         s7, gp, 18
                  sll          t3, a1, t0
                  andi         s2, t5, 151
                  and          tp, ra, a3
                  or           a1, t6, s0
                  slti         a5, a1, -276
                  lbu          s10, -1351(a7)
                  sw           s8, -98(a7)
                  xori         t3, a1, -253
                  lb           a0, 37(a7)
                  lbu          t6, -1163(a7) #end riscv_load_store_rand_instr_stream_0
                  blt          a2, s5, 13f
                  blt          t3, tp, 13f
                  nop
                  ori          s6, ra, 778
                  bltu         a4, s4, 19f
                  slti         s10, s0, 1959
                  nop
                  sltiu        a0, ra, 1471
                  bne          s0, s3, 13f
                  sltu         s3, s5, zero
                  add          s5, s3, a3
                  srai         s9, s4, 19
                  andi         a0, s3, 1358
13:               bgeu         s4, a0, 24f
                  slti         s2, zero, 1961
                  slti         ra, ra, 110
                  sltiu        s8, t3, 203
                  sltiu        t1, s1, -452
                  sll          a2, a5, a3
19:               slli         a6, ra, 15
                  bltu         gp, s9, 39f
                  srl          a2, zero, t1
                  addi         a1, a0, 31
                  bgeu         ra, ra, 42f
24:               auipc        s5, 95257
                  blt          t0, t5, 32f
                  beq          a6, s4, 29f
                  slli         s6, tp, 29
                  bltu         a4, gp, 29f
29:               slt          t4, t4, a5
                  slt          s3, t4, t4
                  lui          a7, 902849
32:               auipc        a5, 320533
                  slti         s9, t1, -1621
                  slli         gp, a7, 8
                  auipc        a1, 878417
                  sub          s2, s1, s0
                  bgeu         a3, s10, 43f
                  slt          a2, a3, s6
39:               andi         a4, s11, -326
                  addi         a0, s0, -806
                  or           gp, zero, a3
42:               addi         s0, s3, 1341
43:               bge          a0, s6, 58f
                  lui          tp, 273476
                  nop
                  bltu         t2, s9, 66f
                  andi         s7, t4, -435
                  or           a3, s4, t5
                  sll          t0, sp, gp
                  bgeu         s10, t3, 51f
51:               andi         t2, a7, 1790
                  beq          s10, a6, 64f
                  sltiu        a5, tp, -679
                  auipc        s10, 495612
                  auipc        gp, 181394
                  bltu         t3, a3, 76f
                  add          s8, a6, t2
58:               andi         ra, t3, -339
                  slti         s0, t0, 243
                  bltu         sp, s4, 72f
                  slt          s0, a4, a0
                  addi         tp, t3, 1508
                  bgeu         s9, s1, 75f
64:               slt          t4, a7, s2
                  bltu         t2, a4, 78f
66:               addi         s5, a4, -1574
                  slti         ra, a2, -197
                  slti         s10, t6, 1517
                  ori          t3, s8, 138
                  srai         s3, t4, 16
                  nop
72:               srl          s11, a2, s4
                  blt          t2, s8, 80f
                  slti         a2, a1, 263
75:               xori         a5, s1, 1350
76:               sltu         a3, ra, ra
                  bge          a4, ra, 91f
78:               bgeu         zero, t2, 92f
                  xori         s2, a2, 656
80:               bne          sp, s7, 96f
                  sll          a1, s6, a6
                  lui          t0, 483494
                  sltu         s2, tp, s5
                  slt          a4, zero, s5
                  sltiu        t4, ra, -1981
                  slli         s9, a5, 4
                  srai         a6, s3, 1
                  or           t0, a0, s5
                  beq          s11, s8, 91f
                  ori          s10, sp, -1784
91:               andi         a1, s11, 1901
92:               sltu         t1, a3, a5
                  andi         s3, t0, 1779
                  ori          s1, t4, -954
                  bgeu         s5, s5, 96f
96:               slli         a5, tp, 13
                  sltu         tp, s9, s1
                  blt          t1, s2, 99f
99:               bltu         a7, t6, 117f
                  srai         t0, a3, 29
                  srai         a4, t5, 26
                  slti         a6, a4, 1348
                  blt          s1, s9, 110f
                  sltiu        s0, a2, -213
                  sltu         a6, s6, s10
                  srl          a4, a7, t4
                  bne          s2, t2, 124f
                  and          s11, s4, zero
                  sll          s2, t3, s2
110:              addi         gp, s10, -1786
                  blt          a0, t0, 130f
                  ori          t1, s5, -450
                  sra          zero, s6, t4
                  ori          s9, t3, -1641
                  slti         t6, s11, -389
                  add          s0, s5, t2
117:              bge          a5, t2, 129f
                  beq          s8, s1, 131f
                  bne          a2, a3, 126f
                  beq          tp, t5, 140f
                  sltiu        s9, t2, -1060
                  sra          tp, a4, s6
                  srl          s1, s0, ra
124:              xor          zero, a7, s10
                  bne          a2, a6, 132f
126:              xori         a7, t3, 162
                  slti         t0, sp, -1459
                  andi         ra, s3, -891
129:              slli         a1, t0, 0
130:              blt          s8, a4, 149f
131:              bge          s0, t0, 145f
132:              or           s7, s5, t4
                  add          ra, s1, s2
                  auipc        t6, 664368
                  srl          t1, s9, s1
                  andi         s9, t1, -1449
                  andi         ra, s4, 1492
                  andi         s2, s8, -1929
                  and          t6, s8, a3
140:              srli         t2, s0, 2
                  or           tp, a2, s8
                  auipc        a7, 697248
                  bltu         a7, a3, 154f
                  lui          s6, 1022446
145:              beq          a7, t4, 164f
                  blt          zero, s11, 162f
                  xori         a6, s9, 1296
                  beq          tp, t6, 160f
149:              and          tp, zero, s8
                  ori          t6, s7, -496
                  bne          a2, t2, 169f
                  sra          ra, a4, s5
                  sra          s2, gp, t4
154:              or           ra, s5, a5
                  auipc        s9, 880450
                  slti         t0, gp, 1486
                  ori          t4, a6, -39
                  bge          a4, tp, 172f
                  and          a3, s5, s4
160:              slti         a4, tp, 1843
                  srli         a0, s2, 27
162:              beq          t6, s11, 177f
                  addi         a3, tp, -2045
164:              add          s10, a6, a2
                  slli         s2, t0, 15
                  slli         s11, s0, 20
                  sltu         t6, gp, gp
                  blt          zero, t6, 185f
169:              slt          a4, s6, s7
                  xor          s6, s1, s11
                  la           s0, region_0+59 #start riscv_load_store_rand_instr_stream_1
                  ori          s9, s10, -237
                  lui          a0, 227039
                  srli         s10, s3, 2
                  slti         t3, a1, -51
                  sb           t4, 832(s0)
                  sll          a6, s1, gp
                  lui          a1, 949491
                  sll          s9, a5, s8
                  xor          a3, ra, a5
                  sb           s8, 1274(s0)
                  sb           a6, -44(s0)
                  sll          s6, a7, s6
                  sw           t4, 1701(s0)
                  lbu          s5, 1366(s0)
                  sb           t3, 724(s0)
                  addi         t6, s10, -346
                  xor          a5, t6, a4
                  lhu          t6, 47(s0)
                  sll          t1, t3, a7
                  slti         gp, t5, 664
                  sub          s11, s4, gp
                  lbu          s3, 740(s0)
                  sub          t6, s3, t6
                  srli         s3, a5, 6
                  sltu         gp, s4, s1
                  sw           t6, 1601(s0)
                  sb           s11, 1864(s0)
                  lw           a6, 749(s0)
                  sltu         t0, t0, s2
                  slti         a6, t6, 505
                  sb           a7, 923(s0)
                  slt          t6, t6, t1
                  lb           a5, 402(s0)
                  xor          ra, a7, t0
                  sb           sp, 150(s0)
                  lb           s7, 1700(s0)
                  sb           s10, -57(s0)
                  lbu          a1, 1904(s0)
                  ori          t3, t2, -1321
                  slli         zero, s11, 11
                  sub          t0, a0, a6
                  lhu          s1, 823(s0)
                  xori         s5, t6, 450
                  sra          s10, s9, s0
                  lb           a7, 1196(s0)
                  sb           s8, 1078(s0)
                  sltu         a4, s3, t2
                  or           t1, t5, s2
                  lb           a1, 1118(s0)
                  lui          gp, 818385
                  lb           s6, 190(s0)
                  srl          t1, tp, tp
                  sh           s9, 153(s0) #end riscv_load_store_rand_instr_stream_1
                  lui          gp, 1017332
172:              lui          s10, 721768
                  bgeu         s5, a7, 180f
                  ori          a3, a5, 1021
                  sltu         s5, sp, gp
                  nop
177:              nop
                  bge          s11, a1, 179f
179:              xor          t3, a3, ra
180:              xori         a3, s9, 308
                  xor          s6, t3, t3
                  bgeu         t5, s6, 194f
                  bge          s11, s10, 185f
                  beq          a3, s8, 187f
185:              beq          a2, s2, 190f
                  or           a7, s10, s4
187:              blt          a1, s1, 207f
                  xori         a0, s7, -1372
                  ori          s7, s8, -2002
190:              or           s3, s10, s8
                  nop
                  sra          a1, t3, a7
                  beq          tp, s6, 208f
194:              xori         s5, t6, -1064
                  bne          a0, a7, 196f
196:              sltiu        a5, s0, 1004
                  sub          t1, s6, a5
                  add          s3, tp, t3
                  xor          t2, a6, t0
                  andi         t2, s11, 246
                  xor          s7, s0, a7
                  xori         s6, a3, 307
                  srl          s6, a2, zero
                  addi         s5, zero, -137
                  auipc        a7, 794115
                  lui          a5, 541874
207:              bge          s5, t4, 208f
208:              and          s1, a4, t2
                  lui          a6, 462881
                  andi         gp, t6, -1725
                  srai         a1, s4, 2
                  sub          s5, t6, ra
                  blt          t3, a6, 225f
                  ori          zero, gp, -1917
                  srli         tp, s6, 21
                  bne          s11, s3, 229f
                  xor          s8, s8, a7
                  srli         s6, s10, 16
                  bge          s8, s9, 238f
                  sltiu        s3, t0, 313
                  andi         t4, t5, -422
                  srli         s0, s2, 3
                  or           t0, t4, s9
                  blt          a0, s0, 225f
225:              bne          t5, s11, 231f
                  and          s7, zero, a4
                  bgeu         s11, a3, 228f
228:              beq          t3, s4, 242f
229:              addi         a3, s9, -307
                  blt          a2, s9, 249f
231:              srai         a5, sp, 12
                  beq          s2, t3, 247f
                  slt          a0, t5, s8
                  srl          s9, t1, a4
                  beq          s5, t5, 255f
                  blt          t3, tp, 243f
                  bge          s8, s11, 238f
238:              ori          s0, t3, 208
                  addi         t2, s7, -1999
                  sra          a0, t5, t4
                  lui          t2, 287993
242:              sltiu        a5, t2, 1286
243:              andi         t6, t1, -1933
                  bne          t6, s2, 255f
                  sll          s7, s11, a3
                  ori          s1, s8, -1517
247:              add          s1, ra, t5
                  or           t1, a7, tp
249:              or           a3, t4, t1
                  bne          t4, t1, 264f
                  and          a1, a4, s1
                  add          gp, s4, t0
                  and          t0, a4, t6
                  sub          s3, a4, gp
255:              srai         s1, t5, 16
                  sltu         t1, a0, s5
                  xor          s6, s2, a7
                  lui          s10, 859498
                  sra          s3, a1, a6
                  xori         a0, s1, 632
                  ori          s3, s1, -404
                  srl          a7, t6, a4
                  sub          a0, tp, t0
264:              bgeu         t3, s0, 277f
                  auipc        t0, 651024
                  lui          s0, 556915
                  bltu         t4, s4, 269f
                  bltu         ra, t3, 275f
269:              blt          a1, a5, 285f
                  srl          t4, a7, ra
                  bne          s4, t2, 289f
                  blt          a5, s5, 273f
273:              srli         a6, s1, 3
                  sub          s0, s4, a5
275:              addi         s10, gp, -637
                  bne          s10, a5, 288f
277:              blt          s5, sp, 290f
                  slt          a4, ra, gp
                  slt          a6, s8, s2
                  sra          a2, a6, s1
                  srai         ra, t5, 11
                  bne          a6, s6, 287f
                  bltu         a6, t6, 289f
                  sra          a1, s10, s6
285:              xori         tp, s5, 424
                  add          a0, s0, a1
287:              lui          t1, 219090
288:              srai         tp, a7, 26
289:              blt          t4, t3, 308f
290:              addi         s2, s9, 700
                  addi         s2, a3, -1584
                  bge          a3, s11, 304f
                  sltu         gp, s10, ra
                  and          t0, s1, a4
                  sll          a0, t0, s0
                  and          a6, t5, s4
                  blt          a5, s2, 309f
                  srl          t1, s7, a5
                  srai         t1, t1, 15
                  slli         gp, a5, 8
                  sll          s10, a3, s7
                  slli         a3, s0, 5
                  srl          a2, t1, a0
304:              sub          t3, a0, s11
                  add          s0, zero, sp
                  slt          s5, ra, t0
                  sltiu        gp, a7, -1585
308:              sltiu        a4, s4, -2024
309:              add          tp, ra, s0
                  nop
                  auipc        s5, 935851
                  srli         gp, t5, 24
                  xor          a3, s9, zero
                  bge          sp, a4, 333f
                  add          a7, s4, a0
                  andi         t3, t2, 1300
                  addi         s1, s6, -1326
                  andi         a1, zero, 1491
                  lui          s11, 258963
                  addi         a3, s0, -934
                  addi         ra, zero, -1319
                  bne          t2, s6, 323f
323:              srl          a4, a4, s10
                  sltiu        t0, s2, 217
                  srl          a7, s7, tp
                  xor          a0, s2, s0
                  sll          zero, t1, s4
                  bne          s9, s8, 343f
                  srl          s6, t1, t0
                  slli         tp, t0, 2
                  add          s7, sp, s11
                  xor          s7, s5, a1
333:              slti         t0, ra, 1799
                  sub          s3, s8, a3
                  beq          t0, t3, 338f
                  blt          s9, zero, 353f
                  addi         s1, t2, 1736
338:              slli         s6, a5, 22
                  sub          s9, a7, s1
                  blt          s11, a4, 360f
                  srli         s5, a3, 11
                  sub          a5, a2, s1
343:              bgeu         a0, gp, 355f
                  sra          s1, s7, t1
                  srl          t3, t3, sp
                  slti         s7, t3, -656
                  lui          a5, 516811
                  bgeu         a4, s9, 355f
                  bne          s6, ra, 354f
                  sub          a1, t6, s11
                  xori         ra, a7, 1560
                  lui          a7, 875736
353:              bge          s1, sp, 367f
354:              bge          s8, s6, 366f
355:              slt          a2, a1, s6
                  srai         t3, a1, 7
                  bge          tp, t4, 364f
                  or           s5, t5, a2
                  bltu         s11, a6, 374f
360:              slli         t3, t3, 25
                  slt          a6, a5, t6
                  slti         s2, a3, -340
                  blt          a1, gp, 383f
364:              addi         s2, ra, -538
                  sltiu        a2, a4, 1465
366:              lui          tp, 970700
367:              blt          s3, s8, 373f
                  add          a0, a5, s4
                  srai         s6, s1, 14
                  lui          t1, 461387
                  sltu         s2, a1, sp
                  srai         a1, gp, 12
373:              addi         a1, s10, -1153
374:              and          s9, a6, a0
                  lui          a1, 606781
                  sltu         t4, a4, s0
                  srli         a0, s6, 4
                  beq          s9, s2, 391f
                  srl          s11, s6, s7
                  sub          s11, sp, s6
                  sll          a1, ra, s2
                  auipc        s0, 698544
383:              srli         s5, ra, 28
                  add          s10, s5, t5
                  addi         a5, a5, 1423
                  nop
                  sra          a0, a1, sp
                  sub          a1, a0, s6
                  auipc        s6, 785893
                  sltiu        ra, t6, -355
391:              srai         s6, a5, 28
                  or           s5, a5, s11
                  nop
                  nop
                  bge          gp, s6, 396f
396:              beq          s11, t5, 410f
                  andi         s10, t1, -957
                  sll          zero, t0, t1
                  or           s8, a4, a6
                  auipc        s1, 722740
                  sub          gp, s7, zero
                  ori          s1, s6, 305
                  or           s7, s2, gp
                  xor          s11, s5, a5
                  and          s1, a3, s10
                  blt          s2, tp, 426f
                  bge          t0, a0, 425f
                  beq          t2, sp, 427f
                  and          a6, s7, zero
410:              add          s9, zero, sp
                  slli         t6, t4, 19
                  sltu         a3, s7, a1
                  ori          a3, s1, -182
                  and          s0, t0, a4
                  bne          a7, s5, 430f
                  auipc        s9, 1042347
                  bltu         t2, sp, 419f
                  and          t0, s2, a2
419:              and          zero, t1, s10
                  sra          zero, a1, ra
                  sll          a0, t6, a6
                  sll          s0, gp, a2
                  beq          s9, a4, 440f
                  sub          s11, s9, a6
425:              beq          s3, s2, 440f
426:              or           s6, a3, t6
427:              add          s7, s1, a0
                  xor          s11, s5, s5
                  blt          t0, s11, 440f
430:              slt          a6, a0, sp
                  bge          a7, a0, 440f
                  beq          gp, s0, 440f
                  bltu         s11, s9, 440f
                  sub          a3, t0, a3
                  sll          a6, a2, t6
                  sub          s1, s10, a0
                  blt          s1, a5, 438f
438:              bge          t3, tp, 439f
439:              slti         tp, t0, -192
440:              add          a1, s4, sp
                  xori         t2, s9, -540
                  slti         s6, gp, 1230
                  and          ra, s1, a6
                  lw           tp, 4(t5)
                  addi         t5, t5, 64
                  andi         zero, zero, -886
581:              addi x13, x4, 0
581:              jalr x13, x13, 0
sub_7:            xor          a6, a2, s9
                  addi         t5, t5, -24
                  sra          t1, s4, gp
                  sw           tp, 4(t5)
                  or           s7, s4, a2
                  la           a1, region_0+1810 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, -63(a1)
                  addi         t4, a4, -86
                  srli         s9, s1, 30
                  add          s9, t6, t1
                  sb           s11, -37(a1)
                  sltu         s2, t3, s4
                  lw           a7, 2(a1)
                  sll          s6, s8, s10
                  slt          a6, s8, a4
                  ori          a6, t5, 1166
                  sb           tp, -61(a1)
                  sh           tp, -16(a1)
                  sb           t0, -45(a1)
                  slti         t2, s5, 1066
                  srai         s0, s9, 23
                  xor          s7, a2, s4
                  lb           a0, -23(a1)
                  sltiu        s7, zero, -642
                  and          t1, s0, gp
                  and          a7, a1, s1
                  sb           s5, -15(a1)
                  sb           t1, -33(a1)
                  and          s11, s4, s6
                  lb           s5, 5(a1)
                  sh           zero, 22(a1)
                  slt          a4, t5, sp
                  srl          s6, s11, a3
                  sw           s5, 46(a1)
                  addi         s10, ra, -457
                  xor          a0, tp, t5
                  sltiu        t4, s6, 218
                  lbu          s9, 16(a1) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+1288 #start riscv_load_store_rand_instr_stream_4
                  or           zero, a1, s6
                  sb           s5, 13(a7)
                  sra          s0, s9, s7
                  lbu          gp, 13(a7)
                  lbu          s1, 10(a7)
                  xor          a5, s5, s2
                  add          t1, zero, a7
                  xori         a3, a7, 1719
                  slt          a2, s8, gp
                  sll          t3, a0, sp
                  addi         t3, s11, -1867
                  auipc        s11, 354232
                  and          a5, a7, gp
                  sb           s5, 6(a7)
                  sra          a3, s8, s3
                  ori          a0, t2, -1616
                  sltu         gp, s2, t2
                  sltu         a3, t5, s7
                  lw           t6, -12(a7)
                  sb           t3, -5(a7)
                  lh           gp, -4(a7)
                  lb           s9, -3(a7)
                  ori          t0, a4, -1891
                  xori         s6, a2, 1545
                  lb           s11, 1(a7)
                  add          tp, tp, t3
                  sub          zero, t3, t2
                  slti         t3, t3, 1179
                  lhu          s10, -12(a7)
                  sll          a6, a4, zero
                  nop
                  srai         s3, s9, 23
                  xor          s8, t0, ra
                  add          a4, a1, sp
                  sh           a3, 16(a7)
                  auipc        t4, 956677
                  or           a0, s1, tp
                  add          a6, a7, s0
                  sh           s5, -8(a7) #end riscv_load_store_rand_instr_stream_4
                  la           t1, region_1+86 #start riscv_load_store_rand_instr_stream_3
                  ori          a6, a7, -646
                  xor          a0, t5, a3
                  sltu         s10, t1, a4
                  lb           a2, 240(t1)
                  lb           s8, -27(t1)
                  xori         s11, s9, 1304
                  and          s5, t0, a0
                  lh           s7, 118(t1)
                  sb           sp, 223(t1)
                  srl          s8, a2, a4
                  sltu         a7, s9, a5
                  lhu          s6, -42(t1)
                  sh           tp, 92(t1)
                  sub          a0, s5, a3
                  sb           s1, 62(t1)
                  and          s9, s10, a7
                  nop
                  auipc        a3, 535623
                  slt          ra, t0, s2
                  sb           t4, -63(t1)
                  xori         s6, a2, -702
                  sb           s6, 221(t1)
                  srai         s3, t4, 8
                  sub          zero, s11, s2
                  xori         s9, t1, -1414
                  srl          s9, s2, a4
                  ori          a4, s8, -65
                  and          s10, a5, a0
                  sb           a3, 111(t1)
                  lb           t2, 147(t1)
                  lb           a3, 33(t1)
                  add          t3, a4, tp
                  lw           a1, -30(t1)
                  addi         a0, s4, -1166
                  sb           s11, 163(t1)
                  sub          gp, s10, a3
                  lbu          gp, 11(t1)
                  addi         a4, t2, 1502
                  slti         s11, t0, 1220
                  sb           gp, 211(t1)
                  or           s5, s0, s1
                  lh           ra, 136(t1)
                  lb           gp, 49(t1)
                  lhu          s10, -84(t1)
                  sll          t3, t5, t1
                  lw           t2, 210(t1)
                  lb           ra, 83(t1)
                  or           a5, t0, s8
                  srli         s7, s1, 27
                  xori         a4, s2, 947
                  lb           a5, 169(t1) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+359 #start riscv_load_store_rand_instr_stream_1
                  sll          a3, t0, a2
                  lbu          a1, 8(a6)
                  lbu          s11, 2(a6)
                  lbu          gp, -4(a6)
                  xori         s7, t1, -1050
                  sh           t5, 13(a6)
                  sh           gp, -5(a6)
                  lb           t3, -12(a6)
                  lb           s7, 6(a6)
                  lbu          s7, -12(a6)
                  srli         s11, gp, 9
                  lb           s1, -16(a6)
                  auipc        s7, 254654
                  lbu          s2, 5(a6)
                  nop
                  lui          ra, 552860
                  or           s11, gp, t4
                  sb           a7, 6(a6)
                  addi         t4, s1, -1096
                  add          s11, a1, zero
                  sb           s0, -4(a6)
                  sll          t1, s4, s5
                  sb           s0, -14(a6)
                  sb           s4, -14(a6)
                  lbu          a2, 1(a6)
                  sb           gp, 4(a6)
                  sb           a7, -7(a6)
                  lbu          s1, -13(a6)
                  lh           s10, 3(a6)
                  sb           ra, -5(a6) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+1610 #start riscv_load_store_rand_instr_stream_6
                  andi         a1, tp, 1302
                  lb           s1, -65(gp)
                  nop
                  auipc        t1, 850569
                  sw           gp, -70(gp)
                  lb           a7, 191(gp)
                  lui          a0, 592472
                  sub          s2, a5, a3
                  sh           t5, 68(gp)
                  sb           sp, -35(gp)
                  lb           s6, 211(gp)
                  sltu         t0, s10, s11
                  sb           a4, 33(gp)
                  lbu          s2, 30(gp)
                  lb           s8, 190(gp)
                  lbu          s9, 181(gp)
                  sb           s7, 20(gp)
                  srl          a2, t0, s11
                  lh           s8, -86(gp)
                  lb           a4, -176(gp)
                  sb           t0, 81(gp)
                  sb           t0, -173(gp)
                  lui          t0, 830804
                  srl          t1, a4, t6
                  lbu          t4, 19(gp)
                  ori          s3, t5, -900
                  add          t6, ra, s0
                  lb           s3, 103(gp)
                  add          t1, s4, a5
                  lb           s5, 158(gp)
                  lhu          t1, 222(gp)
                  lbu          a2, -77(gp)
                  sb           s1, -160(gp)
                  slli         a2, s4, 11
                  lw           t3, -198(gp) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_0+91 #start riscv_load_store_rand_instr_stream_8
                  sltiu        s3, s9, 964
                  lb           a3, 250(t3)
                  lb           t1, 170(t3)
                  nop
                  sll          a1, t1, a1
                  xor          a0, t3, sp
                  andi         t6, s2, -284
                  xori         s0, t0, -1189
                  add          a2, s5, gp
                  slt          a7, t6, a0
                  lb           a4, 54(t3)
                  sra          t1, t0, a0
                  lui          a7, 140167
                  sub          s10, a1, a4
                  or           s0, t5, a7
                  lhu          s0, 245(t3)
                  lh           zero, -31(t3)
                  xori         a4, t1, -801
                  nop
                  srli         s9, ra, 19
                  sub          s7, s5, a0
                  slt          tp, t5, t2
                  lhu          t4, -15(t3)
                  and          a3, s6, s11
                  sltiu        s8, sp, 236
                  addi         a2, s1, -1816
                  addi         t2, t6, 1369
                  sub          tp, s5, s8
                  sb           s10, 232(t3)
                  xori         ra, a6, -1000
                  sub          zero, a3, ra
                  srai         a2, s9, 8
                  addi         tp, s6, -2031
                  lhu          t2, -35(t3)
                  or           s7, s11, a6
                  lb           t0, 138(t3)
                  lbu          zero, 160(t3)
                  lb           a4, 76(t3)
                  slti         t6, s0, 502
                  sra          gp, s10, t1
                  lh           a0, 155(t3)
                  lb           zero, 220(t3)
                  lb           a6, -52(t3)
                  nop
                  lbu          tp, 111(t3)
                  lbu          s3, -25(t3) #end riscv_load_store_rand_instr_stream_8
                  la           s6, region_0+823 #start riscv_load_store_rand_instr_stream_7
                  sb           zero, -11(s6)
                  sb           a7, 16(s6)
                  lb           ra, 16(s6)
                  lbu          a4, 10(s6)
                  sltu         t2, s4, t3
                  ori          s8, a5, 771
                  srli         a2, a4, 14
                  lw           a6, 13(s6)
                  lbu          s2, 4(s6)
                  slt          t6, t4, a3
                  lb           s5, 16(s6)
                  lbu          s8, 3(s6)
                  and          s2, t3, a2
                  sb           s6, -6(s6)
                  lb           s3, 6(s6)
                  sltiu        a5, ra, -1753
                  lb           t4, -8(s6)
                  srli         zero, t1, 24
                  lb           t3, -2(s6)
                  sltu         a5, t3, s0
                  sb           s6, -7(s6)
                  and          t0, a2, t2
                  sub          s2, s7, gp
                  lui          a3, 1028642
                  sltu         a4, t6, t4
                  sb           a2, -9(s6)
                  lbu          t6, 0(s6)
                  lb           s5, 9(s6)
                  lb           s11, -14(s6)
                  nop
                  lbu          a7, -8(s6)
                  srl          gp, a3, s11
                  sra          a6, ra, s7
                  lui          s9, 799008
                  lhu          t1, -3(s6)
                  lbu          t0, -16(s6)
                  lhu          t2, 3(s6) #end riscv_load_store_rand_instr_stream_7
                  blt          t2, s8, 15f
                  srli         tp, a4, 10
                  and          a4, a5, sp
                  and          s8, s9, s2
                  sub          t4, s3, a2
                  slti         s2, t4, 1934
                  xori         s8, a2, -1397
                  auipc        gp, 722805
                  xori         s7, s6, 976
                  srli         s8, s4, 3
                  beq          t1, tp, 27f
                  sub          tp, s5, a0
                  bgeu         t1, s7, 23f
                  sll          a2, s5, s8
                  slti         t6, s0, 95
15:               add          a5, s0, a3
                  srai         t0, sp, 19
                  slt          t0, s0, a0
                  bgeu         s1, t4, 37f
                  lui          s2, 997413
                  andi         t3, a6, 1887
                  slti         s11, tp, -853
                  srl          s8, t0, s2
23:               nop
                  addi         t3, t2, 1180
                  bgeu         a5, gp, 38f
                  sub          s9, s0, s4
27:               nop
                  srl          s7, a1, s4
                  bgeu         t0, ra, 47f
                  auipc        gp, 693797
                  sltu         zero, ra, ra
                  bge          t3, tp, 41f
                  bge          t4, s6, 49f
                  bgeu         a2, t6, 47f
                  nop
                  xori         s1, a7, 246
37:               blt          s8, s1, 43f
38:               auipc        a1, 942414
                  slli         s11, t4, 20
                  blt          t0, s9, 45f
41:               slli         s3, s10, 2
                  sra          t6, a4, a6
43:               xori         a4, t6, 67
                  ori          s11, a7, 196
45:               lui          s2, 503978
                  blt          s6, a5, 58f
47:               bltu         s7, a0, 58f
                  srl          tp, s11, s8
49:               bge          a2, s10, 59f
                  bge          t3, s11, 57f
                  srli         a0, s9, 7
                  and          ra, tp, t1
                  slti         ra, s4, -47
                  srli         s0, sp, 25
                  slli         a3, s5, 2
                  addi         s6, tp, 335
57:               srl          tp, s4, s2
58:               xori         s2, ra, 263
59:               bne          t4, s11, 69f
                  srai         t6, ra, 14
                  srai         gp, s11, 16
                  slli         a6, a0, 24
                  or           s6, t5, gp
                  srai         s3, a2, 29
                  sltiu        t1, t0, 557
                  slti         a2, s11, 737
                  srli         t0, s7, 4
                  slti         t1, ra, -710
69:               slli         s1, s3, 20
                  sltiu        t4, s5, 1205
                  auipc        zero, 301485
                  sub          t3, s5, t2
                  bne          a4, zero, 74f
74:               slt          t0, a4, s10
                  lui          gp, 596406
                  srl          ra, s4, t1
                  srai         s10, s8, 28
                  slli         s0, a6, 6
                  nop
                  slti         ra, zero, 240
                  slt          a7, sp, s3
                  sltu         tp, s8, a7
                  bne          sp, a4, 85f
                  ori          s1, a3, -573
85:               srai         s0, a0, 11
                  bltu         s9, a6, 95f
                  srai         a4, s11, 17
                  add          t3, t2, s9
                  beq          s6, a4, 97f
                  sra          a2, sp, s3
                  srl          a0, t0, a4
                  srl          a5, t2, t2
                  bltu         s7, t0, 106f
                  sra          a1, t3, ra
95:               sltiu        a6, a3, 618
                  blt          a7, s3, 111f
97:               blt          t0, s2, 100f
                  sra          t0, tp, t1
                  srai         gp, s3, 23
100:              sltu         s3, s8, sp
                  srai         a7, t3, 4
                  add          s7, a0, s3
                  add          t6, a6, t5
                  bgeu         t1, t5, 117f
                  blt          a5, tp, 112f
106:              sltu         a4, s0, s7
                  sltiu        a7, a5, 1525
                  lui          a0, 578943
                  or           t1, s0, s8
                  lui          a5, 904197
111:              sltiu        zero, t0, -1239
112:              or           t3, zero, zero
                  lui          s3, 697483
                  addi         a0, s2, -34
                  xori         a2, a4, -1068
                  srl          s6, a1, t1
117:              xori         s11, sp, 1617
                  sltu         s6, t0, a5
                  or           t2, t5, t1
                  slti         t4, s10, -1464
                  bne          s8, s11, 131f
                  andi         s1, t2, 691
                  sra          t2, s0, a3
                  bne          t6, a6, 126f
                  ori          s1, a1, 677
126:              sub          s2, s5, s3
                  and          a5, a7, a6
                  xor          tp, zero, tp
                  andi         t3, sp, -546
                  bne          t6, t6, 148f
131:              and          ra, s4, s10
                  add          s1, t2, t0
                  bne          s11, s4, 153f
                  srl          s6, t0, a4
                  xori         s5, s0, -817
                  xori         s11, s11, 1768
                  add          a2, sp, sp
                  nop
                  nop
                  srl          ra, s3, t5
                  add          a2, a6, a0
                  slt          s7, ra, a3
                  addi         a3, a7, -1054
                  ori          s3, a7, -402
                  addi         s9, a3, -76
                  srai         s6, a6, 29
                  sltu         s8, s10, t4
148:              bne          ra, t2, 155f
                  sub          zero, s7, tp
                  sll          s7, t6, s7
                  addi         a5, s1, 411
                  srl          s8, s10, s10
153:              bne          t5, t0, 163f
                  bltu         a5, sp, 164f
155:              srai         t2, zero, 6
                  add          s2, ra, s9
                  srl          t1, ra, t2
                  beq          s11, zero, 173f
                  slti         s9, tp, 1719
                  srai         t3, a7, 20
                  slti         t2, s9, -1343
                  sltiu        t2, t2, 500
163:              addi         s6, s8, 1384
164:              sll          tp, a4, t1
                  srai         a5, t3, 13
                  or           ra, s5, t4
                  or           zero, s2, s11
                  srl          gp, t3, a7
                  andi         s10, tp, -641
                  bltu         a4, a4, 179f
                  xor          a0, s6, zero
                  xori         a5, gp, 901
173:              slli         a0, s7, 14
                  slli         t0, s3, 16
                  addi         s7, s1, 795
                  beq          t1, ra, 185f
                  srli         t0, t6, 25
                  andi         s9, a3, 987
179:              slli         s7, s2, 18
                  bne          s11, a1, 197f
                  addi         a7, s9, 1635
                  srl          a3, a5, tp
                  and          a0, ra, t6
                  slli         s6, gp, 10
185:              auipc        a6, 754393
                  xor          zero, s1, s1
                  sll          zero, t2, s10
                  srai         a0, ra, 29
                  srl          s2, t2, tp
                  srli         a7, s10, 4
                  srai         t0, t3, 30
                  bgeu         s8, a7, 194f
                  nop
194:              xor          t3, s11, a3
                  beq          tp, s2, 208f
                  add          a2, t4, t0
197:              ori          s3, a4, -339
                  nop
                  bgeu         a4, s1, 206f
                  blt          a3, gp, 213f
                  xori         s8, s10, -489
                  beq          a1, zero, 210f
                  srai         a4, s5, 16
                  sub          t6, a7, a1
                  sra          s9, s0, s11
206:              sll          t4, t5, a5
                  slti         tp, s1, -1254
208:              xori         a4, t5, 617
                  sll          s11, a5, t5
210:              andi         a6, sp, 1604
                  blt          t4, t2, 216f
                  ori          s1, s4, 807
213:              beq          a3, t2, 224f
                  sub          s8, a5, s10
                  sub          s8, s1, a6
216:              xori         t0, a0, -587
                  lui          t0, 677420
                  addi         a4, s1, -1848
                  sltiu        a6, a3, -1558
                  lui          t6, 888363
                  nop
                  auipc        a0, 607713
                  srli         s9, s10, 0
224:              sltiu        a3, s8, -1428
                  bltu         s7, s7, 236f
                  sra          a0, a7, a0
                  srl          t6, s5, zero
                  ori          s5, s1, -1203
                  sll          gp, s2, s2
                  bltu         a7, s0, 240f
                  and          s0, t0, a3
                  auipc        s10, 231693
                  blt          s8, zero, 240f
                  slli         s5, s0, 16
                  ori          s5, s0, 269
236:              ori          ra, tp, 1021
                  or           t3, t1, s11
                  nop
                  srl          gp, tp, s2
240:              bge          a2, t2, 241f
241:              srl          t4, ra, a0
                  ori          t2, s0, 765
                  add          s11, a3, s4
                  and          s10, t5, s4
                  xori         s0, s2, 1285
                  or           s1, s6, s5
                  sltiu        tp, s1, 180
                  slt          a0, zero, s3
                  bltu         s10, a5, 261f
                  andi         a5, s2, 679
                  xori         a5, sp, -1312
                  or           tp, a3, s3
                  sra          s8, s4, t1
                  addi         ra, t3, -206
                  slti         s3, s0, -1494
                  add          a1, sp, a2
                  or           s0, zero, t4
                  sltiu        s2, s11, 251
                  srli         t3, s11, 2
                  addi         a3, gp, -178
261:              slti         a7, zero, -1479
                  slt          s0, s5, t2
                  addi         s7, s9, -163
                  bltu         t4, ra, 266f
                  blt          s8, a4, 271f
266:              slti         s10, sp, -1500
                  andi         s2, s5, 72
                  ori          s7, tp, -1564
                  bge          sp, s5, 282f
                  bltu         a1, a4, 277f
271:              slti         a5, t1, -531
                  lui          s2, 270421
                  bge          a1, sp, 286f
                  andi         a3, a0, 1251
                  slti         s0, s10, -547
                  bne          t0, t2, 279f
277:              slli         s5, t5, 2
                  bltu         gp, ra, 296f
279:              xor          ra, a1, sp
                  slti         a7, s1, -1933
                  beq          s0, s8, 299f
282:              srl          t0, a0, s2
                  beq          ra, s4, 303f
                  sll          s1, a5, s9
                  srai         t6, ra, 26
286:              auipc        a1, 312808
                  srai         zero, t6, 16
                  srli         a3, t4, 22
                  bgeu         t0, a5, 308f
                  slli         tp, s9, 27
                  bge          sp, tp, 307f
                  beq          zero, a0, 307f
                  auipc        t6, 726549
                  or           a2, t4, s5
                  bgeu         s1, s11, 302f
296:              and          s1, sp, a4
                  sll          s3, t0, s4
                  srli         a5, s0, 21
299:              addi         a1, t5, -201
                  or           s6, gp, s9
                  and          t0, t1, t4
302:              sll          s10, tp, a3
303:              sra          t1, s11, ra
                  auipc        a1, 638998
                  addi         t3, zero, -1515
                  nop
307:              auipc        a4, 1002426
308:              sll          ra, a4, s3
                  nop
                  nop
                  srai         ra, zero, 7
                  sra          a4, sp, s5
                  auipc        t2, 813041
                  bgeu         s7, s8, 324f
                  sltiu        t4, s9, 1135
                  xori         s9, a3, -977
                  sra          t4, s5, gp
                  srai         s0, a7, 30
                  bne          a7, t5, 331f
                  bgeu         a2, t3, 335f
                  addi         s7, s7, 1012
                  srli         a3, t1, 7
                  bne          tp, s8, 326f
324:              sltiu        t0, s0, 1570
                  beq          s10, t3, 326f
326:              sltu         t6, ra, t1
                  lui          a2, 394201
                  slti         tp, gp, -254
                  xor          s9, s5, ra
                  addi         a0, s4, -1668
331:              sltu         s6, s3, a6
                  bgeu         s10, s5, 350f
                  sra          a5, s11, sp
                  blt          a2, s9, 352f
335:              addi         t0, s0, 428
                  auipc        s6, 966843
                  addi         s7, t6, 609
                  nop
                  sll          a1, a3, s10
                  bgeu         s9, a6, 347f
                  srl          t1, s0, t1
                  nop
                  sltiu        s1, sp, -1923
                  sll          s1, a6, a7
                  bgeu         gp, s2, 354f
                  sltiu        a3, s3, -245
347:              sra          a7, a2, a1
                  xor          zero, a2, t2
                  slt          tp, s0, a0
350:              addi         s7, s6, 922
                  sltiu        a7, a2, -544
352:              slt          s10, a7, s6
                  nop
354:              andi         gp, t1, -600
                  bltu         s6, s10, 365f
                  xori         s3, a6, -71
                  add          a6, t6, t5
                  lui          s5, 717558
                  addi         s7, s7, 245
                  sra          s9, s8, tp
                  slt          s11, s7, a4
                  xori         s2, s5, 467
                  sub          s10, t3, t4
                  xori         t1, a5, 188
365:              xor          s3, s4, s5
                  ori          s2, t4, -635
                  bge          s6, s2, 373f
                  addi         s6, s4, -849
                  ori          zero, s9, 501
                  srl          a5, tp, tp
                  and          s11, s0, sp
                  nop
373:              add          s6, t5, s6
                  nop
                  srai         s6, gp, 7
                  and          a5, t6, t5
                  lui          tp, 168667
                  lui          tp, 813374
                  andi         s10, a2, -1023
                  slli         t2, t4, 10
                  srl          a0, a0, a5
                  srai         t2, ra, 14
                  ori          t3, a2, -1467
                  bne          t2, a5, 397f
                  sub          gp, s3, a0
                  bne          s7, a5, 397f
                  bne          t4, a1, 407f
                  bltu         a5, s1, 390f
                  nop
390:              beq          s2, tp, 397f
                  srli         s3, s9, 13
                  srl          a3, s11, s10
                  lui          a3, 654191
                  srl          s10, s2, a0
                  sra          s7, a1, a2
                  addi         a7, s7, -1773
397:              and          s6, s7, a6
                  and          a4, s8, tp
                  andi         t6, s4, -1226
                  or           s8, t5, t3
                  blt          s2, a4, 411f
                  srai         a3, s1, 15
                  sub          s7, gp, t4
                  bgeu         t1, a0, 417f
                  xor          s1, s8, t2
                  slti         s8, s6, 1035
407:              xor          gp, t4, t4
                  srli         s5, s2, 24
                  bne          sp, s4, 418f
                  srl          a7, a5, s1
411:              srai         s9, t3, 24
                  bltu         s6, t5, 423f
                  bltu         s4, s9, 421f
                  sra          a5, s4, a7
                  add          s6, a1, t2
                  slti         gp, tp, -468
417:              sll          t1, s5, t3
418:              sub          a7, t4, s3
                  ori          s10, a1, 1006
                  lui          s3, 261115
421:              xori         s1, a4, 1307
                  lui          tp, 903313
423:              srl          s11, s11, t2
                  srai         a5, s3, 8
                  sltu         s2, s8, a3
                  xor          a2, s3, sp
                  slti         ra, s7, -1678
                  auipc        s0, 106872
                  beq          s3, a1, 448f
                  sltu         t6, a0, a6
                  addi         t4, s0, -1826
                  beq          s2, a5, 437f
                  lui          t2, 804185
                  sll          a4, a2, a5
                  xori         t1, t2, 1092
                  addi         a2, s8, -875
437:              and          a0, t1, s0
                  addi         a7, s1, 1566
                  lui          a3, 1011932
                  beq          s0, t0, 453f
                  bne          a4, a7, 458f
                  sltiu        s7, gp, -1749
                  bge          s2, sp, 445f
                  or           s10, s1, gp
445:              beq          ra, t0, 458f
                  sltu         s2, a5, t6
                  nop
448:              lui          s0, 1016591
                  blt          tp, a6, 465f
                  sltiu        t0, a4, -1835
                  auipc        a0, 789919
                  lui          a3, 283852
453:              blt          s2, t1, 468f
                  lui          a2, 125914
                  sll          s11, a1, s2
                  slli         s9, a0, 10
                  beq          t0, s10, 467f
458:              srli         t4, a1, 30
                  slt          s3, s7, sp
                  srl          s3, zero, s1
                  slli         s1, t4, 27
                  sra          a3, t5, ra
                  blt          s1, s8, 481f
                  addi         ra, s3, 382
465:              or           a7, s11, sp
                  sltu         s5, a6, t6
467:              bne          zero, s6, 480f
468:              and          t0, a3, a5
                  srli         s11, zero, 19
                  slti         zero, a5, -1806
                  and          t0, s4, gp
                  srai         s9, t0, 0
                  addi         a2, a1, 1540
                  lui          s2, 776522
                  bgeu         a5, a4, 486f
                  slti         s11, a2, 28
                  blt          s7, t1, 497f
                  bge          s11, t6, 491f
                  slli         t1, a6, 9
480:              nop
481:              sltu         t2, t0, tp
                  xori         s9, s2, -1693
                  sra          s11, ra, a7
                  lui          t1, 344952
                  or           t0, s2, tp
486:              xor          a5, zero, s4
                  bgeu         a3, a3, 496f
                  sll          zero, tp, zero
                  sra          s3, a6, a1
                  lui          s2, 490583
491:              ori          t2, s3, 464
                  auipc        a1, 81852
                  sra          s10, gp, a5
                  sltiu        a2, s2, -2008
                  and          t1, s1, t6
496:              bne          s11, gp, 497f
497:              addi         tp, gp, 783
                  bne          t2, t1, 505f
                  slti         t1, tp, 416
                  sll          t2, s6, a7
                  or           tp, t3, a4
                  srli         s5, s6, 8
                  bltu         a7, s4, 520f
                  andi         a5, a1, 1771
505:              add          s7, s5, a1
                  bltu         a6, s3, 513f
                  srli         t2, s10, 27
                  blt          s9, s8, 517f
                  slli         s5, t4, 27
                  sll          s3, a1, a4
                  sll          s2, ra, t5
                  sub          ra, s11, t4
513:              sltu         s5, sp, s1
                  bltu         t1, gp, 529f
                  add          s5, s9, a2
                  andi         s2, t2, 887
517:              or           s11, t5, a4
                  bgeu         s6, s3, 536f
                  bgeu         t6, s5, 530f
520:              addi         a0, sp, -1329
                  sra          a5, a0, s6
                  slli         a1, a4, 12
                  srli         a7, tp, 20
                  xori         a7, s3, 410
                  sll          t4, s10, t4
                  bne          t5, s5, 528f
                  blt          gp, a2, 537f
528:              bgeu         gp, tp, 535f
529:              slti         a3, a2, -53
530:              ori          t1, s10, 1414
                  beq          a1, t3, 536f
                  srli         t3, a6, 2
                  srl          s9, s10, s3
                  add          ra, s5, s7
535:              sra          t0, a7, t6
536:              sra          a0, sp, s6
537:              sub          ra, s1, a5
                  slti         s11, s8, 1148
                  add          gp, ra, a3
                  sub          s11, t1, a3
                  sub          s0, a7, a1
                  sra          ra, s11, sp
                  bltu         zero, a6, 556f
                  sub          gp, s3, s11
                  or           t0, t6, s8
                  sltu         s1, s4, s8
                  slli         a4, t3, 18
                  nop
                  blt          s11, t4, 561f
                  ori          tp, gp, -1027
                  srli         a5, ra, 5
                  slt          s1, s3, t6
                  sll          t1, gp, s1
                  sltiu        s0, t2, -862
                  xori         a1, t4, -1120
556:              srl          s7, s4, a5
                  auipc        s3, 266383
                  add          t4, s9, s7
                  srai         t1, t0, 3
                  nop
561:              sltu         a2, s7, t6
                  blt          t2, a3, 568f
                  sub          a5, a6, t6
                  auipc        gp, 923113
                  andi         s7, s10, -1045
                  beq          sp, s3, 579f
                  bge          s4, s10, 586f
568:              lui          s6, 290431
                  sltiu        a2, s8, 825
                  srl          gp, t5, zero
                  blt          tp, a1, 573f
                  xori         t4, s6, -1233
573:              nop
                  srl          s11, s10, s5
                  add          s9, a2, a7
                  sll          gp, a7, s0
                  bne          a2, s5, 585f
                  beq          s5, s3, 594f
579:              nop
                  add          a7, a7, s10
                  bgeu         a6, s2, 591f
                  sub          zero, t4, s9
                  sra          s0, s2, a4
                  blt          gp, a0, 587f
585:              andi         t1, t1, 1813
586:              or           s7, t2, t5
587:              srli         tp, a1, 16
                  ori          a0, t3, -1720
                  or           s0, s6, s7
                  add          s11, s3, a2
591:              bgeu         s2, t6, 606f
                  beq          s8, t5, 593f
593:              lui          tp, 958233
594:              auipc        t3, 130201
                  bltu         a2, s4, 608f
                  xori         a3, t3, -358
                  bltu         s3, a1, 614f
                  nop
                  srai         s9, a4, 21
                  xori         t3, s0, -1703
                  xori         t2, sp, -1432
                  nop
                  bne          t5, a1, 605f
                  slli         s3, s5, 10
605:              bltu         s4, tp, 613f
606:              slt          gp, gp, s4
                  sll          s9, a2, t3
608:              sra          a2, t4, a5
                  or           t0, t4, a4
                  lui          s11, 907799
                  bne          s10, sp, 630f
                  bge          t5, tp, 625f
613:              ori          a3, t5, 1611
614:              bne          s7, s3, 630f
                  bltu         s11, a2, 626f
                  and          t2, s4, t5
                  or           t3, t1, s4
                  xor          tp, s2, ra
                  add          s7, s9, a6
                  slti         a1, t4, 119
                  slti         a6, s11, 1793
                  sub          s6, t5, s2
                  ori          t4, s8, 2022
                  or           s5, s7, ra
625:              bltu         t0, t2, 640f
626:              srai         a4, s3, 23
                  bne          a6, s3, 636f
                  xor          t6, a5, s7
                  bne          a5, t6, 636f
630:              sll          t0, s0, tp
                  auipc        a6, 1027053
                  bge          t5, s6, 650f
                  beq          gp, s7, 646f
                  beq          gp, s0, 645f
                  slli         a3, tp, 25
636:              slt          t3, s5, t3
                  sll          a3, a5, t6
                  bltu         a1, s1, 645f
                  bge          a6, s1, 651f
640:              srli         a0, a7, 30
                  sltiu        a7, t3, 1234
                  auipc        tp, 121338
                  beq          s9, s9, 653f
                  beq          a4, t1, 647f
645:              slt          a6, a6, t1
646:              srli         s5, a5, 18
647:              slli         a5, t4, 23
                  or           zero, s4, a7
                  srai         s9, tp, 6
650:              addi         s11, s6, -1349
651:              blt          a7, s7, 658f
                  slti         s5, s2, -513
653:              sltiu        ra, a5, -1930
                  sra          s6, s0, t1
                  slt          s10, ra, s9
                  sll          s6, s4, sp
                  bne          a1, a5, 666f
658:              slti         s6, a0, 1638
                  srli         s3, a7, 6
                  slt          tp, zero, a5
                  sra          t6, gp, s8
                  slt          ra, a1, t6
                  ori          s7, s11, -1643
                  auipc        s9, 8369
                  or           a1, s4, a1
666:              or           a3, zero, t2
                  bgeu         t4, gp, 677f
                  or           a5, t2, a3
                  sra          a2, ra, s1
                  addi         s0, a1, 956
                  sltiu        s1, a6, -298
                  bgeu         t1, s3, 692f
                  add          gp, s10, s4
                  bltu         a3, ra, 692f
                  slt          t1, s9, a0
                  srli         s1, a1, 8
677:              nop
                  add          tp, a3, t0
                  bne          s9, s5, 692f
                  sltu         t2, s5, sp
                  sra          zero, a1, s3
                  sltiu        tp, s1, -1297
                  add          a2, a1, t3
                  andi         a0, s2, 670
                  sltu         s11, t3, a7
                  la           s11, region_1+954 #start riscv_load_store_rand_instr_stream_0
                  sw           gp, -6(s11)
                  sll          a4, a4, a4
                  lui          a4, 611524
                  sh           a1, -8(s11)
                  slli         a0, sp, 17
                  lh           a7, 2(s11)
                  lui          s5, 230593
                  sb           s5, 11(s11)
                  sb           gp, -16(s11)
                  lbu          a7, -15(s11)
                  lhu          s7, 12(s11)
                  ori          a3, a4, -823
                  lw           zero, 10(s11)
                  ori          a5, t0, -95
                  ori          a3, s8, 223
                  slt          a7, a4, a5
                  lb           t3, -1(s11)
                  nop
                  sb           a5, 3(s11)
                  nop
                  sltiu        s1, s2, -918
                  lhu          t1, -12(s11)
                  srli         ra, t2, 18
                  nop
                  xori         s8, t2, -1262
                  xori         tp, a7, -1954
                  add          s3, sp, ra
                  lbu          a1, -15(s11)
                  sw           s7, 14(s11)
                  srl          a5, a5, s6
                  sltu         t2, t0, a2
                  sub          a7, s10, gp
                  sb           s6, 7(s11)
                  lh           t0, 6(s11)
                  lhu          t2, -12(s11)
                  sll          a5, s2, s0
                  sb           a2, 5(s11)
                  lhu          a6, 0(s11)
                  lbu          s10, 2(s11)
                  nop
                  lhu          a1, -16(s11)
                  sh           s4, -4(s11)
                  xori         a7, sp, -1201
                  sh           a0, -6(s11)
                  or           gp, t1, s3
                  ori          s10, s3, 1504
                  lw           a4, -6(s11)
                  sra          s2, s3, s9
                  xori         t1, s9, 1183
                  or           s5, t3, s2
                  sltu         a5, s2, s9
                  sb           a1, 15(s11)
                  andi         zero, tp, -510
                  lbu          s3, 16(s11)
                  lb           t0, 11(s11) #end riscv_load_store_rand_instr_stream_0
                  slt          s9, s5, t2
                  sltiu        s9, t0, -1097
                  auipc        a2, 139369
                  or           s9, s10, a6
                  srl          t4, s7, a7
                  srl          t6, a0, s2
692:              add          gp, s6, a0
                  andi         gp, s11, 1443
                  addi         s6, t5, 1009
                  sra          s10, s10, s11
                  bgeu         sp, a0, 702f
                  auipc        s8, 318541
                  slt          t0, s0, ra
                  xor          s0, a4, s6
                  sra          s6, s7, a0
                  beq          s5, a4, 706f
702:              sra          a0, gp, s6
                  bgeu         a6, s4, 713f
                  slt          t4, t4, a7
                  nop
706:              bge          a7, a0, 721f
                  or           a2, s5, s8
                  bltu         s2, sp, 710f
                  slt          s10, s6, t2
710:              blt          s9, a7, 721f
                  srli         a7, a6, 20
                  bne          s4, zero, 719f
713:              and          s6, t4, t0
                  slli         gp, s1, 24
                  andi         a3, a2, 1935
                  xori         s9, a6, 805
                  slti         a1, tp, 748
                  xor          a3, t3, s2
719:              xor          s3, a2, s8
                  sra          s6, s7, t3
721:              beq          t4, t5, 734f
                  addi         ra, t0, -1032
                  srli         gp, t2, 27
                  lui          t2, 910730
                  bge          t3, s11, 740f
                  srai         s6, s10, 30
                  nop
                  bge          a3, s5, 738f
                  slt          s5, t1, a7
                  bgeu         a5, t4, 748f
                  and          gp, s6, a7
                  xori         a0, s5, -446
                  ori          s1, s7, 2012
734:              addi         gp, s7, 1969
                  blt          a7, t3, 755f
                  sltu         a5, gp, a2
                  and          s9, t3, sp
738:              addi         s8, t0, -1324
                  slt          t3, s11, t0
740:              slli         s11, s6, 18
                  or           s6, s6, tp
                  bne          a4, zero, 754f
                  or           t2, s5, a1
                  slli         t0, s3, 21
                  sltiu        a6, a5, 981
                  slli         t0, s6, 14
                  lui          s7, 942830
748:              xori         zero, a3, -687
                  sll          a4, t3, ra
                  srai         ra, s4, 20
                  nop
                  xor          a6, t1, t1
                  la           a3, region_0+1877 #start riscv_load_store_rand_instr_stream_5
                  add          a4, tp, t4
                  sll          s1, t3, a1
                  lbu          t0, -48(a3)
                  sb           s2, -4(a3)
                  sw           t6, 3(a3)
                  sltiu        zero, a2, 1729
                  sb           a5, 39(a3)
                  lbu          zero, -16(a3)
                  lw           zero, -5(a3)
                  sb           ra, -34(a3)
                  lbu          s5, -38(a3)
                  nop
                  sub          s11, a2, tp
                  srl          s10, t3, a4
                  sub          a1, s7, tp
                  ori          s1, a2, -948
                  sll          t0, a3, t2
                  lb           a0, 46(a3)
                  lh           ra, -19(a3)
                  lh           tp, 23(a3)
                  or           t0, s7, t2
                  srl          t6, t5, a0
                  lbu          a0, -7(a3)
                  sh           gp, 23(a3)
                  sb           s9, -64(a3)
                  lh           ra, -49(a3)
                  sra          a7, sp, a4
                  srl          s11, s9, s3
                  lh           a0, 9(a3)
                  sb           s10, 33(a3)
                  lhu          t1, -41(a3) #end riscv_load_store_rand_instr_stream_5
                  beq          s6, s3, 761f
754:              beq          t2, a6, 771f
755:              lui          a6, 1034763
                  srl          t4, a0, tp
                  andi         t3, t0, 1187
                  and          s6, s4, t6
                  sltiu        s5, zero, -446
                  xor          s8, sp, a3
761:              slti         s3, t6, 513
                  or           a5, t0, gp
                  slli         s9, s9, 28
                  srl          s11, s6, a5
                  slti         a6, s10, -1725
                  nop
                  slli         a0, sp, 11
                  slti         a5, a0, -775
                  nop
                  bne          s1, t0, 783f
771:              bgeu         zero, s4, 789f
                  slti         a0, s7, 1426
                  blt          s11, s7, 782f
                  slli         t1, t3, 17
                  and          t2, a4, a7
                  bltu         s5, s1, 786f
                  sra          t4, t1, a6
                  bge          tp, s5, 787f
                  sra          s2, s7, s5
                  srl          a1, s6, zero
                  sltu         s9, a3, s0
782:              lui          s9, 637020
783:              add          s3, s11, a6
                  ori          a7, s0, 1121
                  slt          s10, s4, tp
786:              srl          t4, a4, s10
787:              beq          t1, a2, 790f
                  bne          s10, s3, 799f
789:              bne          s11, s1, 791f
790:              sll          a5, zero, tp
791:              bgeu         t3, s2, 798f
                  bne          s3, s7, 794f
                  sll          s7, s5, s10
794:              slt          t2, sp, s0
                  sltu         s2, s0, s11
                  ori          t6, t5, 497
                  andi         t4, s6, -443
798:              bne          t4, sp, 799f
799:              slti         gp, a5, 1746
                  or           a7, a0, a4
                  bne          a4, a1, 807f
                  beq          ra, t0, 821f
                  bgeu         a2, a3, 819f
                  xori         s2, t5, -1896
                  bge          t4, s5, 812f
                  beq          s0, t0, 811f
807:              xor          s8, s8, zero
                  srl          a5, s0, s2
                  bne          s11, s1, 824f
                  slti         ra, a4, 790
811:              blt          t3, s11, 824f
812:              slt          tp, s4, s0
                  addi         a1, t3, -1312
                  sltiu        s7, s4, 1994
                  bgeu         s2, a2, 828f
                  lui          s8, 177836
                  bltu         s0, a2, 827f
                  beq          a3, a3, 821f
819:              auipc        a3, 52224
                  sltiu        t6, a1, -754
821:              sub          a4, s8, s7
                  srai         s10, a3, 9
                  sltiu        s1, s3, -1401
824:              sll          s11, s3, t4
                  bltu         a4, t0, 832f
                  slt          s8, t4, s6
827:              slt          a3, sp, s0
828:              slli         t0, a4, 13
                  or           a4, a2, a4
                  beq          t0, t3, 831f
831:              bge          t4, a7, 846f
832:              sltiu        s5, a1, -223
                  slti         t2, s6, 938
                  slti         t3, s8, 1450
                  slli         s5, s6, 30
                  xor          a6, t5, s0
                  bgeu         a5, s0, 856f
                  bgeu         s9, a7, 843f
                  bne          s5, s11, 846f
                  slli         t2, s10, 11
                  bne          s1, s2, 853f
                  add          s0, s11, a0
843:              sra          a7, s3, a4
                  bltu         a0, t0, 853f
                  or           t4, a5, ra
846:              slt          ra, t3, a4
                  and          s6, s7, t0
                  slti         ra, s1, -644
                  slti         s2, s1, 1466
                  bltu         s9, t1, 852f
                  sltiu        t2, a7, -924
852:              add          t4, a5, t5
853:              bltu         t3, a7, 871f
                  andi         s5, a3, -816
                  or           t0, a7, t6
856:              bltu         t3, s3, 872f
                  sll          s3, s9, a0
                  slti         s8, a7, 410
                  slli         t0, a3, 16
                  sltu         s9, t2, a7
                  ori          s3, s3, -357
                  ori          a5, s1, 135
                  andi         t2, s3, -1181
                  and          s3, a7, ra
                  addi         t1, s10, 896
                  xori         s10, a3, 24
                  andi         zero, a7, 130
                  beq          t5, t0, 879f
                  andi         ra, s8, -995
                  bne          s0, a4, 888f
871:              bgeu         t0, t1, 879f
872:              slti         a0, s5, 266
                  sltu         a0, a5, zero
                  add          s11, a6, t4
                  srl          a1, a5, a3
                  srli         a5, t1, 18
                  nop
                  blt          a5, s4, 888f
879:              slli         a1, a2, 28
                  sra          a7, s1, a4
                  sltu         s5, s8, a3
                  ori          s11, ra, 1460
                  sltiu        t2, t6, 42
                  slli         s7, t0, 10
                  auipc        t3, 1017819
                  auipc        a3, 110328
                  bltu         a7, t1, 898f
888:              slti         a7, s7, 1159
                  blt          s11, t2, 906f
                  lui          s6, 595514
                  bgeu         s3, s0, 911f
                  andi         a2, gp, -4
                  sll          s5, a5, a4
                  xori         s1, s0, -1389
                  bgeu         a4, a6, 897f
                  slli         zero, s0, 15
897:              or           a1, a4, t1
898:              sltu         gp, t2, s1
                  slt          a1, ra, zero
                  bge          sp, gp, 913f
                  auipc        a4, 151094
                  bne          s6, sp, 917f
                  bne          a4, s9, 916f
                  sltu         s11, s6, t1
                  nop
906:              slt          a6, a6, tp
                  srli         zero, t5, 0
                  ori          t6, a7, -1389
                  srli         ra, tp, 29
                  andi         t3, s2, 1900
911:              addi         s8, t6, -1908
                  sltu         t2, s11, s5
913:              sltu         a3, a6, s7
                  bgeu         t6, a1, 927f
                  sub          t4, s7, t2
916:              addi         zero, a3, 229
917:              and          a6, a2, s0
                  addi         a7, zero, -1883
                  addi         s10, t2, 793
                  beq          t4, sp, 930f
                  slti         tp, s3, -1335
                  bgeu         zero, tp, 928f
                  bne          a4, s2, 936f
                  bltu         s1, s1, 933f
                  beq          gp, a6, 932f
                  auipc        s9, 170130
927:              andi         s6, a7, -1761
928:              slti         t0, a5, -1774
                  sra          s9, tp, s1
930:              bltu         a6, a0, 940f
                  lui          ra, 573823
932:              auipc        t1, 875289
933:              sub          t1, t1, ra
                  blt          sp, s5, 952f
                  sll          a7, s11, s9
936:              sll          s8, t2, s1
                  slti         s9, tp, 153
                  srai         s11, a3, 14
                  lui          s9, 737547
940:              sub          s0, t2, gp
                  srli         s8, s10, 1
                  beq          ra, t5, 962f
                  addi         t6, a6, -658
                  beq          s4, a0, 957f
                  srai         a0, zero, 15
                  bge          ra, s9, 961f
                  and          a5, s6, s0
                  xori         s9, s4, -1823
                  bltu         s0, a6, 958f
                  slli         s8, tp, 20
                  andi         a1, s2, -2008
952:              bne          t6, t4, 962f
                  or           s8, t2, t2
                  add          a4, s3, zero
                  and          gp, s6, s6
                  bne          a4, s2, 963f
957:              slli         a1, t0, 11
958:              bltu         a5, a4, 977f
                  bgeu         a1, a6, 969f
                  auipc        s10, 298235
961:              xori         tp, a4, -606
962:              sra          a3, s2, s10
963:              beq          a0, gp, 973f
                  sra          a5, a7, s11
                  sra          s9, a1, sp
                  ori          gp, t0, -1522
                  xor          s2, s11, tp
                  slt          t1, s5, s7
969:              srl          t3, s7, a1
                  srli         s5, t6, 6
                  xori         t6, a4, 163
                  addi         t4, s11, -1551
973:              and          s5, a0, s4
                  bltu         t5, zero, 975f
975:              addi         s5, t5, -767
                  bgeu         t6, t4, 983f
977:              lui          gp, 469108
                  ori          t2, ra, -946
                  andi         a6, zero, 970
                  slli         a3, gp, 0
                  srli         gp, zero, 9
                  blt          a0, s3, 989f
983:              bge          t4, a7, 994f
                  add          a7, t2, a0
                  sub          s11, t2, zero
                  slti         gp, s3, 1733
                  srl          s7, s5, s2
                  srai         s5, t1, 16
989:              srai         zero, t2, 26
                  sra          s7, ra, t1
                  slt          s2, s3, t0
                  slti         a1, s2, 1449
                  bge          s0, a2, 1006f
994:              bgeu         s8, t5, 997f
                  andi         s8, a3, 1029
                  addi         s0, tp, 159
997:              sub          a3, t1, t5
                  bne          a2, s3, 1000f
                  bgeu         s6, a1, 1017f
1000:             sltiu        t2, s11, 225
                  andi         t2, t6, 1632
                  nop
                  bltu         s2, s8, 1011f
                  nop
                  srli         a3, t5, 27
1006:             slli         s10, t1, 16
                  slli         t6, a6, 30
                  addi         s1, s8, 1667
                  slli         ra, t6, 0
                  sub          s2, a5, ra
1011:             auipc        s10, 907508
                  bne          a5, a1, 1014f
                  xori         a4, a7, 1884
1014:             srai         a6, s9, 9
                  slti         s1, s6, 1520
                  auipc        a6, 980778
1017:             bgeu         a5, s2, 1029f
                  sll          t6, s9, a2
                  srai         a7, s7, 3
                  bge          s7, t0, 1033f
                  andi         s11, a0, -1683
                  bne          a7, a5, 1028f
                  ori          t1, s3, 311
                  srl          a6, a3, s2
                  and          s11, a3, s10
                  sltiu        t0, a0, 1150
                  ori          s9, t3, 67
1028:             slli         a5, s9, 28
1029:             xori         s11, t1, 396
                  srai         ra, s8, 19
                  srl          a2, t4, s6
                  bltu         s2, t0, 1049f
1033:             andi         s1, t2, 1351
                  sra          gp, a1, a7
                  or           s6, s11, gp
                  sub          t1, t5, s7
                  srl          s3, s1, tp
                  ori          a5, a7, 690
                  sub          a0, s9, s2
                  sltiu        t2, s5, 1486
                  beq          t5, s6, 1054f
                  slti         a3, gp, -394
                  xori         t6, t5, 143
                  slli         a5, a7, 19
                  srli         s7, s3, 28
                  slt          a3, tp, a1
                  bne          s11, s8, 1052f
                  srl          s6, s8, a5
1049:             ori          s0, s4, -2007
                  srl          s0, a0, a2
                  lui          a0, 883945
1052:             sra          s0, t1, s6
                  beq          a7, s3, 1068f
1054:             srai         a5, zero, 4
                  addi         a5, a2, 380
                  sltu         a3, t6, a7
                  andi         zero, s2, 12
                  blt          t5, t0, 1069f
                  sll          a5, t5, a7
                  sll          t4, s7, t1
                  lui          s2, 965268
                  bltu         s2, s2, 1071f
                  bltu         a6, a6, 1079f
                  slt          s1, s11, s7
                  xori         s3, t6, 112
                  nop
                  sll          s6, a5, s9
1068:             srai         s2, a5, 21
1069:             bne          t2, t6, 1072f
                  bltu         s9, gp, 1080f
1071:             bgeu         t2, t4, 1084f
1072:             sltiu        t2, t4, 553
                  srl          a3, s11, s11
                  sltu         t1, t3, s2
                  blt          a7, s6, 1082f
                  sll          t6, s6, tp
                  srai         t0, a1, 16
                  xori         s8, a7, 1458
1079:             srai         a6, a1, 21
1080:             xor          s2, a4, s0
                  sra          s8, a7, s2
1082:             xor          s0, ra, s8
                  sll          s3, s4, gp
1084:             slli         t2, s1, 31
                  auipc        s6, 1043722
                  blt          t1, s4, 1104f
                  and          s7, s6, a2
                  beq          zero, a6, 1108f
                  sub          s7, t5, t5
                  srli         a4, t2, 30
                  slt          tp, s9, t3
                  sra          s11, s11, s9
                  andi         t4, tp, 1292
                  sll          gp, zero, s5
                  bne          zero, a1, 1097f
                  slti         a1, a2, 932
1097:             beq          a1, s1, 1116f
                  xori         t6, a6, 1453
                  srai         tp, t6, 30
                  bgeu         s2, s2, 1107f
                  add          s2, a1, t0
                  slti         a1, zero, -542
                  bgeu         t4, a1, 1113f
1104:             sltiu        tp, t2, -1548
                  srli         a0, a2, 13
                  nop
1107:             sll          s7, gp, a6
1108:             lui          s5, 966134
                  nop
                  beq          t3, s10, 1119f
                  slli         s7, a2, 30
                  bltu         a6, s10, 1129f
1113:             addi         ra, tp, -1505
                  slti         ra, s5, -1962
                  lui          a4, 48906
1116:             beq          s2, tp, 1121f
                  srai         s6, t3, 20
                  beq          s0, s2, 1120f
1119:             sra          a1, t5, tp
1120:             ori          gp, s5, 1089
1121:             add          t2, s11, s0
                  bne          s8, s3, 1135f
                  addi         s11, t0, 740
                  add          s5, s9, sp
                  ori          a1, a3, 1766
                  bne          s11, t2, 1139f
                  xori         tp, a1, -1549
                  srai         s0, zero, 24
1129:             nop
                  auipc        s9, 515322
                  slt          t6, s3, t0
                  and          s6, a6, s9
                  srl          zero, a6, sp
                  sra          gp, t6, s4
1135:             sltu         zero, zero, s1
                  slli         s5, s6, 20
                  bltu         t1, a6, 1150f
                  bne          ra, s1, 1153f
1139:             blt          a2, t5, 1147f
                  sltu         t6, t1, tp
                  slt          t0, s1, a3
                  srai         a0, t6, 26
                  or           a7, a4, tp
                  xori         a5, a6, 853
                  bgeu         s6, s1, 1160f
                  slli         tp, a7, 13
1147:             slt          s10, gp, zero
                  auipc        s0, 887340
                  xor          s7, a3, s7
1150:             xori         t3, t6, -1140
                  blt          t4, ra, 1160f
                  bltu         sp, s8, 1153f
1153:             xor          s11, s2, t6
                  or           a0, a0, s7
                  lui          s6, 471046
                  xori         s10, s7, -689
                  addi         a1, t5, 1713
                  add          t6, a3, s6
                  slti         a7, s10, -765
1160:             xor          s11, s3, t2
                  srai         ra, a2, 14
                  add          s7, gp, t0
                  addi         a6, s3, -1513
                  sltu         a2, s11, t1
                  addi         a6, s8, -1039
                  or           a1, s6, sp
                  nop
                  bgeu         s1, a3, 1179f
                  srli         s8, a0, 2
                  xori         t4, s5, 1893
                  srl          a3, ra, a0
                  sll          s7, a2, t6
                  slti         ra, s4, -485
                  bge          t2, t6, 1185f
                  srli         s10, a6, 13
                  sll          s10, s4, zero
                  slt          s3, s10, s11
                  srl          a3, a7, s2
1179:             add          s3, a4, s0
                  blt          t1, s11, 1198f
                  slli         s5, a6, 13
                  bgeu         s2, a4, 1192f
                  slli         zero, a1, 3
                  blt          s6, s6, 1200f
1185:             blt          s0, t1, 1197f
                  add          a4, zero, a2
                  addi         s7, s10, 1617
                  auipc        t6, 41249
                  ori          t4, a1, -229
                  andi         a1, a2, -1304
                  sltu         tp, s7, s3
1192:             and          a7, t5, s10
                  bge          t5, sp, 1200f
                  ori          t1, t6, -651
                  auipc        a2, 523764
                  slti         ra, s10, 1469
1197:             sub          t1, tp, tp
1198:             andi         t2, t2, -1028
                  sltu         a1, s6, ra
1200:             xori         a4, a4, 1145
                  addi         t4, a4, -599
                  or           a1, t2, a4
                  sra          a6, a7, a5
                  slli         a5, s5, 15
                  nop
                  slt          a6, a0, s10
                  beq          a5, tp, 1213f
                  sll          s3, s7, s1
                  blt          s1, a2, 1220f
                  sll          a1, s0, s7
                  bltu         s9, s1, 1231f
                  srl          s2, t4, s7
1213:             blt          t6, s8, 1228f
                  addi         gp, s3, -1207
                  and          s5, s9, s3
                  addi         s2, s7, -1540
                  sltiu        t0, t6, 1845
                  and          s7, t1, s5
                  auipc        t3, 768701
1220:             sra          a3, t5, s9
                  sub          s3, s0, a5
                  andi         t4, s0, -1806
                  slli         t2, t5, 31
                  slti         a3, s3, 1155
                  slli         s5, t0, 0
                  andi         a3, a7, -302
                  bgeu         a2, a7, 1240f
1228:             blt          s7, t2, 1240f
                  sub          a1, s3, s0
                  sra          s1, t4, t2
1231:             bltu         s1, sp, 1246f
                  or           a2, s3, s11
                  bge          s1, ra, 1243f
                  andi         t6, t3, -756
                  blt          t4, s3, 1242f
                  slti         s7, s4, 792
                  srl          ra, s10, a0
                  sltiu        a3, a2, 595
                  slti         a5, t6, 1467
1240:             blt          a5, s2, 1246f
                  slti         s1, a3, -1357
1242:             ori          tp, t2, 1063
1243:             srli         zero, s11, 8
                  nop
                  lui          s8, 263143
1246:             sltu         t2, gp, zero
                  ori          s7, s2, -1066
                  lw           tp, 4(t5)
                  addi         t5, t5, 24
                  add          t0, t3, t6
                  xori         a4, s2, -637
                  slti         a2, s7, -1941
                  nop
1624:             addi x22, x4, 1
1624:             jalr x22, x22, 0
sub_5:            and          s6, s7, s8
                  nop
                  sltu         s2, tp, t2
                  bltu         s0, s2, sub_5_stack_p
                  xori         s0, s6, -943
sub_5_stack_p:    addi         t5, t5, -60
                  sw           tp, 4(t5)
                  srl          t0, gp, s8
                  andi         s6, t3, -1840
                  ori          a6, sp, 50
                  or           s11, s6, t4
                  bge          tp, s8, 14f
                  lui          ra, 617723
                  bltu         t5, a2, 9f
                  bgeu         t3, a2, 20f
                  bltu         zero, s0, 24f
                  add          t1, s7, s10
9:                xor          t0, s9, t4
                  add          s10, a5, s4
                  bne          s0, t4, 20f
                  srai         t0, a3, 20
                  srli         s9, s7, 11
14:               xori         a0, gp, 1513
                  srl          a3, s0, zero
                  andi         tp, s7, -822
                  srai         a3, s8, 15
                  andi         a1, t5, -359
                  andi         a1, s11, 2002
20:               ori          s6, s11, 799
                  add          a0, a3, a5
                  slti         a5, gp, 706
                  auipc        s8, 665303
24:               sltiu        s2, s9, 150
                  srl          tp, a7, a3
                  slli         tp, s2, 0
                  addi         t3, s3, 840
                  bne          a6, a5, 31f
                  sltu         s3, tp, a1
                  slt          s10, s1, s4
31:               bge          s9, s0, 46f
                  sll          gp, t6, s3
                  add          a4, t5, a6
                  xori         s3, s8, -825
                  xori         t2, t6, -1981
                  bltu         s9, s5, 50f
                  bge          a3, s10, 55f
                  srai         ra, t5, 15
                  beq          s0, t2, 52f
                  xori         t3, a5, -1592
                  srai         a5, t2, 13
                  sltiu        ra, t2, 1837
                  blt          s6, a6, 52f
                  slti         s9, a0, 1007
                  blt          gp, tp, 59f
46:               srl          a2, a2, t3
                  bgeu         t6, t0, 58f
                  sra          gp, t5, a5
                  srli         ra, s3, 29
50:               srai         a0, a6, 15
                  bltu         t6, a4, 58f
52:               bne          s0, a1, 53f
53:               srl          a7, t0, a1
                  sltiu        t2, tp, -634
55:               bge          a2, t1, 73f
                  bltu         a1, a7, 73f
                  ori          a0, sp, 1523
58:               slli         s7, tp, 15
59:               slt          s10, t6, t6
                  lui          t6, 917596
                  bne          zero, a6, 63f
                  sub          s5, a4, a7
63:               blt          t0, t0, 80f
                  ori          t3, s3, 817
                  xor          s10, gp, s11
                  sub          a1, t4, s1
                  or           tp, t4, s10
                  sra          zero, t4, s2
                  auipc        t2, 417636
                  auipc        t4, 15447
                  slti         s11, s10, -1931
                  sltiu        t0, a3, -378
73:               sub          gp, s3, a7
                  slli         t4, a2, 20
                  sltu         t3, s7, t0
                  or           t3, s1, s2
                  sltiu        t0, s8, -1334
                  bne          zero, s9, 81f
                  sll          s3, t5, a4
80:               sltiu        s6, s7, 883
81:               or           t2, s3, t4
                  ori          gp, s9, 1152
                  ori          s3, s9, -641
                  xor          s1, t4, a7
                  auipc        t0, 987369
                  ori          t0, s5, 1661
                  andi         s10, ra, 1969
                  xor          s2, a0, gp
                  bge          s1, a1, 101f
                  lui          s9, 742887
                  srli         t2, t1, 31
                  auipc        s5, 41165
                  slti         a5, t2, 894
                  add          t6, t0, s2
                  andi         a2, a0, 788
                  ori          tp, a5, 1552
                  bne          ra, s8, 108f
                  sub          s3, sp, s7
                  bgeu         t2, s5, 112f
                  bne          s5, s7, 111f
101:              andi         s2, t4, -1147
                  sltu         a2, a5, tp
                  or           t1, zero, a4
                  sll          t3, t3, s2
                  and          a7, zero, s6
                  slt          a7, tp, t0
                  auipc        t2, 976325
108:              bne          s8, t6, 112f
                  slli         a1, s7, 20
                  bltu         s8, s6, 112f
111:              srli         a1, sp, 19
112:              slli         s3, a4, 9
                  and          s7, s6, s10
                  xor          s11, a1, s8
                  lw           tp, 4(t5)
                  slli         zero, t1, 12
                  ori          ra, s9, 21
                  sll          a4, a0, a2
                  sltiu        a4, t6, 370
                  srai         a1, a3, 24
                  addi         t5, t5, 60
                  slt          zero, a0, zero
                  sub          s1, a4, a6
132:              addi x24, x4, 1
132:              jalr x24, x24, 0
sub_2:            nop
                  addi         t5, t5, -64
                  slt          t0, s4, s6
                  sw           tp, 4(t5)
                  or           t0, a7, s2
                  andi         a4, a5, -1303
                  bne          ra, s9, sub_2_j5 #branch to jump instr
                  and          s0, s5, t0
                  andi         a5, tp, -288
                  slti         t2, a6, -628
                  srl          s9, s5, ra
                  slti         s8, s6, 1710
                  and          a3, a4, zero
sub_2_j5:         jal          tp, sub_8 #jump sub_2 -> sub_8
                  sll          gp, a3, t2
                  sltiu        s2, t4, -852
                  slli         s6, t1, 3
                  srai         t6, a6, 30
                  addi         ra, a6, -207
                  or           a4, s3, s8
                  srl          a0, s0, a3
sub_2_j6:         jal          tp, sub_7 #jump sub_2 -> sub_7
                  slt          a6, s4, s8
                  xor          a5, s2, t1
                  addi         t1, a0, 1947
                  la           s1, sub_4
                  addi         s1, s1, -778
                  slti         t0, zero, 437
                  beq          t4, s7, sub_2_j7 #branch to jump instr
                  sltu         s8, s7, t4
                  nop
                  slt          a6, a5, t1
sub_2_j7:         jalr         tp, s1, 778 #jump sub_2 -> sub_4
                  la           a1, sub_3
                  srli         s3, s8, 12
                  sltu         t3, a7, s7
                  nop
                  addi         a1, a1, 207
                  slli         a6, s10, 20
                  sltiu        a0, t5, -1510
                  beq          t5, t0, sub_2_j8 #branch to jump instr
                  srli         t6, a1, 3
                  lui          t6, 81692
sub_2_j8:         jalr         tp, a1, -206 #jump sub_2 -> sub_3
                  addi         s2, s6, -865
                  sltiu        a0, sp, -1888
                  ori          gp, gp, 457
                  andi         t4, s0, 1701
                  beq          a1, t3, sub_2_j9 #branch to jump instr
                  srl          s6, s9, s8
                  srli         tp, s7, 10
                  xori         t1, s2, 343
                  xori         s10, a5, 1808
sub_2_j9:         jal          tp, sub_5 #jump sub_2 -> sub_5
                  la           s10, region_0+62 #start riscv_load_store_rand_instr_stream_3
                  sra          a3, s10, s6
                  ori          s0, a6, 1906
                  add          a6, a6, a7
                  lb           t3, -3(s10)
                  lbu          t2, 145(s10)
                  or           s7, a0, a5
                  xor          tp, s3, t4
                  lhu          a6, 42(s10)
                  lb           a7, 152(s10)
                  lbu          s8, 182(s10)
                  sb           a1, 14(s10)
                  sb           zero, 45(s10)
                  sb           s0, 157(s10)
                  lb           s6, 3(s10)
                  lhu          zero, 118(s10)
                  lbu          gp, 21(s10)
                  sh           s8, 180(s10)
                  sh           s1, -34(s10)
                  addi         t1, s9, 1583
                  lb           t1, 17(s10)
                  sb           gp, 105(s10)
                  srli         s3, a2, 22
                  lbu          s7, 109(s10)
                  lbu          a2, 15(s10)
                  lh           t4, -48(s10)
                  lbu          t0, -45(s10)
                  srli         t1, a2, 31
                  add          s11, t3, s6
                  sll          a0, a4, t3
                  auipc        a5, 644513
                  lb           s1, 41(s10)
                  lb           s8, 126(s10)
                  lb           a4, 123(s10)
                  lbu          s0, -23(s10)
                  sra          t0, t4, a7
                  andi         s11, sp, -1866
                  xor          t0, s11, a5
                  sra          zero, s5, s2
                  addi         s2, t3, -222
                  xori         t3, a0, -584
                  lhu          a5, 176(s10)
                  sub          t4, a1, t5
                  auipc        zero, 493228
                  lb           s3, 225(s10)
                  and          t0, s5, t2
                  sh           gp, 146(s10)
                  lbu          s11, 94(s10) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+585 #start riscv_load_store_rand_instr_stream_1
                  and          s7, t1, s0
                  sw           t0, 7(a6)
                  lbu          gp, 1(a6)
                  lb           a0, 15(a6)
                  lbu          tp, -14(a6)
                  sb           t3, -2(a6)
                  sb           gp, 0(a6)
                  sra          s8, sp, s1
                  lb           a4, 5(a6)
                  xor          gp, zero, t4
                  lb           a0, -9(a6)
                  sb           s1, 6(a6)
                  lbu          s7, 12(a6)
                  sb           s7, 1(a6)
                  lw           a1, 11(a6)
                  and          s3, s6, s0
                  xor          zero, s3, a1
                  sw           s2, 7(a6)
                  sb           t0, -8(a6)
                  lb           s3, 8(a6)
                  lb           a0, 12(a6)
                  sb           a0, 9(a6)
                  lbu          s0, -1(a6)
                  sb           s1, -12(a6)
                  sh           s9, 9(a6)
                  lhu          s1, -11(a6)
                  xor          s3, a1, s2
                  sb           a4, 5(a6)
                  lhu          s6, -11(a6)
                  lb           t6, 12(a6)
                  sb           t6, -2(a6)
                  lbu          tp, 10(a6)
                  lbu          a1, -8(a6)
                  sltiu        s6, t1, 63
                  srai         ra, t3, 21
                  lui          t0, 468194
                  sb           s4, -10(a6)
                  ori          a5, t1, 1864
                  sb           a7, -4(a6) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+163 #start riscv_load_store_rand_instr_stream_2
                  slti         s9, a7, 1491
                  srli         t0, t3, 7
                  sra          s2, a6, s11
                  lbu          a4, 9(gp)
                  sb           t1, -4(gp)
                  sh           t1, -1(gp)
                  srai         zero, t0, 5
                  lbu          s8, -7(gp)
                  sb           s11, -12(gp)
                  sb           s9, 8(gp)
                  lbu          s5, 4(gp)
                  sb           s9, 0(gp)
                  xori         a1, a1, -1048
                  lbu          a5, 5(gp)
                  sltu         a3, ra, t4
                  add          zero, t5, s9
                  nop
                  lb           a1, 15(gp)
                  lb           t1, 11(gp)
                  xori         a7, s10, -522
                  lb           s3, 12(gp)
                  sh           t6, -7(gp)
                  ori          s9, s0, -1761
                  slt          t2, t2, a5
                  sb           s10, 14(gp)
                  sb           s1, 12(gp)
                  sra          t3, a0, s4
                  lbu          tp, 10(gp)
                  sb           a7, 1(gp)
                  lbu          a1, -9(gp)
                  addi         t4, a3, 1859
                  sltiu        a5, a1, 643
                  sra          zero, s8, s9
                  ori          a0, s0, -880
                  xor          a2, s1, a5
                  xor          s2, t6, t6
                  srl          s7, a3, t5
                  lui          s0, 744530
                  sh           t1, -11(gp)
                  lh           a0, 1(gp)
                  lui          t3, 697184
                  add          s6, s8, s7
                  sh           a5, -11(gp)
                  sra          s10, zero, s9
                  sh           a7, 15(gp)
                  sb           s8, -9(gp)
                  sb           a5, -15(gp)
                  sb           s6, 8(gp)
                  sb           s3, 12(gp) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_1+212 #start riscv_load_store_rand_instr_stream_0
                  sltiu        zero, a5, 1124
                  and          s0, t2, a2
                  sra          s10, s3, a2
                  lb           a1, 53(t2)
                  sb           s2, -8(t2)
                  srai         a0, s1, 21
                  sb           a7, 36(t2)
                  sb           s2, 54(t2)
                  lb           a5, 1(t2)
                  sb           s6, -1(t2)
                  sh           gp, 18(t2)
                  lbu          s10, -3(t2)
                  lhu          s0, 42(t2)
                  lb           s2, 37(t2)
                  sub          a5, a3, a0
                  auipc        a7, 230011
                  xor          ra, a6, ra
                  sh           t0, 62(t2)
                  lbu          t1, 4(t2)
                  lbu          tp, 61(t2)
                  sltu         a5, s7, s4
                  lhu          s7, 20(t2)
                  sb           tp, -58(t2)
                  lb           tp, -49(t2)
                  lb           s9, -1(t2)
                  auipc        s3, 484002
                  lh           t6, 6(t2)
                  sll          a5, s7, s0
                  lbu          a2, 31(t2)
                  lb           a6, 5(t2)
                  srai         t4, s9, 12
                  sra          s6, s4, s10
                  sb           gp, 47(t2)
                  sltu         s5, t4, s6
                  lbu          tp, -51(t2)
                  nop
                  slti         ra, t1, -820
                  sltu         t6, a5, s7
                  slti         s7, s0, -1917
                  lbu          t4, -42(t2)
                  add          t1, s6, zero
                  sb           s9, 7(t2)
                  lui          a0, 399077
                  lbu          t1, 31(t2)
                  sll          s3, t0, t3
                  sub          t4, t0, s9
                  nop
                  xor          s3, a7, ra
                  sltiu        a4, s10, -234
                  slli         tp, s5, 6
                  nop
                  ori          s0, a1, -1454
                  lw           t3, 48(t2)
                  lh           a6, 18(t2)
                  sub          t1, s1, s6
                  xori         s7, a5, -485
                  sb           tp, 45(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+178 #start riscv_load_store_rand_instr_stream_4
                  slli         t0, s5, 30
                  srai         a6, s4, 3
                  lbu          tp, 69(s0)
                  slli         t2, t4, 23
                  add          s9, ra, a6
                  srl          s8, s3, s0
                  srl          t1, zero, gp
                  or           a5, t4, zero
                  auipc        a5, 449704
                  lw           s8, -66(s0)
                  sltiu        a5, s8, -1873
                  lbu          s8, -105(s0)
                  lh           a3, 24(s0)
                  ori          s10, zero, 169
                  lbu          zero, -11(s0)
                  sb           t3, -165(s0)
                  srl          gp, sp, s1
                  srl          s3, a6, t3
                  lh           s9, 162(s0)
                  or           a2, t5, s7
                  addi         a7, sp, 772
                  lb           a7, 183(s0)
                  sltiu        s6, ra, -1374
                  sra          a1, t4, ra
                  nop
                  sll          t1, a6, s3
                  lui          a7, 836908
                  srli         a2, t0, 26
                  sll          s3, t6, tp
                  lw           a3, -42(s0)
                  sb           tp, -48(s0)
                  lh           s10, -38(s0)
                  slti         s9, a7, -1374
                  sb           t6, 228(s0)
                  lw           t1, -138(s0)
                  ori          t3, a3, -1509
                  slt          a5, s5, tp
                  andi         s5, s9, 1689
                  sll          ra, t3, a6
                  slli         s7, a4, 19
                  sb           a0, 5(s0) #end riscv_load_store_rand_instr_stream_4
                  xor          s8, s4, a0
                  sltiu        a2, s8, 1582
                  addi         a3, s5, 1173
                  slt          s5, t6, a1
                  xor          s6, t0, tp
                  ori          a0, t1, 1062
                  and          t1, a5, sp
                  add          s6, s7, ra
                  or           a3, a2, s5
                  slt          s10, sp, s2
                  addi         zero, a4, 986
                  srai         ra, s11, 5
                  nop
                  blt          s4, s10, 24f
                  andi         zero, ra, 1972
                  xori         t4, s0, 1989
                  xor          s5, t5, ra
                  xori         t2, t0, 359
                  andi         t0, t5, 1243
                  xori         zero, s10, -1032
                  xori         gp, s11, -1274
                  srl          s7, t4, gp
                  slti         a7, s4, 498
                  slti         s1, t6, 447
24:               bgeu         tp, s9, 31f
                  and          a6, a3, t1
                  andi         a0, sp, 875
                  sltu         s2, s5, s6
                  sub          zero, s10, s1
                  nop
                  beq          s1, s5, 44f
31:               xor          ra, s11, s3
                  sltiu        s7, s7, 858
                  andi         a3, s5, -1788
                  srl          ra, s5, a5
                  ori          a1, zero, -528
                  blt          s4, a6, 37f
37:               bltu         t2, gp, 49f
                  beq          t0, s11, 47f
                  slt          s1, gp, a2
                  or           s1, a3, a7
                  bgeu         s10, ra, 42f
42:               srli         a4, a7, 21
                  sub          a7, gp, zero
44:               srl          t1, s4, t0
                  andi         s6, s8, -829
                  slt          zero, a6, a0
47:               ori          s1, t1, 1890
                  xori         s6, t0, -633
49:               nop
                  sll          s7, zero, t6
                  srai         ra, a2, 13
                  xori         a1, s6, -948
                  srli         t6, s11, 6
                  bne          a4, s11, 73f
                  ori          a0, s3, -226
                  srai         t2, a3, 18
                  slli         s8, t2, 4
                  ori          a1, t5, -1717
                  srl          s10, sp, s5
                  nop
                  and          ra, t2, s10
                  bge          t2, s10, 65f
                  xori         s2, t3, 632
                  slli         s5, a6, 13
65:               slti         s6, a3, -1497
                  addi         s0, gp, -1550
                  ori          a2, s7, 1682
                  sltiu        a6, s1, 1615
                  bne          sp, a3, 89f
                  or           zero, s7, t1
                  slli         gp, a1, 5
                  lui          a4, 716984
73:               andi         s5, s2, 1087
                  sll          t2, ra, zero
                  auipc        s9, 479347
                  and          tp, a4, s11
                  sub          a6, tp, s10
                  xori         s8, t6, 694
                  srai         t4, sp, 0
                  sltiu        s11, t5, 1081
                  addi         a0, zero, 1896
                  nop
                  slt          s11, t0, a6
                  bge          t0, t4, 92f
                  bltu         s3, s11, 95f
                  srl          s11, t5, t1
                  srai         s8, s0, 28
                  srli         gp, s1, 30
89:               auipc        a4, 269034
                  xor          ra, a7, s4
                  sltu         a1, s2, a7
92:               blt          a1, s11, 106f
                  sltu         a3, s7, a1
                  and          s9, t5, gp
95:               bge          s1, zero, 107f
                  beq          t6, s6, 107f
                  lui          t2, 502175
                  bge          s1, tp, 104f
                  bge          s4, s6, 118f
                  sra          s0, t2, zero
                  bgeu         a3, t3, 103f
                  slt          s9, a7, s2
103:              slli         s11, a7, 21
104:              and          t6, sp, s2
                  slt          s1, sp, a7
106:              slli         a0, s0, 2
107:              beq          t3, t5, 109f
                  or           a5, s10, t2
109:              ori          t1, s5, 647
                  andi         t1, a0, 258
                  andi         tp, a3, 1367
                  xori         a4, a1, 435
                  blt          s0, s6, 122f
                  nop
                  andi         a1, a5, -1395
                  blt          ra, a0, 133f
                  bltu         a4, a3, 127f
118:              slt          s10, a7, s11
                  sll          a4, a2, ra
                  slt          s10, s2, s11
                  or           tp, sp, s2
122:              slt          a5, s9, sp
                  bgeu         s1, s1, 141f
                  srli         tp, t5, 30
                  sub          s6, t2, gp
                  or           a7, s2, s10
127:              xor          t2, s2, t4
                  slt          t6, s5, zero
                  add          s11, a6, s1
                  or           s10, t4, s2
                  sll          s7, sp, s10
                  sltiu        a6, t5, 859
133:              sltiu        s3, t6, 970
                  sltiu        s3, s6, -1669
                  or           s10, t2, t2
                  slti         t4, t2, 1582
                  srl          s11, s8, a2
                  beq          a7, t0, 142f
                  sra          s0, s4, t0
                  bge          a6, t1, 147f
141:              bge          sp, t3, 160f
142:              andi         t6, t3, -904
                  auipc        t6, 811335
                  lui          a7, 291635
                  andi         t2, s10, 1866
                  lui          s3, 260816
147:              bge          s9, s7, 159f
                  ori          a1, a0, -1077
                  or           s8, s3, a4
                  xor          a4, s4, t3
                  xor          s5, s0, s7
                  sltu         s0, s3, t6
                  andi         t6, zero, 926
                  or           s5, s9, ra
                  sltiu        s3, a5, 621
                  addi         s0, t1, -1504
                  srai         t3, s5, 23
                  bltu         t2, zero, 178f
159:              xor          s7, s0, a4
160:              sltiu        s7, sp, 111
                  sra          tp, a7, a3
                  or           a5, s8, t0
                  slt          a1, a6, t3
                  sra          s9, s4, s11
                  add          t2, s7, s6
                  xori         s11, t1, 790
                  sll          a7, t4, s9
                  slli         s6, t5, 23
                  bltu         t5, t3, 186f
                  or           t2, a7, tp
                  or           zero, a0, sp
                  bne          s3, a0, 187f
                  andi         t1, t2, 1802
                  slti         a3, s7, 868
                  srai         s1, ra, 28
                  bltu         s4, a0, 177f
177:              slli         t1, t1, 5
178:              bne          a5, s10, 192f
                  bne          t4, s2, 193f
                  sra          t3, a5, s8
                  sltiu        a2, s1, 1674
                  lui          a4, 519288
                  sll          t1, t0, zero
                  bne          s7, t4, 186f
                  sub          tp, s6, t2
186:              nop
187:              nop
                  bge          t1, zero, 194f
                  slti         a5, a5, 576
                  bne          s3, t6, 210f
                  slt          t3, zero, t0
192:              slt          a3, sp, a2
193:              srl          s10, zero, zero
194:              blt          s9, t6, 204f
                  ori          ra, s3, 121
                  slt          t4, s11, a1
                  auipc        t2, 1045185
                  bltu         a3, s0, 210f
                  bltu         a5, t4, 216f
                  bge          s11, s8, 215f
                  slt          s8, a6, s6
                  and          a7, s4, a7
                  lui          a5, 879662
204:              srai         a0, s3, 11
                  beq          a6, a3, 222f
                  andi         t4, s1, 380
                  srai         s5, s4, 6
                  sltu         s5, s0, t6
                  auipc        a3, 866261
210:              blt          t5, s9, 229f
                  lui          s1, 979544
                  auipc        a4, 475269
                  auipc        zero, 748878
                  sll          s9, sp, s2
215:              blt          gp, s5, 224f
216:              slti         t0, s9, 1627
                  xori         s11, t6, -1644
                  slli         t6, t5, 30
                  xori         a2, a6, 663
                  addi         s11, t0, 796
                  auipc        a0, 395967
                  ori          s10, s11, -1313
                  sltiu        a1, s1, 134
                  addi         a7, gp, 583
                  lui          a1, 641797
                  srli         gp, a1, 13
sub_2_j10:        jal          tp, sub_7 #jump sub_2 -> sub_7
                  xori         zero, s5, -1105
                  nop
                  sra          s8, tp, s1
                  blt          s3, zero, 228f
                  srai         a5, t4, 18
222:              add          t0, a3, a2
                  srli         t3, s11, 0
224:              sra          tp, t1, t5
                  srai         t2, t2, 11
                  srl          s11, s9, s10
                  sra          ra, t1, a1
228:              blt          t4, s11, 248f
229:              bltu         a1, s5, 247f
                  bge          a4, s4, 234f
                  bne          s2, s5, 232f
232:              sub          t4, a7, a5
                  sub          a7, ra, s5
234:              sub          s11, a4, a5
                  bge          s10, s2, 247f
                  auipc        t3, 870006
                  andi         gp, a6, 1813
                  srai         s11, s9, 24
                  xori         a5, a0, -1422
                  bge          gp, t2, 252f
                  nop
                  xor          s1, s4, a2
                  bge          a4, sp, 246f
                  sra          s3, a6, t3
                  sltiu        s0, s11, 591
246:              sltiu        t6, a0, -23
247:              and          s5, t2, zero
248:              and          s9, a0, s1
                  srli         t6, a0, 3
                  bgeu         s4, s9, 259f
                  srai         s7, s8, 24
252:              addi         a2, t4, 402
                  bne          s11, t5, 272f
                  sub          ra, gp, t5
                  sll          s1, s1, s0
                  xor          a0, ra, s9
                  srl          ra, s10, a0
                  srli         a0, s2, 20
259:              sltiu        s7, a3, 286
                  slti         s2, t0, -1246
                  sll          t3, s0, a0
                  sra          s5, s3, a0
                  beq          a3, s6, 270f
                  sra          a3, s3, s4
                  ori          a6, t3, -1406
                  xor          t2, s1, a5
                  sll          t3, s9, sp
                  sltu         s7, s3, t4
                  slti         t2, s10, 1023
270:              sub          s1, t0, s10
                  sub          zero, t0, a2
272:              add          t4, a5, a4
                  ori          zero, s10, 894
                  andi         a6, t4, -503
                  slt          s9, tp, a1
                  sltiu        ra, s11, 379
                  bgeu         s10, s8, 288f
                  sll          gp, t4, t2
                  sll          s1, a3, a7
                  la           s6, sub_6
                  addi         s6, s6, -839
                  xor          t2, t4, s11
                  addi         a2, a4, 74
                  sll          s10, t4, s4
                  blt          s6, a7, sub_2_j4 #branch to jump instr
                  slti         a7, gp, -333
                  lui          a1, 896781
                  slt          s7, s2, a3
                  srai         s2, s0, 19
sub_2_j4:         jalr         tp, s6, 839 #jump sub_2 -> sub_6
                  sltiu        s5, a2, 1901
                  srai         t4, a3, 21
                  ori          a1, t1, 2024
                  blt          a6, s8, 293f
                  xor          s8, s10, zero
                  xor          t2, s4, zero
                  sltiu        s9, s2, -560
                  add          t6, a5, a2
288:              sltu         s8, s7, tp
                  slt          t3, s4, gp
                  sll          s1, s8, tp
                  or           t6, a2, a3
                  sltiu        gp, a4, 1316
293:              bne          tp, s7, 300f
                  nop
                  blt          a1, a4, 306f
                  ori          t1, t2, -629
                  sll          a5, s5, a4
                  sltiu        s1, t3, 304
                  ori          a1, tp, -1610
300:              and          a3, s2, zero
                  sll          tp, sp, a5
                  srli         s2, t0, 19
                  bgeu         tp, s1, 322f
                  srli         s11, s1, 26
                  beq          a5, s5, 307f
306:              blt          a1, t0, 321f
307:              or           t2, a2, a3
                  addi         t6, s0, 637
                  sll          s5, a1, t3
                  slti         s3, a3, -1310
                  or           t4, s1, a1
                  slti         a5, s9, 235
                  ori          a0, a4, -1790
                  sll          zero, s4, t3
                  slti         t4, t6, 971
                  addi         s8, s9, 1066
                  slti         a4, t4, 1925
                  srli         s1, t2, 24
                  blt          s2, a2, 329f
                  nop
321:              slti         zero, s3, -1764
322:              and          s8, a0, a1
                  sra          a1, a2, s6
                  bltu         s11, s7, 325f
325:              add          a0, tp, a2
                  nop
                  slti         s1, tp, -1023
                  andi         s0, s2, -555
329:              blt          a5, s1, 339f
                  blt          t0, s0, 332f
                  sub          t1, s3, a2
332:              bge          a5, s4, 341f
                  sub          s6, sp, t2
                  xori         t3, t2, -684
                  bge          s4, t5, 342f
                  blt          t5, a1, 348f
                  lui          a5, 40250
                  slli         t4, s7, 16
339:              slti         ra, sp, -1770
                  srl          s6, a3, s7
341:              slti         t4, s9, -33
342:              slti         t1, s9, -1589
                  sltu         s1, s3, a5
                  add          gp, t0, t3
                  and          tp, a4, t4
                  addi         t3, a0, -1105
                  srl          s11, a1, a0
348:              srl          t4, a6, t1
                  bge          sp, s4, 353f
                  auipc        t0, 195186
                  ori          s0, a6, 834
                  bge          s8, t1, 364f
353:              addi         a6, t1, 1078
                  addi         a6, t3, 1194
                  slti         s7, s3, -1070
                  slti         s7, a3, -805
                  addi         s0, s7, 355
                  beq          s5, s1, 375f
                  sltiu        t1, s8, -1124
                  auipc        t2, 394589
                  bltu         a6, a6, 380f
                  sltiu        s7, t6, 1264
                  lui          ra, 639998
364:              nop
                  nop
                  sltu         t2, s2, a0
                  addi         t0, s6, -565
                  xori         gp, t5, -1099
                  lui          a7, 131614
                  srl          ra, gp, a2
                  srl          t6, a7, s9
                  bne          s0, s6, 375f
                  add          s0, s0, s3
                  addi         t1, tp, 1868
375:              slli         a1, s6, 12
                  sra          t1, s6, zero
                  sra          t6, a2, s9
                  add          a7, s1, a1
                  sltiu        s11, s6, -807
380:              beq          s8, s3, 381f
381:              lui          a6, 287432
                  bne          t3, s11, 393f
                  nop
                  slt          s11, s4, t0
                  lui          a1, 812609
                  sub          a6, a4, a2
                  sub          t1, gp, s7
                  slti         s3, s10, -754
                  xori         a3, a2, -1523
                  xor          a5, s7, t2
                  nop
                  slli         zero, zero, 19
393:              bltu         s6, s11, 413f
                  srl          t4, sp, t5
                  nop
                  bgeu         a4, t4, 410f
                  sltu         a1, s0, t5
                  and          zero, s7, t4
                  sltu         zero, t1, t5
                  auipc        a2, 240543
                  beq          a6, s8, 420f
                  slti         a1, a7, -207
                  xor          t0, t4, s0
                  bne          a7, t2, 413f
                  srai         zero, tp, 1
                  bne          a7, s3, 424f
                  auipc        t3, 588362
                  lui          t1, 373995
                  sll          s7, tp, t6
410:              xori         s3, s6, 1689
                  xor          tp, s3, a0
                  xori         gp, s11, 711
413:              xor          gp, a6, t1
                  xor          s11, zero, t6
                  andi         a0, sp, 48
                  blt          t2, sp, 428f
                  slt          a1, tp, tp
                  or           t3, s6, a5
                  and          a4, t3, s10
420:              blt          s6, a7, 437f
                  lui          s1, 1030916
                  beq          gp, t6, 442f
                  bge          t3, s8, 425f
424:              srai         s7, a7, 4
425:              srl          a7, a1, s10
                  bne          t5, a6, 432f
                  bne          s6, tp, 438f
428:              add          s0, s6, gp
                  nop
                  sra          s11, s11, a4
                  blt          a7, a3, 438f
432:              auipc        tp, 620895
                  andi         a3, t1, 1810
                  xor          a6, t2, a0
                  xori         t4, s6, -10
                  nop
437:              add          s11, s2, s6
438:              xor          s3, t4, t0
                  srl          gp, a6, s5
                  sltiu        tp, s11, -1021
                  sub          tp, s1, t0
442:              bltu         gp, zero, 450f
                  lui          t2, 200721
                  nop
                  beq          a0, a6, 459f
                  sra          s9, a2, t2
                  slli         a7, t6, 14
                  srl          s11, t0, gp
                  srai         tp, t0, 29
450:              nop
                  slt          s6, a4, a6
                  sra          t0, s7, t4
                  bge          a7, a3, 472f
                  srai         t1, t5, 8
                  beq          gp, s11, 462f
                  sra          s3, s2, a0
                  add          zero, s5, s8
                  addi         s2, t6, -1319
459:              srai         s9, s4, 22
                  srai         a4, a0, 26
                  slti         t0, sp, -1176
462:              sra          s10, a0, s4
                  beq          s2, gp, 475f
                  addi         s7, a2, 1922
                  sll          t3, a3, s4
                  auipc        zero, 815937
                  lui          zero, 625857
                  andi         tp, t0, 1447
                  sltiu        tp, t1, 1438
                  and          a0, a4, s8
                  add          a2, t2, ra
472:              sltu         t1, t6, s6
                  andi         a3, zero, -463
                  or           ra, zero, s7
475:              ori          t2, s9, -1475
                  lui          s11, 764703
                  andi         s10, s11, -1929
                  or           t2, ra, a5
                  ori          tp, s6, 567
                  xori         t6, s8, 1921
                  bge          zero, s6, 491f
                  bgeu         a0, t3, 493f
                  sltiu        a0, a7, -1998
                  srl          s8, t3, t4
                  srl          a5, s8, s0
                  sub          s9, s6, s9
                  xor          a6, zero, a2
                  sra          s1, a3, zero
                  addi         t4, s5, 159
                  xori         s2, s3, 1098
491:              addi         a7, t1, -1477
                  sra          a1, t5, a6
493:              or           a3, a2, s2
                  auipc        a0, 184378
                  slt          zero, s4, s3
                  slli         tp, a0, 0
                  slli         s5, t1, 5
                  bge          t0, t3, 515f
                  and          t4, s11, t4
                  slti         a7, a1, 847
                  blt          t3, ra, 515f
                  bltu         t5, s9, 517f
                  srai         tp, s7, 31
                  and          s3, t0, zero
                  xor          t1, s6, t1
                  bge          a5, s3, 520f
                  srl          s2, s0, s8
                  srli         s5, s8, 16
                  sltiu        a3, s5, -1029
                  slli         s2, s0, 1
                  slti         a3, t5, -1469
                  xor          a7, t1, a0
                  srl          a0, zero, t4
                  slli         t6, s0, 18
515:              and          ra, s8, t4
                  slli         s3, s3, 13
517:              add          ra, s2, a0
                  xor          t0, t6, zero
                  slti         s2, s5, -40
520:              sltu         s3, a3, s9
                  blt          a4, a5, 538f
                  slti         t6, a3, -1718
                  slt          tp, a6, t4
                  bne          a1, sp, 531f
                  or           a1, t1, a6
                  sltiu        a5, a2, -396
                  sll          a4, ra, zero
                  auipc        s8, 68404
                  sub          s11, s3, t0
                  add          s11, s5, s4
531:              bge          a0, a2, 540f
                  srli         s7, t3, 3
                  srl          s2, t1, t6
                  andi         t0, t0, 505
                  beq          t5, a7, 545f
                  lui          a6, 61759
                  slli         zero, s9, 19
538:              ori          t0, s8, -589
                  srli         zero, s9, 29
540:              ori          s11, s1, 227
                  or           s8, a6, s3
                  ori          a2, t4, -2029
                  sll          s0, tp, s0
                  addi         t4, gp, 239
545:              bltu         t6, sp, 547f
                  xor          gp, t3, s1
547:              bltu         s0, t2, 565f
                  sra          gp, ra, sp
                  and          gp, a4, a7
                  bltu         zero, s3, 562f
                  srai         s10, gp, 30
                  andi         s5, s5, -1385
                  nop
                  ori          t1, s10, -2042
                  srli         t4, s9, 20
                  bgeu         s2, a6, 557f
557:              bgeu         s5, s0, 576f
                  bge          sp, a3, 566f
                  blt          s4, t2, 562f
                  andi         tp, a5, -1313
                  bge          sp, s0, 570f
562:              srli         a4, s1, 5
                  lui          t3, 267383
                  sltu         t0, s2, s3
565:              slt          a5, s1, t6
566:              srl          ra, a1, a5
                  sra          t6, s5, t3
                  sltu         s6, a4, s11
                  srai         s0, s8, 3
570:              nop
                  lui          a6, 445132
                  srli         s9, t3, 5
                  bltu         s1, t6, 593f
                  and          t6, a6, s0
                  and          s7, t5, s2
576:              bgeu         t1, s7, 595f
                  sub          s3, sp, gp
                  srl          s0, t2, s5
                  sltu         s3, t0, gp
                  or           s5, a4, t3
                  and          s10, a1, s6
                  sltiu        a4, s0, 959
                  srai         t4, t3, 22
                  bltu         s11, s2, 586f
                  slti         s9, t2, 1520
586:              srai         s3, a1, 11
                  xori         s3, t1, -1654
                  andi         a3, a0, 1447
                  blt          s8, s6, 601f
                  bgeu         s11, s8, 591f
591:              sltiu        s9, s0, 661
                  or           s6, s5, t5
593:              bne          t4, a3, 613f
                  andi         a1, t1, -2016
595:              nop
                  bltu         s2, s9, 602f
                  slti         s10, s11, -349
                  ori          t2, t0, 1609
                  bne          s8, s6, 603f
                  andi         s1, t5, 1070
601:              nop
602:              nop
603:              auipc        t6, 968414
                  slti         s8, s3, -561
                  blt          s8, s6, 616f
                  srli         zero, s10, 0
                  slt          s8, s4, zero
                  sltu         s10, t0, a0
                  slti         s11, t6, -542
                  beq          s5, t0, 629f
                  andi         s6, s4, -438
                  sltu         a3, a1, a7
613:              or           tp, t5, s3
                  slt          s0, s11, s6
                  sll          s7, t2, ra
616:              srai         s7, a5, 19
                  sra          t3, t1, a2
                  sub          ra, s11, t5
                  addi         a2, t1, -920
                  slli         t1, a5, 0
                  sll          s7, s3, s7
                  bltu         t4, t1, 640f
                  nop
                  sltiu        a6, zero, -1177
                  srai         s7, gp, 5
                  xor          t0, s11, s11
                  blt          s1, a2, 634f
                  slti         a3, a4, -1070
629:              and          a2, a7, gp
                  slti         a6, t4, 1125
                  andi         t4, t3, 97
                  slt          ra, t5, tp
                  blt          s8, tp, 650f
634:              addi         t1, a1, -1621
                  srl          t3, a7, a0
                  bltu         a3, a0, 638f
                  sltiu        s8, s1, 65
638:              or           t1, s4, s4
                  srl          t3, s0, s7
640:              bltu         sp, t0, 649f
                  bne          s6, s10, 660f
                  ori          s10, a3, -1153
                  srl          s0, a3, s3
                  srl          a0, s6, s6
                  xor          a4, s4, zero
                  or           s0, s10, t2
                  sltu         s9, a6, a7
                  add          s6, s8, t5
649:              sub          ra, s8, a5
650:              sltiu        s9, s0, 1586
                  andi         t2, s8, -404
                  andi         s10, a0, 1620
                  beq          a7, a7, 659f
                  sltiu        s6, t2, -1702
                  sltiu        t6, s10, -880
                  beq          t2, s4, 667f
                  bge          s5, t6, 660f
                  auipc        zero, 830018
659:              addi         a0, a7, 899
660:              sltu         a5, s0, t3
                  or           t1, s0, t1
                  beq          tp, s6, 673f
                  auipc        tp, 679686
                  and          s0, zero, s11
                  andi         s6, s3, 126
                  andi         s7, t1, -1125
667:              bge          zero, a1, 673f
                  addi         t0, a3, -207
                  auipc        s1, 821483
                  auipc        t1, 643108
                  bgeu         s1, s8, 673f
                  and          zero, t5, zero
673:              auipc        gp, 39625
                  sll          a1, t6, a0
                  or           s3, a0, s8
                  lw           tp, 4(t5)
                  addi         t5, t5, 64
                  slti         t1, a3, 1939
                  addi         s7, t2, 622
                  srli         s11, s10, 20
                  addi         s11, a4, 1751
996:              addi x15, x4, 0
996:              jalr x15, x15, 0
sub_8:            nop
                  add          ra, s2, t1
                  addi         t5, t5, -52
                  sltiu        s1, s6, -264
                  sra          s2, t1, t2
                  sw           tp, 4(t5)
                  sra          a1, s7, s4
                  la           s5, region_1+196 #start riscv_load_store_rand_instr_stream_1
                  lbu          gp, -43(s5)
                  sra          a2, s6, a5
                  lh           tp, 32(s5)
                  lb           zero, -23(s5)
                  andi         a7, t3, 35
                  xor          t6, s10, s8
                  add          t3, t0, gp
                  nop
                  nop
                  lbu          a5, -5(s5)
                  sw           t5, 20(s5)
                  addi         s2, a6, -1910
                  lbu          s8, -27(s5)
                  sb           a7, -45(s5)
                  lb           t2, 35(s5)
                  or           t1, s11, s3
                  sub          a1, s9, t4
                  and          tp, t4, s3
                  auipc        zero, 809331
                  sub          gp, s3, s8
                  lbu          a7, -12(s5)
                  auipc        t6, 271211
                  lh           s3, 28(s5)
                  sb           s2, 25(s5)
                  lb           t6, 9(s5)
                  lbu          s9, 60(s5)
                  srai         t1, t5, 27
                  lw           tp, 28(s5)
                  lbu          t1, 9(s5)
                  sb           s5, -41(s5)
                  lbu          s2, 57(s5)
                  slt          s11, s11, s8
                  sltu         t2, s6, s11
                  lui          s11, 667037
                  ori          s6, s5, 1035
                  andi         s1, a2, -426
                  sub          gp, s1, a4
                  lbu          s8, 29(s5)
                  sh           gp, -58(s5)
                  nop
                  lb           s9, 50(s5)
                  lbu          s0, -46(s5)
                  lb           a5, 37(s5)
                  sb           a2, 47(s5)
                  sll          t1, a6, zero
                  sb           t4, 23(s5)
                  ori          s1, t1, -1726
                  add          t2, tp, t6
                  lb           t1, 25(s5)
                  slti         a4, s3, 1040
                  lhu          a4, -28(s5)
                  lhu          tp, 50(s5)
                  sb           t3, 13(s5)
                  srl          t2, a4, s7
                  lbu          s10, 31(s5)
                  ori          s8, s8, -1322
                  sw           t2, 24(s5) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_0+1700 #start riscv_load_store_rand_instr_stream_2
                  srli         t2, s11, 31
                  lw           s3, -8(s9)
                  auipc        s2, 305927
                  sb           s5, 5(s9)
                  srl          t6, t4, s6
                  lb           s11, -12(s9)
                  add          zero, t5, t1
                  xor          ra, a0, s2
                  addi         t4, t5, 782
                  auipc        a4, 645796
                  lbu          tp, -13(s9)
                  sll          s11, s5, s9
                  add          s5, a0, s11
                  and          t4, ra, s7
                  nop
                  srai         t6, s6, 26
                  sub          s8, a0, a1
                  slli         s2, t3, 19
                  xori         a4, a4, 723
                  sll          s7, zero, s8
                  lbu          t4, 6(s9)
                  lb           ra, 1(s9)
                  lbu          s5, 5(s9)
                  sw           a0, -16(s9)
                  sra          tp, s7, a3
                  slt          a2, a2, s9
                  lhu          a1, -12(s9)
                  nop
                  add          a4, t4, zero
                  srl          zero, a6, a1
                  andi         t3, s7, -652
                  sb           t0, 13(s9)
                  lui          t4, 458283
                  lbu          a4, 5(s9) #end riscv_load_store_rand_instr_stream_2
                  xor          t0, gp, a4
                  ori          tp, a7, 1170
                  nop
                  beq          s4, t6, 19f
                  andi         gp, t2, -1633
                  auipc        s7, 366593
                  andi         t4, t4, 1928
                  lui          gp, 184478
                  addi         ra, s6, -405
                  and          t4, a5, t2
                  bgeu         a0, s9, 22f
                  sll          s11, a0, a1
                  srli         ra, s11, 11
                  nop
                  xori         s6, s8, 491
                  slt          s10, s5, s11
                  sub          s1, s0, s0
                  sltiu        ra, t6, 451
                  bltu         ra, a5, 21f
19:               sra          tp, a7, s10
                  and          s2, a6, a6
21:               srl          s6, zero, t4
22:               xor          gp, a5, a2
                  ori          t2, s8, -2009
                  srai         a5, tp, 13
                  sll          tp, a0, a6
                  slli         s7, s2, 29
                  bgeu         zero, t2, 35f
                  slt          t0, s2, t1
                  bne          s0, s5, 49f
                  sub          a7, t0, s3
                  slt          t1, a7, t4
                  bgeu         a4, s10, 35f
                  slli         s1, a1, 18
                  bltu         s1, s2, 48f
35:               sra          s6, t1, a5
                  sra          s6, tp, t6
                  slli         tp, a3, 23
                  addi         s7, sp, 1182
                  srl          s9, a6, t6
                  srli         tp, s3, 20
                  sub          ra, t1, a6
                  bne          t0, s5, 45f
                  srli         t4, a1, 25
                  sub          gp, t4, t2
45:               nop
                  sra          t1, s6, t1
                  sll          a5, zero, zero
48:               add          s9, ra, s3
49:               bge          a1, t4, 66f
                  bgeu         s0, t4, 68f
                  sra          s0, s5, t5
                  beq          s11, s1, 63f
                  srl          a7, s7, s5
                  and          s11, s8, s0
                  slti         s6, t0, 1282
                  andi         zero, t6, 1073
                  beq          s11, a4, 65f
                  srl          s11, s4, s2
                  srl          a6, t0, a7
                  auipc        s7, 735487
                  lui          a5, 1020410
                  srai         s10, a1, 5
63:               slti         gp, s0, 1282
                  lui          s11, 707083
65:               srli         gp, gp, 17
66:               sltiu        a6, a0, 8
                  sll          a4, a7, t2
68:               bgeu         s5, sp, 83f
                  auipc        a0, 735246
                  srai         s6, s10, 7
                  add          s2, t5, a6
                  srai         tp, a4, 3
                  sra          ra, t1, s11
                  add          ra, s7, s11
                  bltu         gp, gp, 93f
                  sub          a3, s1, s7
                  sub          s3, sp, s9
                  la           t6, region_1+1719 #start riscv_load_store_rand_instr_stream_0
                  slli         t3, sp, 10
                  srai         t2, gp, 7
                  slt          s8, t4, s10
                  srli         s8, t1, 26
                  sb           a7, 6(t6)
                  lb           a4, 1(t6)
                  sra          s0, s9, s7
                  addi         s3, a3, -1782
                  srli         a1, a2, 7
                  lui          s6, 798137
                  lbu          s9, 0(t6)
                  srli         s8, a5, 15
                  sh           a4, -13(t6)
                  sb           s8, 0(t6)
                  srai         a6, ra, 13
                  sb           a5, 10(t6)
                  lbu          s5, -13(t6)
                  ori          a2, a4, 1069
                  srai         s8, t0, 28
                  xor          s1, t3, s3
                  lhu          a2, -3(t6)
                  slti         t3, t5, -1674
                  xori         a7, s10, -972
                  lw           s10, -15(t6)
                  and          a7, a4, s11
                  srai         t0, ra, 7
                  andi         ra, s5, -669
                  nop
                  sub          a6, gp, zero
                  sb           s10, -8(t6)
                  sub          tp, a4, s1
                  and          s1, s4, s1
                  sh           s5, 7(t6)
                  sll          a5, a4, t1
                  sb           ra, -15(t6)
                  sb           s7, 8(t6) #end riscv_load_store_rand_instr_stream_0
                  beq          s1, s9, 88f
                  addi         s5, s7, -1731
                  bgeu         s11, s0, 89f
                  bgeu         t2, s6, 91f
                  add          t0, s11, ra
83:               sub          s6, a5, sp
                  srai         s2, t6, 22
                  xori         zero, a7, -1315
                  and          s6, t2, ra
                  sub          s9, s9, t6
88:               add          s3, s1, sp
89:               sra          a5, s0, t3
                  slt          gp, ra, gp
91:               nop
                  auipc        s8, 426278
93:               sll          s10, s2, sp
                  addi         s10, s7, -1391
                  slli         t1, sp, 26
                  xori         gp, a5, 286
                  srli         s9, s9, 8
                  sltiu        a3, a4, -1188
                  sltu         s0, a3, a6
                  srl          zero, a7, a6
                  slli         a0, a3, 24
                  bgeu         t0, s0, 110f
                  bge          tp, s8, 108f
                  bltu         s5, a7, 113f
                  srli         s8, sp, 5
                  andi         a4, tp, -1120
                  bne          t2, s10, 123f
108:              lui          t1, 695003
                  addi         a7, s8, -252
110:              and          s1, s1, tp
                  bltu         gp, a7, 130f
                  srai         s1, sp, 20
113:              slli         a2, tp, 24
                  sra          s1, s1, tp
                  slti         s10, t6, -2030
                  lui          s11, 382407
                  auipc        t3, 767650
                  auipc        a3, 942606
                  addi         a7, t1, -891
                  slti         s1, s4, -1105
                  sub          s9, t2, gp
                  ori          s7, t6, 979
123:              bne          a2, s2, 130f
                  nop
                  slti         s2, t1, 1829
                  bgeu         a4, s2, 142f
                  nop
                  slti         t6, s0, 1150
                  srli         t4, t0, 2
130:              sra          t3, t1, t3
                  bgeu         a3, a0, 139f
                  srai         s6, s3, 2
                  srli         a4, zero, 27
                  auipc        s1, 70288
                  andi         s6, t0, 362
                  add          t6, a5, s11
                  or           s5, a1, s2
                  add          s3, s5, s5
139:              bltu         t6, s10, 151f
                  or           a3, t3, t0
                  slti         s8, s11, -95
142:              xor          a0, a3, a2
                  beq          t6, a1, 145f
                  add          s1, a0, a6
145:              bltu         a0, t5, 150f
                  or           a4, ra, s6
                  addi         a1, sp, -330
                  bge          a4, t2, 167f
                  nop
150:              sra          t3, a1, s8
151:              blt          s2, ra, 159f
                  bge          zero, t3, 166f
                  sra          a2, t6, ra
                  slt          s7, a6, s0
                  and          s8, s7, s6
                  srai         a2, a2, 31
                  bge          zero, s3, 176f
                  bgeu         a6, tp, 161f
159:              srli         a6, t3, 3
                  beq          s7, s6, 169f
161:              sll          s9, t1, s8
                  slti         t1, sp, 214
                  srli         zero, t2, 14
                  sltiu        t1, t4, -1528
                  slli         s0, s6, 1
166:              slt          tp, a0, s11
167:              lui          gp, 477810
                  slli         t4, s9, 1
169:              sll          t0, a1, s10
                  xori         a5, tp, 1311
                  nop
                  bge          a2, t5, 182f
                  andi         gp, a5, -895
                  addi         a5, t3, 1449
                  or           s7, s11, zero
176:              sub          t0, s11, t4
                  xor          s10, a6, a1
                  sll          a2, t6, s0
                  nop
                  auipc        t3, 463247
                  addi         a5, a3, 1027
182:              sltiu        s11, s1, 1527
                  sra          a1, zero, s10
                  sll          s5, a4, s5
                  sra          t3, a4, a3
                  srl          s3, t0, tp
                  sltiu        a7, a0, -1774
                  beq          a1, tp, 200f
                  sll          t3, t5, t1
                  blt          a4, t4, 198f
                  slli         s2, a7, 3
                  add          s10, s6, t2
                  xor          a3, a7, gp
                  bne          s7, a4, 211f
                  blt          a1, t3, 200f
                  srli         s0, s10, 26
                  blt          s7, s2, 199f
198:              xor          s7, a5, s4
199:              srl          s9, s4, a3
200:              nop
                  bge          t0, s11, 219f
                  sltu         t0, t0, t3
                  bltu         tp, s5, 211f
                  ori          s10, s9, -1130
                  or           s3, zero, s10
                  sltu         s7, a1, t0
                  nop
                  addi         t1, sp, -336
                  blt          a1, gp, 216f
                  sll          a7, t4, s0
211:              add          a1, s10, s4
                  sub          s3, t1, a6
                  srli         tp, t6, 30
                  sub          t6, t3, sp
                  slti         gp, s4, -940
216:              ori          t0, s7, -1767
                  blt          s6, s8, 222f
                  slt          t1, a3, a1
219:              or           s11, t6, s7
                  sub          t4, a7, s6
                  sltu         a5, t1, s8
222:              addi         a7, s9, 1219
                  bltu         a7, t6, 232f
                  auipc        gp, 79051
                  sltu         t6, tp, a6
                  srai         a0, s7, 13
                  srli         s11, s1, 18
                  slt          s11, s5, s5
                  bge          s7, a7, 249f
                  slli         s0, tp, 15
                  slt          a3, s7, s11
232:              slt          s8, t2, s4
                  and          t2, a6, s9
                  srl          a4, t2, t4
                  srai         s8, s5, 19
                  beq          a3, s8, 252f
                  bne          t6, s10, 253f
                  srai         t2, a5, 17
                  srai         s8, s0, 25
                  xor          t4, zero, t2
                  blt          s4, t1, 259f
                  sltiu        a4, tp, 619
                  sra          a7, gp, gp
                  slt          s3, s11, s8
                  bne          s5, s4, 253f
                  or           a7, t2, t5
                  sltiu        t6, zero, -1754
                  nop
                  la           s11, sub_10
                  slti         a0, s5, 2010
                  and          gp, s11, a1
                  addi         s11, s11, 385
                  sub          t1, s1, t1
                  lui          ra, 528683
                  ori          zero, gp, -1650
sub_8_j12:        jalr         tp, s11, -384 #jump sub_8 -> sub_10
249:              srl          a6, ra, s5
                  xori         s11, sp, 1893
                  add          a0, s2, s7
252:              xor          zero, a5, s8
253:              sra          t2, a4, gp
                  bge          ra, t2, 270f
                  beq          s7, s2, 258f
                  addi         s10, a6, 1781
                  sltu         a7, s1, s4
258:              srli         s8, a5, 3
259:              bne          s2, s2, 262f
                  andi         t4, s8, -1454
                  xor          a2, s11, a3
262:              ori          a1, t0, -2013
                  bne          s3, a1, 278f
                  bltu         s6, a6, 276f
                  bltu         s3, s6, 275f
                  bge          s7, s10, 274f
                  srai         t0, t2, 31
                  auipc        s3, 878498
                  xori         zero, t6, 742
270:              slt          a1, gp, ra
                  bne          zero, a3, 290f
                  sltiu        a7, s5, -163
                  slli         t1, s11, 16
274:              and          t3, s0, t1
275:              sltiu        s7, t3, -256
276:              lui          t6, 602807
                  blt          t0, s1, 285f
278:              srli         s6, t0, 10
                  and          s3, t3, zero
                  slt          zero, a7, s8
                  ori          a7, s1, 1962
                  xori         zero, a0, -707
                  beq          a1, sp, 294f
                  bgeu         a6, a3, 296f
285:              slli         s2, t1, 3
                  sra          gp, s1, s11
                  ori          a2, tp, -220
                  bgeu         s10, a3, 299f
                  slli         s10, a3, 31
290:              srai         t6, s7, 31
                  bge          s9, t5, 305f
                  sltu         s9, tp, s5
                  sll          s6, a3, a7
294:              and          s5, a0, t5
                  slti         a6, s11, 1276
296:              and          t0, a3, s0
                  slt          s10, s2, t5
                  bne          t0, ra, 300f
299:              xori         t1, s3, 565
300:              lui          a4, 1029978
                  lui          s9, 915936
                  sra          a4, s6, t6
                  sub          a5, a1, t0
                  slti         s6, s9, 1726
305:              ori          t6, zero, 1902
                  sltu         a7, t4, ra
                  srl          a3, sp, zero
                  blt          a0, a0, 317f
                  slli         s8, tp, 29
                  srai         gp, s1, 7
                  sub          t6, s11, s5
                  ori          t6, s3, 1584
                  lui          s5, 501956
                  beq          s5, ra, 330f
                  srli         t6, t3, 2
                  add          a7, s10, t1
317:              bge          t5, s4, 335f
                  slli         s9, t0, 14
                  add          a3, s1, sp
                  bgeu         zero, t2, 328f
                  andi         s5, s10, -107
                  sltu         t2, t6, s10
                  srli         t0, a7, 29
                  beq          t3, s9, 343f
                  sltiu        zero, t5, -1545
                  slt          s6, a3, ra
                  srai         s9, gp, 12
328:              add          a6, a3, t3
                  bltu         tp, zero, 332f
330:              blt          a6, a2, 349f
                  add          s2, a1, s4
332:              add          ra, s0, gp
                  lui          a3, 456503
                  bgeu         s1, s1, 337f
335:              bne          t1, tp, 351f
                  xor          s1, gp, a1
337:              or           t4, t4, a7
                  add          a7, t5, s4
                  bltu         s11, t2, 359f
                  auipc        t3, 525060
                  bne          s11, t4, 349f
                  lui          a6, 533491
343:              sra          ra, a0, s11
                  ori          a7, a2, 1051
                  bltu         gp, sp, 363f
                  bltu         s4, s2, 356f
                  bge          a0, s7, 363f
                  xor          s5, tp, t3
349:              add          zero, s6, a3
                  srai         s0, t4, 7
351:              bne          t4, s0, 366f
                  bltu         s5, s0, 360f
                  and          a6, s2, a1
                  andi         s10, s7, 787
                  xori         a6, s10, 699
356:              srl          ra, a2, t0
                  blt          a0, a5, 366f
                  andi         a1, t4, -1228
359:              slti         s6, t5, 72
360:              add          a2, s7, t3
                  slli         t6, s9, 1
                  sll          s7, t2, t4
363:              lui          a4, 532833
                  sub          t4, a2, a0
                  sub          a3, s6, s4
366:              srli         t6, a2, 22
                  sub          zero, a0, s8
                  andi         s2, a7, 1008
                  and          s2, t6, t5
                  sltiu        a4, a7, -1299
                  bge          t4, s4, 383f
                  blt          s7, s9, 377f
                  lui          t6, 520430
                  auipc        s11, 857754
                  sra          a4, t2, t1
                  bne          s2, a3, 384f
377:              sra          ra, gp, s0
                  slli         s9, t6, 29
                  sra          a4, s10, ra
                  xori         s8, s5, 158
                  add          t0, t6, zero
                  sltu         a1, zero, s3
383:              bge          s11, a0, 390f
384:              lui          a1, 673372
                  add          s0, ra, sp
                  beq          a0, a3, 396f
                  blt          s11, a0, 404f
                  bltu         a0, s1, 391f
                  andi         tp, s6, 1070
390:              bge          s6, zero, 398f
391:              slti         ra, tp, 1971
                  nop
                  sll          gp, t2, a5
                  xor          s11, s11, s5
                  xor          tp, s7, a7
396:              slti         a7, a6, 79
                  beq          t1, t1, 402f
398:              xori         a6, a6, 1607
                  or           a5, s7, t2
                  srl          t1, tp, a0
                  sll          t0, t3, tp
402:              bne          s5, a6, 405f
                  xor          ra, s6, ra
404:              slti         ra, gp, 89
405:              xor          a5, zero, s7
                  bge          s6, s11, 414f
                  bltu         a4, t2, 412f
                  sub          s9, s6, s5
                  bge          t4, s7, 423f
                  auipc        t1, 439966
                  sll          zero, s0, s11
412:              nop
                  addi         s10, s10, -1384
414:              slli         a0, a3, 6
                  bltu         t3, s11, 431f
                  slli         t4, a3, 16
                  blt          sp, s10, 427f
                  sll          a0, s2, s11
                  sra          s11, s5, a7
                  beq          s9, a7, 439f
                  add          s7, s11, s11
                  blt          t6, sp, 425f
423:              sub          s7, s10, tp
                  srli         a1, s10, 0
425:              srai         s1, t2, 10
                  srl          t1, s7, t4
427:              addi         s5, t0, -1700
                  ori          a6, t3, -1083
                  slli         a1, zero, 13
                  xori         s6, a2, -1598
431:              sltu         a0, zero, a1
                  or           a0, a3, s1
                  sll          s7, s5, tp
                  bltu         s5, ra, 442f
                  add          zero, zero, a6
                  xori         s0, tp, -400
                  sra          t2, a0, t2
                  slti         s8, a2, -589
439:              slt          s2, a6, sp
                  bltu         s11, gp, 456f
                  sub          a7, s10, a1
442:              xor          a3, s8, t0
                  sra          t3, t6, gp
                  sltiu        s1, a6, -837
                  addi         ra, s3, -78
                  bne          a0, s4, 455f
                  ori          gp, t2, 1473
                  srai         a5, s8, 15
                  sltiu        a7, t5, -984
                  bltu         t1, s11, 469f
                  ori          s8, s5, -242
                  or           t3, a3, s6
                  addi         gp, s8, -1676
                  sltiu        a4, tp, 1668
455:              add          a2, sp, s4
456:              srli         ra, a6, 25
                  lui          gp, 313713
                  and          tp, s9, s9
                  and          s5, t3, t6
                  nop
                  auipc        s2, 676632
                  bltu         s2, s5, 470f
                  sltiu        a6, s4, 54
                  lui          a7, 458192
                  sub          s6, t5, a7
                  sll          s10, a2, t6
                  srl          a1, t6, zero
                  bltu         t2, s4, 480f
469:              bne          s4, a2, 479f
470:              sltu         s10, t1, s1
                  lui          a5, 654008
                  or           a2, a3, s3
                  addi         s0, ra, 1728
                  sub          a1, s1, s4
                  blt          s5, s8, 480f
                  sra          a5, s11, a6
                  beq          s0, t2, 480f
                  and          tp, s1, s0
479:              srai         gp, a0, 16
480:              ori          a2, a1, 153
                  sll          ra, gp, a4
                  lw           tp, 4(t5)
                  slli         s2, s1, 16
                  addi         t6, s5, 269
                  addi         a1, a5, -1993
                  srai         t6, a0, 1
                  and          a1, a0, t4
                  slt          gp, s9, s4
                  andi         a3, gp, -1964
                  addi         t5, t5, 52
                  sltu         zero, s9, t3
637:              addi x6, x4, 1
637:              jalr x6, x6, 0
sub_1:            add          s10, a2, sp
                  addi         t5, t5, -24
                  auipc        t0, 793214
                  sub          ra, a4, t2
                  xor          s5, a2, s4
                  sw           tp, 4(t5)
                  and          t4, s2, s11
                  or           zero, t6, s4
                  sub          t3, gp, tp
                  addi         s1, t4, -1213
                  slli         s7, s0, 27
                  add          t4, s9, s4
                  add          tp, tp, s2
                  slli         s11, a3, 31
                  la           a0, sub_2
                  srli         a2, tp, 17
                  slli         a5, a3, 0
                  addi         a0, a0, 617
                  or           s6, s2, a0
                  bgeu         gp, ra, sub_1_j2 #branch to jump instr
                  sltiu        s8, s8, 1752
sub_1_j2:         jalr         tp, a0, -617 #jump sub_1 -> sub_2
                  lui          tp, 521344
                  sub          s5, s11, s10
                  add          s9, t5, t4
                  sub          gp, s8, s10
                  slli         a7, s9, 6
                  la           s3, sub_2
                  and          t6, s1, t5
                  add          ra, s1, zero
                  xor          s1, a1, s9
                  addi         s3, s3, 701
                  ori          a3, a7, -1199
sub_1_j3:         jalr         tp, s3, -700 #jump sub_1 -> sub_2
                  auipc        s1, 223445
                  and          s9, a1, s5
                  auipc        t0, 144517
                  sltu         t2, zero, s11
                  slt          gp, a2, s2
                  bne          s1, s11, 9f
                  blt          a1, a4, 9f
                  sltiu        a0, s6, 597
                  srai         a5, s11, 26
9:                xor          s6, s7, s10
                  slt          s8, t3, sp
                  sub          s9, a4, s4
                  srai         a3, t5, 19
                  srl          s3, t3, s11
                  lw           tp, 4(t5)
                  xor          a0, s7, a6
                  slt          gp, s11, a5
                  addi         t5, t5, 24
                  sub          s9, tp, a1
53:               addi x24, x4, 1
53:               jalr x24, x24, 0
sub_9:            xori         a4, t1, -1136
                  xori         a4, s11, 1276
                  sltiu        s2, a0, -1102
                  slti         s10, a7, 1620
                  addi         t5, t5, -28
                  addi         s2, s2, 1754
                  andi         s3, a1, -749
                  slli         a5, s0, 9
                  sw           tp, 4(t5)
                  add          s7, sp, s1
                  xor          a7, s9, a7
                  la           s1, region_0+1231 #start riscv_load_store_rand_instr_stream_3
                  or           a3, zero, s7
                  sb           s5, 9(s1)
                  sll          gp, s3, a4
                  lbu          ra, 42(s1)
                  lbu          a6, 12(s1)
                  lb           a3, 9(s1)
                  slt          tp, s7, s10
                  auipc        a6, 691960
                  lbu          s7, -10(s1)
                  srl          s11, s6, a6
                  sltiu        a4, gp, -1865
                  lh           t2, -27(s1)
                  xori         s11, s9, -12
                  sltu         ra, s1, s4
                  lb           gp, 21(s1)
                  nop
                  slt          t6, s7, s10
                  sh           a4, -29(s1)
                  slti         s8, s3, 1344
                  lbu          s6, 9(s1)
                  srl          a0, a1, t1
                  sltu         s5, a4, s4
                  srli         a0, a4, 24
                  lbu          a6, 12(s1)
                  slli         t4, a1, 31
                  lhu          ra, 11(s1)
                  sb           gp, 63(s1) #end riscv_load_store_rand_instr_stream_3
                  la           s5, region_1+297 #start riscv_load_store_rand_instr_stream_4
                  sb           gp, -199(s5)
                  sh           t1, 791(s5)
                  lb           a6, 202(s5)
                  srl          a3, t5, t0
                  nop
                  lui          a2, 736736
                  sltu         a6, s11, sp
                  lw           s9, 1643(s5)
                  lb           s8, -112(s5)
                  srai         ra, a3, 2
                  lb           a7, 1243(s5)
                  ori          s7, a3, 1656
                  ori          a4, sp, 601
                  nop
                  sll          s2, t2, t1
                  lh           gp, 1655(s5)
                  lb           t1, 1373(s5)
                  sb           t0, -71(s5)
                  and          a2, s6, t5
                  slli         gp, a6, 22
                  sltu         gp, zero, a2
                  lbu          s9, 22(s5)
                  lui          ra, 736431
                  ori          s1, s5, -311
                  sb           gp, 1698(s5)
                  xori         a6, a3, 1562
                  srli         ra, a1, 8
                  sb           gp, 1063(s5)
                  lbu          s3, 1139(s5)
                  sltiu        a0, tp, 452
                  lbu          gp, 20(s5)
                  srl          a0, a7, sp
                  lb           t4, -14(s5) #end riscv_load_store_rand_instr_stream_4
                  bgeu         tp, s7, 18f
                  xor          s8, a6, s1
                  xor          s6, a6, a5
                  bgeu         s0, a0, 7f
                  xori         s3, s1, 317
                  xor          s6, s9, tp
                  bge          t5, a5, 16f
7:                sll          a7, a1, s7
                  bgeu         tp, s4, 28f
                  slli         s3, t1, 5
                  bne          a2, sp, 24f
                  addi         s3, a3, -1924
                  bgeu         a7, a4, 30f
                  slli         a1, s7, 22
                  sltu         a7, s5, sp
                  and          s1, ra, a7
16:               srai         a2, gp, 10
                  sra          t6, s6, tp
18:               srl          s3, s3, gp
                  bltu         t1, s6, 38f
                  bgeu         s10, ra, 30f
                  bltu         s1, tp, 33f
                  sll          ra, s10, t6
                  la           s1, region_0+1989 #start riscv_load_store_rand_instr_stream_2
                  lbu          zero, -14(s1)
                  sb           s9, -6(s1)
                  lb           t2, -59(s1)
                  andi         t0, tp, 632
                  lbu          a2, -16(s1)
                  lui          a4, 205441
                  slti         s0, tp, -514
                  lhu          a4, -37(s1)
                  srl          a3, s2, s6
                  sb           s5, -48(s1)
                  lw           a1, -21(s1)
                  sltiu        ra, t3, 1065
                  lbu          s7, -60(s1)
                  lw           a1, -13(s1)
                  lb           a3, -7(s1)
                  sb           s0, -55(s1)
                  xori         a3, s9, -1962
                  lw           zero, -37(s1)
                  lw           s3, -53(s1)
                  slli         s8, s10, 25
                  sb           s6, 6(s1)
                  sb           ra, -20(s1)
                  sb           s8, -59(s1)
                  lbu          s11, -63(s1)
                  lhu          t6, -37(s1)
                  slti         a5, t1, 960
                  sb           a3, -42(s1)
                  lbu          t0, -9(s1)
                  xor          s9, s3, a0
                  lui          t3, 271419
                  lb           s10, -20(s1)
                  lb           t0, -25(s1)
                  lui          tp, 973112
                  slli         s0, a4, 4
                  lb           s5, -56(s1)
                  sb           a3, -18(s1)
                  sh           s3, -63(s1)
                  srli         s8, s11, 29
                  sw           a1, -33(s1) #end riscv_load_store_rand_instr_stream_2
                  lui          s2, 984425
24:               sltu         s7, t1, a5
                  slli         s1, a0, 30
                  xori         s8, s2, 1798
                  slt          s10, t2, s7
28:               srli         tp, s5, 18
                  nop
30:               xor          s3, a3, s6
                  sra          t6, a1, s10
                  slli         a1, s1, 22
33:               sltiu        a6, s1, -1631
                  sub          zero, s2, a0
                  auipc        a2, 476990
                  srai         t3, t4, 31
                  srai         s8, s3, 20
38:               srli         tp, s8, 14
                  ori          s11, t4, 1568
                  bltu         t5, a4, 46f
                  or           a7, a3, a5
                  and          s7, a4, s3
                  sub          s1, a5, s2
                  auipc        t6, 900795
                  lui          s0, 745634
46:               and          s8, s3, a3
                  and          s3, tp, s8
                  bne          t6, a2, 63f
                  add          a1, s1, s0
                  nop
                  srli         s1, t2, 17
                  slti         s7, gp, 2047
                  sra          t1, s11, t4
                  sra          s10, s3, t3
                  sub          s8, ra, s3
                  srai         s9, s10, 17
                  srl          a6, t1, a2
                  nop
                  lui          zero, 414004
                  bltu         s0, s5, 62f
                  ori          s10, gp, 662
62:               srl          a0, a2, a7
63:               sra          tp, a6, ra
                  bgeu         a1, a1, 68f
                  sll          t2, s8, t4
                  srai         s0, a7, 29
                  bltu         zero, t2, 81f
68:               beq          tp, s3, 73f
                  blt          a2, gp, 84f
                  sltiu        a1, a7, -1794
                  ori          s8, s11, 644
                  sltiu        s10, a0, -881
73:               auipc        a4, 422823
                  sub          a5, a3, ra
                  sltiu        a2, a3, 1110
                  beq          a7, t1, 96f
                  bgeu         s9, t5, 90f
                  xor          s1, s2, t4
                  sub          s6, ra, gp
                  nop
81:               srli         a6, s11, 9
                  sra          s9, t4, t0
                  add          s3, t5, a6
84:               bge          a4, s9, 93f
                  slti         a3, t0, -100
                  blt          zero, a0, 97f
                  add          a2, sp, s0
                  srai         s8, s4, 9
                  srai         t3, t4, 16
90:               or           s0, s6, t1
                  bne          s0, sp, 98f
                  sltiu        s8, ra, -16
93:               slt          tp, s1, a0
                  sltiu        s3, t0, -1079
                  xor          a7, a6, s0
96:               sltiu        ra, a7, 1878
97:               auipc        t3, 428061
98:               xori         gp, t3, -1960
                  sltiu        a2, ra, -828
                  addi         gp, t6, 1629
                  ori          s1, s2, -771
                  bltu         a5, a2, 106f
                  or           s3, a3, a4
                  bge          s11, s2, 114f
                  slt          s5, t0, s10
106:              add          a0, s8, t2
                  sll          s0, a4, s8
                  and          zero, t3, s0
                  addi         a7, s3, 846
                  xori         a5, s2, -278
                  sltu         t6, t5, a7
                  beq          s2, a2, 118f
                  ori          s2, zero, 1030
114:              sra          a6, s3, t1
                  andi         t2, a4, 243
                  la           a6, region_0+341 #start riscv_load_store_rand_instr_stream_1
                  ori          s2, a4, 676
                  sltiu        a0, s11, 337
                  lbu          zero, 64(a6)
                  sll          t1, a1, t1
                  lbu          a0, -38(a6)
                  lb           s3, -31(a6)
                  lhu          a1, -9(a6)
                  andi         a2, s7, -1761
                  srli         s1, a0, 29
                  srl          t4, zero, s8
                  sw           t0, -25(a6)
                  xori         s6, s0, 196
                  auipc        a5, 143325
                  lh           s10, 27(a6)
                  sub          t0, t2, s0
                  sll          t0, ra, t3
                  lbu          ra, 40(a6)
                  andi         gp, t6, -1248
                  slli         s2, s11, 1
                  and          a3, a0, a0
                  lb           t0, 6(a6)
                  lb           a7, -16(a6)
                  addi         s11, s9, -529
                  slti         s6, t3, 1994
                  sh           zero, 31(a6)
                  srai         s5, a3, 14
                  slt          s5, s6, a6
                  lui          t2, 6149
                  lb           a7, -14(a6) #end riscv_load_store_rand_instr_stream_1
                  sltu         tp, s4, a3
                  srli         s3, sp, 2
118:              add          s3, gp, a3
                  srli         s6, a7, 17
                  bge          sp, t2, 127f
                  or           s9, t4, s2
                  andi         a3, ra, 1224
                  ori          t6, s2, -318
                  addi         ra, gp, -1789
                  sltiu        s10, t1, -1359
                  sltiu        t0, s4, -1992
127:              addi         ra, s3, 1014
                  auipc        s2, 662364
                  xori         s9, s10, -1175
                  slt          a3, tp, t1
                  bgeu         t1, s10, 138f
                  slt          s5, t1, s7
                  slti         s1, s8, -126
                  bne          a7, gp, 151f
                  blt          s10, a7, 155f
                  andi         t6, a1, -696
                  sub          t0, a6, sp
138:              addi         a6, a1, -126
                  slti         s3, a2, 1908
                  ori          a5, t5, -66
                  beq          s10, a4, 148f
                  andi         a7, s11, 1649
                  xori         t1, s11, -387
                  srli         s8, s6, 19
                  sltu         ra, t6, ra
                  and          s0, s1, a7
                  bltu         sp, s0, 152f
148:              bge          t1, s5, 152f
                  xor          t0, t4, sp
                  andi         s3, t4, 1910
151:              addi         t0, s0, 188
152:              slli         s7, s0, 8
                  add          a5, t0, s0
                  slli         s1, gp, 18
155:              slli         zero, s10, 26
                  bgeu         a7, s9, 170f
                  slti         s10, t2, 350
                  srai         s7, t4, 19
                  xor          a1, zero, a2
                  xor          t4, s7, s6
                  addi         a6, t0, -779
                  slt          s7, s2, s2
                  xor          t2, a0, s5
                  srai         t1, a5, 2
                  la           s7, region_0+942 #start riscv_load_store_rand_instr_stream_0
                  and          a7, zero, zero
                  and          a5, a3, a0
                  lbu          s2, -937(s7)
                  sb           zero, -569(s7)
                  lui          s3, 918447
                  lb           t2, 162(s7)
                  sltiu        s6, s4, 1952
                  lbu          a1, 1054(s7)
                  lb           s9, 208(s7)
                  lbu          a5, -279(s7)
                  slli         a1, s3, 18
                  lbu          a1, 227(s7)
                  srl          s10, t5, s6
                  sb           a6, -661(s7)
                  lbu          t0, 184(s7)
                  sw           t2, 286(s7)
                  sb           s5, -405(s7)
                  sb           s0, -661(s7)
                  lbu          s0, -28(s7)
                  ori          zero, t2, -1877
                  lui          t6, 632946
                  lbu          t4, -905(s7)
                  xor          s5, s3, a6
                  lhu          gp, 1044(s7)
                  or           s10, t2, a0
                  sb           s10, -154(s7)
                  lh           a4, -112(s7)
                  lhu          t6, 964(s7)
                  sh           s7, -406(s7)
                  lbu          s6, 134(s7)
                  srai         t3, s8, 26
                  lb           a5, 418(s7)
                  sltu         s10, a7, s4
                  sw           t3, 542(s7)
                  slti         zero, ra, -1577
                  sh           a4, 380(s7)
                  lh           s2, -190(s7) #end riscv_load_store_rand_instr_stream_0
                  blt          a6, t1, 174f
                  sra          a4, s3, a6
                  bltu         a1, s11, 185f
                  lui          zero, 585350
                  add          a7, tp, zero
170:              bltu         gp, s8, 177f
                  bge          s2, s4, 191f
                  sub          gp, gp, zero
                  sub          a5, s10, gp
174:              nop
                  nop
                  blt          a1, a1, 186f
177:              srai         t6, tp, 21
                  srl          t1, zero, s3
                  and          t2, t0, t3
                  slt          s11, sp, a0
                  sll          zero, s6, a0
                  slt          s7, t2, t2
                  sltu         a0, s1, s7
                  andi         s3, zero, 51
185:              sra          s9, gp, a1
186:              sltiu        t3, t0, -689
                  srai         s11, a1, 19
                  lui          s0, 355413
                  bne          zero, s2, 194f
                  slli         a3, s0, 18
191:              ori          s2, s10, -713
                  beq          s4, s1, 210f
                  bge          t6, s7, 204f
194:              beq          gp, a5, 201f
                  srl          zero, a6, t4
                  auipc        s6, 215324
                  sltu         s9, s0, t5
                  nop
                  ori          s0, s11, 1471
                  sub          t4, s0, tp
201:              andi         t1, s7, -1279
                  xori         s5, a6, -1348
                  or           s11, s3, gp
204:              srl          a1, t1, sp
                  and          s8, a2, s11
                  sra          s9, a4, sp
                  nop
                  sll          a5, a0, t5
                  sra          s8, s10, s0
210:              andi         a5, a0, -256
                  sll          a1, s6, a7
                  sltiu        s5, s4, 743
                  slli         s9, tp, 17
                  auipc        t3, 720422
                  bgeu         s7, a2, 217f
                  blt          a4, a5, 222f
217:              and          a2, a0, a1
                  beq          t0, s6, 235f
                  blt          s0, s7, 225f
                  sltu         s0, a2, s5
                  bgeu         s10, a7, 231f
222:              srli         a1, sp, 18
                  blt          t1, a7, 243f
                  xor          a4, s3, s1
225:              srli         a2, a3, 15
                  bgeu         s10, s8, 236f
                  addi         s5, t2, -921
                  bne          s2, gp, 248f
                  auipc        a7, 619765
                  or           gp, tp, t6
231:              add          s2, sp, t2
                  srai         t6, s0, 29
                  bgeu         s10, s7, 237f
                  slti         s0, t5, 1078
235:              blt          s11, a4, 242f
236:              nop
237:              and          s3, t4, a7
                  sltiu        a3, t2, 484
                  srl          s11, s10, s3
                  lui          a7, 790567
                  sra          t1, t5, a7
242:              sll          t4, gp, s8
243:              slli         zero, a4, 31
                  bne          a0, s7, 257f
                  xori         a4, gp, 1253
                  xor          a2, zero, a5
                  addi         a7, tp, 2040
248:              bgeu         t6, a3, 263f
                  slti         t6, s2, 1488
                  addi         t0, ra, 350
                  addi         s3, a6, -1528
                  and          t3, s6, s9
                  nop
                  srl          t1, s2, a7
                  sltiu        tp, s9, -1200
                  xori         a5, s4, -1323
257:              sltu         s11, a5, a2
                  srl          s10, zero, t1
                  bge          s11, s0, 271f
                  bgeu         a3, s3, 265f
                  andi         a7, a5, -1647
                  blt          s1, t0, 269f
263:              sltu         a0, s2, t3
                  or           t4, s7, t0
265:              andi         s1, s11, 977
                  auipc        gp, 606730
                  srai         s0, s9, 3
                  srai         s1, t2, 6
269:              slti         s0, a4, 286
                  srl          s8, a7, a3
271:              slti         a1, s11, -1839
                  lui          s6, 242048
                  srli         s7, a0, 15
                  nop
                  ori          ra, s4, 314
                  slli         s5, t3, 3
                  xori         a6, a7, 96
                  and          t2, a4, s6
                  sub          s0, s10, tp
                  sltiu        s0, s9, -609
                  ori          a3, a0, -375
                  add          s0, a7, gp
                  srli         t3, t6, 29
                  sub          s8, t3, s6
                  beq          t6, a3, 299f
                  sltu         a4, sp, t0
                  slti         s0, t1, 986
                  sltiu        t1, t2, 335
                  andi         s11, a7, -861
                  xor          s1, sp, t1
                  sltu         a5, s0, t1
                  auipc        t2, 746775
                  srai         s7, a4, 0
                  bne          sp, s1, 313f
                  nop
                  slti         a7, s8, -1681
                  nop
                  slti         t0, s11, 2033
299:              sll          t0, zero, t3
                  srl          t6, a4, a4
                  nop
                  bltu         s6, t3, 317f
                  sltiu        tp, s0, -416
                  or           a4, s3, t4
                  bgeu         s4, a6, 309f
                  sltu         t2, a1, t1
                  sltiu        t3, a7, -1456
                  blt          s6, a7, 326f
309:              beq          a0, s2, 320f
                  beq          s10, s6, 317f
                  bltu         a6, a5, 313f
                  srli         a5, a0, 4
313:              andi         tp, a2, -178
                  andi         tp, s5, 883
                  bne          s9, s9, 320f
                  sltiu        a0, t5, 1091
317:              nop
                  bne          s9, tp, 328f
                  andi         s0, t0, 370
320:              bge          s0, a4, 324f
                  srai         tp, a7, 15
                  ori          s9, s6, 1045
                  slli         s11, tp, 26
324:              sltu         t3, t4, a4
                  sra          ra, a5, s5
326:              add          a4, zero, a7
                  sltiu        t4, s6, -1484
328:              sltiu        gp, a3, 1540
                  and          t1, ra, s4
                  sltiu        s8, sp, 1579
                  beq          zero, a3, 344f
                  addi         a3, t5, 119
                  xori         a6, zero, -1634
                  ori          s1, ra, -990
                  slli         s1, t1, 8
                  blt          s2, s5, 345f
                  slt          a7, a2, s3
                  beq          ra, a1, 348f
                  sltu         s8, t6, s8
                  srai         a0, a1, 7
                  srai         s6, s7, 20
                  ori          t4, a6, 1074
                  auipc        s2, 386325
344:              or           t0, s6, t3
345:              ori          t2, s2, -2011
                  beq          a7, t1, 360f
                  sltiu        s0, s8, -549
348:              bge          a6, t6, 353f
                  slli         a2, sp, 0
                  sltu         s5, s0, s10
                  bltu         ra, a6, 371f
                  bge          s6, s7, 356f
353:              bne          ra, s6, 357f
                  sub          a4, s11, a2
                  blt          t1, t6, 361f
356:              slt          s11, a0, s9
357:              xor          t0, t4, a4
                  bltu         sp, s11, 365f
                  sltu         gp, a5, a2
360:              sra          s5, t4, a3
361:              bgeu         a3, t0, 381f
                  srl          s5, t1, s4
                  sltiu        s6, s3, 1545
                  lui          a1, 43261
365:              bge          a0, t2, 380f
                  or           s7, t3, s10
                  or           s8, a5, s5
                  blt          a1, a4, 380f
                  srl          ra, zero, s6
                  srai         a1, a7, 29
371:              auipc        a0, 906117
                  srai         t3, a6, 1
                  blt          t0, t6, 383f
                  srl          a6, s9, t2
                  sra          a0, s5, t5
                  sltiu        zero, gp, 496
                  srl          a2, s2, s4
                  ori          s5, tp, -826
                  sll          s6, s0, zero
380:              auipc        t1, 396671
381:              sltu         t4, gp, ra
                  nop
383:              andi         t0, s0, 735
                  ori          s0, s8, 1210
                  auipc        a2, 330527
                  slti         t4, s10, 1452
                  auipc        s11, 476315
                  bge          s2, a3, 394f
                  srli         t4, t5, 18
                  sub          s8, a4, t0
                  slti         t0, t3, 1847
                  blt          a5, t1, 406f
                  sll          s6, s0, t1
394:              xori         t0, t0, -253
                  bge          a6, s6, 412f
                  sltiu        s9, s3, -186
                  srl          s2, s11, a7
                  bgeu         s5, sp, 413f
                  auipc        zero, 356472
                  xor          zero, a2, t1
                  addi         s9, s9, 1183
                  bge          a2, a4, 420f
                  beq          a6, t4, 422f
                  auipc        tp, 886489
                  beq          s7, s9, 425f
406:              sub          s5, s2, s3
                  addi         tp, s10, 231
                  xori         t1, s4, 1480
                  addi         tp, s7, 10
                  andi         s7, s1, -2006
                  or           t6, s6, a1
412:              lui          t4, 690654
413:              sltiu        zero, s4, -214
                  ori          a1, a5, -1095
                  andi         a6, t4, 629
                  bne          s6, s4, 423f
                  srai         a1, t6, 11
                  sra          a7, t6, a6
                  and          s7, t1, s2
420:              sltiu        a3, t4, 1749
                  bne          t2, s8, 428f
422:              xor          s1, a2, tp
423:              sll          t0, tp, s3
                  slli         a2, a5, 31
425:              blt          s1, s9, 429f
                  addi         a1, a4, -1643
                  xori         tp, s4, 2021
428:              bne          a6, a6, 446f
429:              ori          t1, t0, 52
                  sub          s10, tp, a6
                  ori          a0, s10, -1380
                  sll          s6, s5, s1
                  beq          t2, ra, 450f
                  bge          s7, s11, 444f
                  or           s0, a3, t6
                  add          s7, gp, s9
                  srai         s7, t6, 28
                  slt          gp, t5, a5
                  slli         s5, a0, 5
                  lui          s5, 715666
                  srli         s5, s1, 25
                  slti         a3, a0, -1781
                  sra          a0, zero, ra
444:              and          a1, s1, t4
                  sub          s2, a2, a5
446:              srli         s0, s9, 2
                  lui          t1, 715719
                  srai         s2, t5, 10
                  addi         s2, t1, 1742
450:              bge          t3, a3, 465f
                  nop
                  sltu         a5, a7, s6
                  sltiu        a6, a5, -1585
                  sltu         a5, s5, a2
                  bge          t3, a6, 475f
                  sra          s3, a3, t5
                  sub          t4, s1, a4
                  bge          s0, a5, 472f
                  bge          ra, s2, 464f
                  auipc        s1, 936645
                  nop
                  andi         a4, gp, 712
                  sltiu        s11, s6, 1929
464:              auipc        t4, 292719
465:              slt          s7, s4, s10
                  sra          s1, ra, t0
                  sra          gp, s8, s5
                  add          t6, s0, a0
                  add          a2, a7, s10
                  slti         a7, s5, -1483
                  sltu         tp, a1, gp
472:              andi         s8, s8, -96
                  or           zero, a7, s2
                  srli         t1, a5, 21
475:              addi         s1, t3, -1089
                  add          t6, t3, a4
                  sltu         tp, s4, gp
                  nop
                  xor          a0, a0, s1
                  ori          gp, a2, -829
                  bge          s6, s3, 493f
                  slli         zero, t3, 21
                  sltiu        s1, gp, -73
                  bge          s10, t5, 494f
                  addi         zero, s3, -1291
                  slli         s2, tp, 12
                  slti         s10, a3, -1198
                  sra          tp, s3, a0
                  slli         a2, t2, 20
                  addi         s3, zero, -1396
                  bne          s9, s6, 497f
                  nop
493:              and          a0, a5, a4
494:              bltu         s11, a4, 512f
                  lui          t6, 942460
                  xori         s10, s6, 1489
497:              beq          gp, tp, 503f
                  bge          t4, s0, 511f
                  ori          gp, s0, 409
                  slt          s6, s4, t2
                  sub          a2, a5, ra
                  addi         s8, s4, 1556
503:              sltiu        a7, tp, -1994
                  lui          s8, 295175
                  sll          s5, s9, s8
                  add          t2, s4, a1
                  bltu         s4, s7, 511f
                  slli         ra, gp, 2
                  srai         tp, s1, 6
                  blt          s0, t0, 517f
511:              srl          gp, t4, t0
512:              slli         s2, s6, 12
                  bltu         a2, s2, 524f
                  add          t4, tp, tp
                  srl          s1, s2, s8
                  slti         s10, a5, 515
517:              slt          s5, s1, s10
                  and          ra, zero, s8
                  and          ra, t0, t2
                  srai         a5, ra, 3
                  bge          gp, zero, 541f
                  srl          a5, a6, t1
                  lui          zero, 628097
524:              blt          zero, tp, 529f
                  xor          s6, t1, t6
                  and          s11, s1, s7
                  sll          t2, s10, s1
                  andi         s3, sp, 591
529:              bltu         s9, ra, 549f
                  lui          a1, 737805
                  nop
                  bge          a6, a0, 539f
                  sltu         t1, a1, s9
                  slli         tp, a7, 5
                  or           s5, s3, t0
                  sltiu        s5, tp, -360
                  auipc        s2, 823499
                  add          zero, t5, t0
539:              and          a3, a4, t3
                  sll          s11, s10, a0
541:              slli         a3, a0, 23
                  sll          t6, a4, t6
                  beq          s0, t3, 552f
                  ori          t3, s11, 27
                  srl          a7, t4, zero
                  srli         a0, s11, 17
                  sra          a4, t5, t1
                  beq          s1, s3, 555f
549:              bge          a6, s1, 564f
                  srli         t6, a0, 19
                  bne          s5, s8, 555f
552:              sub          s1, t6, a3
                  srli         s11, t6, 11
                  or           t3, s9, t4
555:              slli         a2, s10, 5
                  xor          t4, a0, a2
                  beq          s7, s5, 564f
                  lui          s5, 860448
                  beq          a3, a7, 561f
                  xor          a0, zero, s2
561:              sll          t2, s2, t4
                  and          t6, s10, s6
                  sltu         a4, a0, t6
564:              and          s11, a3, s0
                  lui          a3, 747156
                  bltu         tp, zero, 585f
                  slt          s10, a7, s9
                  sub          s9, a5, a2
                  srai         t6, s11, 28
                  bgeu         a6, a4, 580f
                  and          s11, s5, t1
                  sltu         t6, a5, s5
                  srli         s11, s5, 31
                  bge          a6, s7, 588f
                  bgeu         a6, s2, 595f
                  beq          t2, s5, 591f
                  sltiu        t0, s6, 1054
                  blt          a4, a6, 598f
                  or           a4, a5, t3
580:              sltiu        s1, s1, 38
                  ori          tp, t4, -1256
                  lui          s5, 454723
                  auipc        s6, 515679
                  sll          t6, a7, t3
585:              slt          s5, sp, a4
                  srl          s8, gp, s3
                  bge          a0, sp, 598f
588:              slt          s1, t6, s10
                  or           t4, t5, s4
                  sltu         a4, tp, s2
591:              bge          t0, a6, 595f
                  xor          a5, s8, t0
                  add          t0, s7, s7
                  slti         t6, a7, -468
595:              xori         s7, a5, -1623
                  slli         a1, t5, 23
                  lui          s6, 170962
598:              or           t0, a1, a1
                  srai         t4, s6, 25
                  and          a1, a2, s7
                  bgeu         a6, t6, 608f
                  nop
                  slt          s3, s1, t6
                  lui          tp, 947738
                  srai         a4, s10, 3
                  and          t4, a0, s3
                  bne          s8, s8, 617f
608:              slli         a4, s5, 14
                  sra          a1, s1, t0
                  and          a5, ra, t3
                  add          a7, zero, t1
                  sltu         s9, a6, s0
                  nop
                  auipc        s5, 221540
                  bge          t4, t0, 617f
                  add          tp, a6, s4
617:              bge          a7, t0, 629f
                  slt          a3, gp, s9
                  auipc        t4, 504319
                  sltiu        t3, a2, 900
                  xor          s9, t6, a1
                  and          ra, a6, ra
                  lui          s7, 175359
                  nop
                  bne          s11, t1, 629f
                  sub          s6, s6, a5
                  sltu         a4, s3, s0
                  slti         a1, tp, 996
629:              bgeu         s10, s10, 647f
                  srli         s1, sp, 16
                  slli         s11, a1, 1
                  or           s5, a5, t2
                  blt          s10, a5, 652f
                  srl          s10, s2, a7
                  blt          t2, t0, 655f
                  addi         s8, s5, -1056
                  beq          sp, t3, 652f
                  xor          t4, s5, s9
                  beq          a4, a4, 645f
                  andi         t3, s4, -1127
                  srl          a1, t5, s9
                  nop
                  xori         s2, a4, 1988
                  sltiu        a5, tp, -1162
645:              sra          s5, zero, s9
                  nop
647:              bne          s3, t3, 664f
                  sltu         s5, s0, s0
                  xori         a2, zero, 1289
                  sub          ra, a6, s1
                  bltu         s7, s6, 661f
652:              xor          t6, t3, t5
                  srl          s7, a5, s9
                  or           s5, s5, s7
655:              auipc        s7, 112125
                  srai         ra, t4, 2
                  sub          tp, gp, a2
                  slli         t4, ra, 26
                  sll          a3, a4, a1
                  slli         s9, s10, 15
661:              srl          t3, a0, a5
                  bltu         t0, t2, 680f
                  sltiu        s8, a7, -1273
664:              srl          a6, t1, a4
                  add          t6, s1, s10
                  and          s6, s6, s3
                  sra          s1, s0, s5
                  beq          t4, s1, 673f
                  lui          a6, 526861
                  srai         s1, s4, 25
                  addi         a4, ra, 1311
                  bltu         t0, sp, 678f
673:              blt          a1, t0, 687f
                  andi         a2, t5, 196
                  sltu         a0, t6, a7
                  add          gp, s2, s2
                  blt          a5, ra, 684f
678:              and          t4, t3, s1
                  bge          sp, s0, 686f
680:              add          a2, s3, ra
                  bne          s8, t6, 690f
                  or           gp, ra, s0
                  or           gp, t3, s10
684:              bltu         a4, s2, 689f
                  sll          a2, a5, t3
686:              addi         a5, a7, 1728
687:              bne          t6, s1, 691f
                  xor          a7, zero, a4
689:              ori          s8, sp, 489
690:              sra          zero, s5, t2
691:              srli         t0, gp, 5
                  sltiu        s8, t1, 400
                  or           t0, a6, t4
                  bltu         zero, t3, 707f
                  and          s0, zero, a6
                  add          s8, s1, t4
                  sltiu        s6, ra, 1178
                  blt          s11, s9, 712f
                  bgeu         a2, s4, 706f
                  sll          t2, s0, a7
                  srai         s1, t6, 6
                  nop
                  sub          a3, s5, t0
                  bne          s6, a5, 714f
                  xor          ra, a7, gp
706:              sltu         s7, t4, t2
707:              ori          zero, s8, -603
                  slti         zero, zero, 1904
                  blt          s7, s4, 713f
                  add          zero, gp, s11
                  slt          zero, t0, a1
712:              sra          zero, s5, s3
713:              slti         a7, a3, 1605
714:              sub          s3, s8, s10
                  sra          s10, t4, s11
                  sub          a5, zero, s1
                  srl          s5, gp, sp
                  sra          t6, a4, s4
                  bltu         a2, t3, 726f
                  lui          a7, 562180
                  sltu         a6, t3, t5
                  slti         a0, s0, 25
                  lui          a0, 214968
                  bge          s4, s5, 733f
                  slti         s2, t2, 1360
726:              slli         tp, a7, 7
                  beq          a4, s4, 737f
                  beq          s1, s7, 740f
                  sra          t4, t1, a4
                  srli         s1, t1, 27
                  sub          s11, gp, a1
                  slt          a6, a3, t6
733:              srl          a6, t0, a3
                  lui          s7, 922509
                  andi         t2, a7, 141
                  and          a5, s0, a0
737:              blt          s11, t5, 741f
                  ori          a6, t2, -1182
                  bge          a5, t0, 741f
740:              srli         s11, a5, 6
741:              and          s2, s4, t1
                  nop
                  ori          t4, t4, -1680
                  andi         s3, s0, -208
                  lw           tp, 4(t5)
                  addi         t0, a2, -528
                  addi         t5, t5, 28
                  sub          a3, t6, s6
930:              addi x3, x4, 1
930:              jalr x3, x3, 0
sub_3:            lui          t6, 936735
                  xor          s6, s10, s2
                  sltiu        s10, s9, -666
                  nop
                  add          s9, a7, gp
                  sub          a3, s11, s1
                  sra          gp, s4, a2
                  addi         t5, t5, -16
                  sw           tp, 4(t5)
                  slli         t0, s0, 14
                  ori          t3, t0, 371
                  lui          a3, 750894
                  nop
                  bgeu         sp, s4, 15f
                  slli         t1, s11, 1
                  lui          t4, 1028431
                  andi         ra, s10, -538
                  addi         gp, s10, -1673
                  sll          t0, s4, s1
                  sltu         t1, s7, t3
                  sltiu        a5, s5, 436
                  xori         s8, a4, -1102
                  slti         s1, s10, -1569
                  bltu         s4, s0, 15f
                  bgeu         a4, t0, 26f
15:               bgeu         t0, t5, 25f
                  and          t2, tp, a4
                  srai         a4, s6, 8
                  sltu         a6, a4, s9
                  and          a2, s8, t0
                  blt          tp, s1, 25f
                  slli         t2, s3, 27
                  addi         t1, s0, -1298
                  andi         zero, tp, 989
                  ori          a5, s3, 1458
25:               xor          gp, s10, a0
26:               blt          sp, t3, 27f
27:               or           a5, a0, t5
                  bne          t6, s2, 35f
                  xor          a2, t3, t4
                  srli         a2, s5, 10
                  andi         zero, sp, -1257
                  sll          a7, t6, t6
                  srai         s6, a0, 13
                  sll          a5, t0, gp
35:               addi         s5, sp, 1182
                  or           s10, a0, a3
                  auipc        a0, 793474
                  sll          s3, a7, tp
                  xori         s7, s8, 897
                  slt          s8, s1, a2
                  lui          tp, 665959
                  slli         t3, s5, 29
                  add          t1, s7, a0
                  beq          s10, tp, 62f
                  nop
                  srl          s10, t4, t0
                  bne          t1, s1, 59f
                  andi         a7, s11, -1866
                  slli         gp, t5, 23
                  srai         s11, t5, 30
                  bne          t1, a0, 54f
                  xor          a1, t2, s3
                  or           tp, a4, s5
54:               bge          s4, t0, 55f
55:               bltu         a7, s9, 74f
                  nop
                  bne          a2, tp, 62f
                  lui          a7, 223857
59:               bne          s2, s0, 75f
                  bgeu         t5, zero, 65f
                  bltu         t6, t5, 67f
62:               xor          t0, a3, s0
                  ori          a0, a3, -1297
                  blt          a7, sp, 77f
65:               bgeu         s5, t2, 68f
                  auipc        gp, 1020309
67:               bge          a0, a0, 70f
68:               xori         ra, t4, -789
                  sll          s10, s8, s2
70:               sra          a0, s7, s8
                  blt          s1, s5, 82f
                  sra          t1, a1, t0
                  xor          t2, s4, s1
74:               sub          a4, a1, t2
75:               slti         a0, t6, -1158
                  srai         s5, t0, 31
77:               bne          a2, a3, 83f
                  bge          s9, t2, 83f
                  bltu         s6, t5, 83f
                  blt          s11, sp, 83f
                  bltu         s0, s2, 83f
82:               ori          s11, s5, -658
83:               srl          t3, a6, a6
                  slli         t2, t4, 29
                  lui          s9, 705133
                  lw           tp, 4(t5)
                  addi         t5, t5, 16
                  srl          s9, a1, s7
99:               addi x29, x4, 1
99:               jalr x29, x29, 0
sub_4:            nop
                  slt          s11, gp, tp
                  sltiu        s8, a1, -188
                  addi         t5, t5, -8
                  xor          ra, t4, s0
                  sw           tp, 4(t5)
                  xori         a6, s1, 1160
                  and          s5, s10, zero
                  slli         a4, s7, 5
                  xor          zero, s3, a2
                  la           a4, region_1+1796 #start riscv_load_store_rand_instr_stream_3
                  sb           t3, -114(a4)
                  lbu          gp, -39(a4)
                  lbu          s7, 202(a4)
                  sltu         ra, s9, a3
                  lb           a0, 13(a4)
                  xor          s8, t2, t1
                  lb           s9, -5(a4)
                  xor          s6, t1, a3
                  lb           t2, -241(a4)
                  nop
                  add          t6, t2, s4
                  sll          a7, t6, s3
                  lbu          t0, 55(a4)
                  lb           s11, 197(a4)
                  lb           tp, -45(a4)
                  sb           a5, 153(a4)
                  or           s1, t5, t5
                  lh           s2, -26(a4)
                  addi         s11, ra, 1357
                  slti         zero, s11, -204
                  sh           t4, 136(a4)
                  sll          a0, s0, t0
                  srai         a6, zero, 19
                  lb           t6, -215(a4) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+1217 #start riscv_load_store_rand_instr_stream_5
                  lb           gp, -588(s8)
                  ori          s1, tp, 1505
                  slti         a3, s10, -1164
                  lhu          a4, 753(s8)
                  addi         gp, s3, 1777
                  lbu          zero, 282(s8)
                  srai         s3, a7, 9
                  lb           t2, 592(s8)
                  lhu          s5, -169(s8)
                  lbu          zero, 36(s8)
                  slli         t0, a1, 29
                  sll          a5, a0, t0
                  lhu          s7, 477(s8)
                  or           t3, s4, s5
                  sb           tp, -991(s8)
                  xori         s2, s4, -1364
                  sub          t6, a6, t0
                  lui          a4, 33834
                  lhu          t4, -191(s8)
                  lui          s1, 266496
                  sra          a0, t0, ra
                  slti         t3, sp, -114
                  auipc        a2, 1044362
                  lh           s9, -457(s8)
                  lb           s7, -352(s8)
                  sltiu        zero, ra, 1218
                  sb           s8, -1162(s8)
                  lui          a7, 928154
                  lb           s7, -1089(s8)
                  lb           a0, -328(s8)
                  or           t2, t1, t1
                  lb           s7, 710(s8)
                  lb           a5, 196(s8)
                  sub          s9, s2, s11
                  sra          t0, sp, t6
                  sra          s7, a0, t0
                  lb           s2, -464(s8) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_0+1497 #start riscv_load_store_rand_instr_stream_1
                  and          s2, ra, gp
                  nop
                  lbu          a5, -810(tp)
                  sb           s5, -662(tp)
                  addi         s0, t3, -95
                  lbu          a6, 316(tp)
                  sb           a3, -1204(tp)
                  xor          t4, a1, t6
                  add          t6, a4, s1
                  or           ra, s11, zero
                  srl          a5, a6, s7
                  lbu          zero, -200(tp)
                  lbu          t1, 473(tp)
                  lbu          a1, -1182(tp)
                  lbu          s7, -82(tp)
                  srai         t2, gp, 4
                  slli         a6, t1, 23
                  xor          a2, gp, t3
                  sll          a4, s6, t2
                  lhu          s6, -1077(tp)
                  slli         ra, s3, 8
                  srli         s1, s5, 19
                  sb           t6, 44(tp)
                  lui          t0, 183720
                  slti         s9, a1, -718
                  sltu         t3, gp, s2
                  sb           t1, 244(tp)
                  lb           a0, -944(tp)
                  sb           s9, 257(tp)
                  sll          a2, s8, t4
                  sb           s4, -1426(tp)
                  sb           s1, -195(tp)
                  lbu          t1, -908(tp)
                  lb           s0, -1414(tp)
                  lui          s11, 985595
                  lh           t3, -1295(tp)
                  lb           a2, -477(tp)
                  lb           s3, 498(tp)
                  slti         s7, s3, 329
                  andi         s11, a6, -1792
                  andi         a7, s9, -145
                  sh           s6, 253(tp)
                  lbu          s10, 292(tp)
                  srai         a1, s1, 8
                  sb           a3, -690(tp)
                  sw           s11, -729(tp)
                  ori          t4, a2, -2020
                  slt          t0, t0, ra
                  sb           t1, 22(tp) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_1+1233 #start riscv_load_store_rand_instr_stream_2
                  and          a2, t5, s6
                  sll          a6, a0, tp
                  ori          a7, zero, -125
                  addi         s3, t2, -1943
                  ori          s0, s1, 254
                  addi         t6, s3, -388
                  sra          s11, s3, gp
                  sh           sp, 61(t3)
                  lb           s10, -8(t3)
                  lb           s9, 49(t3)
                  and          tp, s1, zero
                  andi         a6, t2, -1340
                  lb           t6, 64(t3)
                  and          s0, t4, s7
                  xori         t4, s5, -426
                  sll          a4, gp, a5
                  andi         t4, tp, 1011
                  lbu          a1, 54(t3)
                  slt          a7, s8, a7
                  sh           t2, -63(t3)
                  sra          t4, s8, gp
                  lhu          t0, -31(t3)
                  xor          a0, s8, s4
                  lb           a3, -48(t3)
                  lb           a6, -42(t3)
                  xor          t0, s7, a4
                  lb           t4, 46(t3)
                  srai         s8, s5, 0
                  lb           a6, -48(t3)
                  sub          s5, a4, s4
                  sll          s1, zero, ra
                  or           a6, a4, t4
                  lui          t1, 164098
                  lhu          s0, 29(t3)
                  lb           t6, -6(t3)
                  srai         t2, s6, 0
                  sw           s4, -45(t3) #end riscv_load_store_rand_instr_stream_2
                  bltu         s5, a5, 18f
                  slt          t0, s4, s8
                  bge          s10, t3, 10f
                  srai         t2, a1, 0
                  xori         s9, ra, 976
                  beq          zero, a3, 21f
                  bge          a3, s1, 17f
                  slti         a0, a7, -1088
                  srl          s8, s0, a1
                  sub          t1, a7, t1
10:               auipc        s2, 279483
                  blt          s2, s8, 26f
                  andi         t2, t2, -1990
                  slt          t3, s8, tp
                  bne          t3, t0, 24f
                  andi         s2, gp, 1674
                  beq          t5, s4, 31f
17:               srai         a1, t3, 10
18:               add          zero, t0, s1
                  nop
                  sltu         t1, gp, s6
21:               srli         a2, s2, 12
                  slli         zero, t3, 30
                  bltu         sp, s4, 33f
24:               bne          zero, s11, 34f
                  ori          a3, gp, 599
26:               srl          a3, s6, t3
                  auipc        t6, 409001
                  slt          a6, s10, s6
                  sll          s11, zero, s0
                  blt          t5, a4, 45f
31:               andi         a6, s5, 93
                  sra          s8, t6, t6
33:               bgeu         t1, a4, 49f
34:               nop
                  slti         s1, sp, -560
                  srai         a3, t1, 19
                  slt          a3, t6, s7
                  slti         s6, s2, 51
                  bge          tp, t5, 41f
                  or           t6, tp, gp
41:               bne          t4, s10, 42f
42:               xori         s3, s0, 1016
                  sra          zero, s10, t4
                  lui          t3, 107836
45:               sltiu        t0, a4, -1224
                  blt          ra, t6, 51f
                  bltu         s1, s2, 61f
                  xor          s0, t5, s1
49:               bge          a2, t6, 61f
                  srli         t1, ra, 18
51:               bgeu         s5, a0, 71f
                  srai         t4, a4, 27
                  bge          t5, a3, 69f
                  andi         a1, a5, -737
                  sltiu        s8, t0, -329
                  slti         t3, ra, -478
                  srl          s10, tp, s1
                  srl          gp, t2, s9
                  sra          t4, t0, t3
                  bne          tp, sp, 65f
61:               sll          a6, t0, s11
                  slli         t1, s5, 6
                  add          gp, a1, a7
                  xor          t4, s2, s1
65:               srli         a6, s4, 14
                  add          gp, t2, a2
                  auipc        t4, 603746
                  bgeu         a4, s6, 69f
69:               bgeu         tp, ra, 77f
                  sra          s1, t1, a5
71:               or           s10, t1, s8
                  sltu         s11, s9, a1
                  bne          s10, t0, 80f
                  and          s9, gp, sp
                  slli         a6, a1, 14
                  slti         s2, a6, 111
77:               addi         a3, t4, -483
                  bgeu         s3, a3, 91f
                  xori         a4, a7, 1825
80:               andi         a4, a3, 1332
                  sra          t1, t4, tp
                  srli         s8, gp, 31
                  sra          s0, s0, a2
                  xor          a0, s10, t1
                  addi         s9, ra, 2038
                  auipc        t3, 996369
                  slli         s8, a5, 8
                  slt          s5, t5, a1
                  bgeu         a1, zero, 94f
                  xor          s5, t1, sp
91:               beq          s7, s10, 98f
                  andi         t0, a7, -1548
                  sltu         s9, a4, s3
94:               blt          t6, t1, 112f
                  srli         s10, t1, 19
                  bne          s11, a1, 98f
                  xor          t3, t5, a2
98:               srai         s5, s9, 7
                  bgeu         tp, t0, 100f
100:              bge          t6, t2, 118f
                  ori          a6, s5, 1515
                  add          s9, a7, a6
                  or           tp, t4, s7
                  xori         s7, s3, 896
                  ori          t0, s1, 779
                  auipc        a6, 479142
                  bne          a5, gp, 119f
                  slt          t1, s4, tp
                  blt          s7, s5, 121f
                  bgeu         s1, a4, 126f
                  bge          a7, zero, 112f
112:              sra          gp, t3, a1
                  beq          gp, a1, 126f
                  sll          s11, s0, s11
                  lui          s0, 1036738
                  srl          a7, s1, s0
                  srli         a7, t1, 7
118:              sra          a6, s4, s10
119:              add          s5, s4, a3
                  sub          a3, a3, a3
121:              bne          t4, s10, 136f
                  sub          tp, t2, tp
                  slli         s7, s0, 4
                  nop
                  beq          s5, a2, 126f
126:              slli         t1, s0, 13
                  and          s9, t5, s11
                  ori          zero, s9, 2022
                  bne          a2, a4, 134f
                  srai         t1, s10, 5
                  sltiu        gp, a3, 2015
                  slt          s3, ra, s4
                  blt          a6, t3, 143f
134:              xor          s8, gp, a4
                  slli         s10, t2, 13
136:              srai         a3, a1, 18
                  nop
                  sll          t1, s3, t1
                  blt          s8, a7, 140f
140:              sll          ra, ra, s1
                  add          a1, s3, a5
                  add          s9, t5, t5
143:              bne          s9, s10, 150f
                  sltu         a2, t3, s0
                  sub          a3, a3, s2
                  and          s9, t6, s10
                  lui          a2, 392326
                  beq          t4, t0, 164f
                  auipc        s6, 142013
150:              sll          t3, s7, zero
                  auipc        a1, 334656
                  nop
                  sub          s9, s8, t0
                  bgeu         a6, s11, 159f
                  sub          a0, s3, a6
                  add          s6, t6, s1
                  andi         tp, t5, -493
                  sltu         t2, s10, t1
159:              bge          gp, s6, 174f
                  slli         s3, t1, 1
                  sll          a7, a6, t1
                  sltu         t0, s8, s3
                  nop
164:              bge          a5, s6, 179f
                  beq          t3, s7, 183f
                  bne          s7, s1, 176f
                  addi         s10, s1, -377
                  blt          ra, t0, 180f
                  bne          t4, s8, 177f
                  sll          s7, a5, a2
                  xori         gp, t6, -58
                  sub          tp, s11, s0
                  blt          s7, s11, 175f
174:              xori         ra, a0, -30
175:              nop
176:              addi         a3, t5, 1091
177:              srl          a7, s7, s3
                  bne          s1, zero, 185f
179:              addi         t0, a3, 1863
180:              srl          a0, s3, ra
                  sra          zero, sp, s9
                  xor          s1, a0, s7
183:              sltu         s11, s8, s1
                  or           t3, a2, a1
185:              sra          s6, s11, zero
                  andi         a1, s11, -1305
                  slt          a7, s6, a7
                  ori          ra, t6, 840
                  bltu         s7, t4, 203f
                  sltu         t2, s6, s11
                  bltu         gp, a7, 211f
                  sltiu        s3, t4, -1060
                  beq          a7, t5, 209f
                  bgeu         a7, ra, 204f
                  nop
                  bgeu         t4, s2, 201f
                  sll          t2, s6, a7
                  xori         s3, s9, 1923
                  sltiu        a2, a1, -594
                  ori          s6, s7, 704
201:              or           s2, s5, tp
                  slt          t1, a2, t2
203:              blt          s11, s3, 211f
204:              bne          a3, gp, 222f
                  blt          a2, s5, 216f
                  sra          a5, t3, a7
                  srl          s7, a1, s3
                  sra          s9, s9, a4
209:              addi         t2, s2, 360
                  la           s10, sub_9
                  auipc        a0, 516806
                  ori          t6, t6, -981
                  srl          s11, s1, a4
                  addi         s10, s10, -870
                  andi         t1, zero, 1914
                  sll          s3, a5, s0
                  auipc        a5, 553323
                  sub          gp, s9, t5
sub_4_j11:        jalr         tp, s10, 871 #jump sub_4 -> sub_9
                  beq          tp, a5, 228f
211:              or           a7, a3, tp
                  srai         s6, s5, 31
                  sltiu        t4, s4, -327
                  sub          tp, t6, s0
                  bgeu         a2, sp, 217f
216:              auipc        s7, 348107
217:              slli         s11, a6, 11
                  srli         t4, a3, 15
                  sub          a0, a4, a5
                  nop
                  andi         a5, a1, 163
222:              andi         s9, a3, 1797
                  xor          s3, s5, s4
                  xor          s8, a4, a0
                  add          s10, a0, s3
                  slli         s5, t4, 25
                  srl          a1, s1, a5
228:              and          ra, s5, t2
                  bge          t5, a4, 230f
230:              slt          s11, a7, a7
                  blt          s10, a1, 233f
                  sra          ra, t4, a1
233:              sltu         t4, gp, a2
                  sltu         a5, t6, s10
                  xor          s1, gp, a4
                  slti         zero, s9, 1643
                  sub          a5, s10, zero
                  bne          sp, s5, 254f
                  sll          s8, t1, a5
                  auipc        a6, 199117
                  lui          s7, 710227
                  srai         t3, a4, 25
                  sub          a6, s7, zero
                  auipc        t1, 149938
                  slti         s6, s2, -1358
                  bne          s9, s2, 260f
                  sub          t4, s7, s8
                  andi         s7, sp, -918
                  andi         s11, t5, -1297
                  sltiu        t2, gp, -1017
                  and          s9, t1, a1
                  bgeu         t2, s10, 272f
                  andi         tp, a5, 648
254:              beq          a4, s7, 255f
255:              auipc        s5, 953047
                  nop
                  bltu         s6, t0, 270f
                  addi         ra, t6, -127
                  sub          a5, a1, s9
260:              xori         t1, a6, 108
                  add          a6, t1, s7
                  ori          s6, s4, 519
                  sltiu        tp, s9, 254
                  bgeu         t1, s1, 279f
                  andi         t6, s5, -739
                  bge          sp, tp, 276f
                  srli         a7, a5, 0
                  nop
                  sub          t4, a3, a5
270:              srai         t1, a0, 19
                  xori         a4, s6, 1378
                  la           s10, region_0+1518 #start riscv_load_store_rand_instr_stream_4
                  lhu          a1, 14(s10)
                  xor          t3, s2, a6
                  lbu          a5, -7(s10)
                  sb           a0, -7(s10)
                  sb           a7, 8(s10)
                  lb           a2, -2(s10)
                  add          t1, a3, s11
                  slt          a6, s0, tp
                  sb           a2, -2(s10)
                  sh           s3, 8(s10)
                  srl          t3, s9, s3
                  lb           a1, -15(s10)
                  lh           t6, 0(s10)
                  lui          ra, 601676
                  xori         s6, s6, 794
                  sltiu        ra, s10, -1363
                  lui          s0, 451901
                  sub          s5, t5, a1
                  srl          t2, t6, t0
                  lbu          s5, -10(s10)
                  or           a3, s3, a5
                  sub          s3, t4, a1
                  lb           t2, 7(s10)
                  lui          t3, 243159
                  and          tp, t3, zero
                  lbu          s8, -15(s10)
                  slli         t3, s9, 10
                  xori         s1, a6, -1372
                  sb           a6, 9(s10)
                  lw           s3, 6(s10)
                  add          a7, sp, t0
                  lhu          a6, -4(s10)
                  lb           s7, -11(s10)
                  lbu          s1, -12(s10)
                  sb           zero, -7(s10)
                  lb           s5, 8(s10)
                  and          s6, a4, s11
                  lbu          a6, 11(s10)
                  lbu          s0, -7(s10)
                  sb           s10, 12(s10)
                  auipc        a3, 410194
                  nop
                  lhu          s11, 14(s10)
                  nop
                  lb           s3, 7(s10)
                  slti         t2, t3, -287
                  srli         s3, a0, 9
                  sb           sp, -6(s10)
                  sh           a5, 12(s10)
                  sra          a0, s5, a2
                  lbu          tp, 15(s10)
                  lb           a1, 9(s10)
                  sltiu        s3, t6, -3
                  or           s1, zero, t2
                  sb           s6, 6(s10) #end riscv_load_store_rand_instr_stream_4
272:              auipc        s5, 1016086
                  add          t1, a0, s1
                  lui          s0, 330021
                  andi         t2, s11, -221
276:              lui          s8, 672879
                  sll          s3, ra, s7
                  bne          s3, a5, 293f
279:              beq          t2, s11, 289f
                  bgeu         s10, s6, 298f
                  slli         s11, a5, 5
                  blt          t1, ra, 298f
                  srai         s1, a0, 14
                  sltu         gp, a6, a6
                  auipc        ra, 119126
                  srai         s8, s5, 4
                  sll          a5, gp, s3
                  bne          s10, a7, 306f
289:              auipc        s6, 929412
                  bgeu         ra, a3, 295f
                  sub          t6, t0, s7
                  xori         s1, a6, -1028
293:              andi         s7, a1, 629
                  xori         t3, a2, 1593
295:              beq          t1, a5, 306f
                  bgeu         s8, zero, 301f
                  lui          s10, 772344
298:              add          s9, s3, a5
                  srl          s9, sp, t2
                  srai         s1, zero, 14
301:              sll          tp, s5, t0
                  xori         a1, a2, -1307
                  blt          zero, tp, 310f
                  bne          a2, s8, 306f
                  blt          t4, a6, 321f
306:              add          s1, t4, t4
                  slt          a5, s10, s2
                  blt          t3, s0, 309f
309:              sltu         s1, s1, a0
310:              lui          zero, 280549
                  auipc        gp, 678202
                  sltu         zero, t3, s8
                  sll          t2, a2, zero
                  bgeu         s10, a2, 322f
                  srl          tp, t5, s6
                  slt          ra, s0, t4
                  and          tp, ra, s4
                  beq          s5, a2, 330f
                  andi         a0, zero, 277
                  sub          s3, a4, t6
321:              bgeu         t0, a7, 329f
322:              lui          s2, 354568
                  sub          a6, s4, t1
                  srli         gp, a1, 24
                  xor          s10, a6, s0
                  xor          a1, s9, s7
                  sltu         a3, ra, s5
                  addi         t2, ra, -1404
329:              slli         a6, gp, 21
330:              bgeu         a5, s9, 342f
                  andi         s3, ra, -1200
                  xori         t6, s1, -1064
                  srai         s6, s8, 2
                  add          s0, a5, s2
                  sra          s9, s11, a0
                  andi         s1, s5, -455
                  auipc        t0, 289974
                  srai         s5, s2, 28
                  or           t1, s2, a3
                  add          s7, zero, t6
                  bltu         a7, s10, 348f
342:              sltiu        t2, s11, 1458
                  addi         a6, s0, -283
                  slti         a5, tp, 1900
                  blt          s11, sp, 350f
                  sltu         t4, t4, t4
                  nop
348:              andi         a4, a4, -159
                  sltu         s1, s1, a4
350:              slli         tp, tp, 27
                  xori         s2, a3, -1031
                  ori          s3, s10, 18
                  sltu         s8, s8, s4
                  sltu         zero, tp, gp
                  lui          gp, 1029467
                  addi         s3, s6, 351
                  nop
                  xori         s2, s7, 993
                  srli         a3, s2, 17
                  auipc        t1, 64233
                  sltiu        a2, s3, 2039
                  lui          zero, 363688
                  lui          t6, 83980
                  xori         ra, t4, 559
                  slt          a1, tp, t1
                  andi         a3, t4, 797
                  and          a3, s11, a4
                  sub          s8, s5, s2
                  sll          a1, s5, a3
                  sra          t1, s10, t1
                  bne          a2, s7, 389f
                  auipc        t3, 225620
                  srai         s8, s5, 23
                  slli         a4, t4, 15
                  bltu         gp, a5, 385f
                  ori          s6, t3, -1445
                  srli         s1, s10, 3
                  lui          a0, 534238
                  slti         s3, sp, -808
                  sra          a0, a7, s3
                  addi         s7, s10, 499
                  sll          s5, s2, t4
                  or           s0, a1, t1
                  sltu         t0, a0, s10
385:              xori         zero, t4, -550
                  xori         t4, t0, 25
                  sra          s2, a1, s4
                  sub          gp, t6, s2
389:              addi         s6, a4, -807
                  blt          t1, s8, 405f
                  srai         s11, s2, 0
                  xor          s1, s5, s10
                  bltu         t6, a1, 411f
                  beq          s7, s9, 395f
395:              and          a6, a5, s3
                  and          s6, s4, s4
                  lui          tp, 776669
                  srl          t1, s9, t4
                  bne          s4, t5, 401f
                  andi         t1, s9, 1373
401:              srl          t6, s9, a4
                  andi         t0, a4, 28
                  srl          s5, sp, t5
                  bge          s7, s3, 405f
405:              slti         t3, s11, -1071
                  bne          s1, s1, 418f
                  slti         t4, s7, 1681
                  sll          a3, a6, t0
                  slt          t2, t1, t5
                  sra          a0, s5, s1
411:              bne          s8, s3, 426f
                  slt          t2, a6, s10
                  sub          t0, s8, s5
                  or           s1, s4, t3
                  blt          t1, a3, 430f
                  sltu         s7, s7, a4
                  bge          s1, s2, 433f
418:              sub          gp, tp, t1
                  nop
                  bgeu         a7, a1, 425f
                  bltu         gp, a7, 437f
                  sub          s3, a0, a2
                  bgeu         t5, t1, 439f
                  sltu         t3, t1, a6
425:              lui          t3, 130249
426:              sll          t0, zero, zero
                  nop
                  add          s5, s9, a0
                  add          s6, a2, a6
430:              xori         s8, a5, 991
                  slt          s3, a2, s4
                  slti         t6, t1, -1852
433:              sltiu        a5, ra, -1405
                  or           s3, a7, s7
                  sll          s11, gp, s0
                  nop
437:              lui          a5, 209225
                  srl          s5, a5, a1
439:              sub          s10, a0, gp
                  xor          s9, t2, s1
                  auipc        a7, 804486
                  xor          a4, s9, s5
                  bge          a0, t1, 450f
                  bne          t2, s6, 454f
                  add          t4, gp, gp
                  and          s6, s10, tp
                  addi         s9, a7, -1718
                  lui          s10, 618521
                  sll          gp, s8, s0
450:              beq          s8, gp, 460f
                  and          s11, t6, s2
                  xori         tp, t1, -610
                  xori         a1, s11, -512
454:              blt          s8, a0, 468f
                  ori          a3, a1, -20
                  bge          sp, s6, 467f
                  nop
                  srl          t3, gp, t0
                  lui          t1, 481322
460:              lui          a1, 307987
                  srl          s8, t5, s8
                  bge          s4, s11, 480f
                  xori         a0, ra, -1671
                  slli         a7, s10, 26
                  ori          t6, s8, 987
                  xor          a3, a2, s8
467:              slli         gp, gp, 28
468:              blt          s3, s8, 473f
                  bltu         t3, ra, 487f
                  slti         a4, s3, 1588
                  beq          t6, s8, 481f
                  sltu         s5, gp, t6
473:              srl          s8, t3, s9
                  srai         t4, s0, 6
                  add          gp, t2, s3
                  bltu         a0, a3, 489f
                  ori          a7, a1, 1080
                  or           t0, a7, a5
                  or           a4, s10, ra
480:              xori         a3, s4, -1821
481:              nop
                  and          s7, s9, s2
                  add          t6, sp, s9
                  blt          a4, t3, 499f
                  bgeu         s2, t2, 490f
                  beq          a5, ra, 493f
487:              slti         t6, s11, -1167
                  xori         t4, s9, -2028
489:              bltu         zero, s9, 497f
490:              srai         a2, t4, 24
                  lui          a0, 650738
                  xori         a0, t3, 709
493:              add          s1, a5, s11
                  beq          t3, zero, 514f
                  sltu         t3, t5, t1
                  beq          t1, a0, 497f
497:              lui          a6, 447183
                  add          s10, s6, s7
499:              nop
                  srli         s0, a4, 20
                  and          t1, s8, gp
                  and          s10, zero, a2
                  add          a6, t3, ra
                  sltiu        tp, s10, -782
                  sltiu        tp, s0, -352
                  auipc        a2, 800657
                  bne          ra, gp, 509f
                  sra          zero, a6, s2
509:              beq          s9, t0, 521f
                  sll          s1, t2, a2
                  add          t1, a1, a1
                  lui          a2, 757353
                  slt          zero, a5, s5
514:              xori         t6, t4, -1968
                  xor          s2, s7, a6
                  ori          t4, s7, -542
                  sltu         zero, s9, s7
                  bge          s6, sp, 526f
                  ori          s7, gp, 897
                  blt          t1, a0, 535f
521:              sll          a4, ra, zero
                  blt          s4, t3, 540f
                  ori          a1, s10, -1778
                  sra          s2, s9, s5
                  auipc        s2, 37128
526:              bltu         tp, s1, 537f
                  ori          tp, s1, -1876
                  bge          a6, s0, 543f
                  bge          s0, s0, 542f
                  and          t3, a2, s7
                  auipc        ra, 624078
                  sltu         zero, a7, a2
                  sra          s7, a2, s2
                  andi         gp, a6, 1910
535:              bge          s2, s5, 551f
                  nop
537:              beq          ra, a4, 547f
                  sra          s9, s2, s11
                  blt          s11, a6, 555f
540:              bgeu         s11, t6, 552f
                  xori         tp, t4, -168
542:              srli         a6, a5, 21
543:              lui          tp, 151880
                  bne          t0, a0, 562f
                  ori          a3, a3, 1446
                  slti         a6, s6, 878
547:              blt          t6, a3, 565f
                  sltiu        s8, a1, -350
                  xor          tp, s4, t1
                  slli         s11, a4, 28
551:              xor          t0, s4, s0
552:              sub          a4, a2, t5
                  bne          s6, s7, 568f
                  srli         gp, s5, 5
555:              slli         t3, s7, 14
                  addi         a5, zero, 694
                  srai         s10, s11, 31
                  slli         a0, t1, 16
                  srl          zero, ra, s0
                  sll          a0, s5, s3
                  slt          zero, s10, a1
562:              srli         a3, s0, 13
                  beq          a2, t2, 570f
                  bne          t2, sp, 580f
565:              andi         zero, s7, -1599
                  sltu         t6, ra, t5
                  sll          s6, sp, a0
568:              sra          s0, s7, t4
                  ori          t1, s1, -1260
570:              or           s1, tp, a1
                  nop
                  xori         a0, a4, -775
                  srli         t4, t5, 4
                  srl          s2, a0, s10
                  sltiu        s10, a5, 2042
                  sra          s1, t4, ra
                  slli         s3, t2, 9
                  srli         a1, t4, 17
                  beq          s5, t3, 580f
580:              sltiu        a4, a2, -1097
                  sltiu        a1, t0, -1690
                  sra          gp, tp, t4
                  lui          a7, 252332
                  bltu         a5, s3, 586f
                  srli         a0, s0, 3
586:              lui          a1, 450977
                  sltu         s9, a3, s3
                  ori          s8, s1, -1809
                  bltu         a7, s3, 591f
                  sltiu        s2, zero, 834
591:              auipc        s10, 716840
                  andi         t1, t0, 323
                  bgeu         ra, s6, 613f
                  srli         s6, a0, 23
                  auipc        t2, 88177
                  bne          t4, s5, 608f
                  xor          a7, s6, tp
                  sltiu        s11, t0, 1039
                  slt          a2, a6, s4
                  bge          a6, t1, 605f
                  nop
                  bge          a2, s2, 607f
                  bgeu         a4, a1, 613f
                  xori         s10, s0, -1932
605:              and          t0, s9, s1
                  sltiu        t0, a1, 601
607:              lui          a3, 485040
608:              slt          s9, s3, t0
                  xori         s6, s1, 1221
                  ori          s0, a4, -1418
                  sub          t0, t4, t0
                  blt          t4, a2, 620f
613:              blt          a5, s0, 614f
614:              bgeu         t1, t6, 628f
                  sub          s6, a1, s0
                  slli         s6, s8, 9
                  ori          zero, ra, -1901
                  andi         s7, zero, -1833
                  nop
620:              slt          s3, a7, zero
                  nop
                  nop
                  bgeu         a2, t0, 624f
624:              bgeu         s3, t6, 634f
                  sub          a7, t1, zero
                  srl          s9, t3, a4
                  nop
628:              srl          a6, a4, s4
                  beq          gp, tp, 634f
                  sll          t1, zero, a2
                  andi         a4, s1, 849
                  addi         gp, zero, -171
                  bltu         s6, a0, 641f
634:              auipc        s6, 470959
                  nop
                  sltu         a7, s10, a3
                  xori         zero, t5, -855
                  sub          s8, t6, zero
                  bgeu         a7, s10, 646f
                  beq          s9, a0, 655f
641:              beq          s7, s8, 646f
                  addi         s1, a1, 2031
                  or           a7, a0, s5
                  sltu         t4, a2, t0
                  sltu         gp, a6, gp
646:              xori         t0, sp, 1629
                  sltiu        t6, a6, -601
                  lui          s7, 487906
                  and          ra, s10, s3
                  lui          a3, 335866
                  srli         ra, t0, 8
                  beq          a3, ra, 660f
                  srl          gp, t2, tp
                  bne          s5, s10, 655f
655:              sra          t4, a2, t1
                  sra          t0, s6, t3
                  or           s10, t2, tp
                  bne          s7, a7, 674f
                  auipc        zero, 898151
660:              add          s6, sp, zero
                  auipc        tp, 454248
                  slt          t1, s6, s10
                  bge          gp, s7, 668f
                  blt          tp, zero, 672f
                  add          s9, gp, a5
                  slli         s2, t2, 6
                  blt          a3, s2, 683f
668:              bne          gp, s8, 669f
669:              xor          s0, s1, a2
                  bgeu         a2, s10, 672f
                  bltu         s6, a5, 683f
672:              auipc        s11, 888260
                  beq          a0, s2, 683f
674:              srl          t0, s4, t2
                  xori         s8, a2, -1006
                  sltiu        a5, s4, 1947
                  lui          a3, 575558
                  bgeu         a4, s10, 696f
                  sra          a4, a1, gp
                  sra          ra, t3, s6
                  beq          t0, a7, 699f
                  add          t6, a1, s3
683:              andi         s7, s2, 1217
                  blt          a7, s0, 702f
                  sltiu        t2, t5, 1202
                  sltu         s8, s3, s10
                  bge          a1, a6, 699f
                  bne          gp, s8, 703f
                  srli         a1, ra, 30
                  blt          s1, s3, 695f
                  xor          a0, tp, a7
                  add          zero, t4, s6
                  srai         t6, a2, 4
                  slt          a0, t4, gp
695:              addi         tp, sp, 736
696:              sltu         t4, t2, a7
                  ori          t0, t3, -1043
                  slli         s5, s0, 11
699:              or           gp, ra, a4
                  slt          a6, a1, a4
                  srai         s11, sp, 15
702:              srai         t6, s2, 31
703:              add          s6, zero, a6
                  bgeu         a6, t2, 724f
                  slli         t4, t6, 12
                  sltu         s7, s1, s5
                  sub          s3, s10, a5
                  and          s6, s4, s4
                  add          s7, a4, t1
                  auipc        a5, 222654
                  blt          s2, sp, 713f
                  bgeu         t4, s7, 728f
713:              slli         s0, a2, 23
                  xor          a1, s6, ra
                  beq          ra, a5, 725f
                  sltu         a4, zero, ra
                  srl          a2, s6, ra
                  ori          s9, a7, 735
                  xor          s0, s0, tp
                  slt          gp, a3, sp
                  and          t4, ra, t2
                  or           zero, t2, sp
                  bgeu         s2, tp, 734f
724:              auipc        gp, 163804
725:              sltu         s5, s9, a2
                  andi         a1, t1, 2031
                  or           a5, s7, ra
728:              slli         t2, s8, 2
                  sll          a6, s2, s3
                  bne          s11, a2, 737f
                  xori         s9, t2, 1925
                  slli         s3, s8, 1
                  ori          s8, s1, -800
734:              xori         gp, s6, -443
                  sra          s8, a5, t4
                  ori          a6, s9, -579
737:              srl          s0, a3, s10
                  srl          s11, s3, gp
                  or           a6, s11, s5
                  add          s1, s0, s10
                  blt          a2, ra, 742f
742:              add          t3, s3, t6
                  and          t1, a0, t0
                  slli         tp, a6, 18
                  sltiu        a0, a0, 1670
                  srl          a7, s11, s1
                  sll          a0, s9, s6
                  addi         zero, a5, 143
                  andi         t0, ra, 1751
                  slti         s0, s0, 782
                  sub          gp, s10, s1
                  bltu         sp, a7, 759f
                  bltu         gp, a3, 763f
                  beq          t6, gp, 768f
                  slli         s3, a1, 7
                  bne          t0, t5, 769f
                  sra          a1, a3, s5
                  slti         s8, t2, 530
759:              bne          t1, s5, 774f
                  add          a5, s10, s8
                  slli         a5, s9, 29
                  xori         s11, s5, 1973
763:              xori         s11, t5, 1936
                  sub          a4, zero, t4
                  beq          s4, t4, 772f
                  addi         a2, gp, -857
                  srai         s6, a2, 2
768:              slti         t0, t5, 1252
769:              bne          s11, a1, 784f
                  srl          t2, a7, t2
                  bgeu         t3, s4, 782f
772:              xori         t4, a0, -507
                  sub          zero, t1, s7
774:              ori          a6, t6, -1828
                  bge          s3, gp, 791f
                  addi         s6, s9, -1665
                  and          a3, s7, s9
                  bne          s1, tp, 783f
                  sltiu        t0, t1, -327
                  slt          tp, a3, zero
                  bge          t4, s3, 793f
782:              slt          a5, t5, s6
783:              bge          s11, t5, 801f
784:              sra          s2, s0, a5
                  la           s3, region_1+1637 #start riscv_load_store_rand_instr_stream_0
                  andi         a0, a5, -338
                  lb           t4, -478(s3)
                  and          t3, s3, a2
                  add          s11, a4, s0
                  sh           t5, -279(s3)
                  sw           s6, -969(s3)
                  addi         s5, s5, 1164
                  xor          s6, t4, s9
                  sltu         s6, a0, s3
                  sltiu        t2, s2, 1345
                  lbu          s9, -527(s3)
                  lb           a0, -709(s3)
                  sub          a2, s4, a5
                  addi         a7, s7, -218
                  or           s7, tp, s6
                  sb           s3, -820(s3)
                  lb           s0, -1535(s3)
                  sra          s10, a2, t5
                  sh           t4, -699(s3)
                  lw           a6, -857(s3)
                  sw           a2, -185(s3)
                  nop
                  sll          zero, a3, a7
                  slti         s7, t1, 1443
                  andi         s0, s0, 710
                  lhu          zero, -1611(s3)
                  lb           a3, -1039(s3) #end riscv_load_store_rand_instr_stream_0
                  bge          t6, s11, 786f
786:              and          s0, t0, t4
                  srl          a6, t0, t6
                  addi         s7, a5, -1627
                  sltu         s8, t4, t6
                  or           a1, a2, s4
791:              sub          t3, s8, s1
                  srai         s10, s6, 31
793:              nop
                  xor          ra, s3, zero
                  or           a4, t1, t2
                  bne          ra, t4, 804f
                  add          gp, a7, a2
                  xor          zero, s2, a7
                  blt          sp, a0, 812f
                  slli         a3, a5, 21
801:              bge          s2, s5, 802f
802:              xori         tp, s6, 1265
                  slt          a5, t3, s9
804:              addi         a2, t5, -790
                  beq          s7, t2, 815f
                  srli         s2, t5, 12
                  blt          a1, s11, 827f
                  beq          zero, ra, 823f
                  addi         a1, sp, -918
                  slt          s7, s1, a0
                  xor          s1, s2, a1
812:              ori          t4, s0, -1021
                  lui          ra, 720773
                  slt          s0, a1, s1
815:              srli         tp, a7, 6
                  sll          t0, a5, a5
                  bne          a5, a2, 827f
                  addi         s8, s3, -1293
                  nop
                  auipc        gp, 374337
                  auipc        s2, 481473
                  auipc        a6, 983999
823:              add          a6, sp, a2
                  sltu         a1, a4, a6
                  sltiu        ra, a0, -1919
                  slli         s8, a7, 31
827:              sll          s8, s1, t6
                  addi         s10, t5, 1882
                  or           s10, t4, s5
                  bge          a1, a4, 846f
                  bge          a3, zero, 839f
                  srai         t0, t6, 14
                  xori         t3, a6, -1838
                  andi         a5, s0, -173
                  or           tp, a5, tp
                  xori         a1, gp, -347
                  and          s9, a2, s1
                  sltiu        a7, a7, 981
839:              addi         s2, s8, 1061
                  blt          a0, t1, 855f
                  sltiu        s7, s5, -1510
                  slti         a4, s5, 1732
                  slt          t4, t4, s3
                  and          a0, s10, t0
                  nop
846:              srai         s5, s6, 28
                  sltu         a1, s8, t1
                  lui          ra, 532473
                  and          s10, s3, t1
                  bne          s11, a6, 855f
                  addi         s9, s6, -762
                  slli         t2, s10, 19
                  add          ra, s9, s7
                  lui          t4, 690060
855:              andi         s5, s11, 88
                  or           s11, t2, t2
                  slli         t6, a5, 2
                  lw           tp, 4(t5)
                  or           ra, t3, a4
                  sltu         s5, a2, a5
                  andi         a7, sp, -311
                  nop
                  srli         s2, s6, 13
                  addi         t5, t5, 8
                  sltu         s0, s5, tp
1121:             addi x4, x4, 1
1121:             jalr x4, x4, 0
sub_6:            addi         t5, t5, -48
                  xori         s1, t5, 186
                  sw           tp, 4(t5)
                  sll          s9, s4, s0
                  sltiu        a7, s11, -1565
                  slt          gp, ra, a5
                  la           a5, region_0+403 #start riscv_load_store_rand_instr_stream_1
                  lb           t6, 1521(a5)
                  lbu          t3, -356(a5)
                  lui          t0, 134975
                  sw           sp, 621(a5)
                  slti         a7, t1, -215
                  lb           ra, 1336(a5)
                  lbu          t2, -221(a5)
                  lbu          a4, 218(a5)
                  lbu          s11, 1588(a5)
                  slti         s5, a5, 548
                  or           zero, s8, a6
                  slli         a1, s3, 13
                  slti         s7, s2, -482
                  nop
                  sb           t2, -76(a5)
                  sw           a1, 953(a5)
                  addi         t4, ra, -1852
                  slli         gp, a1, 19
                  lb           a4, 1377(a5)
                  sb           s0, -64(a5)
                  slti         gp, gp, -1309
                  sltiu        s5, s1, 500
                  sra          gp, t5, s4
                  nop
                  addi         t2, s9, 634
                  xori         t2, a1, -427
                  ori          s10, s0, -534
                  lui          a0, 749250
                  xori         s9, a0, -1677
                  lb           a1, 1154(a5)
                  andi         s2, a7, -1637
                  sra          t6, s8, t0
                  sh           t2, 1061(a5)
                  lhu          a0, 175(a5) #end riscv_load_store_rand_instr_stream_1
                  srli         s7, s6, 24
                  bge          s4, t1, 4f
                  beq          s6, a7, 3f
3:                beq          t2, t5, 4f
4:                andi         gp, s1, 1114
                  srl          gp, t4, s7
                  sll          ra, a0, t1
                  bge          a7, s8, 11f
                  beq          t3, s10, 21f
                  slli         a6, s5, 26
                  addi         a7, t2, 2013
11:               srli         s0, a3, 18
                  or           t4, a7, t0
                  slti         t4, s3, 450
                  sltu         s6, s0, a6
                  auipc        s7, 1026521
                  xor          t2, a2, s6
                  bne          s9, zero, 37f
                  sra          a4, gp, s11
                  srl          s11, s2, s7
                  srl          s8, a6, s1
21:               sltiu        s7, tp, 2014
                  xori         zero, ra, -698
                  srl          a1, a3, s10
                  slt          t0, t4, tp
                  lui          s2, 11691
                  or           t4, t6, ra
                  sra          t4, s10, s2
                  beq          s9, t0, 43f
                  srai         gp, t2, 16
                  bltu         gp, t0, 31f
31:               bltu         a2, s11, 44f
                  lui          a5, 176643
                  add          t6, gp, s5
                  sub          s10, a0, a6
                  sltu         s6, s1, s4
                  bge          s11, s9, 52f
37:               bne          a5, a0, 47f
                  sub          s1, tp, s7
                  srli         t1, a3, 13
                  bne          t4, s11, 53f
                  slti         a0, a3, 1190
                  sub          a5, s9, gp
43:               bgeu         a7, t3, 45f
44:               sub          s11, sp, a1
45:               slt          zero, t3, a4
                  add          s3, t4, s11
47:               add          ra, a3, a7
                  sub          t3, s6, a0
                  auipc        zero, 124095
                  srli         a5, t2, 26
                  nop
52:               slt          zero, t3, ra
53:               lui          s6, 825030
                  slli         s0, s10, 15
                  xor          t6, ra, a4
                  srl          a6, s8, tp
                  slti         s7, t0, 621
                  blt          s4, t0, 74f
                  srli         a6, t0, 12
                  slt          a4, zero, s8
                  andi         s5, gp, 310
                  bgeu         a7, a6, 71f
                  slti         s0, s0, 1048
                  xor          s0, sp, s2
                  or           a6, s8, s9
                  add          s6, zero, a6
                  la           s11, region_1+826 #start riscv_load_store_rand_instr_stream_0
                  sra          t0, a6, t2
                  sub          a5, t3, tp
                  lb           a6, -11(s11)
                  sltu         zero, s4, s5
                  srli         s6, a0, 25
                  lb           s6, 9(s11)
                  ori          a3, a4, 88
                  srai         a4, a5, 7
                  lbu          a0, -12(s11)
                  lb           s3, 13(s11)
                  sub          s7, s2, ra
                  slti         a7, s9, 168
                  slti         t6, s6, -271
                  lb           s7, 11(s11)
                  ori          a3, a4, -951
                  andi         t1, a2, -397
                  lh           t4, -6(s11)
                  srai         a5, s1, 22
                  sll          s10, a1, a2
                  lbu          s2, 13(s11)
                  auipc        s6, 305046
                  addi         s6, a2, -353
                  slt          gp, tp, s2
                  lbu          t1, 16(s11)
                  xor          s6, s4, s1
                  addi         a3, a6, -1501
                  xor          t6, tp, t0
                  srli         t1, t1, 5
                  nop
                  lbu          s7, 14(s11)
                  sb           s11, -11(s11)
                  sb           s2, 6(s11)
                  slt          t6, s10, a3
                  auipc        t3, 192840
                  xori         s5, s0, 1395
                  lbu          ra, 15(s11)
                  srli         a3, t6, 25
                  sra          s1, a7, s4
                  ori          t2, t0, 1216
                  slti         t2, t2, 1806
                  sb           t6, -11(s11) #end riscv_load_store_rand_instr_stream_0
                  add          a4, t5, t0
                  addi         a2, a5, 1791
                  andi         s2, s2, 1626
                  addi         s8, s7, 729
71:               slti         a7, t4, 1869
                  xor          tp, s1, s6
                  and          s10, t0, s8
74:               sra          s5, s3, t4
                  bltu         t1, t3, 76f
76:               xori         s0, t2, 271
                  srli         a3, a5, 31
                  bne          ra, tp, 96f
                  srli         s10, a3, 26
                  xori         t1, t6, 1267
                  slli         s5, t4, 0
                  sub          s9, s11, sp
                  ori          s8, t6, -2023
                  slti         ra, s10, -1228
                  or           a2, t3, a0
                  bge          tp, s2, 93f
                  xor          s9, s5, s5
                  and          s7, t4, s1
                  slt          t0, s3, t6
                  or           tp, gp, s0
                  or           s3, t1, t4
                  xori         s10, t1, -788
93:               slti         a2, zero, -1554
                  add          s3, s2, a3
                  and          a1, t3, tp
96:               bge          sp, a2, 115f
                  xor          t3, a2, t6
                  srl          s8, t5, tp
                  slli         s1, s1, 15
                  slli         s2, t5, 10
                  bne          s6, t2, 109f
                  sra          s9, t6, s4
                  and          a6, s4, a7
                  sra          a5, s5, a3
                  bge          t4, t5, 107f
                  bltu         sp, zero, 109f
107:              auipc        s0, 806078
                  xor          s10, t0, a6
109:              addi         s7, s1, 1090
                  bge          t4, sp, 130f
                  bne          t4, s7, 130f
                  blt          t2, a1, 128f
                  srl          t1, s3, a0
                  or           ra, t3, a4
115:              srli         t4, t0, 23
                  auipc        a7, 969877
                  slt          t2, s4, gp
                  sltiu        s0, s3, -123
                  auipc        a4, 364368
                  slti         s8, s11, -524
                  bne          gp, t0, 133f
                  sltiu        t2, s7, 1502
                  bltu         s11, s11, 136f
                  nop
                  andi         a5, a7, -1410
                  xor          t3, tp, a2
                  slti         a5, a0, 1194
128:              xori         a3, s6, -480
                  slt          a5, ra, t6
130:              xori         a2, ra, -1659
                  bltu         a2, s10, 139f
                  add          s5, tp, s5
133:              andi         t4, s0, 1385
                  nop
                  slti         a0, a7, 1884
136:              nop
                  xor          t0, a2, s8
                  sltiu        t1, t0, -774
139:              srl          s9, tp, a6
                  xori         ra, s9, -159
                  sll          a7, s8, t3
                  sra          t0, s11, a6
                  sll          s6, t4, s11
                  srl          t0, a1, a2
                  ori          t1, s5, 1953
                  addi         s6, s6, -542
                  lui          s2, 99886
                  sltu         zero, t3, s11
                  auipc        gp, 387626
                  nop
                  slti         a1, t4, 1963
                  slt          a1, t5, ra
                  srli         s6, s4, 11
                  bge          ra, tp, 168f
                  slli         ra, s6, 7
                  beq          t4, t6, 161f
                  sltu         a6, s7, a0
                  auipc        t6, 653001
                  srl          s10, a4, zero
                  bne          a3, a4, 173f
161:              bgeu         a4, s9, 162f
162:              srai         s10, s1, 21
                  add          tp, s4, tp
                  sll          t3, tp, s10
                  srli         a6, s6, 22
                  sltiu        s6, a2, -1821
                  beq          s9, s1, 183f
168:              add          s9, t0, s11
                  srai         s7, s11, 0
                  sra          gp, a3, s9
                  nop
                  srl          s3, s9, sp
173:              lui          t6, 258354
                  lui          a2, 983730
                  and          s1, s7, t5
                  beq          a1, a4, 196f
                  srl          a4, t5, a2
                  sll          s10, t4, s10
                  bne          s3, s2, 188f
                  andi         gp, t1, -1554
                  bge          s6, s2, 194f
                  sltiu        t1, a0, 1894
183:              ori          s7, a6, -10
                  slti         zero, a4, 1526
                  srai         t0, s6, 13
                  or           a5, a7, a7
                  ori          gp, sp, 1977
188:              beq          t4, t4, 195f
                  blt          t5, s9, 207f
                  sll          a2, s11, t0
                  xor          s9, s3, s10
                  slt          s5, a6, gp
                  sub          a0, a1, t0
194:              andi         a1, s5, 459
195:              addi         t6, s11, 1999
196:              slt          a7, s7, a3
                  beq          s11, s9, 213f
                  slt          ra, s3, t3
                  nop
                  ori          s0, s7, 1603
                  and          a6, sp, s9
                  addi         a2, a3, -1100
                  srli         gp, s5, 2
                  slli         s1, s4, 9
                  sltiu        a5, t2, -678
                  and          zero, zero, s5
207:              slt          a6, gp, s1
                  sra          s9, a2, s0
                  nop
                  sub          s9, s8, t6
                  bne          a6, s2, 216f
                  slti         s7, a2, 173
213:              bge          t4, a5, 217f
                  sra          a3, t3, a1
                  slli         t2, ra, 3
216:              sll          s2, a7, s9
217:              xori         ra, a1, -450
                  slt          a5, a3, a6
                  auipc        s0, 188751
                  andi         a6, a5, 623
                  sltu         s1, s1, s1
                  xori         zero, s3, 1672
                  xor          ra, s10, s4
                  bltu         s0, a5, 237f
                  ori          a3, s8, -59
                  blt          t2, t1, 239f
                  add          a4, s8, tp
                  slli         a2, a7, 28
                  add          a3, a3, s5
                  srl          t6, s0, a3
                  andi         a0, a5, -1880
                  sra          t3, s7, t4
                  bge          zero, a3, 243f
                  xori         tp, a3, 1880
                  bgeu         a4, s4, 254f
                  sub          s2, s8, ra
237:              addi         tp, a4, 723
                  nop
239:              sltu         s5, ra, a0
                  bge          t0, a6, 255f
                  bge          a1, s1, 242f
242:              srli         a6, t3, 24
243:              srl          s2, t1, t4
                  beq          s2, a5, 246f
                  bne          s6, a3, 253f
246:              sra          s7, s8, a4
                  slt          s7, gp, tp
                  addi         s11, a0, 60
                  bge          a7, a3, 252f
                  slli         t3, s4, 19
                  bge          a5, t0, 259f
252:              bge          a2, s5, 272f
253:              ori          tp, t5, -481
254:              slt          a7, a7, s8
255:              xor          a2, t0, a2
                  srli         s0, s6, 29
                  slli         tp, s9, 12
                  sra          a5, gp, t3
259:              bltu         s9, t6, 278f
                  sltu         s1, s11, t6
                  auipc        s11, 74097
                  xori         s8, s5, 2026
                  lui          a6, 416319
                  or           s8, a6, gp
                  slti         a0, tp, -85
                  srai         t6, a1, 20
                  sltu         s3, s11, t4
                  bltu         t6, t6, 284f
                  blt          sp, tp, 283f
                  srli         t2, s7, 22
                  xori         s5, a7, 989
272:              sltu         a7, a3, s11
                  addi         t0, s10, 1946
                  auipc        a5, 547381
                  bne          a4, ra, 277f
                  add          t2, a7, a2
277:              bltu         gp, t3, 289f
278:              bgeu         s2, s0, 281f
                  sltu         a2, s3, s4
                  bne          tp, s3, 281f
281:              add          a4, s8, a0
                  lui          s0, 62896
283:              add          s11, s8, s3
284:              bne          a2, a3, 285f
285:              sltiu        t0, t1, -1092
                  srai         s11, a6, 16
                  sltiu        a2, s9, -949
                  sub          t3, s1, tp
289:              srli         tp, t4, 28
                  addi         s11, s6, -1132
                  nop
                  xori         gp, a5, -970
                  ori          s6, a7, 223
                  sll          s5, t1, a1
                  ori          t2, s6, -994
                  auipc        a7, 860733
                  andi         zero, t1, -1587
                  sll          t1, t2, s3
                  bgeu         a5, s10, 317f
                  lui          s7, 541444
                  sub          s6, s3, t4
                  srai         a5, ra, 31
                  slli         a7, t1, 10
                  bge          tp, s3, 324f
                  ori          s11, s8, -930
                  srai         zero, a7, 23
                  and          s10, s3, s2
                  addi         a2, s2, 781
                  srl          a3, s8, s0
                  sltu         t4, s2, s1
                  sltiu        a5, t5, -922
                  sltu         a7, t6, s0
                  bge          t5, t6, 327f
                  or           s5, t3, t1
                  bgeu         s10, t2, 327f
                  slti         a1, t3, -1666
317:              sltiu        a2, t6, 1545
                  lui          s9, 959781
                  or           s10, t6, t3
                  lui          s8, 137429
                  nop
                  xori         a5, s9, -181
                  nop
324:              srai         a2, a2, 26
                  slt          gp, t2, tp
                  xori         a6, ra, 151
327:              lui          t0, 911706
                  lw           tp, 4(t5)
                  lui          gp, 900283
                  addi         t5, t5, 48
                  srl          a5, zero, s2
                  xori         a7, s0, -311
                  slli         t2, zero, 2
                  or           s10, t5, t5
                  srai         s0, s0, 14
                  srai         s10, a6, 17
                  sltiu        s7, s9, -372
421:              addi x6, x4, 0
421:              jalr x6, x6, 0
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
mmode_intr_vector_1:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x13, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x13, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x13, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x13, x7, ecall_handler
                  li x7, 0x1
                  beq x13, x7, instr_fault_handler
                  li x7, 0x5
                  beq x13, x7, load_fault_handler
                  li x7, 0x7
                  beq x13, x7, store_fault_handler
                  li x7, 0xc
                  beq x13, x7, pt_fault_handler
                  li x7, 0xd
                  beq x13, x7, pt_fault_handler
                  li x7, 0xf
                  beq x13, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
