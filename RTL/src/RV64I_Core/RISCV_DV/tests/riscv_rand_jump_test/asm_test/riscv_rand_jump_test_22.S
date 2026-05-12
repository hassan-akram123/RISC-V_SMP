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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x6
                  li x3, 0x0
                  li x4, 0xfc09052d
                  li x5, 0xfcdaa6a9
                  li x6, 0xf79c4f1c
                  li x7, 0x9
                  li x8, 0xa
                  li x9, 0x0
                  li x10, 0xff9ef79a
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xff72d6c9
                  li x15, 0x6
                  li x16, 0x0
                  li x17, 0xf7204a95
                  li x18, 0xc
                  li x19, 0xf44dce14
                  li x20, 0x9
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xa2836f28
                  li x24, 0x7
                  li x25, 0x80000000
                  li x26, 0x8336ecf
                  li x28, 0xf3c7fe62
                  li x29, 0x224e693c
                  li x30, 0x0
                  li x31, 0x0
                  la x14, user_stack_end
main:             la           s10, region_0+192 #start riscv_load_store_rand_instr_stream_0
                  slti         a6, gp, 123
                  lbu          sp, 515(s10)
                  sw           a2, 848(s10)
                  and          t5, s5, s10
                  sb           s2, 1110(s10)
                  lb           s1, 747(s10)
                  sw           t6, 1448(s10)
                  xor          t3, t4, a5
                  andi         t1, s0, 1077
                  lbu          t1, 1796(s10)
                  and          a2, s3, s1
                  sb           ra, 1557(s10)
                  slti         zero, t0, -1
                  lbu          gp, 185(s10)
                  sb           a0, 703(s10)
                  lhu          s7, 1196(s10)
                  xor          t1, t5, a7
                  slt          t0, a6, s0
                  sub          a6, s11, s4
                  ori          t0, s2, 217
                  lbu          a0, 1672(s10)
                  lb           gp, 1317(s10)
                  lb           ra, 102(s10)
                  lh           s8, 506(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_0+666 #start riscv_load_store_rand_instr_stream_1
                  addi         t5, a4, -790
                  andi         zero, a2, -765
                  ori          gp, gp, -475
                  sltiu        a1, sp, -1124
                  andi         s4, s6, -1127
                  lbu          a1, -115(t6)
                  sltiu        s2, a3, 934
                  srai         t0, s3, 28
                  nop
                  lb           t4, 125(t6)
                  lbu          s1, -115(t6)
                  lh           a3, 162(t6)
                  lbu          t3, -235(t6)
                  sltiu        ra, s3, 1402
                  sra          a2, tp, a1
                  sltiu        s1, a1, -1965
                  sb           s0, 97(t6)
                  xor          s7, t1, s9
                  andi         a5, a7, 1795
                  ori          t1, a0, 1514
                  slt          s8, a3, a3
                  sll          a1, zero, a0
                  andi         s10, s3, 277
                  slt          a2, s8, t0
                  srai         t3, s7, 11
                  sub          t1, ra, s2
                  slti         a6, ra, 1712
                  lbu          t4, -3(t6)
                  lbu          t2, 44(t6)
                  and          s5, a2, s6
                  lhu          s0, 254(t6)
                  xori         tp, t6, 132
                  xori         s5, tp, 1876
                  add          s4, s0, t2
                  sb           t5, 209(t6)
                  sb           ra, 117(t6)
                  srli         a7, t3, 20
                  xori         tp, zero, -1858
                  lh           s0, -58(t6) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+176 #start riscv_load_store_rand_instr_stream_2
                  lbu          s10, 799(a1)
                  nop
                  sll          s1, s4, t4
                  slli         s7, t6, 22
                  srl          t3, s7, tp
                  lb           t5, 823(a1)
                  srl          s2, t3, s3
                  nop
                  xori         t2, s1, 270
                  srl          a6, s5, gp
                  sra          s6, sp, a0
                  sll          a0, a0, gp
                  lbu          s10, 1021(a1)
                  lb           s2, 1290(a1)
                  sra          t1, a4, sp
                  sh           t5, 1120(a1)
                  add          s9, a5, a2
                  slt          t2, t5, a4
                  lhu          t6, 1796(a1)
                  lbu          t3, 575(a1)
                  sltiu        a2, sp, -1134
                  sh           a3, 1718(a1)
                  lbu          a2, 381(a1)
                  ori          sp, s5, 891
                  lbu          t6, 291(a1)
                  xori         a3, t4, -1298
                  slli         zero, ra, 27
                  sb           a1, 792(a1)
                  nop
                  srai         a6, a0, 25
                  sltiu        t2, s2, -396
                  auipc        s1, 1001823
                  sb           t6, 784(a1) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_1+155 #start riscv_load_store_rand_instr_stream_3
                  nop
                  sub          s0, a4, s5
                  sw           a2, 225(s5)
                  addi         a3, s0, -1263
                  addi         zero, s6, 753
                  sra          s9, a7, t6
                  sb           a4, 109(s5)
                  lb           gp, -2(s5)
                  lb           a5, 239(s5)
                  lhu          a5, 105(s5)
                  lbu          s7, 8(s5)
                  lh           t4, -153(s5)
                  lb           t0, 210(s5)
                  sub          s8, t6, t1
                  sb           s7, 142(s5)
                  lh           t6, 43(s5)
                  and          t2, s5, s3
                  add          s10, s0, s1
                  lhu          s2, -107(s5)
                  lbu          s0, 105(s5)
                  xor          t3, t5, s10
                  slt          s9, a5, s5
                  lbu          s7, 88(s5)
                  addi         t4, a4, 609
                  andi         t1, a5, 36
                  addi         sp, s1, 1630
                  nop
                  xori         a5, a3, -446
                  lb           t3, 180(s5)
                  slt          s2, a2, s9
                  lbu          s1, -152(s5)
                  lb           ra, 211(s5)
                  lbu          t0, 195(s5)
                  lb           s2, -108(s5)
                  srai         a7, s1, 18
                  lb           a3, 130(s5)
                  add          a7, t0, a7
                  lb           a3, 138(s5)
                  add          t0, t1, a3
                  lhu          s9, -119(s5)
                  sb           a0, -18(s5) #end riscv_load_store_rand_instr_stream_3
                  bltu         t4, t0, 1f
1:                srl          a1, s10, a3
                  sub          t3, s9, s1
                  lui          sp, 488761
                  sra          t3, ra, a6
                  slli         t0, t5, 26
                  ori          s2, s5, 1586
                  slli         tp, s4, 27
                  sltiu        s5, a6, 1251
                  sll          sp, tp, sp
                  slli         s6, gp, 19
                  beq          sp, gp, 14f
                  beq          s10, s9, 21f
                  auipc        t3, 316318
14:               lui          s2, 809732
                  sub          t4, s0, a0
                  bgeu         t3, tp, 26f
                  slli         zero, s3, 21
                  bne          tp, t2, 36f
                  sltiu        s7, s3, 1094
                  bge          ra, a5, 32f
21:               srai         gp, gp, 21
                  sll          s4, s5, t6
                  blt          s5, a5, 41f
                  and          s8, sp, s0
                  addi         s6, a3, -28
26:               andi         s9, s2, -1848
                  srl          s6, s2, a2
                  bne          a4, t6, 43f
                  bltu         t2, tp, 37f
                  beq          s10, t4, 49f
                  sll          a2, a0, s5
32:               ori          t6, tp, 1931
                  srl          s8, zero, s8
                  auipc        a2, 606840
                  srl          t4, s2, s9
36:               auipc        a1, 821697
37:               or           ra, t5, t1
                  sll          a7, a6, t1
                  srli         s7, a1, 30
                  and          gp, t4, t2
41:               sra          a2, s7, s9
                  bge          t3, t1, 49f
43:               srl          t4, a2, tp
                  addi         sp, a0, -1988
                  xori         s10, t5, 1747
                  auipc        t5, 134777
                  bgeu         s3, s1, 67f
                  ori          a7, s8, 1000
49:               beq          a5, tp, 67f
                  sra          t1, a3, t1
                  beq          a2, s2, 55f
                  beq          s0, t5, 71f
                  add          t2, a7, t0
                  lui          a2, 44910
55:               slti         s7, zero, -347
                  nop
                  or           t5, t1, s10
                  beq          s4, s3, 74f
                  blt          t4, tp, 76f
                  lui          a2, 451900
                  slt          a5, s5, a0
                  slt          sp, t4, s5
                  srli         s0, t1, 21
                  sra          tp, a6, s11
                  slti         t6, zero, -1065
                  xori         a7, a6, 1455
67:               or           s2, a3, sp
                  blt          s6, t1, 80f
                  bgeu         s6, t1, 75f
                  slli         a2, t3, 3
71:               slt          s5, a6, a3
                  add          a5, s2, t3
                  xor          t4, s8, a0
74:               xor          gp, gp, s4
75:               blt          s9, a2, 85f
76:               srl          s7, t3, t3
                  add          t5, s9, s4
                  add          gp, s7, a7
                  and          s4, s8, t1
80:               bne          s10, a1, 97f
                  srai         zero, a3, 12
                  srli         a5, a0, 5
                  xori         s9, t4, -24
                  xori         a5, t1, -180
85:               or           s5, s9, a0
                  slli         tp, a2, 6
                  sltu         s10, gp, a7
                  bne          s0, tp, 107f
                  ori          t0, sp, -923
                  or           s5, a0, t6
                  bge          t3, s7, 96f
                  srai         a6, s1, 28
                  slli         s5, a4, 20
                  xori         a2, a7, 1462
                  sltu         sp, s8, t3
96:               srai         t1, s11, 15
97:               xori         s7, s9, -1419
                  slt          gp, s11, t0
                  add          t2, zero, a3
                  slt          s0, a1, s3
                  lui          s8, 778113
                  sltu         s6, s3, s2
                  andi         t2, s0, -1507
                  bgeu         t3, sp, 120f
                  sra          t5, s2, a7
                  xori         t5, s4, 2017
107:              ori          a2, tp, -1186
                  slti         s5, t0, 336
                  srl          t0, a7, gp
                  xori         t2, s8, 592
                  bltu         s9, s10, 127f
                  blt          s3, sp, 131f
                  bne          t5, a3, 129f
                  srli         ra, s2, 26
                  bgeu         a0, t4, 120f
                  bltu         s0, a2, 136f
                  nop
                  add          s8, s4, a4
                  lui          tp, 388701
120:              sltiu        a6, s3, 1692
                  or           s1, t5, a6
                  sll          tp, a3, a6
                  sltiu        a1, s11, 1174
                  sltiu        t5, s6, -1239
                  beq          s11, t4, 135f
                  bge          s4, s4, 143f
127:              bltu         zero, sp, 143f
                  sltiu        a5, s4, -1212
129:              srl          t1, a7, t2
                  bgeu         s2, t0, 135f
131:              bne          t0, s7, 150f
                  srai         ra, a7, 4
                  slt          t4, t5, t0
                  bne          sp, zero, 154f
135:              slti         tp, t0, -445
136:              auipc        a6, 132106
                  xori         a3, s0, 1777
                  add          t3, sp, s9
                  nop
                  andi         s0, t4, -213
                  blt          t0, gp, 159f
                  srl          gp, a1, a6
143:              lui          a6, 729033
                  and          s1, a4, a0
                  or           a6, gp, s2
                  srl          s0, a7, zero
                  slti         a1, ra, -480
                  xori         a1, s10, 1659
                  add          t0, s7, s5
150:              slt          a2, t3, a1
                  xori         t6, t5, 891
                  bgeu         s2, ra, 164f
                  sltu         a0, a1, a4
154:              slt          s1, tp, a0
                  bltu         t2, s6, 167f
                  slli         t2, s3, 4
                  sltiu        s5, t1, -2026
                  slli         t2, s1, 0
159:              nop
                  add          a3, s3, t2
                  srai         ra, t0, 24
                  nop
                  ori          t2, a3, 1271
164:              sra          s0, tp, s5
                  srli         t1, t4, 10
                  nop
167:              srli         s7, s11, 2
                  ori          a6, t1, -1177
                  sub          s1, t5, a7
                  auipc        t6, 579665
                  blt          s0, s5, 190f
                  bgeu         s2, s11, 189f
                  addi         t0, ra, 1067
                  sra          t1, t1, ra
                  xori         a5, a7, -909
                  srl          a3, a7, a6
                  bne          s1, a7, 196f
                  bgeu         a6, a4, 187f
                  sub          s7, s6, t4
                  andi         a5, t0, 385
                  slt          s2, t1, a6
                  bne          tp, t2, 200f
                  srli         t0, a1, 6
                  or           s0, s2, s3
                  lui          a7, 1024996
                  nop
187:              auipc        tp, 704041
                  nop
189:              lui          s7, 540299
190:              blt          a6, tp, 200f
                  slt          sp, t4, a7
                  sltu         s8, s2, t5
                  slli         gp, t0, 14
                  srli         a7, s0, 2
                  xor          t5, s8, gp
196:              xor          a6, a0, a0
                  bgeu         s5, s4, 205f
                  nop
                  xori         s0, s7, 380
200:              srl          a6, t3, s2
                  bge          ra, s4, 208f
                  addi         s7, s9, -367
                  auipc        s0, 28320
                  bltu         s5, a4, 214f
205:              add          t2, s11, s0
                  slli         a1, s0, 19
                  nop
208:              slli         t6, s8, 7
                  sltiu        s4, zero, 1596
                  addi         a6, t5, -1570
                  nop
                  or           s2, zero, s2
                  sub          t4, t3, t3
214:              sltiu        s10, tp, -702
                  slt          s8, s7, t6
                  nop
                  bne          s4, t5, 235f
                  sltu         ra, a5, a4
                  sltu         tp, s1, s4
                  slt          t0, t0, a0
                  bltu         a3, t0, 227f
                  sub          zero, a2, a0
                  xori         gp, t3, 677
                  slli         a2, t4, 20
                  bge          a0, s5, 229f
                  blt          t4, sp, 242f
227:              blt          a2, a2, 242f
                  or           s8, a7, t5
229:              srai         t2, a7, 24
                  sltiu        s4, a5, 1207
                  sra          s10, s3, t2
                  addi         sp, t0, 48
                  beq          t5, tp, 249f
                  srli         s8, a6, 28
235:              andi         sp, s9, -506
                  sll          s4, t2, t1
                  addi         t5, a3, -1111
                  sll          t1, t6, tp
                  add          s5, s9, t2
                  slti         zero, s3, 1978
                  addi         s4, a1, -1527
242:              sra          tp, s5, s10
                  sltiu        a6, t2, -1796
                  sub          t1, zero, a0
                  bne          a0, t6, 248f
                  sra          a1, t2, t6
                  xori         s0, t1, -1572
248:              auipc        t4, 144125
249:              bne          a1, s2, 259f
                  srl          a5, t0, s9
                  and          s0, a7, a3
                  xori         a1, sp, -165
                  beq          s10, zero, 269f
                  bltu         sp, a2, 274f
                  lui          s5, 782598
                  sll          s0, s10, t3
                  sra          a3, s3, a2
                  bgeu         s3, tp, 263f
259:              add          t6, t6, t6
                  ori          a5, s3, -657
                  andi         s1, a4, -1753
                  blt          a3, s10, 263f
263:              beq          s3, s9, 282f
                  beq          a5, s4, 284f
                  slti         a2, zero, 879
                  andi         ra, s2, -887
                  and          t0, tp, s8
                  andi         t6, s2, -106
269:              blt          a7, a2, 281f
                  auipc        a7, 308162
                  ori          s1, s10, 322
                  sra          t1, sp, t5
                  add          tp, a2, s8
274:              sll          t1, s8, a7
                  addi         a0, s1, -620
                  slt          sp, s5, s7
                  beq          t3, zero, 278f
278:              addi         a6, sp, -1643
                  srl          ra, s9, s4
                  beq          s8, zero, 297f
281:              sltiu        s8, t0, 1400
282:              sltiu        gp, s10, -951
                  slti         t0, s6, -1972
284:              blt          t4, a1, 303f
                  sub          s1, a4, t2
                  blt          a5, zero, 295f
                  srai         a6, s1, 22
                  srli         sp, sp, 15
                  bge          s10, s1, 305f
                  lui          t5, 528281
                  slt          s0, s9, t6
                  srai         s5, a6, 27
                  slli         a2, t1, 0
                  srl          a1, ra, t1
295:              sub          s6, t5, s10
                  slli         t0, t5, 0
297:              slti         a5, gp, 776
                  and          a3, a3, s4
                  or           s9, t5, gp
                  sltiu        ra, s9, -601
                  sltu         gp, t3, a5
                  sltu         t5, gp, a4
303:              slt          s2, a1, a5
                  beq          t2, zero, 320f
305:              bgeu         s8, zero, 310f
                  sub          a3, a3, sp
                  and          s6, s10, s0
                  sub          s4, s8, a3
                  bge          a5, t3, 328f
                  xor          tp, tp, a5
                  la           t3, sub_1
                  srai         a0, s3, 10
                  sub          s2, s10, s2
                  addi         t3, t3, -838
                  nop
                  xori         sp, a2, 1040
                  slt          t1, s2, a6
                  slli         s2, t6, 30
main_j1:          jalr         s6, t3, 839 #jump main -> sub_1
310:              or           s6, a4, s7
                  sll          a3, s11, ra
                  bne          s10, tp, 332f
                  auipc        s10, 532831
                  and          s8, a3, t2
                  beq          t6, a5, 318f
                  auipc        a0, 792041
                  sltu         a1, s5, s10
                  la           s8, sub_1
                  addi         s8, s8, -844
                  nop
                  sub          s9, gp, a1
                  bne          a7, s2, main_j2 #branch to jump instr
                  and          s10, a1, gp
                  andi         tp, zero, -363
                  nop
                  xor          s6, a1, ra
                  auipc        a1, 148766
                  nop
main_j2:          jalr         s6, s8, 844 #jump main -> sub_1
318:              slt          sp, t1, ra
                  ori          t3, t1, -1907
320:              srli         s10, a6, 23
                  slli         a2, a0, 24
                  slt          s6, s3, a3
                  blt          t0, s8, 341f
                  add          s0, s11, ra
                  sub          tp, gp, s2
                  slt          s4, a4, s4
                  nop
328:              blt          a7, t4, 338f
                  add          s9, tp, zero
                  bge          s5, s10, 335f
                  beq          s4, s9, 349f
332:              add          gp, t5, gp
                  xori         a2, s0, -1481
                  lui          s2, 470536
335:              add          tp, s3, t4
                  sll          sp, sp, t4
                  blt          s9, t0, 354f
338:              slt          s1, zero, a0
                  xor          t6, s4, t1
                  or           zero, s8, s1
341:              xori         t0, s10, 525
                  and          s10, a6, a4
                  xori         s7, ra, -1271
                  sltiu        s8, t1, 866
                  xori         t2, a4, 1267
                  sltu         s2, s1, s4
                  slli         a3, a5, 11
                  xori         sp, a2, -664
349:              srl          t3, s4, s1
                  bltu         s8, t2, 369f
                  srl          s2, a1, s3
                  add          a6, a7, a7
                  nop
354:              sub          t4, s5, a7
                  slt          t5, s8, s7
                  sltu         t3, s11, a7
                  or           s10, s3, t5
                  slti         t5, a1, -892
                  nop
                  bge          gp, zero, 379f
                  addi         t5, zero, -192
                  beq          s7, ra, 378f
                  add          t6, a3, t0
                  blt          s4, s4, 376f
                  andi         t6, s8, -154
                  nop
                  bge          t3, a3, 374f
                  srli         s7, sp, 1
369:              blt          s2, s9, 377f
                  sltu         s2, a3, a1
                  bgeu         t6, sp, 387f
                  srli         t6, s6, 19
                  beq          s0, a4, 391f
374:              sub          s9, s1, s0
                  xori         s8, gp, 1983
376:              ori          a5, a2, 535
377:              bge          t3, s3, 383f
378:              sub          t5, tp, t4
379:              bge          a5, a5, 394f
                  sll          a2, s2, s6
                  lui          a6, 153124
                  bgeu         t3, tp, 392f
383:              lui          s2, 229123
                  sra          t2, ra, a7
                  slli         a2, a1, 23
                  ori          t6, s4, 561
387:              sltiu        t3, a4, 1513
                  sra          tp, a3, t1
                  auipc        t5, 638865
                  beq          s5, tp, 400f
391:              sub          s10, a2, s3
392:              ori          t3, s1, -443
                  bge          s7, ra, 397f
394:              xori         a1, zero, -599
                  sra          t1, zero, ra
                  sub          ra, t3, a0
397:              add          gp, t1, sp
                  sltiu        t1, s9, 1322
                  srli         a1, a7, 15
400:              srai         a0, a6, 16
                  srl          a3, t0, s6
                  srli         ra, a2, 7
                  slti         s5, a5, -179
                  sll          ra, a6, a1
                  addi         a6, s9, -971
                  sra          s6, s6, t6
                  slli         a7, a6, 9
                  slt          ra, a0, s8
                  xori         a5, sp, -1615
                  bgeu         a5, a1, 415f
                  addi         s10, gp, 1541
                  lui          s5, 250728
                  auipc        a3, 731291
                  add          t3, s6, t5
415:              and          t2, s2, t5
                  srl          s0, a4, s11
                  xor          s0, a3, t4
                  slli         a1, s8, 17
                  sltiu        ra, s0, -785
                  beq          sp, s2, 425f
                  ori          tp, t0, 279
                  slli         a1, a1, 19
                  xor          a6, s0, a5
                  srl          ra, t4, a2
425:              auipc        t6, 987795
                  slt          tp, s4, zero
                  sltu         s10, t5, t4
                  auipc        a0, 924892
                  srl          a0, s6, a1
                  or           s0, gp, s11
                  nop
                  ori          sp, sp, -1100
                  auipc        s8, 452398
                  srl          tp, t3, s6
                  andi         t4, a7, 1956
                  slli         s0, t1, 24
                  nop
                  or           tp, a7, a0
                  auipc        a5, 936774
                  bltu         t6, s7, 450f
                  sra          a2, a2, sp
                  auipc        s6, 70177
                  add          s7, zero, t4
                  sra          a7, s8, a7
                  bgeu         zero, gp, 462f
                  sltu         s4, a7, s4
                  andi         a7, t5, -1805
                  and          ra, t3, s10
                  slt          t5, a7, t0
450:              xor          s2, t6, s11
                  and          t2, tp, t4
                  srli         a6, s0, 27
                  sltu         t6, t5, t4
                  xori         a6, s7, -741
                  sltu         a0, s7, a4
                  sll          sp, a0, t4
                  xori         s1, s5, -1253
                  srli         tp, s7, 6
                  auipc        s6, 132396
                  beq          a6, a5, 479f
                  xori         a6, s7, 1727
462:              bgeu         a4, t5, 480f
                  nop
                  bne          s9, a2, 479f
                  srli         a2, t4, 28
                  xori         s1, s6, 881
                  andi         s9, tp, 1540
                  slli         zero, s5, 7
                  andi         tp, t1, -640
                  sra          a7, ra, a7
                  addi         a3, s6, -108
                  nop
                  add          ra, t4, s2
                  ori          t3, a1, -1922
                  slli         t2, t2, 24
                  sra          t2, t3, s10
                  slli         a7, a7, 16
                  or           a6, t1, t0
479:              bge          t6, a7, 498f
480:              slt          a5, a4, t0
                  andi         a5, s7, -973
                  and          a2, s0, s2
                  bge          ra, s10, 487f
                  xor          a0, sp, a7
                  bgeu         s0, t0, 494f
                  sltu         sp, s9, s11
487:              bgeu         a0, ra, 505f
                  slli         t2, a1, 13
                  sll          a5, s11, gp
                  auipc        s5, 450991
                  xor          t0, s8, s2
                  ori          gp, t3, 727
                  bltu         a2, a3, 511f
494:              auipc        t5, 655575
                  and          t0, ra, a1
                  xor          s4, s4, s8
                  slti         a3, s7, 1280
498:              bgeu         s7, ra, 508f
                  sll          s1, t3, a6
                  bge          s9, t2, 501f
501:              sra          s2, t6, t0
                  bltu         t2, a6, 518f
                  sltu         s2, a1, a6
                  nop
505:              bltu         a6, s3, 512f
                  nop
                  srli         a3, s6, 29
508:              add          t3, a7, s0
                  srai         sp, a4, 31
                  slli         tp, zero, 22
511:              bne          s2, zero, 528f
512:              and          s1, s1, a2
                  srl          a3, t5, t6
                  bne          s7, s6, 522f
                  bne          a1, a4, 534f
                  bgeu         s10, t5, 526f
                  bge          s7, t6, 529f
518:              bgeu         s3, ra, 538f
                  addi         a6, tp, 1875
                  and          t5, s4, t4
                  and          s10, s5, a5
522:              srl          a6, sp, s10
                  srl          a3, a0, s5
                  srai         ra, a5, 2
                  beq          tp, t2, 531f
526:              sltiu        t0, s3, -1588
                  bgeu         a6, t4, 530f
528:              srli         a7, t4, 15
529:              blt          zero, t5, 545f
530:              sub          a0, a1, a6
531:              sub          s9, s0, a7
                  bne          s0, a7, 548f
                  blt          a5, s2, 548f
534:              srli         t4, t5, 21
                  srl          s8, a2, a4
                  bltu         t6, a3, 548f
                  srl          a7, s1, a0
538:              blt          s6, t6, 548f
                  bne          s9, s4, 548f
                  auipc        t5, 1039907
                  sll          t2, s2, s5
                  srai         a1, s6, 3
                  sltiu        a0, s10, -1519
                  slli         gp, a7, 7
545:              bge          a7, zero, 548f
                  sltu         s10, tp, a1
                  sub          s6, a7, s0
548:              nop
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            sll          a6, a1, ra
                  addi         a4, a4, -64
                  srl          gp, gp, s3
                  or           a7, s3, s8
                  add          t0, a5, ra
                  slti         s2, a7, -230
                  srli         s0, s7, 7
                  srli         gp, a0, 25
                  sltiu        a7, a4, 1575
                  sw           s6, 4(a4)
                  auipc        s4, 808715
                  la           sp, region_0+57 #start riscv_load_store_rand_instr_stream_0
                  lhu          s5, 3(sp)
                  lw           t2, 3(sp)
                  auipc        t5, 854072
                  and          a5, s0, ra
                  lb           a7, 7(sp)
                  slli         a3, s7, 1
                  lh           s2, 1(sp)
                  lui          s2, 566559
                  xor          a7, a2, t1
                  lb           gp, -14(sp)
                  lb           t3, 16(sp)
                  sltiu        ra, s0, 1971
                  lbu          t4, 16(sp)
                  addi         s7, tp, 1849
                  lb           s9, -3(sp)
                  xor          ra, a2, tp
                  nop
                  xor          s6, a0, s6
                  lbu          t6, 14(sp)
                  lb           ra, 2(sp)
                  lbu          s6, -14(sp)
                  lui          t2, 215388
                  lui          s9, 992477
                  sll          s0, s6, s0
                  sra          t4, s2, ra
                  sltiu        ra, s11, -396
                  ori          t6, s9, 469
                  sb           s2, 5(sp)
                  xor          s5, ra, t6
                  ori          a3, tp, -789
                  sb           t0, -7(sp)
                  sh           zero, -7(sp)
                  sra          s4, t2, t1
                  slti         t1, t5, -202
                  lh           s5, 9(sp)
                  sw           t2, -9(sp)
                  lbu          s9, 0(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         ra, t1, s1
                  sltu         sp, s5, t1
                  sll          s0, a5, s1
                  sub          t5, s7, a7
                  bgeu         s0, gp, 14f
                  andi         s0, ra, 1362
                  auipc        sp, 130188
                  sltiu        s9, s7, 989
                  bltu         a4, tp, 23f
                  bltu         ra, s0, 24f
                  blt          s4, ra, 20f
                  or           a5, s6, t4
                  srl          s9, t5, s7
                  lui          a7, 247818
14:               and          s4, a4, gp
                  bgeu         a5, t3, 22f
                  ori          sp, a4, -1702
                  and          a1, t6, s8
                  and          s8, s8, a7
                  bge          s5, a5, 28f
20:               srl          gp, s0, s0
                  slli         s8, t2, 11
22:               bgeu         s1, zero, 37f
23:               sub          s9, a2, a4
24:               nop
                  auipc        t0, 716195
                  bltu         t5, s3, 34f
                  srli         ra, tp, 17
28:               or           t6, a1, s9
                  bge          s6, s6, 43f
                  slt          t4, zero, tp
                  sub          s6, s7, s3
                  xori         s9, a0, -224
                  bltu         a4, s6, 43f
34:               blt          s6, sp, 49f
                  srai         a6, ra, 12
                  slti         t6, s9, 116
37:               slti         t4, s9, 415
                  xori         a6, a2, -1748
                  or           tp, gp, s9
                  bltu         s1, s9, 43f
                  slt          a7, gp, s8
                  ori          a3, a5, -174
43:               slli         s7, ra, 16
                  blt          s7, s2, 45f
45:               xori         ra, t4, 532
                  andi         a5, a2, -1402
                  bge          ra, a7, 55f
                  blt          a3, sp, 60f
49:               bgeu         gp, a2, 54f
                  srai         s9, a5, 25
                  sltiu        t1, a0, 347
                  auipc        a5, 389488
                  xori         s10, s4, 1704
54:               bge          s1, tp, 64f
55:               sltiu        a0, zero, 568
                  slli         a6, gp, 24
                  la           s5, region_0+1322 #start riscv_load_store_rand_instr_stream_2
                  lbu          a5, -3(s5)
                  lw           s6, 10(s5)
                  sra          s6, s2, t6
                  sub          t2, s1, s10
                  lw           tp, 14(s5)
                  sb           t4, -5(s5)
                  lbu          t4, -9(s5)
                  lbu          a3, -15(s5)
                  lh           t4, 8(s5)
                  sb           t2, -1(s5)
                  andi         t0, a5, 737
                  or           a1, gp, a2
                  lh           t3, 12(s5)
                  lh           t1, 2(s5)
                  lbu          s2, -11(s5)
                  lbu          s2, 15(s5)
                  sltu         s9, zero, s9
                  slti         s1, t2, -1131
                  lh           t2, -2(s5)
                  lhu          t2, -16(s5)
                  slli         t3, a7, 8
                  lbu          tp, -8(s5)
                  and          a1, a6, a0
                  lb           zero, -13(s5)
                  sh           tp, -16(s5)
                  lh           s10, -6(s5)
                  and          s2, s4, t3
                  lb           s7, -15(s5)
                  lb           a7, 12(s5)
                  sb           s10, 5(s5)
                  lb           s10, 15(s5)
                  add          t5, gp, ra
                  sb           t6, 5(s5)
                  sltiu        t2, s2, 210
                  sb           a0, 13(s5)
                  nop
                  sltu         s6, t3, s1
                  lw           s4, 14(s5)
                  lbu          t6, -5(s5)
                  sb           t3, -5(s5) #end riscv_load_store_rand_instr_stream_2
                  sltu         ra, s1, a7
                  bne          s8, t5, 72f
                  xori         s7, a6, -478
60:               sll          a6, ra, s6
                  andi         a0, s6, -951
                  srai         sp, t3, 20
                  srli         tp, s11, 10
64:               addi         gp, a5, -822
                  addi         sp, a1, 761
                  nop
                  slti         a0, s7, -1145
                  add          s7, a3, a6
                  slti         s4, t3, -1870
                  sltiu        s6, a4, -573
                  add          a2, s5, s7
72:               lui          s4, 686581
                  bge          gp, t1, 79f
                  add          t2, a2, gp
                  beq          tp, t3, 85f
                  and          s0, s11, s6
                  nop
                  lui          a6, 209643
79:               sra          s5, t4, tp
                  slt          a2, s3, t4
                  xori         t1, s7, 1178
                  sltu         s9, sp, a5
                  xor          sp, s11, gp
                  andi         a1, s4, -32
85:               add          zero, t2, s10
                  sub          zero, a1, a3
                  andi         t4, s9, 1932
                  sub          t5, a2, s3
                  xori         s4, a0, -452
                  sltu         t5, a0, t2
                  sra          a1, a7, s7
                  sll          tp, s2, s8
                  bne          t5, t0, 105f
                  and          a7, a3, s7
                  xor          t1, t4, t3
                  slti         s0, a5, 1022
                  auipc        ra, 519279
                  bne          s2, s7, 115f
                  addi         a7, s8, -1412
                  add          s6, zero, tp
                  sra          a2, s1, a6
                  srl          gp, s5, t1
                  and          s1, t4, a6
                  srl          s2, zero, s11
105:              slti         s7, a0, 1683
                  add          s0, t6, s8
                  bge          s8, sp, 127f
                  and          t6, t6, zero
                  slli         s1, a7, 23
                  slti         s4, a5, 1716
                  add          s9, a7, s1
                  sll          s5, a4, a2
                  bge          a4, a0, 117f
                  sltiu        gp, zero, 323
115:              slti         t0, t5, -804
                  srl          a2, zero, a4
117:              beq          a1, ra, 128f
                  ori          a3, t6, 1862
                  nop
                  or           t6, t3, t2
                  beq          t1, a7, 124f
                  ori          t5, s11, -484
                  sra          sp, t5, a0
124:              xor          s9, s7, s8
                  ori          ra, t2, -1679
                  sltu         a6, t6, a5
127:              nop
128:              lui          t6, 521693
                  and          s1, t5, s2
                  slli         a0, a0, 4
                  bne          a3, ra, 145f
                  xor          a5, a7, a0
                  xori         t5, a0, -1681
                  bge          a6, t4, 147f
                  add          a6, a6, a5
                  sub          t6, a1, s10
                  xor          t5, t6, s4
                  srl          t2, zero, s5
                  bltu         s9, t6, 148f
                  add          t0, t3, s5
                  or           t5, a1, a4
                  ori          ra, a6, 1094
                  bge          zero, a3, 157f
                  sll          t0, tp, s6
145:              and          t4, a1, s9
                  slli         zero, s5, 31
147:              sub          s6, s2, a0
148:              slt          s6, sp, t4
                  lui          s8, 306676
                  xor          s10, s0, s2
                  auipc        s0, 421261
                  xor          t6, s1, a7
                  and          a0, ra, s0
                  beq          tp, zero, 165f
                  add          zero, s2, a0
                  nop
157:              slli         t3, a7, 3
                  blt          s1, s0, 167f
                  srai         zero, a5, 24
                  sll          t6, t2, a7
                  slti         s9, a7, 1794
                  ori          a1, t3, 1261
                  bge          t3, t1, 169f
                  ori          s8, s0, -1043
165:              auipc        a6, 350801
                  sll          t4, s6, s9
167:              lui          s0, 925120
                  sltiu        s5, t0, 1762
169:              andi         t2, ra, -394
                  and          zero, t0, s1
                  slt          a6, t5, t1
                  ori          s0, t6, 113
                  sll          t5, tp, a2
                  bne          t2, s1, 179f
                  sltiu        t4, a0, -403
                  andi         tp, a1, -1487
                  slli         t3, a4, 8
                  srai         t4, s11, 2
179:              bgeu         t2, a2, 188f
                  bge          s9, s0, 190f
                  addi         t1, s4, 1608
                  sll          t1, s8, s2
                  sra          t4, t6, a3
                  ori          t4, zero, -2001
                  bltu         a4, s10, 202f
                  bge          s7, s5, 201f
                  slli         s2, a2, 25
188:              or           s2, t2, s10
                  sra          t6, tp, t3
190:              srli         t2, t3, 11
                  bgeu         s8, a2, 199f
                  or           ra, s8, s5
                  bne          a4, a2, 206f
                  lui          s1, 901227
                  sra          t2, zero, t3
                  or           t6, sp, s9
                  or           s5, s9, a7
                  sltiu        t2, s6, -1364
199:              srl          a5, s7, a5
                  sra          a3, a1, t2
201:              or           a3, a4, s11
202:              andi         t2, s7, -814
                  add          t6, a0, s0
                  and          zero, a6, s4
                  ori          s7, t1, -610
206:              slti         s8, s1, 1594
                  slt          s6, t1, s8
                  lui          t3, 222468
                  sltu         t4, t6, ra
                  or           a5, a2, a3
                  sub          s1, s6, a4
                  bltu         s6, t2, 226f
                  slli         s10, t4, 12
                  sra          gp, t3, s7
                  sra          s8, a1, s4
                  bltu         s4, a3, 228f
                  nop
                  sltiu        t6, s10, 1307
                  slti         s0, t5, -1248
                  bltu         s5, a2, 235f
                  sll          tp, a0, s5
                  sltiu        a0, a1, 1261
                  slt          zero, t0, a0
                  xor          s5, zero, s8
                  bne          t2, s11, 232f
226:              auipc        s8, 547307
                  sub          s0, s2, t2
228:              sra          a5, a6, t5
                  srai         t3, s4, 28
                  srl          t5, a0, s5
                  slti         s8, sp, 1736
232:              srai         s6, ra, 16
                  auipc        a7, 155511
                  lui          gp, 62595
235:              bge          a3, t4, 250f
                  slti         t3, t6, 89
                  xori         s5, s8, 1490
                  bne          s5, t5, 239f
239:              xor          s7, s8, a5
                  xor          tp, t2, ra
                  lui          s1, 229073
                  add          sp, zero, a7
                  lui          zero, 17059
                  xori         a2, ra, 644
                  sltiu        t6, a2, -181
                  sltu         s9, s4, s1
                  xori         s9, t3, 1800
                  beq          a3, s7, 256f
                  xori         a6, s5, -1543
250:              sltiu        t3, t0, -1936
                  sra          s5, a4, s0
                  add          s1, a3, s5
                  add          t5, s6, s7
                  lui          t0, 557769
                  bge          zero, s8, 267f
256:              sra          s1, a6, a6
                  beq          a7, ra, 271f
                  sra          s6, a6, s6
                  ori          s5, t0, -648
                  ori          tp, s4, -1408
                  slli         a7, t5, 12
                  blt          s0, s9, 276f
                  xori         a6, a2, 935
                  slti         s6, t1, -219
                  bgeu         s3, s9, 279f
                  bge          a7, a6, 276f
267:              slli         a3, a7, 6
                  slt          a1, s2, a3
                  ori          s2, tp, -1512
                  xor          t4, zero, s6
271:              xori         a0, t2, -329
                  bne          s4, s10, 275f
                  blt          t0, s7, 283f
                  sub          t0, s7, s10
275:              sll          s4, a1, s6
276:              bge          a5, t3, 286f
                  bge          gp, s3, 287f
                  nop
279:              and          t1, t3, a2
                  beq          s8, t6, 284f
                  srl          t5, t3, tp
                  lui          ra, 3867
283:              xor          sp, t1, a2
284:              and          t1, t4, tp
                  blt          t1, zero, 288f
286:              auipc        s7, 499845
287:              blt          a1, s1, 307f
288:              bgeu         a6, s5, 303f
                  srl          t5, t6, a4
                  or           ra, t6, t5
                  srl          s7, a1, a7
                  srai         t3, a7, 20
                  and          s1, a6, a0
                  xori         gp, s2, 307
                  and          zero, gp, t2
                  sltu         t0, t0, a6
                  ori          tp, s9, 75
                  slti         gp, t0, -105
                  srli         t6, a3, 25
                  bgeu         a3, t3, 310f
                  auipc        a5, 755786
                  andi         s7, a5, -1151
303:              addi         a2, s2, -1338
                  bne          t3, s7, 310f
                  srai         s0, s0, 21
                  blt          t4, s11, 318f
307:              xori         ra, gp, 1398
                  slt          t4, s4, sp
                  ori          t6, a2, 889
310:              beq          t4, s10, 317f
                  or           ra, s4, tp
                  slti         s1, a5, -1083
                  nop
                  beq          s6, s5, 325f
                  xor          gp, sp, t1
                  bge          a7, gp, 330f
317:              and          s6, a4, s8
318:              lui          s9, 224928
                  sra          a6, s11, a5
                  xor          gp, a6, zero
                  xor          a5, t6, s7
                  bge          t3, t5, 337f
                  sltu         s7, t0, t2
                  sra          a0, zero, ra
325:              xori         t4, t3, 1374
                  sra          a5, s4, s9
                  bgeu         a1, s5, 337f
                  or           s10, a3, tp
                  slti         s1, a1, 341
330:              xor          s8, tp, a5
                  and          s9, s0, t5
                  bltu         a0, a2, 340f
                  bgeu         s7, a4, 348f
                  slti         s4, s1, -560
                  srl          a1, s3, sp
                  sltu         t0, tp, sp
337:              sltu         s10, zero, a0
                  or           ra, s1, ra
                  slli         t6, a6, 22
340:              addi         tp, s7, -836
                  auipc        gp, 624827
                  sra          s5, a2, a3
                  bge          a3, a5, 344f
344:              nop
                  add          s0, a3, t6
                  slli         s10, s0, 4
                  lui          a5, 295031
348:              xori         gp, s4, 21
                  xor          s0, a5, t0
                  bltu         a2, s3, 365f
                  srai         a3, t1, 20
                  blt          s5, t6, 356f
                  slti         s6, a3, 589
                  slt          s10, t6, s10
                  xori         a3, s1, 1178
356:              bne          a6, s4, 361f
                  auipc        s10, 109513
                  slti         a5, t3, -587
                  and          ra, s2, s10
                  sra          s9, s1, t3
361:              srl          t5, s4, gp
                  nop
                  slli         ra, a4, 4
                  bne          zero, s1, 378f
365:              auipc        a0, 808594
                  bne          s9, s7, 376f
                  addi         ra, a3, -504
                  bne          a3, a3, 378f
                  sll          gp, a1, s4
                  xori         t6, t3, 523
                  sra          ra, s11, s11
                  bgeu         s10, a2, 375f
                  ori          t2, ra, 1259
                  srai         gp, a0, 29
375:              or           a6, zero, s10
376:              nop
                  nop
378:              bgeu         a4, s7, 391f
                  sra          s8, t3, a7
                  auipc        s6, 542340
                  auipc        a7, 6757
                  slli         zero, t3, 11
                  srl          gp, tp, t2
                  auipc        a7, 521804
                  sll          a7, s3, s1
                  sltiu        s0, a6, 480
                  auipc        a5, 976054
                  blt          a0, s7, 391f
                  slt          s1, a6, a2
                  bge          s0, s8, 400f
391:              lui          gp, 57666
                  or           a3, ra, a4
                  and          a7, s5, tp
                  bge          zero, t6, 414f
                  bne          t4, zero, 403f
                  slli         t2, t0, 5
                  sltu         t3, s7, t6
                  slt          t2, s6, s7
                  add          s1, a1, s4
400:              srai         t0, a2, 29
                  addi         t1, t4, -545
                  slt          s8, s6, s9
403:              and          s6, t6, s11
                  sra          sp, s3, t1
                  bge          s5, t0, 414f
                  auipc        a6, 140861
                  lui          a7, 671405
                  bne          s0, a2, 417f
                  add          s6, t5, ra
                  ori          s7, a2, -42
                  slt          a5, a7, s10
                  bge          ra, sp, 424f
                  srl          a2, t5, s6
414:              bltu         t3, s2, 428f
                  sll          s7, a4, a3
                  bgeu         t1, s1, 430f
417:              bltu         tp, s0, 432f
                  sra          s1, t6, a0
                  blt          a0, a7, 434f
                  bgeu         t0, a3, 421f
                  la           sp, region_0+1340 #start riscv_load_store_rand_instr_stream_1
                  xori         tp, t0, -490
                  lbu          s0, -1158(sp)
                  lbu          tp, -601(sp)
                  sb           s1, -1101(sp)
                  lb           a3, -1207(sp)
                  addi         a0, a7, 1895
                  lb           a1, -409(sp)
                  sltu         t0, a0, t1
                  auipc        gp, 915578
                  lbu          s0, 0(sp)
                  sltiu        s0, ra, -1563
                  lui          t1, 692989
                  sh           a2, -186(sp)
                  xori         s1, s11, -1994
                  and          t5, t5, a3
                  slti         a1, a1, -532
                  nop
                  sltu         zero, s10, zero
                  srli         s5, a6, 22
                  srai         t4, t3, 3
                  auipc        s6, 261277
                  sh           sp, -1064(sp)
                  addi         s2, s2, 1915
                  ori          gp, s4, 393
                  sltu         s4, t5, s1
                  sltiu        s0, s8, 1680
                  lb           s9, 225(sp)
                  lb           s4, -315(sp)
                  srai         a5, s5, 6
                  add          s8, a0, s5
                  lui          t0, 351928
                  sb           t6, -554(sp)
                  sltu         t6, s6, s1
                  and          a5, s2, tp
                  xor          ra, s7, tp
                  sltiu        a7, s2, 1894
                  addi         t5, ra, -955
                  sw           gp, -624(sp) #end riscv_load_store_rand_instr_stream_1
421:              nop
                  or           sp, a3, s10
                  xori         tp, s11, -1094
424:              bltu         t0, zero, 430f
                  xori         ra, zero, -1476
                  slli         s9, s3, 7
                  sltiu        zero, a3, 870
428:              srl          sp, t1, s2
                  and          s10, a2, a1
430:              lui          s8, 462445
                  addi         a0, s0, -430
432:              sub          s4, a7, sp
                  xor          s8, ra, a0
434:              slli         gp, t3, 26
                  and          gp, s8, sp
                  lw           s6, 4(a4)
                  xor          s2, t5, t1
                  addi         a4, a4, 64
                  nop
                  srli         a6, s1, 12
                  xori         s9, s1, 1876
                  lui          ra, 101695
                  xori         s1, ra, 826
                  nop
                  andi         t5, s6, 1501
575:              addi x11, x22, 0
575:              jalr x11, x11, 0
sub_1:            addi         a4, a4, -12
                  slli         s9, s10, 9
                  srl          a5, sp, a6
                  sw           s6, 4(a4)
                  sub          a3, s11, t1
                  auipc        t4, 614340
                  sll          tp, s9, a4
                  slli         s4, s4, 31
                  slli         a2, t1, 2
                  sll          t5, sp, a0
                  slti         tp, t3, 922
                  ori          zero, tp, -1228
                  slti         s0, gp, 16
                  srai         gp, s1, 17
                  xori         t6, s0, 1199
                  bgeu         a3, s4, sub_1_j3 #branch to jump instr
                  sltiu        tp, zero, 558
sub_1_j3:         jal          s6, sub_2 #jump sub_1 -> sub_2
                  srai         t1, a7, 29
                  nop
                  addi         zero, tp, 1851
                  andi         s2, a3, -1485
                  sra          s10, t5, s2
                  srl          t4, s3, ra
                  xor          t0, t3, gp
sub_1_j4:         jal          s6, sub_2 #jump sub_1 -> sub_2
                  bgeu         t4, a6, 14f
                  ori          s8, s1, -1928
                  addi         s8, s6, 1624
                  slti         a5, s7, -1550
                  sll          a0, s5, s3
                  xori         s0, gp, -1305
                  sltiu        t1, s8, 676
                  slt          t4, sp, t4
                  bge          s10, s5, 25f
                  lui          t0, 124474
                  beq          s3, s8, 26f
                  bgeu         t5, t3, 24f
                  slti         zero, zero, -1091
                  and          s5, a5, t1
14:               srli         t5, t6, 2
                  bltu         t6, zero, 32f
                  blt          s0, gp, 23f
                  bgeu         zero, s11, 19f
                  addi         s9, a2, -896
19:               blt          sp, s5, 31f
                  auipc        ra, 853843
                  bltu         s6, a1, 32f
                  xor          a2, s5, tp
23:               and          s7, s5, t2
24:               xor          s10, t3, s0
25:               slt          t3, t3, s2
26:               bne          a0, a2, 34f
                  add          t5, s6, s11
                  ori          t2, s9, 1939
                  auipc        t0, 755480
                  bltu         s9, s1, 46f
31:               auipc        a1, 320604
32:               blt          s5, t6, 42f
                  sltu         a3, a1, s2
34:               slti         t2, s7, 186
                  srli         s2, t4, 4
                  xor          s0, t6, s7
                  slti         s8, a4, -1264
                  srl          s8, s10, s7
                  sll          s1, t5, a4
                  blt          a3, s9, 46f
                  srai         a1, t4, 12
42:               sll          a2, s5, s2
                  or           s8, gp, a5
                  nop
                  addi         ra, s10, 1666
46:               slt          s0, gp, s2
                  andi         a7, gp, 1208
                  bne          s10, a0, 65f
                  bge          s1, zero, 56f
                  srli         s6, s6, 6
                  sltu         a5, s10, s9
                  srli         t3, s9, 17
                  addi         s6, a2, -1697
                  sltu         t3, a3, sp
                  sub          s9, t6, s4
56:               auipc        a6, 42454
                  blt          t2, a1, 62f
                  sra          t4, a7, a5
                  blt          a2, a7, 65f
                  ori          zero, a7, -826
                  bge          s1, s1, 65f
62:               slti         a3, a3, 1539
                  xor          tp, a5, s0
                  bge          t1, a0, 65f
65:               srai         t0, s7, 26
                  auipc        s0, 869157
                  lw           s6, 4(a4)
                  slli         s10, a3, 5
                  sub          s7, s7, s8
                  xori         tp, a6, 703
                  sub          s1, s11, gp
                  addi         a4, a4, 12
                  slli         s1, a3, 31
                  srl          s1, s0, a1
                  addi         a0, s6, 180
102:              addi x3, x22, 0
102:              jalr x3, x3, 0
sub_10:           xor          t6, s1, t1
                  addi         a4, a4, -40
                  sltiu        t5, s0, 1075
                  sw           s6, 4(a4)
                  srl          s9, s0, a7
                  xori         a7, a4, 198
                  addi         s7, s5, -1808
                  xor          gp, t1, a1
                  xori         s4, s2, 632
                  la           sp, region_0+1337 #start riscv_load_store_rand_instr_stream_1
                  lui          s2, 122858
                  sb           a0, -124(sp)
                  ori          t5, ra, -553
                  lw           t4, -197(sp)
                  sb           zero, 152(sp)
                  lbu          s1, 18(sp)
                  lb           tp, -86(sp)
                  lhu          s8, 121(sp)
                  srli         a2, a2, 13
                  andi         s0, t5, 1320
                  srli         a3, tp, 9
                  and          t5, gp, a1
                  sra          s10, s2, t0
                  sll          t5, s0, t1
                  lb           zero, 138(sp)
                  lb           s4, 6(sp)
                  lbu          a1, -138(sp)
                  lb           s10, 76(sp)
                  auipc        t5, 149699
                  xori         a7, gp, 1283
                  lb           a6, -23(sp)
                  lb           t1, 100(sp)
                  sub          a7, a3, t4
                  lhu          t6, 195(sp)
                  lh           a6, -115(sp)
                  sb           s9, 18(sp)
                  sw           gp, -117(sp)
                  slti         s1, t2, 948
                  sb           a2, 32(sp)
                  lbu          s5, -226(sp)
                  srli         a2, gp, 24
                  nop
                  srl          t0, t0, sp
                  lh           a0, 195(sp)
                  sb           a7, 210(sp)
                  srli         gp, gp, 18
                  sh           s1, 187(sp)
                  sb           s11, -166(sp) #end riscv_load_store_rand_instr_stream_1
                  srl          s5, sp, s3
                  blt          t3, a1, 16f
                  bltu         a0, a7, 22f
                  slti         s0, t3, -1284
                  slli         zero, t3, 20
                  ori          s0, a0, -367
                  slti         s10, s5, 1251
                  slt          t6, t4, a7
                  blt          t6, ra, 13f
                  bgeu         tp, s4, 11f
                  auipc        s9, 137396
11:               sub          a6, a4, a0
                  ori          s9, s9, 846
13:               sltiu        s4, a3, -895
                  addi         a3, t4, -1501
                  and          a6, a4, t3
16:               slli         t2, t2, 13
                  sll          a0, a4, a4
                  slti         sp, t6, -153
                  xor          s9, a3, t3
                  ori          t3, s9, -517
                  bne          s4, a7, 32f
22:               ori          t6, s8, 312
                  andi         s5, a0, -762
                  bne          t5, s3, 25f
25:               slt          t0, t0, s6
                  xor          a3, t6, s7
                  slt          t0, ra, a0
                  slt          a3, a4, sp
                  sra          s4, t1, gp
                  and          s7, a5, s5
                  and          s10, a5, a4
32:               srli         t2, s4, 1
                  auipc        s2, 361376
                  sltu         ra, a1, t5
                  slt          zero, t3, ra
                  bltu         sp, t4, 56f
                  bne          t0, s10, 40f
                  bne          s4, s9, 42f
                  beq          t3, zero, 45f
40:               nop
                  addi         s6, s10, 2015
42:               or           s8, a7, tp
                  addi         s0, s7, -1689
                  blt          a5, s10, 59f
45:               lui          s10, 935035
                  or           gp, a6, ra
                  sltiu        t1, gp, 142
                  ori          s4, a6, -43
                  sra          s5, t3, a6
                  sra          s7, s0, s4
                  slli         t6, a7, 0
                  or           zero, ra, t5
                  beq          s9, sp, 72f
                  sra          a5, s0, sp
                  bgeu         s4, gp, 60f
56:               auipc        t3, 524869
                  andi         t1, t5, -101
                  add          gp, a0, s8
59:               bgeu         s2, a4, 71f
60:               xori         a6, a3, 118
                  addi         t0, a3, 923
                  bgeu         a3, a5, 69f
                  auipc        tp, 987721
                  bge          t1, s5, 79f
                  ori          t3, a6, 1308
                  sltiu        s5, t4, -835
                  ori          s8, tp, 1685
                  ori          s0, s5, -501
69:               add          a0, t5, s11
                  andi         tp, s10, -398
71:               and          t4, s5, t6
72:               sltiu        t0, a6, -1597
                  bgeu         zero, s4, 81f
                  nop
                  slti         ra, a7, 365
                  xori         a1, ra, 1655
                  addi         a1, a0, 415
                  sra          a2, tp, s10
79:               slli         s9, t3, 4
                  sra          sp, s6, s2
81:               andi         a1, t1, -853
                  sltu         gp, s6, zero
                  sll          ra, s1, t0
                  blt          t3, t1, 102f
                  xor          a3, ra, t4
                  andi         t0, s9, -1553
                  addi         s4, a4, 1410
                  andi         gp, s4, 1136
                  add          a6, t2, a1
                  blt          a4, a6, 92f
                  addi         s5, s9, 781
92:               srli         t1, s5, 5
                  bne          s8, t3, 97f
                  srl          a6, s1, s7
                  bne          s1, a1, 97f
                  slli         s6, t0, 31
97:               addi         s4, s3, 1377
                  sltu         s4, s8, s4
                  xor          t4, t1, s6
                  nop
                  slli         s5, ra, 26
102:              bne          t0, a7, 117f
                  sub          s10, s7, sp
                  andi         t0, s5, 232
                  bge          a4, tp, 117f
                  slti         a5, a6, 1660
                  bne          a6, sp, 113f
                  sub          t4, gp, t3
                  add          t0, s10, a3
                  sll          s8, a0, a1
                  lui          s7, 393072
                  sra          ra, a4, s11
113:              sub          a3, t6, t0
                  bne          ra, t3, 123f
                  srli         t5, s11, 19
                  or           t5, t2, ra
117:              and          s9, s6, a1
                  xori         a1, s9, -1352
                  and          t2, s5, s2
                  bgeu         s7, t2, 122f
                  bltu         s11, a4, 137f
122:              bgeu         a4, tp, 123f
123:              or           a6, s3, t6
                  ori          ra, sp, -78
                  slti         s2, tp, 1388
                  xori         a5, s7, -22
                  ori          gp, ra, -859
                  sltiu        s1, tp, -855
                  sll          s5, t6, s11
                  sll          gp, s7, s2
                  bge          s6, a2, 132f
132:              xor          t3, s9, t5
                  auipc        s10, 370362
                  xori         a7, a6, 586
                  slli         gp, s8, 2
                  srli         s4, a4, 12
137:              andi         a7, a5, -1075
                  la           sp, region_0+1126 #start riscv_load_store_rand_instr_stream_0
                  sb           s10, -243(sp)
                  lb           a7, -49(sp)
                  addi         s5, s2, -251
                  sll          tp, s11, a7
                  ori          a5, s4, -1346
                  andi         s2, t5, -1159
                  lui          s0, 596666
                  sb           s1, 246(sp)
                  lhu          a5, 130(sp)
                  and          s5, s2, gp
                  lui          t5, 7393
                  lb           s8, -147(sp)
                  lbu          t5, -203(sp)
                  lb           t4, 155(sp)
                  lb           t6, -79(sp)
                  slli         s0, t4, 6
                  sw           t3, 198(sp)
                  srai         s7, t3, 18
                  auipc        t3, 236130
                  sra          s0, a5, t4
                  srl          t0, zero, tp
                  xor          a6, s2, s3
                  sb           s6, -205(sp)
                  lbu          s1, 62(sp)
                  lb           s6, -35(sp)
                  srli         a0, s3, 20
                  lbu          a7, 214(sp)
                  xor          a2, a1, s7
                  nop
                  sb           s1, 251(sp)
                  lh           s5, -196(sp)
                  lb           t4, -221(sp)
                  lb           a7, -37(sp)
                  sb           s9, 167(sp)
                  sh           a7, -178(sp)
                  sb           tp, 41(sp)
                  lbu          ra, -27(sp)
                  lb           t5, -20(sp)
                  lbu          s9, 39(sp)
                  lh           a0, 240(sp)
                  lb           a0, 238(sp)
                  lb           t6, 175(sp)
                  slt          a0, s7, a7
                  sb           s3, 115(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         a7, s8, 735
                  xor          s5, zero, s8
                  srli         t4, s6, 14
                  ori          t2, s11, 1802
                  addi         a6, t5, 388
                  xori         a7, tp, -1303
                  bge          t3, t3, 162f
                  slti         t3, s0, 540
                  add          s6, s0, a7
                  lui          s9, 351114
                  bne          s6, ra, 159f
                  sll          a1, t4, zero
                  bge          s4, s7, 159f
                  sltiu        sp, a5, 1541
                  slti         s6, s1, 1141
                  bge          a1, t0, 161f
                  and          s6, s11, t3
                  sra          tp, s4, s10
                  auipc        s10, 805555
                  slli         s10, t5, 15
                  bltu         s4, a6, 178f
159:              ori          t3, t6, -873
                  lui          s6, 154695
161:              bne          a0, t3, 166f
162:              blt          s2, zero, 174f
                  slli         s2, t4, 30
                  blt          s7, a2, 182f
                  addi         sp, zero, -598
166:              bne          s0, s2, 167f
167:              slt          a5, t1, s6
                  slli         s6, tp, 12
                  addi         t1, a6, 2027
                  srai         a5, s1, 23
                  or           t4, s3, a6
                  bltu         s5, t6, 188f
                  bge          a3, t3, 175f
174:              blt          s7, t3, 175f
175:              slli         s0, t2, 27
                  sltiu        s6, s8, 153
                  slt          t4, zero, s7
178:              add          t3, t6, gp
                  nop
                  bltu         ra, s4, 195f
                  sra          tp, s0, t3
182:              bgeu         a5, a7, 201f
                  bge          s0, t1, 190f
                  bgeu         t3, s0, 188f
                  sll          a2, sp, t3
                  nop
                  srli         tp, a2, 6
188:              srli         sp, t1, 18
                  srli         s6, s2, 18
190:              slt          s6, s4, s1
                  or           a6, t5, sp
                  addi         tp, a1, 1981
                  addi         a6, a4, -47
                  bge          t2, s1, 212f
195:              auipc        tp, 331315
                  addi         t0, s3, -1326
                  beq          t4, t1, 217f
                  slli         s0, t0, 2
                  sltiu        a1, a0, 1917
                  or           a0, s3, s1
201:              and          s8, zero, a2
                  xor          a7, a7, s11
                  srl          zero, tp, s11
                  sltu         tp, tp, t3
                  beq          a0, s9, 217f
                  xori         t0, t6, -915
                  srl          s2, a0, t2
                  srli         a1, s9, 20
                  ori          s5, s2, 949
                  sll          s6, tp, s3
                  and          t0, s2, s3
212:              andi         s4, s7, 1445
                  and          t1, s11, s1
                  bne          a6, a3, 217f
                  bne          tp, s0, 221f
                  sltiu        t2, t2, 3
217:              beq          s2, sp, 218f
218:              andi         t5, t4, 589
                  lui          a1, 202246
                  slt          t2, s3, s9
221:              bgeu         s4, a1, 236f
                  bgeu         gp, a2, 224f
                  srli         t4, s11, 27
224:              andi         t0, zero, -1156
                  or           s10, a5, s6
                  slti         t0, gp, 1944
                  auipc        s2, 59459
                  nop
                  sub          s8, s7, s3
                  andi         sp, gp, 232
                  slli         s0, a5, 26
                  bltu         gp, s10, 236f
                  xori         a7, s5, -96
                  srli         t2, t5, 13
                  srai         sp, a1, 7
236:              sra          t1, a6, s5
                  sltiu        s4, t2, 337
                  bgeu         s8, s11, 244f
                  beq          s3, a4, 254f
                  lui          s8, 401653
                  bgeu         t3, t6, 243f
                  sltiu        s6, s10, -1081
243:              and          a6, sp, a3
244:              addi         t6, t3, -379
                  bgeu         t1, s7, 250f
                  ori          s5, ra, 1444
                  bne          t2, s7, 262f
                  bne          a0, s0, 250f
                  nop
250:              bgeu         s9, tp, 256f
                  xori         sp, t0, -593
                  sltu         a6, t5, s11
                  or           t0, s0, t5
254:              sub          s2, a7, s5
                  srl          s7, s1, gp
256:              or           s8, a6, s7
                  xor          s7, a4, a4
                  srai         a5, a7, 17
                  slli         a7, t3, 13
                  and          s0, a2, t1
                  andi         gp, t5, -899
262:              andi         a1, t3, -1219
                  srl          s10, s4, s9
                  srai         sp, s5, 26
                  slt          tp, s9, s6
                  or           s8, t3, t0
                  bge          tp, t5, 269f
                  lui          a7, 776638
269:              xor          a5, s1, s2
                  lw           s6, 4(a4)
                  sra          t2, ra, s1
                  sub          s0, a1, a5
                  addi         a4, a4, 40
                  slli         s10, tp, 27
                  auipc        a3, 765195
                  addi         t6, s10, -1688
                  and          t0, s6, ra
                  xori         s8, t1, 42
                  sltu         a7, t6, a2
373:              addi x20, x22, 1
373:              jalr x20, x20, 0
sub_7:            xor          tp, s4, a3
                  blt          t3, s0, sub_7_stack_p
                  sll          tp, gp, a0
                  sra          s10, s0, s9
                  srl          s1, s4, t5
sub_7_stack_p:    addi         a4, a4, -60
                  sub          a0, a3, t3
                  sw           s6, 4(a4)
                  srl          a0, a4, s3
                  xori         tp, t5, -495
                  la           gp, region_0+484 #start riscv_load_store_rand_instr_stream_1
                  lbu          s0, 16(gp)
                  sw           t0, 1192(gp)
                  and          a0, s9, a1
                  lbu          tp, -58(gp)
                  srli         t5, a7, 10
                  sb           s8, 281(gp)
                  sra          a6, ra, s6
                  lb           tp, 446(gp)
                  sh           s9, -370(gp)
                  srl          s10, s10, tp
                  ori          sp, s5, 116
                  lhu          a0, 608(gp)
                  sb           t1, 1156(gp)
                  and          s2, s9, t5
                  sb           a1, 321(gp)
                  sb           ra, 1160(gp)
                  lb           t6, 728(gp)
                  lhu          t2, 1016(gp)
                  xor          a5, s10, s2
                  lbu          a2, -22(gp)
                  slti         a6, a5, -1944
                  sub          t3, a4, s6
                  sb           a4, 1192(gp)
                  lb           s0, 40(gp)
                  lb           ra, 156(gp)
                  lh           a0, 334(gp)
                  lh           t1, 844(gp)
                  lb           t0, 579(gp)
                  slt          tp, sp, s1
                  lb           t2, 607(gp)
                  ori          a7, s1, 1882
                  lb           s9, -257(gp)
                  or           a1, ra, a1
                  xori         t2, a3, 40
                  auipc        a2, 37282
                  lbu          t5, 121(gp)
                  lb           s10, 271(gp)
                  lh           s6, -146(gp)
                  addi         a5, t3, 858
                  sb           s5, 575(gp)
                  nop
                  slti         a6, sp, -1058
                  sra          s0, a0, s5
                  addi         a5, t1, 1908
                  xor          t0, s6, a6
                  lbu          t3, 749(gp)
                  lh           zero, 1414(gp)
                  lbu          a7, 685(gp) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_1+1537 #start riscv_load_store_rand_instr_stream_8
                  lh           ra, -887(s7)
                  lhu          a1, -1505(s7)
                  lb           s1, -599(s7)
                  lb           s0, -347(s7)
                  sb           a7, 86(s7)
                  sh           gp, -1387(s7)
                  sra          zero, s3, s8
                  xori         gp, t3, -900
                  lh           s2, 133(s7)
                  srl          t5, t4, tp
                  sltu         t2, sp, a0
                  nop
                  and          s10, t3, a7
                  slli         s0, tp, 7
                  ori          a7, a7, 967
                  sb           sp, -523(s7)
                  lb           a1, -124(s7)
                  addi         s6, t4, 1128
                  sb           ra, -622(s7)
                  lhu          sp, -983(s7)
                  lh           t1, -1387(s7)
                  sub          a5, tp, s10
                  and          s4, gp, t6
                  lb           s1, -1500(s7)
                  lbu          gp, 294(s7)
                  sra          ra, t4, a1
                  lb           t4, 132(s7)
                  ori          s10, a5, 1182
                  lb           tp, -1490(s7)
                  auipc        t6, 934203
                  sb           s7, -1150(s7)
                  lb           sp, 242(s7)
                  srl          a1, t0, zero
                  add          a5, s0, a1
                  sb           a5, 44(s7)
                  lhu          s8, -1339(s7) #end riscv_load_store_rand_instr_stream_8
                  la           s9, region_0+550 #start riscv_load_store_rand_instr_stream_5
                  srl          s1, tp, a5
                  sb           t6, 64(s9)
                  addi         t6, a7, 833
                  lb           a7, -29(s9)
                  lbu          t0, -57(s9)
                  slli         s1, t6, 29
                  xor          ra, s3, s11
                  auipc        s6, 998546
                  lb           s4, -59(s9)
                  sb           s6, 11(s9)
                  lbu          t6, 9(s9)
                  addi         a7, s1, 211
                  sll          t6, s11, a7
                  lb           s5, 32(s9)
                  srli         a2, zero, 23
                  lb           s8, 37(s9)
                  lui          zero, 687512
                  or           t6, s2, a1
                  auipc        tp, 945800
                  auipc        s1, 33992
                  lhu          s5, 56(s9)
                  sw           t6, -34(s9)
                  sra          a0, a7, gp
                  lh           s8, -36(s9)
                  lhu          s8, -24(s9)
                  lui          a7, 994011
                  sub          t5, t0, t3
                  lbu          s2, -59(s9)
                  sll          gp, s4, s3
                  lbu          ra, -51(s9)
                  sltiu        s10, s1, 611
                  lb           t1, 25(s9)
                  sh           ra, -40(s9)
                  srai         gp, s5, 26
                  lbu          s4, -52(s9)
                  sw           t5, -10(s9)
                  lhu          s0, 38(s9)
                  lb           s5, -7(s9)
                  lbu          s10, -56(s9)
                  slti         s7, a1, 1456
                  lui          s1, 311595
                  or           s7, t2, s8
                  lb           sp, 28(s9)
                  sltiu        t2, s7, -656
                  sb           s11, 25(s9)
                  sra          tp, a1, a5
                  sll          s10, a2, t0
                  lh           a5, 34(s9)
                  sh           a0, -12(s9)
                  auipc        s8, 56391
                  lbu          ra, -42(s9)
                  sh           gp, -64(s9)
                  lb           a0, 33(s9)
                  lbu          sp, 41(s9)
                  srli         s6, a7, 4
                  add          ra, s4, s10
                  or           t3, a0, a6
                  srai         t0, a1, 18
                  lb           t3, -34(s9) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1992 #start riscv_load_store_rand_instr_stream_2
                  srl          s9, a2, s6
                  sra          s2, gp, ra
                  lbu          t2, -9(sp)
                  lhu          s4, -58(sp)
                  sw           a4, -48(sp)
                  sb           sp, -37(sp)
                  lb           t2, -48(sp)
                  lb           t4, -40(sp)
                  srl          s5, t3, a1
                  sltu         s2, zero, a7
                  sh           s5, 2(sp)
                  sb           t1, -13(sp)
                  sra          s8, t1, a0
                  lbu          tp, -22(sp)
                  srai         t3, t4, 6
                  sb           s11, 7(sp)
                  slti         s1, sp, -1587
                  srai         a5, s9, 11
                  xori         tp, s1, -1491
                  lb           s5, -50(sp)
                  srai         s8, a6, 23
                  sub          s9, a0, t5
                  lhu          t3, -50(sp)
                  sb           t4, -57(sp)
                  lh           a6, -18(sp)
                  slli         s10, zero, 30
                  lbu          ra, -59(sp)
                  sltiu        t6, s5, 880
                  sb           a3, -61(sp)
                  sw           ra, -16(sp)
                  auipc        t1, 547964
                  add          gp, gp, a7
                  lbu          s2, -33(sp)
                  sb           t1, -21(sp)
                  or           s1, s1, s0
                  lui          s2, 959787
                  sw           s3, 0(sp)
                  lbu          a3, -63(sp) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+1801 #start riscv_load_store_rand_instr_stream_4
                  srli         a3, sp, 25
                  sh           s3, 119(tp)
                  sb           gp, 169(tp)
                  lb           gp, 173(tp)
                  slli         t4, s1, 7
                  addi         a1, s1, 795
                  lbu          gp, 36(tp)
                  sub          s6, s8, a1
                  add          t2, s9, t4
                  sltu         s9, t4, s0
                  sh           t5, -185(tp)
                  srli         a5, s7, 4
                  sh           t3, -199(tp)
                  srai         s10, t2, 17
                  sb           a7, 124(tp)
                  ori          s1, s0, 488
                  srl          s8, t4, s0
                  lb           s1, -30(tp)
                  sw           t6, -177(tp)
                  xori         s7, s1, 1728
                  slt          gp, t4, s8
                  sb           a2, 2(tp)
                  addi         s4, s6, 462
                  sb           s1, -212(tp)
                  addi         a5, s3, 1533
                  sltu         a1, s8, s8
                  sb           tp, -34(tp)
                  lb           gp, -113(tp)
                  srli         t2, s9, 2
                  lbu          s6, 105(tp)
                  lbu          s6, 97(tp)
                  add          s9, s8, a5
                  lh           s0, 99(tp)
                  and          gp, s11, t4
                  slt          s2, t0, s6
                  sh           a3, 27(tp)
                  xori         s2, s7, -1048
                  lbu          s2, -170(tp)
                  sb           t0, -56(tp)
                  sb           a2, -12(tp)
                  add          s10, s5, s0
                  lbu          a7, 90(tp)
                  lbu          t0, -201(tp)
                  srl          s6, t6, a1
                  sub          s1, t2, t1
                  slli         t4, s2, 13
                  lbu          t2, 108(tp)
                  lbu          s6, 50(tp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+25 #start riscv_load_store_rand_instr_stream_6
                  sll          t3, t4, s11
                  xori         s2, s5, 975
                  lhu          s8, 47(sp)
                  slti         s7, t2, 633
                  lb           a7, 34(sp)
                  slli         s5, a4, 30
                  lhu          zero, -5(sp)
                  slti         a5, a1, 2044
                  sub          s1, t4, a5
                  xori         a3, t5, 1365
                  auipc        s9, 507524
                  lbu          t3, 12(sp)
                  lbu          s10, 46(sp)
                  sb           tp, 22(sp)
                  lhu          zero, -1(sp)
                  and          a5, gp, s2
                  lb           a3, -12(sp)
                  lbu          s10, 17(sp)
                  lb           t0, 26(sp)
                  sb           s10, 57(sp)
                  lhu          a5, 57(sp)
                  sh           s1, 31(sp)
                  lb           t0, 8(sp)
                  sb           sp, -2(sp)
                  sh           t0, 59(sp)
                  lbu          t2, 54(sp)
                  sltu         s10, t6, s7
                  lbu          t1, 22(sp)
                  sh           s11, 37(sp)
                  srli         a2, s3, 10
                  srai         t0, tp, 16
                  lhu          t1, 45(sp)
                  sb           t5, 26(sp) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+1618 #start riscv_load_store_rand_instr_stream_10
                  lb           t3, -1(ra)
                  lw           gp, -14(ra)
                  lbu          a2, -12(ra)
                  lhu          t6, -8(ra)
                  addi         s10, s9, 541
                  srl          t2, s11, gp
                  lb           t4, -7(ra)
                  lhu          t0, -2(ra)
                  lhu          s4, -4(ra)
                  lb           a3, -3(ra)
                  sw           a2, 2(ra)
                  slti         a2, s0, 1342
                  sltu         s0, s9, a0
                  lui          s7, 706252
                  ori          a2, s11, 134
                  sh           s6, -8(ra)
                  lhu          t4, 6(ra)
                  slti         s5, s0, 1144
                  srl          t2, s4, t2
                  auipc        s9, 268035
                  lb           t1, 13(ra)
                  lb           t3, -3(ra)
                  sh           s1, 12(ra)
                  and          s9, tp, a6
                  sltiu        a0, s7, 1590
                  sh           t6, 2(ra)
                  sb           s6, -1(ra)
                  lhu          s10, -6(ra)
                  lb           sp, 0(ra)
                  auipc        s5, 959956
                  lb           t0, 12(ra)
                  lb           s2, -16(ra)
                  ori          a6, a6, 1052
                  lb           zero, -13(ra)
                  sw           ra, 14(ra)
                  sw           s6, 2(ra)
                  lbu          gp, 6(ra)
                  sub          s4, tp, s4
                  sh           t2, 0(ra)
                  sb           a7, -9(ra) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+287 #start riscv_load_store_rand_instr_stream_3
                  sh           a3, -245(sp)
                  lbu          s5, 1332(sp)
                  lbu          zero, 607(sp)
                  andi         t5, a1, 1990
                  sb           a2, 472(sp)
                  sra          tp, gp, s8
                  lb           a0, 32(sp)
                  sra          s4, t6, a7
                  sb           s1, 1029(sp)
                  lbu          s10, 131(sp)
                  xori         t3, t0, 1571
                  or           a7, ra, a0
                  slli         t0, s11, 29
                  sll          s4, s1, a6
                  sb           t0, 165(sp)
                  sb           s3, 1619(sp)
                  lb           tp, 1598(sp)
                  lbu          a7, 1563(sp)
                  sltu         s2, s2, t6
                  lb           t0, 193(sp)
                  addi         t2, a7, -38
                  sw           zero, 97(sp)
                  slti         a5, gp, 574
                  lbu          gp, 591(sp)
                  lbu          gp, 766(sp)
                  lb           t4, 416(sp)
                  sltu         a2, t6, t3
                  addi         t4, t5, 1496
                  auipc        a1, 399988
                  add          s10, t1, ra
                  sb           a4, 1580(sp)
                  sub          gp, t4, s0
                  xor          tp, t1, s4
                  lb           t0, 178(sp)
                  lbu          s6, 23(sp)
                  lb           s4, 942(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t4, region_1+1413 #start riscv_load_store_rand_instr_stream_7
                  lb           t5, -154(t4)
                  sltiu        ra, t5, 1780
                  sltu         s10, s0, t3
                  lb           a7, 254(t4)
                  nop
                  srli         s6, sp, 18
                  lui          s10, 59828
                  add          s5, a2, s4
                  sh           t0, 229(t4)
                  auipc        sp, 895460
                  sh           t1, -1235(t4)
                  sra          a7, ra, a2
                  sra          a6, s9, ra
                  sub          gp, s9, s7
                  slli         s0, a0, 13
                  sltiu        ra, ra, -167
                  addi         s6, s3, 929
                  and          s10, a4, zero
                  slt          s1, s1, t3
                  and          s5, s7, s4
                  lbu          a1, -414(t4)
                  lbu          t6, -706(t4)
                  sb           t5, -126(t4)
                  andi         a5, a6, -7
                  sra          a2, a5, tp
                  ori          s6, s10, -1872
                  lb           gp, -1024(t4)
                  and          a6, s10, t3
                  add          a2, a6, a1
                  addi         zero, sp, -643
                  lb           a7, 536(t4)
                  and          a2, gp, s0
                  addi         a1, t2, -1638
                  sra          t1, s3, s1
                  add          s0, a6, a7
                  sra          zero, a3, a7
                  sltiu        s4, a3, 1409
                  lb           s2, 528(t4)
                  sltiu        zero, gp, -1908
                  addi         s2, a3, -28
                  lbu          s4, 476(t4) #end riscv_load_store_rand_instr_stream_7
                  la           s7, region_0+1185 #start riscv_load_store_rand_instr_stream_9
                  sb           sp, 33(s7)
                  lh           t1, 173(s7)
                  add          a1, s6, zero
                  sub          s4, t6, s3
                  xori         s1, t2, -786
                  sb           t6, 96(s7)
                  slt          a5, zero, a0
                  slli         a2, ra, 19
                  andi         a2, zero, -1085
                  auipc        sp, 287579
                  sltu         a0, t3, s10
                  lb           t3, 83(s7)
                  addi         t4, a2, 1306
                  srai         a2, a1, 19
                  lb           a6, 186(s7)
                  xor          s10, a5, tp
                  sb           a5, 91(s7)
                  sb           a1, -136(s7)
                  ori          t2, s10, -1036
                  auipc        sp, 671520
                  lb           t2, -36(s7)
                  sb           s8, 242(s7)
                  lb           t6, 150(s7)
                  lbu          s4, -168(s7)
                  srli         s5, s7, 4
                  slti         a7, gp, 1788
                  lb           gp, -244(s7)
                  slli         s8, zero, 31
                  lw           gp, 87(s7)
                  and          sp, s1, zero
                  lh           t4, 145(s7)
                  sb           s0, -171(s7)
                  sb           s2, 2(s7)
                  sh           s2, -223(s7)
                  sh           s0, -151(s7)
                  andi         a7, s1, -1250
                  add          s8, s7, a3
                  sb           t3, 136(s7)
                  sh           s4, -11(s7)
                  nop
                  auipc        sp, 814638
                  sb           a1, 28(s7)
                  sh           zero, -11(s7)
                  lh           s1, -189(s7)
                  srli         ra, s9, 1
                  sb           ra, -246(s7)
                  auipc        a7, 540003
                  auipc        t1, 818840
                  sh           a7, 185(s7) #end riscv_load_store_rand_instr_stream_9
                  ori          t3, t6, -1045
                  beq          a7, sp, 15f
                  ori          ra, t6, 657
                  and          s2, tp, a3
                  bgeu         t1, gp, 17f
                  bge          a7, a1, 19f
                  addi         s7, t3, -791
                  sltu         zero, a7, t0
                  srl          zero, s1, ra
                  sltiu        s9, s0, 1326
                  sra          t5, s9, gp
                  srai         t0, a3, 29
                  bltu         t4, tp, 20f
                  ori          t3, a7, 1435
                  sra          a7, a2, a0
15:               nop
                  and          t6, s5, ra
17:               and          a1, t2, s7
                  auipc        t5, 86836
19:               slt          a0, s11, t6
20:               srli         a5, s11, 31
                  lui          s4, 963584
                  srai         s0, s7, 4
                  sll          t4, ra, s1
                  bne          t1, t6, 25f
25:               srai         s6, a6, 15
                  ori          a0, s1, 234
                  sltu         s5, a2, a4
                  srl          s2, a0, s11
                  ori          a6, s5, -1678
                  andi         s10, sp, 1646
                  sra          t6, t6, a4
                  sltu         s9, s6, s2
                  and          a6, s7, a2
                  srli         gp, s8, 12
                  ori          s0, gp, 292
                  or           t5, a6, s1
                  sll          s2, s3, t4
                  sra          s6, t2, sp
                  bltu         t0, a0, 52f
                  xori         s10, a7, 355
                  sra          s8, tp, s10
                  or           t0, a4, a7
                  nop
                  and          zero, s9, s5
                  lui          s9, 721918
                  ori          a6, s11, 997
                  slti         t0, s5, 1874
                  blt          a3, s10, 56f
                  add          a6, a2, sp
                  addi         a6, a5, 1811
                  auipc        a7, 377656
52:               auipc        a7, 36524
                  srl          s4, a3, s5
                  andi         t1, a4, 1025
                  slti         t1, a5, -391
56:               slli         a3, t4, 26
                  srai         sp, t6, 24
                  bltu         a7, zero, 76f
                  srl          s0, t6, a3
                  beq          t3, a1, 62f
                  srai         s1, s6, 2
62:               slli         s5, t4, 12
                  bltu         tp, s1, 77f
                  slli         s10, s6, 30
                  blt          s2, gp, 74f
                  addi         s7, gp, -123
                  slli         t1, a7, 17
                  blt          tp, a2, 76f
                  ori          s2, t6, -132
                  lui          t4, 221378
                  andi         s5, tp, -790
                  sll          s5, gp, s6
                  beq          s10, s8, 88f
74:               srl          t6, zero, a1
                  xor          gp, a7, t5
76:               bltu         t1, s10, 78f
77:               or           ra, gp, a7
78:               addi         s1, s4, 390
                  sltu         s0, s2, ra
                  sltu         t0, s9, a3
                  auipc        s8, 1028767
                  beq          s1, s9, 86f
                  xor          zero, s9, s11
                  xor          t1, s8, s4
                  beq          a7, t5, 104f
86:               srli         a2, s5, 21
                  or           s0, t4, s5
88:               ori          t1, zero, -764
                  lui          s0, 300597
                  ori          a3, s1, 345
                  nop
                  addi         a5, s8, 587
                  slli         tp, s0, 14
                  srli         s2, a0, 11
                  sra          s1, s5, ra
                  addi         a5, t6, -1101
                  add          s0, a2, gp
                  bne          a6, t5, 105f
                  blt          ra, a6, 109f
                  addi         s5, a1, 16
                  nop
                  xor          a7, a4, s5
                  slti         s9, t5, 1641
104:              xori         s2, a3, 765
105:              sltu         s8, s1, a1
                  ori          t4, a6, -882
                  addi         sp, s7, -446
                  sub          ra, s3, s3
109:              lui          s4, 112855
                  srai         a6, s10, 23
                  lui          a1, 1048052
                  sra          t3, s11, s0
                  nop
                  andi         t3, s6, 1076
                  or           s1, s3, zero
                  slti         s9, s0, -259
                  slti         t3, sp, 177
                  lui          t3, 669688
                  xor          s9, tp, s7
                  sll          t0, t5, a2
                  ori          gp, a3, -137
                  sub          s5, s3, zero
                  srl          zero, s3, s5
                  srl          sp, s10, s6
                  auipc        sp, 396930
                  bne          s7, t1, 145f
                  addi         a2, t5, -1892
                  auipc        tp, 113521
                  sltiu        a3, s9, 172
                  auipc        s9, 112478
                  sub          gp, s7, t5
                  bgeu         tp, a4, 144f
                  bne          s3, a7, 151f
                  sll          s4, a3, a2
                  srl          a1, ra, s4
                  slli         a1, s1, 28
                  beq          s2, s4, 155f
                  sll          t3, s0, a7
                  nop
                  slti         s2, s3, -81
                  beq          a1, tp, 142f
142:              bgeu         a3, a7, 157f
                  ori          zero, s4, -1042
144:              bge          a0, s2, 161f
145:              auipc        s6, 189218
                  sltu         t1, t6, a0
                  sra          a3, s11, gp
                  beq          t3, s0, 157f
                  addi         s6, s5, 762
                  sll          t6, a1, a2
151:              sra          s0, s4, zero
                  andi         a6, ra, -1863
                  sub          a1, a7, a3
                  lui          a7, 154910
155:              slti         tp, s2, -566
                  srai         s0, s0, 0
157:              blt          t0, s1, 170f
                  bltu         tp, a7, 174f
                  bne          s5, s3, 160f
160:              xor          a0, a1, a6
161:              sra          t1, s2, s2
                  addi         t1, a4, -1231
                  blt          a2, s5, 169f
                  bne          a0, s11, 177f
                  bge          s0, s9, 183f
                  addi         s1, s7, 441
                  xor          a6, t0, t0
                  and          s6, a2, a6
169:              srl          a1, t3, s6
170:              slli         s1, s5, 17
                  nop
                  bltu         tp, ra, 186f
                  and          gp, t4, s0
174:              add          t6, s2, a6
                  srl          s9, sp, a0
                  srl          a5, s9, sp
177:              srai         a0, zero, 25
                  srl          ra, t0, a7
                  bgeu         s4, s8, 198f
                  andi         s2, sp, 525
                  ori          ra, s6, -211
                  bge          t1, s4, 190f
183:              sra          t4, t0, sp
                  bltu         zero, a1, 198f
                  bgeu         sp, t6, 199f
186:              srli         s0, s4, 3
                  beq          s1, t3, 205f
                  bgeu         t6, zero, 198f
                  add          tp, s4, s7
190:              andi         s4, t2, -1345
                  or           sp, a4, zero
                  or           a6, s4, zero
                  sll          a6, s1, t6
                  xori         t2, zero, -1310
                  ori          tp, a7, -662
                  sltiu        a1, a1, 1220
                  beq          tp, s0, 204f
198:              nop
199:              andi         s8, ra, 1335
                  srli         a1, s10, 28
                  srli         a0, s0, 8
                  xor          s0, a0, a2
                  bge          a1, sp, 204f
204:              slli         s9, s3, 1
205:              lui          s5, 721131
                  lui          zero, 146257
                  bge          tp, a0, 208f
208:              sltu         s0, s0, s3
                  sra          s2, s1, gp
                  slt          t0, ra, a0
                  and          a7, t5, s3
                  bge          s6, t4, 224f
                  sltiu        a0, t6, -182
                  srl          s1, s0, tp
                  bne          t3, s10, 228f
                  bne          a7, s2, 222f
                  beq          t3, s11, 232f
                  sra          s1, s11, gp
                  bne          s9, s1, 227f
                  or           t4, sp, a5
                  lui          t0, 705069
222:              add          s1, s2, s4
                  addi         s4, t0, 860
224:              xori         t5, ra, 1125
                  xor          s1, s10, s8
                  bgeu         a1, t2, 241f
227:              beq          s7, t0, 229f
228:              ori          s2, s2, -1918
229:              beq          s1, s2, 246f
                  sltu         a1, s10, sp
                  sltiu        s9, a3, 1435
232:              srl          a3, t3, s1
                  bgeu         t4, s9, 241f
                  sltu         a3, zero, sp
                  xor          zero, a2, t1
                  nop
                  blt          s7, t2, 239f
                  add          tp, s11, s6
239:              sll          t1, t2, s7
                  beq          ra, s3, 249f
241:              or           a1, a1, s10
                  auipc        t1, 408902
                  or           t2, a6, a2
                  auipc        s10, 232832
                  srli         a0, gp, 29
246:              addi         s2, t1, 337
                  ori          a2, s11, -490
                  lui          gp, 58260
249:              slli         s6, t4, 29
                  bgeu         s1, t2, 251f
251:              slli         a5, a6, 9
                  slti         t0, s2, 1138
                  slt          ra, s3, s7
                  bge          a7, tp, 258f
                  auipc        s9, 78479
                  auipc        a5, 736492
                  slti         sp, t4, 1994
258:              srli         a3, s0, 21
                  blt          gp, s10, 268f
                  addi         a1, gp, 53
                  bne          tp, s3, 280f
                  beq          t6, s2, 278f
                  sltu         s1, a6, t1
                  slli         s10, t6, 10
                  slli         tp, s5, 10
                  add          a7, s8, a4
                  slti         sp, s4, 1546
268:              srl          t1, gp, a0
                  slti         ra, s11, 892
                  xor          a5, gp, s1
                  bne          t1, s6, 284f
                  add          s5, a0, a7
                  slli         s6, zero, 0
                  nop
                  srli         ra, s5, 12
                  sltiu        t3, s4, -328
                  xori         s0, t4, -1933
278:              ori          s5, t6, 1557
                  xori         s5, t0, 10
280:              ori          zero, s5, -1829
                  blt          a2, s11, 299f
                  srai         t6, a3, 10
                  xor          a5, t5, t0
284:              bne          a7, a4, 300f
                  ori          t1, ra, -1689
                  xor          a2, a7, s11
                  lui          a2, 1029633
                  blt          t4, ra, 300f
                  xori         t1, t4, 1507
                  srl          t6, a6, s2
                  nop
                  and          a2, t5, tp
                  beq          a3, t4, 295f
                  sltiu        s1, a1, 1010
295:              beq          s8, s10, 303f
                  bne          s10, s3, 300f
                  auipc        a2, 884673
                  bne          t5, a7, 317f
299:              xori         a2, s8, 1991
300:              andi         a3, a0, -1592
                  sltiu        a0, a6, 1992
                  bge          s1, s2, 316f
303:              xori         a5, t3, -1766
                  sub          s9, a6, tp
                  nop
                  bltu         s0, s6, 315f
                  bne          s11, a4, 326f
                  srl          s10, s6, ra
                  add          s9, a0, s0
                  beq          a6, sp, 318f
                  addi         sp, t0, -6
                  nop
                  beq          t3, s9, 314f
314:              sra          a2, s9, t1
315:              xor          sp, t5, t1
316:              beq          s1, s4, 334f
317:              andi         t0, a7, -23
318:              sll          s8, t4, s10
                  bltu         s6, ra, 334f
                  blt          s8, s3, 330f
                  bne          t4, t6, 323f
                  beq          tp, s7, 328f
323:              srli         a7, a7, 17
                  xori         a0, a3, -686
                  and          tp, s2, s11
326:              bgeu         a0, a6, 327f
327:              bge          t3, s3, 342f
328:              srli         a1, t4, 30
                  sub          s2, a5, s7
330:              beq          t0, t5, 344f
                  bne          s8, a2, 345f
                  srai         ra, ra, 1
                  sra          t4, t5, tp
334:              bne          gp, a3, 347f
                  lui          t4, 1022366
                  andi         a2, a1, 695
                  addi         a0, tp, 462
                  slt          s8, s5, s3
                  ori          a6, zero, -491
                  auipc        a3, 648836
                  slt          t3, a6, a4
342:              andi         tp, t1, -1534
                  sra          s9, a6, a1
344:              xori         t4, t3, 1511
345:              xori         s7, ra, 838
                  bltu         a4, s9, 359f
347:              auipc        s5, 709984
                  slti         t3, gp, 849
                  nop
                  sra          t2, ra, s3
                  sltiu        t0, s3, -69
                  sltiu        zero, t1, 1464
                  and          s9, s0, a1
                  bltu         s9, a6, 361f
                  bge          t4, t4, 356f
356:              srai         t2, t3, 20
                  nop
                  slt          t0, s0, s1
359:              bge          s1, a0, 376f
                  lui          s1, 426874
361:              slli         t3, s6, 16
                  addi         t2, a5, -286
                  addi         ra, s4, -657
                  sltu         s0, t6, s10
                  add          s10, ra, t5
                  blt          t3, t3, 384f
                  sll          gp, t1, t1
                  sltiu        a7, t4, -994
                  andi         tp, a6, 1212
                  sra          tp, s11, s6
                  beq          a2, a1, 379f
                  xor          s5, zero, t1
                  nop
                  xor          ra, a0, t2
                  blt          a7, s3, 393f
376:              nop
                  auipc        s0, 1007464
                  srl          s8, a1, s0
379:              addi         gp, s3, -1933
                  bge          s6, tp, 389f
                  sub          a6, s6, s6
                  sltiu        s7, s7, 1707
                  bge          t0, a1, 396f
384:              xori         s4, a3, -131
                  add          a7, a5, s4
                  bltu         t0, s1, 399f
                  srl          ra, s11, s4
                  and          a6, a5, a3
389:              bltu         s1, s8, 401f
                  bge          s9, s10, 392f
                  slti         t5, a7, -2048
392:              bgeu         a6, sp, 400f
393:              slti         t3, a6, -230
                  andi         ra, s2, -1121
                  srai         sp, t5, 17
396:              srli         zero, gp, 26
                  sub          zero, s2, a3
                  ori          s9, s9, -462
399:              and          sp, s4, a1
400:              bltu         tp, a3, 413f
401:              nop
                  addi         s2, t3, -1621
                  bgeu         s3, s2, 411f
                  sub          tp, t3, s5
                  addi         s8, s3, 1767
                  or           a5, a6, ra
                  beq          s5, a2, 426f
                  and          a3, s1, s7
                  and          zero, s1, zero
                  nop
411:              addi         a7, s1, 442
                  sltu         s0, s11, t5
413:              ori          s9, a1, -848
                  sltu         ra, s1, a2
                  bne          t6, t4, 428f
                  ori          t6, t0, 315
                  sub          t0, s2, a7
                  sra          ra, s5, s4
                  auipc        s9, 578511
                  slli         t3, t3, 19
                  xor          s8, a6, zero
                  sub          a3, s3, ra
                  lui          a5, 843638
                  nop
                  bltu         s4, t2, 433f
426:              ori          a2, tp, 1768
                  bne          t5, s10, 436f
428:              slt          t6, t5, a4
                  and          t5, s5, t5
                  add          s4, t2, t5
                  bltu         a4, a2, 447f
                  srai         a0, s0, 23
433:              slli         t1, t3, 0
                  bgeu         s4, a3, 448f
                  and          a6, s10, a7
436:              sra          s2, t2, sp
                  or           s10, a6, t0
                  srai         a7, tp, 13
                  bltu         sp, a5, 453f
                  xor          t2, a6, s9
                  slli         t1, t0, 24
                  srl          t1, s2, s2
                  slli         a1, gp, 23
                  slli         a0, t0, 22
                  lui          s9, 102497
                  ori          s6, t3, -390
447:              beq          s8, a7, 454f
448:              xori         t0, t2, -1522
                  bne          zero, a6, 450f
450:              or           t4, t6, a6
                  srl          zero, gp, a4
                  sltiu        a6, a0, 148
453:              nop
454:              blt          s9, s4, 464f
                  xori         a5, s4, 363
                  bltu         s0, a6, 465f
                  auipc        ra, 190234
                  bgeu         s11, s2, 462f
                  bne          s9, a7, 474f
                  srl          s1, s2, zero
                  slli         s5, t0, 28
462:              ori          s6, s7, 866
                  sltu         a6, s8, s8
464:              sub          s6, s3, s2
465:              blt          tp, s4, 484f
                  sll          a6, a1, a6
                  srl          a6, s9, s1
                  sltu         s6, a4, t1
                  srli         a3, t2, 1
                  ori          t4, t5, 1235
                  and          t2, a3, s7
                  or           s0, t3, tp
                  beq          t3, ra, 491f
474:              xor          a7, sp, s1
                  slti         s5, ra, -537
                  or           t0, s8, zero
                  la           sp, region_1+964 #start riscv_load_store_rand_instr_stream_0
                  sltu         t1, s0, t3
                  sb           t2, -23(sp)
                  addi         zero, s2, 1058
                  lb           zero, -119(sp)
                  lb           t0, 47(sp)
                  lb           tp, -161(sp)
                  sb           s3, -173(sp)
                  lb           a0, -227(sp)
                  lh           s5, -202(sp)
                  lbu          t4, -142(sp)
                  sltu         a6, a6, a0
                  ori          s1, s1, 2032
                  sb           a0, 137(sp)
                  lhu          ra, 214(sp)
                  sb           t1, 213(sp)
                  slti         s9, s3, 604
                  sh           s9, -186(sp)
                  sltiu        s4, t4, 340
                  lbu          t2, 250(sp)
                  sb           a4, -13(sp)
                  slli         a2, s11, 27
                  sltu         s5, s1, a2
                  lw           t3, 68(sp)
                  sll          tp, s7, s2
                  sb           ra, -57(sp)
                  sh           t0, 70(sp)
                  lb           t4, -75(sp)
                  lb           s2, -205(sp)
                  slti         gp, t5, 1079
                  sh           s0, 50(sp)
                  lbu          t2, -151(sp)
                  lh           s2, 122(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         s10, s8, 1999
                  xori         a3, a5, 1749
                  sra          a1, t6, tp
                  andi         t5, t6, 509
                  lui          s6, 319026
                  sll          a3, s1, s10
                  sll          ra, t4, s11
484:              slt          s7, t2, a5
                  bge          a3, a7, 500f
                  slli         s5, sp, 4
                  sub          ra, s9, t6
                  sll          t6, t4, s2
                  bge          s10, a7, 503f
                  bltu         a0, sp, 492f
491:              bgeu         a7, s11, 509f
492:              addi         s4, ra, 541
                  slt          s0, s4, a0
                  bge          ra, s3, 500f
                  or           a6, a2, s2
                  beq          t4, t1, 514f
                  xor          s5, tp, zero
                  auipc        s5, 1019387
                  auipc        t1, 831685
500:              bltu         a1, a6, 517f
                  bgeu         a7, a3, 502f
502:              lui          s10, 455292
503:              add          t1, s1, s8
                  sltu         t2, t4, s4
                  ori          t2, sp, 623
                  bgeu         a3, t1, 507f
507:              and          s1, a2, s6
                  xori         t3, s5, 152
509:              slli         s4, tp, 16
                  sll          t1, t1, zero
                  auipc        a3, 473991
                  bgeu         s6, s1, 520f
                  slli         a2, a7, 4
514:              blt          s8, s4, 521f
                  bgeu         a3, s0, 524f
                  add          zero, t6, a3
517:              sll          t4, a7, s0
                  blt          t5, a5, 524f
                  srai         s10, tp, 0
520:              xori         t0, a0, 1786
521:              ori          ra, t6, -1377
                  bltu         s5, s6, 541f
                  addi         a0, ra, -1172
524:              slti         s8, a2, 1429
                  blt          a0, t0, 537f
                  sltiu        t6, a3, -334
                  nop
                  and          s9, t1, a5
                  slt          s1, s7, ra
                  bgeu         s5, s3, 540f
                  xori         s0, tp, -1926
                  and          s4, ra, a7
                  addi         s1, a5, -1914
                  or           a7, s10, s4
                  sra          gp, a4, t3
                  slt          s8, s0, a2
537:              srl          t1, a1, t3
                  ori          tp, sp, 915
                  bne          a3, sp, 548f
540:              xor          s2, a6, a7
541:              sra          ra, t5, s6
                  blt          s11, a4, 544f
                  auipc        zero, 871070
544:              xori         t4, a7, -1188
                  slli         t5, s0, 15
                  srl          a2, t1, a2
                  andi         t0, s7, -1560
548:              bge          s9, tp, 564f
                  bne          s7, s3, 550f
550:              bgeu         gp, a2, 568f
                  nop
                  sltu         a3, s6, s4
                  auipc        zero, 1036047
                  sub          t3, sp, t6
                  add          s5, s3, s6
                  xori         s1, a1, -1385
                  sub          s6, t3, s9
                  auipc        s6, 919697
                  bge          gp, s10, 573f
                  srl          a0, a3, s5
                  andi         t4, s6, -1767
                  bltu         s8, t5, 580f
                  bgeu         a7, s11, 577f
564:              slli         s7, s11, 20
                  bne          a1, zero, 569f
                  srl          ra, s2, ra
                  or           s2, s5, t0
568:              addi         sp, s11, -1312
569:              sltu         t0, a0, a4
                  andi         t5, a1, 1301
                  sltiu        a1, a1, 1131
                  srai         s0, s9, 25
573:              xori         ra, ra, -2006
                  sra          s7, s9, s5
                  sll          s5, s7, t2
                  srl          s5, t1, t4
577:              bne          gp, t1, 590f
                  sub          t0, s0, t4
                  xori         sp, t2, 415
580:              sltu         tp, s8, a1
                  srai         a3, a2, 21
                  lui          s5, 911849
                  nop
                  xor          s5, a6, s8
                  srai         a3, a3, 15
                  blt          t4, t2, 603f
                  slt          t3, s5, a6
                  srli         s1, a4, 23
                  or           t1, a3, tp
590:              addi         tp, s8, 1986
                  addi         ra, gp, 769
                  or           a2, gp, a4
                  sll          s4, s5, a7
                  srli         a2, s9, 11
                  sll          s7, t6, t3
                  sll          s9, t6, t4
                  lui          s2, 243850
                  sltu         ra, gp, s4
                  bge          t3, sp, 614f
                  auipc        t2, 93609
                  beq          a0, s11, 609f
                  auipc        t1, 291743
603:              and          t5, t4, a3
                  xor          s10, a2, s1
                  nop
                  andi         t1, s7, -40
                  or           s1, gp, t2
                  blt          t2, a4, 622f
609:              sll          t6, a5, ra
                  andi         a7, s5, 1142
                  addi         t4, a1, -176
                  bltu         a1, s0, 627f
                  addi         t6, t4, -1393
614:              sll          s1, s11, s11
                  srli         t2, s1, 17
                  bne          t1, tp, 635f
                  xori         a6, t6, -975
                  slti         s1, s3, 915
                  bge          s0, s5, 620f
620:              or           s6, s8, s2
                  bne          s9, s0, 634f
622:              sub          t1, s10, a4
                  srl          s9, a7, t1
                  bltu         a7, a5, 625f
625:              sll          t4, t5, a4
                  bltu         a1, t1, 628f
627:              slli         s4, gp, 28
628:              bltu         s9, t2, 636f
                  addi         t0, s1, 119
                  bgeu         a4, s11, 643f
                  srli         s4, sp, 29
                  ori          s0, t2, 861
                  andi         t0, s9, 1939
634:              sub          s8, s7, s1
635:              bge          s1, t5, 653f
636:              srli         t6, t4, 22
                  auipc        a5, 966565
                  srli         a7, s11, 27
                  lui          a2, 596261
                  lui          a3, 640506
                  blt          t2, s2, 642f
642:              and          a5, s7, a2
643:              blt          a2, s8, 650f
                  sra          s10, zero, a5
                  sltiu        s9, t1, 1648
                  bgeu         a2, s3, 659f
                  add          t1, ra, t4
                  bgeu         tp, t3, 663f
                  sub          tp, gp, s9
650:              ori          tp, s1, -755
                  srli         a6, t0, 20
                  xori         zero, sp, -1772
653:              andi         s8, s4, 849
                  slt          s7, a4, t5
                  bne          t2, t4, 665f
                  andi         s0, s4, 1255
                  lui          a1, 743212
                  auipc        s8, 549659
659:              srli         gp, t3, 13
                  sll          a1, s5, a6
                  nop
                  ori          s1, s6, 399
663:              and          s6, s10, s5
                  lui          t3, 846506
665:              addi         a1, t2, 1419
                  sra          s4, s10, s3
                  slti         s9, a4, -1741
                  sltu         sp, a3, gp
                  lui          t6, 236620
                  or           s4, a1, a4
                  addi         zero, a0, -1172
                  or           a1, s7, s8
                  add          a0, s1, s6
                  bgeu         s1, ra, 693f
                  lui          t0, 545848
                  bge          s9, a3, 689f
                  srai         s6, s4, 15
                  add          t4, s0, a3
                  bltu         ra, s4, 693f
                  or           a1, t0, gp
                  and          t5, zero, s2
                  auipc        t6, 596957
                  slli         t5, s6, 7
                  andi         s5, t1, -916
                  slli         zero, s2, 19
                  sra          s1, s10, t1
                  slli         zero, a7, 14
                  slt          s10, a7, zero
689:              srl          s1, t4, t6
                  sltu         ra, a3, s6
                  nop
                  andi         a7, a5, 486
693:              sub          s2, a1, s1
                  sltiu        s4, s0, -1150
                  bge          a6, s2, 709f
                  addi         gp, t1, -562
                  bge          s9, a5, 715f
                  slti         t6, a0, -46
                  bgeu         s10, t1, 715f
                  or           t6, s6, t1
                  slti         s0, t6, -790
                  beq          s3, s2, 710f
                  xori         s4, s5, -1125
                  sltiu        s8, s5, 1374
                  addi         a6, s7, 1614
                  srli         sp, t0, 13
                  xor          s6, s2, t0
                  bgeu         t1, a7, 726f
709:              bge          t4, t4, 722f
710:              slt          t4, s6, s0
                  bne          gp, s5, 726f
                  sltiu        t6, sp, -3
                  srl          ra, a7, s11
                  sub          t1, t5, s7
715:              and          s7, s4, t2
                  bltu         s5, s11, 722f
                  sltu         s0, a0, s11
                  add          s1, s10, s9
                  lui          a2, 517746
                  lui          s9, 219051
                  slti         t2, sp, -1920
722:              xori         s4, t3, -1666
                  add          a7, t1, zero
                  bgeu         tp, sp, 732f
                  add          t2, s0, s2
726:              addi         t2, s3, 1743
                  andi         a0, s4, -1792
                  srli         t3, t4, 11
                  slt          zero, t4, tp
                  sltu         a2, s0, t6
                  slti         t1, a7, 1415
732:              sltiu        t0, a0, 1350
                  addi         a5, a2, 411
                  sub          t4, s2, gp
                  slt          s1, t4, t2
                  bgeu         a3, s7, 755f
                  sltu         t3, a3, a5
                  srai         a7, s7, 20
                  blt          a7, zero, 740f
740:              srl          s4, s4, a1
                  slli         a5, s0, 27
                  slt          s1, s8, s4
                  bne          a1, s7, 744f
744:              bltu         t4, a0, 752f
                  slli         a0, a3, 14
                  nop
                  and          t4, a5, a4
                  slt          a2, s9, a4
                  srli         s6, a7, 17
                  bne          s0, a1, 768f
                  bltu         gp, zero, 753f
752:              slti         t5, a2, -1975
753:              sltu         s0, a4, s10
                  bgeu         s8, t6, 763f
755:              bne          t1, zero, 769f
                  xor          a6, s8, t0
                  bge          t6, a4, 774f
                  beq          t6, s3, 767f
                  nop
                  nop
                  lui          s4, 520292
                  auipc        a5, 605230
763:              srli         s10, s4, 0
                  auipc        a1, 326415
                  blt          t4, t5, 777f
                  ori          a5, sp, 897
767:              auipc        s4, 88996
768:              addi         tp, a6, 569
769:              bltu         t6, s9, 773f
                  bltu         zero, s2, 772f
                  xori         t0, t4, 1277
772:              or           t2, s10, s1
773:              lui          a1, 786269
774:              slti         t4, s6, 438
                  or           a7, s0, s8
                  bgeu         s0, s10, 783f
777:              sltiu        s10, t5, 507
                  bne          tp, s10, 796f
                  nop
                  auipc        ra, 669545
                  slti         gp, a1, 1576
                  addi         t6, a6, 228
783:              sltu         s2, t2, s2
                  ori          t6, s3, -292
                  add          a1, t5, a7
                  slti         gp, t0, -1993
                  sra          sp, a7, s7
                  sltiu        sp, s8, -617
                  beq          t4, t0, 808f
                  srai         zero, zero, 7
                  bltu         a6, t1, 806f
                  sll          t3, s8, a4
                  add          a3, s4, a5
                  bgeu         t2, t6, 796f
                  slti         a7, ra, 3
796:              sub          ra, s4, t0
                  add          a0, sp, a1
                  xori         s10, t4, 645
                  bgeu         s6, s10, 800f
800:              slt          t5, a5, s5
                  slti         s1, a1, -1465
                  srl          t1, t4, gp
                  or           sp, tp, t5
                  beq          s4, tp, 822f
                  and          a6, s6, zero
806:              srai         a2, a7, 7
                  bgeu         s8, s6, 820f
808:              blt          a2, t1, 825f
                  bne          a6, a0, 822f
                  xor          s10, t6, s9
                  sub          tp, a4, s0
                  bne          s0, s9, 813f
813:              srai         a2, s7, 29
                  bltu         ra, s9, 827f
                  sltiu        t3, t1, 764
                  ori          s2, s8, 364
                  sub          a3, t0, s10
                  srl          s10, t1, t0
                  add          t3, t6, s2
820:              bltu         s11, t4, 839f
                  addi         t6, s4, -1509
822:              nop
                  nop
                  sra          zero, t0, t1
825:              srai         s9, a0, 21
                  srl          a5, t4, s4
827:              add          t3, zero, a7
                  sltiu        zero, s6, -454
                  ori          t3, a2, 587
                  andi         a7, a6, 1882
                  addi         s7, zero, -1259
                  add          s5, t3, a0
                  bge          t6, gp, 839f
                  auipc        t4, 640793
                  xori         s0, t5, -1630
                  srai         a0, s3, 20
                  addi         t1, t2, -570
                  sltu         a7, t2, s4
839:              bne          s8, t1, 853f
                  and          s2, a4, s9
                  sub          t5, s10, s8
                  bltu         a1, t1, 856f
                  slt          s8, tp, s0
                  slli         s4, s1, 26
                  auipc        s4, 441338
                  nop
                  bge          a5, tp, 862f
                  blt          a3, s1, 857f
                  srai         a3, a2, 24
                  srl          s6, t3, t6
                  blt          s5, a0, 867f
                  xor          t2, a7, t5
853:              slt          t0, s6, a7
                  slt          s0, a4, a6
                  lui          sp, 236238
856:              xor          s9, t6, s9
857:              sra          t4, t2, s0
                  lui          ra, 553744
                  and          ra, a6, sp
                  addi         sp, a1, -202
                  ori          a0, a1, -534
862:              and          t2, t3, a6
                  ori          t4, t3, -287
                  sltiu        t2, t3, 1603
                  sll          t6, a1, t6
                  ori          t0, a7, 475
867:              slt          a6, a5, s4
                  nop
                  bgeu         a7, s11, 871f
                  add          a7, t5, t5
871:              auipc        ra, 345324
                  nop
                  srli         a0, s9, 8
                  beq          t3, s8, 888f
                  and          s10, a3, s8
                  srai         t2, a7, 30
                  bne          t0, s5, 895f
                  ori          a1, t3, 446
                  sltu         s1, s8, t3
                  beq          t4, s8, 890f
                  sra          s5, t0, ra
                  addi         gp, s11, 1859
                  sltiu        a0, a0, -1849
                  ori          a3, s11, -256
                  bge          s1, gp, 893f
                  add          a5, t5, tp
                  bgeu         gp, ra, 891f
888:              andi         s10, t4, 1133
                  add          t2, t4, ra
890:              srli         s6, zero, 19
891:              sltu         s0, a2, s6
                  addi         a2, s10, 1146
893:              blt          sp, s5, 902f
                  add          s10, a2, t6
895:              srli         a2, s11, 29
                  nop
                  andi         gp, s9, -1241
                  blt          t0, s10, 910f
                  addi         a6, gp, -676
                  sra          t0, t4, a4
                  srli         a5, a4, 13
902:              add          t0, s5, s6
                  slli         a1, s3, 1
                  bge          ra, s5, 905f
905:              srl          a2, t0, a4
                  auipc        a0, 862121
                  sltu         gp, a4, a7
                  lui          s2, 37613
                  auipc        a1, 440153
910:              nop
                  slti         a2, sp, 803
                  sll          a6, s3, s4
                  srli         t3, a3, 9
                  add          t3, s0, s9
                  slt          ra, s10, zero
                  sltu         s4, zero, a7
                  slt          s6, t1, tp
                  bne          s3, a0, 926f
                  lui          s7, 308067
                  srai         s9, a1, 1
                  slt          t2, s7, t6
                  srli         t2, t2, 17
                  and          t0, a7, s5
                  and          a3, a4, s5
                  sltiu        s10, tp, 1305
926:              andi         t3, a5, -1941
                  bgeu         s8, t5, 935f
                  sub          a5, sp, ra
                  bgeu         s1, s10, 937f
                  slti         s10, s3, -1753
                  auipc        s2, 392245
                  beq          s3, a7, 949f
                  xori         s4, t4, 788
                  srli         a3, t0, 2
935:              addi         ra, gp, -534
                  bltu         t5, a5, 954f
937:              ori          ra, t2, -424
                  slt          a1, s3, s7
                  addi         a5, s3, 200
                  andi         a6, s7, -1011
                  sltiu        t5, zero, 1425
                  xor          a0, s1, tp
                  or           a5, s8, a0
                  bne          s10, s11, 948f
                  addi         sp, ra, -1711
                  lui          a3, 17527
                  beq          s4, t1, 961f
948:              slt          t3, a6, s8
949:              xor          zero, s1, a7
                  bge          a0, s5, 959f
                  slt          a5, t3, a3
                  blt          s2, s8, 966f
                  bgeu         a4, s7, 965f
954:              beq          ra, t6, 956f
                  slt          t5, t5, s7
956:              andi         ra, s3, -2034
                  slt          a1, s3, s10
                  sltu         s8, a5, t3
959:              srai         t0, s5, 10
                  auipc        t1, 58589
961:              bgeu         s8, s7, 979f
                  srl          a3, t2, s2
                  bge          tp, sp, 976f
                  bne          t3, s11, 978f
965:              slt          t1, t0, s8
966:              andi         a5, s3, -1883
                  slli         zero, a5, 3
                  and          t3, a0, a4
                  ori          t6, a2, -620
                  bltu         t6, s8, 971f
971:              sll          t5, s5, gp
                  sltiu        s1, s9, 653
                  beq          s3, a5, 989f
                  auipc        gp, 888989
                  sltu         s4, t0, s5
976:              sltiu        a3, a7, 92
                  auipc        t5, 70311
978:              add          zero, tp, s11
979:              blt          a4, s1, 992f
                  xori         s7, a2, 881
                  slli         t1, a5, 22
                  add          a5, s6, s5
                  auipc        s5, 559844
                  andi         t0, a0, 515
                  sltu         s10, s7, zero
                  nop
                  bge          s0, a7, 996f
                  bltu         zero, a6, 995f
989:              and          t6, a2, t3
                  slti         a0, a4, -1785
                  lui          s4, 685253
992:              auipc        t5, 650364
                  bge          s6, sp, 999f
                  slli         s5, s9, 19
995:              auipc        t3, 116190
996:              sll          a0, a2, s4
                  nop
                  bgeu         t4, gp, 1017f
999:              andi         t3, s10, 1509
                  srai         t4, s8, 23
                  sltu         s0, t2, s4
                  or           t4, t6, a3
                  addi         t2, t5, -64
                  sub          t1, s8, t3
                  lui          gp, 939177
                  andi         a6, t2, -1547
                  ori          a1, a6, -1707
                  lui          a3, 577042
                  bne          s5, t1, 1011f
                  ori          s1, sp, -1237
1011:             srai         zero, a0, 29
                  beq          sp, s9, 1030f
                  sltiu        a1, tp, -311
                  auipc        a6, 871660
                  sra          s7, t0, s0
                  sra          s2, a7, t1
1017:             bge          gp, s11, 1018f
1018:             sll          t1, sp, a6
                  addi         a3, t4, -1217
                  blt          a5, ra, 1021f
1021:             auipc        t5, 28999
                  srai         s9, s6, 25
                  and          s0, s10, s1
                  addi         a1, a7, -1267
                  beq          sp, a2, 1040f
                  xori         t5, a0, -296
                  andi         a1, t4, 1846
                  bgeu         t2, a5, 1047f
                  bgeu         a6, ra, 1037f
1030:             sub          t1, t2, s3
                  bne          s7, gp, 1044f
                  xori         s6, s7, -624
                  xori         gp, a4, 97
                  bgeu         s7, zero, 1049f
                  and          s6, s6, a2
                  bge          a7, t1, 1044f
1037:             addi         gp, t1, 894
                  nop
                  ori          a7, zero, -525
1040:             sltu         t5, s8, a3
                  slt          s9, sp, s11
                  and          t0, s8, sp
                  srli         s5, a4, 4
1044:             sub          t0, t5, s8
                  slt          s0, a3, a2
                  addi         t0, s5, 1982
1047:             andi         t4, s0, 1772
                  auipc        a1, 586064
1049:             slli         tp, a7, 18
                  xori         s2, s10, 1858
                  bne          s8, s7, 1061f
                  sll          s1, a7, s6
                  sltu         t6, a0, t2
                  slt          sp, t0, s9
                  slti         t5, a6, -1847
                  or           t6, s0, s2
                  blt          gp, a7, 1059f
                  addi         sp, t5, -238
1059:             andi         a1, s11, 838
                  sra          s5, s2, t4
1061:             sra          s0, a4, a7
                  bltu         s6, s7, 1070f
                  or           t5, t0, a3
                  xor          s1, a2, s7
                  sltiu        s9, a0, 1446
                  bltu         ra, s7, 1073f
                  sub          a7, a2, t2
                  slti         sp, s11, 541
                  nop
1070:             xori         s4, s0, -1707
                  nop
                  sra          a6, a2, ra
1073:             or           zero, a6, sp
                  lui          a7, 443559
                  bne          zero, t3, 1079f
                  auipc        s5, 710696
                  beq          s6, a7, 1091f
                  slti         s1, t0, -421
1079:             bltu         s6, a5, 1092f
                  blt          s10, tp, 1096f
                  blt          t6, s5, 1089f
                  or           a7, s6, ra
                  sll          t3, s11, zero
                  slt          t2, a7, ra
                  sra          t2, a7, t3
                  xor          s5, t4, s5
                  sub          gp, a7, s7
                  nop
1089:             bltu         s5, t1, 1106f
                  bne          a6, s9, 1108f
1091:             beq          a1, a2, 1092f
1092:             bltu         s2, s4, 1104f
                  andi         t4, gp, -576
                  auipc        a7, 505157
                  sub          a1, a3, s8
1096:             srl          s4, a7, a6
                  blt          a7, a2, 1115f
                  lui          a5, 855728
                  lui          t1, 499238
                  bltu         a4, s8, 1119f
                  sll          s10, t2, s0
                  slli         a5, t1, 0
                  srai         s10, ra, 13
1104:             blt          s11, sp, 1110f
                  addi         s1, t6, 1658
1106:             slt          t3, t6, gp
                  bgeu         t1, gp, 1120f
1108:             bltu         a3, sp, 1121f
                  bltu         t5, t4, 1127f
1110:             sra          s1, s9, t0
                  add          t6, gp, s0
                  lui          a1, 565333
                  add          s8, sp, a3
                  xor          t2, zero, sp
1115:             xor          gp, a1, sp
                  slt          gp, a5, a0
                  sltu         gp, a0, s11
                  add          a5, s8, sp
1119:             nop
1120:             sra          s5, s2, sp
1121:             sltiu        a3, a1, 774
                  srai         t4, s5, 27
                  sra          zero, gp, a6
                  add          a0, s3, s9
                  bltu         a0, s1, 1126f
1126:             blt          s2, t5, 1135f
1127:             auipc        a7, 544233
                  sltiu        s9, a5, 1088
                  srl          t4, a0, a1
                  slli         t2, s10, 13
                  lui          t1, 387433
                  add          s0, s7, a3
                  sra          tp, s7, t5
                  xori         a2, s9, -1981
1135:             slti         a0, sp, -1277
                  bgeu         a3, t4, 1145f
                  bgeu         s1, s1, 1139f
                  andi         s1, a4, -464
1139:             beq          a7, gp, 1153f
                  bne          s4, s4, 1154f
                  slli         a5, s11, 8
                  srai         tp, s9, 29
                  slti         s6, t0, -459
                  andi         sp, a4, -1571
1145:             slt          t3, sp, s7
                  slt          s1, s5, a7
                  nop
                  srli         s9, t6, 29
                  or           zero, t3, a2
                  or           a3, a3, t4
                  bltu         a2, zero, 1166f
                  sltiu        zero, s5, -891
1153:             srli         a6, a7, 25
1154:             and          tp, sp, a3
                  bge          t0, s6, 1170f
                  lui          s10, 542715
                  bltu         t4, s6, 1165f
                  ori          t6, s1, 1478
                  sltiu        a5, t1, -367
                  ori          s5, gp, 1438
                  xor          t0, t6, t0
                  bltu         s1, s10, 1163f
1163:             auipc        s6, 792554
                  slt          t2, ra, t1
1165:             or           s5, s3, t6
1166:             auipc        s8, 402828
                  slti         t2, s7, -1961
                  bltu         a2, t6, 1187f
                  srli         a1, s8, 18
1170:             or           s0, zero, s7
                  bgeu         s1, s0, 1181f
                  srai         t6, a1, 22
                  slti         s6, s8, 553
                  bgeu         t6, a4, 1181f
                  srli         ra, a3, 18
                  srli         s8, a0, 18
                  slli         a1, t6, 2
                  srl          s4, a2, tp
                  addi         a1, s11, 612
                  andi         a5, t0, -939
1181:             bgeu         t2, ra, 1182f
1182:             srl          s2, a4, s10
                  bge          t0, s3, 1202f
                  beq          a2, s2, 1192f
                  add          ra, a5, s8
                  sll          s7, s4, ra
1187:             xori         t4, gp, -1089
                  sltiu        t3, a2, 1482
                  addi         s1, t5, 1622
                  bne          a5, t3, 1206f
                  srli         zero, s6, 25
1192:             and          s6, a0, s0
                  or           ra, a5, s7
                  sll          a0, a0, t4
                  slti         a1, sp, -1889
                  srli         a2, a6, 8
                  sltu         s2, s11, t5
                  bge          s9, a2, 1211f
                  addi         tp, t3, 1344
                  auipc        s8, 874427
                  and          s9, s10, s8
1202:             slt          zero, t6, ra
                  nop
                  bgeu         s5, s1, 1206f
                  lui          t5, 1002170
1206:             xori         t3, s8, 930
                  srl          a6, t6, a5
                  slt          s2, s2, gp
                  blt          t1, t1, 1223f
                  auipc        t5, 1024710
1211:             bge          a6, t4, 1229f
                  sltiu        s9, t1, 1738
                  sll          s5, s5, ra
                  xor          a2, s2, s1
                  lui          t6, 710039
                  andi         a6, a4, -1220
                  srl          a2, ra, t6
                  beq          a6, a6, 1228f
                  slt          a6, t5, t6
                  srli         s4, s6, 20
                  and          s6, a5, s4
                  bne          sp, s6, 1224f
1223:             addi         t2, s2, 672
1224:             beq          a5, a7, 1237f
                  blt          ra, s11, 1240f
                  auipc        zero, 807579
                  blt          t4, s11, 1236f
1228:             srl          s1, s8, a7
1229:             srl          ra, s5, s5
                  bne          t6, s10, 1238f
                  andi         sp, s4, -1218
                  bne          s4, t1, 1236f
                  slti         t0, t1, -1815
                  nop
                  sltu         t1, t1, tp
1236:             sltu         a0, a4, t5
1237:             slli         a0, s1, 0
                  sltiu        a7, t0, 462
                  nop
                  sub          t2, a0, s6
                  srl          sp, a7, zero
                  andi         s6, t3, -606
                  ori          ra, a1, 766
                  andi         a0, s11, 996
                  lui          zero, 798252
                  sub          t6, s10, sp
sub_7_j12:        jal          s6, sub_8 #jump sub_7 -> sub_8
1238:             or           t2, t5, t5
                  ori          gp, a3, 485
1240:             sra          t0, gp, t4
                  slli         t4, zero, 17
                  sltu         s7, t1, s2
                  sra          a6, a6, s8
                  and          a0, tp, a1
                  lui          s9, 313420
                  sub          a7, t2, t6
                  bltu         t6, s7, 1255f
                  ori          t2, s1, -1596
                  srai         s4, t5, 4
                  slli         t4, s0, 25
                  bge          s11, t4, 1263f
                  or           s7, s3, s2
                  sltiu        t4, a1, -1924
                  auipc        s4, 524307
1255:             bge          t5, s0, 1261f
                  bge          s1, a3, 1274f
                  sltu         s6, t4, s5
                  bgeu         zero, s11, 1277f
                  auipc        t0, 565099
                  srli         s10, t1, 27
1261:             beq          ra, s7, 1278f
                  lui          s8, 9613
1263:             srai         t6, zero, 30
                  sltiu        a6, t4, 1748
                  sltiu        s9, s1, -92
                  xori         a3, t5, -1191
                  slti         s2, a0, -1378
                  slti         s6, t2, 1001
                  srli         t6, t1, 27
                  nop
                  srai         t2, a0, 23
                  xor          a1, s5, t1
                  nop
1274:             srl          a7, t6, gp
                  srli         s10, s4, 22
                  sltiu        s8, s10, -765
1277:             bltu         a6, a3, 1292f
1278:             srli         s8, t4, 21
                  sra          s0, gp, s7
                  blt          a2, t2, 1298f
                  add          t5, ra, s7
                  beq          zero, t4, 1283f
1283:             srai         s1, ra, 13
                  lui          s7, 766532
                  blt          tp, s2, 1294f
                  srli         ra, t4, 17
                  srl          a6, ra, a5
                  addi         s4, s4, -1769
                  nop
                  sll          s7, s8, t0
                  bge          ra, t5, 1305f
1292:             sub          sp, s11, s2
                  srl          a0, a1, s4
1294:             bge          s11, a3, 1308f
                  lui          t6, 196827
                  sll          t3, s8, a1
                  bgeu         t1, ra, 1310f
1298:             nop
                  sub          a2, s8, ra
                  xor          s9, a0, a2
                  sltu         t3, a5, a7
                  ori          t5, a3, 125
                  srli         tp, t1, 7
                  slt          s7, a3, a2
1305:             sltu         s7, a1, a2
                  ori          zero, s10, -36
                  bltu         a6, s1, 1308f
1308:             srl          s9, s2, sp
                  beq          t3, t6, 1318f
1310:             sra          t1, a2, s11
                  sltiu        t5, s10, 883
                  bne          t5, s8, 1330f
                  bgeu         s8, a3, 1326f
                  srai         s10, s3, 30
                  add          a2, tp, sp
                  bne          s9, s4, 1335f
                  or           t3, a7, t4
1318:             lui          s5, 52910
                  beq          a4, sp, 1338f
                  sltu         t5, tp, a7
                  add          a3, s3, s11
                  ori          zero, gp, -295
                  bne          s10, s0, 1338f
                  slli         ra, ra, 11
                  sra          s1, ra, sp
1326:             sltu         t0, s3, s3
                  auipc        t4, 7756
                  sll          t4, a6, s3
                  beq          a0, t6, 1337f
1330:             sll          s0, t5, s3
                  bgeu         t4, t0, 1335f
                  sltu         s1, t5, s6
                  ori          s0, sp, 1973
                  bne          a3, s11, 1335f
1335:             srli         s2, ra, 26
                  and          s6, s3, gp
1337:             xori         s10, a0, -22
1338:             and          t1, ra, t3
                  bge          a1, s10, 1340f
1340:             slt          s1, s1, ra
                  xor          s1, a4, gp
                  xor          t5, t3, a2
                  bltu         sp, zero, 1361f
                  bltu         t3, t4, 1358f
                  auipc        a2, 845533
                  sltu         t5, s10, s3
                  srl          t6, a0, sp
                  beq          t5, a0, 1349f
1349:             add          ra, a7, s11
                  sltiu        t4, s4, -546
                  srli         s4, a4, 22
                  beq          s3, gp, 1364f
                  xor          s1, a5, s4
                  beq          s4, t1, 1364f
                  addi         s1, a3, 1771
                  srl          sp, s8, t4
                  addi         s4, t4, -1894
1358:             srl          t0, sp, a5
                  or           ra, s6, gp
                  bge          t3, s9, 1369f
1361:             or           a5, s10, a0
                  sub          a2, s8, s8
                  sltu         tp, t1, s0
1364:             slli         s7, t2, 5
                  nop
                  ori          t1, s4, -135
                  and          s9, s5, t2
                  slli         t2, s3, 7
1369:             sll          tp, a4, s8
                  srl          s4, ra, s0
                  ori          t2, s8, 1428
                  srl          t2, zero, s1
                  srl          a7, a2, a1
                  or           s5, s2, t3
                  xori         s9, s11, -277
                  sll          s10, s0, a7
                  bne          s4, s4, 1393f
                  bltu         s4, sp, 1385f
                  srli         a0, a4, 20
                  nop
                  sra          a5, a4, gp
                  addi         a0, s5, -281
                  sra          s1, s5, ra
                  srl          a7, t4, s0
1385:             blt          zero, t0, 1398f
                  sub          s4, s8, ra
                  srli         tp, s1, 19
                  nop
                  sll          s8, s0, s6
                  sra          t6, a1, t1
                  xori         a6, s8, -6
                  slt          t6, tp, a1
1393:             sll          t0, gp, s3
                  sll          a3, t5, s8
                  lui          t1, 859453
                  sltiu        sp, t3, 1627
                  sltiu        a6, tp, 412
1398:             ori          t3, s1, -646
                  nop
                  and          s9, s4, sp
                  bge          t2, s2, 1419f
                  auipc        zero, 199823
                  add          a5, s3, s10
                  xor          s9, a1, a3
                  and          s9, s3, sp
                  add          t1, s11, a7
                  bge          t3, s5, 1409f
                  srli         ra, tp, 14
1409:             bne          s3, tp, 1415f
                  beq          zero, s6, 1427f
                  srai         a7, s7, 0
                  ori          s1, a3, -1524
                  bltu         tp, s3, 1415f
                  srai         t4, t3, 26
1415:             sltu         s7, t6, s2
                  srli         t4, s3, 18
                  and          s9, s8, a5
                  sra          a0, s11, s9
1419:             beq          t2, s0, 1434f
                  srai         t0, s0, 9
                  sltu         tp, a1, s4
                  xori         s6, a4, -1732
                  andi         s7, sp, 1139
                  or           a7, a2, a6
                  bltu         a7, gp, 1439f
                  beq          s3, s1, 1434f
1427:             xori         a7, a1, -591
                  srli         s1, a7, 12
                  ori          a7, sp, 403
                  bgeu         s9, t5, 1444f
                  andi         t4, sp, 1122
                  xor          t4, s10, tp
                  bne          t2, t5, 1441f
1434:             nop
                  xor          a5, s2, a0
                  blt          a1, a2, 1449f
                  sra          s2, t1, ra
                  slli         s7, a7, 4
1439:             slt          t5, t5, s6
                  srai         s9, zero, 4
1441:             slt          gp, s8, a5
                  xori         a7, tp, -627
                  srl          t6, t5, s3
1444:             andi         t5, t5, 1833
                  srai         s10, s3, 0
                  bne          s9, zero, 1452f
                  beq          a5, t1, 1452f
                  srl          a0, s0, s2
1449:             andi         s7, s6, -631
                  slti         a1, t4, 1609
                  slli         ra, s5, 1
1452:             andi         a1, t0, 1818
                  xor          s9, a7, t1
                  slli         t1, t2, 8
                  lw           s6, 4(a4)
                  addi         a4, a4, 60
                  sll          a0, a6, a6
1949:             addi x28, x22, 1
1949:             jalr x28, x28, 0
sub_8:            srl          s7, a4, t0
                  addi         a4, a4, -12
                  xori         t0, s6, 1988
                  addi         sp, s5, 1061
                  srli         zero, sp, 22
                  srl          s5, t4, s1
                  slli         zero, s2, 26
                  sw           s6, 4(a4)
                  slli         s9, a3, 4
                  and          s1, ra, ra
                  srli         sp, tp, 31
                  xori         a5, tp, -1204
                  bne          s5, s7, sub_8_j13 #branch to jump instr
                  and          s6, a1, s5
                  sub          s5, a5, s10
                  srai         a1, zero, 23
                  srai         a0, t4, 5
                  nop
                  srai         tp, t2, 28
sub_8_j13:        jal          s6, sub_10 #jump sub_8 -> sub_10
                  la           s4, sub_9
                  nop
                  xor          a2, t3, a2
                  addi         zero, a7, 26
                  addi         s4, s4, -486
                  srai         t6, a4, 25
                  addi         ra, t0, 409
                  sub          t2, s6, ra
                  xor          t4, a2, a6
                  lui          gp, 363932
sub_8_j14:        jalr         s6, s4, 486 #jump sub_8 -> sub_9
                  sra          s9, s2, gp
                  nop
                  slti         s2, s10, 785
                  nop
                  bltu         t3, t2, 10f
                  lui          s2, 882517
                  sll          s10, s1, s11
                  add          t2, s10, s3
                  or           a1, s8, t0
                  add          a6, a4, s7
10:               blt          s11, ra, 12f
                  bne          t6, s7, 13f
12:               srai         zero, a5, 27
13:               bne          s11, s9, 17f
                  blt          s9, tp, 26f
                  xor          s7, a3, sp
                  and          s10, s6, a6
17:               sub          s1, a4, t6
                  nop
                  slt          s0, t6, s2
                  or           s4, s9, tp
                  and          s8, s0, t0
                  sub          a2, a0, a0
                  sll          t2, s7, tp
                  srl          a0, s11, t5
                  lui          a6, 296213
26:               srli         t4, s10, 5
                  srli         t1, a2, 3
                  sra          s7, s4, s4
                  ori          s0, t2, 806
                  sll          s0, a0, s7
                  or           zero, t4, s0
                  ori          t4, t2, 1600
                  sub          s8, a2, s2
                  lui          s10, 815001
                  blt          t1, ra, 36f
36:               bne          s7, s3, 45f
                  xor          a3, s9, gp
                  and          sp, a1, gp
                  slli         a7, s2, 23
                  srai         gp, t4, 30
                  sll          t2, s9, a5
                  sll          t3, t1, a3
                  xor          s5, a2, s3
                  sltiu        s4, t0, -1932
45:               srli         t6, t0, 7
                  lw           s6, 4(a4)
                  sra          a6, t5, s11
                  addi         a4, a4, 12
                  slti         sp, t4, 2046
                  andi         sp, s7, 1664
                  auipc        a6, 374992
                  slli         a5, ra, 2
                  srli         a6, sp, 4
                  nop
86:               addi x28, x22, 0
86:               jalr x28, x28, 0
sub_2:            sra          gp, a1, s8
                  blt          t4, t5, sub_2_stack_p
                  srl          a7, s3, s5
                  xor          sp, t2, t2
                  xor          ra, a6, zero
                  srai         t3, tp, 26
                  add          a6, tp, s7
                  xor          s7, a6, t3
                  srai         t3, s11, 6
sub_2_stack_p:    addi         a4, a4, -16
                  sw           s6, 4(a4)
                  and          s5, s0, a5
                  la           sp, region_1+741 #start riscv_load_store_rand_instr_stream_1
                  lbu          s9, -71(sp)
                  slt          s5, t5, t6
                  sb           a3, -22(sp)
                  srli         a6, s7, 24
                  lbu          t5, 220(sp)
                  sw           s4, 191(sp)
                  lw           t4, -253(sp)
                  or           tp, zero, s6
                  lh           s6, 237(sp)
                  sra          tp, t5, t1
                  slti         t4, gp, -1989
                  add          s6, a3, t1
                  sb           s11, -37(sp)
                  xori         s7, t4, 818
                  lb           s8, 30(sp)
                  lbu          s4, -186(sp)
                  and          a7, ra, tp
                  lbu          s8, 37(sp)
                  sb           a2, -122(sp)
                  srli         t4, s9, 27
                  srli         t3, s5, 27
                  sra          s10, t6, zero
                  sub          t3, t3, s5
                  sub          s1, t5, s2
                  slt          a0, sp, a5
                  slti         t5, tp, -1007
                  lbu          s8, 208(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+953 #start riscv_load_store_rand_instr_stream_2
                  sltiu        a6, a6, 1234
                  slt          a7, ra, a2
                  nop
                  lb           tp, 30(sp)
                  lui          t5, 597532
                  addi         t4, a1, -1931
                  ori          t3, s9, -1683
                  sra          ra, s7, sp
                  sltiu        s9, t1, -723
                  sh           gp, -43(sp)
                  slli         t1, a3, 13
                  lui          gp, 1042160
                  lb           t2, 4(sp)
                  lbu          s4, -4(sp)
                  addi         s8, s11, -1551
                  auipc        t0, 72071
                  lh           a5, -31(sp)
                  add          a1, s11, s4
                  sb           s3, 8(sp)
                  xor          s1, a4, s0
                  lh           a6, -21(sp)
                  sh           a4, 13(sp)
                  sb           s8, -26(sp)
                  lhu          t5, 57(sp)
                  sltiu        ra, a5, 720
                  sb           a6, 44(sp)
                  nop
                  slli         t3, t5, 24
                  sb           s9, 64(sp)
                  sb           s11, -22(sp)
                  auipc        t6, 898938
                  or           t5, a3, s1
                  lbu          gp, 9(sp)
                  add          a1, s2, s9
                  and          zero, a7, t2
                  sb           t0, 58(sp)
                  add          a6, s0, s9
                  lb           t5, -33(sp) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_1+141 #start riscv_load_store_rand_instr_stream_0
                  sb           a3, 44(gp)
                  lb           s9, 862(gp)
                  or           a0, a7, s2
                  sb           a5, 1436(gp)
                  lh           s8, 799(gp)
                  sb           s11, 98(gp)
                  or           t6, a4, s6
                  lbu          s0, 1295(gp)
                  and          s9, ra, a5
                  and          a3, s9, s2
                  srl          t1, t1, gp
                  andi         s10, t6, 107
                  lbu          s4, 348(gp)
                  slti         t0, t2, -1771
                  sltiu        a2, t2, -2003
                  sub          s1, a1, s5
                  nop
                  lb           t6, 831(gp)
                  sltiu        s9, s5, 937
                  sb           s6, 1126(gp)
                  srl          s10, s10, s1
                  lb           zero, 1047(gp)
                  sll          s9, tp, s3
                  and          s7, a1, s11
                  and          t1, s1, s9
                  sh           s5, 987(gp)
                  sb           a2, 738(gp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1166 #start riscv_load_store_rand_instr_stream_4
                  sub          gp, tp, s1
                  lbu          zero, -7(sp)
                  xori         tp, s10, -928
                  ori          s1, s10, 249
                  sltu         s9, s1, sp
                  sltiu        t2, s8, 743
                  sw           t2, -6(sp)
                  xor          s1, t2, a0
                  lb           zero, 11(sp)
                  sb           s0, 0(sp)
                  srai         a3, s2, 31
                  sb           sp, -2(sp)
                  lbu          tp, -2(sp)
                  andi         gp, s2, 1916
                  srli         a7, a3, 17
                  and          t0, s3, s9
                  and          s6, s9, s2
                  srai         s5, s1, 21
                  lbu          s10, -12(sp)
                  ori          a1, a1, 1982
                  sb           t0, 8(sp)
                  sltu         ra, a7, t4
                  sh           s9, 8(sp)
                  sb           s8, -3(sp)
                  andi         s1, a5, 317
                  slli         s10, s5, 18
                  addi         a1, t2, 869
                  add          gp, a3, a6
                  lb           s1, -9(sp)
                  lhu          a3, 0(sp)
                  lhu          a2, 12(sp)
                  xori         t1, s11, -32
                  ori          a0, tp, 1379
                  lhu          s5, -4(sp)
                  addi         s6, a3, 1329
                  lb           s6, 13(sp)
                  and          t3, sp, s0
                  sll          a1, a0, a1
                  srli         s4, a6, 15
                  auipc        zero, 40874
                  lbu          gp, 8(sp)
                  sb           t5, 1(sp)
                  srai         s6, a4, 9
                  ori          s10, gp, 1248
                  xor          a5, s1, a1
                  sh           ra, 10(sp)
                  sb           tp, -5(sp) #end riscv_load_store_rand_instr_stream_4
                  add          a3, s5, t3
                  slti         a6, a1, -1935
                  srl          s10, a7, a6
                  lui          s10, 774955
                  srai         zero, t5, 30
                  sltiu        a7, s4, 1488
                  slt          a6, t6, s2
                  lui          t2, 101539
                  xori         tp, t6, -27
                  slli         s6, t5, 0
                  xor          a2, t4, s6
                  andi         s5, a5, -1772
                  srli         t0, tp, 0
                  srl          a6, t4, a1
                  add          s2, s1, a0
                  xor          s2, t4, s5
                  sub          t1, s2, a6
                  slli         gp, t4, 11
                  srl          s2, t2, a2
                  or           a3, a0, s3
                  andi         tp, zero, -92
                  srli         t5, t5, 9
                  slti         a2, a5, 1017
                  slt          zero, tp, s4
                  auipc        a0, 865842
                  add          s1, s3, gp
                  or           s9, s9, a6
                  xor          t5, s4, t3
                  andi         s2, sp, -292
                  srai         tp, sp, 30
                  slt          s2, s5, s1
                  bgeu         s3, tp, 42f
                  srli         a1, tp, 4
                  add          s10, s4, s7
                  srli         s0, t2, 0
                  and          s4, s11, s3
                  add          a1, s2, s11
                  bge          s5, t5, 44f
                  sll          a5, s7, tp
                  srli         a5, a3, 11
                  blt          t3, t3, 52f
                  sltu         t5, s8, gp
42:               auipc        tp, 685780
                  sra          t0, a4, s11
44:               bgeu         a6, ra, 48f
                  srli         t1, s3, 31
                  xori         s5, t6, 274
                  ori          t1, s8, -1921
48:               bne          s7, t0, 68f
                  or           s8, gp, s11
                  bne          t1, s2, 64f
                  sra          s8, a5, s3
52:               srli         tp, a2, 25
                  andi         tp, s2, -307
                  and          s10, t3, s0
                  srli         t6, t2, 3
                  srli         a7, t4, 29
                  slt          zero, sp, sp
                  and          t5, sp, a5
                  add          t3, s2, t2
                  beq          s0, s10, 67f
                  slti         zero, a7, 295
                  srl          s8, s6, a5
                  bgeu         s5, s1, 79f
64:               or           a1, ra, gp
                  sltu         gp, a5, t2
                  add          t1, t6, s1
67:               beq          t5, a0, 76f
68:               xor          t3, s9, s6
                  bge          s6, s10, 85f
                  xori         t4, zero, 1462
                  and          t1, t4, t2
                  slti         s1, s0, -1878
                  sll          s10, s2, s10
                  srli         gp, s10, 10
                  slt          gp, t5, a1
76:               srli         t1, a4, 7
                  beq          a2, ra, 87f
                  xor          t3, s7, t0
79:               addi         t1, s7, 225
                  slti         t5, s11, -907
                  and          a3, s10, gp
                  addi         s10, a2, 1115
                  srli         t3, s0, 6
                  auipc        s2, 511812
85:               slt          s2, a2, zero
                  andi         zero, s2, 1399
87:               srai         s1, gp, 27
                  srl          s9, t1, s8
                  lui          a1, 864981
                  lui          s0, 283595
                  srl          s5, s6, gp
                  bltu         t3, t6, 94f
                  slt          s0, a4, a2
94:               andi         s4, s9, 694
                  bge          a2, t4, 103f
                  or           s1, t6, s2
                  srai         s8, a7, 29
                  beq          t4, a3, 99f
99:               srl          zero, s1, s9
                  blt          s1, sp, 115f
                  bltu         s2, zero, 107f
                  blt          s1, s4, 120f
103:              sub          t2, a4, s0
                  and          t5, t6, s11
                  ori          t3, s11, 560
                  sltu         s7, t3, s2
107:              slli         a5, gp, 24
                  add          zero, s3, s5
                  add          s9, t2, s9
                  slli         t3, t6, 2
                  xori         a0, s6, 77
                  sra          s8, s5, a5
                  sll          s0, s3, s5
                  srl          s2, t5, a4
115:              slt          a6, a4, s1
                  sltu         s4, tp, a2
                  srli         a3, s1, 21
                  sltiu        s6, t1, -208
                  or           ra, s0, zero
120:              xori         t3, gp, 1627
                  xor          tp, t4, ra
                  add          s1, s7, zero
                  slt          s8, s5, t0
                  slti         t6, zero, 1262
                  sll          a6, t1, s1
                  auipc        s6, 494368
                  srl          a1, s10, s2
                  srai         s10, tp, 21
                  bge          s2, t2, 145f
                  addi         s10, a0, 15
                  bne          s9, s7, 133f
                  sll          a1, t3, s0
133:              ori          s8, t3, -127
                  add          t1, a5, t2
                  sltu         t5, s5, t6
                  and          a1, a1, t6
                  sll          t5, s9, a2
                  bge          t5, a4, 155f
                  sltu         s8, t6, s0
                  or           s10, t2, s5
                  srli         t0, s1, 0
                  srl          a2, a4, s10
                  blt          t4, a7, 145f
                  slli         a7, s2, 27
145:              srli         tp, t4, 0
                  blt          zero, gp, 166f
                  slli         s6, sp, 26
                  sltiu        s1, t6, -1431
                  slti         a2, a6, 1484
                  auipc        s5, 501483
                  slti         t6, a0, -37
                  slli         t2, s11, 7
                  srli         a1, a2, 8
                  slti         s6, a0, -1842
155:              xori         t3, s0, 789
                  nop
                  ori          t5, s10, -922
                  addi         a2, t2, 1347
                  srl          a5, tp, t6
                  srli         gp, t2, 30
                  lui          s5, 921179
                  nop
                  slti         a3, t6, -1748
                  addi         s5, a0, 1324
                  srl          a7, s1, gp
166:              bne          s6, s5, 169f
                  lui          a7, 674796
                  sll          a7, ra, s9
169:              bltu         zero, sp, 180f
                  srai         a6, s9, 22
                  addi         s6, a5, 181
                  auipc        gp, 561467
                  xor          t3, a4, t6
                  ori          s2, s0, 1624
                  addi         a3, a0, -505
                  nop
                  and          t5, t6, s5
                  sltiu        t4, s10, 1228
                  nop
180:              andi         s1, t1, 1898
                  sll          a1, gp, t4
                  add          a1, s3, s11
                  nop
                  sltu         s0, zero, t4
                  bne          s0, zero, 204f
                  xor          s8, s5, t6
                  slti         t5, t3, 520
                  lui          s8, 33298
                  srai         a2, a1, 7
                  xor          zero, s0, s8
                  bge          sp, t5, 209f
                  slli         a6, s7, 28
                  srai         a7, t3, 8
                  sub          t6, s3, s8
                  auipc        s6, 871011
                  bgeu         a2, a2, 216f
                  addi         t5, s10, 356
                  srli         s8, a6, 3
                  xori         tp, s9, 762
                  sltu         a6, t1, t3
                  bgeu         s11, t1, 203f
                  srl          t2, a7, t3
203:              and          s8, t4, gp
204:              auipc        s8, 307952
                  slti         s1, s8, 719
                  sltu         s5, t1, a3
                  addi         s0, t3, 1027
                  slli         s4, tp, 17
209:              sltiu        s9, a7, -207
                  bgeu         gp, a0, 223f
                  xor          s0, t2, s1
                  beq          s11, t5, 220f
                  srli         zero, t1, 19
                  slli         a7, a6, 26
                  srl          s4, s7, s5
216:              auipc        sp, 612375
                  xori         t5, s4, -950
                  sltiu        t0, t4, 1100
                  bne          ra, t4, 239f
220:              sub          s8, ra, s4
                  srai         s7, s2, 7
                  bltu         s3, a6, 224f
223:              sltu         a7, a4, s7
224:              srai         tp, a1, 21
                  sltiu        s1, ra, -881
                  bge          s7, t2, 235f
                  bgeu         s5, a6, 233f
                  srli         gp, a2, 10
                  sltiu        a0, a0, -919
                  and          t0, a3, ra
                  bge          a0, s5, 249f
                  lui          a2, 612941
233:              blt          t6, s5, 251f
                  xor          s2, a0, a4
235:              bltu         s1, a3, 237f
                  beq          s3, sp, 252f
237:              and          s4, s3, t0
                  srli         s7, a2, 23
239:              beq          a3, t6, 258f
                  bne          t3, t6, 248f
                  nop
                  or           a2, s2, a0
                  bltu         t5, t2, 254f
                  andi         sp, s4, -1543
                  nop
                  slt          s4, s7, sp
                  bgeu         t4, t1, 249f
                  ori          s5, a1, 121
                  sll          s0, sp, a2
                  srl          gp, s11, t1
                  bgeu         s4, s9, sub_2_j5 #branch to jump instr
                  srli         gp, s4, 26
                  sltiu        tp, ra, 1112
                  slli         s10, a0, 28
                  lui          t2, 1020976
                  sra          t4, s1, zero
                  srai         s9, a4, 22
sub_2_j5:         jal          s6, sub_4 #jump sub_2 -> sub_4
248:              addi         a0, s3, -357
249:              srli         a6, s11, 20
                  slti         a6, tp, -168
251:              sltu         ra, s6, a0
252:              sra          a7, a3, t0
                  srai         s7, s11, 31
254:              sra          t4, a5, s3
                  slli         s1, a6, 8
                  srai         s1, gp, 15
                  xor          s4, t4, s9
258:              srai         a6, t6, 8
                  auipc        t6, 54775
                  andi         a1, a6, -1041
                  bltu         s3, t1, 262f
262:              bne          a4, zero, 273f
                  addi         a1, a2, -360
                  sltu         s0, s10, a0
                  sub          gp, s7, s11
                  srli         a5, t6, 16
                  sub          a0, t1, sp
                  or           s10, a1, s1
                  blt          tp, s10, 285f
                  bltu         t2, t6, 285f
                  sll          a7, gp, zero
                  bne          t6, s2, 292f
273:              sra          t5, t2, ra
                  auipc        s7, 922365
                  addi         s7, sp, 240
                  sltu         s2, zero, t4
                  sll          s1, s1, t6
                  addi         t0, s2, 1427
                  sltiu        t5, ra, -200
                  slli         s8, s4, 23
                  srli         a1, ra, 25
                  bgeu         gp, s7, 302f
                  srai         t2, zero, 6
                  auipc        t0, 677124
285:              sra          a5, t4, t2
                  andi         s10, tp, 953
                  xori         t6, s11, 1118
                  sll          a7, s10, s3
                  nop
                  bltu         a1, tp, 298f
                  sltu         s6, gp, s5
292:              nop
                  xori         s10, sp, 450
                  bgeu         s7, t3, 301f
                  and          t2, a5, s4
                  lui          s1, 700005
                  srl          a5, a4, t2
298:              or           a5, s4, t3
                  sra          s2, s11, s8
                  bne          sp, zero, 303f
301:              bgeu         a4, a4, 317f
302:              lui          s1, 735700
303:              srli         ra, t0, 4
                  sub          s1, sp, s9
                  xori         s7, s6, -227
                  add          a1, t4, a1
                  sltiu        s4, a2, 1747
                  auipc        s1, 757945
                  auipc        s7, 714499
                  sltu         t3, t3, t2
                  srli         a6, s9, 19
                  and          ra, ra, a1
                  auipc        t6, 469893
                  bgeu         a5, tp, 327f
                  sub          s4, s3, s1
                  sltu         zero, ra, s6
317:              beq          zero, t2, 324f
                  slli         s1, s10, 3
                  sltiu        t6, t4, 965
                  xori         a3, a7, 1591
                  beq          sp, s10, 331f
                  xori         a7, s3, -1242
                  sltiu        t4, ra, 1026
324:              sll          t1, t4, s10
                  xori         s0, a5, -2030
                  xori         s0, a0, -222
327:              and          a7, s10, s9
                  sra          a6, s6, a2
                  xori         t2, s8, 631
                  blt          s2, s10, 342f
331:              or           gp, s6, s10
                  srai         ra, s11, 17
                  ori          t1, a2, -1161
                  sll          a0, s9, t4
                  slli         a5, s11, 4
                  bltu         a5, s7, 338f
                  sub          t1, t1, zero
338:              sll          t5, a2, t6
                  sub          ra, t2, s5
                  beq          t1, sp, 354f
                  auipc        t0, 677239
342:              srai         t3, a6, 6
                  addi         a2, ra, 1132
                  lui          t3, 994153
                  lui          a2, 251576
                  xor          a7, s6, sp
                  addi         a5, a7, -1040
                  bge          a6, s9, 365f
                  sltiu        s2, t5, 1094
                  ori          s7, s8, 233
                  bne          a4, s4, 355f
                  sub          s10, s0, a4
                  srli         t6, gp, 20
354:              auipc        sp, 869620
355:              sltu         a3, s11, a0
                  addi         ra, t5, 1659
                  srli         a7, t6, 2
                  beq          s4, s4, 359f
359:              bgeu         s7, s0, 366f
                  sltiu        s8, a6, -411
                  lui          t5, 182067
                  add          t5, s1, s6
                  add          t0, t1, s8
                  xor          s0, s6, gp
365:              sub          s0, t0, t5
366:              xor          gp, a3, gp
                  bltu         a4, a1, 375f
                  beq          a0, a5, 388f
                  ori          zero, gp, 1651
                  bgeu         a0, s7, 376f
                  lui          zero, 465480
                  nop
                  xor          t3, s5, t6
                  andi         t0, s8, -231
375:              slt          t3, tp, s2
376:              srl          a3, s8, t1
                  sltu         t0, s3, t4
                  blt          a1, a6, 385f
                  add          t0, a6, a6
                  lui          s10, 415709
                  sltu         t3, t4, s7
                  blt          s4, t0, 384f
                  srli         t4, s11, 1
384:              bltu         s2, t2, 395f
385:              ori          s9, s10, 139
                  sll          ra, t2, s2
                  andi         a2, gp, -1164
388:              srl          s4, s7, t6
                  sll          s1, t2, t6
                  add          s7, s7, tp
                  bge          s9, s5, 400f
                  xor          sp, a7, t5
                  srli         a6, t5, 21
                  sll          t0, s8, s0
395:              bne          t4, s10, 397f
                  slli         gp, s2, 18
397:              sub          s9, s6, s7
                  and          t6, a5, a4
                  beq          t5, zero, 409f
400:              xor          s7, a7, gp
                  slt          ra, gp, s7
                  or           s8, s2, t6
                  xori         s0, zero, 63
                  slt          t4, sp, s7
                  bltu         t1, t0, 407f
                  lui          gp, 550541
407:              sll          s1, t6, a6
                  blt          t0, s1, 426f
409:              slli         s7, t5, 5
                  beq          s4, t6, 426f
                  add          a5, t2, t1
                  slli         s1, a6, 1
                  slti         s10, s11, -314
                  xor          s9, s3, t0
                  add          a1, s1, s3
                  slt          t6, a2, tp
                  or           t2, t3, s3
                  srl          s2, t1, t3
                  add          s1, a3, s7
                  addi         a1, a6, -1036
                  srli         s0, ra, 1
                  andi         s9, s6, 1793
                  slt          tp, t2, gp
                  bge          t3, s7, 426f
                  and          a1, t2, gp
426:              add          t4, s6, a6
                  bgeu         sp, t5, 445f
                  bgeu         s8, s9, 444f
                  bltu         t3, s4, 441f
                  nop
                  sll          a3, s6, zero
                  blt          t0, a0, 452f
                  sra          zero, a0, a6
                  blt          t3, sp, 445f
                  beq          s0, s7, 448f
                  sltiu        s8, tp, 1923
                  slli         s7, s10, 14
                  addi         tp, sp, -1884
                  bgeu         a6, zero, 454f
                  bne          s11, t5, 444f
441:              srl          a6, a6, a6
                  auipc        tp, 109769
                  srai         a6, s0, 30
444:              addi         t4, t0, -1169
445:              ori          t6, t4, 1845
                  sra          s6, s8, a0
                  and          s6, a3, a2
448:              bltu         s8, t2, 467f
                  sll          a6, s0, s3
                  blt          tp, a7, 466f
                  xor          s7, t0, a7
452:              add          t0, zero, s11
                  bne          tp, s11, 456f
454:              nop
                  srai         gp, a6, 9
456:              auipc        a0, 153945
                  sub          zero, a5, s4
                  add          t3, s9, t2
                  lui          zero, 200692
                  lui          s8, 346640
                  bltu         a7, s2, 481f
                  bge          a4, a0, 479f
                  srai         ra, a1, 18
                  add          ra, a3, a6
                  slli         t0, s6, 9
466:              sub          a1, a6, a6
467:              lui          sp, 389979
                  or           tp, s9, zero
                  xori         t1, s0, -1288
                  add          s4, s2, gp
                  or           t4, a7, s10
                  slli         t0, a3, 13
                  la           sp, region_1+1856 #start riscv_load_store_rand_instr_stream_3
                  sb           tp, -201(sp)
                  slti         a3, s8, -401
                  lbu          a6, -211(sp)
                  srai         a0, t5, 4
                  andi         t1, tp, -1494
                  and          t2, t3, s4
                  slli         s0, s9, 31
                  sra          t5, t0, s7
                  sltiu        s5, t0, 611
                  lb           s2, 105(sp)
                  srl          a0, tp, s8
                  lbu          s1, -176(sp)
                  add          t5, a4, s10
                  or           a7, a6, t6
                  sw           a6, -196(sp)
                  sltiu        t4, s10, 740
                  andi         t3, t2, -967
                  xori         t0, a0, 1016
                  nop
                  auipc        t5, 587132
                  sltu         a3, s2, a7
                  xor          s4, t3, gp
                  lb           t5, -129(sp)
                  sb           a5, 115(sp)
                  sub          s9, s11, s4
                  lh           t6, -184(sp)
                  sltiu        tp, gp, -1384
                  sltiu        s9, s5, 51
                  srli         t3, s2, 8
                  lbu          s0, -129(sp)
                  sh           t1, -148(sp)
                  sltu         s10, ra, a6
                  sw           s0, 136(sp)
                  srli         s7, a4, 11
                  lb           s7, -70(sp)
                  slti         s8, s3, -384
                  srli         s4, ra, 29
                  or           s0, a1, s4
                  xori         s8, s7, -388
                  lhu          s1, 108(sp)
                  lh           a2, -6(sp)
                  srl          s0, t4, gp
                  lbu          a0, -218(sp)
                  xori         a1, s1, -203
                  lbu          t5, -175(sp)
                  sb           s6, 47(sp) #end riscv_load_store_rand_instr_stream_3
                  srai         s5, s3, 3
                  xori         s6, a2, 498
                  nop
                  andi         s7, ra, 225
                  slti         tp, ra, -48
                  sub          t0, s10, gp
479:              slli         t3, gp, 25
                  slti         gp, a3, -4
481:              slti         t0, a6, 1723
                  xor          s9, gp, t4
                  sll          s9, s3, s0
                  sltu         s5, s1, t6
                  srli         t5, t6, 8
                  xori         a2, sp, -1573
                  sltiu        t0, gp, 1632
                  and          t4, zero, s0
                  addi         t0, s8, -1561
                  sltu         s1, t4, a1
                  sra          t1, t1, t5
                  srli         a3, zero, 10
                  xori         t5, t4, 1186
                  sltiu        s6, a0, 876
                  srl          s10, t4, a2
                  sltiu        s0, s10, -1651
                  auipc        s6, 226532
                  bltu         a1, s7, 506f
                  bne          tp, s4, 513f
                  bltu         s11, a3, 502f
                  nop
502:              nop
                  beq          a6, gp, 504f
504:              xor          s10, a3, s5
                  xori         s0, a2, -594
506:              and          a7, t1, sp
                  blt          a5, s5, 523f
                  add          s9, a3, s1
                  bgeu         s4, s10, 515f
                  bne          a3, s6, 525f
                  blt          a3, s11, 514f
                  srli         a1, s2, 30
513:              or           s0, t0, a5
514:              beq          t5, zero, 534f
515:              sltiu        ra, a6, -2027
                  add          sp, a6, t6
                  bge          s10, s5, 527f
                  sltu         t4, a2, s5
                  bge          t3, s5, 528f
                  slli         t4, a4, 27
                  slti         s0, gp, 402
                  lui          s10, 988563
523:              sub          a2, a5, t3
                  xor          t5, t4, ra
525:              xori         s7, s5, -516
                  xor          gp, ra, sp
527:              xor          s0, t4, a7
528:              beq          s10, s10, 548f
                  slli         a2, gp, 21
                  sll          a0, a0, zero
                  bgeu         s6, t5, 535f
                  slt          t3, t5, gp
                  slt          t3, s3, tp
534:              bltu         s7, t0, 546f
535:              xor          a5, s0, sp
                  lui          t6, 306202
                  slti         t6, s1, -1077
                  blt          t4, t6, 540f
                  andi         t0, t0, -1867
540:              andi         tp, t5, -832
                  ori          s0, ra, 754
                  andi         s0, a2, -1629
                  srli         a0, a1, 30
                  slti         s7, a4, -1979
                  add          t1, s9, a7
546:              add          t3, s9, ra
                  xor          t4, s9, s9
548:              sltu         a3, s3, t5
                  sltu         ra, gp, ra
                  srli         a0, ra, 12
                  slli         s2, s5, 3
                  xor          t0, s9, a1
                  add          s1, a2, a1
                  xor          s8, s9, s0
                  blt          s0, a1, 575f
                  sll          t0, tp, sp
                  bgeu         t2, s11, 576f
                  slli         a7, a3, 11
                  bltu         s9, sp, 561f
                  sltiu        a7, s5, 360
561:              srl          gp, ra, s6
                  beq          t0, s1, 578f
                  srli         t3, t4, 5
                  slli         t5, a0, 9
                  bltu         a5, a1, 573f
                  sltiu        s0, s1, -510
                  bltu         s11, t0, 575f
                  add          a3, a5, sp
                  bge          s0, tp, 576f
                  beq          s5, s8, 577f
                  ori          s2, s11, 1281
                  sra          s5, sp, s4
573:              lui          s6, 28615
                  auipc        s6, 101365
575:              sra          ra, a1, s8
576:              lui          s1, 132417
577:              sub          t4, t4, gp
578:              srl          s0, s7, s8
                  xori         ra, tp, -885
                  auipc        a2, 717246
                  bgeu         s7, s1, 592f
                  bgeu         s10, s1, 598f
                  blt          t5, a6, 597f
                  slt          s9, sp, s0
                  addi         s9, t4, 1201
                  srl          sp, s10, s10
                  ori          s10, a5, -35
                  slli         s9, t3, 26
                  ori          a0, s0, -229
                  sra          a5, t0, s11
                  addi         s5, a4, -743
592:              sll          t1, a6, s6
                  auipc        t2, 266903
                  srli         s1, t5, 2
                  ori          sp, t5, -908
                  sll          s8, s0, s7
597:              slt          tp, s8, s11
598:              slti         s4, s9, 687
                  auipc        a0, 259724
                  bltu         s11, t5, 618f
                  la           ra, sub_3
                  srli         a1, a7, 4
                  xor          gp, s4, a4
                  addi         ra, ra, 974
                  xori         s6, t5, -1845
                  sra          a1, s2, t1
                  add          t2, s2, tp
                  bltu         a6, a1, sub_2_j6 #branch to jump instr
                  srai         t3, a0, 1
                  and          t0, a7, t6
                  sltiu        t2, sp, 1062
                  slt          t3, t0, t0
                  sra          s10, a2, a2
sub_2_j6:         jalr         s6, ra, -974 #jump sub_2 -> sub_3
                  bge          t0, tp, 612f
                  sub          s8, s11, t2
                  slti         t4, t6, -1157
                  xori         t4, s10, -240
                  xor          s8, a5, a7
                  bne          t1, a4, 619f
                  xori         a5, s4, -1544
                  lui          s4, 473102
                  beq          t2, s10, 627f
                  sltiu        s6, t4, -1561
                  and          t3, t2, s3
612:              xori         s0, a5, 764
                  srli         tp, s8, 12
                  andi         sp, s8, -302
                  blt          a0, a7, 632f
                  beq          t5, t4, 618f
                  nop
618:              auipc        s0, 83313
619:              slli         sp, s0, 17
                  sra          a3, s5, tp
                  slt          t2, a4, a1
                  or           s4, t2, a3
                  bgeu         s8, zero, 643f
                  sltiu        a6, t1, -1522
                  bne          s5, zero, 632f
                  slt          zero, s10, s5
627:              beq          s3, s2, 637f
                  slti         s9, a4, -1615
                  bne          t3, t6, 645f
                  ori          s8, s11, 687
                  bne          a4, s2, 633f
632:              lui          s8, 616660
633:              or           a7, t1, t1
                  nop
                  sll          gp, a0, s3
                  bgeu         t1, s0, 642f
637:              bge          s1, a7, 651f
                  bgeu         s11, a2, 657f
                  and          t0, tp, a3
                  sub          s2, s11, gp
                  ori          t6, s5, 757
642:              sub          sp, t1, s3
643:              sra          s2, s0, s4
                  srl          t1, a6, s1
645:              addi         gp, s2, -1109
                  beq          ra, s9, 654f
                  andi         a2, tp, -129
                  sltu         ra, tp, s4
                  xor          s5, a3, s2
                  slli         a3, t3, 10
651:              xor          s6, s5, s4
                  bltu         a1, a4, 663f
                  lui          s8, 588311
654:              xori         a7, t5, 859
                  xori         t5, s9, 36
                  beq          sp, a0, 668f
657:              sltiu        tp, s0, -616
                  slt          t6, tp, a2
                  xor          s2, a7, sp
                  or           t0, a2, a4
                  slt          tp, a3, s11
                  or           a3, s0, a3
663:              srli         a3, a6, 7
                  add          s7, a0, ra
                  srl          s8, a4, a2
                  sltu         a0, tp, s7
                  slti         s5, s2, 16
668:              blt          s7, t6, 670f
                  and          zero, ra, a7
670:              slt          t5, a7, s7
                  sub          s7, s6, a2
                  and          a5, a0, sp
                  bgeu         t4, t1, 686f
                  bge          s11, t0, 691f
                  srli         a2, a5, 1
                  lui          t6, 445293
                  slli         gp, s5, 9
                  andi         a6, a6, -1043
                  add          a5, tp, s6
                  sub          s0, a4, t2
                  bltu         s11, s11, 696f
                  sltu         t1, a1, a2
                  sltiu        a5, s7, 1223
                  xori         a0, ra, 1128
                  or           s4, t1, t4
686:              xor          t2, s4, s10
                  bne          s11, s0, 703f
                  sra          t0, a5, zero
                  srai         s6, s11, 18
                  addi         a6, s8, -1090
691:              blt          a4, s0, 700f
                  slt          s2, s7, gp
                  sub          a5, s7, a0
                  srai         t3, a0, 18
                  bge          zero, s5, 702f
696:              sra          a5, s4, t5
                  xori         t5, t1, -470
                  xor          tp, a7, s9
                  sltu         s0, s11, s1
700:              bltu         gp, t0, 710f
                  auipc        s0, 1022639
702:              sra          s4, t6, t4
703:              sub          t2, t5, zero
                  sll          a7, s7, a2
                  sra          zero, s0, zero
                  sltu         s0, s7, a3
                  lui          zero, 906809
                  beq          s4, s0, 710f
                  sltu         a7, t2, a2
710:              xori         tp, gp, 1884
                  srai         zero, s11, 26
                  slli         t4, t6, 12
                  srl          t3, zero, s5
                  sra          s10, a5, s5
                  lw           s6, 4(a4)
                  slt          a6, s1, s6
                  sll          s5, s4, s3
                  and          s2, zero, t6
                  nop
                  addi         a4, a4, 16
                  srli         s2, gp, 6
949:              addi x17, x22, 0
949:              jalr x17, x17, 0
sub_5:            bltu         a7, gp, sub_5_stack_p
                  srli         ra, s3, 20
sub_5_stack_p:    addi         a4, a4, -8
                  srli         s1, s8, 0
                  sra          s9, s11, s5
                  sra          a2, a4, s4
                  xor          t6, a3, s3
                  sw           s6, 4(a4)
                  ori          t1, s1, 505
                  add          s5, t4, t3
                  sltu         a2, sp, s0
                  lui          zero, 73204
                  sra          s1, a4, t2
                  ori          s8, s1, 1657
                  add          sp, s7, a5
                  ori          sp, ra, -615
                  sltiu        a0, s2, 2037
                  la           a3, sub_8
                  addi         a3, a3, 674
                  srl          s4, t5, a3
                  beq          t0, sp, sub_5_j11 #branch to jump instr
                  ori          t1, a2, -730
                  srai         gp, s6, 4
sub_5_j11:        jalr         s6, a3, -673 #jump sub_5 -> sub_8
                  xor          s2, tp, s3
                  add          a2, a5, s9
                  lui          a3, 1035670
                  slti         ra, t2, -951
                  slti         s7, s5, -1160
                  sra          s2, a7, t5
                  and          s6, tp, s7
                  blt          gp, a1, 18f
                  lui          a7, 975737
                  slti         t3, s4, 1962
                  add          a1, a6, t3
                  auipc        a7, 845342
                  srai         s8, t3, 2
                  sltu         t5, s9, a4
                  bgeu         t6, s7, 19f
                  srli         tp, s9, 29
                  addi         s5, t0, 457
                  addi         s4, t5, -2001
18:               ori          a5, a0, -1903
19:               andi         tp, t1, 1135
                  lui          tp, 32031
                  lw           s6, 4(a4)
                  sltu         a2, s9, s6
                  sra          a3, a7, s7
                  and          s7, s4, t1
                  addi         a4, a4, 8
                  slli         t6, zero, 3
51:               addi x28, x22, 1
51:               jalr x28, x28, 0
sub_4:            lui          gp, 28615
                  xori         t3, zero, -1003
                  andi         s10, s11, -865
                  addi         a4, a4, -8
                  auipc        s5, 152679
                  sw           s6, 4(a4)
                  xori         s0, sp, -207
                  and          s9, a3, t2
                  auipc        a0, 738414
                  lui          tp, 64541
                  addi         s0, t3, -409
                  srli         s2, s7, 8
                  lui          a2, 971272
                  auipc        t2, 838234
                  xori         sp, a3, -1327
                  srli         ra, s3, 28
                  ori          s8, a1, 799
                  sub          s9, t1, a1
                  beq          a7, t5, 18f
                  bgeu         t0, s0, 20f
                  ori          t2, zero, 778
                  srl          s8, s6, a2
                  nop
                  lui          s4, 906293
                  andi         a6, a1, 1590
                  lui          s9, 476582
18:               lui          t6, 157046
                  slt          ra, ra, s5
20:               and          a3, a2, zero
                  sub          sp, t0, s11
                  addi         a3, s5, -499
                  lw           s6, 4(a4)
                  sub          t6, s10, sp
                  or           s9, s5, t4
                  nop
                  addi         a4, a4, 8
                  ori          a3, s5, -1124
                  add          a5, s5, sp
                  sra          t1, a4, s9
39:               addi x15, x22, 1
39:               jalr x15, x15, 0
sub_6:            sll          a3, t1, s10
                  srli         s7, tp, 16
                  srli         ra, s4, 30
                  sltu         t6, sp, t2
                  slti         sp, a0, -644
                  addi         a4, a4, -28
                  sw           s6, 4(a4)
                  sltiu        s10, a0, 353
                  add          t5, s10, s8
                  slt          sp, ra, a6
                  la           t2, region_1+533 #start riscv_load_store_rand_instr_stream_0
                  xor          t6, a3, ra
                  lhu          t0, 1281(t2)
                  slli         s5, t5, 0
                  and          a0, t2, s4
                  sltiu        a5, t5, -228
                  lw           t1, 1039(t2)
                  lbu          s10, 647(t2)
                  or           a6, ra, a5
                  srl          s10, a2, s4
                  sh           s5, 63(t2)
                  and          s10, a4, tp
                  addi         s0, ra, -1656
                  nop
                  srai         s7, a6, 22
                  ori          t4, t3, -409
                  slli         a0, s5, 14
                  lb           s10, 1389(t2)
                  nop
                  nop
                  lhu          t5, -43(t2)
                  add          s8, s0, t0
                  slti         a0, t1, -1224
                  sra          s10, a6, s9
                  sll          zero, t0, t1
                  lb           s10, 105(t2)
                  sw           s7, -365(t2)
                  andi         tp, a5, 206
                  srai         s8, t2, 16
                  sra          a7, t0, s2
                  lbu          s1, 1013(t2)
                  lbu          s9, 56(t2)
                  andi         sp, t1, 539
                  sltiu        zero, s5, -1821
                  srl          a0, t0, s10
                  lhu          s9, 1369(t2)
                  lbu          s7, 537(t2)
                  lb           zero, -474(t2)
                  lb           s8, 1142(t2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1204 #start riscv_load_store_rand_instr_stream_1
                  xor          gp, sp, t3
                  sub          t0, a0, zero
                  addi         tp, a0, -1636
                  lh           s9, -6(sp)
                  sh           sp, 0(sp)
                  lb           a1, -9(sp)
                  lhu          s6, -16(sp)
                  sltiu        s7, t4, -1165
                  addi         a5, s11, -2015
                  lbu          t6, 13(sp)
                  auipc        s7, 236063
                  lbu          t0, 1(sp)
                  lb           s0, -11(sp)
                  slti         tp, zero, -2017
                  nop
                  slt          a2, s1, t1
                  srl          s4, a0, s8
                  lb           t2, -2(sp)
                  sltiu        t2, t6, -435
                  lbu          a0, 1(sp)
                  sb           t0, -15(sp) #end riscv_load_store_rand_instr_stream_1
                  sll          t5, t6, a1
                  auipc        s4, 455191
                  beq          a5, t6, 3f
3:                beq          s9, ra, 7f
                  xor          t3, tp, s7
                  bge          t4, ra, 8f
                  bgeu         a3, s2, 19f
7:                add          s4, s11, a2
8:                slli         s1, s3, 10
                  bgeu         gp, a6, 28f
                  slt          a5, s1, a2
                  sll          a2, t1, s3
                  ori          s9, gp, 1562
                  sltiu        t1, s9, -1100
                  srai         t2, s4, 5
                  slti         s9, a2, 323
                  auipc        t4, 659244
                  slt          s4, t0, a4
                  nop
19:               slli         a6, tp, 31
                  or           s8, a0, t5
                  slli         a2, t1, 12
                  bgeu         a0, t1, 26f
                  xori         s6, zero, -1129
                  sll          t6, a2, a0
                  xori         t5, s2, 1974
26:               nop
                  sra          t1, zero, a6
28:               srli         s0, t2, 19
                  and          a0, zero, t4
                  blt          a5, zero, 32f
                  srai         s10, zero, 18
32:               xor          t0, a3, gp
                  sra          t0, s7, a1
                  or           gp, s4, s6
                  or           zero, t4, a6
                  slli         s10, s8, 3
                  sltiu        ra, s2, -594
                  bne          t1, s10, 48f
                  bltu         s9, gp, 41f
                  bltu         t4, s8, 60f
41:               nop
                  sltiu        t6, a6, -1536
                  bltu         a4, s11, 58f
                  slt          gp, t2, a4
                  or           s4, s2, a2
                  or           s6, a7, gp
                  bgeu         t1, a3, 50f
48:               nop
                  sub          zero, t1, s1
50:               nop
                  bltu         s5, a7, 58f
                  bge          s8, t2, 66f
                  nop
                  srai         s4, s3, 16
                  add          t1, s9, t5
                  blt          t3, s9, 63f
                  and          a6, a5, s9
58:               slt          zero, t4, t2
                  sub          t0, s8, a2
60:               auipc        t1, 378479
                  bgeu         gp, s3, 71f
                  sltiu        t5, gp, -1806
63:               add          s4, tp, a5
                  or           s1, s10, s0
                  sub          t3, tp, a3
66:               slti         t6, a5, -995
                  nop
                  xori         a3, t0, -1190
                  sll          ra, s8, s2
                  sltiu        a0, s7, 1404
71:               slli         s10, t1, 24
                  sll          t6, t3, s3
                  lui          a0, 8888
                  xori         a5, ra, 1523
                  add          s5, gp, s9
                  srli         s0, a6, 14
                  add          gp, a0, s4
                  xori         s5, t3, 982
                  srai         s8, a1, 21
                  add          s7, s9, t3
                  bne          a1, a5, 96f
                  or           ra, a5, a7
                  add          s2, s10, s0
                  beq          t1, a1, 87f
                  sub          a2, s10, a4
                  bgeu         s10, a5, 103f
87:               srli         s7, a6, 31
                  lui          tp, 1002491
                  or           t0, gp, a1
                  beq          t3, a1, 108f
                  bltu         s1, s8, 100f
                  sra          gp, a6, s0
                  addi         s6, a3, 280
                  srli         t2, s5, 3
                  sll          t2, t0, s9
96:               bge          a0, s6, 98f
                  auipc        zero, 349985
98:               and          zero, a1, t3
                  add          sp, gp, s3
100:              beq          a4, zero, 103f
                  bge          t3, s3, 104f
                  ori          a2, s10, -748
103:              addi         gp, a1, -939
104:              blt          s6, a4, 109f
                  bgeu         ra, a2, 109f
                  sltiu        a7, t2, 104
                  add          s7, a0, s2
108:              and          t3, zero, a7
109:              bge          a2, t6, 118f
                  srli         gp, s0, 2
                  bgeu         s3, s9, 119f
                  blt          s8, a4, 128f
                  bltu         s3, s10, 121f
                  ori          s1, a3, 576
                  sltu         a3, s10, s8
                  srl          a5, t0, a4
                  ori          s4, s9, -1548
118:              bltu         a1, s10, 138f
119:              slti         t0, s0, -1799
                  slli         t6, s5, 1
121:              andi         sp, t4, 104
                  and          t0, s2, t4
                  sub          s6, s6, s8
                  sltiu        s2, t0, 826
                  srai         t2, t0, 0
                  bltu         a2, s7, 145f
                  bge          tp, s4, 130f
128:              bgeu         tp, ra, 131f
                  beq          s8, ra, 139f
130:              sub          a5, t3, a2
131:              bgeu         t0, zero, 146f
                  sub          s6, ra, sp
                  sub          tp, s8, zero
                  addi         s4, sp, 1481
                  sll          t1, t0, gp
                  nop
                  bltu         sp, a1, 146f
138:              sll          s1, t3, sp
139:              slli         s10, s3, 24
                  andi         s6, s7, -328
                  srl          s7, t2, t4
                  srai         t2, s1, 3
                  xori         t1, s0, 281
                  sra          s4, s10, s5
145:              andi         a3, a4, 58
146:              xor          s5, gp, t3
                  sub          s6, s11, a6
                  beq          s5, s1, 163f
                  sltiu        a5, s11, -329
                  or           a0, ra, a4
                  blt          s3, a6, 153f
                  srl          ra, t5, a0
153:              bge          a6, a5, 157f
                  or           gp, s9, s1
                  bltu         tp, t5, 163f
                  auipc        s10, 778003
157:              sltiu        t1, gp, -1484
                  blt          t3, a1, 161f
                  sll          ra, a4, s5
                  sra          a3, s4, a1
161:              add          zero, a5, t1
                  addi         s4, s4, -955
163:              beq          t0, a5, 181f
                  slli         t2, t1, 20
                  srai         s1, s8, 18
                  sub          tp, a3, s2
                  bne          s0, s1, 170f
                  xor          t0, s9, s1
                  sra          s7, t4, s2
170:              sltu         s0, t6, s10
                  sra          ra, s4, s7
                  addi         s7, s8, 2035
                  slt          s1, s11, s7
                  srai         a2, a2, 13
                  bge          s7, t3, 179f
                  sltiu        s5, a6, 1514
                  blt          t5, t5, 194f
                  srai         t0, s3, 2
179:              sltiu        ra, s11, -385
                  or           t0, t6, a2
181:              slt          s6, a0, sp
                  add          t0, t0, t1
                  bgeu         a1, s6, 185f
                  sltu         t6, s6, sp
185:              sll          a3, a2, s6
                  srl          t5, s7, s4
                  xori         a7, t4, 1741
                  beq          s9, sp, 190f
                  ori          a5, s4, 209
190:              slt          s9, s10, s11
                  blt          a6, a1, 194f
                  bgeu         t0, s5, 202f
                  nop
194:              addi         a7, tp, -1255
                  lui          s2, 152580
                  slti         gp, s5, 1768
                  beq          s7, a4, 201f
                  slli         s1, s2, 27
                  slt          s4, s5, t4
                  srl          a3, t5, s6
201:              slti         a1, t5, -1684
202:              beq          s4, sp, 209f
                  slti         a6, a3, 1219
                  nop
                  sltiu        s8, s4, -692
                  add          t1, s7, gp
                  bltu         s2, t2, 215f
                  sll          gp, s4, t2
209:              srl          s9, a6, s8
                  sltiu        s5, s0, -1823
                  xor          t5, s9, s9
                  addi         t1, a1, 1539
                  or           s9, s4, s1
                  or           a5, gp, t1
215:              bgeu         t1, t0, 216f
216:              bgeu         t6, s11, 229f
                  or           a0, s11, a1
                  slti         s9, a1, 19
                  srli         s8, s10, 0
                  addi         t6, a4, 328
                  bne          t4, s5, 237f
                  ori          t6, gp, -744
                  andi         s2, t6, -1825
                  add          a1, ra, s8
                  blt          s0, t6, 232f
                  slt          gp, t0, s1
                  bge          a2, s5, 241f
                  beq          s10, a1, 233f
229:              slt          s8, a7, s5
                  slti         t6, a2, -640
                  andi         a3, t3, 2039
232:              andi         a1, t3, 349
233:              sub          a7, ra, a1
                  ori          s2, s9, -1205
                  sub          a1, a6, zero
                  srl          zero, tp, a7
237:              slti         a3, a0, 1539
                  or           t6, a6, tp
                  bltu         sp, t3, 248f
                  nop
241:              addi         s4, t3, 341
                  srai         t1, a7, 16
                  sra          t6, a4, t5
                  sra          t4, a2, s1
                  and          zero, zero, t1
                  bne          s10, s4, 253f
                  beq          s1, t2, 255f
248:              bne          s0, sp, 249f
249:              andi         s7, a5, -851
                  sub          a2, s4, s7
                  xori         t0, gp, -1360
                  srai         a3, zero, 0
253:              slt          t4, s6, t0
                  sub          a0, a7, t6
255:              slti         a5, a7, -566
                  xor          a7, ra, a1
                  blt          a3, s5, 260f
                  sll          t1, a2, a0
                  auipc        t1, 892367
260:              slli         t5, a7, 29
                  auipc        gp, 379345
                  beq          s2, t2, 265f
                  sltiu        a0, sp, -190
                  sltiu        t1, a1, 1423
265:              srl          s10, a5, a4
                  auipc        t5, 653533
                  lui          a1, 375026
                  bgeu         t3, a1, 283f
                  bge          s7, s0, 271f
                  bge          s2, zero, 275f
271:              bgeu         s8, t3, 285f
                  slt          a1, s11, tp
                  slt          t3, t6, t4
                  srai         t3, s8, 28
275:              ori          zero, a7, -1050
                  add          s6, a5, ra
                  slti         t4, ra, -1645
                  and          gp, s6, s3
                  srai         s9, t5, 27
                  xor          t4, s7, a7
                  ori          t0, a7, 1415
                  srl          t0, t1, a6
283:              ori          t2, sp, -1526
                  nop
285:              srai         s8, s5, 30
                  add          tp, s4, a7
                  slli         s8, s4, 5
                  xori         a2, s8, 1328
                  srli         t3, t3, 6
                  sub          t5, gp, a4
                  srl          tp, tp, s8
                  bge          t5, t1, 294f
                  lui          t6, 32705
294:              andi         s9, a2, 207
                  xori         a6, t5, 1651
                  andi         s4, a0, -971
                  blt          s6, t4, 316f
                  blt          s11, s4, 301f
                  blt          gp, s10, 302f
                  sra          a6, a4, s11
301:              addi         s5, t0, 1685
302:              xor          s0, a4, a5
                  slt          t3, t3, a4
                  slti         a3, s1, 1826
                  srli         s5, t2, 6
                  sltiu        a5, a5, 1495
                  slti         a1, s4, -1655
                  sltu         t6, t2, s10
                  sra          t0, s4, a4
                  xor          t6, s8, a3
                  bltu         t4, s9, 331f
                  lui          tp, 882137
                  sra          s5, s5, a3
                  srl          zero, a7, a2
                  srai         s10, gp, 12
316:              sltiu        a3, t1, 871
                  sll          t5, s3, s10
                  xori         a1, a4, 973
                  lui          zero, 31542
                  bltu         t5, ra, 329f
                  sltu         t6, a3, t5
                  slt          t1, a5, a2
                  sltiu        a5, a5, -160
                  srai         zero, s5, 1
                  slt          s10, zero, t1
                  blt          t4, t1, 342f
                  la           s2, region_0+1812 #start riscv_load_store_rand_instr_stream_2
                  andi         s0, t1, 1973
                  lb           s7, -1081(s2)
                  lbu          s0, -488(s2)
                  sb           s0, -353(s2)
                  srl          s0, s9, s2
                  addi         t3, s11, 1078
                  sb           s6, -688(s2)
                  lb           a3, -539(s2)
                  lw           s1, -1456(s2)
                  lbu          s10, -716(s2)
                  nop
                  slli         t5, zero, 16
                  srli         gp, a4, 21
                  sh           s5, -242(s2)
                  or           s10, a3, s0
                  lbu          s4, -631(s2)
                  or           t2, t0, s2
                  srli         s4, s11, 30
                  sh           a2, -1050(s2)
                  sb           a4, -1565(s2)
                  srai         s5, t6, 27
                  lb           s5, -1397(s2)
                  srai         s5, zero, 16
                  sb           s4, -44(s2)
                  slti         a1, t6, 889
                  sb           s8, -1099(s2)
                  and          s1, s5, s4
                  sra          s4, s6, a4
                  sub          ra, a4, t5
                  lh           t6, -786(s2)
                  srai         s7, a6, 2
                  lb           a1, -1045(s2)
                  addi         t1, s9, -765
                  add          a3, a4, s4
                  ori          ra, a0, 619
                  sltiu        t3, tp, -1682
                  add          a0, t0, a4
                  sb           gp, -759(s2)
                  srai         t5, t1, 23
                  addi         a6, a6, 740
                  lbu          zero, -413(s2) #end riscv_load_store_rand_instr_stream_2
                  beq          sp, a3, 334f
                  addi         t1, a7, -640
329:              srai         t2, tp, 2
                  sll          sp, t2, a7
331:              sltiu        a6, t5, -528
                  ori          t0, s3, -274
                  ori          a0, a4, -192
334:              sub          s8, a7, tp
                  sra          a1, s8, s0
                  bltu         s9, tp, 346f
                  sltiu        s5, sp, -1733
                  slli         sp, a1, 5
                  bne          t1, s7, 347f
                  or           s1, a1, a0
                  beq          a6, a6, 351f
342:              blt          zero, zero, 360f
                  sub          a3, s6, t0
                  slt          gp, s0, s4
                  or           a1, s9, s2
346:              blt          s11, s3, 348f
347:              sub          s0, s10, t1
348:              xor          a0, s9, a2
                  or           gp, s10, a2
                  sra          a1, s5, a1
351:              sltu         s0, gp, t5
                  add          t0, s8, s8
                  srai         s5, a2, 11
                  srli         s9, s5, 16
                  srl          a6, s2, a0
                  bgeu         a0, t5, 360f
                  or           t0, s1, zero
                  addi         s0, t3, -1115
                  slli         s1, s1, 5
360:              bne          t2, t1, 364f
                  addi         gp, a0, 973
                  xor          s2, gp, t3
                  sltu         zero, a6, s1
364:              bne          s1, a5, 377f
                  blt          s1, s9, 374f
                  beq          t1, t6, 370f
                  sra          a7, s11, s8
                  srli         t3, s3, 17
                  add          s5, s7, t3
370:              addi         t6, a5, 2047
                  sltu         t4, tp, s10
                  sltiu        t2, t3, 1765
                  srl          a2, s7, a0
374:              sltu         t1, s4, s9
                  sra          t4, t1, gp
                  sra          a3, ra, a5
377:              bltu         a6, t4, 392f
                  sltiu        sp, s7, 290
                  slt          s0, t2, s4
                  bltu         t2, a2, 383f
                  sltiu        a6, t5, 88
                  srai         t2, t0, 0
383:              bge          t5, s2, 400f
                  add          t0, a2, a6
                  bgeu         s11, a2, 388f
                  sub          s7, a5, s3
                  sra          s9, sp, tp
388:              beq          gp, tp, 407f
                  sltu         s10, s0, zero
                  xori         s9, ra, -223
                  srli         t3, a6, 31
392:              bne          a2, tp, 402f
                  xor          s4, t5, a0
                  slt          a5, s7, t4
                  sub          s2, s7, a7
                  nop
                  slti         s9, ra, 1139
                  srai         s6, a3, 24
                  xori         t4, ra, 1280
400:              sub          t4, t1, t0
                  andi         s5, a2, 482
402:              sub          s0, sp, t5
                  bltu         s11, t2, 412f
                  beq          s2, a2, 406f
                  xor          a5, s6, s2
406:              auipc        a3, 877438
407:              auipc        t3, 907427
                  add          t6, tp, s3
                  bgeu         ra, a1, 424f
                  slli         s2, s3, 18
                  slt          gp, s9, a4
412:              and          sp, t3, s11
                  slt          s7, a2, s1
                  bltu         s10, sp, 422f
                  bltu         a3, tp, 419f
                  slli         s1, t1, 11
                  bne          a1, t5, 418f
418:              beq          a5, s5, 420f
419:              nop
420:              ori          s2, t0, 1306
                  or           gp, zero, t1
422:              or           s9, a6, s3
                  and          t0, t2, sp
424:              beq          a3, s1, 427f
                  sltiu        gp, t2, -487
                  sltu         a7, tp, a3
427:              slti         s9, s5, 692
                  sll          s4, t2, s1
                  bne          a2, a7, 432f
                  bne          t4, t1, 432f
                  bge          tp, s11, 448f
432:              xor          t1, a0, t4
                  add          zero, s8, zero
                  sra          a6, zero, t2
                  sub          s7, s6, s9
                  sub          tp, s5, t3
                  sltiu        t4, s6, 30
                  srli         t6, a0, 25
                  nop
                  bltu         s1, a4, 447f
                  blt          a6, tp, 444f
                  add          s8, t4, a4
                  xor          a7, s3, gp
444:              xori         s0, a4, 1755
                  and          a7, a6, s3
                  sll          t2, s0, zero
447:              addi         zero, gp, 1800
448:              nop
                  bge          t6, t3, 463f
                  sll          a2, s2, s5
                  beq          s2, s6, 459f
                  bne          a6, a2, 462f
                  slti         a2, a0, 1782
                  xor          a7, gp, t4
                  auipc        gp, 184259
                  ori          s10, s3, 421
                  xor          s1, ra, a0
                  ori          t0, s9, -157
459:              sll          tp, a7, s3
                  lui          s6, 862621
                  blt          a0, t2, 474f
462:              and          gp, s1, s11
463:              sra          s0, a0, t4
                  bge          zero, a2, 479f
                  bltu         s5, a3, 479f
                  sltu         s5, t3, t3
                  srl          s5, s3, tp
                  bgeu         a2, a7, 477f
                  bge          a3, t6, 479f
                  blt          a0, a3, 473f
                  slti         t5, s11, 539
                  and          tp, a0, a7
473:              blt          s7, a2, 479f
474:              sll          t4, t5, s4
                  bne          s9, gp, 479f
                  sltiu        t3, a3, 639
477:              sll          s10, a3, t1
                  srl          gp, t4, tp
479:              and          a3, a4, t2
                  lw           s6, 4(a4)
                  srli         s0, a3, 1
                  lui          s8, 845564
                  slt          s5, s6, t0
                  and          sp, s7, s0
                  sltu         ra, t4, s5
                  slli         zero, s3, 5
                  and          t3, s10, t3
                  sra          a5, s3, s8
                  slt          zero, s9, t3
                  addi         a4, a4, 28
                  auipc        t0, 316113
605:              addi x8, x22, 1
605:              jalr x8, x8, 0
sub_3:            sltiu        tp, t6, 849
                  addi         s8, s0, 762
                  beq          s6, t5, sub_3_stack_p
                  addi         s8, sp, 483
                  addi         t3, a6, -1082
                  addi         tp, a7, -457
sub_3_stack_p:    addi         a4, a4, -36
                  xori         s1, a7, -1553
                  sw           s6, 4(a4)
                  xor          s1, s8, s2
                  or           s0, ra, t2
                  sltu         a7, a4, s0
                  sltiu        s2, t0, -1537
                  andi         t3, a1, 411
                  lui          zero, 155312
                  la           s4, sub_7
                  andi         s0, s8, -1555
                  xor          zero, s7, sp
                  addi         s4, s4, 399
                  sltiu        tp, gp, -43
                  srl          s6, t4, a7
sub_3_j10:        jalr         s6, s4, -398 #jump sub_3 -> sub_7
                  la           sp, region_1+373 #start riscv_load_store_rand_instr_stream_1
                  sb           a4, 94(sp)
                  lb           s10, -239(sp)
                  sb           t5, -160(sp)
                  lb           s10, -169(sp)
                  srl          gp, s8, a5
                  sltu         a6, gp, tp
                  sb           s11, 8(sp)
                  sb           s6, -93(sp)
                  auipc        t5, 140838
                  sltiu        a1, t0, -1679
                  lw           t2, -113(sp)
                  or           a0, s6, t6
                  lbu          t5, -212(sp)
                  lh           s0, 189(sp)
                  sb           t3, -134(sp)
                  xor          a1, s8, s9
                  sw           a0, 91(sp)
                  sltiu        s0, t0, -819
                  slti         t3, gp, -466
                  nop
                  sb           sp, -224(sp)
                  lb           a2, 63(sp)
                  addi         s1, a0, 741
                  lb           s5, -5(sp)
                  and          a1, s11, a4
                  lb           a0, 132(sp)
                  lbu          ra, 12(sp)
                  lbu          tp, 113(sp)
                  and          gp, zero, s5
                  sh           a3, -203(sp)
                  lbu          s9, -205(sp)
                  sb           a1, -136(sp)
                  sb           a6, 148(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_1+1183 #start riscv_load_store_rand_instr_stream_4
                  srli         a0, s9, 10
                  sll          zero, sp, s11
                  lb           s7, 0(a3)
                  lbu          t4, 10(a3)
                  and          a7, t5, a4
                  lb           ra, 2(a3)
                  sb           sp, 13(a3)
                  lhu          a0, -5(a3)
                  sub          a6, s4, t3
                  lhu          a0, 11(a3)
                  sub          t1, s8, s6
                  slli         a2, tp, 13
                  auipc        s10, 896195
                  slt          t0, s5, t3
                  or           gp, t4, tp
                  sh           s0, 5(a3)
                  sltu         t0, a4, t6
                  sub          s8, s7, t1
                  addi         s7, sp, -1345
                  lb           a0, 15(a3)
                  ori          a1, gp, -1468
                  lbu          a7, -11(a3)
                  lb           t4, -4(a3)
                  srai         t4, s5, 10
                  sb           ra, 12(a3)
                  sb           s5, -16(a3)
                  lb           s9, 9(a3)
                  lb           zero, -5(a3)
                  sub          s4, t1, s11
                  lh           s1, 15(a3)
                  sb           t6, 7(a3)
                  sra          s6, a6, s4
                  sra          a2, t5, a5
                  slt          s10, t5, sp
                  sltiu        s4, zero, -940
                  lb           a6, -14(a3)
                  lbu          s1, -4(a3)
                  lhu          s4, -5(a3)
                  sltiu        t5, ra, 204
                  sb           t6, -8(a3)
                  sb           s8, -6(a3)
                  lb           a6, -11(a3)
                  sra          s6, a2, s5
                  sra          a1, t0, tp
                  sb           s5, 0(a3)
                  lb           s0, 3(a3)
                  sb           s5, 2(a3)
                  lbu          t1, -5(a3)
                  sb           t0, 2(a3)
                  sw           s10, -11(a3) #end riscv_load_store_rand_instr_stream_4
                  la           t2, region_0+153 #start riscv_load_store_rand_instr_stream_6
                  sh           a1, 51(t2)
                  lhu          gp, -43(t2)
                  lb           s0, 40(t2)
                  sub          s8, s1, s9
                  sltu         t3, t0, a0
                  sub          t5, t5, t1
                  lbu          t6, 64(t2)
                  lb           s9, 30(t2)
                  lbu          ra, -9(t2)
                  auipc        s8, 169610
                  sltiu        s1, a5, -968
                  sh           sp, -57(t2)
                  srl          t4, s4, a3
                  srli         s4, t4, 7
                  lbu          s1, 64(t2)
                  sb           s5, -34(t2)
                  nop
                  sb           s11, 0(t2)
                  sb           a6, -46(t2)
                  addi         t3, s6, -930
                  andi         gp, gp, 1680
                  or           a6, s6, sp
                  lhu          s5, 23(t2)
                  slti         zero, s5, -313
                  sll          s4, s4, s7
                  lbu          a1, 26(t2)
                  lhu          s6, 35(t2)
                  lui          t6, 904269
                  sll          a7, s9, ra
                  add          a0, s7, s4
                  ori          a2, a0, -107
                  lbu          s9, 56(t2)
                  lbu          a5, 38(t2)
                  auipc        s8, 827449
                  lbu          s0, 30(t2)
                  nop
                  or           s1, t6, t5
                  lbu          a3, -17(t2)
                  andi         ra, gp, 1657
                  lb           a1, 42(t2)
                  lbu          a1, -36(t2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+337 #start riscv_load_store_rand_instr_stream_2
                  sltiu        a1, t3, 89
                  and          a7, a7, s8
                  lbu          a2, 11(sp)
                  lhu          t4, 5(sp)
                  auipc        s8, 637421
                  sltiu        t5, t2, 855
                  lui          a0, 616639
                  and          a6, s11, gp
                  lbu          a0, 8(sp)
                  sb           a3, -4(sp)
                  lbu          t4, 5(sp)
                  addi         t3, s4, -185
                  lb           ra, 0(sp)
                  auipc        t3, 177104
                  nop
                  sra          ra, s3, s7
                  auipc        ra, 534373
                  lh           s7, 13(sp)
                  xor          t0, s9, sp
                  sb           a0, -2(sp)
                  lb           t2, 13(sp)
                  sll          t0, t6, a2
                  lh           ra, 5(sp)
                  lb           tp, 8(sp)
                  sh           t5, -11(sp)
                  sltu         t2, tp, t3
                  lui          a6, 437027
                  auipc        t3, 998314
                  or           s0, t0, s10
                  sb           a4, 0(sp)
                  lb           ra, 12(sp)
                  sltiu        s7, s0, -450
                  lb           tp, -5(sp)
                  lhu          t6, -3(sp)
                  lbu          t6, -16(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_1+1827 #start riscv_load_store_rand_instr_stream_5
                  lbu          ra, -1350(s4)
                  andi         s5, t2, 1390
                  sb           ra, -222(s4)
                  sra          a2, a2, zero
                  and          a2, ra, s3
                  sub          t5, s3, a2
                  lbu          t2, -1270(s4)
                  sltu         s6, s11, s8
                  sw           sp, -1355(s4)
                  srl          s6, s2, s10
                  sb           s1, -772(s4)
                  sb           s5, -1362(s4)
                  srai         s7, t5, 26
                  sh           gp, -965(s4)
                  lhu          zero, -303(s4)
                  lb           t2, -96(s4)
                  and          sp, t0, s5
                  slti         t2, s0, -1499
                  lb           tp, -1492(s4)
                  sltu         s7, s2, ra
                  lb           s8, 148(s4)
                  sltiu        a0, s2, 1638
                  sh           t3, -1689(s4)
                  lhu          gp, -819(s4)
                  slt          a6, s5, s5
                  lbu          tp, -880(s4)
                  sb           t6, -1438(s4)
                  sltu         s7, t4, t5
                  andi         t1, t5, 1226
                  lb           a7, -1518(s4) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1844 #start riscv_load_store_rand_instr_stream_3
                  xor          s6, a4, t6
                  lbu          s10, 3(sp)
                  sb           a1, 10(sp)
                  srai         s6, sp, 3
                  lh           s8, 2(sp)
                  sb           a4, 16(sp)
                  slli         t6, s11, 30
                  xori         t0, s5, 1703
                  lh           s0, -10(sp)
                  and          t6, t5, s5
                  add          t2, s5, s0
                  sb           s5, -5(sp)
                  addi         a7, t3, 686
                  add          s7, t0, t3
                  lbu          a2, -12(sp)
                  sltiu        t5, s11, -1533
                  slti         s2, t0, -165
                  nop
                  addi         a3, s2, 223
                  srl          s1, s3, sp
                  sb           s3, 9(sp)
                  sltiu        a2, s5, -1955
                  sub          s6, t3, s6
                  lhu          t5, -12(sp)
                  auipc        t6, 655656
                  nop
                  sb           t0, -11(sp)
                  sb           s1, 6(sp)
                  lhu          s6, 2(sp)
                  or           s9, a4, s11
                  and          a2, a3, ra
                  xor          s7, a2, s8
                  lui          t0, 687824
                  srli         t6, t1, 28
                  slli         t1, s0, 11
                  lb           s9, 14(sp)
                  sll          s8, ra, zero
                  sh           a6, 12(sp)
                  xor          a0, a7, a6
                  srl          t3, s7, a7
                  xori         s10, s3, -835
                  sub          t0, sp, ra
                  lh           t1, 14(sp)
                  sb           t3, 15(sp)
                  lhu          a5, -12(sp)
                  addi         zero, s4, -1609
                  ori          t1, a7, 764
                  sb           s1, 5(sp) #end riscv_load_store_rand_instr_stream_3
                  sra          t1, t3, a4
                  bgeu         gp, t5, 14f
                  sub          zero, t2, a6
                  bge          a6, a0, 12f
                  nop
                  slli         s7, a5, 26
                  sltu         s5, ra, a1
                  ori          a6, t1, 439
                  blt          ra, a1, 26f
                  or           t0, a0, s9
                  sltu         t5, a1, s9
                  bne          s9, s8, 25f
12:               beq          a0, a6, 17f
                  andi         a7, a2, 1236
14:               sltu         a1, t4, t6
                  ori          a0, gp, 1057
                  or           ra, s5, a2
17:               xor          s9, s0, a7
                  bltu         a0, s0, 33f
                  bne          a1, a5, 36f
                  slt          a5, a2, gp
                  slli         t3, t0, 1
                  bltu         s0, zero, 32f
                  srli         s4, tp, 24
                  and          s6, t1, tp
25:               or           s10, t2, gp
26:               auipc        a5, 916145
                  sra          t5, s6, s10
                  slli         s4, s9, 11
                  beq          t5, a3, 43f
                  and          a3, a4, s2
                  andi         a1, s0, 1867
32:               or           ra, a5, s4
33:               or           sp, ra, s5
                  slli         sp, a2, 29
                  sra          t0, s7, zero
36:               sll          t4, s11, t6
                  srl          s6, s1, s10
                  nop
                  lui          t0, 1033348
                  srl          a0, a3, tp
                  sltu         t5, s10, t3
                  sra          s10, a7, ra
43:               srli         s4, t3, 29
                  srli         s6, t2, 3
                  blt          s2, t3, 65f
                  ori          t0, s8, 381
                  andi         gp, s6, -430
                  bne          s2, a3, 60f
                  nop
                  lui          t4, 973673
                  slt          ra, t6, a2
                  add          s0, s3, s0
                  lui          s1, 313990
                  bltu         t3, s2, 58f
                  lui          a6, 932021
                  andi         s10, a5, 1982
                  or           s2, a5, t1
58:               sra          s1, gp, t6
                  bge          a5, s0, 60f
60:               andi         zero, a6, 154
                  sub          a2, a7, s5
                  andi         ra, s1, 1692
                  sll          s7, a0, tp
                  sll          s7, s2, tp
65:               slt          tp, t2, s0
                  srli         a2, ra, 13
                  slli         sp, s5, 30
                  bne          s7, gp, 76f
                  and          s4, t5, s8
                  auipc        t6, 21723
                  xori         s0, a1, -358
                  xori         t1, a5, -565
                  nop
                  andi         a0, t6, -496
                  srli         ra, s6, 27
76:               sltu         t5, zero, s8
                  auipc        s5, 934361
                  xor          s8, s1, t3
                  or           s9, a6, t4
                  nop
                  bltu         s6, t3, 97f
                  srli         gp, s3, 8
                  lui          s2, 111911
                  srai         s6, s10, 27
                  auipc        gp, 486236
                  or           t2, t1, gp
                  andi         t2, a2, 132
                  slti         s0, a1, -1312
                  xori         a2, a3, -657
                  addi         t4, a7, -1651
                  srl          gp, a4, a3
                  bge          gp, a7, 97f
                  andi         tp, a0, 125
                  beq          tp, ra, 101f
                  andi         a2, s0, -929
                  slti         t5, zero, -470
97:               xori         s10, s5, -660
                  ori          s9, s4, 289
                  xori         s1, s1, 1964
                  andi         t4, tp, -1536
101:              beq          s6, zero, 121f
                  lui          t4, 934230
                  srl          s7, a6, s7
                  beq          s8, a4, 115f
                  bne          s10, t4, 112f
                  sra          t3, s5, zero
                  bne          a7, t4, 113f
                  nop
                  xori         gp, a6, 186
                  and          t5, a1, s10
                  or           a6, t4, gp
112:              nop
113:              srai         s0, t3, 4
                  xori         t5, a6, 1153
115:              slli         a1, t2, 13
                  blt          ra, s9, 117f
117:              srli         t2, s2, 22
                  srli         s8, t3, 2
                  la           sp, region_0+734 #start riscv_load_store_rand_instr_stream_0
                  sb           s0, 7(sp)
                  lb           s2, -4(sp)
                  srai         s1, s9, 17
                  srl          s9, t0, gp
                  andi         s6, tp, -1195
                  lui          t1, 895579
                  lbu          ra, -13(sp)
                  srl          s5, t6, s3
                  lb           a7, -3(sp)
                  slt          a5, s8, a1
                  sb           gp, -2(sp)
                  lhu          a5, -10(sp)
                  srai         s2, a4, 10
                  sra          s5, s9, a1
                  slt          s6, tp, s7
                  lbu          s8, 15(sp)
                  sltu         s6, s1, a6
                  srl          ra, zero, zero
                  nop
                  sb           s9, -11(sp)
                  auipc        gp, 336293
                  slt          t1, s2, a5
                  lbu          t3, -11(sp)
                  sw           t5, -6(sp)
                  xori         a3, a7, -2004
                  lb           a7, 15(sp)
                  andi         a2, a5, -1250
                  sltu         s7, t5, t3
                  lb           t2, -15(sp)
                  lb           s5, -15(sp)
                  lb           t3, -15(sp)
                  lh           s6, -14(sp)
                  or           tp, s4, s11
                  xori         s9, s9, -1687
                  sb           t6, -15(sp)
                  lb           t4, 15(sp)
                  lbu          a2, -12(sp)
                  lbu          s2, 3(sp)
                  lb           s9, -15(sp)
                  lb           ra, 2(sp)
                  sra          t4, gp, tp
                  slt          a5, t6, sp
                  lh           s4, 10(sp)
                  sb           a7, 2(sp)
                  sb           t0, 13(sp)
                  srai         s2, t6, 14
                  sub          s2, a3, s6
                  ori          zero, a6, -1616
                  ori          a3, s1, -544
                  auipc        t0, 805169
                  sll          s1, a7, a7
                  sh           s4, 6(sp)
                  lb           a5, -4(sp)
                  lh           t3, -4(sp)
                  sh           t3, 12(sp)
                  sh           zero, -16(sp)
                  sh           s6, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  andi         s8, a1, -855
                  lui          a2, 295507
121:              lui          sp, 200780
                  beq          a3, s6, 127f
                  xori         a2, t3, 1383
                  nop
                  addi         a5, s7, -423
                  xori         s9, s0, -901
127:              add          a2, t3, gp
                  auipc        zero, 105392
                  nop
                  slli         t2, a4, 27
                  and          s8, a3, s1
                  srai         zero, s5, 4
                  slli         a6, gp, 27
                  srl          a5, t2, a0
                  addi         s1, t1, -918
                  sll          t5, s1, a5
                  srli         t3, t3, 6
                  bgeu         t4, s10, 150f
                  sltiu        t6, s6, 1627
                  and          ra, s7, s6
                  srl          s1, t6, a6
                  srai         s5, s10, 7
                  sltu         a0, t2, s10
                  addi         a3, s9, -568
                  srl          gp, s4, t5
                  sltu         t1, s2, s2
                  auipc        a1, 951688
                  nop
                  bltu         s2, s0, 152f
150:              blt          tp, t6, 156f
                  beq          t3, t5, 157f
152:              slli         s5, a1, 13
                  lui          zero, 445668
                  sltiu        a0, s0, -1950
                  add          a7, a1, s11
156:              auipc        sp, 867084
157:              sub          tp, t4, t6
                  bge          a2, t1, 163f
                  slt          a2, t3, t0
                  sub          t4, gp, zero
                  slli         s5, s6, 3
                  bge          s5, t3, 177f
163:              srai         s9, s2, 21
                  lui          s7, 796374
                  or           s9, a2, a6
                  blt          t6, s6, 175f
                  xori         s1, tp, -1023
                  bltu         s8, t4, 186f
                  srai         zero, a6, 6
                  bgeu         a1, t1, 173f
                  sltiu        a6, sp, -1562
                  or           gp, t4, t3
173:              blt          tp, s8, 177f
                  slli         a1, a1, 5
175:              bge          s3, s0, 184f
                  bne          s3, a5, 184f
177:              sll          t5, s3, t6
                  srli         t2, t2, 0
                  bgeu         s10, t2, 194f
                  and          zero, t4, s11
                  sra          s9, s9, tp
                  sltu         a3, s0, sp
                  nop
184:              bltu         tp, s5, 191f
                  slti         a3, s3, 537
186:              bgeu         t5, ra, 195f
                  srli         a0, s10, 5
                  add          a5, ra, a4
                  xori         ra, t6, 1635
                  auipc        a7, 805425
191:              sra          ra, a6, s8
                  blt          a7, tp, 212f
                  sra          a2, a3, zero
194:              xori         t3, s6, 1640
195:              srli         s1, t4, 2
                  slt          s2, a5, zero
                  sltu         gp, s11, zero
                  srai         a7, s7, 6
                  srai         a0, sp, 9
                  bge          ra, s11, 205f
                  slli         s9, gp, 14
                  sll          s7, gp, s1
                  bgeu         t1, s6, 219f
                  sub          t3, tp, tp
205:              slli         t6, t3, 5
                  xori         s5, s0, 987
                  bltu         s7, s7, 221f
                  and          s1, s1, s6
                  blt          s4, s5, 210f
210:              sub          s10, zero, sp
                  sltiu        s5, tp, 1108
212:              sll          s8, s11, a0
                  lui          s9, 419870
                  addi         s8, gp, -105
                  bltu         t0, t5, 226f
                  blt          sp, s7, 221f
                  andi         t2, t6, 1826
                  andi         t6, gp, 1057
219:              xor          s7, s0, s0
                  sub          s5, s9, s2
221:              sltu         s2, s1, s3
                  slt          a6, t5, t6
                  bne          s1, s11, 228f
                  xori         s8, s0, -1984
                  bne          t4, s2, 237f
226:              addi         a7, s7, -1603
                  ori          gp, sp, 451
228:              xori         s6, a0, -416
                  addi         t4, sp, 886
                  srl          s7, s5, a4
                  srli         tp, t0, 2
                  sub          t1, a4, t0
                  bltu         s11, s5, 238f
                  bgeu         s4, t4, 241f
                  slli         tp, s9, 22
                  bge          ra, t0, 246f
237:              or           a6, a2, s11
238:              nop
                  auipc        a2, 872253
                  xor          t5, sp, s4
241:              srl          s5, t4, s5
                  bge          a2, a2, 257f
                  or           sp, a3, a0
                  slti         s10, a6, 1558
                  slti         t6, a4, 1441
246:              slli         s5, a3, 20
                  and          s7, a0, t3
                  add          a5, zero, s3
                  addi         a2, s9, 1305
                  nop
                  blt          t5, s11, 271f
                  sub          s5, gp, s6
                  beq          a1, tp, 267f
                  add          tp, s1, s10
                  or           s1, s10, t5
                  srl          a1, zero, a2
257:              sll          s0, s0, s6
                  beq          a5, a7, 264f
                  lui          tp, 507759
                  xori         s7, gp, 1712
                  xor          t5, s9, a0
                  slt          a2, a1, s10
                  sub          a0, a1, s6
264:              slt          t0, gp, s11
                  andi         tp, t5, 1327
                  andi         s6, s2, -1213
267:              or           t6, t5, a0
                  and          s4, t3, a5
                  bltu         t2, s9, 281f
                  slti         t1, s11, 907
271:              sltiu        zero, a2, -1809
                  bne          a0, s6, 278f
                  srli         sp, ra, 6
                  sltiu        t5, a2, 1143
                  srl          t2, a4, a6
                  andi         a2, t2, -773
                  sltiu        s1, a7, 139
278:              bge          t5, t0, 284f
                  bgeu         a0, s5, 296f
                  and          a2, a5, a7
281:              sltu         a6, a0, ra
                  xori         t1, s8, 1878
                  xor          s8, s6, a5
284:              bltu         s7, tp, 285f
285:              ori          s7, sp, -1102
                  slt          a2, tp, a5
                  or           t1, t6, sp
                  sltu         s0, s3, t0
                  andi         a7, s7, -411
                  slli         tp, s9, 24
                  blt          zero, t2, 304f
                  bgeu         gp, zero, 293f
293:              sll          a3, a5, s7
                  sltiu        ra, ra, 220
                  sub          sp, sp, s7
296:              bne          a1, t1, 299f
                  bge          a0, t4, 311f
                  srai         a2, ra, 8
299:              bge          a7, a7, 314f
                  blt          s7, s0, 313f
                  sll          s6, a3, a0
                  sltu         t0, a1, a4
                  sub          s0, a3, zero
304:              slt          ra, s8, a2
                  bne          a1, s6, 306f
306:              srl          t3, tp, ra
                  xor          s2, a4, a0
                  srli         s9, s0, 27
                  slti         tp, s1, -315
                  sra          s1, t2, s7
                  addi         gp, gp, 376
                  ori          a6, s9, -763
                  sltiu        a7, t4, -1930
                  sll          gp, s7, a7
                  sra          s9, a0, s5
                  sra          a6, tp, gp
                  sra          s6, t1, a6
                  sltu         ra, t2, tp
sub_3_j7:         jal          s6, sub_5 #jump sub_3 -> sub_5
                  sub          ra, a3, s7
                  bge          s3, s8, 325f
311:              slti         s7, s10, 1342
                  sltu         ra, t4, a5
313:              or           a0, s5, t4
314:              blt          s11, zero, 332f
                  bltu         s8, sp, 321f
                  ori          t4, s8, 1867
                  bltu         s4, a7, 324f
                  sra          a0, tp, sp
                  beq          s8, tp, 324f
                  andi         tp, a0, 1901
321:              sub          gp, s2, s5
                  srl          t1, t0, s6
                  lui          s2, 573001
324:              bne          zero, s6, 329f
325:              nop
                  ori          zero, a1, -939
                  add          s0, tp, s11
                  sltiu        t6, tp, 340
329:              bge          t5, s1, 333f
                  sll          s2, a2, s8
                  sra          s9, s10, s3
332:              sub          t3, s0, s10
333:              auipc        t6, 208530
                  xor          a1, a7, t3
                  and          a7, t5, t3
                  andi         s0, s8, -1233
                  xor          s7, a2, s0
                  bltu         a1, a3, 358f
                  lui          tp, 861542
                  srai         zero, a7, 3
                  bltu         s6, a3, 350f
                  sll          s0, t4, t4
                  lui          t5, 851791
                  bne          s3, s0, 349f
                  srli         s1, s5, 30
                  slt          t4, ra, t6
                  addi         a1, a1, -1120
                  lui          s2, 585530
349:              srli         t5, a3, 8
350:              srli         t6, a1, 30
                  ori          t4, t1, 2007
                  auipc        s5, 282468
                  lui          s1, 575306
                  sra          s6, a7, t0
                  or           zero, s2, a5
                  or           s10, t5, s9
                  slli         s5, a7, 7
358:              or           gp, s1, t5
                  ori          s0, sp, -288
                  srl          sp, s8, s4
                  bltu         t6, a5, 367f
                  bltu         s0, a2, 374f
                  sra          t5, a2, t5
                  srai         s8, a6, 31
                  bge          s0, a1, 385f
                  lui          sp, 435046
367:              addi         s2, s3, 779
                  addi         t1, t1, -1007
                  andi         s8, s5, 229
                  auipc        a1, 819331
                  sltiu        s2, t3, -854
                  slli         t5, t1, 6
                  blt          t1, a4, 382f
374:              srli         t4, t5, 17
                  add          a2, s4, a1
                  bne          t3, a2, 392f
                  sub          s8, t0, t5
                  bltu         s0, s1, 384f
                  ori          s6, s0, 1455
                  srl          s4, s10, tp
                  sltiu        s10, a2, 916
382:              xor          a6, a0, s11
                  slt          gp, s1, t3
384:              slli         a0, t4, 8
385:              or           t4, s7, a5
                  or           a5, t6, s3
                  nop
                  bge          ra, t3, 399f
                  bgeu         a2, t4, 396f
                  sub          ra, s0, s1
                  lui          sp, 869981
392:              xori         t2, s10, 1122
                  beq          t0, t2, 403f
                  xori         s4, s5, 219
                  la           t0, sub_7
                  srli         s6, s6, 8
                  sltu         a7, s10, a2
                  addi         t0, t0, 558
                  auipc        s4, 537281
                  sra          tp, gp, s11
                  add          s2, a2, sp
sub_3_j8:         jalr         s6, t0, -558 #jump sub_3 -> sub_7
                  bltu         s9, s10, 409f
396:              sub          ra, t5, zero
                  xori         a5, t4, -319
                  beq          a1, s7, 403f
399:              slt          t6, t2, s8
                  sra          s8, s11, gp
                  slli         s2, s6, 17
                  xori         t4, s2, 1840
403:              sra          ra, a6, s8
                  blt          s4, s0, 412f
                  la           s6, sub_6
                  sltiu        t1, a7, -1961
                  addi         s6, s6, 552
                  srl          s8, s9, a4
                  xor          s0, s2, a1
                  ori          s0, a2, 777
                  andi         t6, s8, 1665
                  slli         t0, a2, 3
                  bne          a5, zero, sub_3_j9 #branch to jump instr
                  sll          s5, s0, a0
sub_3_j9:         jalr         s6, s6, -552 #jump sub_3 -> sub_6
                  xori         a3, s4, -896
                  add          gp, a5, s6
                  add          a0, s5, s7
                  sub          a0, s3, s1
409:              sltiu        t0, a6, -277
                  slli         a1, s6, 9
                  sltiu        t2, s5, -1717
412:              slli         s7, ra, 6
                  xor          s5, sp, s4
                  blt          a2, a3, 426f
                  andi         s1, a3, -139
                  xor          sp, s4, s6
                  beq          s11, a6, 434f
                  bne          t6, s7, 424f
                  or           a3, a0, s2
                  nop
                  srai         s4, a0, 8
                  slli         a5, t2, 1
                  sra          a7, s10, t3
424:              auipc        s8, 533572
                  bge          t3, a7, 428f
426:              srai         zero, s5, 23
                  bge          s7, s10, 447f
428:              lui          t6, 859798
                  lui          a3, 506978
                  sub          gp, a3, t3
                  slt          t2, t1, t2
                  bgeu         a1, ra, 437f
                  andi         sp, s2, 370
434:              or           s1, s11, t4
                  beq          s8, s2, 451f
                  add          zero, a0, s4
437:              beq          s1, s6, 450f
                  sltiu        s5, t5, 387
                  beq          a6, s10, 440f
440:              xori         ra, a6, -324
                  slt          ra, t6, t5
                  xor          t4, t0, zero
                  lui          s2, 674247
                  auipc        s5, 565700
                  sltiu        t0, zero, -1042
                  srli         a0, s5, 28
447:              addi         t0, a4, 315
                  and          s4, tp, a4
                  addi         t6, s4, 542
450:              and          a5, t2, a2
451:              sra          s2, tp, s8
                  add          a7, t2, ra
                  beq          t5, gp, 458f
                  srai         gp, a0, 28
                  slti         s0, a3, -331
                  srai         a0, t3, 5
                  andi         a0, s7, -430
458:              andi         s8, a3, 1810
                  srai         s6, t6, 4
                  ori          s2, a2, 830
                  sub          s2, t5, a6
                  sltu         a5, s2, a7
                  slli         sp, s8, 11
                  sra          t5, t0, a6
                  sra          t2, tp, t1
                  slti         zero, a6, -1757
                  lui          a7, 621854
                  and          t4, a5, ra
                  auipc        s6, 633780
                  sltu         s4, tp, s1
                  bgeu         s3, s9, 475f
                  andi         t4, a5, 1497
                  slli         s6, s9, 18
                  sra          t3, a6, s1
475:              sub          a6, zero, s10
                  auipc        zero, 324781
                  bge          a5, s5, 489f
                  bge          a5, a6, 487f
                  bne          a7, t3, 494f
                  andi         a3, s4, 452
                  sltu         s9, t6, ra
                  slti         s8, a1, 940
                  auipc        t0, 235554
                  andi         sp, t5, 1566
                  srl          t5, t1, s2
                  bgeu         s11, a5, 491f
487:              sltiu        t0, s11, 212
                  nop
489:              sltiu        s10, s5, -61
                  beq          ra, s5, 498f
491:              xori         t1, s11, -1582
                  addi         a6, a4, 157
                  bltu         t5, tp, 494f
494:              sub          tp, s8, zero
                  bge          t1, a1, 507f
                  lui          t3, 110390
                  add          s9, s1, s0
498:              blt          t2, t3, 503f
                  nop
                  nop
                  or           s5, a5, t4
                  add          sp, s6, a3
503:              slt          a2, a2, t4
                  bge          s3, t1, 511f
                  beq          t2, s7, 523f
                  xori         s6, gp, 374
507:              srl          s2, tp, gp
                  slti         tp, s3, -1767
                  blt          t4, s10, 529f
                  xori         a5, gp, -1263
511:              sltu         t3, gp, gp
                  addi         s6, t2, -1355
                  sub          s0, a1, a3
                  sltiu        s8, a1, 1679
                  sltu         a6, s1, a1
                  lui          s4, 242730
                  or           s2, gp, t5
                  slt          gp, a1, a1
                  ori          s10, t2, -976
                  srli         s9, a5, 11
                  srl          t5, s11, a3
                  slti         a0, a4, 638
523:              bgeu         a3, a3, 537f
                  slti         a7, sp, -1671
                  bge          s7, tp, 531f
                  addi         t1, zero, 444
                  bgeu         zero, a7, 538f
                  beq          s11, t3, 535f
529:              sra          s10, s8, a3
                  addi         a1, s7, -1107
531:              srl          s2, t6, a6
                  bne          a6, t4, 542f
                  ori          s6, t5, -807
                  addi         a3, s7, 405
535:              nop
                  ori          a2, gp, -210
537:              addi         a6, t4, -295
538:              sra          t5, s3, sp
                  sltu         a3, s11, zero
                  srai         a0, t6, 4
                  or           a5, a4, t2
542:              bltu         t0, s9, 548f
                  srli         a0, s8, 31
                  sll          a1, a7, t0
                  bgeu         s6, s8, 554f
                  slli         s2, tp, 11
                  bne          s10, a5, 564f
548:              srai         s4, t6, 12
                  sll          t6, sp, s11
                  and          tp, gp, s11
                  or           s0, t4, s11
                  bge          a0, a1, 567f
                  or           a6, sp, a5
554:              add          t0, s8, s3
                  bgeu         a4, s4, 569f
                  bne          t2, a6, 570f
                  xor          t3, ra, t0
                  or           s1, s8, a4
                  andi         a7, s6, -1810
                  sll          a1, s7, s8
                  bltu         zero, s0, 579f
                  srli         t2, t1, 23
                  sltiu        s1, a0, -54
564:              blt          s6, zero, 570f
                  andi         t5, s10, 1767
                  bgeu         s4, a1, 577f
567:              or           sp, s8, t2
                  blt          gp, a0, 582f
569:              bge          sp, s9, 575f
570:              ori          t4, s2, 1788
                  sll          s0, a4, gp
                  sub          t2, a5, a2
                  beq          tp, t6, 585f
                  and          a5, s4, t3
575:              bgeu         t5, s10, 576f
576:              and          s2, zero, s2
577:              srai         a7, ra, 18
                  slli         t2, s7, 1
579:              beq          a0, a3, 594f
                  blt          tp, a7, 597f
                  sll          t4, s8, s5
582:              addi         s10, a1, 595
                  bne          t5, a5, 592f
                  bgeu         ra, a1, 596f
585:              add          s0, t2, s6
                  srai         s2, zero, 2
                  srai         s8, a7, 19
                  add          t6, t3, s4
                  andi         a5, t4, 373
                  blt          s3, t3, 600f
                  sll          sp, a7, t6
592:              srli         t5, ra, 19
                  lui          gp, 798574
594:              xori         s6, s1, -785
                  sltu         a0, t4, sp
596:              ori          t2, s0, 762
597:              sub          s0, t1, a5
                  sra          s4, a6, t0
                  xori         a7, s8, 892
600:              beq          a1, gp, 601f
601:              xori         s10, s9, -712
                  slt          s4, a0, a1
                  or           t4, t2, s2
                  xor          s1, t5, tp
                  slli         s4, a1, 5
                  bge          sp, a0, 611f
                  add          s0, zero, s8
                  slt          s7, s8, s1
                  andi         a6, a2, 1258
                  blt          s2, t4, 630f
611:              andi         s2, s9, 15
                  srli         a0, s10, 25
                  srai         t3, gp, 22
                  sra          zero, t4, t1
                  sltu         s0, t2, t2
                  bge          s5, s7, 623f
                  bgeu         t4, tp, 620f
                  blt          t5, ra, 634f
                  bltu         a0, a2, 624f
620:              bne          a7, s8, 628f
                  beq          t5, a4, 627f
                  sub          t6, a7, tp
623:              and          s7, a4, t3
624:              sltiu        a0, s1, 1894
                  slt          t0, s2, t0
                  bge          t1, s9, 639f
627:              nop
628:              sltu         ra, tp, t2
                  bltu         t4, s8, 634f
630:              nop
                  add          t6, t0, s4
                  bge          s9, a4, 641f
                  addi         t5, tp, -1110
634:              and          ra, a1, a1
                  sll          a2, a2, a6
                  add          a3, zero, t0
                  bge          tp, s4, 642f
                  blt          a3, zero, 658f
639:              or           sp, s6, s8
                  srai         gp, a4, 26
641:              srl          a1, t3, a2
642:              and          t6, s1, t5
                  blt          a1, a3, 658f
                  sub          tp, s7, s10
                  ori          s2, gp, -1380
                  srai         t4, s8, 7
                  xor          s7, ra, a3
                  bgeu         s4, a4, 655f
                  xor          t2, a0, ra
                  add          t6, t1, tp
                  blt          tp, a1, 655f
                  srai         a2, sp, 27
                  sll          sp, s9, t6
                  ori          a2, t2, -730
655:              srl          a6, a0, sp
                  slt          a2, s3, s1
                  sltiu        tp, s10, 1688
658:              nop
                  sll          t3, a7, t1
                  blt          s10, a4, 676f
                  bltu         a2, gp, 678f
                  slli         s0, tp, 0
                  slli         t4, t3, 24
                  blt          s10, s7, 678f
                  add          a0, s6, a3
                  or           s10, s11, s1
                  slt          s0, s10, a7
                  sltu         s10, s4, s11
                  blt          a7, t0, 687f
                  add          tp, s9, s5
                  andi         t1, a7, 168
                  ori          tp, s7, -1469
                  bge          s7, s4, 686f
                  bge          tp, s11, 680f
                  sltu         t0, t5, s9
676:              bne          t3, s8, 684f
                  add          a5, s3, t3
678:              lui          t3, 346105
                  bge          t0, a0, 680f
680:              sltiu        t6, ra, -561
                  nop
                  xor          t2, t3, s6
                  sll          a3, t6, a4
684:              sltu         s2, t6, s3
                  lui          a3, 174301
686:              or           tp, zero, a1
687:              bne          s2, s4, 693f
                  sltiu        t4, a3, 721
                  bne          s3, s6, 709f
                  sltu         s5, s1, t5
                  sub          tp, sp, zero
                  xori         t5, s10, -1266
693:              nop
                  bltu         zero, a0, 709f
                  blt          s11, gp, 702f
                  slli         s6, sp, 3
                  slli         t0, t0, 2
                  srli         s5, s11, 30
                  bge          s10, gp, 704f
                  sra          t6, s7, s3
                  nop
702:              andi         t6, a2, -1035
                  beq          sp, s8, 704f
704:              sra          s9, t0, t3
                  srl          zero, a4, s11
                  sll          t2, t6, s6
                  slt          a0, t3, a1
                  or           tp, t6, s2
709:              ori          s1, sp, -1488
                  ori          t2, a6, -1907
                  nop
                  srli         a1, s11, 22
                  sltiu        a0, s5, 1322
                  bltu         t2, a6, 719f
                  xori         s5, zero, 1823
                  sltu         zero, s11, s4
                  srli         s4, a3, 5
                  slli         a7, s4, 27
719:              slti         a1, a6, 688
                  xor          s2, zero, t4
                  srl          s7, t2, a0
                  add          s8, s3, s11
                  slt          a3, t6, s7
                  nop
                  add          s0, a4, t0
                  or           s5, ra, a0
                  nop
                  slti         t6, t4, 484
                  bgeu         t5, t5, 734f
                  blt          t3, s6, 742f
                  sltiu        s0, t5, 1695
                  sltiu        s4, a0, 1206
                  andi         s4, t4, -826
734:              blt          t5, s4, 744f
                  bge          s0, a4, 741f
                  xori         gp, a6, 1433
                  add          a3, s7, gp
                  or           t1, tp, s0
                  bne          gp, a6, 748f
                  srai         s6, a5, 26
741:              sltiu        tp, s4, 658
742:              srli         zero, a4, 2
                  slti         a7, a0, 91
744:              xori         gp, zero, -1487
                  srai         t5, a0, 25
                  srli         a0, tp, 26
                  slti         t2, s0, -910
748:              nop
                  blt          t6, a6, 764f
                  xori         s4, s11, 1652
                  auipc        a3, 685311
                  blt          t4, sp, 756f
                  srli         t0, t3, 29
                  sltu         s6, t6, a7
                  srai         a3, t5, 19
756:              sra          a0, zero, t0
                  slli         t6, s8, 23
                  xori         a5, gp, -768
                  nop
                  blt          s5, t6, 769f
                  bne          s2, sp, 775f
                  bge          a2, zero, 767f
                  beq          s2, t6, 766f
764:              bltu         t6, t2, 771f
                  nop
766:              lui          s2, 471797
767:              ori          s0, tp, 1025
                  slli         zero, s4, 3
769:              and          t1, s2, zero
                  blt          t2, zero, 790f
771:              srl          a3, a6, s6
                  slti         t4, t1, 1745
                  xor          t0, zero, tp
                  sltiu        t6, s7, -669
775:              sltiu        gp, s5, 1280
                  andi         a2, t2, 1729
                  srli         a5, s7, 15
                  sub          s9, a5, t3
                  xori         s6, a6, 1500
                  andi         gp, a7, -813
                  sltiu        t6, t0, 189
                  sub          s10, s10, tp
                  nop
                  blt          t3, s0, 796f
                  and          s2, a3, sp
                  blt          a0, s10, 797f
                  addi         s9, a7, -528
                  sub          zero, s6, ra
                  bne          a0, t0, 805f
790:              srli         s4, tp, 29
                  bgeu         t4, t2, 796f
                  xori         sp, a6, 1430
                  ori          a7, t6, -670
                  sll          t6, a2, s6
                  srai         t5, t2, 2
796:              andi         a5, ra, 1075
797:              slti         s4, a4, 1853
                  sltu         a2, a1, s3
                  srli         tp, s3, 0
                  add          s7, a4, tp
                  andi         a0, s11, -679
                  bne          t2, a4, 805f
                  sltiu        t6, a1, 1483
                  xori         a3, s3, 1559
805:              bge          t6, ra, 817f
                  lui          a1, 976803
                  slti         gp, a3, 1945
                  xori         a1, s6, -392
                  and          s7, s4, s10
                  add          t1, s7, s0
                  slti         s4, s5, 376
                  sltiu        tp, a1, 1628
                  andi         t3, ra, 366
                  addi         s0, t0, -36
                  nop
                  andi         t6, ra, -823
817:              slti         ra, zero, 953
                  bgeu         a1, t6, 833f
                  xor          a5, t1, a3
                  slti         s8, s6, 95
                  sltu         t2, s1, s7
                  or           zero, a4, a4
                  slt          t1, s6, s6
                  sra          s5, a4, a5
                  slli         t1, zero, 2
                  auipc        t0, 897439
                  srl          zero, t3, s9
                  slt          sp, ra, ra
                  sll          t0, a1, s6
                  ori          a6, s4, 1500
                  slt          s2, a4, t2
                  xor          t1, s10, sp
833:              nop
                  beq          t5, s9, 841f
                  blt          a1, a2, 855f
                  srai         s10, a3, 2
                  slt          a7, zero, t5
                  auipc        s0, 564151
                  sll          t4, a2, t6
                  srl          t0, t4, t4
841:              blt          s5, zero, 846f
                  nop
                  bltu         s4, t3, 848f
                  bge          t2, a7, 851f
                  xor          a2, a7, t5
846:              sltu         a1, sp, gp
                  or           gp, ra, t5
848:              slt          t4, s4, t5
                  ori          a5, ra, 1592
                  beq          sp, s3, 856f
851:              addi         tp, t3, -328
                  bgeu         s8, s10, 853f
853:              sltu         s5, s9, sp
                  xor          sp, ra, gp
855:              sub          t3, a7, zero
856:              add          s8, s7, s5
                  bne          a2, t1, 866f
                  ori          s5, s9, 546
                  beq          a5, t5, 870f
                  sltu         s2, tp, s5
                  srl          a0, a4, a6
                  sll          ra, s4, t3
                  lui          a5, 610320
                  slt          gp, t4, s2
                  sub          a0, s1, gp
866:              blt          s8, ra, 879f
                  auipc        s6, 810272
                  sub          s2, a7, s7
                  ori          t1, t6, -1551
870:              ori          s6, t0, -458
                  nop
                  or           s0, s2, t4
                  lui          ra, 1736
                  beq          s9, a0, 882f
                  bge          a6, s3, 879f
                  auipc        a7, 997831
                  andi         s10, a5, 903
                  auipc        t3, 756522
879:              xor          s10, a7, s8
                  xori         s0, s9, 680
                  and          t4, s5, a1
882:              or           t4, s3, a4
                  slti         s8, s4, 370
                  xori         zero, s10, -1356
                  srai         s0, s4, 25
                  slti         tp, s2, 1958
                  sra          a6, s8, ra
                  srl          s6, sp, a4
                  nop
                  addi         s10, a4, 253
                  andi         a6, t6, 160
                  auipc        s2, 78130
                  bne          a1, s0, 903f
                  bgeu         s3, s8, 906f
                  sltu         a7, a3, s4
                  beq          s6, t0, 897f
897:              add          a5, a4, s8
                  slli         sp, a7, 18
                  ori          t1, s8, 1624
                  sltiu        s1, a3, 340
                  sltu         a5, s11, t3
                  addi         tp, a7, 501
903:              auipc        a6, 148813
                  sub          sp, s11, t1
                  ori          a3, s4, -1622
906:              sltu         s1, a2, a4
                  xor          s6, s8, s0
                  or           s4, zero, a2
                  bge          a5, s6, 918f
                  bltu         t5, sp, 924f
                  slt          t4, a4, s3
                  and          s10, ra, ra
                  lui          t5, 446058
                  slli         s6, s0, 24
                  and          t0, s4, a5
                  beq          t6, s3, 930f
                  xori         t5, s8, -1222
918:              bgeu         s4, s7, 924f
                  bne          gp, s3, 936f
                  lui          s2, 124587
                  sra          s4, t1, t3
                  lui          t4, 407989
                  auipc        a6, 528648
924:              sll          ra, s8, gp
                  lui          a7, 692853
                  sltiu        tp, s10, -1878
                  bne          zero, s11, 942f
                  beq          a5, gp, 943f
                  srai         a3, s6, 10
930:              auipc        gp, 200534
                  beq          zero, sp, 943f
                  ori          t3, ra, 586
                  slti         a7, s4, 367
                  srl          t1, t0, gp
                  slli         t6, tp, 2
936:              auipc        ra, 48846
                  ori          a0, s11, 148
                  slti         t5, s8, 1009
                  or           s5, s3, zero
                  bne          a2, s9, 943f
                  slli         tp, a1, 25
942:              slt          s4, tp, tp
943:              or           s6, a4, s8
                  lw           s6, 4(a4)
                  sltiu        t1, tp, 128
                  addi         a4, a4, 36
                  or           sp, a3, a0
                  nop
                  sltiu        tp, a1, 451
                  or           s7, tp, a1
1304:             addi x21, x22, 1
1304:             jalr x21, x21, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x27, x14, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x31, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x31, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x31, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x31, x16, ecall_handler
                  li x16, 0x1
                  beq x31, x16, instr_fault_handler
                  li x16, 0x5
                  beq x31, x16, load_fault_handler
                  li x16, 0x7
                  beq x31, x16, store_fault_handler
                  li x16, 0xc
                  beq x31, x16, pt_fault_handler
                  li x16, 0xd
                  beq x31, x16, pt_fault_handler
                  li x16, 0xf
                  beq x31, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x14, x27, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
