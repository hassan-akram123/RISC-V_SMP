.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xfbb52061
                  li x2, 0x0
                  li x3, 0x1
                  li x4, 0x0
                  li x5, 0xf38bec41
                  li x6, 0x5224bda1
                  li x7, 0x80000000
                  li x8, 0xf7c5a136
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x4c223318
                  li x14, 0xf
                  li x15, 0xf33b8e1c
                  li x16, 0xfd977455
                  li x17, 0xfefcdfaa
                  li x18, 0xf1aa188e
                  li x19, 0x0
                  li x20, 0xb5c2b654
                  li x21, 0x80000000
                  li x22, 0x2
                  li x24, 0x0
                  li x25, 0xfe1ee298
                  li x26, 0xf68ff4fb
                  li x27, 0x6
                  li x28, 0xd
                  li x29, 0x6
                  li x30, 0x0
                  li x31, 0x0
                  la x23, user_stack_end
main:             la           sp, region_0+835 #start riscv_load_store_rand_instr_stream_2
                  sltu         a6, a0, a7
                  sw           t6, 1(sp)
                  sll          a1, s2, gp
                  lb           s1, -16(sp)
                  lbu          a1, -4(sp)
                  sub          s4, t0, a0
                  lbu          t0, -14(sp)
                  slli         a5, a6, 28
                  nop
                  auipc        t6, 140396
                  sll          s8, s9, t0
                  lhu          a6, 1(sp)
                  srai         s1, a0, 28
                  andi         a0, t5, -888
                  xori         t5, a6, 1179
                  or           t3, s10, s4
                  sltiu        a1, zero, -482
                  sb           t5, -10(sp)
                  lui          s5, 146097
                  sh           a2, -3(sp)
                  xori         s4, a7, 276
                  add          a4, ra, s7
                  lbu          t0, 4(sp)
                  lb           a1, 2(sp)
                  lb           s6, 13(sp)
                  lbu          t1, -10(sp)
                  sb           gp, 5(sp)
                  or           a0, s0, gp
                  ori          a1, s0, 444
                  lui          zero, 517204
                  lb           a4, 8(sp)
                  sh           s8, -1(sp)
                  sltiu        t0, s10, -2045
                  sra          s0, s1, ra
                  lh           a0, 15(sp)
                  and          s10, t5, s8
                  andi         tp, s10, 458
                  sub          t1, t1, s1
                  lhu          a5, -1(sp)
                  lb           s3, -2(sp)
                  sra          s11, a0, t5
                  lhu          t0, 13(sp)
                  sub          t6, a5, a4
                  sw           ra, -15(sp)
                  sb           t2, -2(sp)
                  lw           t2, -15(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_0+479 #start riscv_load_store_rand_instr_stream_1
                  nop
                  nop
                  sb           s9, 2(s3)
                  lbu          s10, -4(s3)
                  slli         a7, s0, 23
                  lb           s10, 12(s3)
                  sb           t5, 5(s3)
                  xori         zero, t6, -1616
                  lhu          s11, -7(s3)
                  lh           sp, -13(s3)
                  lbu          sp, -16(s3)
                  srai         t5, a0, 10
                  lh           s10, -1(s3)
                  ori          sp, s8, 599
                  and          a1, a3, a2
                  lbu          s4, 13(s3)
                  add          s5, s0, a1
                  nop
                  sub          s0, ra, s8
                  add          s1, s0, t1
                  or           sp, t2, a3
                  sub          s9, t6, ra
                  lui          t6, 333329
                  lb           t5, 11(s3)
                  slt          sp, a6, a2
                  srai         t4, sp, 21
                  add          a7, tp, s8
                  nop
                  lbu          s5, -16(s3)
                  sb           a0, 1(s3)
                  srl          s10, a5, t6
                  andi         s11, s2, 1588
                  sltu         a7, zero, s0
                  lh           s2, 5(s3)
                  lb           t6, -8(s3)
                  lbu          s11, -1(s3)
                  sub          s4, a4, tp
                  lhu          a1, -11(s3)
                  lbu          tp, 14(s3) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_0+509 #start riscv_load_store_rand_instr_stream_3
                  lb           a4, 1000(t0)
                  lbu          gp, -212(t0)
                  lb           s11, 1148(t0)
                  addi         s6, a0, -244
                  sw           a1, 211(t0)
                  andi         s3, s3, -877
                  lbu          t2, 740(t0)
                  lb           s10, -336(t0)
                  sll          s5, a7, s4
                  lbu          t3, 323(t0)
                  srai         ra, s5, 4
                  lh           s11, 1251(t0)
                  andi         tp, zero, -2012
                  lui          s6, 331820
                  srai         s9, a4, 31
                  sh           s7, 1415(t0)
                  sb           a2, 1074(t0)
                  or           s3, t3, a3
                  andi         a7, t5, -851
                  sra          sp, t5, t5
                  sb           gp, 332(t0)
                  lbu          t6, 1134(t0)
                  sh           a3, 873(t0)
                  sb           t2, -236(t0)
                  lbu          a0, -438(t0)
                  sh           t2, -413(t0)
                  addi         s5, a5, 578
                  sb           ra, 264(t0)
                  lbu          s9, -278(t0)
                  lb           t3, 1036(t0)
                  sra          s2, s3, a3
                  lbu          s1, -309(t0)
                  lbu          s2, -395(t0)
                  addi         s6, sp, -1816
                  or           s6, a0, s3
                  lh           zero, 15(t0)
                  sltiu        s5, a7, -381
                  lb           t1, 1058(t0)
                  sw           t2, 607(t0) #end riscv_load_store_rand_instr_stream_3
                  srl          tp, s3, s11
                  addi         a6, s8, 239
                  slt          t0, a7, s7
                  bltu         a2, s9, 19f
                  srl          t4, s0, s6
                  sra          s0, a5, sp
                  xori         s3, t0, 1348
                  bne          s9, s10, 26f
                  add          t5, t2, a4
                  and          t3, s3, t6
                  auipc        t3, 719670
                  xori         t2, a2, -1832
                  xor          s9, s9, s1
                  sub          t5, s7, zero
                  blt          t6, t4, 33f
                  blt          s7, a6, 21f
                  add          s0, s1, s1
                  sltiu        t1, s1, 504
                  xori         a7, a4, 1656
19:               or           a4, zero, sp
                  slt          s1, t1, t3
21:               lui          t3, 508962
                  sltu         s8, ra, s4
                  sltiu        t5, t3, -376
                  bltu         s3, gp, 37f
                  srl          t0, t4, s5
26:               sll          s10, t2, s2
                  sll          t6, t3, t1
                  slt          s8, t3, t5
                  nop
                  andi         t3, s6, 645
                  bltu         zero, a6, 40f
                  ori          ra, a6, 211
33:               sltu         a7, sp, s7
                  sll          t2, a7, t4
                  srl          a4, s1, s10
                  sll          s0, a3, t3
37:               sltiu        t4, a6, 1417
                  slti         sp, t6, 7
                  srai         s0, s4, 3
40:               xori         t4, t2, -932
                  xor          gp, a4, a3
                  beq          s3, t1, 60f
                  bltu         ra, a0, 48f
                  slli         t4, t2, 17
                  slt          t5, t1, t0
                  nop
                  and          s10, a6, s8
48:               and          gp, s5, sp
                  auipc        a4, 749627
                  sll          t2, t2, a5
                  blt          s11, s0, 66f
                  xori         t3, t4, 59
                  or           s3, a3, a3
                  addi         sp, tp, -389
                  srli         s4, s6, 12
                  sltiu        s10, a1, 494
                  auipc        t6, 168560
                  ori          t1, t0, -1519
                  srai         a0, t3, 23
60:               add          a1, s11, t6
                  sll          a7, a3, t3
                  slti         s5, t2, 969
                  and          a7, t4, t2
                  srl          s3, s4, s8
                  bgeu         t0, a0, 71f
66:               bne          a2, s2, 77f
                  bltu         a2, a3, 73f
                  add          s11, zero, t0
                  blt          sp, t5, 85f
                  and          s0, zero, t6
71:               beq          a7, s1, 72f
72:               or           s2, a5, a2
73:               bgeu         t2, zero, 88f
                  sll          s11, a0, t6
                  beq          a6, t1, 91f
                  bge          a5, s10, 96f
77:               auipc        s9, 490374
                  bgeu         s2, s5, 93f
                  lui          s1, 554006
                  sra          a5, a2, a6
                  beq          t3, s6, 92f
                  and          s4, s5, a4
                  sltu         s2, s1, a6
                  sra          a6, s3, s2
85:               auipc        s2, 393368
                  beq          s8, t6, 89f
                  bne          a7, t1, 88f
88:               andi         zero, s2, 1124
                  sltu         sp, t3, sp
                  slli         zero, gp, 25
                  sub          t2, a6, s10
                  la           s1, sub_2
                  xor          s11, s1, sp
                  add          s0, a7, s7
                  ori          s10, a3, -125
                  or           t6, zero, a3
                  addi         s1, s1, -332
                  xor          s8, gp, s2
                  add          ra, tp, s10
main_j3:          jalr         t1, s1, 333 #jump main -> sub_2
89:               xor          gp, s6, s0
                  andi         sp, t4, 39
91:               blt          s3, s7, 97f
92:               slti         a6, a3, 1425
93:               lui          sp, 146308
                  bltu         s7, s6, 96f
                  srl          a1, s6, t0
96:               ori          a7, s5, -1743
97:               addi         s4, t6, 1329
                  sll          s4, t1, s0
                  sltu         a4, a6, t4
                  ori          t5, s4, 1987
                  bge          a7, t0, 110f
                  auipc        a7, 85299
                  slli         a7, a5, 9
                  andi         s8, a5, 1695
                  beq          a1, s6, 125f
                  sra          t6, s8, a3
                  bge          zero, s4, 121f
                  xor          a1, s9, s4
                  slli         tp, s11, 18
110:              blt          s5, s1, 125f
                  srl          a1, tp, t3
                  blt          a0, t5, 123f
                  sltu         s9, gp, s3
                  slti         t2, tp, 1835
                  bltu         s0, a1, 123f
                  auipc        s2, 404491
                  add          s5, tp, t1
                  addi         s9, t4, -437
                  slt          s9, tp, zero
                  sra          t2, s11, sp
121:              slli         sp, zero, 7
                  srli         t5, zero, 5
123:              addi         s3, a1, -218
                  and          a7, s0, t6
125:              xor          s2, a5, zero
                  srl          s0, a7, a5
                  blt          s10, s6, 132f
                  bge          t4, a5, 144f
                  or           t0, a2, a0
                  addi         a0, t3, 1335
                  slt          s11, s6, s11
132:              srli         s4, a3, 26
                  beq          s6, t3, 148f
                  beq          tp, zero, 145f
                  blt          sp, ra, 151f
                  auipc        s4, 185516
                  and          s5, a0, s5
                  sub          s2, t5, a6
                  nop
                  slli         s4, s6, 22
                  sltiu        s11, s8, -1566
                  nop
                  bne          a2, a2, 144f
144:              bgeu         gp, s10, 164f
145:              xori         a7, a5, -904
                  xor          a6, t6, s6
                  blt          s6, s0, 156f
148:              beq          a6, zero, 161f
                  bgeu         t3, t1, 164f
                  sub          t4, a4, t0
151:              xori         s4, a5, 1334
                  srli         a0, gp, 9
                  sltiu        t6, a2, 1680
                  xori         tp, t0, -233
                  slt          s8, s6, s3
156:              beq          s6, a5, 161f
                  sll          s0, a5, gp
                  or           sp, t5, a0
                  xori         s11, a1, -1675
                  sra          s5, s6, s3
161:              bne          t0, s6, 177f
                  bltu         t2, t2, 177f
                  sltiu        zero, a2, -747
164:              bgeu         s6, s7, 170f
                  bgeu         s8, s0, 185f
                  srl          t0, a2, a1
                  slti         s10, s10, -533
                  slli         a0, s7, 24
                  bge          s2, s0, 183f
170:              srai         a5, gp, 12
                  slti         a0, a5, -1139
                  xori         tp, ra, -1542
                  addi         s10, sp, -1127
                  sltiu        s10, s2, -955
                  beq          t1, a0, 178f
                  auipc        t2, 120720
177:              andi         t3, s4, -256
178:              andi         t0, s11, -299
                  nop
                  srl          s2, a5, s3
                  bltu         ra, a0, 187f
                  bgeu         t1, s2, 190f
183:              xor          s8, t6, a3
                  sub          s9, s9, t5
185:              or           a6, s9, t0
                  blt          s11, t3, 201f
187:              srl          s1, gp, tp
                  nop
                  blt          tp, s5, 194f
190:              andi         t0, s4, -1274
                  sll          s11, a7, ra
                  sra          t4, s5, t4
                  slti         t6, a3, 543
194:              bltu         t2, a0, 200f
                  beq          a6, sp, 206f
                  sub          s10, a2, t5
                  slt          s9, gp, s5
                  or           a4, s11, zero
                  or           t4, s9, s1
200:              xor          a6, a7, s4
201:              auipc        s6, 45240
                  sub          a7, ra, s7
                  nop
                  nop
                  sub          a7, t0, a3
206:              addi         s10, s6, -2018
                  srai         t4, t4, 23
                  bge          s10, s5, 226f
                  xori         a0, t1, -940
                  bne          t1, s7, 221f
                  slt          t0, s7, t1
                  xor          a7, s1, ra
                  bge          a3, s8, 214f
214:              bge          s1, s2, 223f
                  add          a6, t2, a6
                  srli         gp, t1, 18
                  xor          s3, t2, t0
                  bgeu         a6, t2, 237f
                  beq          a5, s6, 221f
                  srl          s8, t3, a4
221:              bne          a3, a7, 240f
                  lui          a6, 827676
223:              and          ra, s0, s10
                  beq          s9, s11, 230f
                  bge          t5, s10, 241f
226:              blt          sp, s7, 234f
                  beq          t4, gp, 246f
                  sll          s2, t0, s10
                  sub          zero, a4, a6
230:              or           sp, s0, t2
                  auipc        a0, 482100
                  bltu         a0, s3, 238f
                  sub          a6, tp, s8
234:              bgeu         s0, a3, 248f
                  xor          a1, gp, a2
                  bltu         t5, t5, 247f
237:              bltu         s2, a4, 252f
238:              nop
                  srl          a7, t5, t2
240:              auipc        s2, 650751
241:              ori          s4, s2, 795
                  ori          t5, s7, -254
                  addi         t1, t2, -2043
                  slli         t6, sp, 16
                  and          s5, ra, s7
246:              ori          s8, t2, -1054
247:              xor          s10, t6, t6
248:              srli         s9, tp, 20
                  bge          a5, a2, 269f
                  bne          t1, a2, 261f
                  beq          s7, a1, 266f
252:              bgeu         t3, a5, 257f
                  bgeu         a2, t6, 254f
254:              sub          a0, a4, s10
                  addi         a5, s6, -768
                  lui          a4, 516675
257:              add          gp, a0, t6
                  and          s3, s11, s9
                  bge          s9, s3, 274f
                  srli         t2, a5, 4
261:              sltiu        s4, a0, 314
                  blt          sp, s9, 280f
                  srai         t1, t5, 11
                  and          a4, a4, t3
                  ori          a7, t0, 1675
266:              slti         s1, t6, -1428
                  srl          a6, a5, a6
                  and          a0, s5, s2
269:              bne          t5, a3, 282f
                  addi         s0, s9, -1974
                  bgeu         a5, s8, 277f
                  ori          t0, a2, 1845
                  srli         a0, a3, 28
274:              xor          t4, s3, s2
                  slli         t1, s0, 9
                  srli         s6, s11, 6
277:              xor          t0, tp, t5
                  and          t6, a3, t1
                  addi         s2, t3, -922
                  auipc        gp, 863427
                  la           s11, sub_1
                  auipc        a4, 420930
                  srl          t2, s1, s1
                  addi         s11, s11, -700
                  beq          t6, a7, main_j1 #branch to jump instr
                  srai         s8, a0, 7
                  xori         t4, a5, -300
                  srl          a4, a2, s2
                  xori         s8, a2, 923
main_j1:          jalr         t1, s11, 701 #jump main -> sub_1
                  bltu         gp, a7, 281f
280:              srai         s10, s3, 8
281:              bge          t0, t0, 287f
282:              slti         sp, a1, -127
                  beq          s0, a3, 299f
                  bne          t6, a4, 303f
                  ori          s5, s7, -1662
                  andi         t0, t2, -810
287:              sltiu        a6, zero, 1478
                  slti         tp, a1, -50
                  srl          s1, t3, t5
                  slt          t1, a4, s1
                  lui          gp, 146328
                  nop
                  srl          t5, s7, s7
                  sll          t3, t3, s3
                  xor          s3, a3, s4
                  xor          a7, s4, s7
                  slti         a4, a2, 2042
                  srli         t2, s2, 9
299:              lui          t6, 989593
                  andi         a5, gp, -1084
                  srl          s6, s0, ra
                  xori         t2, t1, -444
303:              ori          t2, t3, -1308
                  ori          s0, s6, -2001
                  addi         a1, ra, 1942
                  sltu         s4, t5, tp
                  srai         s5, a5, 6
                  srli         t3, t0, 26
                  srli         a7, t4, 25
                  bne          ra, s1, 326f
                  add          a4, a5, a7
                  slt          a0, a1, a3
                  bge          s11, t2, 319f
                  and          s9, s0, s10
                  bgeu         s5, s7, 330f
                  nop
                  sll          a6, zero, t4
                  auipc        gp, 932581
319:              srli         ra, a2, 28
                  lui          s0, 332637
                  nop
                  lui          s1, 265124
                  bne          s10, t4, 332f
                  sra          a0, s7, ra
                  slt          a5, t5, sp
326:              auipc        s2, 111549
                  ori          s11, t1, 686
                  srli         a5, a7, 29
                  slti         s8, s4, -658
330:              nop
                  srai         a1, a0, 18
332:              bltu         t1, a4, 333f
333:              xori         gp, gp, 1894
                  xori         s2, s8, 680
                  sra          a6, s6, s3
                  or           s10, s9, a5
                  slt          a5, a4, a3
                  xori         gp, s11, -1486
                  addi         s0, a0, -1193
                  xori         gp, s7, -130
                  xori         s6, s11, 168
                  bne          s5, sp, 362f
                  lui          t4, 189991
                  sub          t5, t4, t6
                  srli         a4, s2, 14
                  srl          a6, s4, s1
                  add          t4, ra, a3
                  and          sp, t4, gp
                  addi         s3, t1, -357
                  sll          t4, s8, s1
                  beq          s4, s0, 362f
                  xor          s8, a7, a4
                  sltiu        s1, a2, -1553
                  andi         t6, a2, -829
                  sll          a0, a1, t6
                  or           sp, s7, s5
                  bltu         a4, s4, 360f
                  bgeu         s7, t0, 367f
                  and          s0, s8, ra
360:              lui          a5, 170661
                  srai         s5, t1, 31
362:              slti         gp, s11, 662
                  xori         a7, ra, -1164
                  sra          a5, a3, s11
                  and          a4, sp, t4
                  ori          t6, sp, 933
367:              blt          s9, ra, 372f
                  srl          s0, gp, t1
                  slti         tp, s6, 915
                  slti         gp, a4, -552
                  slti         a7, zero, -585
372:              or           a7, t0, t3
                  la           sp, region_0+1800 #start riscv_load_store_rand_instr_stream_0
                  or           s1, s7, a7
                  sll          gp, s9, s1
                  srli         t0, s1, 1
                  sb           sp, 5(sp)
                  sltu         a5, a7, s8
                  lw           t6, -12(sp)
                  slt          t3, ra, s3
                  addi         s1, s2, -1271
                  andi         t1, s2, 1270
                  sh           a2, 16(sp)
                  and          a7, a1, t1
                  lbu          t6, -47(sp)
                  add          a1, s9, s2
                  srl          s3, s9, t0
                  lbu          t2, -39(sp)
                  addi         s3, t2, 61
                  xor          a0, s5, s5
                  and          a5, s0, s10
                  slti         t5, t3, 1796
                  lb           s8, -26(sp)
                  srai         a1, s2, 17
                  lui          s6, 297678
                  slt          t2, a2, t4
                  sub          a5, s8, gp
                  sh           ra, 52(sp)
                  auipc        s0, 712048
                  lbu          zero, 14(sp)
                  lw           s8, 60(sp)
                  lb           tp, 27(sp)
                  xori         t1, a3, 140
                  and          s1, s0, a3
                  slti         gp, sp, 644
                  sb           t4, 13(sp)
                  lbu          s2, -51(sp)
                  lb           s10, -31(sp)
                  sb           s9, 27(sp)
                  sb           sp, -61(sp)
                  nop
                  lbu          zero, 18(sp)
                  or           s1, s11, s7
                  lw           s0, -64(sp)
                  auipc        t1, 817116
                  lb           a5, 36(sp)
                  lui          a7, 389148
                  srl          ra, s0, tp
                  lbu          t0, -50(sp) #end riscv_load_store_rand_instr_stream_0
                  add          t5, t2, s9
                  sltiu        sp, gp, -1835
                  srli         s9, s4, 3
                  nop
                  beq          a4, s4, 388f
                  lui          s5, 930015
                  srl          s2, a7, t0
                  slli         a6, gp, 12
                  add          s8, s6, t0
                  bltu         s0, t3, 385f
                  bltu         s11, s9, 385f
                  bne          s4, t5, 399f
385:              bgeu         tp, s7, 390f
                  add          t1, t0, a7
                  sub          s2, s4, s10
388:              or           a4, t4, a6
                  nop
390:              bge          s4, s7, 408f
                  srl          s5, s1, gp
                  ori          t6, s1, -1024
                  slt          s6, s2, s9
                  bgeu         s2, t6, 400f
                  slti         s10, a6, 2021
                  srai         s1, s4, 22
                  xor          s2, t1, s4
                  xor          a4, zero, t4
399:              blt          t2, s1, 400f
400:              slt          t2, s5, t5
                  blt          t0, t3, 414f
                  andi         a5, a7, 1574
                  srli         s9, t6, 26
                  nop
                  blt          s6, a5, 411f
                  srl          s8, t4, a7
                  slti         s10, gp, 1898
408:              nop
                  xori         gp, a0, 223
                  andi         s5, s2, -471
411:              beq          t2, s3, 426f
                  srai         s9, zero, 0
                  sltu         s1, t0, ra
414:              blt          a0, s8, 434f
                  blt          a4, s0, 420f
                  add          s3, a4, a3
                  or           zero, a1, gp
                  sub          s2, a7, s7
                  bgeu         a6, a4, 433f
420:              bltu         a1, zero, 421f
421:              auipc        ra, 446505
                  srl          s9, sp, a5
                  andi         s6, tp, 779
                  sltu         s3, s4, t3
                  beq          sp, zero, 441f
426:              srli         t1, gp, 18
                  slti         sp, s2, 441
                  sll          s6, tp, a5
                  bgeu         s5, a5, 444f
                  slt          s5, t4, a4
                  lui          a4, 47443
                  sltiu        tp, gp, -1579
433:              sra          gp, tp, a7
434:              auipc        ra, 377358
                  blt          sp, a4, 451f
                  xori         t3, a5, -1763
                  xori         s8, ra, -1097
                  or           t1, t6, sp
                  srai         s8, a2, 11
                  slti         t2, a1, -1572
441:              slli         s6, sp, 20
                  or           a0, s7, a2
                  slt          ra, a0, s0
444:              bge          a2, a6, 450f
                  and          a4, t3, s7
                  ori          t4, t4, -1385
                  or           s4, gp, s3
                  xori         t1, t4, 947
                  slt          t4, t1, t5
450:              bne          t5, s7, 470f
451:              slli         t3, a1, 29
                  sltiu        a1, ra, -1904
                  bge          s4, sp, 459f
                  lui          ra, 641323
                  and          s0, s5, s1
                  slt          a6, t2, a1
                  bge          s6, s0, 476f
                  lui          s11, 1038192
459:              add          zero, s0, gp
                  xori         t5, a6, 1791
                  add          s0, s9, t0
                  andi         ra, s10, -699
                  andi         s9, a7, -1875
                  bltu         a1, s8, 473f
                  and          t2, s7, t3
                  or           a4, s6, s3
                  blt          a6, t5, 482f
                  slli         tp, s6, 13
                  sub          a1, a1, t2
470:              auipc        t4, 1022164
                  blt          a6, s4, 487f
                  slti         s1, a4, 1165
473:              srli         s2, tp, 22
                  and          t3, s5, a5
                  or           t1, s10, s5
476:              bne          t6, t1, 485f
                  slt          a1, a4, s0
                  srli         a4, s10, 10
                  andi         a1, a6, -1446
                  sll          s4, a0, t1
                  sra          a4, s4, a2
482:              beq          t2, t5, 493f
                  sll          t2, zero, s2
                  and          t2, a2, a3
485:              ori          s1, s1, -1193
                  and          t6, a3, s3
487:              slli         s0, s3, 13
                  lui          a4, 149748
                  and          s4, t2, s3
                  sra          s5, t3, s9
                  bge          t1, a0, 510f
                  beq          s5, s7, 500f
493:              nop
                  andi         tp, s4, -1744
                  slli         s3, s11, 27
                  lui          ra, 47366
                  srai         s2, zero, 1
                  addi         s4, t0, -129
                  sltu         s8, t6, s5
500:              bgeu         gp, s8, 511f
                  sra          zero, s10, ra
                  sltiu        t5, t1, 488
                  bltu         zero, s6, 522f
                  blt          a1, s7, 520f
                  add          t6, tp, sp
                  sltiu        t0, a0, -37
                  and          tp, gp, a7
                  slli         tp, t5, 0
                  sltiu        s0, s0, 1138
                  auipc        s8, 487785
                  xor          a0, s9, s3
                  la           s1, sub_1
                  addi         s1, s1, -939
                  slt          s3, s3, t3
                  sub          t4, s10, a2
                  blt          s7, a2, main_j2 #branch to jump instr
                  sltiu        a1, t3, 1577
main_j2:          jalr         t1, s1, 939 #jump main -> sub_1
                  blt          t4, s3, 522f
                  ori          a6, s10, -1682
                  auipc        s0, 403643
510:              srai         t1, s8, 8
511:              and          t3, s7, a5
                  beq          a3, s1, 527f
                  sltu         a6, s7, t2
                  srl          s5, s6, s4
                  srli         s10, t1, 5
                  slt          s10, t3, a3
                  slti         a7, ra, -1038
                  add          t0, s8, t1
                  srli         s5, s9, 12
520:              bltu         s8, zero, 531f
                  srai         sp, tp, 7
522:              sub          t2, t2, t1
                  sra          s3, t6, a4
                  sltu         s4, s1, t1
                  nop
                  srl          t4, a5, s3
527:              srl          s2, a2, s11
                  slti         a1, s8, 1534
                  or           tp, tp, s0
                  auipc        tp, 896696
531:              auipc        a5, 866141
                  xor          s3, s8, s0
                  addi         s5, s0, -737
                  and          s10, t1, s11
                  add          t4, s10, t5
                  srai         a7, s6, 6
                  addi         t3, s3, -882
                  sra          ra, t4, a7
                  add          s1, tp, t1
                  sltu         ra, s0, s5
                  sltiu        t3, t5, -1548
                  sltiu        s4, s1, -1174
                  addi         ra, gp, -682
                  auipc        s9, 607522
                  xori         a7, a6, 1388
                  ori          sp, s6, -1294
                  auipc        s3, 581549
                  srai         a7, t6, 9
                  auipc        t2, 976449
                  bltu         s1, a0, 553f
                  addi         s0, ra, -454
                  slt          a0, s2, tp
553:              bltu         t0, t4, 562f
                  beq          s3, a1, 562f
                  or           a1, s9, t1
                  andi         t1, a6, -1866
                  xor          s5, gp, t3
                  lui          s1, 1019018
                  bgeu         t2, s11, 562f
                  slti         t6, ra, -1217
                  or           tp, s8, a4
562:              sltu         a7, t6, gp
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            and          t2, a6, s0
                  nop
                  andi         a7, sp, 656
                  nop
                  ori          s3, t4, -454
                  addi         s7, s7, -48
                  sra          s6, a0, tp
                  lui          t0, 355200
                  addi         s6, zero, -1838
                  xori         s11, a6, -1368
                  sw           t1, 4(s7)
                  ori          t6, s6, -1573
                  sll          sp, t0, s10
                  and          s8, a1, s5
                  andi         a7, a6, 621
                  sub          s5, s6, s9
                  bgeu         tp, t0, sub_4_j7 #branch to jump instr
                  slli         s10, a0, 9
                  slli         a1, t6, 30
                  srli         gp, gp, 9
                  srai         s11, a0, 9
                  lui          t4, 356329
sub_4_j7:         jal          t1, sub_7 #jump sub_4 -> sub_7
                  la           a4, sub_6
                  slti         a0, s6, -1175
                  srli         s5, a1, 15
                  slt          s4, zero, s1
                  and          s6, a5, a6
                  lui          a5, 824707
                  slt          s9, t1, ra
                  sra          t5, sp, tp
                  sub          s5, a4, s5
                  addi         a4, a4, -169
                  beq          ra, t5, sub_4_j8 #branch to jump instr
                  addi         s0, a2, -269
                  and          t3, s7, tp
sub_4_j8:         jalr         t1, a4, 169 #jump sub_4 -> sub_6
                  lui          t0, 622588
                  la           t3, sub_6
                  lui          ra, 111753
                  lui          t1, 911882
                  addi         t3, t3, 599
                  bge          gp, ra, sub_4_j9 #branch to jump instr
                  sub          a1, t4, s1
                  sltu         tp, t2, s6
                  or           s1, ra, ra
                  auipc        sp, 665164
                  nop
                  sll          s1, s9, s4
                  slti         t6, s5, -1088
sub_4_j9:         jalr         t1, t3, -599 #jump sub_4 -> sub_6
                  sltiu        s6, s11, 1483
                  or           s11, a5, s5
                  sltu         t2, a0, s11
                  sll          gp, zero, s6
                  srl          s5, a2, s10
                  xori         tp, s4, 1571
                  bgeu         s10, a4, 14f
                  sltu         t4, t4, a6
                  nop
                  xori         s2, s0, -1482
                  andi         t6, tp, -260
                  and          a7, s1, s5
                  srl          ra, s10, t0
                  bltu         a6, a1, 28f
14:               nop
                  andi         s2, a1, 1240
                  bltu         a6, t1, 21f
                  xori         t2, t6, 309
                  auipc        t1, 838250
                  slli         sp, t2, 16
                  xori         s6, a2, -427
21:               blt          a0, s10, 32f
                  bltu         t2, s8, 33f
                  and          t0, s3, ra
                  blt          s3, zero, 32f
                  nop
                  xori         t3, t1, 1649
                  bltu         a3, a6, 46f
28:               xor          a5, t5, s2
                  addi         tp, a0, 826
                  slt          a1, a0, t6
                  slli         s1, sp, 9
32:               slli         s8, s1, 16
33:               srl          s8, s8, s2
                  xor          a1, t0, t5
                  xor          s6, a7, a7
                  or           t3, a3, t2
                  sltiu        a6, s8, -1367
                  addi         s4, s8, -757
                  bltu         s0, s0, 51f
                  beq          s2, a5, 52f
                  addi         s10, a4, 690
                  bltu         sp, s0, 57f
                  beq          s3, t2, 60f
                  andi         zero, t0, -555
                  lui          s1, 294518
46:               sub          a7, gp, a3
                  blt          a6, s11, 64f
                  andi         t2, t4, 277
                  xor          tp, t5, s2
                  bne          a7, a6, 60f
51:               bgeu         s7, sp, 71f
52:               xor          ra, a4, s0
                  slti         zero, t5, 1586
                  sltiu        s2, gp, 1795
                  bgeu         a3, s7, 56f
56:               slt          s10, a6, a2
57:               auipc        t4, 173808
                  srai         t6, ra, 7
                  sltu         a1, s4, a5
60:               sub          s1, a2, s1
                  andi         ra, a7, 516
                  sub          t2, s2, a6
                  andi         a1, s4, -1731
64:               add          tp, s10, a0
                  or           a6, s5, a6
                  or           t4, s0, a3
                  slli         a4, s7, 12
                  sub          a5, t4, s7
                  slli         s2, s9, 9
                  bne          sp, sp, 73f
71:               srli         t5, a4, 16
                  srl          a0, s11, s5
73:               srai         a5, s6, 16
                  ori          a1, sp, 729
                  lui          a1, 759508
                  sltiu        s8, s3, 564
                  lw           t1, 4(s7)
                  srl          gp, t6, t6
                  addi         s7, s7, 48
                  srai         s6, ra, 15
                  xor          s3, a2, t2
                  or           t2, a5, t3
                  sra          s3, s1, tp
                  sra          s3, s11, s1
                  andi         a1, s10, 818
137:              addi x9, x6, 1
137:              jalr x9, x9, 0
sub_7:            ori          a5, a7, 1740
                  srai         a4, s6, 3
                  nop
                  bne          s9, t2, sub_7_stack_p
                  srl          s3, s5, s6
                  add          s1, s3, s4
sub_7_stack_p:    addi         s7, s7, -24
                  add          s11, t3, tp
                  slt          a6, t3, a7
                  sw           t1, 4(s7)
                  xor          t0, zero, t1
                  srli         s11, a7, 23
                  slti         s2, t1, -444
                  andi         t3, s6, -1120
                  nop
                  slti         s1, a2, 119
                  sltiu        a6, a1, -1267
                  slli         s3, s11, 4
                  and          zero, s4, a7
                  la           t4, sub_9
                  andi         t1, s2, -343
                  addi         t4, t4, 516
                  slt          s6, tp, t2
                  nop
                  bltu         t3, a6, sub_7_j13 #branch to jump instr
                  srli         tp, s0, 10
sub_7_j13:        jalr         t1, t4, -516 #jump sub_7 -> sub_9
                  la           s3, region_1+969 #start riscv_load_store_rand_instr_stream_3
                  srli         s5, s7, 17
                  addi         s8, s11, 771
                  xori         s1, a0, 1087
                  sub          t6, s3, s11
                  xori         gp, s9, -1365
                  add          a1, t6, sp
                  lui          s8, 808832
                  auipc        a7, 544532
                  sb           t1, 11(s3)
                  srli         t0, s6, 19
                  lui          t1, 4451
                  srli         zero, s3, 7
                  sll          s8, ra, s9
                  lbu          a6, 9(s3)
                  lbu          a0, 10(s3)
                  slti         s8, t3, -321
                  ori          s8, t2, 596
                  sra          t1, a1, s4
                  sb           s9, -11(s3)
                  sltiu        zero, s9, 1922
                  sltiu        a0, s8, 1266
                  slti         s8, t0, 1606
                  addi         t1, t0, 1294
                  auipc        t2, 575208
                  slti         gp, s4, -998
                  slt          s4, t0, s6
                  srai         t6, s6, 9
                  lb           a7, 4(s3)
                  lb           t3, 11(s3)
                  addi         s10, s8, 1896
                  xor          t0, t2, s0
                  slti         gp, s6, -1929
                  sb           a6, 4(s3)
                  sltu         s1, s7, gp
                  sb           s11, -14(s3)
                  xor          zero, t0, s7
                  lh           s10, 3(s3)
                  lb           s2, -1(s3) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_1+1820 #start riscv_load_store_rand_instr_stream_2
                  lbu          s5, 9(s4)
                  lhu          s9, -2(s4)
                  lb           a7, -1(s4)
                  sb           t3, -5(s4)
                  lb           gp, 15(s4)
                  add          t2, s5, a7
                  sh           a2, 4(s4)
                  sh           s9, -14(s4)
                  sltiu        s0, t2, -1246
                  lhu          s3, 2(s4)
                  sll          a4, t3, s7
                  sltu         s6, a4, a0
                  lbu          zero, -15(s4)
                  lb           sp, 9(s4)
                  lui          sp, 495385
                  srli         s11, s6, 31
                  sb           t0, -7(s4)
                  addi         t6, s1, -1562
                  lbu          s5, 5(s4)
                  sll          s9, a6, s11
                  andi         s5, s2, -915
                  lhu          gp, 14(s4)
                  lui          a4, 549844
                  sub          t1, s7, a5
                  andi         tp, s5, -1422
                  sra          a1, gp, t5
                  lw           s3, -12(s4)
                  sw           s1, 0(s4)
                  srl          a7, t4, s1
                  add          s8, t2, t6
                  lb           zero, 9(s4)
                  lb           t2, 9(s4)
                  lw           sp, 16(s4)
                  andi         s3, a4, 1189
                  sb           a5, 6(s4)
                  sh           sp, 6(s4)
                  sll          t0, tp, s1
                  lui          s3, 490260
                  nop
                  sb           s0, 9(s4)
                  lh           t4, 8(s4)
                  lb           t0, -13(s4) #end riscv_load_store_rand_instr_stream_2
                  la           t6, region_1+1123 #start riscv_load_store_rand_instr_stream_4
                  or           t5, a2, s4
                  or           a7, s11, s7
                  slt          t1, s3, t1
                  sub          a0, a5, s10
                  xori         s6, a6, 1885
                  sh           t1, 795(t6)
                  lbu          s2, -93(t6)
                  ori          s0, t4, -716
                  sb           a7, -32(t6)
                  sub          t0, a7, s2
                  lw           a6, -787(t6)
                  lbu          s3, 461(t6)
                  srai         s3, zero, 23
                  lb           s10, -76(t6)
                  sh           s0, 195(t6)
                  srli         sp, s5, 1
                  srai         t1, gp, 13
                  sltiu        s4, s0, -1714
                  or           s10, t0, s10
                  xor          s11, s5, a1
                  sh           t5, -421(t6)
                  sb           tp, 247(t6)
                  and          a4, sp, a6
                  lh           sp, -573(t6)
                  srai         tp, t5, 18
                  sb           t5, 653(t6) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1417 #start riscv_load_store_rand_instr_stream_0
                  lb           s4, 270(sp)
                  lb           s5, -292(sp)
                  lb           s11, 530(sp)
                  sub          a0, t2, t3
                  lhu          a5, 565(sp)
                  slt          s2, t0, sp
                  sltiu        s1, s3, 1173
                  lbu          s0, -434(sp)
                  lbu          t5, -30(sp)
                  lh           a6, 7(sp)
                  srai         zero, s6, 7
                  lb           s1, -1320(sp)
                  xori         s4, s1, 1783
                  lh           s10, -503(sp)
                  lw           a4, -493(sp)
                  sb           a5, 220(sp)
                  sub          zero, s11, zero
                  lw           zero, 407(sp)
                  sra          s3, zero, s10
                  sb           s11, -580(sp)
                  lhu          zero, -401(sp)
                  sb           a3, 162(sp)
                  sll          s4, t4, tp
                  sb           t5, -652(sp)
                  addi         s1, t3, -143
                  lb           s8, 160(sp)
                  lb           t4, -1048(sp)
                  lb           t5, -1144(sp)
                  xori         a7, s11, -931
                  sb           t1, -1390(sp)
                  sb           a2, -641(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+1957 #start riscv_load_store_rand_instr_stream_1
                  lhu          s0, -169(t3)
                  sw           a4, -233(t3)
                  sb           s3, 28(t3)
                  lhu          s3, -235(t3)
                  xori         s0, s2, 232
                  lb           t6, -122(t3)
                  slti         t2, sp, -1902
                  sb           a4, -188(t3)
                  sb           a7, -39(t3)
                  slli         t1, s6, 6
                  sra          t6, s8, t5
                  sub          s2, s2, t1
                  sltiu        t5, a4, -232
                  srai         zero, s3, 1
                  slti         zero, ra, 1130
                  sb           t4, -86(t3)
                  ori          tp, s9, 150
                  and          s3, t5, s3
                  slt          s4, ra, s5
                  lhu          sp, -195(t3)
                  sh           tp, -141(t3)
                  lhu          s0, 31(t3)
                  lb           a6, -128(t3)
                  lb           s10, -146(t3)
                  lb           s8, 39(t3) #end riscv_load_store_rand_instr_stream_1
                  la           s10, region_1+1861 #start riscv_load_store_rand_instr_stream_7
                  lh           a4, 9(s10)
                  or           t5, a0, s9
                  sb           s6, -2(s10)
                  sltiu        t0, t3, 1194
                  sra          a1, a7, a0
                  sh           tp, 11(s10)
                  sw           gp, 7(s10)
                  srl          t4, zero, gp
                  srl          t0, t5, a7
                  sb           s7, 12(s10)
                  lb           a6, 9(s10)
                  sb           t4, 16(s10)
                  lb           s8, 12(s10)
                  add          t4, s8, s5
                  lb           a4, 12(s10)
                  lb           s2, 10(s10)
                  sb           tp, 1(s10)
                  slti         s2, t3, 1452
                  addi         a0, s10, -407
                  sll          sp, s0, t6
                  lw           a4, 7(s10)
                  sh           t1, 5(s10)
                  lb           s6, -2(s10)
                  sb           zero, 16(s10)
                  ori          s9, a7, 1051
                  srli         t5, s0, 17
                  slti         a6, t2, 578
                  nop
                  xor          t6, s5, tp
                  sub          s11, s10, s8
                  xori         s9, s3, 517
                  sltiu        t1, t5, 753
                  or           a5, s2, s4
                  lbu          a5, 7(s10)
                  sh           t2, 3(s10)
                  lb           s4, -10(s10)
                  sw           zero, -5(s10)
                  slli         a5, a2, 8
                  sw           a3, 3(s10)
                  sb           t2, 14(s10)
                  lb           s9, 8(s10)
                  srli         t1, s10, 13
                  lb           t6, -16(s10)
                  lbu          tp, -6(s10)
                  sb           s9, -14(s10)
                  xori         t4, s11, 1642
                  lh           t3, -3(s10)
                  nop
                  sb           s2, -10(s10)
                  and          a6, t2, s8
                  lbu          t3, -1(s10)
                  sh           a3, 1(s10) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+310 #start riscv_load_store_rand_instr_stream_6
                  lb           a7, -4(sp)
                  lbu          t0, -1(sp)
                  sll          t4, a5, a6
                  lbu          a5, 1(sp)
                  sltiu        s1, ra, 1746
                  sra          t0, s2, t1
                  or           tp, s11, s11
                  lbu          ra, -1(sp)
                  lbu          s8, -8(sp)
                  sh           t0, -8(sp)
                  sll          s6, s11, a3
                  sltu         t2, s4, a6
                  sb           t0, 6(sp)
                  addi         a1, t2, -171
                  andi         s4, s0, -308
                  lui          t2, 816578
                  sh           a0, 2(sp)
                  lb           t0, 2(sp)
                  xor          t4, t0, t3
                  lb           t3, 7(sp)
                  lb           s10, -3(sp)
                  sb           t1, 1(sp)
                  sub          s9, s6, s11
                  sh           s2, -12(sp)
                  addi         a6, sp, 261
                  sltu         a6, a7, s7
                  lb           s11, 3(sp)
                  add          t0, s11, tp
                  srl          a1, s9, a3
                  add          a6, t1, a7
                  lbu          s9, -5(sp)
                  lbu          t3, 15(sp)
                  sub          t6, tp, t3
                  sltiu        s10, s5, 361
                  addi         a7, s9, 122
                  xori         t4, ra, -1724
                  lhu          gp, -6(sp)
                  lui          s8, 86032
                  lw           t2, 2(sp)
                  slt          t6, a4, a6
                  lhu          s6, -14(sp)
                  sb           t2, 16(sp)
                  sh           s4, 8(sp)
                  lbu          t0, 10(sp)
                  sh           s11, 2(sp)
                  add          s10, s5, gp
                  sb           a5, 5(sp)
                  sb           s7, -5(sp)
                  lh           a4, 2(sp)
                  auipc        a1, 494673
                  lbu          t5, -9(sp) #end riscv_load_store_rand_instr_stream_6
                  sub          a1, s9, s7
                  sltiu        s4, s5, -485
                  slt          s3, a3, t4
                  xor          s11, a7, a3
                  sltu         ra, t2, s3
                  add          s0, a2, tp
                  auipc        t3, 1027730
                  slli         s8, zero, 29
                  srli         s1, t1, 11
                  sub          a7, s7, s4
                  bge          s4, t0, 14f
                  blt          a5, t3, 28f
                  nop
                  auipc        t6, 480439
14:               sll          a5, s0, s9
                  nop
                  slti         s3, s8, -602
                  slt          s1, a6, zero
                  slt          a4, t3, t3
                  srl          t0, s0, t3
                  srl          a7, a4, a0
                  sll          a4, s11, a0
                  lui          t1, 271099
                  andi         a1, s7, -405
                  sra          s4, t6, s10
                  sra          t5, a5, tp
                  sltu         t1, t0, t5
                  addi         s2, s4, -1673
28:               sltiu        a5, a0, 1009
                  xor          a7, ra, tp
                  and          s3, t0, s6
                  bgeu         a3, sp, 48f
                  andi         s6, s3, -988
                  nop
                  srli         a4, t1, 9
                  slt          gp, a0, tp
                  ori          s4, s6, -1797
                  addi         t1, s7, -874
                  bltu         t5, s5, 55f
                  bge          s1, s7, 42f
                  xor          tp, a3, t4
                  sll          t0, a3, a1
42:               srai         a6, s1, 7
                  bge          s7, s9, 56f
                  auipc        s3, 197273
                  beq          s4, s2, 51f
                  andi         s0, sp, 766
                  nop
48:               slti         s5, a0, 351
                  srl          t6, a0, t2
                  srl          s10, s9, s10
51:               slt          t5, a0, t4
                  srai         s11, a5, 21
                  xor          s1, s6, s6
                  blt          s6, s8, 55f
55:               sltiu        t6, t1, 1758
56:               sll          s0, a3, s8
                  slt          a5, s6, ra
                  slli         s1, s1, 23
                  or           t4, t5, s5
                  xori         s6, s8, -1203
                  add          t5, s5, a4
                  addi         s9, a3, -885
                  bgeu         zero, t0, 65f
                  xor          a5, t0, s5
65:               slli         s4, s10, 27
                  sltu         s4, a1, s11
                  sra          s0, ra, gp
                  srai         s10, t4, 6
                  nop
                  andi         a7, s3, 427
                  bge          a4, a1, 88f
                  srli         sp, s11, 17
                  beq          s10, s1, 85f
                  slli         a5, s0, 14
                  srai         s8, s2, 18
                  addi         t1, s4, 1774
                  addi         t3, s4, -610
                  blt          ra, a5, 89f
                  slti         s0, gp, 1893
                  add          s0, s4, s2
                  srai         t2, a1, 18
                  and          s4, s10, t0
                  blt          t2, t5, 96f
                  sub          a7, ra, a1
85:               srli         a5, a3, 20
                  sub          s2, t1, s11
                  auipc        s10, 849685
88:               lui          s1, 121422
89:               slli         ra, a1, 20
                  sll          gp, t3, t3
                  sltu         gp, a2, s10
                  xor          t1, a1, a7
                  andi         t3, s5, 974
                  andi         tp, t4, 1831
                  sub          a1, s1, s5
96:               bltu         a5, a3, 98f
                  srli         ra, gp, 12
98:               sra          a7, a0, a1
                  sltiu        t3, t6, 769
                  srli         t6, s2, 14
                  sub          sp, a2, s3
                  xori         a6, a2, -1857
                  sub          sp, a3, s5
                  srli         s9, s0, 9
                  add          s9, s5, s5
                  srl          tp, t2, s4
                  or           s0, t3, s6
                  xori         a4, t2, -997
                  bge          s6, t6, 116f
                  auipc        t0, 152712
                  lui          t3, 87793
                  andi         s8, a4, -33
                  sub          gp, a4, t2
                  slt          s0, s5, t4
                  xori         a6, tp, -686
116:              sra          t2, s5, s5
                  srai         s5, s1, 10
                  slli         s10, a1, 5
                  bne          s10, t0, 126f
                  srli         s8, a4, 24
                  add          sp, s11, s4
                  nop
                  addi         s8, s8, 1478
                  sltiu        a1, s1, 1161
                  srai         s0, t3, 27
126:              xori         s3, ra, 437
                  ori          t5, a0, 1348
                  ori          a4, t4, -1520
                  bgeu         zero, zero, 136f
                  srl          s5, gp, t6
                  auipc        a6, 58203
                  or           a7, gp, t4
                  slt          a0, t6, t2
                  srli         t5, a3, 30
                  addi         t4, ra, 620
136:              slli         a7, t2, 17
                  beq          t2, a2, 157f
                  blt          t3, t5, 140f
                  ori          sp, a5, -429
140:              sltiu        a1, s5, 415
                  srli         sp, s10, 8
                  or           s0, t5, a5
                  slli         t2, zero, 22
                  lui          tp, 792355
                  sltu         gp, t2, sp
                  ori          s10, s9, 1475
                  sltiu        a5, s2, -326
                  blt          t1, s7, 149f
149:              add          s3, s1, sp
                  sra          s8, s8, sp
                  addi         sp, t6, -1417
                  bgeu         t2, a4, 160f
                  auipc        s5, 1005136
                  andi         t1, tp, -952
                  sra          s11, sp, t3
                  slti         tp, t4, -1346
157:              add          s3, t3, a1
                  blt          a7, t3, 167f
                  sll          s9, s7, sp
160:              lui          s4, 188343
                  bne          a2, t4, 167f
                  bne          t0, t4, 163f
163:              srli         t6, t3, 3
                  sltu         s6, t4, a7
                  srai         t5, s9, 17
                  slli         s9, t1, 28
167:              lui          a4, 25073
                  beq          a6, t4, 175f
                  and          s4, s0, s6
                  auipc        s1, 925271
                  sll          t3, s11, s11
                  ori          s3, s3, -1537
                  nop
                  nop
175:              bltu         a2, a0, 193f
                  auipc        a5, 420329
                  sll          s6, gp, t0
                  and          s4, s7, s5
                  bge          sp, s7, 186f
                  or           a1, zero, a4
                  lui          s10, 363369
                  or           a4, a0, s3
                  or           s11, s7, tp
                  bne          t3, s2, 190f
                  slli         gp, a6, 10
186:              srai         s2, s2, 13
                  addi         t3, zero, 1456
                  sra          s9, t4, s1
                  slli         t3, s2, 18
190:              bge          s5, t1, 207f
                  bge          s3, t4, 193f
                  bge          a2, a0, 196f
193:              beq          s5, s5, 200f
                  srli         s10, s3, 29
                  xor          a6, s6, t3
196:              slti         a0, s0, 875
                  sltu         t3, a5, s8
                  addi         a7, tp, -398
                  andi         t2, sp, 891
200:              bgeu         t0, a7, 207f
                  sll          tp, t1, t4
                  bge          t5, zero, 219f
                  sll          a1, s6, gp
                  bge          t2, s0, 205f
205:              blt          s6, s4, 214f
                  beq          t2, s7, 223f
207:              lui          s2, 949625
                  lui          zero, 861600
                  bne          a0, s10, 215f
                  sub          sp, t5, t2
                  and          t1, s9, s9
                  or           a1, s4, s10
                  xori         ra, t2, -808
214:              addi         s4, sp, 932
215:              slti         t4, a3, 1150
                  bltu         s6, t2, 222f
                  xor          gp, s11, ra
                  srli         s0, t4, 21
219:              slt          s4, s0, s0
                  bge          gp, zero, 222f
                  bgeu         a2, t2, 227f
222:              srli         s1, s9, 17
223:              bgeu         a7, s0, 243f
                  la           t6, sub_10
                  or           zero, s7, tp
                  addi         t6, t6, -385
                  bne          a5, t6, sub_7_j12 #branch to jump instr
                  lui          s3, 80518
                  slli         s1, s2, 15
                  sltiu        t4, a2, -1392
                  srli         s10, t3, 8
                  slli         tp, gp, 20
                  slti         zero, s11, 675
sub_7_j12:        jalr         t1, t6, 386 #jump sub_7 -> sub_10
                  bltu         s1, gp, 241f
                  srli         a6, a6, 18
                  bgeu         a4, a5, 233f
227:              lui          s0, 20667
                  andi         t4, gp, 274
                  slti         sp, tp, -809
                  andi         s2, s11, -1730
                  addi         t3, s9, 1759
                  bltu         a0, a4, 239f
233:              slti         s5, a2, -324
                  bge          a1, zero, 236f
                  nop
236:              lui          s6, 753339
                  sra          s6, a0, a3
                  bltu         gp, a2, 239f
239:              bne          a3, s0, 240f
240:              srai         s10, tp, 12
241:              sltu         s11, s1, s0
                  and          s5, t1, a2
243:              addi         a7, s11, 369
                  or           s6, s10, s5
                  srli         s10, a5, 24
                  srli         a6, t6, 1
                  bne          s10, a5, 260f
                  sltu         a0, a7, s8
                  sltiu        s9, tp, -190
                  slti         s5, s2, 1474
                  sltu         s5, a7, a4
                  add          a7, s9, s2
                  srl          a7, s9, t0
                  srli         tp, zero, 11
                  or           s8, s11, t6
                  xor          t0, tp, s6
                  xori         t6, s8, 1300
                  or           t1, a0, a7
                  xor          sp, t2, a3
260:              xor          s11, t2, t1
                  blt          s7, a6, 263f
                  lui          a4, 550798
263:              sra          ra, gp, a1
                  bgeu         s3, a4, 281f
                  srli         t3, sp, 4
                  slli         ra, s5, 19
                  sub          t4, a4, t0
                  slt          t2, t0, a6
                  srli         s9, s9, 5
                  srl          t4, t1, t5
                  andi         a6, s6, 1949
                  slt          tp, zero, s3
                  xori         a6, s3, 1224
                  bge          a1, tp, 281f
                  and          tp, a0, a0
                  lui          s8, 236803
                  xori         s2, s2, -319
                  xor          tp, t3, tp
                  andi         t0, t3, 1128
                  srl          s1, s11, s11
281:              srli         a7, s4, 28
                  xori         gp, s11, 1803
                  srli         sp, a5, 12
                  blt          s7, s2, 302f
                  or           t1, a0, s10
                  or           s4, ra, gp
                  auipc        t5, 300966
                  and          gp, t1, s6
                  or           ra, a1, a1
                  addi         a1, s11, -1416
                  bne          t4, a1, 308f
                  bltu         s0, a7, 303f
                  sub          a6, a7, t6
                  sltu         a1, s7, s7
                  srli         s6, a4, 7
                  slt          t4, s11, s9
                  and          ra, s4, s11
                  srai         s1, s3, 2
                  nop
                  sll          tp, a5, s1
                  slti         a1, s1, -1767
302:              blt          s11, s4, 310f
303:              sltu         ra, s10, t4
                  slli         t4, s8, 24
                  and          s6, s8, t0
                  bltu         t1, a2, 318f
                  bge          sp, zero, 310f
308:              sltu         s4, a3, ra
                  sltiu        s9, t3, -1722
310:              ori          s10, s9, -1344
                  and          t0, s9, s9
                  lui          t2, 684125
                  sltu         t5, tp, s6
                  bltu         ra, a5, 327f
                  bne          s1, a1, 317f
                  blt          s11, ra, 318f
317:              beq          s0, s6, 321f
318:              sra          s0, s5, a4
                  or           t5, a6, s8
                  beq          s3, s7, 333f
321:              auipc        s8, 294535
                  or           t1, s5, a0
                  add          s11, s8, s3
                  add          t2, sp, s5
                  slti         t2, t1, -1560
                  sra          s2, t3, sp
327:              andi         s1, t5, 1384
                  xor          s0, t5, t1
                  slti         s11, a0, 2003
                  srai         t4, s4, 8
                  or           a0, s1, ra
                  auipc        tp, 146256
333:              sra          s6, ra, s4
                  srl          t6, tp, s7
                  srl          t3, s4, sp
                  lui          a6, 314448
                  srli         tp, t5, 12
                  addi         s0, s10, 977
                  lui          a0, 127020
                  xori         s3, s10, 2040
                  or           s0, sp, t5
                  slli         zero, a5, 3
                  slti         ra, s6, -1681
                  srai         s0, t6, 3
                  sra          t5, sp, s5
                  sll          sp, t3, t6
                  bltu         a1, a5, 354f
                  bge          t1, s10, 354f
                  andi         s8, a1, -577
                  lui          zero, 614089
                  slti         s0, t0, -1248
                  srl          a5, t1, t3
                  beq          t5, a1, 370f
354:              blt          s11, a3, 371f
                  add          t5, a3, t2
                  sub          s2, sp, t4
                  bge          a7, s10, 374f
                  slli         tp, t2, 28
                  andi         tp, s6, 215
                  xori         zero, t4, 864
                  ori          a7, s7, 1964
                  sltu         s3, t2, s1
                  auipc        t2, 358205
                  addi         t3, a6, -349
                  sltiu        a0, t1, 950
                  andi         sp, t5, 477
                  ori          t0, t2, -872
                  xor          a1, t0, a6
                  bgeu         s4, ra, 375f
370:              xor          sp, s8, a3
371:              sll          a4, a6, s3
                  sltu         a6, s1, a0
                  xor          zero, t1, a5
374:              add          s5, ra, sp
375:              or           a1, tp, a6
                  ori          t0, t5, -1523
                  lui          s8, 580958
                  sll          s5, s1, t6
                  beq          t4, t5, 396f
                  andi         gp, t4, 412
                  slt          s11, s3, s4
                  auipc        s0, 273213
                  bgeu         a7, s8, 386f
                  srai         t3, a7, 10
                  bne          s11, s9, 394f
386:              lui          gp, 865613
                  addi         a0, a0, -1745
                  add          zero, s5, s3
                  slti         t1, t3, -2045
                  slt          t6, a4, sp
                  lui          t3, 195742
                  sltu         t0, s2, gp
                  sub          a1, gp, t0
394:              srl          s9, s5, a6
                  beq          t3, s2, 403f
396:              blt          t2, a0, 397f
397:              slti         s3, s0, 16
                  sub          t5, s6, t6
                  bne          t6, a3, 400f
400:              bgeu         tp, a3, 412f
                  bltu         s3, a3, 407f
                  nop
403:              slt          tp, s0, a0
                  ori          a6, zero, 1123
                  srai         a4, t5, 13
                  blt          s8, s9, 408f
407:              blt          t6, t5, 414f
408:              andi         s1, ra, -981
                  sltiu        sp, a5, -621
                  slli         a5, a5, 29
                  slli         sp, a3, 17
412:              auipc        s4, 843275
                  bgeu         a4, sp, 420f
414:              addi         s9, a5, 588
                  beq          a7, s6, 428f
                  sub          zero, a2, tp
                  bge          s2, s9, 418f
418:              bne          a3, s0, 429f
                  slli         a5, a6, 30
420:              and          a7, s2, s2
                  ori          s9, t0, 1582
                  srl          a7, t0, zero
                  bge          s2, s2, 430f
                  and          a5, a6, a7
                  auipc        s1, 61629
                  slt          s2, a4, s9
                  slti         a5, s1, -222
428:              bltu         t0, t5, 430f
429:              srl          gp, s8, s6
430:              add          s6, a7, s2
                  blt          t5, s11, 449f
                  bgeu         t1, s9, 439f
                  and          t2, t6, a3
                  blt          t6, a4, 436f
                  and          zero, a1, gp
                  la           sp, region_0+408 #start riscv_load_store_rand_instr_stream_5
                  sll          a4, s2, ra
                  sltiu        s11, t3, -69
                  ori          t1, a2, 833
                  ori          s3, s1, 1573
                  lbu          s1, 1(sp)
                  lbu          a7, 15(sp)
                  srli         s3, gp, 25
                  slti         t2, tp, 587
                  sltiu        tp, t3, 770
                  lui          s0, 906653
                  nop
                  auipc        t6, 934758
                  addi         s9, t0, -1305
                  sw           t4, -12(sp)
                  sw           gp, 8(sp)
                  sll          t6, s0, a0
                  xor          tp, t0, a3
                  lbu          s8, 1(sp)
                  andi         t4, a2, -62
                  sub          t6, a2, t5
                  lbu          s3, -2(sp)
                  lb           s5, -10(sp)
                  sra          s4, t6, a5
                  sub          s8, s3, a4
                  and          s8, tp, t4
                  slti         a4, t1, 1827
                  xori         t0, a5, 1485
                  slt          s5, s11, sp
                  lbu          t6, -15(sp)
                  lb           a6, 3(sp)
                  lbu          a6, 9(sp)
                  sb           a1, -5(sp)
                  sw           s7, 8(sp)
                  lb           t5, -2(sp)
                  and          t3, s6, tp
                  auipc        t0, 78920
                  srli         s0, zero, 3
                  sltu         s3, t4, a4
                  addi         a7, s7, -742
                  srli         s10, s6, 14
                  sb           t2, 7(sp) #end riscv_load_store_rand_instr_stream_5
436:              bltu         s11, s1, 456f
                  sll          a0, s0, s9
                  auipc        t6, 692458
439:              slli         s1, s1, 24
                  nop
                  bltu         s4, s6, 458f
                  sll          zero, s4, s0
                  bge          t0, gp, 445f
                  srli         t6, a0, 5
445:              sll          sp, s1, a7
                  ori          a6, t1, 1413
                  beq          a3, t3, 460f
                  auipc        a5, 104566
449:              slt          t2, a1, s11
                  bge          s8, t0, 463f
                  bne          ra, a0, 468f
                  sltiu        s8, zero, 1964
                  sub          a6, a5, t5
                  slti         s5, s7, -1749
                  auipc        tp, 913297
456:              auipc        a0, 931697
                  sltiu        a6, a2, -1583
458:              bge          s9, s4, 470f
                  xori         t1, t2, -1353
460:              or           gp, sp, s7
                  xori         s6, s4, 357
                  add          s10, sp, s2
463:              auipc        t0, 213503
                  andi         a1, t3, 1622
                  ori          s9, a6, 1496
                  srl          t6, a6, a7
                  lui          t3, 229498
468:              beq          a6, a7, 470f
                  bltu         s9, t4, 487f
470:              bne          t0, s4, 477f
                  sltiu        s11, a2, -66
                  add          s2, s1, a0
                  bge          a3, gp, 481f
                  lui          a4, 320887
                  andi         t2, a2, 639
                  sra          t3, s10, ra
477:              sub          a7, a6, a0
                  srl          s8, s1, s1
                  andi         a0, ra, 1206
                  andi         s4, tp, -94
481:              and          s2, t6, a6
                  sub          a1, s9, t0
                  auipc        s10, 720489
                  slli         t2, s2, 27
                  sub          t4, s1, ra
                  and          s3, a4, t6
487:              bgeu         s7, a1, 489f
                  xori         a4, t4, -2024
489:              bltu         s3, a1, 495f
                  bne          a3, s10, 491f
491:              andi         t0, a3, -713
                  beq          s4, sp, 493f
493:              srli         sp, a7, 15
                  xori         t3, t2, -370
495:              xori         t6, t5, 61
                  srli         s9, a2, 29
                  srli         t4, gp, 12
                  ori          s8, s11, 1496
                  xori         a6, s11, 1791
                  nop
                  and          s10, s7, s9
                  blt          sp, a2, 509f
                  beq          s2, s4, 510f
                  or           s5, ra, t6
                  srai         t1, s9, 13
                  auipc        a7, 539860
                  lui          a5, 263958
                  sub          a1, s7, a4
509:              sltu         ra, t1, s8
510:              and          gp, s3, s9
                  slli         t5, t6, 16
                  sll          s0, s1, s9
                  srai         s3, a3, 26
                  or           s5, a6, t1
                  addi         a4, t5, 1866
                  blt          a2, a1, 519f
                  andi         t6, gp, -1700
                  srli         zero, a3, 12
519:              sra          t4, s11, s8
                  sub          a1, s11, a1
                  sltu         a1, ra, s10
                  ori          zero, tp, 1713
                  ori          s10, t2, 1872
                  blt          a5, gp, 544f
                  blt          s11, s8, 534f
                  beq          a4, a2, 543f
                  sltu         sp, s3, s8
                  sub          s3, a5, a6
                  bltu         s7, s7, 531f
                  bne          a4, a5, 547f
531:              srl          ra, s1, gp
                  sll          a0, zero, s11
                  sltiu        s3, a6, 1957
534:              slli         s5, s7, 11
                  sra          a1, t6, s11
                  add          t3, a2, zero
                  sltu         t6, s6, t2
                  addi         s6, a2, -1830
                  sltiu        t3, s9, 1747
                  nop
                  srl          t3, t3, t5
                  or           gp, a0, sp
543:              bge          t5, zero, 550f
544:              xor          a6, a2, a3
                  sll          s5, a3, a2
                  addi         s5, t5, 753
547:              slli         s4, t0, 30
                  srai         t0, s3, 23
                  slt          s1, s7, s2
550:              bge          a1, a2, 556f
                  bne          tp, s7, 562f
                  addi         s1, s3, -1429
                  bne          a6, gp, 554f
554:              lui          t3, 145961
                  sra          s1, gp, s1
556:              sub          t1, s4, zero
                  bge          t2, t6, 574f
                  slt          a5, a1, a3
                  blt          zero, s10, 566f
                  beq          zero, s6, 577f
                  auipc        a0, 64115
562:              addi         a6, s9, -1739
                  or           tp, a4, s0
                  bgeu         t6, s5, 570f
                  and          a5, s2, s1
566:              bne          s0, s5, 570f
                  srai         s3, s0, 18
                  srl          s9, s7, s5
                  auipc        s4, 1040880
570:              srli         s9, t5, 30
                  bge          a4, s9, 572f
572:              ori          a5, t6, -606
                  addi         s3, a3, 295
574:              nop
                  xor          ra, a7, sp
                  srl          s6, a1, s7
577:              xori         t3, s7, -633
                  srai         a6, s9, 1
                  bne          s3, s8, 591f
                  nop
                  auipc        a6, 263039
                  ori          ra, a3, -1141
                  lui          a5, 884350
                  sub          t4, a0, s7
                  slli         s10, s3, 1
                  addi         t5, s3, -1585
                  andi         s4, s4, 1791
                  xor          a4, a4, gp
                  ori          a6, a3, 252
                  sltu         s2, s11, s10
591:              ori          s10, a0, -844
                  srl          t1, s2, a5
                  srai         a6, a4, 11
                  lui          a7, 645309
                  sltu         sp, s3, s6
                  srai         a6, s4, 18
                  ori          ra, s10, 1327
                  sltiu        t6, zero, 1567
                  sra          a7, a4, s2
                  slli         a7, s9, 9
                  xori         sp, t6, 309
                  and          t6, a2, zero
                  srli         a5, s10, 27
                  xori         s6, s11, -1061
                  sra          s9, s1, s1
                  add          a6, s4, s3
                  bne          t4, a4, 613f
                  beq          t5, t4, 615f
                  andi         a0, a6, -1845
                  xori         sp, s9, -1861
                  lui          t1, 658548
                  srl          t3, t3, zero
613:              lui          t4, 645593
                  nop
615:              addi         t6, s0, 1355
                  xor          s6, tp, zero
                  xor          a7, a0, ra
                  sra          zero, t2, ra
                  add          a6, zero, a4
                  blt          s7, s0, 624f
                  xor          s4, a4, t5
                  srli         a6, a3, 10
                  ori          sp, s4, 1336
624:              xor          t5, t6, ra
                  bgeu         t6, a3, 642f
                  bge          s6, t3, 629f
                  srli         a4, s11, 29
                  or           a6, s5, s7
629:              auipc        a0, 391651
                  slli         s0, t2, 30
                  bne          t2, t2, 648f
                  bgeu         t6, s5, 652f
                  andi         a1, s0, 1791
                  auipc        s1, 539870
                  sra          s11, a6, s1
                  slli         t3, a7, 14
                  blt          t5, s2, 654f
                  auipc        a1, 986126
                  sltu         s5, zero, t1
                  beq          s1, s2, 642f
                  xor          a1, t3, t5
642:              bge          s6, a3, 643f
643:              bge          a5, s0, 656f
                  srli         s2, s2, 9
                  lui          s9, 914697
                  slli         ra, a1, 25
                  auipc        s9, 524587
648:              nop
                  sltiu        tp, t6, 413
                  srl          s9, a7, s5
                  slli         a5, s6, 21
652:              slli         t0, s8, 1
                  srl          s3, tp, s11
654:              xori         t2, s8, -973
                  slti         t1, zero, 818
656:              srai         t4, t6, 8
                  xori         gp, t5, 317
                  bne          s6, t4, 659f
659:              slti         t2, a2, 2
                  slli         s3, s3, 19
                  srli         t5, t2, 30
                  lui          a5, 825519
                  bltu         a6, a7, 671f
                  bgeu         s4, t4, 666f
                  slt          s9, s1, s6
666:              srai         a6, s2, 15
                  bgeu         s7, s11, 674f
                  bgeu         t1, t3, 674f
                  add          s10, zero, s9
                  addi         sp, a1, 673
671:              blt          s8, s6, 678f
                  sra          s5, zero, s2
                  lui          s6, 95039
674:              andi         tp, a0, 549
                  lui          a5, 1047015
                  slli         s1, t1, 30
                  xori         ra, t4, 713
678:              sltiu        a1, a2, -1398
                  nop
                  sltu         s0, a7, s10
                  bltu         a3, ra, 690f
                  beq          zero, s5, 695f
                  sltiu        s11, s4, 315
                  srli         a4, s8, 19
                  blt          a3, s1, 687f
                  bgeu         t3, s11, 703f
687:              bgeu         a6, t6, 704f
                  bne          a7, s11, 695f
                  srli         s4, t6, 28
690:              slli         s6, a5, 16
                  xor          s1, a6, a7
                  sll          a4, gp, t4
                  bne          s1, t5, 699f
                  andi         a6, a5, -1779
695:              sltiu        t2, sp, 182
                  blt          t0, zero, 707f
                  bne          a2, s6, 704f
                  add          gp, s0, t2
699:              srli         s3, s7, 25
                  addi         s9, s8, -1041
                  and          zero, s3, t6
                  slli         t4, sp, 23
703:              sltu         s5, s9, s7
704:              slti         s0, s1, 1058
                  sltiu        s1, a5, 1441
                  and          s6, a2, a2
707:              srai         ra, s11, 14
                  auipc        s9, 198215
                  auipc        sp, 1031117
                  xor          t1, a2, s2
                  sltu         s0, s3, s9
                  srl          t2, a5, s7
                  nop
                  bltu         a2, s1, 716f
                  srai         t5, tp, 23
716:              add          gp, s8, a5
                  addi         s11, ra, -1101
                  sub          t2, t3, a3
                  add          t0, t1, s2
                  xori         t0, s3, -123
                  or           s0, s9, s5
                  bltu         s8, a2, 740f
                  bltu         a2, t5, 730f
                  srl          t1, a7, s8
                  bge          a4, tp, 729f
                  and          a0, s2, s0
                  blt          s1, s6, 729f
                  bge          t6, ra, 740f
729:              and          s4, a2, s1
730:              bge          a5, t1, 736f
                  srai         t1, s5, 16
                  slt          a1, s6, s5
                  lui          tp, 233815
                  lui          a6, 422005
                  bne          a2, t6, 742f
736:              or           s6, t6, ra
                  blt          s10, t0, 754f
                  xori         s1, a0, 1487
                  sra          s8, s1, s2
740:              bgeu         t4, t2, 757f
                  slt          sp, s11, tp
742:              lui          gp, 150224
                  xori         zero, t0, -1581
                  slli         s9, s0, 0
                  sll          a1, sp, a2
                  srli         sp, t3, 17
                  sltu         s1, s9, s8
                  srai         s10, zero, 17
                  andi         s5, s5, 62
                  xor          a7, a5, t6
                  bge          gp, a6, 752f
752:              beq          t5, s11, 753f
753:              sltu         a7, t3, a5
754:              bge          s7, a5, 761f
                  andi         s3, tp, -906
                  xor          t0, s9, a5
757:              srli         tp, a5, 28
                  bltu         s6, a3, 775f
                  blt          s1, a1, 772f
                  bgeu         ra, a5, 778f
761:              sltiu        t4, s4, 523
                  srl          s6, t0, t1
                  nop
                  bgeu         sp, a5, 781f
                  xor          gp, t1, a4
                  add          s1, tp, s2
                  bne          ra, s1, 769f
                  slt          t3, s11, t5
769:              xor          t4, tp, a1
                  srai         s8, s1, 26
                  xori         s5, a3, -1527
772:              slli         t0, t5, 4
                  bge          s7, t3, 780f
                  srli         t5, sp, 18
775:              srai         t2, a7, 28
                  beq          s4, s7, 783f
                  sltiu        s9, gp, 2036
778:              auipc        s2, 650249
                  slt          sp, zero, tp
780:              bge          t1, s4, 797f
781:              sra          s9, t2, s6
                  sltiu        t3, a7, -1078
783:              srli         gp, s6, 10
                  bgeu         a0, sp, 787f
                  and          s10, s8, s6
                  beq          s10, s7, 792f
787:              slt          s6, s1, s11
                  auipc        s11, 76873
                  slli         s5, a6, 10
                  xori         t6, s6, 36
                  srli         zero, t6, 26
792:              sltiu        t2, s0, 1243
                  bgeu         s4, a2, 799f
                  xori         s0, a3, -951
                  bge          t4, s0, 808f
                  beq          ra, a7, 804f
797:              slt          s2, a0, s6
                  bltu         t4, a0, 809f
799:              auipc        s8, 530133
                  beq          t5, s6, 809f
                  ori          gp, a4, -445
                  xor          t2, s5, s6
                  add          s2, s11, s5
804:              srl          t6, s11, a3
                  srli         s2, a5, 17
                  ori          a0, t6, -1114
                  sltiu        s5, t2, -1150
808:              bne          a7, t2, 809f
809:              ori          s0, ra, 1335
                  blt          s5, gp, 830f
                  srli         t4, a5, 22
                  sltiu        s8, a4, -721
                  bltu         a3, t1, 815f
                  addi         s9, s11, -1833
815:              xori         t2, s1, 1465
                  xori         s2, t0, 1407
                  blt          t6, s10, 819f
                  srli         t1, s9, 23
819:              slli         t4, a0, 16
                  ori          t1, s6, 745
                  add          s9, gp, a6
                  nop
                  blt          a3, a0, 830f
                  bltu         zero, s9, 837f
                  sltiu        t0, t6, -981
                  srai         s10, s11, 20
                  srl          a7, s11, zero
                  slli         sp, s7, 11
                  or           s9, t0, s11
830:              srai         a7, gp, 30
                  sltu         a4, t4, a5
                  addi         t4, s4, 725
                  add          s10, t5, t6
                  bne          ra, s9, 836f
                  bge          s11, t1, 846f
836:              sltu         zero, s0, s11
837:              slti         s5, s3, -1020
                  xori         s9, gp, 1050
                  beq          a3, s1, 856f
                  bgeu         s11, t5, 847f
                  srl          t5, a0, s8
                  andi         a4, a4, 574
                  sub          s2, t3, s11
                  slt          a4, t4, a3
                  bne          s10, t3, 863f
846:              bltu         sp, a0, 852f
847:              nop
                  ori          a4, a3, 2047
                  add          a0, sp, t5
                  addi         a0, a4, -1894
                  sll          a5, s9, t3
852:              slti         a4, s11, 544
                  bgeu         zero, s5, 857f
                  auipc        a0, 597589
                  sll          gp, t5, a6
856:              addi         s4, s7, 1504
857:              or           s2, t5, t0
                  srl          t1, s4, t6
                  slli         zero, s7, 7
                  andi         t2, a7, 412
                  beq          zero, sp, 863f
                  beq          t1, s4, 869f
863:              andi         t6, s9, -115
                  bne          t4, a3, 881f
                  bgeu         gp, s11, 871f
                  and          t6, ra, s7
                  nop
                  slti         s6, s2, -453
869:              srai         tp, s2, 24
                  blt          a3, sp, 871f
871:              bge          s11, gp, 878f
                  blt          t0, s7, 874f
                  blt          t5, t0, 890f
874:              lui          a7, 380362
                  slli         a6, t3, 8
                  ori          t4, gp, 1220
                  sltu         s2, t4, t3
878:              bne          s0, zero, 886f
                  auipc        s11, 797120
                  slli         zero, a0, 3
881:              or           s9, a0, zero
                  bltu         t3, s5, 894f
                  bne          zero, t2, 896f
                  sll          a4, a7, t3
                  sub          gp, zero, s5
886:              or           s1, t3, t6
                  addi         s4, t4, 629
                  add          t2, a5, a0
                  or           s9, s8, s10
890:              or           s2, zero, t0
                  bltu         zero, a3, 911f
                  nop
                  sra          tp, t2, s3
894:              sltu         s5, s5, s10
                  blt          s5, s0, 896f
896:              sll          sp, s3, sp
                  beq          s9, s3, 914f
                  addi         s0, s1, -1007
                  andi         t5, a6, -1338
                  bgeu         s3, sp, 917f
                  andi         tp, a1, -472
                  lui          t0, 463929
                  sra          a1, a5, t6
                  slti         t0, s7, 2010
                  xor          gp, t5, a4
                  sltu         s4, a0, a7
                  slli         a1, a6, 15
                  srl          a7, a5, tp
                  lui          s1, 916330
                  bne          ra, s11, 913f
911:              nop
                  bltu         s8, t1, 913f
913:              or           zero, s9, s4
914:              add          s1, a1, s10
                  xor          s0, a1, s3
                  srli         t0, a0, 10
917:              bge          t6, s6, 919f
                  nop
919:              beq          s9, a0, 928f
                  nop
                  nop
                  add          s9, ra, s2
                  addi         s8, s0, 284
                  beq          s4, t0, 931f
                  sltu         t0, sp, t4
                  bge          a6, s7, 932f
                  xori         s11, s6, 623
928:              and          s2, s10, t3
                  slli         a5, t1, 15
                  auipc        s2, 248823
931:              sll          t4, tp, s0
932:              xori         t3, a5, 158
                  srai         t2, s7, 23
                  sltiu        t1, a6, -39
                  or           a7, s9, s1
                  beq          s2, s3, 953f
                  sub          sp, s7, a1
                  sub          t1, s8, s8
                  xori         s3, s3, 58
                  and          s3, s9, s7
                  sub          s4, s5, a7
                  sll          s4, s2, a2
                  srai         a0, t0, 21
                  sra          a4, t3, s1
                  addi         gp, s7, -180
                  slti         s4, t0, -1194
                  sltiu        gp, s3, 1104
                  sltu         s9, s2, t3
                  or           s3, ra, s8
                  srli         a0, a6, 26
                  and          s5, tp, t0
                  srl          s6, s3, s11
953:              sra          t4, a5, s3
                  bne          a5, s3, 958f
                  sub          a0, s6, s4
                  or           a0, s11, t5
                  bge          a3, a4, 958f
958:              slt          sp, ra, tp
                  slti         zero, t2, -1778
                  slt          a0, sp, s4
                  sltu         t3, s3, a2
                  ori          sp, t3, 360
                  xor          sp, s0, s8
                  sub          s5, s3, a2
                  sra          zero, a0, a7
                  bltu         zero, a4, 967f
967:              lui          s3, 519105
                  sltiu        a7, s4, 1881
                  sltiu        tp, s4, 552
                  nop
                  lui          s4, 409238
                  and          s4, s9, s6
                  and          s5, t4, s4
                  sra          a5, t4, t1
                  andi         t2, ra, 1673
                  xor          t6, a5, a1
                  bne          s1, t5, 994f
                  lui          s5, 584035
                  srli         t5, s11, 6
                  sltiu        tp, a7, 852
                  andi         s11, s9, 262
                  nop
                  slt          s0, gp, gp
                  srli         tp, s8, 23
                  ori          a5, s0, -1467
                  and          s3, ra, s3
                  lui          s3, 323019
                  blt          t4, a7, 1005f
                  and          t1, t5, s11
                  srli         s5, s3, 12
                  ori          s2, a2, 1450
                  lui          a0, 562562
                  xori         tp, t1, 159
994:              sub          a0, t1, a2
                  nop
                  xori         s10, a1, -851
                  xor          a0, t5, t4
                  addi         t5, a7, 1264
                  and          s8, t5, a1
                  beq          a7, a2, 1001f
1001:             bltu         s9, a7, 1008f
                  andi         a6, zero, -713
                  bgeu         gp, s3, 1009f
                  sll          zero, a5, s5
1005:             xori         t0, a2, 563
                  bltu         t4, a4, 1013f
                  blt          zero, s1, 1009f
1008:             blt          gp, gp, 1021f
1009:             xori         a1, a1, -1862
                  bgeu         s5, a3, 1012f
                  xor          s9, t6, s1
1012:             blt          t5, a7, 1015f
1013:             auipc        s10, 677522
                  srl          t0, t1, zero
1015:             blt          s3, s1, 1026f
                  auipc        gp, 291255
                  xor          tp, s4, s3
                  andi         s4, a6, -1835
                  andi         s6, s11, -1489
                  ori          t2, a4, -1759
1021:             slli         s8, s3, 7
                  xori         a1, a0, 564
                  or           s11, gp, a2
                  add          s2, s4, a1
                  beq          s7, gp, 1032f
1026:             sll          t5, a3, zero
                  auipc        a6, 499276
                  xor          sp, s1, gp
                  srai         s1, s1, 4
                  bge          a6, t3, 1038f
                  slli         s6, a3, 25
1032:             sll          a6, s9, a1
                  slli         s3, s9, 6
                  slt          s9, gp, s9
                  slt          sp, t6, a2
                  sltu         a0, s7, s4
                  and          t2, s8, a2
1038:             srai         a6, s10, 22
                  srai         s4, s5, 10
                  slt          a6, tp, a6
                  and          a7, t0, a0
                  slt          t6, t6, s2
                  srli         a5, t1, 13
                  lui          a1, 764581
                  nop
                  sltiu        s5, a4, 893
                  sll          a5, a0, s9
                  bne          a4, gp, 1054f
                  nop
                  slt          sp, sp, s5
                  andi         a7, s5, -1152
                  and          t6, a6, t2
                  bgeu         t0, t1, 1062f
1054:             bgeu         t6, a2, 1063f
                  srai         zero, ra, 10
                  auipc        t4, 513263
                  ori          a7, s9, 865
                  xor          s5, s1, t3
                  sltu         s8, s9, s1
                  xori         s4, s7, -1183
                  sltu         a6, t2, a2
1062:             sltiu        s1, gp, -1837
1063:             and          ra, a1, t1
                  add          s0, s4, t2
                  slti         t5, t6, -984
                  sra          a0, s2, t2
                  srli         t0, a0, 20
                  lw           t1, 4(s7)
                  addi         s7, s7, 24
                  lui          t6, 932305
                  auipc        a7, 670189
1424:             addi x8, x6, 0
1424:             jalr x8, x8, 0
sub_6:            blt          s9, ra, sub_6_stack_p
                  srli         s2, a4, 19
                  sltu         sp, s4, zero
sub_6_stack_p:    addi         s7, s7, -8
                  sw           t1, 4(s7)
                  and          t4, a6, a5
                  la           s1, region_1+806 #start riscv_load_store_rand_instr_stream_10
                  lb           t1, 622(s1)
                  xori         a5, a1, -186
                  sb           t0, -339(s1)
                  lhu          s9, -354(s1)
                  sll          s2, a5, t0
                  sltu         s2, t3, ra
                  sra          s3, s5, a1
                  lb           s11, 497(s1)
                  sh           s1, -336(s1)
                  sh           a1, -340(s1)
                  xor          s11, zero, t2
                  add          t3, a7, t1
                  slt          gp, tp, t3
                  sh           a3, -446(s1)
                  lbu          s5, 289(s1)
                  lbu          s5, 108(s1)
                  xor          gp, t5, s11
                  sb           sp, 507(s1)
                  lb           s4, 1035(s1)
                  lbu          a0, 828(s1)
                  lbu          tp, -484(s1)
                  sb           s5, 132(s1)
                  lb           a0, -411(s1)
                  or           t3, s10, gp
                  lbu          s2, 1017(s1)
                  lb           s2, -362(s1)
                  lbu          t5, 467(s1)
                  auipc        s11, 707240
                  or           a7, s11, t2
                  sb           t0, 925(s1)
                  lhu          a0, -666(s1)
                  sll          zero, t6, s3
                  and          ra, s1, a1
                  lw           a6, -350(s1)
                  lbu          s3, 123(s1)
                  lhu          a7, 952(s1)
                  sb           t1, -475(s1)
                  sltu         t5, t2, a6
                  sltiu        t2, s8, 1936
                  sb           s8, -138(s1)
                  lb           a1, -313(s1)
                  sb           s11, 251(s1)
                  lhu          a7, 1076(s1) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+322 #start riscv_load_store_rand_instr_stream_5
                  lbu          a4, 485(sp)
                  lb           s2, 75(sp)
                  lhu          ra, 1230(sp)
                  sb           a0, 1469(sp)
                  sb           t4, 1651(sp)
                  lb           s5, 1290(sp)
                  lb           s1, 309(sp)
                  slli         t6, s8, 25
                  and          s8, s2, t1
                  lbu          tp, 975(sp)
                  and          a7, s5, ra
                  sltu         a5, t6, sp
                  ori          gp, s7, 1786
                  sh           a0, 1268(sp)
                  lbu          a6, 1399(sp)
                  slt          t0, s4, a6
                  lbu          a4, 1651(sp)
                  andi         s3, s2, 960
                  lb           s11, 1343(sp)
                  sb           s5, 1060(sp)
                  or           s10, a1, s5
                  sltiu        s4, s8, 123
                  lbu          t0, 464(sp)
                  srai         s8, t5, 14
                  lbu          s3, 195(sp)
                  add          t6, a5, tp
                  lbu          s6, 617(sp)
                  xor          a0, tp, a5
                  lb           t6, 1305(sp)
                  srai         a4, t6, 16
                  lb           a4, 1343(sp)
                  srl          s0, s11, s7
                  sltiu        s4, s0, -559
                  lui          gp, 486072
                  addi         s8, s3, -1500
                  sra          s5, a0, t0
                  sltiu        a1, s8, -1358
                  sb           s3, 1410(sp)
                  lb           s10, 910(sp)
                  sb           s11, 1642(sp)
                  sw           s11, 822(sp)
                  lb           s9, 1011(sp)
                  lb           s4, 351(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t0, region_1+1097 #start riscv_load_store_rand_instr_stream_4
                  andi         s4, t4, -1366
                  lbu          s8, 8(t0)
                  lw           t5, 7(t0)
                  lh           a4, 11(t0)
                  or           t4, s6, t6
                  sll          t1, ra, a6
                  sub          sp, zero, t2
                  sb           t5, -14(t0)
                  sh           t1, 7(t0)
                  slti         a7, t5, -1759
                  sh           s4, 5(t0)
                  addi         s6, t1, -123
                  lb           t4, -12(t0)
                  srai         t6, gp, 25
                  lbu          s8, -2(t0)
                  srai         sp, t2, 14
                  sb           s11, 14(t0)
                  sll          s6, a1, t6
                  xor          a0, a5, s10
                  auipc        t1, 546953
                  lbu          t4, 10(t0)
                  srl          a7, t4, a3
                  srli         t5, a5, 18
                  srai         s2, a5, 13
                  lw           tp, 15(t0) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1542 #start riscv_load_store_rand_instr_stream_11
                  sb           t6, 244(sp)
                  lbu          t0, 7(sp)
                  lbu          s6, 53(sp)
                  sub          s9, s3, a1
                  lbu          ra, -163(sp)
                  sll          s11, a3, s2
                  lbu          s5, 0(sp)
                  sb           a0, 176(sp)
                  sb           a7, 254(sp)
                  srli         s8, t0, 28
                  auipc        t0, 162224
                  srai         s3, sp, 28
                  sb           s7, 71(sp)
                  lb           ra, -147(sp)
                  auipc        t2, 100158
                  lh           a4, 80(sp)
                  slt          s0, ra, a3
                  lb           a1, -21(sp)
                  addi         s5, zero, 1055
                  slti         s0, zero, 179
                  sra          zero, t0, t0
                  xor          t6, gp, t3
                  lb           a4, 105(sp)
                  sb           s2, -82(sp)
                  lb           s4, -19(sp)
                  lbu          t2, -211(sp)
                  add          zero, a0, a6
                  srai         s11, a6, 18
                  lb           t5, 40(sp)
                  lbu          t4, -209(sp)
                  lb           s9, 224(sp)
                  ori          t6, zero, 1470
                  slt          s5, s11, a0
                  lb           s1, -65(sp)
                  ori          t1, ra, -149
                  sb           a7, 85(sp)
                  sb           t3, 164(sp)
                  srl          t2, ra, s1
                  lbu          tp, -173(sp)
                  sh           s8, 156(sp)
                  sll          s11, s1, s7
                  lbu          s9, -160(sp)
                  sb           gp, -151(sp)
                  slli         ra, tp, 1
                  andi         s11, t3, -1474
                  lb           t6, 223(sp) #end riscv_load_store_rand_instr_stream_11
                  la           gp, region_1+517 #start riscv_load_store_rand_instr_stream_3
                  lbu          s6, -15(gp)
                  sb           s5, 2(gp)
                  lhu          sp, 13(gp)
                  lhu          s11, 1(gp)
                  xori         s11, s0, -358
                  sb           s2, 3(gp)
                  srli         t2, tp, 13
                  lhu          s11, -11(gp)
                  lb           t5, -7(gp)
                  lh           s2, -7(gp)
                  xor          s8, a0, t1
                  lb           a7, 15(gp)
                  sltu         t5, s7, t6
                  lbu          s11, -4(gp)
                  srli         t6, s10, 14
                  nop
                  xor          s6, s9, s7
                  sltiu        s4, a6, 796
                  lbu          t0, 1(gp)
                  sw           a2, -9(gp)
                  andi         sp, a6, 1814
                  xor          ra, s0, s1
                  addi         t6, s3, -2021
                  lh           zero, 5(gp)
                  lbu          a5, -8(gp)
                  lh           s1, -15(gp)
                  xori         s10, s10, -751
                  sh           a0, -3(gp)
                  addi         ra, t4, 778
                  auipc        zero, 1025306
                  sw           s8, 7(gp)
                  lb           s2, -2(gp)
                  or           s5, a7, t2
                  sb           a6, 11(gp)
                  srli         t2, t1, 15
                  lui          t2, 924309
                  sb           a3, -8(gp)
                  and          a1, t6, t1
                  srli         t3, s7, 11
                  sh           s7, 1(gp) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_0+514 #start riscv_load_store_rand_instr_stream_6
                  lb           s6, 9(s1)
                  srai         gp, t4, 8
                  srai         zero, s8, 13
                  sh           a3, 4(s1)
                  addi         sp, s2, -333
                  sltiu        sp, s11, 167
                  slt          s3, s7, s1
                  lh           a6, 6(s1)
                  lbu          t5, 11(s1)
                  slt          s11, a5, s5
                  sub          t0, s9, a5
                  andi         s3, sp, 870
                  lhu          zero, -14(s1)
                  lbu          t5, -6(s1)
                  lb           t4, -1(s1)
                  sltu         s3, a5, s10
                  slt          s8, a4, zero
                  lb           s6, 12(s1)
                  sb           a4, 8(s1)
                  slti         a7, s0, 331
                  sh           s4, -8(s1)
                  sb           s0, -9(s1)
                  lbu          s4, -2(s1)
                  sb           s2, 13(s1)
                  srai         s8, t6, 21
                  lbu          t3, 9(s1)
                  lb           a6, -13(s1)
                  srai         a6, t1, 31
                  sb           s9, -3(s1)
                  lb           s3, -10(s1)
                  lbu          s2, 11(s1)
                  sll          t1, a3, s2
                  srli         t0, t5, 6
                  lbu          s10, 7(s1)
                  xori         ra, gp, -826
                  sb           ra, 2(s1)
                  lhu          s5, 8(s1)
                  add          t2, a0, s6
                  auipc        sp, 190249
                  sub          s11, s2, s11
                  lb           a5, -4(s1)
                  lhu          s10, -10(s1)
                  addi         t2, t0, -152
                  sb           a0, -11(s1) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1171 #start riscv_load_store_rand_instr_stream_1
                  sb           s10, 0(sp)
                  sh           s0, -1(sp)
                  lui          s2, 60647
                  lbu          tp, -3(sp)
                  sw           s0, -15(sp)
                  sll          s8, s1, t2
                  srai         s4, a4, 1
                  lbu          a0, -16(sp)
                  sb           a0, -16(sp)
                  lbu          t6, -12(sp)
                  sltiu        s0, s1, 324
                  nop
                  lbu          t3, -8(sp)
                  lb           s11, -11(sp)
                  lbu          t3, -4(sp)
                  sb           a3, -13(sp)
                  slt          t0, s11, tp
                  lb           a7, -4(sp)
                  ori          t5, t4, -2038
                  add          a5, a5, sp
                  lb           s3, 10(sp)
                  lbu          s5, 13(sp)
                  lbu          s8, 0(sp)
                  sb           s11, 10(sp)
                  andi         a0, s2, -1939
                  xori         a5, t0, 1671
                  sb           s8, -2(sp)
                  xori         a6, t3, -1552
                  add          s4, a0, a1
                  sll          t5, s10, s6
                  sb           a5, 7(sp)
                  srli         t1, t1, 26
                  slli         s0, s2, 10
                  sltu         a1, s2, s3
                  sb           s1, 0(sp)
                  lbu          t6, 4(sp)
                  slli         t4, a6, 21
                  andi         s3, t0, -462
                  sb           s11, -3(sp)
                  lbu          s9, 1(sp)
                  slti         a6, s5, -844
                  and          s3, zero, a0
                  sltiu        a5, s7, -112
                  sh           zero, -9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+338 #start riscv_load_store_rand_instr_stream_9
                  lui          zero, 601929
                  sltiu        a1, t2, -1449
                  nop
                  slti         t5, s10, 70
                  or           zero, s11, s1
                  sll          s8, s2, t1
                  lui          a4, 347946
                  or           a7, s9, t6
                  and          t1, t4, s5
                  lb           s11, 35(a0)
                  sh           ra, -66(a0)
                  lb           s6, 149(a0)
                  sh           ra, -42(a0)
                  sll          t0, a5, a5
                  slti         s5, s5, -836
                  lbu          t1, -231(a0)
                  sltiu        s11, s9, -886
                  lhu          s11, 192(a0)
                  sb           s0, 45(a0)
                  srl          t1, t5, a5
                  sub          s3, sp, s5
                  srli         a4, s1, 20
                  sltiu        a4, a3, -697
                  lh           t5, 214(a0)
                  slt          s6, tp, t3
                  sltu         t3, t1, s6
                  xor          t1, tp, s3
                  lb           sp, -19(a0)
                  lbu          s2, -170(a0)
                  slti         s10, a4, 869
                  sb           s5, 235(a0)
                  sb           s3, -89(a0)
                  lb           s8, -156(a0) #end riscv_load_store_rand_instr_stream_9
                  la           s9, region_1+1157 #start riscv_load_store_rand_instr_stream_12
                  sub          a1, a0, tp
                  lb           sp, 12(s9)
                  and          a1, t0, tp
                  nop
                  srl          s1, s10, s8
                  lbu          t1, 28(s9)
                  addi         a7, s10, -256
                  lb           s0, -50(s9)
                  lhu          zero, 17(s9)
                  slli         s10, s8, 12
                  nop
                  or           t3, s6, sp
                  lbu          s2, -40(s9)
                  lh           a0, 41(s9)
                  lbu          a7, -48(s9)
                  lbu          s11, -40(s9)
                  sub          tp, s1, s0
                  and          a1, s4, zero
                  sb           a3, 51(s9)
                  sb           s7, 2(s9) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1878 #start riscv_load_store_rand_instr_stream_7
                  andi         a1, a7, -47
                  sltiu        gp, s5, -1572
                  slli         s9, t1, 16
                  lhu          s5, 0(sp)
                  sltiu        s1, zero, -925
                  lh           a4, -216(sp)
                  sltu         s0, gp, zero
                  lbu          a6, 105(sp)
                  xor          s1, gp, t0
                  slt          s1, a6, s11
                  lhu          s9, -158(sp)
                  sub          t6, zero, t3
                  xor          a1, s9, a5
                  xori         a0, sp, -535
                  slli         s6, s0, 24
                  slt          a0, s8, s1
                  and          a7, t2, s9
                  sh           s1, -182(sp)
                  lb           t6, -11(sp)
                  lh           a1, -58(sp)
                  andi         s3, s0, 1981
                  slli         s3, tp, 14
                  slti         s9, s4, -1693
                  lb           s4, 91(sp)
                  sub          a1, t6, gp
                  xori         a1, s6, -1361
                  lh           ra, 50(sp)
                  sltiu        s9, sp, -1145
                  sw           t2, 14(sp)
                  slti         t2, t3, 861
                  sll          s6, t4, s9
                  sub          s5, a3, s9
                  srai         a0, gp, 8
                  lh           s4, -90(sp)
                  lbu          s11, 75(sp)
                  lb           s2, 67(sp)
                  lui          s4, 384969
                  sb           t0, -77(sp)
                  sub          s5, a5, a7
                  lbu          s10, 72(sp)
                  lb           zero, 111(sp)
                  sb           t2, -5(sp)
                  srai         s0, t4, 31
                  lui          gp, 889729
                  sb           sp, 88(sp) #end riscv_load_store_rand_instr_stream_7
                  bltu         s10, a0, 2f
                  blt          s6, s5, 3f
2:                slli         t3, a3, 28
3:                beq          s9, gp, 23f
                  srai         t5, ra, 13
                  srli         t3, zero, 28
                  sltu         s5, s2, ra
                  xori         a1, s5, -335
                  srl          t3, s9, s3
                  sub          tp, s8, s10
                  ori          t2, s3, 1406
                  andi         tp, t2, 1191
                  addi         s8, s0, -1849
                  add          s5, a0, a5
                  sub          t4, ra, a0
                  ori          sp, a7, 1286
                  slti         a6, t0, -1
                  xori         t1, sp, -206
                  blt          s0, sp, 38f
                  andi         s0, s10, 494
                  bltu         a6, s1, 40f
                  andi         a5, a7, 1691
                  or           sp, t6, a4
23:               lui          t2, 648867
                  xori         s2, s7, 1738
                  srl          a4, t6, a1
                  bne          tp, s7, 29f
                  bltu         sp, s8, 37f
                  xor          gp, s5, t6
29:               blt          t1, s0, 36f
                  beq          a5, t5, 42f
                  ori          s9, gp, 1051
                  ori          ra, t2, 467
                  bne          a7, a6, 38f
                  nop
                  auipc        a4, 857425
36:               slli         s3, s5, 6
37:               addi         s2, s0, 274
38:               beq          a5, a5, 58f
                  bge          s3, a1, 43f
40:               add          s4, sp, s10
                  bltu         t0, s3, 55f
42:               sltiu        s3, sp, 1933
43:               srl          t2, a5, s4
                  bgeu         a3, s8, 58f
                  auipc        ra, 522006
                  slt          t5, s11, a0
                  addi         t3, a3, -868
                  slt          gp, a2, s4
                  slt          a4, a2, s10
                  srli         s10, t6, 30
                  srai         s1, sp, 2
                  ori          a4, t2, -69
                  or           a0, a0, t5
                  sra          a5, t3, t3
55:               ori          s1, t3, 1166
                  nop
                  and          s4, tp, a3
58:               beq          ra, s3, 59f
59:               blt          s8, a5, 65f
                  nop
                  beq          a3, s0, 81f
                  slt          t5, t6, s10
                  slt          t1, s6, s7
                  bne          a6, s2, 75f
65:               slli         a1, s11, 0
                  auipc        s1, 553249
                  or           sp, t0, a1
                  srai         s3, sp, 12
                  bne          gp, a4, 82f
                  and          a6, t3, s7
                  andi         s4, s5, -1189
                  blt          a1, t2, 83f
                  xori         s8, s3, 1632
                  bne          a2, s9, 78f
75:               ori          ra, a6, 1083
                  bgeu         s6, a5, 82f
                  srl          t0, gp, t5
78:               bltu         s6, t1, 84f
                  addi         t2, a7, -1428
                  auipc        s11, 456394
81:               ori          t4, s2, -401
82:               blt          a4, s3, 95f
83:               sra          s1, t0, s6
84:               ori          a0, t4, -1810
                  beq          gp, a6, 92f
                  bgeu         a3, t2, 92f
                  xor          s5, a1, a1
                  sll          gp, a2, s11
                  add          a5, t2, sp
                  slti         s8, s11, -265
                  bne          s0, zero, 106f
92:               srl          a0, s5, a0
                  sltiu        s2, s11, 1377
                  sltiu        s6, t4, -1760
95:               auipc        a6, 873339
                  addi         s0, s0, -1120
                  xori         s0, s3, -809
                  srl          s11, s0, s6
                  srli         s0, s8, 0
                  bge          a2, t1, 104f
                  bge          s4, t6, 121f
                  auipc        ra, 126899
                  sub          sp, t4, t1
104:              sltiu        zero, s3, 90
                  add          s2, zero, t5
106:              bge          a5, a0, 112f
                  sll          gp, gp, zero
                  beq          sp, gp, 114f
                  slli         t1, s1, 6
                  add          t4, t5, t0
                  sll          a0, t3, a2
112:              add          s8, a7, t3
                  ori          s4, s0, 1543
114:              xor          a6, s6, s6
                  auipc        a6, 844226
                  lui          a5, 66431
                  ori          gp, a5, 1382
                  slti         t0, s4, 1857
                  bne          a6, t1, 139f
                  bge          a0, a1, 121f
121:              sltu         s3, s1, sp
                  bgeu         t3, zero, 135f
                  xori         s9, a3, -825
                  slt          s8, a2, zero
                  sltiu        a5, s4, -1739
                  slt          t3, a4, a1
                  andi         sp, t2, 1907
                  nop
                  auipc        gp, 41709
                  ori          zero, a6, 1046
                  bgeu         a6, s6, 142f
                  slt          s4, a4, a3
                  srl          t5, t0, sp
                  beq          t2, a7, 154f
135:              slli         t0, t6, 17
                  ori          s10, s11, -1936
                  andi         s5, t6, 1315
                  srl          a4, a7, a6
139:              bge          t0, a0, 145f
                  blt          sp, s4, 144f
                  sll          t1, ra, a6
142:              blt          gp, s4, 153f
                  bltu         tp, t3, 145f
144:              xor          zero, sp, s1
145:              addi         a7, s10, 123
                  bne          zero, s1, 152f
                  and          a1, s10, t5
                  bltu         t5, tp, 168f
                  slti         a6, sp, -1929
                  srai         a5, s3, 13
                  blt          s10, a2, 156f
152:              sltu         s4, a0, t6
153:              srl          s9, a7, t3
154:              bge          a6, s8, 167f
                  lui          s11, 526637
156:              blt          sp, t2, 163f
                  andi         ra, s1, -1599
                  srl          s10, a5, s10
                  sltu         s5, t6, gp
                  blt          t2, a3, sub_6_j11 #branch to jump instr
                  sub          s4, a3, s2
                  sll          a6, tp, s5
                  add          t3, sp, s1
                  sll          tp, a6, ra
                  nop
                  xor          s5, sp, gp
sub_6_j11:        jal          t1, sub_8 #jump sub_6 -> sub_8
                  slli         zero, s7, 3
                  sub          a4, s1, a1
                  sub          s10, s2, s9
                  xor          ra, s1, ra
                  and          a1, t5, ra
163:              sltiu        s4, s10, -2036
                  srli         a1, t2, 6
                  sltiu        zero, s2, -1136
                  andi         zero, s9, -1675
167:              slli         s2, tp, 29
168:              andi         tp, s0, 13
                  and          s8, a6, s0
                  bne          a3, a0, 174f
                  slti         t1, s3, -1623
                  addi         s6, ra, -665
                  sltiu        s3, s0, 1766
174:              srl          t4, s7, s9
                  slti         s11, s4, -489
                  bltu         sp, a6, 179f
                  beq          s9, s6, 189f
                  or           t5, a7, t6
179:              sra          s10, s1, zero
                  srai         s8, tp, 3
                  srli         s8, t3, 24
                  slt          s8, s0, t1
                  bltu         tp, s9, 189f
                  and          t6, s8, sp
                  blt          s11, tp, 205f
                  sub          t0, ra, zero
                  sra          s4, s3, a6
                  slti         tp, s10, 1306
189:              blt          s3, a0, 196f
                  xori         gp, zero, 685
                  and          tp, s1, s5
                  bgeu         a1, zero, 206f
                  lui          t1, 422685
                  add          s2, a0, s2
                  bne          gp, a0, 215f
196:              beq          s2, tp, 198f
                  lui          gp, 352459
198:              srli         gp, a1, 9
                  srai         t3, t6, 9
                  and          s2, s0, s4
                  slt          s11, s4, s4
                  andi         tp, s5, -420
                  andi         s1, a3, -130
                  sltu         a1, t2, a0
205:              auipc        s1, 602371
206:              and          zero, t6, s6
                  add          a1, a0, t0
                  srai         s4, t5, 13
                  bgeu         s2, a5, 224f
                  srai         a0, t2, 11
                  srai         a5, a1, 6
                  ori          t1, t3, 556
                  bgeu         s9, s1, 219f
                  bltu         ra, t0, 218f
215:              slti         a0, s4, -1399
                  addi         a0, t5, -50
                  sltiu        s5, s0, -620
218:              nop
219:              lui          s5, 949172
                  auipc        s5, 675550
                  xor          t0, s1, a6
                  srl          s10, ra, a3
                  blt          a6, a3, 243f
224:              srli         s1, s3, 30
                  bne          s5, t1, 239f
                  lui          a5, 121632
                  and          t0, s8, s0
                  ori          sp, a2, -1815
                  or           t0, ra, t6
                  and          t5, s5, a6
                  andi         s4, t2, -636
                  lui          sp, 199217
                  nop
                  blt          t6, s11, 244f
                  nop
                  slt          t3, t4, tp
                  sub          a4, s4, a7
                  bgeu         s5, t4, sub_6_j10 #branch to jump instr
                  andi         t4, t0, 372
                  auipc        t5, 633979
                  add          t2, sp, s2
                  auipc        a6, 231965
                  xor          s2, a4, t3
                  auipc        s9, 452826
sub_6_j10:        jal          t1, sub_9 #jump sub_6 -> sub_9
                  slti         s9, ra, -1127
                  or           s6, s11, a7
                  beq          s3, s6, 248f
                  sub          s5, gp, t2
239:              bltu         t1, a3, 246f
                  srl          t5, s10, sp
                  bge          a5, t2, 255f
                  sltiu        ra, t1, 52
243:              srli         s0, s11, 10
244:              sltiu        s8, s5, -712
                  sltu         a4, s10, a6
246:              xori         s11, a3, 1716
                  bge          a3, a5, 251f
248:              bltu         t6, s1, 268f
                  sra          s6, a5, s3
                  beq          s5, s0, 252f
251:              and          t6, s8, a6
252:              ori          s5, a3, -1772
                  xori         t1, a5, 982
                  xori         s6, s6, 527
255:              beq          s0, t1, 258f
                  sub          s8, a6, t2
                  slt          sp, t0, s10
258:              srai         s8, a7, 4
                  and          a7, t4, s11
                  lui          s11, 124720
                  srli         t2, t5, 28
                  bgeu         t3, tp, 268f
                  srl          s1, s1, s0
                  bltu         a0, s4, 284f
                  bne          s5, t0, 277f
                  beq          s2, s7, 286f
                  la           sp, region_0+1132 #start riscv_load_store_rand_instr_stream_2
                  xor          s8, t1, s2
                  sra          zero, t0, s9
                  srai         a1, s5, 28
                  sw           s1, -16(sp)
                  ori          a0, s4, -762
                  andi         s11, a5, 456
                  addi         s9, a1, 1104
                  xor          gp, gp, t2
                  auipc        a5, 208667
                  auipc        t4, 216799
                  sub          s2, a0, a2
                  sub          a6, a5, gp
                  srli         ra, t1, 19
                  xori         s2, s5, -1211
                  sub          s10, a6, s4
                  xor          t2, s8, t1
                  lh           s11, -14(sp)
                  lb           a0, -4(sp)
                  sb           s7, 15(sp)
                  xori         s9, sp, 70
                  lb           s10, 9(sp)
                  sb           a3, -11(sp)
                  slt          s5, t0, s10
                  slli         s8, ra, 10
                  or           t1, t6, s4
                  add          s10, s8, s2
                  srl          a0, s8, s0
                  sub          s9, s8, a3
                  lh           s5, -4(sp)
                  lhu          a0, 10(sp)
                  lb           s5, 10(sp)
                  sw           t3, 8(sp) #end riscv_load_store_rand_instr_stream_2
                  bltu         a3, s5, 271f
268:              srli         t1, t2, 7
                  srai         t5, zero, 15
                  sltiu        s0, t1, 196
271:              addi         s5, gp, 1513
                  andi         t5, t3, -908
                  xori         t4, a0, -1156
                  andi         t6, s1, 1785
                  sub          tp, s0, s10
                  srli         s1, t6, 27
277:              xor          a1, a3, s4
                  andi         a6, t4, -1642
                  xori         s1, a1, 310
                  add          t1, t4, gp
                  add          s11, s9, tp
                  xor          t0, s0, a2
                  slti         zero, sp, 656
284:              bge          s6, t1, 286f
                  bge          s7, sp, 305f
286:              xor          gp, a4, s11
                  srli         ra, t0, 5
                  bne          a4, s7, 294f
                  addi         a6, s2, 599
                  addi         s5, a4, 1757
                  slli         gp, a1, 5
                  ori          t1, s4, 1804
                  bgeu         t4, a7, 308f
294:              nop
                  xor          t4, s2, gp
                  blt          tp, s0, 310f
                  sltu         t4, s2, t2
                  or           a0, s0, s10
                  auipc        a1, 897034
                  blt          s4, s6, 320f
                  add          a5, t0, a6
                  sub          a1, s5, gp
                  auipc        a6, 153125
                  auipc        tp, 423562
305:              sub          tp, t1, a4
                  beq          t6, s1, 316f
                  slt          a1, t6, sp
308:              and          t2, s10, s1
                  bltu         a6, gp, 314f
310:              blt          a2, tp, 314f
                  sltu         a5, a6, t4
                  bne          s4, s8, 318f
                  lui          t6, 133030
314:              or           t1, s6, ra
                  andi         ra, s8, -1473
316:              xor          s6, s2, s2
                  andi         t0, s2, -1139
318:              xori         a6, zero, 2007
                  nop
320:              auipc        t5, 595345
                  blt          s11, s1, 334f
                  lui          t2, 861947
                  bne          a3, s6, 324f
324:              sltu         a1, s10, s10
                  beq          t3, s3, 338f
                  and          t6, s4, a1
                  slt          s10, t5, s7
                  addi         t2, t2, -1075
                  bgeu         t4, tp, 335f
                  and          t6, a7, s8
                  srli         t2, s3, 31
                  sltiu        sp, t6, -490
                  auipc        a1, 798942
334:              xori         s4, s7, -1515
335:              sltiu        tp, a2, 2005
                  or           t5, t6, t6
                  add          sp, gp, s1
338:              slti         s4, s0, 1995
                  sub          t0, a3, a5
                  add          a1, a5, t1
                  slti         gp, a6, 1481
                  bge          s11, s8, 362f
                  lui          s10, 1023861
                  slli         s1, s3, 3
                  sltiu        s8, s2, -1295
                  auipc        t4, 824131
                  xor          t2, s4, s6
                  bge          gp, s6, 355f
                  and          s8, a0, ra
                  auipc        s2, 75596
                  bne          a4, s3, 362f
                  or           s4, zero, t5
                  lui          a1, 81044
                  bgeu         s1, s10, 360f
355:              and          zero, a2, s2
                  sltu         s0, t2, a0
                  xori         t5, t6, -319
                  slli         sp, s7, 21
                  xor          s2, t4, t5
360:              slt          s8, a6, zero
                  sll          tp, t6, s1
362:              sltiu        s9, t0, -1948
                  nop
                  beq          s3, t2, 378f
                  sub          t1, a3, a2
                  sra          s10, ra, s9
                  xor          sp, a7, t4
                  slt          s4, s6, a6
                  bge          t4, a4, 375f
                  sub          zero, a7, t0
                  add          s11, s5, s2
                  lui          s0, 288223
                  slti         a1, s2, -1242
                  nop
375:              or           t6, t6, a3
                  sll          t1, s9, t3
                  bge          sp, t2, 383f
378:              srli         t6, a5, 23
                  sra          s0, s5, s3
                  srli         a1, t2, 9
                  nop
                  sll          zero, a0, s6
383:              and          s4, t4, a1
                  and          s4, s4, s6
                  bltu         t4, a5, 392f
                  sll          t6, a0, a0
                  xor          gp, s0, s2
                  sltu         sp, a5, s4
                  srai         gp, s9, 8
                  srli         s5, a2, 7
                  slli         a0, a6, 16
392:              bgeu         a3, zero, 412f
                  xori         s4, t1, 1995
                  xori         sp, s0, -1112
                  or           s6, a6, ra
                  srli         t1, ra, 28
                  addi         sp, s2, 914
                  slli         s2, s7, 10
                  slti         ra, t0, 158
                  beq          s3, t3, 403f
                  srai         t0, s6, 16
                  nop
403:              addi         s11, s1, -1848
                  slt          s9, a4, ra
                  xor          t6, s0, t0
                  sra          s6, zero, s6
                  nop
                  add          zero, a6, a0
                  bge          s10, a7, 411f
                  xor          s6, s1, a6
411:              beq          s9, a4, 431f
412:              andi         s9, a2, -1235
                  ori          s6, s3, 175
                  sltu         a0, gp, zero
                  xori         sp, a3, -437
                  slli         t4, s1, 29
                  sltiu        t0, s0, 1898
                  bgeu         t5, s8, 419f
419:              sll          s6, a1, a6
                  nop
                  add          s9, s1, sp
                  blt          s11, s3, 442f
                  sll          sp, a4, t5
                  xor          a6, s9, a5
                  and          t4, s9, s6
                  sltiu        s11, gp, 52
                  ori          a5, a4, -574
                  blt          t6, a1, 441f
                  auipc        sp, 245006
                  addi         t4, t1, -1579
431:              bne          s6, zero, 437f
                  slti         s9, zero, 1454
                  xor          s10, s6, t5
                  and          s5, s6, a2
                  xor          a6, a6, s3
                  srl          t4, a1, a5
437:              slti         sp, a0, 1309
                  sll          t4, a1, t3
                  lui          a1, 120359
                  or           s3, t4, tp
441:              sub          s1, gp, a4
442:              xor          ra, t3, sp
                  and          s0, a7, a5
                  slli         t1, s10, 3
                  slt          t6, s0, s1
                  sll          s3, a2, a5
                  addi         t4, s2, -1905
                  addi         s3, gp, -660
                  bge          s1, s8, 469f
                  slti         a4, s9, -1829
                  sll          t1, a1, s3
                  ori          t4, t6, -1719
                  add          t1, t0, a3
                  ori          s4, a0, -1159
                  nop
                  slti         s11, t2, 725
                  bne          sp, a6, 477f
                  sub          s2, a2, s0
                  sltu         ra, tp, a6
                  slt          a5, sp, s6
                  bne          gp, t3, 465f
                  srl          t3, s5, s10
                  srli         sp, sp, 16
                  srl          ra, a1, t1
465:              blt          tp, s2, 485f
                  and          s9, ra, ra
                  srl          t6, t5, s5
                  ori          zero, a2, 1302
469:              blt          s6, ra, 482f
                  andi         a4, s0, 1951
                  addi         t1, s4, -1269
                  sub          t0, ra, s3
                  slli         a4, sp, 7
                  addi         a4, tp, -411
                  sll          s11, gp, t0
                  xori         s11, a7, -1836
477:              sll          s3, s4, s5
                  bne          s3, a2, 488f
                  sub          a6, gp, s8
                  slti         t0, s2, 951
                  and          t5, s2, s2
482:              beq          t2, s2, 497f
                  ori          s6, s5, -24
                  sub          gp, a5, s5
485:              nop
                  srai         a6, t1, 2
                  lui          a5, 393380
488:              beq          s11, t3, 494f
                  xori         gp, t0, 1352
                  xori         s9, t1, -1351
                  lui          a6, 381721
                  blt          s2, t2, 496f
                  andi         s5, a2, 318
494:              srai         t0, sp, 2
                  srl          t0, s2, a2
496:              auipc        t1, 938000
497:              sll          s9, s0, t6
                  slli         s10, sp, 8
                  ori          s8, s10, -1528
                  addi         t1, a0, -972
                  srl          t4, t5, s11
                  nop
                  bge          s2, t6, 505f
                  add          s5, s3, a3
505:              and          a6, s0, t1
                  sltiu        t2, a6, 1172
                  sltiu        s10, t2, 749
                  slli         s5, t0, 13
                  xor          t6, s9, gp
                  auipc        s9, 392757
                  srli         t4, a4, 18
                  sub          s3, sp, a3
                  sltu         s1, t4, zero
                  bge          s2, sp, 526f
                  add          t1, s5, t1
                  ori          t5, a4, -1291
                  slt          s6, s6, tp
                  beq          a7, t6, 522f
                  bltu         zero, s2, 530f
                  slli         a7, s10, 29
                  xor          t4, s1, s1
522:              sltu         t0, s7, s5
                  or           s2, t5, sp
                  bltu         s0, t5, 530f
                  bge          a5, s2, 536f
526:              sltiu        s1, t2, -961
                  xori         zero, s9, 1022
                  or           s3, s8, ra
                  bne          ra, sp, 534f
530:              sltiu        s6, s3, 1388
                  sltu         gp, a0, s0
                  bgeu         s2, gp, 546f
                  bgeu         s7, t6, 540f
534:              xor          t5, t1, a6
                  slt          t6, s10, t5
536:              srli         a7, t5, 11
                  bge          a2, a2, 543f
                  beq          s9, s0, 558f
                  srai         t5, s11, 28
540:              slt          s10, s6, a7
                  beq          s9, t3, 548f
                  and          zero, a1, s6
543:              bltu         a6, a7, 549f
                  add          s9, a6, a0
                  srli         t4, s5, 9
546:              bne          s0, s9, 547f
547:              lui          gp, 96806
548:              sra          a0, t2, tp
549:              srli         s6, s0, 6
                  lui          ra, 215036
                  or           s2, a0, s8
                  or           zero, a6, a2
                  sra          a5, t0, a5
                  nop
                  ori          s0, ra, 2021
                  nop
                  sub          a4, gp, t1
558:              bgeu         zero, tp, 571f
                  srli         s10, t4, 26
                  srai         a5, a6, 10
                  auipc        s3, 209134
                  bge          t2, s2, 576f
                  slt          gp, a3, t0
                  slti         s10, a2, 1368
                  addi         gp, t4, 1978
                  srli         t5, gp, 0
                  andi         s10, s7, 2015
                  srai         tp, a1, 29
                  blt          t5, a7, 573f
                  sll          a1, t6, t4
571:              bgeu         s7, a1, 583f
                  slti         a6, sp, -1635
573:              auipc        tp, 950991
                  srai         t5, t4, 16
                  bge          a5, t2, 586f
576:              auipc        t3, 598246
                  srai         ra, a2, 10
                  sra          s6, t1, a5
                  srli         zero, t5, 16
                  and          a1, s6, gp
                  sll          t1, s6, tp
                  or           s0, a1, sp
583:              srai         zero, s6, 10
                  and          s6, t5, s1
                  bge          t3, t1, 588f
586:              blt          s5, s5, 601f
                  bltu         a0, zero, 600f
588:              bne          s2, t6, 590f
                  bge          a2, a3, 596f
590:              nop
                  or           s2, s7, gp
                  bne          a4, sp, 596f
                  lui          s1, 403521
                  ori          s2, gp, -1215
                  nop
596:              xori         t6, tp, 1971
                  sub          tp, s1, s8
                  xori         s8, s6, 1792
                  srli         tp, t2, 18
600:              sltiu        a0, s2, -37
601:              blt          t6, s10, 605f
                  slli         s6, a6, 20
                  slti         s2, s2, 1422
                  srl          s5, s0, s8
605:              andi         a0, t4, -32
                  add          s1, s10, a2
                  xor          s0, s4, s0
                  sltu         s4, sp, a2
                  sltu         t0, t2, t2
                  srl          s8, t6, a3
                  bne          a6, t1, 622f
                  add          s0, a1, s2
                  xor          s1, tp, a4
                  slti         a4, s11, -1944
                  sub          t0, s4, a5
                  srl          t2, s0, t4
                  ori          t5, a6, 370
                  xori         t3, t5, -815
                  bgeu         s8, t2, 639f
                  bgeu         t0, gp, 626f
                  slti         s11, zero, 181
622:              slli         s9, t3, 17
                  and          s4, ra, s9
                  add          a7, a2, t6
                  xori         t5, zero, 1556
626:              sltu         a4, s7, s4
                  or           a1, s0, s4
                  srai         sp, s11, 24
                  sltu         s8, zero, s0
                  srli         t2, s11, 17
                  bge          t2, a7, 641f
                  lui          t3, 949254
                  and          t6, t2, t0
                  srai         s2, a3, 9
                  slli         t1, s10, 15
                  addi         a6, t2, -1471
                  sll          zero, a7, s9
                  sltiu        t4, s11, -1770
639:              bgeu         a0, a1, 645f
                  sra          t0, s4, s1
641:              and          s9, s10, t1
                  nop
                  nop
                  addi         t3, a4, -1333
645:              sltu         a1, s11, s3
                  bne          a0, tp, 660f
                  nop
                  andi         t1, a1, -460
                  slti         s5, a6, -1461
                  or           s1, t1, t3
                  bne          s1, t1, 671f
                  bge          a5, sp, 657f
                  auipc        a0, 380397
                  xor          s10, a7, t3
                  sltu         s4, s10, a0
                  slt          t0, s10, a0
657:              bne          s7, t6, 663f
                  sltiu        s3, s2, -1936
                  slli         a4, a7, 16
660:              sub          s5, t4, s4
                  and          s9, a0, t2
                  slt          t3, t6, s0
663:              srli         s8, s6, 29
                  addi         s6, ra, 900
                  slt          s4, a5, s5
                  srai         sp, s1, 14
                  nop
                  sra          s10, a6, a7
                  srai         s3, t0, 13
                  slt          tp, a4, t1
671:              blt          s11, s11, 691f
                  bltu         s10, a7, 692f
                  beq          t5, sp, 675f
                  nop
675:              bgeu         t5, a6, 695f
                  or           s3, a6, a5
                  xor          s8, t5, s10
                  sltu         gp, s9, a1
                  sub          s3, s0, a2
                  blt          s1, s8, 691f
                  slli         t5, s3, 24
                  xori         a0, s3, -1986
                  xor          s3, s4, a7
                  sltu         s10, t3, ra
                  slt          s10, a6, t3
                  bltu         s3, s7, 700f
                  sra          s5, s7, s3
                  add          t5, s11, a6
                  or           s0, s1, s11
                  add          t0, s7, s5
691:              beq          s0, a1, 697f
692:              auipc        s1, 398169
                  nop
                  slt          a5, s11, zero
695:              bne          t4, zero, 708f
                  bne          a5, tp, 716f
697:              addi         s9, a0, 1540
                  and          s10, s6, sp
                  bne          s6, t6, 719f
700:              slli         ra, a5, 2
                  bne          a0, s6, 708f
                  andi         t5, a5, 1639
                  slt          t3, s9, tp
                  slti         s0, s3, -1146
                  bgeu         s3, a5, 711f
                  bltu         tp, t2, 726f
                  slt          s10, gp, tp
708:              slt          t0, t4, t0
                  beq          a6, t3, 729f
                  beq          s11, s5, 716f
711:              sltu         a0, s1, t0
                  bgeu         a4, s6, 726f
                  la           a4, region_1+406 #start riscv_load_store_rand_instr_stream_8
                  lbu          zero, -11(a4)
                  add          t2, a6, s1
                  lb           a5, -14(a4)
                  xor          sp, s1, a6
                  lhu          s9, -6(a4)
                  lui          a0, 19708
                  lb           zero, -4(a4)
                  lh           a7, -8(a4)
                  srai         s6, t3, 24
                  sll          a1, s4, s9
                  lhu          s2, 4(a4)
                  nop
                  srli         s1, s3, 14
                  sub          gp, t4, s3
                  lhu          a0, -10(a4)
                  sb           s0, -13(a4)
                  sb           s1, 3(a4)
                  slli         tp, s10, 2
                  lbu          s9, 15(a4)
                  sra          s2, t1, a3
                  lb           t2, -15(a4)
                  srl          s3, s5, s3
                  lbu          t0, 8(a4)
                  lbu          s8, -9(a4)
                  lbu          ra, 5(a4)
                  sltu         s4, s1, a1
                  lbu          a6, 5(a4)
                  srai         t4, s3, 1
                  sll          a5, s9, a7
                  lbu          ra, 7(a4)
                  sw           zero, 10(a4)
                  xori         a0, t6, -410
                  sw           a6, -10(a4)
                  srl          s10, s3, a0
                  lbu          a7, -3(a4)
                  lbu          s0, 1(a4)
                  lbu          s11, 11(a4)
                  lb           s4, -3(a4)
                  sub          t2, s10, gp
                  sb           s3, -2(a4)
                  lui          t5, 726826
                  sll          a5, a0, a1
                  srli         t0, t0, 11
                  xor          s10, t0, s2
                  srai         s11, s11, 3
                  sub          s10, s6, t1
                  nop
                  lui          s0, 953983
                  sh           s6, -2(a4)
                  sw           tp, 6(a4)
                  sb           s6, 9(a4)
                  slli         s10, s9, 2
                  add          zero, s10, a4
                  lb           t3, -5(a4)
                  slli         sp, gp, 0
                  xor          s6, a6, s1
                  sw           s9, 14(a4) #end riscv_load_store_rand_instr_stream_8
                  or           sp, s5, ra
                  xor          zero, s7, s3
                  bge          s1, s7, 716f
716:              sltu         s11, sp, t5
                  andi         a0, a3, 1439
                  blt          s0, zero, 720f
719:              srli         a0, a3, 1
720:              srli         t2, s11, 9
                  beq          a6, t6, 741f
                  beq          t1, s10, 742f
                  srl          s11, s6, a6
                  add          t1, t3, a7
                  beq          s6, s7, 728f
726:              slt          s3, t2, t5
                  ori          s4, zero, 1597
728:              and          s10, s10, a2
729:              bge          t3, t5, 733f
                  srli         s10, t1, 14
                  xor          a1, t6, s9
                  bltu         t6, ra, 738f
733:              auipc        s0, 778347
                  bge          t6, t4, 746f
                  and          a0, t5, s6
                  srl          a1, a3, t2
                  srli         t0, s7, 14
738:              bge          t5, t2, 748f
                  srl          gp, t2, s7
                  add          s1, sp, t4
741:              andi         t0, s11, 1646
742:              ori          s0, s7, 330
                  sub          a5, a1, t2
                  andi         t4, s3, 1142
                  nop
746:              slti         s11, a1, -1198
                  andi         sp, t1, 1336
748:              slli         gp, a7, 20
                  xor          s8, zero, t6
                  addi         a1, t4, -231
                  sltu         s2, tp, s8
                  lui          s8, 907123
                  beq          s11, s0, 757f
                  sub          s9, zero, s8
                  andi         t0, tp, 813
                  slt          zero, t4, t5
757:              bge          t2, t0, 764f
                  add          a0, a7, t4
                  lui          t2, 986627
                  slli         s9, s4, 8
                  bge          s4, s7, 776f
                  or           sp, a1, s10
                  xor          t1, t6, s4
764:              beq          a3, s2, 769f
                  sra          t6, s3, gp
                  xor          tp, s0, s1
                  blt          t0, t2, 778f
                  slli         a7, zero, 3
769:              xori         tp, s0, 1487
                  bne          t4, sp, 783f
                  nop
                  slli         ra, sp, 23
                  sltiu        t5, a2, 501
                  nop
                  srai         a0, t6, 7
776:              srai         t5, a6, 12
                  xor          a7, a4, a0
778:              bgeu         t0, s1, 782f
                  sll          s4, a0, s1
                  blt          s1, tp, 786f
                  sub          s11, t1, t6
782:              slt          a7, t3, s1
783:              nop
                  blt          t1, a6, 786f
                  beq          sp, s11, 796f
786:              srai         s11, a7, 14
                  addi         t0, s9, 1341
                  bge          t6, t1, 799f
                  ori          a1, s8, 1213
                  sltu         ra, t6, a2
                  srl          s9, a3, t0
                  bge          a3, t3, 799f
                  slti         s5, a5, -1030
                  xori         a6, a7, 1303
                  nop
796:              bgeu         a4, a4, 816f
                  add          tp, a4, t6
                  bltu         sp, t0, 818f
799:              bge          a6, a6, 805f
                  bltu         a0, s11, 814f
                  sra          t1, a1, t2
                  lui          t1, 765585
                  bne          s11, s7, 809f
                  sra          t0, s8, tp
805:              lui          s0, 548101
                  add          sp, t2, s1
                  bltu         a3, a0, 812f
                  bgeu         s9, s5, 815f
809:              slti         a7, zero, -713
                  sltiu        s0, s10, 1588
                  srli         a7, s5, 15
812:              xor          s1, s5, s2
                  sub          zero, s4, tp
814:              or           t0, s4, s4
815:              slti         t3, a0, 1022
816:              bltu         s11, a7, 822f
                  blt          s8, a0, 819f
818:              bge          a1, t1, 824f
819:              slli         s4, t5, 22
                  srai         s2, s3, 13
                  xor          a1, s7, s10
822:              and          a4, s4, a6
                  sltu         zero, a0, a4
824:              auipc        t4, 466949
                  srli         ra, a0, 27
                  slt          a4, s2, ra
                  add          a1, a5, s2
                  nop
                  auipc        gp, 512052
                  bltu         a7, a0, 833f
                  bgeu         s1, t5, 851f
                  bltu         s0, a1, 847f
833:              sll          tp, a6, a5
                  nop
                  andi         t2, a3, 684
                  slt          ra, s10, tp
                  slti         s9, a3, 1806
                  bltu         s2, s10, 852f
                  srl          tp, s4, s8
                  bge          ra, s9, 844f
                  slli         a5, s1, 12
                  ori          t0, a6, -1321
                  slli         ra, s8, 28
844:              srl          t0, s3, t6
                  sra          s0, tp, sp
                  xori         ra, a1, -1296
847:              auipc        s6, 791466
                  sltu         a4, s4, a4
                  add          t4, s2, a6
                  bltu         a5, s1, 860f
851:              ori          s8, t2, 313
852:              sra          gp, a2, gp
                  sltu         a7, t3, a5
                  bge          t1, a2, 860f
                  slt          t2, s1, t0
                  bgeu         a7, s3, 860f
                  bne          s8, tp, 858f
858:              xor          t6, s9, s2
                  slt          s5, s7, s9
860:              xor          t1, s0, s3
                  sub          s11, s3, s0
                  sltiu        t6, s2, -315
                  beq          s4, s4, 867f
                  sltiu        t1, sp, 859
                  nop
                  xori         s10, s0, -1565
867:              sltu         s5, s9, s9
                  slt          s4, s8, s6
                  bne          s4, s1, 889f
                  andi         s4, s0, 692
                  beq          s7, t4, 891f
                  bge          t0, s6, 885f
                  srai         s9, t1, 22
                  xori         gp, a4, -67
                  srli         t5, s1, 17
                  bne          s6, s1, 889f
                  xori         t5, t0, 989
                  xori         a0, t6, 1545
                  slti         a7, t5, -1419
                  slt          s10, tp, s7
                  nop
                  sub          s4, a1, tp
                  bne          s1, a2, 895f
                  or           s0, ra, gp
885:              nop
                  blt          a3, tp, 906f
                  sltiu        a0, gp, 622
                  slli         zero, t3, 5
889:              add          s11, s4, s8
                  andi         a5, a4, 707
891:              or           s6, s9, s5
                  sll          t6, a6, s2
                  sra          s9, a3, tp
                  bgeu         s11, gp, 896f
895:              xori         s6, s7, -877
896:              or           sp, tp, s5
                  bltu         s5, t3, 907f
                  beq          a7, s4, 912f
                  bltu         s3, a0, 913f
                  andi         s9, s1, 199
                  add          s8, sp, a6
                  ori          s3, t1, 1435
                  bge          zero, s10, 909f
                  slt          t5, tp, s5
                  sltiu        gp, t0, -316
906:              beq          s8, t6, 926f
907:              sltiu        s11, t0, 1864
                  bgeu         t4, a5, 928f
909:              sra          s8, s11, sp
                  slli         s11, s5, 21
                  and          a1, t3, s1
912:              srai         s11, a5, 23
913:              slt          a0, a7, ra
                  sltu         a5, a2, a1
                  srl          t1, s11, a5
                  srli         t2, s6, 18
                  bne          tp, a0, 924f
                  slt          sp, a3, s0
                  beq          s2, s8, 931f
                  and          tp, s8, s5
                  bgeu         a5, s5, 926f
                  blt          a2, s10, 925f
                  slti         t1, t0, 1138
924:              sltiu        s4, a7, 120
925:              sra          s8, a4, t4
926:              blt          a7, s0, 932f
                  slt          s2, s6, a4
928:              bgeu         t6, ra, 941f
                  andi         s9, s3, 24
                  sra          gp, a1, s7
931:              srli         t2, t5, 16
932:              addi         t3, a5, -936
                  slli         s2, zero, 14
                  slli         t2, sp, 23
                  beq          s3, zero, 939f
                  blt          a1, s3, 940f
                  add          s5, a3, gp
                  bge          ra, ra, 944f
939:              blt          s5, s9, 946f
940:              sltu         a7, a7, s4
941:              slli         s9, s0, 1
                  bge          a0, sp, 944f
                  or           s9, s5, s6
944:              blt          s2, sp, 957f
                  srli         t2, t5, 2
946:              sll          zero, s6, s6
                  sub          s0, s5, a1
                  ori          t3, a7, 1448
                  andi         s10, s7, -1954
                  and          a1, s0, a5
                  sltiu        s11, zero, -809
                  bne          s5, a2, 972f
                  blt          s8, tp, 957f
                  and          t1, tp, a2
                  and          gp, s6, t2
                  srai         a6, s5, 1
957:              sltiu        s11, t5, -1881
                  sub          s2, s10, t4
                  auipc        s6, 997629
                  or           t3, s7, s1
                  slt          tp, s9, zero
                  nop
                  nop
                  sltu         a0, a3, zero
                  sub          tp, s9, zero
                  bltu         s1, s7, 967f
967:              sll          a7, a4, s3
                  bne          a2, a7, 974f
                  andi         zero, t0, 408
                  addi         t1, a7, -233
                  slti         t2, a7, 175
972:              sll          ra, s3, t3
                  bltu         t5, s11, 993f
974:              sra          t1, zero, a5
                  srli         a6, zero, 5
                  xor          s0, s3, gp
                  blt          t6, s4, 979f
                  and          s1, a1, t1
979:              xori         a0, ra, -987
                  or           s0, s10, a0
                  sltu         s10, t6, t1
                  bgeu         s11, s8, 997f
                  bltu         s0, t5, 989f
                  slt          zero, t6, a6
                  addi         a1, s4, -329
                  xori         tp, gp, -985
                  srl          t6, t4, s7
                  srl          zero, a4, t5
989:              bge          ra, sp, 1000f
                  bne          s8, a7, 1010f
                  xori         s3, s9, 1877
                  xor          s8, gp, s0
993:              nop
                  xor          s0, s3, a6
                  beq          t2, t0, 1006f
                  andi         s1, s7, 1778
997:              xori         s8, s2, 1974
                  slli         s0, sp, 10
                  ori          a7, gp, 1803
1000:             bgeu         s11, s0, 1020f
                  slli         s6, s7, 14
                  sltiu        a5, s9, -783
                  and          a5, t4, s10
                  bne          s5, s3, 1014f
                  auipc        a1, 329831
1006:             ori          a0, t5, -493
                  bge          a1, a6, 1014f
                  slt          a4, a6, s0
                  bne          s10, a4, 1023f
1010:             slt          zero, s4, t3
                  sub          t1, s5, t5
                  sub          a6, s11, a7
                  sltiu        t2, a7, 767
1014:             sra          t4, s1, s8
                  ori          s5, t4, -946
                  nop
                  sub          s2, a4, s3
                  andi         t0, tp, -170
                  auipc        t5, 873311
1020:             xori         sp, s4, 1833
                  ori          t1, s4, -1494
                  and          a0, t2, t1
1023:             auipc        a1, 523478
                  blt          s9, s4, 1037f
                  or           a7, s9, zero
                  slt          gp, a2, a4
                  bgeu         s1, t3, 1034f
                  nop
                  bge          t6, s7, 1044f
                  andi         s0, sp, 1175
                  sll          s8, s2, a5
                  bltu         s10, a2, 1044f
                  bge          t4, t1, 1035f
1034:             xor          s3, s9, t2
1035:             srli         t4, a7, 21
                  srl          sp, tp, t4
1037:             slt          tp, a4, sp
                  bne          a3, s0, 1039f
1039:             nop
                  or           s10, ra, t0
                  slti         a1, s5, 234
                  bge          a4, a4, 1048f
                  blt          s8, t1, 1063f
1044:             sll          s5, t4, t3
                  srli         t6, s6, 8
                  nop
                  nop
1048:             or           t3, t3, s8
                  nop
                  nop
                  auipc        t0, 139322
                  slt          s3, s5, sp
                  sub          s2, zero, t2
                  and          t2, gp, t0
                  and          s6, s2, t1
                  addi         s2, t4, -1473
                  bge          s11, a5, 1077f
                  nop
                  ori          s4, tp, 1768
                  lui          s3, 1033895
                  lui          s9, 539349
                  nop
1063:             bne          tp, s5, 1083f
                  slt          s1, a2, t4
                  bne          t4, s0, 1078f
                  and          s10, s7, tp
                  lui          s6, 241843
                  sltiu        s0, s3, -513
                  bgeu         a6, a4, 1073f
                  lui          s5, 551345
                  auipc        s11, 37512
                  or           s9, a3, s7
1073:             bltu         a1, t3, 1077f
                  sll          s0, s1, t5
                  sltu         sp, ra, s7
                  sra          t5, s5, s0
1077:             bge          s6, t5, 1083f
1078:             addi         s3, a2, 889
                  sltu         s3, a1, zero
                  sltiu        s6, a5, 257
                  srai         t3, t1, 27
                  sltiu        s4, a6, -321
1083:             sra          t0, a5, s0
                  add          s10, a6, s0
                  bltu         tp, a3, 1088f
                  xor          tp, s6, a0
                  lui          s1, 673720
1088:             and          t0, a5, s11
                  srli         t6, t0, 18
                  srai         zero, s7, 31
                  slti         s9, a3, -871
                  auipc        a5, 899549
                  slli         ra, a7, 1
                  and          zero, a0, s2
                  beq          t4, a2, 1106f
                  slti         a6, s3, -287
                  bgeu         t0, a2, 1117f
                  auipc        s3, 956106
                  addi         sp, a5, 1126
                  srli         s10, a0, 30
                  srai         s8, a0, 0
                  blt          s1, t2, 1104f
                  lui          a4, 215739
1104:             sltiu        s0, s6, 420
                  xori         s2, s0, 877
1106:             slti         a4, t3, 256
                  and          t6, t3, s5
                  beq          s8, ra, 1112f
                  andi         a6, t1, -980
                  sltiu        s0, a5, -1269
                  bge          t6, s7, 1117f
1112:             beq          a7, tp, 1118f
                  blt          s3, a7, 1124f
                  xor          a7, t5, a4
                  blt          s1, a2, 1120f
                  srli         s4, a6, 11
1117:             addi         s9, t2, 1599
1118:             auipc        s10, 575548
                  add          a7, a2, s4
1120:             xori         a6, s8, 540
                  blt          s7, a5, 1141f
                  sll          s8, a2, s3
                  slti         s4, a2, 1696
1124:             bgeu         t0, s9, 1144f
                  bltu         t3, tp, 1139f
                  beq          a0, s2, 1132f
                  blt          a2, a7, 1133f
                  slt          s6, s11, a7
                  slti         t1, t0, -935
                  andi         s11, t6, 1793
                  and          tp, s11, t3
1132:             sltiu        a0, a0, 819
1133:             xori         t0, sp, -1885
                  add          s11, t6, gp
                  bge          s6, t6, 1139f
                  add          t1, s5, s9
                  beq          s4, t3, 1139f
                  sub          t0, tp, s5
1139:             and          s3, t0, s4
                  ori          a5, t2, -1034
1141:             sltiu        s11, s4, -1961
                  srli         a5, s0, 22
                  slti         a0, t5, 1749
1144:             nop
                  blt          t5, sp, 1165f
                  nop
                  sltiu        sp, s8, 354
                  bne          s11, t0, 1154f
                  sltiu        sp, tp, 1457
                  and          t6, t5, s2
                  sltu         s2, s7, t6
                  srai         t4, tp, 12
                  sra          t2, a3, s5
1154:             lui          t0, 871478
                  slt          zero, s8, tp
                  slt          a1, s6, a4
                  auipc        s9, 952850
                  bge          t1, a4, 1168f
                  blt          a4, s2, 1179f
                  sltu         t0, a0, t1
                  bgeu         t1, s4, 1175f
                  srli         a6, tp, 20
                  slli         t6, s10, 2
                  bge          t3, a6, 1166f
1165:             slli         s11, gp, 1
1166:             xor          s1, a1, t6
                  addi         a6, s9, 989
1168:             sra          gp, a7, a2
                  and          s0, a1, sp
                  xori         t3, s8, -463
                  xori         s10, t2, 1950
                  sltiu        t5, s8, -20
                  bne          zero, a2, 1179f
                  bne          t3, s0, 1175f
1175:             sltiu        a0, s8, 1605
                  slli         a6, s3, 28
                  andi         t4, t6, -1492
                  sll          tp, s6, s5
1179:             ori          ra, s8, 897
                  slt          gp, t0, s1
                  xor          a5, s9, s10
                  nop
                  sltiu        t3, t5, 1863
                  xor          t5, zero, s8
                  add          t1, s2, s2
                  sll          a6, s9, s11
                  xor          t6, a1, a5
                  sra          s0, t1, s5
                  slli         s1, t1, 6
                  srai         t1, t5, 4
                  beq          s10, a6, 1203f
                  andi         t3, gp, -1276
                  auipc        gp, 182902
                  blt          a0, a5, 1214f
                  add          s8, zero, s7
                  srli         tp, t2, 30
                  srai         t5, s9, 8
                  ori          ra, s1, 1126
                  auipc        t1, 955392
                  srai         s5, t2, 12
                  sub          t5, a1, a6
                  xori         a4, ra, -1354
1203:             andi         t3, a7, -1830
                  beq          a7, a1, 1207f
                  bne          s11, a4, 1218f
                  sltiu        s2, zero, 1076
1207:             slt          s4, s0, t6
                  lui          a1, 591419
                  bne          t1, s5, 1222f
                  andi         gp, a0, -976
                  add          a4, tp, s3
                  xor          t6, s5, s2
                  slt          a1, s11, ra
1214:             bge          t0, a0, 1228f
                  sra          a7, t3, s8
                  and          a1, a7, t1
                  bltu         a1, a5, 1223f
1218:             andi         s11, a3, -620
                  addi         a7, s10, 1262
                  addi         a1, s7, 1879
                  addi         t4, t0, 12
1222:             or           s0, a6, tp
1223:             sub          s5, tp, a0
                  sra          s0, s9, t2
                  sltiu        a0, t0, 1784
                  lui          a1, 304046
                  xor          t4, a0, ra
1228:             sltu         t2, s10, t6
                  auipc        a7, 65586
                  blt          s6, t0, 1235f
                  blt          a1, t6, 1251f
                  lui          s10, 954682
                  nop
                  lui          s4, 16557
1235:             xori         s2, a3, -832
                  srl          s1, t3, a5
                  or           s3, t6, s0
                  xori         tp, a1, -658
                  beq          t3, t2, 1250f
                  and          a7, s4, s4
                  and          t3, s3, t0
                  bge          sp, s4, 1262f
                  addi         s2, gp, 1539
                  ori          t1, t5, -314
                  ori          s9, s1, 646
                  xori         s2, t5, -461
                  sltu         ra, a5, s9
                  slt          s8, s8, s4
                  xor          sp, a0, s6
1250:             bge          sp, s9, 1256f
1251:             beq          s6, t2, 1258f
                  xor          a1, s5, s3
                  lui          a7, 938294
                  bltu         s6, tp, 1258f
                  slt          s1, t2, ra
1256:             blt          t4, t2, 1276f
                  andi         s3, s6, 600
1258:             srai         a1, a4, 13
                  sltu         t0, s2, t4
                  xor          s5, a3, a5
                  add          t0, s3, a1
1262:             add          s0, s7, s5
                  addi         ra, sp, -509
                  or           t2, a3, a0
                  srai         zero, s2, 29
                  or           s2, a1, a3
                  blt          s1, t3, 1278f
                  xor          tp, gp, s1
                  xor          t6, t2, ra
                  srli         s3, s7, 7
                  slt          s0, a5, a5
                  bltu         s10, zero, 1287f
                  blt          s2, s4, 1280f
                  lui          t1, 321546
                  or           t4, s2, t5
1276:             bgeu         s5, a4, 1280f
                  lui          s3, 805927
1278:             auipc        t4, 152653
                  sra          tp, a4, a3
1280:             or           s10, t1, s6
                  sll          s0, s4, a0
                  add          s10, zero, t5
                  sll          t2, a6, t3
                  and          s1, s10, gp
                  sub          t4, t4, s3
                  sltu         t3, s5, a2
1287:             and          t1, t3, a4
                  auipc        t2, 657343
                  beq          s2, a3, 1293f
                  xor          a1, t5, s2
                  blt          s6, s5, 1302f
                  beq          gp, ra, 1293f
1293:             bne          s9, a6, 1305f
                  bgeu         s4, gp, 1300f
                  or           zero, s8, t5
                  and          a6, zero, s7
                  nop
                  slli         s2, t6, 19
                  lui          s10, 606871
1300:             slti         s5, t5, -784
                  slti         s6, s2, 296
1302:             or           t4, t5, s1
                  auipc        a7, 302993
                  srli         t2, ra, 1
1305:             beq          a7, s1, 1315f
                  xori         s8, t4, -1988
                  bne          tp, s11, 1310f
                  and          s11, ra, a3
                  bne          t4, a0, 1315f
1310:             addi         s2, s2, 1299
                  sll          t2, s1, tp
                  slli         tp, t4, 28
                  bltu         t2, t3, 1319f
                  or           s4, t5, s11
1315:             srl          gp, gp, s6
                  slt          t2, a7, t4
                  lui          s11, 788054
                  slli         s3, ra, 29
1319:             add          a5, a7, t1
                  sll          s11, gp, t4
                  sltu         zero, a6, a4
                  srl          t2, a5, t6
                  addi         zero, zero, 993
                  slli         zero, a7, 10
                  and          s11, s3, s6
                  and          s3, a5, a3
                  ori          gp, s0, -540
                  blt          a4, a6, 1334f
                  lui          s8, 796477
                  sub          s5, t1, tp
                  bgeu         s3, t3, 1345f
                  bltu         t3, a3, 1352f
                  sll          a6, s2, a5
1334:             or           t4, s4, a5
                  beq          tp, zero, 1348f
                  lui          t2, 991841
                  bgeu         s4, a1, 1339f
                  sub          gp, s7, t6
1339:             lui          s8, 404754
                  beq          s7, t6, 1360f
                  sltu         gp, t4, a3
                  slti         s0, a5, -674
                  bgeu         a3, s1, 1363f
                  xor          tp, s11, t3
1345:             blt          gp, s4, 1349f
                  addi         zero, t0, -786
                  addi         t4, a4, -1654
1348:             andi         s4, s6, 1888
1349:             slli         a1, s9, 24
                  addi         t2, s9, 298
                  bge          s5, a6, 1362f
1352:             bge          s9, s4, 1372f
                  bltu         s5, s5, 1373f
                  bltu         a3, a2, 1360f
                  sll          s1, a3, a1
                  lui          sp, 328544
                  and          a4, s7, s10
                  slli         tp, s6, 12
                  auipc        s10, 595491
1360:             blt          t6, t1, 1380f
                  bge          s7, t0, 1375f
1362:             xor          s11, s11, sp
1363:             bge          s0, a4, 1370f
                  xor          s0, a0, a2
                  slli         sp, t4, 1
                  and          s4, s3, s0
                  beq          a2, t2, 1371f
                  blt          a6, t2, 1375f
                  and          a7, t4, s3
1370:             or           t2, t6, tp
1371:             bne          s9, t6, 1384f
1372:             addi         s0, s3, 82
1373:             bltu         t2, s6, 1388f
                  sll          a0, a2, t5
1375:             bltu         t0, a3, 1380f
                  slli         s0, t0, 6
                  bge          s5, s0, 1379f
                  bge          s1, t1, 1384f
1379:             lui          s6, 659735
1380:             srai         sp, s7, 30
                  and          s4, t0, s6
                  or           s3, t1, s1
                  sltiu        s10, s9, -753
1384:             or           t1, a6, s10
                  xor          s3, s0, s1
                  nop
                  beq          t3, t6, 1398f
1388:             bge          s3, ra, 1399f
                  or           a0, s4, t3
                  sltu         t2, s8, s0
                  xori         s10, s2, -609
                  xor          s4, s6, a2
                  xori         s1, a7, 1386
                  or           s2, sp, a4
                  slt          sp, s5, tp
                  xori         t2, zero, 1437
                  bne          t2, t0, 1410f
1398:             bge          t6, s1, 1418f
1399:             addi         sp, s11, 1320
                  xor          t6, s0, s3
                  beq          t2, s11, 1408f
                  sll          s4, s7, t5
                  xor          s11, s1, t5
                  bne          t6, t5, 1414f
                  sra          a7, t6, a3
                  and          s2, a2, s3
                  xor          s3, t1, s11
1408:             srai         t5, t3, 23
                  sll          a1, s1, a6
1410:             bltu         s3, s11, 1416f
                  sltu         a7, s2, s10
                  bltu         t1, tp, 1432f
                  bltu         t5, s4, 1414f
1414:             or           s0, t0, s10
                  sra          s0, a6, s11
1416:             lui          a0, 10166
                  auipc        s10, 381568
1418:             xori         s5, s9, -1927
                  srai         s5, a6, 10
                  xori         s8, tp, 1341
                  sltiu        t6, t2, 1758
                  or           a1, t4, t2
                  srl          s6, gp, tp
                  srai         s1, gp, 0
                  srl          t6, s10, s3
                  beq          t4, s6, 1441f
                  sltu         s0, a0, s2
                  sub          a1, a1, t0
                  addi         a7, s2, -1337
                  bgeu         s6, s10, 1436f
                  xor          a5, t5, t2
1432:             sra          sp, a2, s3
                  addi         s4, t2, 1681
                  bgeu         a3, a2, 1437f
                  bne          t1, gp, 1449f
1436:             sltiu        a6, sp, 38
1437:             beq          a6, s11, 1443f
                  bne          a6, a1, 1444f
                  auipc        sp, 600953
                  bgeu         t6, s6, 1452f
1441:             blt          t4, s5, 1443f
                  bltu         s3, t4, 1462f
1443:             xor          t1, a3, s11
1444:             bltu         a7, s11, 1448f
                  xori         s4, s10, 83
                  srl          s11, t1, gp
                  sll          s1, t3, t5
1448:             sra          t5, a4, zero
1449:             slli         s1, s1, 9
                  andi         s1, ra, -1759
                  blt          s8, s5, 1464f
1452:             nop
                  srai         gp, ra, 27
                  bgeu         tp, zero, 1459f
                  beq          a2, t2, 1462f
                  andi         t2, s5, -1941
                  nop
                  or           a4, s3, a2
1459:             auipc        a4, 821575
                  nop
                  lui          s3, 958944
1462:             bge          s5, s9, 1482f
                  blt          t1, s2, 1483f
1464:             bne          s10, s7, 1484f
                  nop
                  slli         s2, a1, 26
                  ori          s1, s5, -1045
                  blt          gp, a5, 1472f
                  blt          ra, s7, 1473f
                  srai         t4, tp, 18
                  blt          s8, s0, 1485f
1472:             bgeu         zero, tp, 1474f
1473:             sltiu        t5, ra, 925
1474:             xor          s0, gp, t0
                  lui          t3, 706239
                  ori          s1, a6, -1649
                  bgeu         s4, zero, 1497f
                  lui          tp, 1028905
                  blt          s5, a0, 1490f
                  sltu         s5, t0, a7
                  and          sp, tp, ra
1482:             srl          a0, a1, a3
1483:             sub          s10, t3, t5
1484:             ori          t1, sp, -1316
1485:             sltiu        s4, sp, 341
                  srai         sp, a5, 14
                  andi         s3, tp, 462
                  or           s4, a4, t1
                  add          a6, t6, s5
1490:             sra          t0, s6, gp
                  bge          s0, a1, 1495f
                  bgeu         a1, t5, 1512f
                  sra          t3, t5, s4
                  srli         zero, s8, 29
1495:             addi         a5, a0, 1319
                  and          t1, s9, tp
1497:             add          t5, t4, ra
                  addi         s11, gp, 1892
                  srli         s9, s3, 0
                  sltu         s1, a1, s5
                  srli         t6, t2, 8
                  sltiu        a6, a1, -1384
                  sltu         a1, s7, a4
                  bne          t4, s0, 1517f
                  sltu         t4, s7, zero
                  srli         t0, s8, 31
                  blt          s9, a1, 1511f
                  addi         t1, t6, 1950
                  or           s1, s0, s7
                  add          a1, s5, s9
1511:             sltiu        t0, sp, 1330
1512:             xori         t3, a7, 580
                  bgeu         s10, s2, 1520f
                  srai         s6, a4, 24
                  sub          t6, t2, zero
                  slli         s11, zero, 20
1517:             or           s3, s4, t5
                  sltiu        a5, t3, -663
                  sltu         s11, s9, s11
1520:             bgeu         t2, a5, 1531f
                  srli         a1, s7, 3
                  srli         gp, t0, 0
                  lui          s2, 710673
                  andi         s6, t0, -1094
                  addi         a5, t3, 1448
                  ori          a4, a1, 622
                  slt          t3, a3, s4
                  lui          s11, 206159
                  la           s10, region_1+1834 #start riscv_load_store_rand_instr_stream_0
                  slti         s1, s8, 1101
                  xori         t5, s10, 1067
                  srl          s5, a4, s3
                  xor          a5, a7, a5
                  srl          a5, a3, t1
                  lh           s1, -1428(s10)
                  lb           s8, -1744(s10)
                  xor          a7, s3, ra
                  auipc        s8, 323045
                  srai         t3, t3, 7
                  add          t3, t5, sp
                  add          t1, a4, s3
                  xori         tp, t5, 1807
                  or           s6, s3, s1
                  sb           s11, 3(s10)
                  lb           t1, -17(s10)
                  srl          zero, a3, sp
                  lui          s0, 762842
                  lbu          s4, -575(s10)
                  add          t4, ra, sp
                  sh           t2, -412(s10)
                  slti         s6, t0, 2046
                  slti         t6, t3, 282
                  xori         t1, a0, -56
                  srl          s2, s3, a6
                  slt          a4, sp, s3
                  sb           s1, -897(s10)
                  or           s6, a3, a4
                  srl          s0, s10, t3
                  lb           sp, -419(s10)
                  lh           gp, -1718(s10)
                  ori          s8, t6, -364
                  sltu         s3, s11, s9
                  slli         zero, sp, 8
                  sub          zero, ra, a2
                  lb           t0, -751(s10)
                  add          a0, gp, s3
                  lhu          s9, -154(s10) #end riscv_load_store_rand_instr_stream_0
                  bne          s2, t5, 1549f
                  slti         s4, s0, 573
1531:             nop
                  slli         ra, a0, 21
                  sltu         s4, s7, s9
                  or           s6, s6, t0
                  sltiu        t6, s1, 1159
                  sub          s8, s11, a7
                  slli         s11, zero, 26
                  bge          s2, t0, 1544f
                  sltiu        a5, t6, -13
                  or           t4, tp, a5
                  srl          sp, a5, t5
                  xor          s8, tp, a5
                  add          s4, s4, s5
1544:             slti         s6, a7, -1905
                  bltu         s5, ra, 1557f
                  sltu         s3, s11, a6
                  or           s10, s3, a3
                  sra          s10, sp, s9
1549:             sll          t3, a1, s2
                  slt          zero, s6, gp
                  xori         gp, t2, 1563
                  addi         a6, sp, 1908
                  and          a7, s7, t3
                  sll          s2, a6, a2
                  srli         a5, t5, 20
                  lui          s6, 970231
1557:             addi         s6, s11, 1488
                  blt          t0, s6, 1563f
                  bgeu         ra, t6, 1562f
                  xor          sp, a0, s8
                  srai         gp, s10, 13
1562:             slt          s0, ra, t0
1563:             bltu         a6, a2, 1576f
                  sltu         a1, a5, s7
                  sltu         t0, s9, t0
                  bltu         a3, t1, 1572f
                  sltu         t5, sp, s2
                  bne          a2, t1, 1574f
                  ori          s2, a1, 1913
                  sra          sp, s11, a2
                  bge          s0, s3, 1572f
1572:             nop
                  add          t6, t2, s9
1574:             xor          s6, s9, t3
                  lui          s9, 726748
1576:             lui          gp, 683386
                  lui          a7, 279805
                  slti         t2, sp, 653
                  sltu         t6, s0, s2
                  slt          t4, t1, s8
                  sub          s10, gp, ra
                  add          s2, a0, t2
                  slli         zero, gp, 26
                  xori         t2, s5, 47
                  nop
                  srl          s8, t1, s3
                  bltu         s1, s9, 1601f
                  andi         s4, s1, 1994
                  beq          s9, t2, 1591f
                  nop
1591:             slli         t4, s9, 18
                  srli         a5, a6, 20
                  srli         s1, a0, 30
                  sll          s11, t4, s11
                  add          a7, t4, a2
                  and          t0, t1, a3
                  blt          s7, t5, 1604f
                  and          s1, s11, t5
                  bltu         sp, tp, 1603f
                  bne          a0, a7, 1620f
1601:             lui          s2, 728013
                  addi         s0, s2, -1949
1603:             srl          a6, a4, s3
1604:             slt          a5, s10, s10
                  srli         a4, t6, 17
                  nop
                  or           a6, t3, tp
                  bgeu         a3, s3, 1618f
                  sltiu        s5, a4, -169
                  and          a7, s10, s6
                  bge          a5, t6, 1626f
                  or           t6, zero, t5
                  sll          sp, s1, tp
                  andi         a1, a1, 541
                  sltu         gp, s4, t5
                  add          s11, s1, t3
                  nop
1618:             bltu         s1, a4, 1632f
                  blt          t6, ra, 1621f
1620:             or           a7, gp, s6
1621:             srai         t1, s1, 3
                  beq          sp, tp, 1642f
                  bne          a5, s9, 1629f
                  srli         zero, a5, 16
                  nop
1626:             sub          t5, t6, s11
                  sltiu        a1, s1, 1757
                  or           tp, t4, a4
1629:             bgeu         tp, t4, 1635f
                  sra          a5, t6, s5
                  sltiu        t4, a2, 1493
1632:             lui          t3, 925543
                  slti         s3, a6, -486
                  sltu         t5, s4, a4
1635:             sll          s10, a7, s5
                  bgeu         t2, a6, 1656f
                  ori          ra, s6, 1511
                  ori          s8, sp, 1121
                  slti         t1, sp, -775
                  srai         a5, zero, 1
                  nop
1642:             andi         t4, a6, -1447
                  slli         tp, gp, 1
                  srli         s1, t1, 29
                  xor          tp, s5, t3
                  slli         a6, t3, 7
                  auipc        s8, 437360
                  andi         s0, a1, 165
                  sra          zero, a2, tp
                  xori         a7, s4, 618
                  auipc        t3, 281817
                  nop
                  bgeu         s4, a5, 1664f
                  ori          t0, a3, 404
                  slt          s2, gp, a3
1656:             bltu         gp, t2, 1670f
                  bgeu         a2, s6, 1662f
                  beq          a3, s3, 1664f
                  sll          zero, s7, t0
                  blt          t6, a6, 1667f
                  srli         t1, t0, 23
1662:             bge          s9, zero, 1677f
                  ori          t6, s3, -134
1664:             bgeu         zero, s3, 1676f
                  xori         s6, a1, -1592
                  auipc        tp, 940357
1667:             sll          s1, t2, a7
                  add          gp, s5, s2
                  sltiu        s1, a6, 890
1670:             addi         t6, s1, -1569
                  sltiu        a0, zero, 1556
                  add          t2, t5, a7
                  sltu         gp, t2, a6
                  sub          ra, ra, s7
                  bgeu         t2, s0, 1677f
1676:             ori          s1, s1, -276
1677:             or           a4, a4, s11
                  slt          gp, s9, zero
                  slti         s8, a3, -1621
                  blt          a6, s3, 1682f
                  bgeu         s3, s7, 1701f
1682:             srai         s3, a2, 10
                  sltiu        s5, s0, -52
                  srai         ra, t2, 8
                  sll          ra, s7, a6
                  ori          s10, a1, -1196
                  sra          zero, a6, a5
                  sll          gp, t3, t5
                  add          t6, t4, s9
                  add          ra, a7, t3
                  bgeu         t4, s1, 1711f
                  slli         s3, s4, 7
                  sra          t0, a0, t4
                  slli         t1, a1, 7
                  slt          a5, sp, s9
                  bne          a0, t3, 1702f
                  sltiu        s4, sp, -1476
                  addi         t3, a1, -1483
                  lui          a0, 409905
                  srai         t5, s7, 31
1701:             auipc        s8, 896902
1702:             srai         t6, s10, 10
                  nop
                  bgeu         s9, a2, 1717f
                  lui          t3, 526655
                  srl          sp, t6, t0
                  xori         s2, gp, -1209
                  andi         t0, s10, -956
                  bgeu         a1, a0, 1723f
                  slli         a1, t5, 23
1711:             add          s1, ra, tp
                  lui          s5, 324870
                  sll          gp, sp, s2
                  add          t1, a0, t6
                  sltiu        a4, s4, 844
                  bne          gp, a3, 1719f
1717:             xor          zero, t2, sp
                  srli         a4, a7, 24
1719:             bge          s2, a5, 1723f
                  andi         t4, sp, -959
                  bltu         s2, t5, 1727f
                  ori          a7, tp, 998
1723:             srli         s10, a3, 14
                  blt          a0, a7, 1744f
                  nop
                  slt          s4, ra, t2
1727:             andi         a0, s10, 1320
                  sltiu        t1, s11, -1698
                  or           s1, t3, s4
                  srl          t5, t2, a4
                  auipc        ra, 419939
                  slti         s8, s1, -46
                  andi         s6, s2, 505
                  bgeu         gp, t1, 1744f
                  sub          a7, t5, a1
                  bltu         s5, s9, 1748f
                  auipc        a7, 288405
                  ori          s3, a2, 742
                  and          a5, t4, a1
                  sra          s4, t2, t5
                  sltiu        s10, a0, -1800
                  bltu         gp, sp, 1748f
                  sra          t4, a1, ra
1744:             slti         a1, s4, 896
                  and          a4, t6, s6
                  beq          t0, tp, 1748f
                  srai         t1, t3, 21
1748:             or           s3, a4, s7
                  auipc        tp, 748266
                  lw           t1, 4(s7)
                  addi         s7, s7, 8
                  or           t3, s4, s9
                  andi         s1, s0, -1116
2304:             addi x3, x6, 0
2304:             jalr x3, x3, 0
sub_2:            addi         a1, a1, 370
                  bltu         ra, s4, sub_2_stack_p
                  slli         s8, s7, 27
                  sltiu        ra, ra, -2008
                  slti         s2, a3, 1896
sub_2_stack_p:    addi         s7, s7, -24
                  sll          s4, s5, a3
                  xori         gp, s1, -1796
                  sw           t1, 4(s7)
                  or           gp, t0, sp
                  la           s1, region_1+1701 #start riscv_load_store_rand_instr_stream_1
                  srli         t6, s6, 19
                  andi         sp, ra, 1733
                  ori          s2, sp, -1660
                  lbu          a4, 196(s1)
                  lbu          t3, 248(s1)
                  or           a6, s10, a5
                  srai         tp, s6, 9
                  lbu          s2, -56(s1)
                  sll          gp, ra, s10
                  lb           sp, -24(s1)
                  lhu          t6, 39(s1)
                  sb           t4, -211(s1)
                  srai         a1, s7, 9
                  sb           s0, 52(s1)
                  lbu          a7, -142(s1)
                  xori         s2, s3, 1695
                  xori         s9, a1, -1284
                  slt          gp, s11, ra
                  sra          s10, s8, s10
                  sll          t2, s9, t4
                  sh           s6, 69(s1)
                  lbu          t6, -38(s1)
                  lbu          t6, 32(s1)
                  sw           t5, 119(s1)
                  nop
                  lhu          t3, 181(s1)
                  sb           s7, 42(s1)
                  lbu          s5, 165(s1)
                  xor          s11, zero, s5
                  sb           gp, -24(s1)
                  lbu          s2, 75(s1)
                  sh           t2, 163(s1)
                  lbu          t5, 248(s1)
                  slti         a6, t2, 1493
                  lb           t2, -191(s1)
                  lbu          s4, 94(s1)
                  slt          zero, t5, s6
                  lb           sp, 60(s1)
                  sb           t5, -12(s1)
                  lh           a7, 193(s1)
                  sb           t3, 193(s1)
                  xor          t3, a2, tp
                  lb           a7, -52(s1)
                  lbu          s6, 228(s1)
                  ori          t0, t6, 1121
                  slt          s4, s6, a7
                  or           gp, s10, t5
                  sb           t3, -73(s1) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+1686 #start riscv_load_store_rand_instr_stream_4
                  sra          s8, s8, s8
                  srl          t3, a6, a2
                  sb           t1, -16(t4)
                  lbu          t3, 5(t4)
                  lb           s10, -3(t4)
                  slt          a4, s7, s0
                  auipc        s6, 123165
                  sltu         a4, a3, sp
                  auipc        s6, 676710
                  srai         s5, t3, 7
                  slt          s8, a5, s6
                  lb           s2, 15(t4)
                  lhu          t3, -14(t4)
                  addi         s8, ra, -1140
                  slti         a1, t3, 1119
                  sltiu        s11, t5, 353
                  add          a4, s8, a6
                  sltu         t1, t4, t2
                  srl          a4, s2, s5
                  sltu         t2, a1, s3
                  sw           s6, -14(t4)
                  lbu          t6, -11(t4)
                  nop
                  auipc        s4, 829633
                  or           sp, a6, s10
                  ori          t1, s8, -657
                  sub          a1, sp, s1
                  lb           tp, 12(t4)
                  srai         s2, zero, 24
                  slti         s2, a6, 1580
                  lb           s1, 3(t4)
                  lb           s10, -15(t4)
                  and          s5, t1, s3
                  lb           a0, 4(t4)
                  sh           a7, 14(t4) #end riscv_load_store_rand_instr_stream_4
                  la           t3, region_0+34 #start riscv_load_store_rand_instr_stream_9
                  lhu          a7, 12(t3)
                  slli         zero, s5, 4
                  sltiu        s9, a0, 449
                  lh           a6, 0(t3)
                  lbu          s6, -13(t3)
                  slli         s9, s3, 7
                  lb           a6, 13(t3)
                  and          s1, s10, t0
                  sh           t1, 2(t3)
                  lbu          t4, -7(t3)
                  lhu          sp, 10(t3)
                  lbu          s4, 11(t3)
                  or           t1, s7, a3
                  xori         s11, s0, -708
                  sb           t2, 13(t3)
                  sll          s1, s5, s9
                  lbu          tp, -2(t3)
                  sltiu        t0, a2, 773
                  lhu          a6, 16(t3)
                  ori          t1, t2, -1765
                  sb           t3, 7(t3)
                  lb           s0, 3(t3)
                  lhu          t1, -2(t3)
                  lbu          t2, -13(t3)
                  lb           sp, -11(t3)
                  sh           s4, 4(t3)
                  srai         s11, a3, 24
                  xori         s8, s9, -1618
                  andi         ra, t4, -1289
                  sb           zero, 12(t3)
                  sh           tp, -16(t3)
                  sb           zero, 7(t3)
                  slti         tp, s4, 813
                  lh           a0, -16(t3)
                  ori          t5, gp, -1145
                  slli         sp, a2, 31
                  lbu          t4, 13(t3)
                  sh           s0, 16(t3)
                  lhu          t4, -12(t3)
                  sb           s4, -5(t3)
                  srl          a5, t5, s10
                  sb           s5, 15(t3)
                  sb           s2, -9(t3)
                  nop
                  lhu          t2, -12(t3)
                  sltu         s5, a7, a4
                  sh           ra, -6(t3)
                  sb           zero, -7(t3) #end riscv_load_store_rand_instr_stream_9
                  la           t4, region_0+1940 #start riscv_load_store_rand_instr_stream_8
                  sh           gp, -22(t4)
                  lb           a0, 3(t4)
                  addi         s0, t2, 1740
                  lbu          s0, -2(t4)
                  sh           t0, 0(t4)
                  lbu          t1, 1(t4)
                  lh           a5, -48(t4)
                  slt          a5, t0, s3
                  sb           tp, -27(t4)
                  nop
                  lb           t1, -15(t4)
                  nop
                  sb           t6, 58(t4)
                  lbu          s3, -33(t4)
                  xor          s2, s10, sp
                  sh           s7, 14(t4)
                  srai         s3, zero, 2
                  lh           a0, -56(t4)
                  lb           t3, 0(t4)
                  lui          zero, 167218
                  auipc        sp, 484271
                  add          t6, s9, t6
                  sb           a3, -54(t4)
                  lh           s10, -10(t4)
                  and          t2, t1, a2
                  lbu          s6, -17(t4)
                  lbu          s10, -35(t4)
                  sb           zero, 6(t4)
                  lb           t2, 36(t4)
                  addi         s1, s2, -797
                  xori         s8, s2, -601
                  sll          s1, s9, t4
                  sb           a1, -5(t4)
                  sub          zero, s6, t3
                  lhu          t1, 34(t4)
                  sb           t0, 53(t4) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+118 #start riscv_load_store_rand_instr_stream_7
                  lbu          t6, 555(sp)
                  lui          zero, 488176
                  and          a6, a1, gp
                  slt          tp, s2, a0
                  srai         t2, a5, 17
                  srai         t1, s9, 13
                  andi         t4, t3, 677
                  and          t3, a0, tp
                  sh           s6, 1704(sp)
                  sb           t1, 875(sp)
                  auipc        a4, 393340
                  xor          s5, a5, s7
                  lbu          t4, 144(sp)
                  and          s8, t1, t5
                  sb           a6, 373(sp)
                  ori          t4, sp, -1972
                  sw           tp, 1542(sp)
                  lui          t3, 223822
                  nop
                  lbu          s6, 1203(sp)
                  sll          a4, a6, a0
                  lw           t0, 218(sp)
                  lhu          a4, 1722(sp)
                  lbu          t5, 356(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t3, region_1+527 #start riscv_load_store_rand_instr_stream_6
                  or           tp, t6, t2
                  lb           s9, 83(t3)
                  sra          s5, a7, s0
                  addi         s6, s2, -149
                  lb           s4, -122(t3)
                  lhu          s11, 245(t3)
                  lbu          s11, 180(t3)
                  addi         a4, t5, -1119
                  lb           s0, 170(t3)
                  lb           s2, 16(t3)
                  lw           t2, -243(t3)
                  sltiu        t1, gp, -1287
                  lbu          a0, -210(t3)
                  sra          t4, s7, ra
                  sb           t3, -98(t3)
                  slt          s8, t3, a7
                  lhu          ra, -101(t3)
                  sra          a6, t3, zero
                  lb           sp, -204(t3)
                  addi         tp, s5, 651
                  add          a4, t1, s1
                  lh           t0, 183(t3)
                  lb           a5, -32(t3)
                  sb           a2, -223(t3)
                  xor          t4, t4, t0
                  lui          a7, 964734
                  sb           tp, 52(t3)
                  slli         t4, a1, 14
                  srli         s11, s3, 31
                  lh           t6, 137(t3)
                  sb           a2, 23(t3)
                  addi         ra, s9, 748
                  lui          s8, 257821
                  slti         t1, gp, 1923
                  slti         s3, s11, -1432
                  andi         a0, t2, 1869
                  or           s3, gp, s7
                  slt          t0, s5, t2
                  sw           s6, -31(t3)
                  sub          a6, a2, s2
                  sub          s2, a0, a7
                  sh           s1, 133(t3)
                  sb           a7, 244(t3) #end riscv_load_store_rand_instr_stream_6
                  la           s10, region_1+718 #start riscv_load_store_rand_instr_stream_2
                  lb           t5, -166(s10)
                  slt          a0, gp, gp
                  sltiu        gp, s1, -1094
                  sh           s10, 42(s10)
                  srai         t4, a4, 7
                  sra          t5, t0, t5
                  lb           t3, -72(s10)
                  lb           t3, -89(s10)
                  andi         a4, t6, 344
                  sb           s9, 85(s10)
                  add          s4, t3, ra
                  addi         zero, t1, -1323
                  and          tp, s4, zero
                  lbu          t4, -112(s10)
                  lhu          gp, 244(s10)
                  xor          s11, zero, a1
                  add          gp, s7, a4
                  sub          s8, s10, t4
                  slti         s9, s4, 1617
                  sw           s7, 182(s10)
                  lbu          s6, 202(s10)
                  xori         s0, a6, -252
                  and          t2, s5, gp
                  slt          tp, s11, s10
                  slti         s9, gp, -1997
                  slt          s5, a0, t5
                  srai         s4, s5, 2
                  sh           tp, -56(s10)
                  add          a5, s8, s11
                  sb           a1, 89(s10)
                  lhu          a7, -106(s10)
                  sra          t0, ra, s6
                  srai         tp, t5, 26
                  or           t0, a4, s5
                  sltu         s3, s4, a6
                  lb           s2, 191(s10)
                  lb           ra, -219(s10)
                  lbu          zero, -227(s10)
                  lh           a4, -236(s10)
                  sb           t0, 203(s10)
                  sltu         t3, a3, t3
                  lbu          s3, -168(s10)
                  lbu          a4, 88(s10) #end riscv_load_store_rand_instr_stream_2
                  xor          a0, t4, a2
                  sll          a5, s7, t6
                  sll          tp, a3, s11
                  andi         s5, s0, 1265
                  slt          s4, t5, s0
                  addi         gp, t4, 1443
                  blt          s1, a0, 23f
                  bltu         s0, t5, 27f
                  sltiu        s9, t1, 1386
                  sltiu        t0, s9, -990
                  bne          s8, t3, 21f
                  sra          zero, s6, s2
                  slt          a4, a6, a0
                  srli         s4, s10, 22
                  srl          s3, sp, a3
                  bne          s1, tp, 18f
                  sra          a5, a5, s10
                  nop
18:               bgeu         a4, a7, 28f
                  sltiu        s1, t0, 917
                  sll          t3, t2, t3
21:               xori         s9, t3, -516
                  slli         a6, s6, 28
23:               slti         s6, a6, -1644
                  or           gp, s4, t5
                  slti         s5, sp, -1835
                  and          s0, s4, t5
27:               srli         s0, s0, 31
28:               xor          s11, a6, gp
                  slti         t6, s5, 1599
                  sub          s0, t2, s3
                  srai         t0, sp, 21
                  srli         a6, a6, 16
                  srl          gp, s9, s3
                  addi         zero, a7, -556
                  sll          a7, t4, t1
                  add          tp, sp, t1
                  addi         s2, sp, 895
                  sltiu        zero, a6, 1599
                  bne          a3, s8, 55f
                  add          s0, t5, t4
                  sll          s8, a4, s2
                  srl          a4, a2, a0
                  sra          s9, s9, s1
                  sra          a6, a1, s4
                  slt          a6, a4, t3
                  addi         t3, a5, 965
                  slti         gp, a3, -1079
                  beq          s8, a3, 62f
                  bltu         a2, t2, 55f
                  sra          tp, s4, a1
                  slti         s4, a7, -1460
                  xori         s6, s0, -1459
                  xor          s3, s11, s4
                  andi         t6, s1, -1650
55:               ori          s3, s3, 1584
                  beq          tp, s8, 61f
                  addi         s3, a0, -761
                  bne          gp, s7, 63f
                  auipc        s9, 140188
                  xori         a5, t5, -1347
61:               sll          s9, t2, s8
62:               ori          s3, a3, -320
63:               srli         s4, a6, 27
                  xori         t0, t6, -1420
                  srli         s5, ra, 1
                  add          s9, gp, a5
                  bne          a4, sp, 86f
                  xori         s3, t1, -686
                  bgeu         ra, ra, 86f
                  srl          a7, t4, s1
                  srli         t3, s0, 13
                  xor          s3, s4, a7
                  srai         tp, s0, 6
                  bge          sp, gp, 82f
                  or           s11, tp, a7
                  xori         a4, sp, 1764
                  bgeu         s6, s4, 79f
                  bge          t0, a2, 98f
79:               srli         s4, s7, 30
                  xori         s8, a2, 1019
                  and          t4, tp, s1
82:               ori          t3, a6, 1233
                  sra          tp, zero, sp
                  blt          zero, t3, 103f
                  or           s11, ra, a5
86:               andi         s10, t5, 882
                  bne          a2, sp, 92f
                  srl          s8, s4, t3
                  xor          s0, a4, s8
                  srli         a0, s2, 25
                  lui          s0, 277095
                  sub          sp, s2, t0
                  srl          t3, a6, t4
                  andi         s1, s4, -30
                  xor          a1, zero, s5
                  slt          s6, sp, a7
                  srl          t3, t3, a7
                  la           a7, sub_3
                  xori         s9, sp, 237
                  addi         a7, a7, -317
                  slli         a6, a3, 6
sub_2_j4:         jalr         t1, a7, 318 #jump sub_2 -> sub_3
                  nop
                  sll          s4, t4, s5
92:               ori          s6, s2, -1674
                  ori          a5, a2, 1474
                  sltu         s4, t5, t2
                  beq          s10, a0, 102f
                  xor          a7, s11, a4
                  bltu         s1, s0, 108f
98:               or           s1, a4, t6
                  bge          s8, a0, 110f
                  srl          a7, s10, ra
                  add          s10, a3, s3
102:              slt          t2, t3, a5
103:              ori          t6, zero, 111
                  xori         s3, a6, -441
                  sub          t6, a2, t6
                  sltu         t1, a5, t4
                  bgeu         s8, gp, 125f
108:              sra          s3, s6, s9
                  lui          t0, 978628
110:              xor          a6, a2, s1
                  blt          s9, s11, 114f
                  add          s9, s5, s0
                  blt          t3, a7, 131f
114:              sll          t5, a5, s1
                  and          s4, s10, s11
                  and          s1, gp, t5
                  addi         gp, t1, -214
                  addi         s11, t4, 714
                  ori          s10, a5, 1053
                  addi         sp, t4, -1233
                  xori         t1, s11, 210
                  and          tp, s8, a6
                  add          t0, s10, s11
                  addi         s6, a4, 16
125:              addi         s6, t2, 1618
                  srl          a5, a4, a3
                  and          tp, t2, s5
                  slti         s10, t1, -1691
                  xor          ra, s4, s8
                  sra          s10, t5, a1
131:              srai         a6, zero, 13
                  beq          a1, t5, 144f
                  add          s6, s7, gp
                  and          s2, s2, s7
                  and          t6, ra, a0
                  bne          a3, s3, 149f
                  sltiu        a7, s5, 299
                  or           gp, s2, t6
                  slti         t1, a3, -1593
                  sra          t2, a3, a7
                  ori          s10, t6, 817
                  srli         t2, t6, 1
                  slt          ra, a5, s9
144:              sra          t0, t1, zero
                  lui          a1, 633794
                  ori          s2, s5, -2004
                  beq          a6, s6, 154f
                  ori          a0, a2, 443
149:              bltu         t4, s0, 163f
                  srai         s8, a7, 26
                  sll          t5, a7, a2
                  sltiu        t0, t3, -1712
                  nop
154:              bge          t0, zero, 173f
                  nop
                  bgeu         s9, t4, 173f
                  beq          s10, t2, 166f
                  auipc        s1, 878092
                  bgeu         s9, t2, 162f
                  beq          s2, s3, 169f
                  sltu         s2, a0, a7
162:              sra          s9, a0, t6
163:              xori         s1, s10, 1836
                  bgeu         a0, s10, 180f
                  add          t5, s3, a2
166:              bne          s3, s9, 179f
                  srai         a0, a1, 17
                  lui          t2, 821597
169:              andi         s10, a2, -202
                  bge          s11, t1, 178f
                  or           ra, s1, s3
                  addi         s10, t4, 1985
173:              srl          t1, s6, t0
                  sub          s1, s6, s6
                  lui          a0, 896888
                  blt          sp, a7, 188f
                  bltu         ra, s6, 184f
178:              bge          s1, s8, 195f
179:              sll          zero, sp, t0
180:              nop
                  auipc        t4, 152182
                  addi         t1, a1, 279
                  sll          s10, s5, t5
184:              bge          t3, s8, 203f
                  sltu         a6, zero, s5
                  sltiu        a7, tp, -1776
                  bne          s5, s4, 207f
188:              bgeu         s5, t5, 193f
                  srl          a7, gp, s7
                  sra          t3, t0, s4
                  sltu         s2, a1, t1
                  sra          gp, s2, s5
193:              srl          t5, zero, t5
                  slti         s4, s1, 1462
195:              lui          s3, 819936
                  blt          t1, a1, 214f
                  andi         sp, a0, -1674
                  andi         s10, t1, 1001
                  addi         s3, t0, 972
                  or           a7, s3, zero
                  or           a5, t0, s9
                  and          t4, zero, s6
203:              sltu         s11, s7, s9
                  srai         a7, s2, 3
                  srli         t4, t5, 21
                  xor          s2, s1, a2
207:              bne          a1, t3, 224f
                  auipc        zero, 392994
                  blt          t1, s2, 227f
                  bltu         s11, s5, 227f
                  bltu         a7, s8, 213f
                  slli         s6, s5, 12
213:              and          s8, gp, t3
214:              lui          s0, 1023028
                  slt          s1, ra, a5
                  and          s10, t4, a4
                  slt          tp, s0, s0
                  slt          sp, a7, s2
                  srli         s0, t6, 18
                  srli         s5, s3, 21
                  lui          s0, 749027
                  sub          s10, zero, a4
                  bltu         t1, a3, 234f
224:              slti         a1, s10, 660
                  add          a7, tp, a6
                  slli         s4, ra, 16
227:              and          a4, t2, s4
                  bgeu         a4, a7, 234f
                  addi         s9, gp, 295
                  sra          s8, tp, ra
                  sltu         t5, s5, t0
                  slli         s0, zero, 6
                  slti         a6, a0, 694
234:              bge          gp, t2, 248f
                  bgeu         a5, s11, 249f
                  srli         t1, ra, 14
                  lui          a0, 57893
                  addi         s1, a2, -1574
                  addi         s2, a2, 844
                  xori         t6, s9, 1289
                  slli         s10, sp, 3
                  sll          s6, s0, sp
                  srai         s6, t0, 29
                  sll          t4, a6, s11
                  bltu         t6, a1, 264f
                  nop
                  auipc        t5, 314378
248:              sll          a0, a0, s7
249:              nop
                  lui          t5, 349588
                  andi         a5, t2, 1371
                  bltu         a4, s3, 255f
                  auipc        a7, 254944
                  sll          a4, s8, t4
255:              sltu         s6, s6, a0
                  or           t6, s5, a0
                  sra          t0, t2, s2
                  and          a1, a2, t3
                  ori          tp, t2, -585
                  sltu         s2, t3, tp
                  blt          a3, a7, 280f
                  and          zero, s9, a7
                  blt          t1, a1, 283f
264:              sra          s4, s7, s11
                  sltu         a4, a7, s7
                  bne          ra, a6, 277f
                  sltiu        t2, s10, 1431
                  add          sp, zero, ra
                  sll          a0, a1, gp
                  sll          zero, t0, a0
                  bgeu         s10, t2, 282f
                  slli         s4, a5, 4
                  bgeu         s0, tp, 278f
                  bge          t4, tp, 284f
                  sub          a0, sp, t4
                  andi         t4, t3, 1378
277:              sra          s8, s8, t2
278:              blt          t4, s3, 285f
                  xori         a0, t6, 754
280:              bltu         s4, a6, 285f
                  add          s11, s2, t5
282:              lui          tp, 324504
283:              and          zero, a7, a4
284:              lui          s10, 808746
285:              sltiu        s10, a1, 310
                  addi         a6, s8, 57
                  bne          s5, s5, 294f
                  slli         s9, a6, 26
                  slli         s0, a1, 19
                  beq          s7, s4, 295f
                  sll          s1, a6, s0
                  addi         a4, s1, -1434
                  bne          a2, t0, 299f
294:              xor          t3, tp, s0
295:              add          s5, s1, t6
                  xor          s10, s5, s0
                  nop
                  bltu         a4, t3, 315f
299:              blt          t6, s2, 317f
                  add          s3, a5, s0
                  blt          a4, ra, 313f
                  add          a1, zero, t0
                  add          t2, a3, a1
                  lui          t3, 733608
                  slti         a4, a3, -1734
                  slti         t3, s8, 352
                  bge          t4, s6, 327f
                  beq          t5, s6, 327f
                  andi         ra, a4, -1479
                  nop
                  sll          a7, t4, t5
                  srai         s5, a4, 11
313:              slti         t5, a0, 1266
                  bge          s1, s3, 331f
315:              sll          s0, s6, s3
                  or           t1, s5, s9
317:              beq          t2, s0, 322f
                  lui          t6, 351345
                  slt          a4, tp, a6
                  auipc        s3, 970802
                  nop
322:              add          t4, s3, s9
                  blt          s3, s9, 336f
                  bgeu         t6, a1, 338f
                  and          tp, a4, tp
                  slli         s5, s5, 28
327:              addi         tp, a6, -1200
                  add          zero, a7, a5
                  slti         a4, t4, 1427
                  nop
331:              bge          s9, ra, 338f
                  and          s11, zero, a3
                  slt          t6, s4, gp
                  slt          a0, t5, gp
                  sltu         a4, a1, t4
336:              xori         s0, s6, -1637
                  bge          a0, s11, 356f
338:              and          s9, tp, s8
                  nop
                  xori         a5, s8, 601
                  slt          tp, t4, s1
                  and          tp, s8, tp
                  sra          tp, s6, t4
                  sltiu        ra, t0, -1055
                  slti         s3, a6, 567
                  slti         zero, sp, -1793
                  or           t2, t6, tp
                  sll          s6, s8, s2
                  bltu         a4, s8, 369f
                  srli         s0, a7, 26
                  sll          a7, ra, t4
                  sll          zero, s7, a0
                  blt          a7, s8, 369f
                  ori          tp, a6, -1984
                  slt          a7, a7, s2
356:              xori         a7, s7, -320
                  slt          t5, s1, t3
                  lui          t3, 151451
                  andi         s8, gp, -1991
                  slt          a1, t4, a2
                  slt          a4, a5, s8
                  srai         s1, a7, 25
                  ori          s9, s1, 112
                  sltu         s5, s8, s4
                  lui          s9, 1002990
                  and          s3, s0, t1
                  sltiu        a0, s10, -1427
                  bge          s5, s1, 387f
369:              nop
                  slli         s11, a0, 0
                  srl          s11, s1, gp
                  bltu         s3, t6, 389f
                  bltu         s1, a3, 384f
                  add          t0, s10, a1
                  or           gp, t1, t6
                  sltiu        s4, sp, -357
                  slli         t1, s1, 26
                  sub          s8, t6, t6
                  srli         s10, s11, 23
                  srai         a1, t3, 18
                  sltiu        s4, a6, 602
                  blt          zero, s8, 387f
                  beq          s3, a7, 394f
384:              ori          a5, s2, -1377
                  or           t2, a6, a3
                  addi         s8, zero, 125
387:              xori         s3, a4, -1281
                  slli         a5, s4, 25
389:              srl          s11, t1, a2
                  sra          t4, a3, t4
                  srai         t1, gp, 29
                  xor          s4, s2, s10
                  beq          s6, s5, 396f
394:              bltu         t5, ra, 396f
                  slt          t2, t5, s4
396:              sltiu        a6, t2, -1150
                  addi         gp, s11, 1517
                  auipc        ra, 904832
                  and          a1, t0, ra
                  srai         s3, a1, 7
                  sll          a0, a3, a0
                  blt          s5, gp, 412f
                  bne          a2, s3, 412f
                  xor          t2, tp, s4
                  slt          s0, a4, s1
                  bltu         a0, s3, 420f
                  bne          s7, a1, 425f
                  blt          s9, s9, 419f
                  slt          s5, s0, s2
                  and          s5, t5, zero
                  slti         t5, s11, 1484
412:              sra          ra, a6, t2
                  bgeu         a4, s1, 421f
                  nop
                  slt          sp, t5, sp
                  auipc        s8, 296182
                  sltiu        t1, t3, -3
                  sltu         a6, s4, gp
419:              and          s8, a5, s9
420:              bltu         s5, t1, 423f
421:              srl          t1, a0, s5
                  srl          tp, s8, s5
423:              or           s10, tp, s2
                  sltiu        s2, s4, -1577
425:              ori          s1, s7, -31
                  srl          t5, s6, t2
                  sub          s3, t0, s9
                  slli         tp, t3, 24
                  slt          gp, t6, t2
                  add          a5, t1, gp
                  sll          t0, s9, gp
                  lui          s2, 114395
                  slti         s2, t2, 1937
                  slli         t2, s3, 31
                  nop
                  slt          t2, s10, a1
                  sltu         t4, s10, sp
                  xori         a1, ra, -310
                  bge          s7, t0, 456f
                  bge          s7, a5, 450f
                  auipc        s1, 459444
                  sltu         s9, a4, a1
                  sub          s3, a6, s2
                  and          a7, s8, s10
                  bne          t6, t3, 462f
                  sub          s3, s4, s9
                  slli         a7, tp, 8
                  srli         t5, s7, 10
                  addi         t5, a0, 134
450:              xori         tp, t2, -563
                  lui          a7, 482694
                  srli         s0, t1, 27
                  bne          a1, s3, 472f
                  bgeu         s10, a4, 460f
                  slti         a0, s5, -636
456:              bgeu         t3, zero, 463f
                  andi         t4, s1, -1049
                  nop
                  bltu         s11, s3, 464f
460:              slt          t5, t3, s7
                  bltu         a0, a5, 469f
462:              slt          tp, t5, a4
463:              bne          t5, tp, 482f
464:              sub          s8, t0, ra
                  bgeu         a1, a0, 476f
                  sub          t1, s9, sp
                  xori         sp, s6, 1922
                  bne          a4, sp, 484f
469:              bltu         t5, s3, 471f
                  or           t2, s3, s10
471:              beq          zero, s8, 485f
472:              bgeu         s11, s2, 490f
                  blt          s5, a3, 486f
                  andi         s3, a5, -1763
                  add          t2, t0, ra
476:              andi         s6, a6, -1161
                  addi         s3, t6, -270
                  srli         t1, t2, 10
                  and          s3, a2, s1
                  sll          t2, t3, a5
                  slli         t1, t2, 2
482:              sra          a4, t5, tp
                  andi         s11, tp, 178
484:              ori          s5, s4, -1635
485:              slti         t5, a7, 762
486:              sub          tp, s8, a4
                  srai         sp, s3, 8
                  sltu         s11, t1, s8
                  or           s4, t1, s2
490:              srl          a5, s4, s1
                  sub          ra, a1, s6
                  sltu         s11, t5, ra
                  slti         sp, s11, 652
                  srl          a1, a4, s7
                  slli         ra, ra, 21
                  xori         a0, zero, -1705
                  sll          s6, sp, t3
                  sub          t1, sp, s2
                  srl          s8, s3, s10
                  andi         a1, s7, 1612
                  slt          s0, sp, s11
                  or           a0, ra, a3
                  srl          t1, s11, a5
                  srai         s3, zero, 20
                  add          s10, t0, s11
                  bgeu         a7, t2, 526f
                  nop
                  or           s4, t3, a7
                  bltu         s6, t2, 514f
                  bgeu         a5, t1, 524f
                  sltu         s8, s10, t0
                  srai         t5, t3, 22
                  sltiu        s11, t3, -924
514:              blt          t4, s6, 523f
                  and          t6, a6, t6
                  or           ra, a7, t2
                  bltu         ra, s10, 528f
                  srl          s11, a4, a5
                  sll          s9, s9, t2
                  andi         ra, t2, -633
                  add          a0, a3, t0
                  srl          ra, t0, s10
523:              srli         s1, t5, 28
524:              sra          s0, s6, s1
                  bgeu         gp, a3, 528f
526:              srl          s1, s6, sp
                  sub          s10, s0, t2
528:              beq          ra, zero, 547f
                  sltiu        a7, s3, -2000
                  xori         s9, t0, -1766
                  srli         a1, s2, 8
                  slt          t2, a5, s5
                  bne          s9, s11, 551f
                  addi         a1, a1, -80
                  xor          t6, tp, s1
                  slt          t5, a4, a0
                  sll          s3, t5, s2
                  bltu         t0, s4, 558f
                  slt          a1, t0, s0
                  bge          tp, s7, 547f
                  and          t4, t6, t1
                  lui          a6, 221036
                  sll          s10, t4, t4
                  slli         a4, t6, 20
                  ori          t0, s4, -331
                  lui          s5, 638428
547:              lui          t2, 562808
                  srai         a4, s1, 31
                  bge          ra, s4, 561f
                  srai         zero, a1, 21
551:              and          a1, zero, s7
                  add          s11, a0, a1
                  sll          s1, t4, s4
                  or           a6, zero, s5
                  beq          s10, s9, 566f
                  sltu         t4, a3, a1
                  or           t4, s10, s9
558:              auipc        ra, 611174
                  auipc        t3, 39407
                  slli         sp, s11, 28
561:              bgeu         s2, t3, 578f
                  slli         s1, t4, 26
                  add          a4, s6, a3
                  and          s10, t6, a6
                  srl          s0, t4, t0
566:              bge          s3, s6, 571f
                  nop
                  and          a0, t2, s7
                  bgeu         s11, s5, 572f
                  bne          a4, sp, 588f
571:              add          sp, a4, gp
572:              blt          t0, t3, 577f
                  sll          a5, s2, t0
                  xori         s1, s11, 954
                  sltu         gp, t0, s11
                  blt          s8, s9, 595f
577:              sub          s10, s8, a4
578:              bltu         a3, s1, 598f
                  sra          t0, s11, tp
                  bltu         a5, s4, 598f
                  sra          s11, t2, t3
                  xori         s6, a1, -1661
                  bne          s3, s2, 599f
                  slli         s5, a0, 26
                  sub          a5, gp, ra
                  srli         a1, s6, 20
                  xor          s9, a5, t1
588:              beq          a0, a4, 602f
                  and          a0, a7, s1
                  srli         t2, t5, 1
                  sltu         s5, ra, s8
                  bltu         t4, t5, 595f
                  ori          t4, a6, -1456
                  bltu         s2, sp, 611f
595:              addi         t6, a1, 1952
                  sub          s5, s0, a7
                  lui          t0, 651680
598:              and          a4, s4, s8
599:              lui          t6, 561565
                  srl          s6, t5, a3
                  srl          s5, s11, s0
602:              andi         t6, s5, 359
                  xor          t2, a1, t5
                  and          t1, s5, s0
                  bne          s0, a0, 622f
                  slt          t0, a0, s6
                  bltu         s3, t5, 618f
                  blt          ra, s4, 613f
                  or           s11, s1, s3
                  srl          s5, t5, s0
611:              ori          sp, s6, 1878
                  beq          t4, a2, 631f
613:              slti         s0, s10, -812
                  xor          t5, s6, s4
                  andi         t4, t2, 1421
                  slt          s6, s6, ra
                  andi         t3, s8, -70
618:              bne          s9, ra, 635f
                  ori          ra, s4, 1072
                  bgeu         a2, zero, 630f
                  bne          s6, sp, 629f
622:              bltu         s2, t3, 627f
                  bgeu         s9, sp, 636f
                  srl          s4, t1, a5
                  slli         t5, s6, 1
                  bgeu         a1, t4, 640f
627:              bltu         a3, zero, 636f
                  xori         sp, ra, -220
629:              blt          s8, a2, 649f
630:              slt          t1, s1, s6
631:              addi         s2, a3, 1709
                  la           s9, region_0+1710 #start riscv_load_store_rand_instr_stream_0
                  sh           a3, -14(s9)
                  srai         a0, a5, 25
                  lbu          s8, 5(s9)
                  sltu         s11, s3, s10
                  lbu          a0, -1(s9)
                  sh           t1, 14(s9)
                  sh           t1, 16(s9)
                  and          t6, t0, s6
                  lb           s0, 15(s9)
                  xori         t0, a5, 2024
                  xori         a7, s5, 398
                  srli         a5, s9, 9
                  sh           a3, -14(s9)
                  sh           a0, 10(s9)
                  lbu          s2, -13(s9)
                  sub          a0, s10, a1
                  lh           s3, -4(s9)
                  add          a7, s10, zero
                  sh           t5, -14(s9)
                  sb           s5, -6(s9)
                  ori          s8, t1, -215
                  lbu          s11, -15(s9)
                  lb           s8, 16(s9)
                  lb           t1, 11(s9)
                  srai         a6, t6, 16
                  lbu          s6, -9(s9)
                  lbu          t0, 16(s9)
                  and          t4, s3, s9
                  andi         s0, a6, -662
                  lbu          s8, -15(s9)
                  lbu          gp, 10(s9)
                  sltu         s10, ra, a2
                  lbu          a6, -4(s9)
                  lui          t1, 106581
                  sll          s2, s4, a3
                  and          s6, a7, s4
                  add          a0, a3, s9
                  sltiu        a6, a6, -1810
                  lbu          sp, 1(s9) #end riscv_load_store_rand_instr_stream_0
                  xori         t5, a6, -560
                  srai         zero, s1, 4
                  blt          a4, a5, 640f
635:              srai         s6, zero, 14
636:              beq          s8, s1, 639f
                  sra          s3, s3, t1
                  add          t1, t6, gp
639:              lui          a7, 2575
640:              bltu         s4, sp, 659f
                  xori         t1, t4, 1154
                  beq          sp, s5, 653f
                  sub          s5, t5, a2
                  sltiu        s5, s10, 603
                  andi         a5, s2, 552
                  srai         t0, a6, 14
                  slt          tp, t0, s6
                  sll          s8, a5, t5
649:              slt          t6, t1, a3
                  ori          s2, s3, -490
                  bltu         t1, tp, 658f
                  nop
653:              xor          s0, t0, s11
                  srai         tp, t4, 24
                  slti         s5, s5, -916
                  ori          a6, gp, -817
                  bltu         s10, s8, 668f
658:              slti         gp, a6, 1611
659:              slt          s9, a7, a5
                  nop
                  slt          s3, s1, ra
                  addi         sp, a6, 1322
                  sub          s3, t1, s7
                  sub          t4, s9, a1
                  sub          a4, a0, a7
                  blt          t5, s11, 678f
                  sltiu        s0, ra, -1968
668:              addi         ra, t6, -877
                  auipc        t3, 944563
                  sltu         s6, a2, tp
                  sra          s6, t0, s3
                  nop
                  xor          s10, s3, zero
                  bge          a5, s4, 676f
                  xor          a5, s2, tp
676:              xor          s11, t3, s0
                  or           s10, t1, s3
678:              bltu         s3, s8, 685f
                  slti         s4, a2, 1118
                  sltiu        s0, ra, 706
                  addi         s6, a3, 2034
                  bgeu         s8, s8, 700f
                  slti         t1, a3, -625
                  slti         s10, s11, 1780
685:              slli         a4, gp, 18
                  addi         sp, s8, -1503
                  slt          a1, t5, t1
                  srli         gp, s7, 9
                  sll          t0, t3, s10
                  sltu         s6, a0, ra
                  slt          gp, s10, a4
                  slt          a0, a1, t3
                  slti         t6, a1, 1539
                  xori         s1, a1, 1738
                  sra          s3, tp, a2
                  beq          a6, s4, 703f
                  sub          s6, s1, s9
                  add          s9, a0, a6
                  slti         gp, gp, 1217
700:              nop
                  sll          t5, a3, t3
                  and          s4, gp, s9
703:              srl          ra, a7, t2
                  slt          s3, s10, s2
                  or           a4, t1, s9
                  xori         t3, a2, -788
                  nop
                  sltu         t2, gp, s3
                  nop
                  and          s2, a0, ra
                  bgeu         zero, s3, 720f
                  ori          a0, t6, 2014
                  sll          s8, tp, s6
                  beq          s0, a5, 725f
                  xori         s0, t3, 663
                  sltu         ra, s3, s0
                  addi         zero, a0, 1759
                  srli         zero, t6, 31
                  auipc        t5, 785176
720:              srai         s6, gp, 27
                  xor          t2, a0, t5
                  srli         s3, s4, 18
                  sra          s3, a6, s9
                  add          s1, a0, t3
725:              sltiu        s5, s0, -1841
                  bge          a1, s10, 740f
                  slti         a4, a6, -264
                  bne          s4, t0, 747f
                  slli         s11, gp, 16
                  blt          gp, zero, 732f
                  andi         a1, s9, 500
732:              nop
                  xor          tp, t6, s9
                  ori          a0, s10, 8
                  sll          gp, t2, ra
                  slti         gp, gp, -371
                  blt          s10, t0, 757f
                  bgeu         s5, s6, 758f
                  beq          a6, a7, 751f
740:              srl          gp, s8, t1
                  xor          a5, s7, a5
                  bltu         s1, t4, 761f
                  auipc        s3, 609224
                  lui          tp, 653481
                  xor          gp, s2, s11
                  and          zero, s7, a2
747:              bne          a2, a2, 758f
                  sra          s4, t1, a6
                  bne          t3, t1, 754f
                  slt          a0, t2, s8
751:              bge          s5, tp, 770f
                  ori          s1, s5, 1605
                  sltiu        zero, s5, -1923
754:              lui          sp, 148565
                  and          t2, s7, s4
                  sra          s6, s10, a4
757:              xor          s2, a6, a5
758:              slt          s1, t6, zero
                  sub          t1, t4, a7
                  slt          sp, a0, s0
761:              srl          a0, t0, t6
                  sll          a6, s1, s8
                  srai         s6, t2, 15
                  nop
                  sub          t3, a7, t5
                  sltu         sp, s0, t5
                  srli         s0, t1, 9
                  nop
                  srli         ra, tp, 11
770:              sltiu        s3, s8, 453
                  slli         s4, s10, 24
                  xori         s3, a5, 1691
                  sll          s9, s1, s9
                  addi         s1, ra, -1283
                  bltu         a3, a7, 783f
                  bge          s4, gp, 793f
                  xori         t6, a7, 1255
                  xor          s9, t0, t0
                  bgeu         s1, t0, 785f
                  slli         t1, s1, 16
                  slti         t3, s3, 1823
                  sra          s11, s4, a0
783:              auipc        t6, 918332
                  blt          a7, t6, 801f
785:              bltu         gp, s5, 788f
                  andi         gp, t5, 445
                  auipc        a7, 395895
788:              sub          ra, s10, s0
                  sltu         t1, zero, t6
                  xori         s5, a1, 76
                  sltiu        tp, s7, 1082
                  sll          s5, t0, s0
793:              slli         gp, t3, 15
                  srai         s2, t5, 30
                  xori         t5, tp, -779
                  sll          a6, s8, s6
                  srai         t0, s7, 0
                  auipc        a0, 369202
                  sll          s8, a7, a5
                  beq          a0, a2, 817f
801:              bgeu         s3, a6, 812f
                  bge          s0, a5, 807f
                  beq          s10, a4, 806f
                  xori         a0, s0, -645
                  slt          s0, zero, s1
806:              sltiu        t5, s4, 677
807:              ori          s0, a5, -1847
                  auipc        sp, 678872
                  nop
                  auipc        t4, 110859
                  bgeu         a7, ra, 825f
812:              slti         s10, s11, -473
                  bltu         s1, s9, 831f
                  xor          a1, a3, sp
                  bgeu         a6, a2, 820f
                  nop
817:              addi         a6, s6, 1004
                  and          t3, a0, t6
                  srai         s4, a2, 0
820:              andi         s4, t3, -687
                  or           a5, a7, a3
                  xor          a1, a5, t1
                  and          t0, s2, s11
                  bltu         t3, s10, 834f
825:              bgeu         s2, s3, 832f
                  add          t5, t2, t6
                  or           a4, a0, s11
                  beq          t1, t0, 844f
                  bge          s2, t2, 842f
                  sltu         s2, a6, s1
831:              auipc        s3, 337589
832:              addi         t1, a5, 18
                  la           ra, region_0+1744 #start riscv_load_store_rand_instr_stream_5
                  sb           ra, 105(ra)
                  lbu          s1, -61(ra)
                  xor          a5, zero, s10
                  ori          t6, s9, -1557
                  sra          zero, t0, s9
                  add          s11, s11, s2
                  lb           s2, -1(ra)
                  or           s5, s1, s6
                  lw           s6, 76(ra)
                  lui          s0, 625221
                  sb           t1, 217(ra)
                  sll          t4, s10, gp
                  nop
                  lbu          s4, -219(ra)
                  sltiu        s0, t1, -459
                  lbu          s4, -77(ra)
                  addi         tp, a4, 1570
                  xor          t1, gp, t6
                  auipc        s8, 657421
                  lb           s3, 141(ra)
                  or           s4, t1, t5
                  add          s6, t4, a1
                  xori         s0, s0, -1892
                  sw           s11, -124(ra)
                  slt          a1, s2, a0
                  lh           s2, -124(ra)
                  or           t3, t4, s6
                  nop
                  lbu          t2, -161(ra)
                  lui          s8, 150603
                  sltu         sp, a7, t5
                  add          s10, t0, s5
                  slti         s9, t3, -1058
                  sb           t0, 92(ra)
                  sll          s0, s11, s2
                  lw           s0, 92(ra)
                  or           s9, zero, t1
                  addi         a5, t1, -1037
                  sll          tp, s6, s8
                  add          s3, s5, ra
                  sltiu        s1, t5, -1841
                  lh           a7, 30(ra)
                  lbu          s11, -176(ra)
                  lw           a6, -224(ra)
                  srl          s9, a6, s4
                  sh           a0, 228(ra) #end riscv_load_store_rand_instr_stream_5
                  sll          a4, a5, t2
834:              addi         t6, zero, -905
                  and          sp, a5, tp
                  and          s6, s5, t5
                  slli         t6, a0, 12
                  slt          zero, t4, s9
                  bgeu         s7, a1, 858f
                  slli         s6, ra, 12
                  and          a1, s8, sp
842:              sra          s5, s1, s6
                  bne          s10, s5, 857f
844:              xori         s5, tp, 1008
                  slli         gp, s6, 30
                  bge          t5, ra, 863f
                  sra          s2, a5, t3
                  srl          s9, s3, t0
                  sub          tp, t6, a6
                  or           s11, s9, a1
                  nop
                  srli         t3, a0, 15
                  sltu         s9, s5, a1
                  srai         a4, ra, 18
                  xori         s9, s3, -523
                  addi         a5, s3, 286
857:              sra          tp, s11, a7
858:              or           t4, a0, a4
                  andi         s2, s8, -1303
                  blt          a3, tp, 863f
                  xor          a5, t2, s2
                  and          s6, zero, s10
863:              srli         t4, s4, 16
                  bge          t1, s4, 871f
                  addi         s10, a1, 1515
                  sra          t4, s0, zero
                  addi         s2, a0, 1098
                  auipc        zero, 974970
                  srl          t1, t4, t1
                  sltu         tp, t1, ra
871:              andi         t4, s1, 343
                  sll          a4, a5, s2
                  addi         s5, a4, -1451
                  sltiu        zero, t4, -705
                  xor          a6, t2, t5
                  xori         a7, a4, 2018
                  bne          a6, a3, 882f
                  addi         t6, s10, -337
                  beq          a1, a6, 897f
                  slt          a4, s9, s10
                  or           s1, s11, s1
882:              srai         tp, s10, 17
                  sll          s10, sp, t1
                  slt          a6, s4, s2
                  sub          t2, ra, s3
                  or           a5, t2, s7
                  sll          gp, t0, a3
                  sll          t1, a7, zero
                  lui          tp, 415503
                  srl          a5, a0, a0
                  bltu         s0, s5, 910f
                  slli         s11, a4, 14
                  srl          s9, sp, s8
                  bge          a2, s10, 913f
                  andi         s8, a1, 717
                  srl          gp, a4, s1
897:              srl          s2, t0, t6
                  srai         a4, t0, 24
                  sltu         a1, a0, a3
                  slli         gp, t4, 25
                  bge          s5, t1, 907f
                  andi         a4, a2, 1410
                  slli         t4, s10, 9
                  xor          zero, a5, a4
                  add          ra, t5, s7
                  auipc        t2, 491970
907:              bgeu         s7, s8, 914f
                  sra          t0, a3, s7
                  srai         s10, s0, 12
910:              sltu         gp, s0, a5
                  sub          a7, s6, a1
                  add          zero, a0, a2
913:              blt          a3, s11, 924f
914:              xori         t0, ra, -676
                  sub          s4, tp, s2
                  bge          s6, t0, 921f
                  slli         sp, s2, 9
                  and          a5, a4, tp
                  srai         s6, t3, 4
                  addi         zero, s6, -170
921:              sltiu        a6, sp, -51
                  bltu         s2, s11, 935f
                  xori         s6, tp, 1434
924:              or           t5, s9, a6
                  addi         s6, s10, 774
                  sll          s8, s11, zero
                  blt          a1, sp, 935f
                  slli         gp, t5, 18
                  addi         a5, t5, -1878
                  blt          s6, a2, 946f
                  slt          s2, s11, sp
                  sra          s8, t0, a0
                  sll          zero, s10, a6
                  srai         a0, gp, 21
935:              sltu         a7, s11, zero
                  sltiu        t3, s5, 52
                  bne          a0, a4, 955f
                  sltu         t6, t4, s10
                  xori         a1, s9, -1559
                  or           s6, t2, s8
                  sltu         s5, s7, s11
                  bne          s2, a2, 945f
                  lui          s11, 272955
                  sll          t1, t1, ra
945:              sll          t0, s9, sp
946:              sra          s8, t5, t0
                  srli         sp, t3, 9
                  or           sp, t6, s4
                  blt          s1, s9, 959f
                  sltiu        s10, a7, -711
                  sltu         a5, a7, s10
                  andi         t0, a5, 1403
                  blt          zero, s0, 958f
                  srai         t5, s1, 9
955:              slti         zero, sp, -1926
                  or           s10, s2, t6
                  nop
958:              or           s1, gp, a7
959:              ori          t1, s6, 1304
                  blt          a4, s10, 974f
                  addi         a1, s0, -713
                  bne          s2, zero, 974f
                  nop
                  auipc        gp, 950274
                  auipc        t3, 286114
                  slt          t5, t5, s7
                  srai         zero, t0, 6
                  xor          t6, s8, t5
                  xor          a7, s2, s11
                  addi         ra, gp, -526
                  and          t4, s8, a4
                  nop
                  sra          gp, zero, a7
974:              srai         a0, s10, 18
                  sll          t6, s5, a4
                  sra          t2, s6, t6
                  bne          t5, s8, 994f
                  bge          s3, tp, 998f
                  slt          a5, t3, zero
                  beq          gp, sp, 982f
                  and          s6, t3, t5
982:              srl          s1, s2, sp
                  srli         gp, t2, 28
                  bltu         a1, sp, 1001f
                  sll          t6, t6, zero
                  auipc        ra, 322977
                  and          a0, ra, t6
                  lui          s1, 940144
                  slli         a1, a3, 27
                  bne          s7, t2, 999f
                  slti         t4, a5, 389
                  slt          gp, a3, s4
                  slt          s9, s2, s8
994:              slli         tp, a6, 10
                  sltiu        s8, t1, 1926
                  bgeu         a4, t5, 1016f
                  sub          a7, s5, s3
998:              blt          s9, gp, 1009f
999:              nop
                  blt          t0, a1, 1011f
1001:             sltu         s9, a5, t5
                  beq          t2, ra, 1010f
                  ori          s8, gp, -473
                  bne          a0, s9, 1024f
                  slt          sp, s6, s10
                  sltu         t4, s7, s9
                  sra          s1, a0, a6
                  sra          s2, s10, s7
1009:             bne          zero, zero, 1016f
1010:             andi         s11, t4, -261
1011:             srl          a1, s7, s10
                  sltiu        gp, s5, 340
                  slli         a4, zero, 15
                  bltu         t0, t5, 1034f
                  bge          t4, tp, 1026f
1016:             sltiu        s9, a3, 1760
                  sra          gp, a2, s9
                  sll          s10, sp, sp
                  srai         t2, s9, 0
                  xor          t5, s4, a6
                  srl          s0, a0, t3
                  sub          t5, t4, zero
                  slli         tp, s0, 10
1024:             sub          gp, zero, zero
                  andi         t3, a4, -247
1026:             bltu         tp, t3, 1040f
                  bne          a6, t4, 1045f
                  bge          a4, t5, 1047f
                  srli         t3, t5, 20
                  lui          a5, 902933
                  srl          tp, s8, s5
                  auipc        sp, 1018808
                  xor          t3, gp, a4
1034:             lui          t5, 24551
                  slti         a0, s3, 910
                  ori          t3, s9, -1206
                  srai         s4, t5, 20
                  nop
                  ori          t2, s5, 1078
1040:             slt          t2, s8, a0
                  and          a6, a0, t2
                  sll          s5, a3, s1
                  and          tp, t2, a2
                  srli         t3, s0, 29
1045:             ori          a5, t0, -279
                  sltu         a4, s6, t6
1047:             xor          s0, t6, gp
                  xori         t2, s11, -1605
                  sltu         a1, s1, gp
                  sra          a1, t1, s4
                  slti         s8, s4, -1222
                  bge          sp, s2, 1055f
                  bgeu         gp, s6, 1056f
                  slli         t1, a7, 24
1055:             sra          s3, a2, t5
1056:             sltu         s11, a1, s10
                  sub          tp, s6, t1
                  and          a5, s9, t1
                  auipc        s2, 48818
                  bne          s10, ra, 1076f
                  nop
                  nop
                  add          t3, ra, s1
                  sltiu        t2, tp, -1337
                  sub          t1, t5, s7
                  la           sp, region_1+540 #start riscv_load_store_rand_instr_stream_3
                  lb           s0, 15(sp)
                  lbu          t2, -61(sp)
                  lbu          a0, -26(sp)
                  lhu          t1, 32(sp)
                  slli         ra, a2, 11
                  lbu          ra, -46(sp)
                  srl          s1, t4, s10
                  sltu         s5, a5, a6
                  lbu          s8, -41(sp)
                  sb           gp, 15(sp)
                  lbu          ra, -36(sp)
                  sb           s11, 13(sp)
                  sw           tp, 60(sp)
                  slt          s9, s7, a7
                  nop
                  srli         gp, a6, 17
                  lb           s10, -50(sp)
                  sb           a2, 59(sp)
                  slli         s8, s6, 10
                  srl          a0, a3, t5
                  xor          s6, a4, s6
                  lb           t6, 63(sp)
                  lbu          ra, -53(sp)
                  lh           t6, 60(sp)
                  andi         s4, a6, -1332
                  lb           a6, 49(sp)
                  or           a4, s8, ra
                  sltiu        zero, a1, 1498
                  sltu         t6, a1, a4
                  sltu         s2, ra, s11
                  addi         a6, a6, 270
                  sub          s11, zero, a6
                  sll          s4, s6, a2
                  sub          s2, s6, a4
                  srl          s4, s10, sp
                  ori          s6, a5, 1530
                  sb           zero, -51(sp)
                  ori          s5, s3, 760
                  lw           t5, 40(sp)
                  lb           a1, -39(sp)
                  andi         t5, s7, -1109
                  lb           s10, 11(sp)
                  sw           a2, -24(sp)
                  sltiu        a1, a0, 1852
                  sh           s2, -10(sp)
                  lbu          s11, -57(sp)
                  sra          t3, t6, s11
                  ori          t5, s2, -685
                  nop
                  srl          t6, gp, t4
                  lb           a6, -44(sp)
                  addi         s9, s4, -1065
                  sb           s4, 33(sp)
                  ori          s9, t2, 65
                  lb           s5, 27(sp)
                  lbu          gp, -57(sp)
                  sb           s11, -1(sp)
                  lh           s3, 18(sp)
                  lhu          s5, 56(sp) #end riscv_load_store_rand_instr_stream_3
                  andi         s5, a0, -1850
                  sltiu        s11, t3, -1130
                  srai         s5, a7, 22
                  srai         s5, s3, 29
                  bge          a3, a6, 1075f
                  blt          t6, s7, 1076f
                  slt          t0, a6, s6
                  slti         a7, t6, -747
                  sub          s3, s5, s4
1075:             ori          t3, a0, -606
1076:             bgeu         s11, s4, 1078f
                  srai         s9, a4, 3
1078:             and          t0, s9, s0
                  slti         sp, s1, 1767
                  blt          s8, a4, 1097f
                  xor          t1, s11, s7
                  sll          t3, sp, s9
                  srli         a4, sp, 3
                  srai         tp, s8, 31
                  auipc        t0, 956237
                  xori         tp, gp, -697
                  sra          sp, s1, s3
                  nop
                  bge          s2, t1, 1100f
                  sltiu        a0, s11, 698
                  srli         s4, s5, 30
                  srli         s10, s0, 29
                  xor          zero, zero, s8
                  add          t4, s9, s9
                  nop
                  andi         s4, t6, 114
1097:             srl          a1, s2, zero
                  auipc        s8, 420417
                  srai         s1, s5, 17
1100:             slt          a7, a3, a0
                  sltu         t3, zero, t4
                  srli         s11, t3, 3
                  bge          t5, s2, 1112f
                  addi         a6, a1, -1446
                  ori          s1, t1, 700
                  bne          t3, s7, 1123f
                  addi         s9, t6, 1894
                  bgeu         a3, s2, 1119f
                  andi         a1, a5, -366
                  blt          gp, s0, 1116f
                  andi         tp, t5, -970
1112:             and          s10, s1, sp
                  and          t5, zero, tp
                  sll          t3, gp, gp
                  beq          t2, tp, 1122f
1116:             ori          s6, a0, -60
                  srl          s8, a1, sp
                  bge          s1, ra, 1136f
1119:             auipc        a5, 550680
                  srli         a6, a6, 18
                  ori          t5, s7, 218
1122:             bgeu         s8, t0, 1141f
1123:             add          s3, s3, s1
                  srl          a1, s10, a2
                  xor          t5, s10, s2
                  beq          a4, s2, 1131f
                  xori         t4, a2, 832
                  andi         a4, s3, 1447
                  nop
                  xor          s3, t0, t3
1131:             slti         s2, t3, 633
                  blt          a7, s10, 1142f
                  slli         s5, t5, 14
                  auipc        t5, 767663
                  sll          a0, a6, a4
1136:             nop
                  add          ra, a6, a6
                  lui          s9, 77999
                  sltu         t3, s3, sp
                  andi         s2, t5, 1783
1141:             sra          a7, ra, t1
1142:             ori          tp, t3, 817
                  sub          sp, a1, a0
                  blt          zero, t5, 1161f
                  add          s0, s11, s6
                  slti         t6, tp, -1698
                  nop
                  bgeu         s10, a7, 1160f
                  bge          a5, s10, 1162f
                  ori          t6, a5, 2014
                  addi         ra, s7, -1686
                  beq          s5, s8, 1166f
                  sub          a0, s8, sp
                  addi         zero, t3, 1413
                  lui          t2, 836175
                  xor          s0, s2, s7
                  andi         a7, s11, 446
                  slt          t1, a4, zero
                  slt          t5, gp, s8
1160:             srli         t5, a0, 28
1161:             sra          s6, s3, s5
1162:             lui          tp, 756168
                  slti         s9, t1, 724
                  ori          tp, s10, -384
                  srai         ra, t5, 15
1166:             auipc        t1, 546891
                  beq          a5, sp, 1186f
                  bne          ra, t1, 1178f
                  blt          a5, s11, 1183f
                  nop
                  sltiu        a4, t3, -1366
                  addi         s9, a4, -1920
                  bge          s3, s0, 1192f
                  srai         t4, a7, 21
                  sltiu        s9, t3, -1971
                  bge          sp, a1, 1193f
                  srli         a7, s11, 6
1178:             beq          a1, s5, 1198f
                  bgeu         t1, a7, 1196f
                  slli         sp, a3, 29
                  bltu         t6, a6, 1189f
                  srl          s4, gp, t1
1183:             or           gp, t2, a5
                  lui          s8, 1038769
                  bge          s5, sp, 1192f
1186:             slti         s1, t0, 2005
                  or           tp, t2, a3
                  ori          s8, a4, -335
1189:             blt          s11, s7, 1200f
                  addi         t1, s8, 1486
                  ori          sp, s3, 254
1192:             srl          s8, s2, gp
1193:             or           sp, t6, s2
                  beq          sp, t5, 1213f
                  xor          ra, s8, t0
1196:             sll          tp, gp, a4
                  andi         t3, s4, 1178
1198:             lui          s5, 579294
                  beq          t2, s9, 1213f
1200:             slt          ra, s3, t2
                  and          s2, t5, s8
                  srl          t4, t5, t6
                  xori         a7, zero, -987
                  beq          t0, a7, 1215f
                  srai         t4, s11, 16
                  sra          s9, s6, s4
                  xor          t3, t3, t2
                  sltu         t1, t6, s10
                  blt          a4, t0, 1222f
                  and          s10, a0, zero
                  slti         t4, s10, 1764
                  beq          s1, s4, 1228f
1213:             sll          a6, t3, s4
                  sltiu        t6, s0, 1127
1215:             blt          a0, t6, 1233f
                  xori         a6, s1, -232
                  xor          t3, zero, tp
                  and          s5, t0, ra
                  auipc        t5, 1034041
                  bltu         sp, s8, 1223f
                  slli         ra, s9, 9
1222:             sltiu        s6, a6, 1822
1223:             bltu         s4, tp, 1230f
                  srl          t0, a7, t1
                  addi         t2, s2, -1907
                  srli         s1, a6, 28
                  sltu         s5, t3, s11
1228:             slli         a5, a0, 10
                  beq          s1, a6, 1231f
1230:             add          s10, t3, s2
1231:             srli         a6, a7, 31
                  slli         s8, s5, 21
1233:             srl          zero, s6, s1
                  addi         t3, t0, -331
                  sra          tp, t1, t2
                  lui          a1, 250898
                  srai         s1, a0, 8
                  or           t5, s7, tp
                  srl          s5, a0, s11
                  srai         t6, s4, 13
                  bltu         t6, t2, 1260f
                  srli         s0, t1, 12
                  ori          t6, s11, 1315
                  xor          ra, t3, tp
                  sub          s0, sp, sp
                  slt          a5, t6, a4
                  andi         t0, sp, -1264
                  addi         s4, t0, -451
                  or           a6, s4, s9
                  auipc        t6, 937578
                  bgeu         s8, a6, 1263f
                  bne          t6, s1, 1272f
                  beq          t2, a2, 1259f
                  srai         t1, s11, 22
                  srai         s0, s10, 12
                  xori         a4, t4, 551
                  bltu         t4, a7, 1268f
                  beq          a2, a2, 1267f
1259:             xor          ra, t6, a0
1260:             sltu         s10, t6, s2
                  add          t2, a4, t1
                  bge          a1, a1, 1267f
1263:             or           t0, a6, a5
                  slt          t0, a3, a7
                  nop
                  blt          t5, a3, 1271f
1267:             srai         s1, s5, 25
1268:             srli         s4, sp, 7
                  bgeu         s1, tp, 1287f
                  ori          tp, t5, -119
1271:             auipc        a1, 408495
1272:             sltiu        s4, a1, 806
                  slli         s11, a0, 8
                  sra          s4, s6, a0
                  xori         s5, s4, 566
                  xor          t3, ra, s4
                  srli         a0, a3, 19
                  xor          tp, s7, a2
                  slt          a0, t2, s0
                  bltu         t2, t4, 1297f
                  bne          sp, s4, 1286f
                  sra          tp, t4, t2
                  bltu         a1, t4, 1286f
                  slti         s2, s9, -1791
                  sra          t3, s5, a7
1286:             bgeu         s3, s8, 1297f
1287:             sll          t5, s6, sp
                  bne          a5, a4, 1306f
                  andi         s0, s7, -1139
                  sltu         s5, t0, s2
                  srl          t2, s11, a2
                  add          s3, t1, a2
                  srai         a0, zero, 24
                  addi         t6, ra, -1621
                  or           s6, zero, t6
                  addi         s4, t6, -1681
1297:             slli         t0, t6, 6
                  slt          a0, sp, a7
                  beq          s8, a3, 1309f
                  srl          s6, a3, s7
                  lui          s11, 49712
                  add          t5, zero, s9
                  bge          s7, s8, 1315f
                  addi         a7, a2, 1972
                  bgeu         s4, a6, 1321f
1306:             and          t6, t4, tp
                  srai         s1, s4, 0
                  bltu         s5, s5, 1317f
1309:             auipc        s4, 66521
                  lui          s5, 675729
                  sltiu        t5, s10, -514
                  or           s11, a0, ra
                  slli         s4, t0, 29
                  andi         t5, sp, -890
1315:             bltu         gp, s11, 1322f
                  xori         s6, s6, 1926
1317:             sub          a4, t5, t3
                  slti         s9, tp, 580
                  srli         s10, a0, 22
                  srai         s10, s7, 24
1321:             andi         gp, s11, -815
1322:             beq          t4, s0, 1342f
                  auipc        a4, 270092
                  srl          zero, ra, s10
                  and          a6, s10, t3
                  auipc        s1, 186313
                  sub          s2, a1, gp
                  add          a5, s4, s7
                  and          zero, s0, a0
                  addi         s0, t4, -1334
                  and          s0, s10, s0
                  or           zero, a6, t1
                  srli         a7, t1, 22
                  srl          tp, sp, t6
                  nop
                  srai         s10, t1, 11
                  and          a6, s4, a7
                  bge          s2, s1, 1352f
                  lui          a7, 208946
                  sltiu        a5, s3, 1278
                  xor          s1, sp, s1
1342:             andi         t0, s5, 1310
                  sltiu        zero, a5, -1701
                  srl          t5, a3, t5
                  sll          t4, t1, a3
                  slti         t1, a0, -1148
                  andi         s2, t5, 435
                  nop
                  auipc        gp, 651424
                  bgeu         t3, t3, 1353f
                  sll          s1, a7, a3
1352:             andi         ra, t3, 988
1353:             ori          t4, t0, 1898
                  sub          s9, zero, a2
                  bne          s3, t0, 1357f
                  blt          t2, a1, 1359f
1357:             slli         zero, tp, 31
                  bgeu         a5, s7, 1359f
1359:             and          gp, a6, s0
                  lw           t1, 4(s7)
                  lui          t5, 1008925
                  xori         sp, zero, 1916
                  addi         s6, s4, -1475
                  or           a6, t4, s2
                  addi         s7, s7, 24
                  sra          s3, s1, t4
                  slli         t3, a1, 28
1822:             addi x19, x6, 1
1822:             jalr x19, x19, 0
sub_10:           slt          a4, s3, t5
                  addi         s7, s7, -8
                  xori         a0, s7, 143
                  sw           t1, 4(s7)
                  addi         t3, a6, 2001
                  auipc        ra, 798036
                  add          a5, ra, t0
                  and          a5, t0, s2
                  blt          gp, sp, 10f
                  xor          t1, t6, a4
                  slt          s11, s2, s9
                  andi         a4, s9, 1740
                  blt          a2, a2, 15f
                  bltu         t2, t5, 15f
                  and          ra, s5, s3
                  auipc        a5, 178881
                  bge          s5, ra, 12f
10:               ori          s1, a6, 311
                  srai         s8, t3, 6
12:               bne          s9, s8, 15f
                  or           t4, a6, t1
                  blt          s0, t5, 15f
15:               slt          t2, t3, s9
                  lw           t1, 4(s7)
                  xor          s9, a6, s4
                  addi         s7, s7, 8
                  xor          s3, s3, tp
                  srai         ra, s5, 4
                  srli         s1, s6, 5
29:               addi x18, x6, 0
29:               jalr x18, x18, 0
sub_9:            nop
                  xori         s4, t6, 1996
                  blt          t4, a6, sub_9_stack_p
                  slti         a6, s6, 1878
sub_9_stack_p:    addi         s7, s7, -60
                  sw           t1, 4(s7)
                  and          t2, ra, s11
                  sll          a0, t5, t0
                  or           t6, a0, s10
                  ori          a6, t0, 391
                  bltu         t5, t1, 20f
                  sub          s8, t5, t0
                  xori         t1, s9, -1664
                  xor          s8, t3, s0
                  nop
                  or           t3, s11, t0
                  sll          t6, s11, t3
                  add          s0, a4, s0
                  or           a5, s6, s3
                  sltu         t3, t4, s7
                  slti         s2, s9, 288
                  ori          a6, s1, 1413
                  beq          ra, a1, 20f
                  xori         s6, ra, -1247
                  slti         t3, s0, 1420
                  bltu         s5, s6, 20f
                  bge          s10, t2, 20f
20:               srl          sp, s0, gp
                  slli         a5, s11, 30
                  sltu         s4, s2, sp
                  srli         t2, s10, 15
                  slli         s11, a6, 7
                  srai         s1, a5, 28
                  lw           t1, 4(s7)
                  ori          a6, s10, -880
                  addi         s7, s7, 60
                  xori         a0, gp, -664
37:               addi x11, x6, 1
37:               jalr x11, x11, 0
sub_8:            slt          a0, s1, s7
                  addi         s7, s7, -24
                  sw           t1, 4(s7)
                  sltu         a0, s1, t1
                  xori         s5, a1, -1876
                  andi         t3, s1, -130
                  srl          sp, t3, s3
                  sub          s4, s1, a1
                  andi         a0, t1, -600
                  srl          s9, a4, a5
                  bltu         s6, s1, 17f
                  sra          tp, t2, s6
                  and          t3, a3, s11
                  sll          tp, a6, t5
                  xori         gp, s2, 1799
                  lui          a0, 21616
                  lui          t3, 631571
                  and          s4, a7, t3
                  sra          s11, t6, s6
                  slli         sp, s10, 10
                  xor          ra, t4, a5
                  slli         s2, s9, 0
                  sll          t2, t1, s1
                  lui          s10, 67735
                  beq          s4, t0, 21f
                  sra          a6, a7, ra
17:               sll          s0, s11, a6
                  auipc        t3, 882742
                  beq          a6, sp, 21f
                  srli         a6, s6, 27
21:               sub          s4, t3, s3
                  lui          t6, 26071
                  lw           t1, 4(s7)
                  srai         a4, a0, 17
                  addi         s7, s7, 24
                  or           s4, a4, a4
                  lui          s10, 871765
                  sll          tp, a0, s4
                  srai         t3, s0, 24
                  slt          t5, gp, s8
                  slti         a7, s3, 952
41:               addi x15, x6, 0
41:               jalr x15, x15, 0
sub_5:            bltu         sp, ra, sub_5_stack_p
                  ori          gp, sp, -1653
                  xori         s1, a7, 1068
sub_5_stack_p:    addi         s7, s7, -52
                  sw           t1, 4(s7)
                  slli         t6, a6, 18
                  slli         a6, gp, 22
                  sltu         a6, t3, s4
                  or           s8, a1, a2
                  addi         s4, a1, 1836
                  nop
                  nop
                  sra          t6, s5, t1
                  sll          t0, a4, s9
                  bgeu         t4, s5, 5f
                  sltiu        a1, a3, -2037
                  slli         t2, s3, 30
                  bge          a0, gp, 9f
5:                andi         t0, tp, -132
                  bne          s8, t6, 9f
                  and          t1, s11, a2
                  nop
9:                ori          ra, s1, -1855
                  xori         t3, s5, -863
                  xor          t5, gp, sp
                  lw           t1, 4(s7)
                  srl          t3, a6, tp
                  xori         s0, tp, -425
                  sra          sp, s5, a4
                  sub          a1, a2, s6
                  srli         s10, s4, 14
                  lui          t3, 628960
                  addi         s7, s7, 52
                  add          a0, gp, a5
34:               addi x18, x6, 1
34:               jalr x18, x18, 0
sub_1:            bge          s11, a6, sub_1_stack_p
                  addi         a5, gp, 1960
sub_1_stack_p:    addi         s7, s7, -36
                  slti         s2, s9, -837
                  sltu         s11, t6, t5
                  srl          s3, s7, s11
                  sw           t1, 4(s7)
                  xor          s1, t0, s0
                  lui          s11, 764828
                  slti         s4, s1, 1302
                  add          s4, t2, s8
                  andi         s4, ra, -240
                  sra          a7, s7, gp
                  sltu         a5, a7, a2
                  slti         a0, t6, 781
                  sub          t3, a5, a6
                  bltu         s2, t4, 18f
                  addi         t2, t0, 1825
                  ori          s8, a7, -258
                  slt          t4, a0, s2
                  bne          s5, a4, 19f
                  sltu         ra, t3, a7
                  sub          t6, t0, a3
                  srl          s0, t4, s0
                  bge          a2, s11, 23f
                  and          t6, t6, a6
                  sltu         s0, s3, a6
18:               blt          s2, a4, 32f
19:               xori         sp, a1, -158
                  auipc        t1, 126764
                  blt          t5, a7, 27f
                  sll          gp, a7, t5
23:               slli         t0, t4, 6
                  auipc        s2, 103158
                  slli         t4, a3, 16
                  addi         t4, s4, 1126
27:               beq          t6, s2, 43f
                  beq          s10, gp, 39f
                  srai         s5, s9, 17
                  xori         t1, s9, 188
                  slli         t4, s10, 5
32:               and          t6, s1, s1
                  lui          s8, 99238
                  slti         s1, a2, -1609
                  srl          t4, s2, t1
                  sra          tp, s8, s9
                  slti         tp, t6, -1917
                  and          s9, zero, s9
39:               sll          s0, s6, t5
                  sra          a0, t0, t4
                  xor          zero, ra, zero
                  bltu         a0, s4, 48f
43:               bltu         a2, s2, 58f
                  srl          s9, s11, a6
                  srl          s6, tp, s7
                  addi         t3, s6, 213
                  nop
48:               slti         sp, s4, -122
                  srli         t6, a2, 21
                  add          t6, s10, t1
                  srl          s2, sp, sp
                  srl          s11, s2, s4
                  lui          s10, 43126
                  xor          tp, s4, s2
                  bge          t6, t6, 66f
                  slti         a4, s5, 1194
                  or           a0, a2, a3
58:               sll          t4, a0, s10
                  lui          ra, 253646
                  lui          ra, 480176
                  sub          s10, s9, a4
                  slti         a4, t3, 1006
                  xor          gp, zero, s8
                  srai         s10, t6, 21
                  beq          t4, a6, 73f
66:               bne          a1, s8, 72f
                  sra          zero, s8, s3
                  bne          a2, ra, 87f
                  nop
                  addi         s9, s4, 268
                  addi         sp, ra, 1873
72:               andi         a5, tp, -502
73:               srai         s2, zero, 24
                  bge          s8, a6, 85f
                  bgeu         s9, sp, 76f
76:               sub          t5, gp, a2
                  sra          t3, a1, t4
                  sra          ra, gp, s0
                  sltu         t3, s11, s9
                  bgeu         t2, a4, 88f
                  bgeu         t2, a0, 84f
                  beq          t2, s9, 88f
                  and          a4, s10, a1
84:               ori          zero, a6, 1369
85:               nop
                  slti         s5, t2, -1028
87:               bltu         s10, a0, 88f
88:               and          s5, a2, a2
                  andi         tp, s7, 1707
                  lw           t1, 4(s7)
                  andi         s8, a4, -1535
                  addi         s7, s7, 36
                  slli         a6, a1, 28
                  slt          a1, zero, gp
                  sltu         s2, s2, s11
105:              addi x18, x6, 0
105:              jalr x18, x18, 0
sub_3:            add          a0, a5, t0
                  addi         s7, s7, -64
                  slti         t3, t5, 1249
                  sw           t1, 4(s7)
                  lui          a4, 442156
                  srl          a1, zero, a3
                  slli         t0, tp, 21
                  add          t4, s11, a2
                  la           s5, sub_5
                  xor          a1, a7, gp
                  addi         s10, t5, 2019
                  addi         s5, s5, 155
                  ori          t2, a2, 279
                  slti         t3, a4, 1589
                  addi         a5, a3, -1862
                  beq          t0, s7, sub_3_j5 #branch to jump instr
                  sra          ra, ra, t5
sub_3_j5:         jalr         t1, s5, -154 #jump sub_3 -> sub_5
                  xori         t1, a2, 1015
                  sltu         t3, zero, t1
                  andi         s1, a0, -1669
                  slt          a1, s2, s7
                  slt          ra, a2, t3
                  sra          a4, ra, zero
                  srli         a1, a0, 27
                  andi         a1, s8, -55
                  lui          s6, 872979
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  sll          t5, s8, s8
                  addi         s8, t1, 456
                  slt          t0, tp, a1
                  auipc        a7, 886911
                  beq          a4, a4, 7f
                  or           s9, s11, s3
                  nop
7:                srai         tp, a4, 30
                  slt          s11, s5, a5
                  or           s0, t1, a6
                  bne          t0, s0, 19f
                  srai         a4, s3, 11
                  or           s6, t3, s2
                  ori          a5, a5, 1321
                  andi         t1, tp, -535
                  sra          t1, a4, a3
                  sub          s10, tp, s7
                  sltu         ra, t5, a7
                  srai         a0, s5, 10
19:               sltiu        s11, s1, 543
                  xor          s4, t1, s2
                  lui          zero, 146766
                  xor          t4, t6, s8
                  xori         sp, s2, 1327
                  bge          a1, a3, 26f
                  bgeu         s6, s2, 26f
26:               srai         t5, t3, 14
                  lw           t1, 4(s7)
                  sltu         s8, s8, gp
                  sltu         a6, tp, s9
                  sub          a4, sp, s4
                  sll          s1, a6, a1
                  or           t5, a6, s4
                  sra          s2, t6, a7
                  slli         t6, s3, 11
                  slli         sp, t6, 9
                  addi         s7, s7, 64
                  nop
                  or           a0, s8, s3
67:               addi x4, x6, 1
67:               jalr x4, x4, 0
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
.word 0x2ec0aa08, 0x9add9fd6, 0x88f17d86, 0x5aef5cc8, 0x9cee73d9, 0xb00c6aa2, 0x0c371fb7, 0xacf474bb
.word 0x36adfca9, 0xd776ef00, 0x88311eb8, 0x47de15ec, 0x68b57094, 0x365e2af5, 0xac236453, 0x063ff523
.word 0x7247d89a, 0xb690c4d3, 0x0c13f996, 0x68f9e408, 0x44b3b57d, 0xd2724396, 0xa049b0e0, 0xc2dd12a1
.word 0x01b0448a, 0xb7f29c72, 0x28f92ee7, 0x4f27983e, 0x7161dc2c, 0x3c76ec7d, 0xe5dccb58, 0xcabac4e8
.word 0x37d4da73, 0xfc215ec2, 0x6db33887, 0x8ddd0d74, 0xb754863e, 0xde701834, 0xebfa7a0d, 0x01ede0a1
.word 0x0d74c7ed, 0x948bb205, 0x20574e2b, 0xdeccf940, 0x7c583443, 0x3053e7ad, 0x9ade343f, 0x8cf1276a
.word 0x9341bfa1, 0x365a91ca, 0xe65f5701, 0xc1a1e5c0, 0x5a13c5b9, 0xffbf13e7, 0x54e84e54, 0x56e3aa5f
.word 0xb709ba62, 0xaf1b7757, 0x842be374, 0x5eb6519b, 0x34118a08, 0xa4e948a4, 0xdc1aaaf7, 0x3404bef9
.word 0xaa741e1b, 0x8aea4ebc, 0x29262ccd, 0x8776ab5f, 0xa2617119, 0x8919c500, 0x96057608, 0x0593b6bf
.word 0x85c6c995, 0x4c226b21, 0x4162517d, 0xf772e29f, 0xf375785c, 0x8e594378, 0xcb673633, 0xb30ae48a
.word 0xb46bd5db, 0xe202f051, 0x3298cc9d, 0xd74eef45, 0xa3e245ee, 0x1ba69049, 0x72d44450, 0x3d176d73
.word 0xf7006651, 0x53e282bb, 0x4fc117a0, 0xdac7ce7e, 0xb52adc26, 0x46801cd5, 0xf69cab92, 0xfcb7c949
.word 0xf24c59ce, 0xaac70159, 0xd038f7b1, 0xf5d80cd7, 0xd931bbe1, 0x8291d162, 0x13035521, 0x1321d1fb
.word 0x55e13527, 0xb59caab4, 0xef6dbc5d, 0x408625c0, 0x8ee6756a, 0x75d7fe99, 0x8da8f76e, 0x58597571
.word 0x13124154, 0x8a616810, 0x74cc27ab, 0x44f9a47e, 0x80433b37, 0xddbe9a35, 0xd1e59786, 0x97e29707
.word 0xde64d052, 0x6ddec2b8, 0xd87b97fd, 0xb106eae1, 0xfe0bbb23, 0xe825b4ce, 0x1a4737e2, 0x9bde6032
.word 0x40ffbe61, 0x46c65405, 0x3f39758a, 0x211ab6ed, 0xf1bcf72e, 0xb8a3cb6e, 0xb8fc7e5a, 0xaafc136d
.word 0x681f1a1a, 0xeda1e2f2, 0x6f9720d7, 0x54ed67d8, 0x6e227186, 0x8c2dcf69, 0x77903b6a, 0x84b0612e
.word 0xb7aa5c12, 0xa1ccb381, 0x3664696c, 0xd087dd16, 0x50316f51, 0x9c93bed4, 0xd1ccb323, 0x8920e5d1
.word 0x7135bc26, 0xfef7e219, 0xfc9ba309, 0xa75a0f02, 0x4d20fed9, 0xaef0776b, 0x7bb0ddbc, 0xc8686409
.word 0x1c704bf2, 0x746269d9, 0x49f2f3b8, 0x616db11a, 0x11e36170, 0xdc7233f5, 0x92e9123a, 0x7d9cef6e
.word 0x526a678e, 0x225806c1, 0x41eb09ac, 0x2e0b444e, 0xe4817e4a, 0xe62d6105, 0xefe887cd, 0x2c750d1a
.word 0x2df428b3, 0xc0761233, 0xf5d0eb57, 0xf050a1a0, 0x2db1ad51, 0x46bb9d3b, 0xa0d5d918, 0xe743c85f
.word 0xaee7f682, 0x4adadefe, 0x144f8278, 0x15f6fa79, 0xf24d4813, 0xc104d205, 0x8adf2b8a, 0x167bdb23
.word 0x1d239c4d, 0x6bb8e9ec, 0xd057fba0, 0x20bedc85, 0x9f1227ff, 0xfd912e06, 0x2a2c521f, 0xe877382e
.word 0xae9df6a3, 0x6d0494e3, 0x3386b26f, 0x8782c3a9, 0x928f6bcb, 0x69855d67, 0xb83711cc, 0xde20da9a
.word 0xed744856, 0xebef1660, 0x3d6ef742, 0x9a186235, 0xcb6f2700, 0x7831336f, 0x8d9d2d18, 0xd8a66283
.word 0x78e3820c, 0x10df9b70, 0x2123fb99, 0x83feed4f, 0x7e511ac0, 0x5b56af25, 0x68368bf7, 0x58f655bb
.word 0xb4018f20, 0x88f29527, 0x945d1ba4, 0xbf5f6b4d, 0x6d918392, 0xbad96109, 0xca7cca67, 0xd6568dc4
.word 0x91edde60, 0xf0fd1d78, 0x38b0624e, 0x7bf322bd, 0x5b1fc357, 0xf72b4fd8, 0xf14a4bb8, 0xaae77729
.word 0x36a3f1d9, 0x51221c77, 0xabb70d73, 0xc9deff93, 0xfa1ea50d, 0xc3169e3c, 0x6f15c2de, 0xb3370813
.word 0xc693aafd, 0xa0328814, 0x20ae1f57, 0xd6b673b0, 0xce8fbebb, 0x536aff7d, 0x92bf5125, 0xf1aca37c
.word 0x35ceb9bd, 0x1b11a1a9, 0xce21d802, 0x82147447, 0x95183454, 0xe64a8e7d, 0x34122b86, 0x215d6ee1
.word 0xb2956f19, 0x8038864e, 0x008a3992, 0x8aa9a1f5, 0xd79c84c1, 0x2a2945a1, 0x1f260644, 0x6ce97dbd
.word 0xafbde6bc, 0xa0932964, 0xef91b452, 0xa09c1901, 0x28c40a3f, 0xc833a778, 0x5f95bb35, 0x72096e7a
.word 0x325191e6, 0x45e41420, 0xb9aa9ff7, 0x1f80be7a, 0x52eef6a6, 0xe6dbc13c, 0x7a805550, 0x83fc60c7
.word 0x4cccfd27, 0x843c0deb, 0x428fdff9, 0xac897c32, 0xf58f0877, 0x3ffc9b1f, 0x628cdc6c, 0x2211453f
.word 0x17062b21, 0xde74c612, 0x2c06f311, 0x62034f15, 0x8fcdf773, 0x22a2f57a, 0xaf00edfd, 0xbf797fca
.word 0x7494cfb7, 0x59d0a364, 0x90935464, 0x01ecb242, 0xb73a715e, 0xf97d8b95, 0x75d09c85, 0xe5859411
.word 0x4fee1678, 0xb5a49137, 0x52abedfa, 0x38e52327, 0x423bad8b, 0x1dfad4d8, 0x1bbd3e7a, 0xb20eb0fc
.word 0x4f9145e8, 0xe1cedbf2, 0x9d0c10b5, 0x23a5a7cd, 0xdd3bc1fb, 0xde83993b, 0xc4aad507, 0xc6481bd5
.word 0x19a06de8, 0x0ef0da61, 0xfc534285, 0xb554b3ee, 0x7affe82c, 0x2c57ca7d, 0x5968801e, 0x7b72d21d
.word 0x0b52b9b7, 0x790c7aec, 0x63022501, 0xf4005ce2, 0x180b827b, 0x075dd381, 0x584b47b6, 0xdb5f9229
.word 0x26fcc811, 0x23cd030c, 0x3188fe1f, 0x47276ba6, 0xa4daf7d2, 0x1578fef1, 0x58b42466, 0xd73a2892
.word 0x4d6d97c2, 0x1524c181, 0xab74ed69, 0xdcabbd98, 0x6582570f, 0x487aeee1, 0xb4945235, 0x445a607e
.word 0xb7e1f5b3, 0xc3eeb5ad, 0x353bae9f, 0x583d2595, 0xcb359241, 0x36576840, 0x2c1bb614, 0xca6771df
.word 0x2064a28a, 0xad3e3357, 0x83c09f9f, 0x6307ba1a, 0x50a08c4a, 0x8c7f5d8b, 0x9630ea85, 0x621a92e7
.word 0xc926f0a0, 0xf60aa188, 0xf0d29736, 0x2bda2bc5, 0x521ab2f2, 0xdeb29ca6, 0x1e68743e, 0xc5836b74
.word 0x3ddc65a7, 0xad74208b, 0xdb6eb8a4, 0x2012277f, 0x2dc1b30c, 0x7c0f57c1, 0x5bdaf4b1, 0x68c98730
.word 0x5e7bd129, 0x60418648, 0x72d5a760, 0x639cc3be, 0x147b97a3, 0x3093fd5d, 0xf45147dd, 0xfa42c178
.word 0xf5445111, 0xeb154a5e, 0x807058e5, 0x73e168d1, 0x7c9f7559, 0x0e24264b, 0xad296173, 0xae249bb0
.word 0xdd564330, 0xe686cec0, 0x2c7e4df2, 0x2c959e79, 0x0c606141, 0x4fec1719, 0xf98b4b18, 0xe2946040
.word 0x8b8f0c9c, 0x66200831, 0xa76bf4b0, 0xf0f053b4, 0x3c59db35, 0x4ed35773, 0x79518217, 0xe31663e8
.word 0xbe158b5e, 0xc1ebbcfc, 0x28544446, 0xf6769b26, 0x50d51ac5, 0x06923842, 0x5781bf4f, 0x0cc753f3
.word 0x0d3f146c, 0xa026d916, 0x12f8e32f, 0x9d959bc6, 0x1f76e7ad, 0xbdc6d680, 0x139c516f, 0x3fbe663c
.word 0x15f5917f, 0x69f1d59d, 0x706d7b65, 0x89aa3a39, 0xf7f0d793, 0x7bf204b7, 0x3081584c, 0x72a9822d
.word 0xde911a70, 0x4e8968cd, 0xa4d1d117, 0x5f0cff07, 0xc309b57c, 0xaa218e85, 0xa5ca03dc, 0x98b0b718
.word 0xb77f19ed, 0xcceb611b, 0x51b0c69a, 0x3e31ff1c, 0x288676c9, 0x0c53d4f5, 0xdab620a9, 0xd2757a12
.word 0x5747d584, 0x0efa2c76, 0x4f115cf4, 0x436d4c3b, 0x5aceae79, 0xfe9f89ed, 0xc35b4d79, 0x56bba402
.word 0xa9e49c13, 0x15623045, 0x1ef6c7fb, 0x1e6b82c2, 0xc901fa83, 0xfeba4e57, 0x270876c4, 0x50112048
.word 0xbdbb1e85, 0x4338b3a6, 0x55d9eacb, 0x2fb216ba, 0x91d4e803, 0x9932c209, 0x6475f0af, 0x99708f65
.word 0xcde799df, 0x23d050bd, 0x4e45a845, 0xae48cb51, 0x6dbe4514, 0xda3aeed2, 0x885870b8, 0xd28a9185
.word 0x7fb16a0d, 0xf6d20f38, 0x459f8066, 0xf26ca28d
.section .region_1,"aw",@progbits;
region_1:
.word 0x98f6865f, 0xfbbb1808, 0xadbbdea9, 0x9b21bf92, 0x2508350b, 0x83cb70dd, 0xea1e276e, 0x12f61772
.word 0x0658769a, 0x2bf612d3, 0xb79d447e, 0x103ea063, 0x1f2c11e0, 0xc43af71b, 0x5ab18369, 0xc1fd4414
.word 0xb0e31b2a, 0xf7651558, 0x93b0fb07, 0xdf7f8fc3, 0xb429fd7b, 0xf8276053, 0xbf7b6609, 0xa36767ad
.word 0x472a6a40, 0x1f165640, 0x874db7c9, 0x7f60d446, 0xe72531a5, 0x51d3f60a, 0x044d2446, 0x4ee6fe2f
.word 0x50760f21, 0x8596c2c8, 0x929540b4, 0x54ee93b0, 0x3cd978ea, 0x019009c0, 0x7acc8e39, 0x24500451
.word 0x32abbe43, 0xcb1536ff, 0x8a382163, 0x75828d36, 0x637f577a, 0x343083e7, 0x3b61ef10, 0x91b35746
.word 0xa9e7023f, 0x14d520c1, 0x7d9acf2d, 0xc153b76e, 0xec5bdcaf, 0xb5427e0f, 0xfee65bfe, 0x89446b8a
.word 0x43aa8311, 0xf25abacf, 0xe87fe926, 0x02e6b9a1, 0x6ee64c61, 0x255ae155, 0x0d90dd24, 0x888b54e9
.word 0x1fbb6b5e, 0x8e601b71, 0xea2be5f9, 0x1e9c69ca, 0x7310f613, 0x2221d142, 0x28134403, 0xbc30a274
.word 0xa6d2662d, 0xa9fbf09a, 0x8754496c, 0x7bf55aae, 0x4a1da152, 0xe67e1904, 0xf5f82182, 0x95860138
.word 0x58524bed, 0x850cea71, 0x936c5d2b, 0x5125e45a, 0x1a070ce9, 0x56c4b7e3, 0x09cbf9f6, 0xe72e0da7
.word 0x040149ca, 0x07b9ee87, 0x30b15f79, 0x79e80156, 0x4d577a10, 0x24a52e96, 0x81441f7e, 0x3d40389b
.word 0xc173a4cd, 0x2631f749, 0xb93217ed, 0x019a979a, 0x52049283, 0xb2a200a8, 0x0c50a0c3, 0xb4526856
.word 0x2e617445, 0x23b789e5, 0x25429202, 0x4fc83bb0, 0xd6748af4, 0xdac5b2b0, 0x3ea5219a, 0x90fdbf12
.word 0xa352fb1e, 0xfb055fe0, 0xb6952580, 0x02cf75e8, 0xb0f1ecfa, 0x66d36e76, 0x532168ce, 0xdbff7afd
.word 0x3c0f870c, 0xae0d1178, 0x7a4711d2, 0x50cc5997, 0xef26e380, 0x998e9096, 0xb39486d7, 0xaabcd2b9
.word 0xd1047158, 0x306d37dc, 0xe7452403, 0x5f0fd95d, 0xb5e889c4, 0xbb36aa15, 0x22e2f7cc, 0x598f1d57
.word 0x91ac8c29, 0x84f37626, 0x7f8e3037, 0x51a8e1cc, 0x89147da4, 0x4a4c459e, 0x4d96c838, 0x47de42d0
.word 0xdb937430, 0xe4280c7f, 0xb0331746, 0xa0e38946, 0xf66a61ed, 0x0ad04c33, 0xa26ebd2a, 0x2a841171
.word 0x3aa249f9, 0x419e5882, 0xb05b1395, 0xa8321d25, 0x14d5c2eb, 0x1cb2d012, 0x27383b4f, 0x066ec0de
.word 0xc986b9ae, 0x2fe2d972, 0x6d0917df, 0x55fb4974, 0x373cc889, 0x85baf95d, 0xaa8370ce, 0xd2bc6cd0
.word 0xbc1b4e2b, 0x512348f0, 0x3cc63359, 0x5f19f4ae, 0xc1f728c0, 0xc0d067e5, 0x17a4b777, 0x32f3c168
.word 0xf9227f4f, 0xd2c92999, 0xa904ec32, 0xe20ab0c3, 0xda17b66b, 0x86dfba46, 0x47353dd8, 0x7d594a09
.word 0x454a5d8e, 0x6dab6e1f, 0x9ef40c78, 0x3ebd03f6, 0x3fea4d6d, 0x78db165c, 0x201abeb8, 0x82e416bf
.word 0xd35cd4db, 0xeb179ef0, 0x52e9accf, 0xea0bef09, 0xaf253a7f, 0x297c8150, 0xf1d4f774, 0x5931f837
.word 0x1cda628c, 0xb0a93b70, 0x0f6b773d, 0x117b730c, 0xab9595c5, 0xd71111d5, 0x9159e387, 0x33e6e784
.word 0x23c7d5d5, 0xaa6053c8, 0x195448d6, 0x43e05d66, 0xd6ad5b8a, 0x63daea46, 0x94985af6, 0xcdd8d2f8
.word 0xfbc57cba, 0xde68b9f5, 0x78312a2a, 0xf6015cb9, 0xbbc4629d, 0x32f4e74f, 0xb15b827e, 0x31731387
.word 0x0e5bf61b, 0xa94cc771, 0x7b1977de, 0xd8113580, 0x61de7bdc, 0x97113baf, 0xda814ffd, 0x2c5fce04
.word 0xbad1fc76, 0x195be4be, 0xd1ed4736, 0xaab3c390, 0xa33333b0, 0x34efc060, 0x052c28e4, 0x091573df
.word 0x20504ddd, 0x975d966b, 0xf60347a9, 0x41198041, 0x2b1545fc, 0x6d61b725, 0xa9683f63, 0x65513397
.word 0xa3bef739, 0x42c70548, 0x8e3feb66, 0xf1a3ebe4, 0xe266916b, 0x4597cc00, 0x21fb7fa6, 0x083d4ed4
.word 0x8cec7227, 0x240557b9, 0x05440cb6, 0x652d546a, 0x06bae6fa, 0x285029e8, 0xc3b2371b, 0xa631dab8
.word 0x0e8a20db, 0xfd7658a4, 0xce77c43e, 0xf184764b, 0x01a2e4b4, 0x17353366, 0x421d86f3, 0xa5e42aeb
.word 0x3906ddeb, 0x93ed3ed3, 0x1ad6a896, 0xf6ff3818, 0x103c36d4, 0x63011f38, 0x116b8131, 0x44b8152e
.word 0x31378978, 0xd3034e78, 0xf0bb2ad6, 0x40b4fd43, 0x07bcf65a, 0x18b83983, 0x6138a4fa, 0x964e570b
.word 0x8e888216, 0xc2b9b53d, 0xa9d3620b, 0x719a75aa, 0xdaee7c05, 0xa5067e47, 0x5436be11, 0x2056259e
.word 0x8afeb5f1, 0x632a4bc3, 0x57116233, 0xc6e2e56f, 0xa3c7f9d9, 0x4225034e, 0x7153c5c8, 0x96bf49c3
.word 0x4497301d, 0x70c49d32, 0x1103ceae, 0xcd635278, 0xc6a61393, 0x0aa69fd6, 0x5e4f92d9, 0x7855b996
.word 0x105ba377, 0x4c8ebdd4, 0xf03dd939, 0x047d1560, 0x066c5ee3, 0x61835509, 0x8e911097, 0xc4b79ff8
.word 0xab4d9a9d, 0x15c18a76, 0x97b3526d, 0x97bc26cd, 0xd1bade60, 0x0a1893e2, 0x36bf55ed, 0x296e9989
.word 0xf9e6ccf3, 0xcc4c6381, 0xdee02433, 0x0a9da60d, 0x44c7022c, 0x1646e9b3, 0x72f64b03, 0x125ca048
.word 0xbe8b1a72, 0x5d4c433f, 0xcbc67c3a, 0x768a4775, 0x15164a53, 0x62248ae1, 0xb326cbb7, 0x49abfbe9
.word 0x81451171, 0x203c0ebd, 0x795f9aff, 0xeb1c8051, 0x39c69a18, 0xadea62c7, 0x2ecbf5a9, 0x58a197e7
.word 0x49727db5, 0x2003df16, 0x3fd257cc, 0xa210a25f, 0xb923ed66, 0xce63dab7, 0x7487bd88, 0x77d44aa3
.word 0x9ed17e44, 0x8b8c347a, 0x4dc2e05c, 0x34a51a2e, 0x18968f45, 0x5fd4d139, 0x8ff8002d, 0x00488097
.word 0x373110b0, 0xbed10f5f, 0x2a28ecfb, 0x7b034c28, 0x13a3e7ef, 0xb1494fbb, 0x2bb43745, 0xa4a29034
.word 0xe84dd599, 0xc56cf2d2, 0x313d5012, 0xfa1c5c19, 0xe21eec86, 0x4f2b6d1b, 0x3bcd6364, 0xd6a07257
.word 0x9b57eee5, 0x0e1526bc, 0x5c101789, 0xeea839eb, 0xc7586fe5, 0x91d1d2c3, 0x0f3c3d21, 0x1a2f1f28
.word 0x9214e3f0, 0x8d7ed6a7, 0xfd6319e0, 0xf1b1ac7b, 0x6e50708e, 0x3de44050, 0x0bc50492, 0x9310c8a8
.word 0xcae13ca3, 0x2b86015e, 0xeb8fa180, 0xbab0e219, 0xb5165cf6, 0x67d165f6, 0xfd5d8b32, 0x8b7a4047
.word 0x007e8fbc, 0x81ed0eac, 0x801fe36e, 0x90b142d9, 0x8062c3eb, 0x79a5c13b, 0x523882bf, 0xb1e81a02
.word 0x5e69855f, 0x7d696bcc, 0xac947358, 0x94b78e3b, 0x0a048d64, 0x4bf049f9, 0x1a5adc81, 0x28b101bd
.word 0x881ee692, 0x116adabc, 0x12bed6b8, 0x62577b67, 0x3c866f71, 0x5d5bec55, 0x783da29c, 0x76551e9e
.word 0x8004910d, 0xbcb3a74a, 0x87bf04f9, 0x266cbfea, 0x00c07689, 0x8ae83b94, 0xa6f20090, 0x76999ec6
.word 0x0586bcb1, 0x8ad82eb9, 0x3a7f54d4, 0xde175088, 0x76dd78a0, 0xfb869fcb, 0x786df9f7, 0x858fd21a
.word 0xc50aa5cd, 0x7ebe10d5, 0x26a21a3b, 0xde9eda0a, 0x986f5f20, 0x346789c9, 0xd50b3d3c, 0x8431455c
.word 0xccbe7caa, 0x9a068e4b, 0x8dc003bd, 0x4fd7800c, 0x56174645, 0xfa2c5b89, 0x00d0d719, 0x7d46683d
.word 0x2536ca29, 0x2f2d7237, 0xcef1e314, 0xf1a813d3, 0x9256ba75, 0xd6fc0cf8, 0x2380e007, 0x9db00ed0
.word 0xf5680d14, 0x5ede9b69, 0xeabda198, 0xd35fdbc8, 0x3055a637, 0xfe6f380c, 0xe612beb7, 0x2a65427e
.word 0x42c704bb, 0x523671cc, 0x74b17b3b, 0x85045bbd, 0xba194ab3, 0xba704e18, 0x8e9699ab, 0x942494cc
.word 0x1a896aaf, 0x7f1c8d98, 0x921e2c9e, 0xac252061, 0x84966d62, 0x0a5eb326, 0xaa45dc81, 0x36057a59
.word 0xaa8c4f68, 0x202cd5ff, 0x77e344a7, 0xfc012282
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
                  add x13, x23, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x10, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x10, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x10, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x10, x20, ecall_handler
                  li x20, 0x1
                  beq x10, x20, instr_fault_handler
                  li x20, 0x5
                  beq x10, x20, load_fault_handler
                  li x20, 0x7
                  beq x10, x20, store_fault_handler
                  li x20, 0xc
                  beq x10, x20, pt_fault_handler
                  li x20, 0xd
                  beq x10, x20, pt_fault_handler
                  li x20, 0xf
                  beq x10, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x23, x13, zero
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
                  add x23, x13, zero
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
                  add x23, x13, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x23, x13, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x23, x13, zero
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
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x23, x13, zero
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
