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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x22, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xc6d2f328
                  li x4, 0xd6fa39fe
                  li x5, 0xa
                  li x6, 0x78ee6d4f
                  li x7, 0x31b8ae9a
                  li x8, 0x6
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xf23fb181
                  li x13, 0xfb7e4ded
                  li x14, 0x4
                  li x16, 0x6
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x8
                  li x21, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x3
                  li x26, 0x2
                  li x27, 0x6
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xf03ce710
                  li x31, 0x2
                  la x15, user_stack_end
main:             la           t0, region_1+649 #start riscv_load_store_rand_instr_stream_0
                  sra          s4, a5, a4
                  lui          t4, 464835
                  xor          s9, t0, s0
                  lbu          a4, 16(t0)
                  lb           a3, -7(t0)
                  sb           s2, -10(t0)
                  lbu          sp, 1(t0)
                  lbu          a6, -50(t0)
                  srai         a3, a0, 27
                  lb           s1, -35(t0)
                  lh           s2, -19(t0)
                  sltu         a1, a3, s6
                  lh           s0, -41(t0)
                  lh           s3, 25(t0)
                  sh           s5, 9(t0)
                  sb           s2, 36(t0)
                  lb           s0, -22(t0)
                  andi         t6, a2, 1744
                  xor          s0, s3, t0
                  lh           s8, 49(t0)
                  slli         s8, a3, 3
                  sb           a2, 0(t0)
                  lbu          a2, -5(t0)
                  sb           a5, 18(t0)
                  sb           sp, 2(t0)
                  lui          s10, 776852
                  xori         a7, s0, 1
                  lh           s0, 3(t0)
                  sb           gp, 53(t0)
                  lw           s8, -37(t0)
                  lw           s2, 27(t0)
                  and          s9, s10, t1
                  sw           zero, 7(t0)
                  addi         s3, s1, 1632
                  sltiu        a7, t1, 366
                  sb           t0, -22(t0)
                  lh           t3, 51(t0)
                  lhu          s3, -39(t0)
                  lh           gp, 37(t0)
                  or           s4, a1, s4
                  sb           a4, 13(t0)
                  srl          sp, t0, s7
                  sra          a6, s5, t3
                  add          sp, t0, s9
                  lbu          a7, 45(t0)
                  andi         zero, tp, -145
                  lb           tp, 47(t0) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+1727 #start riscv_load_store_rand_instr_stream_1
                  sb           t1, -10(t5)
                  slt          t6, a1, a6
                  ori          a4, ra, 432
                  srli         ra, t4, 14
                  lbu          t4, 0(t5)
                  sb           t2, 2(t5)
                  slt          s3, ra, s0
                  nop
                  lbu          s2, 14(t5)
                  sub          a2, s3, a4
                  lh           a1, -11(t5)
                  lui          sp, 975431
                  lbu          t0, 8(t5)
                  lbu          t1, -2(t5)
                  nop
                  sb           s5, -9(t5)
                  lbu          s5, 11(t5)
                  lui          s8, 638142
                  sb           tp, -14(t5)
                  sh           t2, -1(t5)
                  auipc        a6, 147138
                  lb           s0, 16(t5)
                  lhu          t2, -11(t5)
                  srai         t4, s8, 23
                  sub          gp, s8, t0
                  andi         a7, t3, 1597
                  sra          a7, s8, gp
                  lbu          a4, -14(t5)
                  lb           s10, 8(t5)
                  sub          t0, t4, s3
                  lhu          t6, 15(t5)
                  sb           a7, 2(t5)
                  lb           tp, 14(t5)
                  lb           t6, 8(t5)
                  sb           s3, -16(t5)
                  nop
                  lbu          a3, 12(t5)
                  sra          a4, a0, a0
                  or           s1, t1, sp
                  lui          sp, 120904
                  sltiu        a0, s2, 1450
                  sb           zero, -4(t5)
                  lb           s3, 3(t5)
                  andi         gp, a2, 1679
                  sltu         s2, s8, t1
                  sltu         s11, a3, a0
                  lbu          s9, 12(t5)
                  sh           s7, -3(t5)
                  lb           sp, -12(t5)
                  add          s2, t0, t0
                  lbu          sp, 15(t5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+212 #start riscv_load_store_rand_instr_stream_2
                  lui          a7, 845951
                  lbu          t3, 7(sp)
                  lb           s3, 46(sp)
                  lbu          ra, 7(sp)
                  sll          t1, a0, s2
                  lhu          a4, 36(sp)
                  ori          a2, gp, -1076
                  sh           s7, 2(sp)
                  addi         a3, s10, -454
                  lb           a4, 17(sp)
                  lbu          gp, 49(sp)
                  nop
                  nop
                  lw           a4, 36(sp)
                  sltu         a4, s2, s0
                  xor          a0, s10, s11
                  nop
                  sll          a3, a0, sp
                  srai         s2, t5, 26
                  lbu          s8, -7(sp)
                  sub          a1, t3, t1
                  nop
                  sub          a0, tp, s1
                  lhu          s5, 50(sp)
                  slti         a0, s10, 2029
                  slt          s5, s11, s1
                  srai         s5, t0, 20
                  lb           gp, -29(sp)
                  andi         s5, s0, 528
                  andi         t4, s1, -1128
                  and          s8, t6, s7
                  xor          a6, t5, t3
                  sb           s0, 45(sp)
                  lbu          t6, 15(sp)
                  add          a6, s10, gp
                  ori          t5, a1, 1733
                  lw           s5, -40(sp)
                  lb           a7, -7(sp)
                  srl          a3, a3, s0
                  lbu          s3, 17(sp)
                  lbu          t0, 45(sp)
                  sll          a4, s10, t6
                  lh           a2, 48(sp) #end riscv_load_store_rand_instr_stream_2
                  bne          a1, s6, 19f
                  xori         t3, a5, -1519
                  or           t2, ra, t3
                  xori         s1, t1, -313
                  srl          s10, zero, t3
                  bne          zero, a4, 8f
                  srli         s10, s4, 8
                  srl          t5, a4, s8
8:                ori          t0, a2, 759
                  srl          s1, s6, s6
                  nop
                  sltu         t3, a7, s6
                  blt          a6, t6, 26f
                  or           gp, s3, s2
                  srli         s8, t1, 15
                  slli         s1, ra, 5
                  beq          t4, t5, 34f
                  sub          s4, t6, s8
                  sltu         s11, s5, t3
19:               ori          t2, t3, -756
                  bne          s7, a7, 34f
                  add          ra, t3, s9
                  xor          a2, t5, s10
                  sltiu        t4, s8, 1260
                  srli         a7, a3, 24
                  xori         s3, a2, -1746
26:               blt          a6, s4, 36f
                  auipc        s4, 323024
                  beq          s6, a7, 47f
                  slli         a2, a3, 17
                  add          a2, t0, gp
                  ori          t2, ra, 593
                  sltiu        ra, t5, 184
                  slli         t3, a3, 17
34:               bne          zero, s4, 42f
                  slt          s3, s9, s10
36:               sll          a2, ra, zero
                  nop
                  slli         t5, t2, 25
                  sra          t1, t6, s4
                  bltu         s10, s6, 56f
                  bge          a3, a7, 46f
42:               and          a1, s3, t6
                  add          t0, gp, s2
                  bgeu         t2, s8, 46f
                  add          a1, s6, s8
46:               xori         sp, s3, -1550
47:               xori         t4, s2, 1607
                  sra          t2, t0, s6
                  xori         s10, zero, -1292
                  andi         a7, s3, 1072
                  slti         gp, a3, 1636
                  srli         a2, s9, 30
                  srai         s5, s2, 17
                  slti         s5, s3, -730
                  bne          s3, a2, 67f
56:               andi         s10, s3, 253
                  auipc        ra, 319601
                  sll          t6, s8, sp
                  srl          s9, a2, a7
                  srl          s4, zero, a3
                  bne          t1, t4, 72f
                  sltu         ra, t5, s5
                  sltiu        t4, a6, -946
                  slli         a3, s8, 20
                  srl          t5, sp, t2
                  la           s9, sub_1
                  slli         t3, t2, 5
                  sltu         a7, s11, s4
                  xor          s2, s8, s6
                  sll          s4, s11, s6
                  auipc        a4, 385652
                  addi         s9, s9, 171
                  slli         a3, s10, 14
                  add          ra, s3, s11
                  bne          a4, s2, main_j1 #branch to jump instr
                  or           s11, t5, a1
main_j1:          jalr         s3, s9, -170 #jump main -> sub_1
                  sub          gp, a4, a5
67:               sra          s11, a4, t2
                  srl          t1, a1, s2
                  xori         a7, s4, -352
                  andi         s8, zero, -239
                  slt          s11, t0, s7
72:               auipc        a7, 179307
                  bgeu         a0, gp, 81f
                  xor          t6, t2, s10
                  bgeu         ra, s11, 88f
                  blt          zero, s2, 89f
                  srai         ra, s4, 22
                  sra          t3, a7, s0
                  slt          t4, s11, s11
                  or           a6, a4, s6
81:               srli         s4, gp, 14
                  or           gp, s3, t4
                  sra          s11, s11, a3
                  xori         s11, t3, 804
                  bge          a1, s7, 95f
                  srai         t6, t5, 18
                  srli         s8, a6, 22
88:               or           a2, t4, a6
89:               slt          t0, zero, tp
                  lui          gp, 37546
                  beq          a5, a0, 108f
                  sltiu        s9, a3, 1622
                  slti         ra, tp, -271
                  add          gp, t0, s10
95:               srl          s2, s5, t4
                  bne          s3, s4, 98f
                  auipc        s10, 652163
98:               slt          s1, s0, zero
                  sltu         sp, t6, t4
                  srli         zero, sp, 24
                  nop
                  ori          a2, s5, -398
                  nop
                  or           s11, t3, t6
                  bne          a7, s6, 118f
                  addi         t1, a0, -140
                  blt          gp, zero, 116f
108:              bltu         s3, t5, 116f
                  and          s0, s5, sp
                  slti         t4, t0, 1933
                  beq          tp, t1, 112f
112:              slli         a0, a0, 20
                  sltiu        t3, s1, -1514
                  sub          s11, s5, a6
                  sltiu        gp, t0, 1628
116:              sub          tp, s3, a7
                  ori          zero, s1, 1304
118:              sltiu        s1, s4, -1014
                  beq          s1, a5, 120f
120:              xori         t2, s4, 1223
                  xor          s2, s6, a5
                  andi         s8, a5, 690
                  bltu         s0, gp, 133f
                  sltu         s5, s0, s6
                  auipc        t4, 277157
                  sltiu        s3, a1, 561
                  or           s3, a4, t1
                  sub          t4, sp, s1
                  srl          tp, s7, t2
                  sra          s0, a4, a0
                  slti         t5, t3, 1094
                  xori         t0, t5, 197
133:              andi         s3, sp, -1029
                  xor          t2, t4, a0
                  nop
                  addi         gp, s2, -1794
                  ori          s11, a0, -516
                  slt          a6, s7, s9
                  bge          a3, a0, 155f
                  srl          s2, t0, s7
                  andi         s11, s10, 1772
                  sra          s0, t2, s5
                  nop
                  srai         zero, a4, 22
                  slli         a0, s10, 17
                  bge          t1, t3, 156f
                  ori          t1, s11, 1910
                  slli         a0, s6, 6
                  addi         tp, s10, -1687
                  beq          s4, s9, 167f
                  xori         t0, s9, -984
                  sll          a3, t5, t3
                  sub          t3, s11, tp
                  bge          t2, a3, 163f
155:              auipc        t5, 203232
156:              auipc        a2, 842066
                  srai         s8, t3, 8
                  lui          a3, 582622
                  auipc        t5, 8185
                  srli         a2, ra, 0
                  bltu         t1, a3, 174f
                  beq          t4, s9, 172f
163:              auipc        t1, 799671
                  nop
                  blt          t5, t6, 184f
                  srli         s5, s4, 26
167:              srli         gp, s9, 15
                  ori          t6, t5, -735
                  bltu         sp, t5, 182f
                  ori          a4, s10, -1308
                  bltu         t3, sp, 181f
172:              srl          s1, s9, s7
                  bne          a4, s9, 175f
174:              blt          t5, t6, 182f
175:              ori          s10, s10, -1851
                  bne          zero, s1, 184f
                  bne          ra, t3, 191f
                  andi         s5, a7, 869
                  sll          t2, a1, s6
                  srai         a7, sp, 14
181:              addi         s5, s2, -742
182:              nop
                  xor          s5, t3, s6
184:              sll          t5, s6, zero
                  auipc        t3, 840789
                  lui          s10, 277088
                  bge          s10, a5, 203f
                  auipc        t1, 155541
                  sltu         s10, zero, s8
                  bne          tp, t5, 208f
191:              auipc        s2, 803750
                  bltu         s2, ra, 205f
                  andi         s2, s2, 296
                  sub          zero, s3, s0
                  srli         a1, t4, 1
                  srl          s4, t4, a2
                  slt          t2, t5, tp
                  srli         a4, sp, 13
                  sub          sp, t5, t0
                  bne          a7, a4, 205f
                  bne          s3, s6, 204f
                  sltu         gp, s8, s8
203:              srl          s5, a6, s3
204:              and          t3, zero, tp
205:              sltu         t5, a6, s6
                  sltiu        a0, t3, 1648
                  xor          gp, t0, t4
208:              bltu         s2, s6, 225f
                  sll          t6, t0, t5
                  auipc        s1, 644076
                  xori         s3, s8, -1055
                  andi         s10, s1, 883
                  addi         t1, s6, 1037
                  beq          ra, sp, 224f
                  bne          t0, t2, 228f
                  and          t4, s11, s0
                  nop
                  beq          a4, s8, 219f
219:              srai         ra, s1, 13
                  srl          s11, s3, t2
                  bge          t1, a1, 240f
                  bltu         s7, a4, 230f
                  add          s1, s6, a6
224:              auipc        s8, 293537
225:              and          a2, tp, zero
                  or           a1, gp, t5
                  slli         s4, t2, 13
228:              sltu         s10, s2, s11
                  bge          t0, t5, 243f
230:              lui          t1, 448547
                  slti         s0, s7, -1869
                  addi         s8, tp, -1306
                  andi         t0, a4, -618
                  bltu         a6, s9, 235f
235:              addi         s2, s6, -1353
                  add          sp, gp, gp
                  beq          tp, s0, 247f
                  bne          t0, a1, 250f
                  xori         a6, s10, 1047
240:              addi         t6, s0, -918
                  ori          t6, s1, -1809
                  auipc        t1, 929506
243:              add          a7, s10, s2
                  and          a0, a0, t0
                  bne          s2, a6, 247f
                  slti         ra, s6, 249
247:              ori          t0, a0, 978
                  sltiu        a7, s10, 1936
                  sltu         a4, a4, t3
250:              xori         a0, a7, -1615
                  sltu         a2, s11, a2
                  bge          a1, t3, 263f
                  bltu         s4, tp, 269f
                  xor          a0, a3, t2
                  andi         s1, t4, 702
                  sra          a4, s7, s7
                  beq          a7, ra, 270f
                  srli         s5, s4, 23
                  srai         a2, s5, 7
                  or           ra, s10, t2
                  srli         s2, s4, 18
                  slti         a6, a1, 1116
263:              and          a0, t0, a7
                  bge          a2, a6, 273f
                  nop
                  bge          gp, a4, 275f
                  srl          s1, a1, a6
                  srai         t6, s11, 12
269:              bge          zero, tp, 286f
270:              lui          t1, 287926
                  lui          s9, 645096
                  bgeu         s4, s5, 275f
273:              sll          s3, t4, a6
                  lui          s5, 952715
275:              srai         t6, t5, 30
                  sltu         s9, s11, s0
                  add          s4, t1, t3
                  add          s10, s0, a1
                  auipc        a7, 896852
                  slti         s4, sp, -1980
                  auipc        t3, 659649
                  nop
                  auipc        a0, 1022436
                  add          t4, s5, t3
                  sub          s0, s1, t2
286:              sltu         s9, a3, s2
                  slli         tp, s1, 19
                  or           a7, s11, s5
                  xori         sp, t0, -622
                  auipc        a2, 1011609
                  lui          a6, 649660
                  bltu         sp, s3, 301f
                  bne          tp, t6, 306f
                  slti         s8, a1, 29
                  and          a0, s2, ra
                  bltu         a4, t2, 298f
                  andi         t5, t3, 711
298:              srli         a2, t6, 28
                  srli         s1, a3, 10
                  ori          gp, a4, -485
301:              andi         s1, ra, -1408
                  sll          s10, s2, s8
                  slli         a0, t6, 15
                  srai         t4, t0, 25
                  bne          s10, t5, 321f
306:              bge          a5, t2, 316f
                  slti         a1, s5, 1136
                  bne          t4, s6, 309f
309:              srli         s4, a0, 6
                  bge          a1, s8, 320f
                  auipc        a0, 776261
                  sll          t5, s9, a4
                  srai         s8, s7, 12
                  blt          s8, tp, 324f
                  bltu         gp, s5, 320f
316:              nop
                  sub          s9, a3, s6
                  lui          a6, 85569
                  slt          gp, s0, s4
320:              sltu         zero, a3, tp
321:              bne          a4, t3, 335f
                  sub          tp, s9, s0
                  sll          t3, sp, s11
324:              lui          s11, 229101
                  or           s9, a3, a7
                  sll          s8, sp, s2
                  slti         s2, ra, -70
                  sra          a7, s10, zero
                  bgeu         t0, s1, 340f
                  bgeu         a4, a0, 344f
                  srai         a0, s3, 11
                  bltu         a0, s2, 342f
                  add          a7, t2, a1
                  and          t3, sp, a6
335:              xor          t0, a2, s6
                  sltiu        a3, a5, -504
                  auipc        s9, 263320
                  ori          a6, s10, -58
                  bne          a5, a4, 355f
340:              blt          s8, zero, 359f
                  slti         a0, a3, -1422
342:              beq          tp, s0, 359f
                  srli         a0, s3, 28
344:              slti         t1, t5, 1715
                  sltiu        t4, s2, -1580
                  slt          a2, zero, s11
                  bne          t6, s1, 359f
                  lui          a4, 29083
                  and          a2, t5, t1
                  bgeu         a5, s6, 351f
351:              bne          a2, s2, 370f
                  and          a0, sp, s10
                  slli         t1, t0, 21
                  bgeu         s8, tp, 362f
355:              sltiu        s8, t3, -1324
                  xori         sp, s6, -367
                  srl          s5, s11, ra
                  bgeu         s11, zero, 366f
359:              auipc        t2, 415413
                  bne          t3, s11, 378f
                  bltu         s9, s10, 374f
362:              xor          t5, s10, t6
                  srl          a7, a0, t2
                  lui          s2, 929902
                  xori         tp, s3, -911
366:              srli         s2, s3, 12
                  ori          t4, s5, -1404
                  sra          s8, a6, a5
                  xori         a7, s10, -735
370:              lui          a6, 867069
                  ori          a7, s5, -731
                  sltiu        t4, t6, -1475
                  srl          a2, a0, s5
374:              xor          t6, sp, a0
                  sltiu        a0, t4, -808
                  sra          tp, s9, gp
                  ori          s1, gp, -117
378:              and          a3, sp, s7
                  srli         s2, s9, 3
                  bgeu         t6, t3, 388f
                  slli         s9, s6, 3
                  sltu         zero, s8, t6
                  bne          a3, tp, 396f
                  lui          a6, 266875
                  sltu         t4, s4, a4
                  or           a3, s4, t3
                  lui          s8, 465290
388:              sltiu        t2, a5, -81
                  blt          s8, t0, 391f
                  beq          zero, s9, 403f
391:              auipc        gp, 190716
                  andi         s0, t4, -1752
                  or           zero, t2, s7
                  sltiu        s4, t6, -223
                  xori         a2, t3, 1189
396:              sll          t4, s1, t3
                  addi         a4, zero, 389
                  add          gp, sp, t4
                  and          s8, a0, a7
                  auipc        zero, 541290
                  lui          a6, 656115
                  srli         s2, a5, 25
403:              slti         t3, s7, -1698
                  bne          s5, s0, 421f
                  sra          ra, ra, a3
                  sll          a3, t6, t4
                  slti         ra, t0, -584
                  sltu         t5, a4, t2
                  slli         tp, tp, 25
                  add          sp, s4, s4
                  xori         s8, t3, 444
                  auipc        t3, 112567
                  sra          t0, s10, ra
                  beq          t5, a0, 423f
                  bne          t4, s10, 417f
                  bge          sp, a7, 429f
417:              bltu         s10, tp, 425f
                  andi         s2, a2, -1243
                  andi         t3, t4, -705
                  xor          t4, t6, a5
421:              bne          s1, a2, 440f
                  addi         a1, gp, 1300
423:              beq          t0, t4, 434f
                  andi         t0, a6, -1431
425:              ori          zero, tp, -1594
                  xor          s10, a0, s1
                  auipc        s5, 103657
                  xori         t2, s0, 322
429:              sltu         a7, t3, t6
                  or           t4, zero, a7
                  srai         s8, a0, 20
                  andi         a0, zero, -1102
                  ori          s11, t0, 14
434:              xori         zero, s0, -1212
                  slli         a7, a6, 23
                  bgeu         ra, s2, 453f
                  lui          s10, 200017
                  sltu         ra, gp, s6
                  and          a6, t3, t0
440:              and          zero, s9, s0
                  srai         t2, t0, 16
                  nop
                  auipc        a1, 380684
                  addi         s4, t6, 887
                  bgeu         tp, t4, 453f
                  andi         ra, s7, 101
                  slt          t6, s4, a0
                  sll          a0, zero, zero
                  nop
                  slt          a3, t4, tp
                  sub          s10, zero, s8
                  slt          gp, t5, s3
453:              bge          t6, t5, 458f
                  lui          zero, 490601
                  slt          t0, t6, t5
                  xori         a1, sp, -701
                  sll          a4, t2, a5
458:              sltu         s10, t2, s1
                  sltiu        a0, s1, -1618
                  bne          a4, a6, 468f
                  srli         a3, s1, 15
                  srl          s2, a5, zero
                  slt          t0, sp, a3
                  andi         a4, ra, 1215
                  slti         t1, a3, 1075
                  bge          a7, zero, 467f
467:              addi         s5, s11, -63
468:              ori          t5, s2, -1665
                  and          t5, s5, s10
                  bgeu         gp, t4, 484f
                  addi         t3, t6, -860
                  xori         t6, ra, 420
                  or           gp, s7, a2
                  xori         s5, a2, 1220
                  xor          a2, t6, a7
                  nop
                  bne          a6, t4, 491f
                  srl          s9, s7, s6
                  bne          t4, t6, 495f
                  or           s5, a5, s1
                  or           a6, a5, s1
                  slt          ra, s1, sp
                  and          ra, s0, a3
484:              sub          s2, sp, a1
                  srli         s8, s6, 4
                  srl          a7, t3, a3
                  sra          tp, s11, s0
                  srai         sp, s0, 14
                  addi         s5, t0, -1865
                  addi         t4, t5, -564
491:              xori         s9, s0, 621
                  or           a4, s8, s0
                  sra          s1, a5, t1
                  or           s8, sp, ra
495:              slt          s10, t2, t6
                  addi         s2, a4, -1508
                  la           sp, region_0+880 #start riscv_load_store_rand_instr_stream_3
                  auipc        t5, 3697
                  lh           s2, -10(sp)
                  add          t5, sp, a7
                  lbu          t1, 39(sp)
                  lbu          s8, -9(sp)
                  lh           s3, 24(sp)
                  sltiu        a1, a2, 1042
                  sb           sp, -27(sp)
                  slt          s1, s3, s3
                  slti         s1, s7, 1458
                  sb           t0, 19(sp)
                  auipc        s9, 89000
                  add          s8, a7, tp
                  lh           a0, 34(sp)
                  lbu          t4, 57(sp)
                  slti         zero, ra, 419
                  lbu          tp, -4(sp)
                  lb           a7, -9(sp)
                  ori          s1, tp, 319
                  add          t3, a3, t1
                  andi         t0, a5, -1993
                  lhu          tp, -34(sp)
                  sra          s4, s4, s2
                  srl          a0, s4, a2
                  lui          s11, 271983
                  lb           a7, -55(sp)
                  srli         gp, a6, 13
                  sub          a3, s2, s7
                  slti         t2, sp, -1548
                  sh           a2, -62(sp)
                  andi         s8, ra, 1536
                  lb           s10, -49(sp)
                  srl          t3, t3, a1
                  lb           a1, 6(sp)
                  lb           a1, 56(sp)
                  sb           s11, 27(sp)
                  lbu          s1, -19(sp)
                  lbu          s5, 63(sp)
                  sra          t4, t4, s9
                  xori         t6, zero, -1903
                  lw           a1, -12(sp)
                  xori         s5, s11, -795
                  srl          s10, a6, ra
                  sh           s4, 4(sp)
                  lh           a3, -34(sp)
                  sb           sp, 47(sp)
                  sltiu        s2, s5, 817
                  lbu          s4, 44(sp)
                  sb           a1, 55(sp)
                  sb           s9, -12(sp) #end riscv_load_store_rand_instr_stream_3
                  bne          s11, a0, 509f
                  sll          t0, t6, zero
                  srli         s1, t0, 27
                  andi         t3, sp, -1162
                  bgeu         a3, s9, 518f
                  srl          t6, t2, s8
                  sltiu        gp, a1, 559
                  sra          t5, t4, s10
                  or           a6, tp, zero
                  lui          t2, 13095
                  srli         s5, zero, 30
                  bgeu         tp, ra, 526f
509:              lui          tp, 209066
                  bltu         s1, s3, 519f
                  slli         a3, s8, 3
                  addi         s1, s8, 770
                  sltu         a4, zero, zero
                  ori          a4, sp, 1071
                  nop
                  srl          s3, s6, s3
                  bge          a4, tp, 527f
518:              srai         s2, s9, 22
519:              bne          a3, a5, 529f
                  srl          s1, a0, zero
                  slt          s0, a4, s0
                  ori          s9, a7, -154
                  slti         zero, a6, -1818
                  ori          s0, a4, -105
                  srl          s5, zero, s10
526:              add          s0, s6, sp
527:              bne          a6, a6, 540f
                  srli         s4, s5, 5
529:              ori          t3, a4, 1273
                  slt          tp, a4, t3
                  slt          a4, t5, t5
                  andi         a3, a1, 1626
                  beq          gp, t0, 543f
                  add          gp, s3, s3
                  slt          gp, a4, s2
                  bgeu         a7, ra, 546f
                  sub          a2, sp, s5
                  srai         s5, a2, 22
                  slt          a4, s10, s10
540:              ori          a6, s6, 308
                  bne          a3, s7, 542f
542:              slt          s4, s8, ra
543:              sra          s5, s2, s11
                  or           s11, s1, t5
                  slti         t1, s10, -290
546:              slt          s3, a4, tp
                  sltiu        s1, s0, 856
                  nop
                  sltu         s2, s8, a0
                  lui          s10, 353727
                  add          a7, s11, s6
                  andi         s2, s4, -35
                  xori         s10, a6, 1672
                  slli         t6, a2, 22
                  ori          s5, a7, 369
                  slli         a1, t1, 17
                  bne          t3, t2, 570f
                  add          a0, s0, s6
                  sltu         t6, gp, s6
                  sub          ra, a7, gp
                  srli         a2, gp, 3
                  bge          s11, t1, 564f
                  slt          t6, s2, s6
564:              bltu         t2, sp, 567f
                  addi         a2, a7, 1537
                  xori         a7, s0, 1971
567:              sub          s2, t5, ra
                  beq          s0, gp, 570f
                  srli         t0, tp, 26
570:              srl          a3, s9, s4
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a5, a5, -60
                  srai         ra, t2, 16
                  slli         a2, tp, 14
                  sw           s3, 4(a5)
                  sltu         ra, s11, s11
                  slti         t0, s10, 1069
                  sub          t4, s11, a1
                  addi         t4, a2, -826
                  slli         a6, s0, 4
                  slt          a3, s10, s7
                  la           a4, sub_3
                  or           a0, s7, t1
                  slt          t1, a0, a6
                  lui          s11, 346666
                  srli         s1, s8, 25
                  addi         a4, a4, 295
                  slli         a6, a2, 30
                  lui          t0, 625060
sub_2_j3:         jalr         s3, a4, -294 #jump sub_2 -> sub_3
                  xor          t5, t0, zero
                  la           s11, sub_3
                  addi         s11, s11, 191
                  add          t4, ra, ra
                  sra          s8, s1, a7
                  sltiu        t2, a7, -795
                  slli         t6, a5, 19
sub_2_j4:         jalr         s3, s11, -190 #jump sub_2 -> sub_3
                  addi         s3, s3, 1418
                  xor          t4, a4, a4
                  add          sp, a3, ra
                  bge          s10, s7, 11f
                  sltiu        t4, sp, 1716
                  bgeu         s10, s3, 9f
                  addi         a0, zero, 373
                  addi         a0, sp, -1756
                  bgeu         t4, s9, 13f
9:                bgeu         s7, a7, 13f
                  xori         t1, s7, -1748
11:               slli         t5, s5, 7
                  bgeu         a1, s3, 13f
13:               add          s5, t2, t5
                  srl          s9, t0, a1
                  lw           s3, 4(a5)
                  addi         a5, a5, 60
                  andi         a0, s1, 1448
                  sltu         ra, a2, s6
                  srai         t0, t5, 2
47:               addi x11, x19, 1
47:               jalr x11, x11, 0
sub_7:            sltiu        s1, s4, -1918
                  sub          gp, s4, a2
                  srai         s2, t4, 28
                  lui          s8, 332974
                  bltu         s10, ra, sub_7_stack_p
                  addi         a3, t1, -343
sub_7_stack_p:    addi         a5, a5, -44
                  sw           s3, 4(a5)
                  xori         ra, t3, -1143
                  and          a0, s10, s6
                  and          t2, a0, s1
                  or           a3, sp, s1
                  andi         t1, t1, 1602
                  la           sp, region_0+483 #start riscv_load_store_rand_instr_stream_0
                  slti         t4, a2, 198
                  srai         a4, t3, 28
                  sb           a2, -55(sp)
                  andi         a7, a2, -1059
                  sb           t3, 233(sp)
                  auipc        gp, 478748
                  lhu          s5, 69(sp)
                  nop
                  lbu          s3, -232(sp)
                  sb           a4, 150(sp)
                  slt          zero, a0, s11
                  add          s8, s0, a0
                  xor          s2, sp, a5
                  sub          t2, t4, s9
                  sb           s0, -26(sp)
                  lbu          t1, 124(sp)
                  sra          a7, gp, a5
                  lbu          t1, -216(sp)
                  lbu          t1, 235(sp)
                  and          s10, t2, s11
                  slti         t6, a0, -1570
                  slli         a7, a4, 16
                  sb           a6, -180(sp)
                  sll          s2, a4, s5
                  sb           s0, -115(sp)
                  auipc        ra, 989713
                  srli         a4, s1, 8
                  slti         s10, s0, 566
                  nop
                  lui          a0, 6058
                  slti         a2, s4, 368
                  auipc        s4, 723801
                  lb           a3, -107(sp)
                  sw           s10, -167(sp)
                  lb           a1, -41(sp)
                  lb           s9, -42(sp)
                  lb           s9, 168(sp)
                  sltiu        s2, t0, 740
                  xori         ra, sp, -49
                  lbu          s11, 54(sp)
                  slti         s2, s2, -1550
                  lb           t4, -44(sp)
                  sh           sp, 47(sp)
                  xori         s5, a6, 1637
                  sra          a0, s0, s5
                  lui          a7, 180624
                  lbu          s5, -32(sp)
                  sw           t2, 133(sp)
                  lbu          a2, -169(sp)
                  sll          a4, a6, a2
                  nop
                  ori          s4, a7, -1316
                  sb           t3, -220(sp)
                  lbu          a3, 251(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         t5, a4, 16
                  srai         a6, s5, 2
                  slt          s0, t4, s9
                  blt          s11, t0, 23f
                  bltu         zero, a4, 21f
                  xor          a4, t6, a6
                  bgeu         zero, s6, 17f
                  sltu         sp, gp, a7
                  sra          t6, t1, s7
                  blt          s11, t2, 26f
                  nop
                  auipc        a1, 940747
                  auipc        s3, 778284
                  slt          a3, s7, t4
                  sltiu        t6, s3, 1090
                  and          s3, t6, t2
                  sll          t6, s7, a5
17:               addi         s1, s7, 1002
                  bne          s5, a2, 35f
                  bge          a4, t5, 37f
                  bge          a3, a3, 26f
21:               and          gp, a7, s6
                  or           a1, t1, a1
23:               bge          t5, a0, 39f
                  slti         s2, a7, 1492
                  sll          t1, t6, a7
26:               srai         a7, a6, 12
                  blt          s11, s10, 44f
                  bltu         t0, a6, 29f
29:               sltu         t5, a1, s3
                  nop
                  bltu         ra, t2, 48f
                  nop
                  srli         t6, a3, 13
                  blt          t2, a5, 44f
35:               bgeu         t1, s10, 44f
                  nop
37:               bgeu         ra, t0, 51f
                  lui          t3, 395934
39:               bltu         s0, a2, 46f
                  addi         a0, t1, -584
                  bne          s8, t4, 46f
                  slli         s8, s4, 24
                  ori          s3, a7, 410
44:               nop
                  slli         a1, a7, 11
46:               xor          s5, t4, t0
                  nop
48:               sltu         tp, tp, a3
                  nop
                  slt          s0, a4, sp
51:               sltiu        a1, t4, -1761
                  beq          a6, a6, 63f
                  sll          s11, s6, zero
                  sltu         s11, a0, s2
                  nop
                  addi         t0, s3, -1296
                  slli         t3, s5, 30
                  andi         gp, t2, 1266
                  bgeu         t4, a1, 69f
                  xori         s2, t2, -1634
                  slt          zero, t1, a3
                  sra          t5, s10, s11
63:               andi         t0, zero, 2044
                  bne          s3, a5, 81f
                  sltu         t3, sp, t5
                  sltiu        t1, s7, -1368
                  xori         a4, sp, -1819
                  or           s1, t4, tp
69:               slti         sp, s10, -161
                  sra          t3, zero, a5
                  srli         zero, s0, 19
                  blt          s5, ra, 77f
                  srli         s3, ra, 31
                  ori          t2, s8, 637
                  bgeu         tp, zero, 94f
                  blt          a0, s6, 78f
77:               xor          tp, a2, a3
78:               sltiu        t6, a2, -1112
                  ori          s0, t5, -1192
                  sra          gp, gp, sp
81:               slti         a2, t4, 92
                  srai         s8, a7, 12
                  bgeu         t1, zero, 98f
                  andi         s11, a2, -590
                  beq          s6, t1, 105f
                  bge          t3, s3, 91f
                  slti         zero, t1, -1875
                  sra          s4, s11, a7
                  slti         s8, s4, 597
                  srai         zero, ra, 21
91:               xori         t4, a0, -964
                  blt          a0, t3, 93f
93:               sub          s5, s8, s9
94:               blt          t3, s2, 97f
                  add          s5, s4, a2
                  and          t2, tp, s11
97:               addi         a0, s11, -1580
98:               srai         a0, a0, 29
                  bgeu         s3, t6, 101f
                  sub          a2, a4, t6
101:              or           zero, a7, a3
                  sra          t4, s6, s11
                  ori          s5, t6, -1823
                  slli         s3, a7, 10
105:              xori         gp, t0, 310
                  add          a3, gp, a2
                  srl          a1, t3, s0
                  or           a7, a6, a4
                  bgeu         s4, t5, 118f
                  sltiu        ra, s10, 1147
                  add          t6, a1, s10
                  srli         a6, a5, 12
                  sltu         a7, zero, s4
                  lui          s11, 59713
                  sltu         a6, s3, ra
                  slt          s11, s8, s9
                  srai         zero, t0, 26
118:              slt          a7, a1, t3
                  srli         t0, s2, 21
                  add          s5, s3, t1
                  slti         a0, s2, -234
                  lui          t5, 316987
                  sltiu        a6, a1, -1856
                  auipc        a2, 34474
                  bne          t3, t5, 134f
                  sll          sp, a0, s9
                  xori         t1, t4, -1139
                  bne          s0, tp, 138f
                  bge          s11, t1, 130f
130:              xori         ra, s3, 1303
                  bne          s0, t5, 133f
                  blt          s11, s9, 149f
133:              xor          a4, t3, s1
134:              srai         a2, a5, 26
                  sll          s5, s3, a6
                  xori         s3, s7, -763
                  ori          t2, s6, -2044
138:              auipc        a1, 226817
                  sra          a4, a7, t5
                  lui          ra, 838596
                  lui          gp, 904998
                  nop
                  bne          t2, s11, 163f
                  slli         t6, t4, 31
                  auipc        a7, 377351
                  lui          a3, 131620
                  srai         t1, t2, 16
                  sub          zero, tp, t5
149:              xori         t5, a0, -359
                  bge          tp, s9, 167f
                  sltu         a2, t0, s1
                  srai         a2, t1, 0
                  sra          sp, t6, s6
                  auipc        a1, 158620
                  sltu         t5, a7, sp
                  beq          t0, s10, 161f
                  add          s0, tp, gp
                  ori          t0, s5, -1273
                  bgeu         a5, sp, 170f
                  ori          a7, gp, -1780
161:              and          a6, tp, s11
                  and          s8, a0, s10
163:              nop
                  slli         sp, s0, 24
                  add          s4, s10, tp
                  andi         s8, t4, -956
167:              srl          a0, s10, s10
                  addi         a0, t3, 1344
                  sll          t3, s9, tp
170:              bge          s9, t1, 171f
171:              srl          t2, tp, a2
                  andi         gp, t2, -861
                  add          a6, s9, t6
                  add          a6, t1, a4
                  bge          a3, t0, 192f
                  beq          ra, a5, 196f
                  blt          t0, a1, 196f
                  slt          s10, t5, sp
                  ori          t4, a1, 1372
                  bgeu         gp, t5, 197f
                  nop
                  bge          s4, a6, 188f
                  beq          s11, sp, 200f
                  add          sp, s3, tp
                  xori         s11, s2, -858
                  srai         s9, a7, 12
                  srl          t5, sp, a0
188:              sltiu        s0, a6, 701
                  sltu         sp, a0, s7
                  addi         s2, sp, -1561
                  nop
192:              srl          a6, s0, ra
                  auipc        a7, 710553
                  and          t2, s5, t3
                  sub          t6, s0, s11
196:              xori         s1, a0, -698
197:              lui          zero, 638642
                  slli         t4, a0, 14
                  srli         s2, a6, 30
200:              srai         s0, t6, 26
                  srli         s5, s10, 28
                  bge          ra, s4, 209f
                  addi         a7, a4, -2040
                  xor          sp, gp, t0
                  xori         a7, s7, 34
                  beq          t1, a3, 215f
                  bltu         t1, s5, 225f
                  beq          t4, s3, 219f
209:              ori          a4, a2, -297
                  sra          s0, t1, a5
                  add          t0, t0, t6
                  sltu         s5, tp, a0
                  sll          t2, a5, s4
                  xori         s10, t6, -374
215:              or           a0, a5, sp
                  sltu         s10, s10, t5
                  bltu         t5, t5, 219f
                  lui          s0, 808834
219:              sra          s1, s4, tp
                  srl          sp, a0, zero
                  bne          a5, a3, 226f
                  sltu         t2, t2, t3
                  nop
                  sltiu        sp, a6, 1573
225:              sub          zero, t2, s10
226:              xor          s2, s9, s1
                  xori         s8, s10, 1999
                  andi         a7, t0, 1775
                  srli         s8, t2, 1
                  xori         gp, a0, 561
                  sltu         a7, a3, s0
                  slli         s1, s11, 6
                  bne          a6, s3, 246f
                  slti         t2, t1, 870
                  xori         s10, t5, -76
                  bge          a0, s10, 246f
                  ori          t3, s4, -1389
                  srli         a0, s2, 25
                  srli         sp, a2, 0
                  andi         a0, s10, 634
                  xor          a2, t4, tp
                  ori          s0, s5, -1706
                  sub          t2, t3, gp
                  nop
                  nop
246:              add          s1, a4, a5
                  and          t2, t2, t4
                  addi         s10, t6, -964
                  xor          a6, a7, tp
                  lw           s3, 4(a5)
                  andi         t2, s11, -1192
                  addi         a5, a5, 44
                  lui          tp, 694731
                  sltu         t4, t3, t1
                  addi         a6, t3, 1380
                  slli         t5, s11, 9
                  sll          ra, zero, s9
326:              addi x20, x19, 0
326:              jalr x20, x20, 0
sub_6:            nop
                  add          a2, a4, s9
                  slt          a7, a5, t6
                  blt          s4, s6, sub_6_stack_p
sub_6_stack_p:    addi         a5, a5, -24
                  sub          s4, t3, t3
                  sltu         s8, tp, s9
                  sw           s3, 4(a5)
                  slti         t2, a4, -528
                  la           t5, region_1+586 #start riscv_load_store_rand_instr_stream_10
                  addi         a7, s7, 694
                  lb           gp, -142(t5)
                  addi         s10, t2, 1218
                  sll          ra, s1, s1
                  ori          zero, s8, -1050
                  srli         a1, a1, 29
                  lh           t2, -112(t5)
                  addi         sp, a7, 1834
                  sb           s5, 12(t5)
                  ori          t1, tp, 1541
                  addi         a4, a0, -247
                  lbu          zero, 35(t5)
                  or           a7, t5, s3
                  lui          a1, 49717
                  or           s11, s8, zero
                  ori          s9, s1, 1614
                  nop
                  sb           tp, -195(t5)
                  lui          gp, 818484
                  sub          ra, gp, s2
                  sltu         a3, s3, t0
                  sra          a4, t0, t3
                  slti         s2, a7, 144
                  sltiu        s8, s11, 1761
                  lhu          s0, 140(t5)
                  add          t4, t2, zero
                  and          tp, tp, zero
                  add          t0, a5, s6
                  nop
                  srai         s11, s0, 10
                  lui          a2, 674170
                  lbu          a7, 165(t5)
                  slt          t2, s7, s9
                  srli         s10, s1, 29
                  sll          s0, s5, t5
                  lhu          ra, 212(t5)
                  lb           s0, 162(t5)
                  xor          gp, a5, a6
                  andi         s5, s8, 1786
                  sh           t3, 184(t5) #end riscv_load_store_rand_instr_stream_10
                  la           s2, region_0+1193 #start riscv_load_store_rand_instr_stream_8
                  sltiu        ra, ra, 609
                  sb           a7, 148(s2)
                  and          ra, s3, s8
                  lui          sp, 623272
                  xori         s11, a7, -1268
                  sb           a1, -25(s2)
                  lui          a6, 765712
                  addi         t6, s1, -348
                  sll          a1, a1, zero
                  lh           t4, 509(s2)
                  slt          t2, a7, s6
                  addi         t6, a2, -1797
                  sb           s5, -102(s2)
                  lui          a4, 522813
                  srl          s9, s11, t6
                  sub          a7, a5, s10
                  lui          a4, 502103
                  sra          a6, t5, a2
                  nop
                  sw           s2, -721(s2)
                  lb           ra, -926(s2)
                  lb           a0, 28(s2)
                  lui          s11, 233314
                  or           ra, s8, s4
                  lb           s3, -1032(s2)
                  ori          t3, s10, 583
                  auipc        t5, 435010
                  add          zero, a3, a2
                  sub          s11, a3, s8
                  lw           t0, 47(s2)
                  slti         t0, a2, 1954
                  sb           s2, -1116(s2)
                  addi         tp, t0, 1448
                  sb           a6, 658(s2)
                  lb           t4, -1104(s2)
                  xori         ra, s9, 371
                  add          t5, t5, s3
                  sub          s3, t1, a0
                  lhu          s10, 83(s2)
                  sb           gp, -822(s2)
                  sll          tp, t3, ra
                  xor          zero, a1, s6
                  andi         s10, t4, -1473
                  slli         t2, s2, 18
                  lbu          gp, -216(s2) #end riscv_load_store_rand_instr_stream_8
                  la           s8, region_0+532 #start riscv_load_store_rand_instr_stream_1
                  slt          a4, s8, t3
                  lhu          a3, 12(s8)
                  lb           s0, 53(s8)
                  sb           t4, -1(s8)
                  srl          a0, s0, t2
                  lb           t5, -55(s8)
                  lbu          zero, 31(s8)
                  add          a7, s8, a2
                  lb           t3, 0(s8)
                  or           a2, s2, a0
                  lbu          s11, -37(s8)
                  lh           s4, -12(s8)
                  srai         a7, zero, 13
                  srai         s5, a1, 31
                  xor          t4, s7, s1
                  sh           a0, -56(s8)
                  sra          t2, tp, a2
                  sb           s8, -53(s8)
                  lbu          a7, 25(s8)
                  sra          s0, a5, t1
                  lh           s5, -44(s8)
                  add          s11, s10, s4
                  ori          a1, s0, -917
                  lbu          t6, 55(s8)
                  sh           s11, -28(s8)
                  xori         a6, s0, -1344
                  lb           t1, 37(s8)
                  lbu          a3, -61(s8)
                  xor          t2, zero, a1
                  sh           s11, 8(s8)
                  srl          gp, t6, a1
                  lbu          s10, 25(s8)
                  lbu          a4, -46(s8) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1262 #start riscv_load_store_rand_instr_stream_4
                  sb           zero, -2(sp)
                  addi         t2, s10, -123
                  sra          s3, a0, tp
                  lbu          a1, 15(sp)
                  sh           zero, 12(sp)
                  slt          ra, a3, a3
                  lbu          s11, 3(sp)
                  xor          ra, t0, s6
                  or           a3, t4, a4
                  sb           a6, 3(sp)
                  or           s5, s10, s6
                  srai         a1, t0, 6
                  sub          s8, a6, gp
                  lb           ra, 1(sp)
                  srl          a0, ra, zero
                  or           a7, sp, a7
                  sh           a6, -8(sp)
                  lbu          t1, -7(sp)
                  slt          s10, s10, s11
                  lbu          s3, -9(sp)
                  andi         t4, t4, -1998
                  lbu          t0, 16(sp)
                  auipc        a3, 51461
                  xor          a4, s1, a3
                  slt          a3, a7, a1
                  add          a4, a3, s9
                  lbu          t4, -3(sp)
                  sltu         s10, t5, tp
                  lb           s10, -4(sp)
                  lbu          a0, -2(sp)
                  addi         s10, a5, 1359
                  lb           a6, -16(sp)
                  slt          a2, a3, t2
                  addi         s3, s7, 1698
                  sll          a7, s7, ra
                  add          s5, a7, s1
                  lhu          ra, -2(sp)
                  sub          s0, a6, tp
                  srl          a6, s1, gp
                  nop
                  lhu          s11, 8(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1678 #start riscv_load_store_rand_instr_stream_5
                  or           s10, s6, sp
                  slli         t0, a0, 14
                  lbu          t4, -3(sp)
                  sb           sp, -12(sp)
                  add          s11, t2, s5
                  sb           a7, -9(sp)
                  lbu          a3, -1(sp)
                  lb           s4, -1(sp)
                  andi         s4, a6, -352
                  xor          a3, s5, s0
                  ori          s8, s6, 959
                  slti         s4, s7, -1336
                  sltiu        s4, t1, -5
                  lbu          a6, -3(sp)
                  srai         t2, s9, 6
                  sltiu        zero, t3, 1370
                  lb           t4, -11(sp)
                  andi         a1, a4, -1103
                  slti         gp, t5, -870
                  auipc        s5, 237909
                  lbu          tp, -3(sp)
                  sll          s11, s4, zero
                  auipc        a4, 77666
                  lb           s3, 1(sp)
                  lb           a7, 11(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s2, region_1+1542 #start riscv_load_store_rand_instr_stream_6
                  lb           s0, -71(s2)
                  slt          s9, gp, a0
                  lbu          s5, -149(s2)
                  nop
                  sh           a1, -482(s2)
                  sltu         s11, a6, a1
                  add          s0, t4, s10
                  lb           a2, -1311(s2)
                  xori         s3, s2, -764
                  srai         s4, s0, 2
                  slt          zero, t2, t2
                  addi         zero, sp, 1203
                  lb           s11, -103(s2)
                  auipc        t0, 350402
                  lbu          a2, -428(s2)
                  lbu          a1, -271(s2)
                  lb           a1, -1499(s2)
                  lhu          s11, -52(s2)
                  lhu          s0, -1506(s2)
                  nop
                  lbu          t3, -400(s2)
                  auipc        gp, 722723
                  sb           s6, 89(s2)
                  xor          s10, t0, t1
                  sll          gp, ra, t0
                  lbu          s0, -1095(s2)
                  sb           a4, 127(s2)
                  sb           a7, -779(s2)
                  sb           a4, 414(s2)
                  slt          a7, sp, a6
                  lbu          s9, -606(s2)
                  lbu          a6, 345(s2)
                  lh           t2, 396(s2)
                  lbu          a3, 104(s2)
                  slti         s10, t0, -1310
                  sb           s9, -1005(s2)
                  srai         t5, sp, 23
                  sb           a1, -1065(s2)
                  lb           a4, -1425(s2)
                  auipc        s1, 25909
                  nop
                  nop
                  lb           a4, 445(s2)
                  xori         s8, s3, -931
                  and          a3, s0, s6
                  add          a7, s7, t6
                  sub          a0, a5, a0
                  lbu          s3, 427(s2)
                  lbu          gp, -695(s2)
                  or           s1, s10, zero
                  lbu          a4, -929(s2)
                  lb           t4, -841(s2)
                  srai         zero, a2, 8
                  lbu          a3, -607(s2)
                  lh           a3, 154(s2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1268 #start riscv_load_store_rand_instr_stream_15
                  nop
                  sub          s5, a0, s10
                  srl          s0, s4, zero
                  lhu          s2, -16(sp)
                  slt          s10, s0, a4
                  lb           s8, 9(sp)
                  lh           gp, -4(sp)
                  ori          a2, s2, -661
                  lb           t6, 1(sp)
                  lh           s4, 2(sp)
                  sw           s4, -4(sp)
                  sw           t3, 12(sp)
                  auipc        zero, 716423
                  lb           a2, 13(sp)
                  lbu          s2, -11(sp)
                  sb           a3, -14(sp)
                  lbu          t3, 3(sp)
                  sb           a3, -11(sp)
                  lb           s4, 4(sp)
                  lb           t3, -11(sp)
                  and          s10, s0, ra
                  sb           a1, -11(sp)
                  lb           a0, -14(sp)
                  sw           s4, 8(sp)
                  sltu         t0, s8, t4
                  sb           sp, 14(sp)
                  sra          a7, a5, t1
                  sltiu        tp, gp, 1640
                  slti         t2, tp, 1582
                  xor          a2, ra, s9
                  sltu         a6, a7, s3
                  sra          t4, s1, a2
                  lb           t2, 15(sp)
                  sb           a2, 5(sp)
                  sb           tp, 7(sp)
                  lbu          s11, -14(sp)
                  sb           a5, 11(sp)
                  sh           ra, -10(sp) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_1+310 #start riscv_load_store_rand_instr_stream_3
                  sb           gp, 62(sp)
                  srai         a2, a1, 13
                  sll          s1, gp, t2
                  or           t2, t3, a7
                  sb           s11, 201(sp)
                  lh           a3, 96(sp)
                  slt          a7, s7, s7
                  lh           s3, -184(sp)
                  lhu          a2, -8(sp)
                  lhu          t3, -208(sp)
                  lb           s0, -53(sp)
                  lbu          s9, 149(sp)
                  auipc        gp, 129287
                  lui          zero, 323497
                  srai         a2, a7, 8
                  lbu          t3, 104(sp)
                  lbu          a3, -104(sp)
                  xori         s3, s4, 235
                  lh           ra, -96(sp)
                  andi         s8, s8, -196
                  nop
                  lb           t4, 239(sp)
                  lbu          s3, 205(sp)
                  sh           t4, -152(sp)
                  sltiu        s9, a4, 1864
                  sra          s5, t0, t2
                  nop
                  sra          s0, a5, s6
                  sll          s1, s8, s8
                  sll          s2, a6, a2
                  sw           tp, 70(sp)
                  slli         s3, s3, 1
                  lb           a7, -256(sp)
                  sub          s11, s2, s6
                  slt          s11, a0, t6
                  and          a2, s7, a2
                  lb           s11, 109(sp)
                  lb           t6, 15(sp)
                  srli         s4, a6, 8
                  xori         s2, s4, 1408
                  add          s9, s2, a4
                  add          t0, a5, zero
                  lbu          t1, -38(sp)
                  sb           sp, -171(sp)
                  sh           s3, -136(sp)
                  sh           s9, 92(sp)
                  lbu          a3, 163(sp)
                  sll          t1, a0, t5
                  lbu          a0, -90(sp)
                  sh           a6, 182(sp)
                  sb           a0, -23(sp)
                  xor          t0, s11, tp
                  lhu          s10, 68(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1086 #start riscv_load_store_rand_instr_stream_12
                  sb           zero, 127(sp)
                  xor          s8, a7, t4
                  lhu          t6, 40(sp)
                  lbu          a1, -25(sp)
                  sb           s3, 245(sp)
                  lh           s9, -218(sp)
                  add          s10, s3, zero
                  sb           s6, -179(sp)
                  lbu          a4, 123(sp)
                  sltiu        a6, s7, -764
                  sb           ra, -11(sp)
                  add          a0, ra, a5
                  sb           t6, 119(sp)
                  and          t3, s6, a3
                  sb           t1, -167(sp)
                  lbu          t2, 14(sp)
                  sh           a4, 128(sp)
                  lw           a3, -178(sp)
                  andi         a7, gp, 1261
                  sb           t0, 44(sp)
                  lui          s2, 505187
                  sh           a2, 56(sp)
                  lbu          s10, 169(sp)
                  sb           s2, 206(sp)
                  lw           t6, -14(sp)
                  xori         s9, a0, 1812
                  slti         t1, zero, 992
                  lw           t0, 142(sp)
                  srli         t3, s4, 26
                  slt          a3, t6, ra
                  addi         t2, s0, -182
                  lb           a0, -25(sp)
                  sb           gp, 59(sp)
                  sltu         t1, t1, s11
                  ori          a1, t4, 1790
                  auipc        a2, 825646
                  lbu          a0, -56(sp)
                  andi         ra, t6, 1076
                  lbu          gp, -212(sp)
                  lui          a7, 192101
                  sh           a0, 164(sp)
                  lbu          s8, 23(sp) #end riscv_load_store_rand_instr_stream_12
                  la           t0, region_1+699 #start riscv_load_store_rand_instr_stream_13
                  lb           a2, 34(t0)
                  lbu          t5, -9(t0)
                  or           a0, s10, t0
                  nop
                  sh           a5, 13(t0)
                  auipc        s3, 241101
                  ori          s2, s8, -1664
                  add          s11, s0, a3
                  lbu          a1, -39(t0)
                  sh           t1, -57(t0)
                  sll          sp, t4, t0
                  lw           s10, -19(t0)
                  addi         gp, a0, 511
                  lb           zero, 60(t0)
                  xori         s5, s6, 1235
                  sltu         ra, a4, s5
                  lhu          t2, -35(t0)
                  sh           a1, 17(t0)
                  lw           s0, 33(t0)
                  slli         s10, a4, 17
                  lbu          t4, -17(t0)
                  ori          s11, ra, -862
                  sb           a7, 29(t0)
                  lw           a1, 37(t0)
                  lb           t5, 40(t0)
                  lbu          s8, -57(t0)
                  srli         a4, s2, 28
                  sh           s3, -37(t0)
                  sb           s7, 2(t0)
                  lw           tp, -63(t0)
                  nop
                  lb           tp, -42(t0)
                  lbu          t4, -4(t0)
                  andi         sp, s11, -154
                  lhu          tp, 19(t0)
                  srli         tp, s8, 19
                  sltu         a3, t4, s7
                  ori          t2, s7, -427
                  sb           s11, -49(t0)
                  sra          t3, t0, ra
                  xor          t3, t2, t4
                  sb           s10, -43(t0)
                  nop
                  srai         a3, s11, 27
                  slt          a1, t4, a4
                  sltu         s0, s6, a3
                  sub          a1, t1, gp
                  xori         a4, s0, 1000
                  lbu          t4, 48(t0)
                  lb           a3, -20(t0)
                  sb           s2, -64(t0)
                  add          a7, a6, s6
                  lbu          a2, 22(t0)
                  slli         t3, a2, 17
                  sh           s2, 25(t0)
                  sub          tp, tp, s9
                  lb           s8, -44(t0)
                  sltiu        tp, s0, -153
                  lb           a6, -41(t0) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+177 #start riscv_load_store_rand_instr_stream_14
                  lw           s11, 39(sp)
                  srai         s0, t4, 7
                  sb           a7, 20(sp)
                  sll          tp, t4, t0
                  srai         s10, a2, 8
                  lbu          t5, 184(sp)
                  sll          s0, t5, t6
                  lh           s4, 211(sp)
                  auipc        t4, 867867
                  xor          s2, t5, gp
                  ori          ra, a7, 1684
                  ori          a1, ra, 577
                  slli         s0, s3, 27
                  srli         gp, s6, 27
                  sltiu        a0, tp, 467
                  lb           a0, 52(sp)
                  nop
                  nop
                  addi         t3, s0, -1281
                  srai         a3, s1, 18
                  lbu          t3, 112(sp)
                  sw           s5, -121(sp)
                  sw           t4, -37(sp)
                  add          s2, t4, s7
                  lui          t2, 431048
                  lb           s5, 88(sp)
                  lb           s3, -105(sp)
                  sltu         a4, t0, s7
                  sltiu        tp, s1, 1485
                  sh           ra, 253(sp)
                  lbu          tp, -44(sp)
                  lb           a2, 212(sp)
                  lb           t2, -62(sp)
                  sltiu        a0, s4, -1062
                  lui          t1, 684840
                  lhu          t3, 47(sp)
                  sh           s5, -99(sp)
                  lbu          ra, -47(sp)
                  lbu          s8, 146(sp)
                  and          zero, t5, t5
                  sltu         s9, ra, t5
                  sub          a7, a6, s0
                  sll          s1, t6, zero
                  lbu          a0, 242(sp)
                  lb           ra, -115(sp)
                  slt          t4, s9, t1
                  sltu         t4, t2, s8
                  srl          s1, a1, zero
                  nop
                  lb           a0, -79(sp)
                  or           ra, s3, a3
                  sb           s0, 181(sp)
                  lbu          t0, -110(sp) #end riscv_load_store_rand_instr_stream_14
                  sltiu        t3, tp, -385
                  nop
                  blt          a3, a0, 17f
                  slt          a6, t1, a3
                  add          s11, gp, a0
                  beq          a7, t2, 22f
                  sra          a2, t3, a3
                  andi         zero, t6, 1931
                  sll          t1, a4, gp
                  bge          s2, s10, 10f
10:               sub          s2, tp, tp
                  auipc        s5, 516072
                  bne          s4, t0, 23f
                  sra          t5, s3, t0
                  or           t2, ra, a0
                  addi         t2, s10, 1455
                  slt          t6, gp, gp
17:               andi         zero, t3, 1554
                  bge          a0, zero, 31f
                  beq          a3, a0, 34f
                  srai         s4, t5, 22
                  and          s8, t6, a0
22:               sltiu        s3, t6, -512
23:               slli         s8, a3, 14
                  bgeu         s0, gp, 29f
                  and          t4, zero, a2
                  ori          a7, a0, -119
                  bltu         s5, s9, 31f
                  sll          t2, s11, s0
29:               blt          a7, s6, 30f
30:               srl          t1, s5, s5
31:               sra          s1, ra, t6
                  bgeu         t2, s3, 51f
                  blt          zero, a3, 44f
34:               add          sp, s11, t6
                  sll          s1, s0, s3
                  sub          s8, s7, s7
                  addi         t1, a0, -1868
                  and          s9, a4, sp
                  and          a6, zero, s7
                  sltiu        s5, ra, -1678
                  sltiu        a6, a5, -702
                  slli         tp, zero, 13
                  sltiu        t4, tp, 1679
44:               blt          a5, s9, 47f
                  ori          s10, a1, -1345
                  srai         sp, a0, 14
47:               or           a0, s8, a6
                  ori          a3, t0, 1704
                  srli         a2, s8, 21
                  bne          a3, s4, 60f
51:               nop
                  srli         s9, s11, 6
                  bge          s1, s11, 62f
                  xor          t0, gp, s2
                  srai         a2, a2, 14
                  auipc        t4, 526991
                  slt          s4, s10, t0
                  auipc        zero, 238660
                  slli         a4, sp, 18
60:               srl          t0, a3, a1
                  sra          a1, a3, s3
62:               srl          s11, t5, s10
                  lui          t3, 1002924
                  add          zero, s7, zero
                  nop
                  beq          s7, s6, 74f
                  bge          a5, t5, 81f
                  slt          s5, s11, a0
                  ori          s3, s6, -91
                  addi         t5, s10, 1078
                  xori         s0, s10, 1235
                  srai         a1, t0, 6
                  srl          t6, t4, gp
74:               xori         tp, a7, 1073
                  add          tp, t0, a5
                  lui          s1, 238498
                  bne          t3, zero, 97f
                  addi         a1, s1, 1403
                  srai         t2, a4, 25
                  bgeu         s0, t0, 98f
81:               lui          gp, 152444
                  bne          s4, a3, 87f
                  bgeu         t3, s1, 103f
                  srai         t3, s3, 17
                  bltu         a7, s6, 94f
                  sra          a3, zero, a2
87:               sra          tp, a2, s11
                  nop
                  or           a0, t3, t0
                  beq          zero, s3, 100f
                  addi         s9, t0, -1083
                  sub          sp, a1, t2
                  addi         s2, s11, 1058
94:               bgeu         tp, sp, 95f
95:               sll          a2, ra, s8
                  srai         s9, a6, 27
97:               or           s8, a2, gp
98:               srai         t1, s8, 21
                  nop
100:              nop
                  bge          s1, s11, 105f
                  xori         sp, a3, 95
103:              beq          s6, a7, 105f
                  ori          gp, t5, -813
105:              srai         s3, t4, 21
                  xor          a0, t3, a7
                  bne          sp, a4, 118f
                  lui          a0, 48241
                  sltiu        s1, s10, 575
                  sltu         a6, s11, t5
                  auipc        sp, 285211
                  sub          t2, a1, t6
                  srai         sp, s0, 0
                  sll          a0, t3, zero
                  slt          a2, s9, t3
                  srl          t4, a7, a1
                  addi         ra, s1, -152
118:              beq          s4, t6, 132f
                  srai         a7, tp, 23
                  auipc        a6, 375106
                  bge          s2, t0, 124f
                  slli         s8, t5, 25
                  sltu         t3, t5, a5
124:              lui          t2, 1013418
                  slti         tp, s6, -788
                  sll          s5, a7, sp
                  and          s11, a4, s1
                  or           a6, s4, s10
                  slt          a6, ra, s3
                  srai         s5, s9, 19
                  or           gp, a5, a2
132:              bltu         s7, t4, 146f
                  add          t1, sp, s3
                  xori         t5, zero, 301
                  nop
                  andi         t2, s0, 226
                  addi         s0, t0, 879
                  sra          a0, s0, tp
                  srli         s1, a4, 1
                  xor          t2, t6, s5
                  bge          ra, s10, 156f
                  and          zero, s1, a7
                  bgeu         ra, ra, 151f
                  bge          a4, a7, 149f
                  bltu         tp, gp, 162f
146:              sltu         s1, s6, t5
                  ori          gp, s0, 930
                  andi         a0, tp, 266
149:              nop
                  srli         a2, t3, 0
151:              srli         a1, s2, 21
                  add          s2, a4, s4
                  sub          s4, t1, t4
                  and          s8, t2, s9
                  ori          s0, a4, 290
156:              sub          a2, a4, gp
                  lui          a2, 615779
                  sra          a7, gp, s1
                  auipc        s0, 362201
                  slt          s3, s6, s3
                  sltu         s9, a6, s5
162:              addi         s8, s3, -1056
                  sra          s8, t5, sp
                  xor          s1, zero, s10
                  bgeu         s4, s11, 179f
                  bge          tp, s5, 181f
                  bge          s4, t3, 176f
                  xori         s3, t4, 1720
                  bne          t4, s7, 180f
                  nop
                  bltu         sp, t2, 172f
172:              beq          s4, t3, 190f
                  srl          a7, a4, a6
                  sltiu        a2, s1, -953
                  add          a7, ra, tp
176:              sra          sp, s0, a0
                  blt          tp, a5, 186f
                  lui          s4, 606777
179:              sub          s4, s3, ra
180:              xor          a7, ra, a7
181:              addi         a0, sp, -855
                  sra          a4, s8, s1
                  sll          t3, t2, a5
                  sltiu        a4, s4, 995
                  bge          ra, t0, 200f
186:              beq          s0, a3, 187f
187:              sub          a3, sp, s5
                  sltu         a0, a3, s3
                  bltu         t2, zero, 199f
190:              srai         tp, t5, 10
                  nop
                  add          t5, s2, a2
                  xor          a3, t0, a6
                  or           gp, s6, ra
                  srai         s1, gp, 25
                  add          s3, s5, a6
                  sltiu        s1, ra, 497
                  sub          s3, t1, a2
199:              bne          gp, s3, 219f
                  la           sp, region_0+690 #start riscv_load_store_rand_instr_stream_11
                  andi         a2, t6, -336
                  lbu          a0, 1261(sp)
                  sb           s11, 458(sp)
                  srai         a4, t3, 29
                  lui          t6, 968435
                  sub          s11, t0, gp
                  lbu          s8, -93(sp)
                  srli         s0, tp, 30
                  andi         zero, s11, -983
                  lbu          t6, 305(sp)
                  sb           t5, -126(sp)
                  lw           t6, 74(sp)
                  lbu          t1, 331(sp)
                  auipc        a3, 704763
                  sb           s2, -643(sp)
                  lw           s3, 1102(sp)
                  sltiu        s9, tp, 1606
                  sltu         t5, a2, a7
                  lb           t3, 697(sp)
                  sltiu        s11, a6, 1641
                  andi         s8, s5, 249
                  or           t0, s6, s11
                  auipc        zero, 30518
                  lbu          s5, 938(sp)
                  lhu          s9, -652(sp)
                  xori         t4, s5, 750
                  xor          t6, gp, ra
                  sw           a3, -38(sp) #end riscv_load_store_rand_instr_stream_11
200:              srli         t3, t0, 18
                  slli         a3, t4, 17
                  lui          s10, 857007
                  sll          s0, ra, a6
                  sll          a7, t0, t2
                  sub          s0, t6, s8
                  addi         a2, t6, 2012
                  bltu         zero, t3, 226f
                  srl          ra, t1, s2
                  bne          a7, s11, 214f
                  or           a4, a0, a4
                  lui          s10, 179910
                  sltiu        a7, sp, 1979
                  or           s5, t1, s11
214:              bne          t5, s1, 228f
                  ori          tp, s6, -127
                  bltu         sp, a4, 217f
217:              srli         t6, t5, 8
                  slt          gp, a5, sp
219:              addi         gp, a3, -55
                  nop
                  andi         t5, s6, -1446
                  or           gp, s9, s5
                  or           s8, ra, s11
                  sll          gp, s5, s5
                  auipc        s11, 248447
226:              lui          s11, 1016849
                  andi         t5, a7, -1511
228:              slli         t6, a2, 4
                  and          t5, tp, s5
                  xori         a7, gp, 544
                  ori          a0, t0, -1282
                  sub          s1, t2, t5
                  bge          s3, t4, 244f
                  sltu         t6, a1, s9
                  nop
                  sub          t1, s4, s3
                  srai         a3, a2, 5
                  bltu         gp, a0, 258f
                  bltu         s3, gp, 243f
                  sltiu        s3, gp, -1343
                  xori         a7, a5, 423
                  andi         a2, a7, -2035
243:              xori         a6, a7, 1081
244:              bltu         a1, t1, 247f
                  bgeu         s8, ra, 258f
                  sra          sp, t5, s4
247:              sltiu        s5, s1, 1200
                  xor          a3, s9, a0
                  slti         s4, s4, -288
                  srl          s8, zero, a6
                  auipc        ra, 407962
                  srai         a0, a0, 4
                  bgeu         a3, tp, 268f
                  sltiu        ra, s8, 97
                  sub          t4, s7, s4
                  srli         a2, t6, 15
                  srli         t3, zero, 20
258:              beq          t6, s8, 261f
                  and          a3, s4, a0
                  sltiu        a4, a5, 66
261:              sll          tp, s2, a4
                  sra          zero, s7, s10
                  andi         zero, gp, 989
                  slti         s0, t6, -1499
                  bne          s4, t4, 269f
                  auipc        s8, 682128
                  beq          sp, sp, 277f
268:              slli         s5, a4, 22
269:              sll          s0, t0, s5
                  bltu         sp, s8, 281f
                  sll          s3, t0, a3
                  srl          s9, a2, a1
                  slli         s3, t5, 9
                  sltu         s9, s6, s7
                  ori          t4, t0, -962
                  or           t6, t0, t4
277:              sltiu        t5, a1, -658
                  slt          s0, s0, t2
                  or           t1, t6, zero
                  bne          s3, t6, 282f
281:              nop
282:              or           s8, s2, ra
                  bltu         s10, t2, 297f
                  bge          a1, s4, 295f
                  add          a0, t3, s6
                  bgeu         s8, zero, 287f
287:              or           s4, s5, t0
                  xor          s4, a0, a5
                  beq          s9, t6, 304f
                  addi         t0, s5, -1090
                  ori          t1, s0, 1037
                  sra          a3, a4, s9
                  srai         zero, a3, 12
                  slti         t3, s8, -1831
295:              slli         a1, t4, 16
                  sub          t1, a6, s7
297:              bne          a2, ra, 312f
                  slt          s4, t3, s5
                  or           t6, a5, s1
                  nop
                  or           t6, s3, s9
                  bge          s10, gp, 316f
                  xor          s1, t4, a0
304:              srl          s1, s9, sp
                  lui          a1, 935573
                  sltu         a0, t5, a1
                  nop
                  bltu         s1, t4, 327f
                  sra          ra, s11, s0
                  or           s2, a7, s0
                  sra          s4, ra, sp
312:              bgeu         s0, t4, 321f
                  auipc        a6, 362348
                  xor          s5, tp, s7
                  sub          s1, t4, s11
316:              ori          s10, tp, 2028
                  srl          ra, s3, s7
                  lui          a0, 560389
                  srl          s8, t2, a0
                  bne          gp, s10, 321f
321:              nop
                  sub          a2, tp, a1
                  bne          t2, tp, 327f
                  sltu         a2, s3, s8
                  bltu         sp, s6, 334f
                  sltiu        zero, s0, -6
327:              srai         t6, a3, 19
                  srai         s2, a0, 19
                  slt          a7, tp, t1
                  bne          a1, s7, 347f
                  andi         s2, s9, 819
                  xori         ra, s4, 734
                  bgeu         s10, s6, 347f
334:              auipc        t0, 704455
                  bge          sp, t0, 340f
                  slt          s11, ra, s6
                  and          s2, s6, a1
                  sltiu        ra, zero, 86
                  slli         s11, a1, 21
340:              srli         t3, s2, 7
                  sltiu        t4, ra, 1437
                  andi         s10, a0, 940
                  xor          s1, a5, s11
                  bgeu         sp, s10, 347f
                  andi         a3, t0, 14
                  slli         t4, s2, 18
347:              and          t4, s8, a0
                  bgeu         t6, zero, 368f
                  bne          tp, t0, 360f
                  and          t4, s3, tp
                  sra          s8, s2, a6
                  add          tp, s9, s10
                  slti         s5, s3, -344
                  xor          t1, a7, s1
                  addi         s3, t0, 1957
                  nop
                  addi         ra, s10, -1173
                  sltu         s3, s0, s3
                  sll          a3, s1, s8
360:              sll          s8, s10, s5
                  srli         s0, a1, 10
                  sltiu        t6, t5, 797
                  beq          a2, a0, 371f
                  sll          t6, gp, s9
                  sltu         t0, a6, tp
                  auipc        s5, 126781
                  and          t6, tp, a3
368:              auipc        s9, 172972
                  sra          s3, ra, s8
                  andi         a7, s7, 1290
371:              sub          t4, tp, a6
                  nop
                  bge          a3, s9, 383f
                  slti         a0, s1, 775
                  and          s0, sp, t2
                  slt          t1, s3, sp
                  add          a7, s11, t6
                  andi         a1, s6, 1494
                  andi         t3, s8, 2017
                  ori          a2, t5, -822
                  or           t1, ra, ra
                  xor          s4, t3, t0
383:              srai         s2, a6, 12
                  srai         s1, s2, 9
                  bgeu         s9, s11, 388f
                  bltu         t4, a7, 397f
                  sll          t5, a5, s7
388:              and          s0, s11, a5
                  blt          s11, a0, 393f
                  xor          t5, a6, s10
                  xori         sp, a5, -1002
                  srai         sp, ra, 30
393:              auipc        t5, 786289
                  sltu         s0, t1, s10
                  andi         t0, s3, 18
                  or           t0, s3, s3
397:              ori          s9, gp, -193
                  xor          zero, t2, a0
                  andi         s1, a5, -315
                  xor          t4, tp, s1
                  bge          t5, t3, 414f
                  add          t0, ra, a5
                  bltu         t4, s5, 413f
                  bgeu         t1, gp, 419f
                  beq          s2, s6, 423f
                  srl          s8, s1, s8
                  ori          s1, s2, 1698
                  srli         s10, s4, 10
                  bne          zero, gp, 414f
                  bne          t6, s0, 430f
                  bne          ra, s11, 413f
                  srl          t3, a7, a5
413:              slti         s8, a6, -1739
414:              add          s0, t3, s1
                  bgeu         a0, a6, 416f
416:              xori         s4, a6, -1963
                  srli         s2, a6, 9
                  sltiu        a1, t5, 324
419:              andi         a7, s7, -1100
                  auipc        s5, 663533
                  xori         sp, s0, -494
                  xor          a1, a3, s1
423:              slti         s9, s10, 992
                  srl          zero, t4, ra
                  sltiu        s1, s2, -1794
                  lui          s0, 677266
                  bgeu         s4, a5, 441f
                  sll          a0, a2, s4
                  sltu         a2, t2, s0
430:              add          s11, s4, gp
                  bge          a2, t6, 432f
432:              sltu         a6, s9, zero
                  bgeu         zero, s11, 453f
                  auipc        t4, 653454
                  addi         s0, s6, 1324
                  sltu         t2, a0, s11
                  lui          a4, 50730
                  blt          a4, t5, 447f
                  andi         t1, sp, -1091
                  addi         t0, t0, 1754
441:              sll          s9, a4, s6
                  auipc        s5, 585516
                  bne          s2, t0, 447f
                  la           sp, region_0+1821 #start riscv_load_store_rand_instr_stream_9
                  and          t3, sp, a4
                  lhu          s4, -327(sp)
                  lw           tp, -609(sp)
                  sb           a6, -1602(sp)
                  sh           a5, -293(sp)
                  sb           zero, -283(sp)
                  lui          a1, 454554
                  addi         gp, gp, 964
                  srli         t5, s4, 29
                  lb           a1, 51(sp)
                  slti         s4, s8, 127
                  lbu          t5, 162(sp)
                  slt          a0, a1, a2
                  ori          s10, s2, 776
                  lb           t2, -1545(sp)
                  lh           a0, -1383(sp)
                  srl          gp, ra, a2
                  sra          s10, zero, gp
                  add          s0, a5, a0
                  sltiu        a2, s3, 497
                  or           s3, gp, sp
                  auipc        t2, 364081
                  srli         s3, gp, 17
                  lbu          t3, -1264(sp)
                  slt          s8, t4, s9
                  andi         a0, t4, 1073
                  lbu          s3, -514(sp)
                  srai         a3, gp, 3
                  auipc        s2, 99845
                  sltu         t1, s5, s4
                  lbu          ra, -930(sp)
                  srli         s8, s11, 25
                  auipc        s3, 16977
                  sll          s0, gp, s8
                  lb           t1, -337(sp)
                  lbu          a4, -983(sp)
                  sb           a6, -2(sp)
                  ori          a0, s11, 1331
                  lbu          s0, -826(sp)
                  addi         a3, a1, 223
                  sb           s4, -1403(sp)
                  lh           t1, -1761(sp) #end riscv_load_store_rand_instr_stream_9
                  slt          s8, a0, a1
                  bne          s11, ra, 460f
                  ori          s2, ra, 1393
447:              xor          t0, s6, a2
                  xori         s0, a1, 780
                  or           s8, s7, sp
                  srl          s0, ra, a6
                  srl          t2, ra, s5
                  sra          a7, zero, s4
453:              srl          s1, s3, s7
                  bge          s8, t3, 465f
                  xor          ra, s0, t0
                  slt          a4, s10, s11
                  sltu         s0, s3, tp
                  lui          s3, 286269
                  xor          sp, zero, s1
460:              sltu         s10, a6, tp
                  bne          a3, a2, 472f
                  sltiu        s8, s3, 1719
                  bge          a6, a1, 476f
                  nop
465:              sll          t0, a5, s8
                  andi         t3, a7, 185
                  slti         t6, a2, -1900
                  bne          s2, s2, 471f
                  ori          ra, a7, 1809
                  andi         ra, a3, -1859
471:              bge          s10, s4, 476f
472:              sll          s5, sp, a7
                  bgeu         a4, s0, 487f
                  andi         t6, a0, 1682
                  bltu         a1, s10, 480f
476:              bne          a3, s8, 477f
477:              andi         t0, s1, -847
                  auipc        s9, 146107
                  sll          ra, t0, a1
480:              srai         t1, t2, 30
                  addi         s11, t3, 1436
                  or           s3, t4, a7
                  srl          a2, a1, gp
                  sub          t2, tp, s5
                  srl          a1, a6, t4
                  xori         s8, a3, 679
487:              slt          s11, s2, a7
                  srai         t0, gp, 30
                  lui          a0, 69607
                  slt          a1, a7, s11
                  nop
                  nop
                  xor          s10, zero, s2
                  add          t2, ra, t2
                  sll          s2, a2, s0
                  beq          s4, a3, 505f
                  srl          t1, gp, s2
                  lui          tp, 835331
                  bgeu         ra, s11, 500f
500:              auipc        t5, 777757
                  sub          s10, s4, s2
                  sll          s9, t0, t5
                  srl          s2, t1, a4
                  srl          zero, t6, a0
505:              slt          a3, a3, t2
                  xor          a4, a0, s9
                  sra          t1, t2, t1
                  slli         tp, s0, 30
                  beq          t5, tp, 511f
                  sub          tp, s6, a6
511:              bge          ra, s11, 526f
                  bne          ra, s3, 526f
                  sra          a4, t5, s10
                  ori          t2, sp, -1035
                  or           ra, a2, t1
                  beq          a7, t2, 524f
                  andi         s10, a7, 480
                  xor          t2, t4, s3
                  blt          t5, s11, 536f
                  andi         a2, a3, -785
                  sll          a3, s9, t5
                  or           zero, s4, s11
                  xori         t1, t2, -1133
524:              sltiu        t1, tp, 1353
                  beq          t6, t3, 528f
526:              sltiu        a0, t2, 1163
                  srli         gp, a3, 22
528:              slt          s1, s9, s2
                  slt          a7, gp, s2
                  andi         s11, s10, 1858
                  srai         a0, tp, 14
                  bgeu         t1, a3, 547f
                  xor          zero, t2, gp
                  slti         zero, t3, -17
                  beq          s7, t6, 555f
536:              bgeu         s1, t5, 555f
                  nop
                  andi         s9, ra, -1868
                  bgeu         s7, s0, 549f
                  slti         a0, t6, -1527
                  add          s0, a4, t6
                  ori          a6, a1, -1546
                  bgeu         a0, t1, 547f
                  sltiu        t5, ra, 98
                  sltiu        s5, ra, -20
                  slli         tp, sp, 1
547:              sub          sp, t5, t6
                  add          gp, t2, a0
549:              sub          a2, a7, s3
                  blt          s10, tp, 561f
                  slt          s11, s5, t6
                  sll          t2, t5, s0
                  slt          ra, a6, s2
                  bltu         a5, t2, 568f
555:              srl          ra, gp, t6
                  and          a2, a3, t0
                  srai         s8, s2, 11
                  srai         s5, s2, 9
                  ori          s1, t2, 827
                  sra          a0, s9, t5
561:              slt          a2, a5, a7
                  beq          t0, a5, 572f
                  xori         a2, a7, 365
                  ori          s0, t4, -88
                  srl          sp, s7, t3
                  nop
                  srli         s2, s8, 2
568:              sub          s8, s8, s3
                  sra          t3, t4, t4
                  srai         t4, a0, 6
                  xori         s4, ra, 1070
572:              bne          a5, t3, 590f
                  ori          s2, s5, 2018
                  slt          s1, a7, s9
                  sltiu        s10, a0, 1176
                  lui          t6, 737837
                  slt          t3, s11, s1
                  sltu         a1, a0, a4
                  ori          a0, a6, -310
                  srli         tp, a1, 20
                  bne          gp, s10, 596f
                  beq          t6, t6, 602f
                  srl          gp, sp, t3
                  sra          a0, t6, s1
                  srai         a0, t4, 21
                  auipc        s4, 649191
                  blt          t5, t0, 597f
                  sra          t0, ra, s11
                  xori         a3, s11, -1684
590:              blt          s9, s5, 608f
                  ori          t6, t2, -974
                  bgeu         tp, a5, 603f
                  slli         t4, s4, 1
                  beq          tp, t2, 609f
                  slli         s8, s7, 8
596:              or           s0, s1, s8
597:              bge          t3, s9, 606f
                  bltu         a6, s8, 603f
                  addi         a3, a0, 1606
                  or           t2, s3, s4
                  slli         s8, s11, 27
602:              srl          a3, a5, s6
603:              sltu         t5, a5, ra
                  andi         s8, t2, -1172
                  nop
606:              sll          zero, gp, a7
                  sltiu        s11, s0, -1745
608:              xori         t1, s5, 1635
609:              add          a4, t3, s8
                  sltiu        s1, s10, 335
                  nop
                  ori          t5, zero, 1650
                  xori         a0, t6, 1417
                  nop
                  xor          a4, a4, ra
                  slti         a2, a7, 1369
                  slli         a0, t6, 18
                  sub          s11, t4, s0
                  auipc        s3, 466745
                  auipc        s0, 830434
                  sra          t2, t0, s5
                  srai         gp, t3, 12
                  xori         gp, t4, -1990
                  sub          s8, s4, a3
                  sll          s8, t6, s4
                  or           a4, s9, t3
                  add          t5, tp, a3
                  sll          t0, zero, s6
                  xori         s5, a5, 225
                  slt          tp, sp, a5
                  beq          gp, s1, 634f
                  srli         a1, t5, 14
                  sltu         s8, t1, s1
634:              bge          s9, a4, 636f
                  nop
636:              beq          s5, a0, 637f
637:              sub          ra, t4, s1
                  addi         a1, s7, -1428
                  srai         a3, a6, 10
                  srli         t4, a7, 6
                  sll          t2, s1, s10
                  bgeu         t1, t3, 643f
643:              bgeu         t0, t3, 644f
644:              slt          a7, s5, s0
                  beq          a1, s8, 659f
                  auipc        t1, 383895
                  ori          ra, t6, 1227
                  sub          s4, sp, zero
                  srl          s2, ra, a3
                  slli         a6, gp, 23
                  sra          sp, s8, a3
                  bgeu         s1, s8, 656f
                  nop
                  andi         t0, s11, -1838
                  sra          a6, s4, a5
656:              add          sp, s9, a5
                  beq          a3, s5, 668f
                  sra          s9, s5, t4
659:              sub          t1, t5, t2
                  andi         s8, t4, 1919
                  auipc        s1, 754319
                  la           sp, region_1+574 #start riscv_load_store_rand_instr_stream_0
                  lbu          s8, -12(sp)
                  sh           s5, 4(sp)
                  lbu          a0, 7(sp)
                  lb           a4, -13(sp)
                  lb           ra, -11(sp)
                  sh           s4, -10(sp)
                  lbu          a7, 0(sp)
                  lb           t1, -5(sp)
                  xori         s8, s0, -1675
                  or           t2, a2, a0
                  lb           gp, -9(sp)
                  lb           a7, -11(sp)
                  lb           t6, -12(sp)
                  lbu          t5, -11(sp)
                  lb           s9, 11(sp)
                  or           s9, s8, s7
                  lhu          zero, -14(sp)
                  nop
                  lb           a0, 1(sp)
                  slti         s3, a1, -735
                  slli         s1, a7, 6
                  add          tp, s7, s11
                  addi         a2, a5, -1325
                  sra          a0, a3, a4
                  sub          t3, a7, s5
                  addi         a4, s1, 1671
                  sh           s5, 2(sp)
                  addi         ra, a0, -1583
                  lb           t0, 0(sp)
                  sh           gp, 14(sp)
                  slt          s3, a7, s0
                  sb           t3, 15(sp)
                  sb           s8, 8(sp)
                  lhu          s9, -12(sp)
                  lbu          a4, 12(sp)
                  lui          t1, 692686
                  sh           t4, -4(sp)
                  andi         a3, gp, -1630
                  xor          t0, a7, a2
                  sw           s2, 14(sp)
                  sh           a6, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  add          a1, t6, s9
                  sub          s1, zero, ra
                  slt          s5, s10, s7
                  addi         t6, s8, -584
                  blt          a7, sp, 676f
                  srli         t1, a7, 11
668:              bne          gp, ra, 683f
                  slti         gp, s3, -24
                  sub          a3, t5, gp
                  srl          s11, t6, t5
                  blt          a6, a2, 689f
                  sra          tp, t3, a3
                  srl          t3, t2, ra
                  or           s10, s1, a7
676:              or           a7, tp, t0
                  slti         gp, a5, 638
                  bge          s8, sp, 692f
                  bgeu         t6, a7, 693f
                  slti         zero, ra, -1642
                  xori         t1, t5, -1818
                  sltiu        a4, t4, 1147
683:              xor          a7, s11, a5
                  xori         tp, s6, 1489
                  bltu         s5, a2, 704f
                  sltiu        tp, ra, 1665
                  blt          s4, s10, 700f
                  slti         s2, t6, 1711
689:              sll          s11, t1, s4
                  add          a3, s10, a2
                  sra          a7, t5, a6
692:              slti         t4, a7, -467
693:              sltu         t5, s9, a1
                  bgeu         a1, a6, 703f
                  add          s4, a4, a7
                  slli         t0, s3, 4
                  slt          gp, s10, zero
                  xori         s1, s8, 1582
                  sub          a4, a0, s1
700:              srai         s9, s8, 24
                  slli         gp, a6, 11
                  xor          t5, tp, sp
703:              blt          s3, t3, 714f
704:              bltu         s10, t1, 707f
                  bgeu         ra, s6, 725f
                  bne          sp, s10, 714f
707:              slli         a2, s1, 3
                  slti         s10, a6, 904
                  xori         zero, s9, 1630
                  add          a4, a7, t5
                  nop
                  add          s9, s8, s8
                  bne          s2, s1, 718f
714:              sub          t6, s8, a5
                  sra          s8, a3, s0
                  sra          a2, s3, ra
                  addi         s1, a6, -1800
718:              add          a6, zero, s2
                  bge          s1, a6, 723f
                  srl          s2, gp, t1
                  bge          t2, a0, 729f
                  beq          s10, s3, 725f
723:              sub          a6, s1, t2
                  bgeu         sp, tp, 738f
725:              beq          s5, s11, 739f
                  ori          a0, a6, -282
                  slti         t3, s1, -880
                  sll          a1, t1, a6
729:              bge          gp, s5, 738f
                  sll          s0, s11, s7
                  sub          a1, s3, s4
                  srli         a6, a5, 6
                  xor          a3, tp, t2
                  sra          zero, s0, zero
                  sra          s3, zero, s3
                  sra          gp, a7, tp
                  andi         sp, a2, 124
738:              nop
739:              bgeu         a5, s3, 754f
                  slli         s11, a0, 24
                  addi         s0, s5, 1199
                  ori          s0, t3, -1602
                  bne          a7, a7, 754f
                  xor          t4, a1, s5
                  bne          t1, sp, 758f
                  bne          a3, a3, 756f
                  xori         s1, a5, 1383
                  sll          a3, a6, a6
                  bge          sp, s7, 767f
                  xor          s8, s5, s2
                  xor          s5, a1, sp
                  sltu         s11, gp, a1
                  ori          s11, t3, 315
754:              slt          s10, a1, ra
                  xor          t6, s9, sp
756:              slt          a4, a4, s5
                  and          a0, a3, tp
758:              sub          ra, s2, s3
                  nop
                  beq          t1, s1, 771f
                  srl          t5, zero, s10
                  or           t1, a6, s0
                  nop
                  or           a6, t5, s4
                  sltu         s0, t4, s5
                  nop
767:              bltu         sp, a6, 777f
                  nop
                  slli         tp, a6, 26
                  sltu         s10, a0, s3
771:              srl          t1, s9, sp
                  auipc        s9, 798236
                  add          gp, t6, a0
                  addi         a4, t6, -246
                  auipc        t0, 160398
                  beq          s1, a4, 791f
777:              blt          zero, a5, 782f
                  srl          tp, t1, a2
                  bne          ra, s6, 794f
                  srai         s11, zero, 30
                  bltu         s0, t5, 792f
782:              and          t2, s2, sp
                  bge          s5, s0, 802f
                  xor          a7, a6, s5
                  sltu         ra, ra, t5
                  ori          s4, a5, 98
                  beq          t1, gp, 789f
                  xori         s5, a6, 1356
789:              ori          t5, s1, 678
                  slt          a2, s7, s3
791:              beq          a4, t2, 792f
792:              addi         a0, s9, 268
                  srai         s9, gp, 20
794:              addi         zero, t4, -1328
                  la           s5, region_1+1122 #start riscv_load_store_rand_instr_stream_7
                  lbu          a2, 18(s5)
                  auipc        a6, 190886
                  lb           a7, 37(s5)
                  srai         t2, a4, 2
                  sb           a5, 41(s5)
                  addi         t1, s10, 1963
                  lbu          a7, -7(s5)
                  srl          a0, a7, s6
                  lh           gp, -12(s5)
                  lbu          s0, 40(s5)
                  lbu          a3, -51(s5)
                  xori         a0, tp, -1533
                  andi         zero, ra, -602
                  lbu          a1, -20(s5)
                  sb           tp, -56(s5)
                  lb           s3, 7(s5)
                  srli         a7, s11, 27
                  lb           t2, 39(s5)
                  and          s10, a7, t2
                  slli         ra, t1, 10
                  sw           t3, -42(s5)
                  lb           s4, 59(s5)
                  and          a6, s1, s10
                  sb           s8, 59(s5)
                  ori          t5, s2, -34
                  lb           t0, 33(s5)
                  addi         zero, s5, -540
                  lbu          s9, 14(s5)
                  add          a2, tp, a5
                  add          s4, t0, a6
                  lhu          a7, 56(s5)
                  lh           s1, -56(s5)
                  srli         s1, t0, 13
                  sh           s11, 20(s5) #end riscv_load_store_rand_instr_stream_7
                  auipc        a3, 655720
                  blt          s0, a2, 810f
                  bne          ra, t3, 817f
                  srl          s11, ra, s0
                  bltu         s1, t0, 803f
                  xor          s8, s0, s3
                  sll          s0, t4, s1
802:              sltu         s11, s2, t0
803:              bne          t1, s4, 804f
804:              sll          t5, s3, s6
                  srli         s3, s7, 28
                  andi         s2, a7, 1088
                  nop
                  sra          a7, a4, t5
                  beq          s9, a2, 814f
810:              sub          t6, gp, gp
                  sltiu        a0, s9, -1966
                  auipc        a1, 386465
                  srl          s1, a6, s2
814:              bltu         a1, s6, 823f
                  bge          sp, a2, 816f
816:              ori          s11, s0, -634
817:              blt          sp, a5, 837f
                  sltu         s3, s7, tp
                  slt          a6, a3, a3
                  auipc        zero, 986957
                  sltiu        t3, s5, 1698
                  blt          t3, zero, 839f
823:              srai         a4, sp, 26
                  and          t5, s10, s10
                  bltu         a3, t2, 829f
                  bne          a3, t3, 829f
                  sub          t0, s5, s9
                  srai         a4, a3, 0
829:              sltiu        t6, s0, 710
                  bge          s3, s11, 848f
                  add          a7, a4, t2
                  bge          t2, s6, 840f
                  slti         t5, a6, -344
                  blt          t5, t5, 854f
                  xori         t1, s0, 131
                  sltiu        t4, tp, 770
837:              srai         s0, t6, 24
                  xori         t3, a3, 406
839:              bltu         s3, a1, 843f
840:              add          s1, a2, s7
                  bne          t1, sp, 856f
                  bge          a2, s8, 843f
843:              slti         a4, s9, -1600
                  bne          s8, a7, 864f
                  bgeu         t2, a7, 856f
                  beq          a4, tp, 851f
                  bltu         s7, s6, 851f
848:              and          t4, t1, gp
                  slti         a6, a7, 385
                  addi         s3, s11, 93
851:              or           a2, s11, t4
                  sub          a3, t3, a2
                  xori         s8, t0, -971
854:              bge          s8, s1, 864f
                  andi         s2, s11, -2045
856:              sltiu        zero, a3, 239
                  lui          a1, 383817
                  xori         s9, s1, -585
                  slt          t1, a4, a3
                  bgeu         a6, s2, 874f
                  sra          s9, gp, a1
                  ori          s0, s8, 967
                  srli         zero, ra, 10
864:              srai         t2, s4, 27
                  and          s1, a6, s11
                  slt          t0, s4, a0
                  addi         s3, a0, 383
                  srl          a1, t2, t6
                  blt          t6, t2, 886f
                  bne          ra, tp, 875f
                  srl          t2, s2, a3
                  or           s1, t6, s5
                  sll          s10, gp, a2
874:              sll          t2, s7, s10
875:              and          t4, a7, a6
                  add          tp, t0, a6
                  blt          t0, tp, 878f
878:              bne          zero, t1, 889f
                  lui          s11, 612792
                  or           t0, a4, a6
                  bgeu         s1, ra, 892f
                  auipc        ra, 53921
                  add          a1, a2, a4
                  addi         a3, a2, 581
                  sub          t3, a5, s7
886:              beq          t2, s0, 900f
                  sltiu        s3, s4, -1639
                  nop
889:              bgeu         a1, a5, 898f
                  auipc        t5, 720399
                  sltu         zero, t2, s7
892:              addi         s4, sp, -554
                  bgeu         sp, gp, 906f
                  xori         a4, a2, 1935
                  lui          s5, 403731
                  sltu         t6, s9, s5
                  srl          gp, s0, a4
898:              and          s5, t3, s0
                  addi         s1, s0, 2012
900:              lui          gp, 974981
                  ori          s9, a0, -669
                  bge          t2, t5, 903f
903:              bge          t4, t6, 918f
                  sub          s11, a4, a1
                  nop
906:              slli         gp, s1, 14
                  or           s5, sp, a3
                  slti         a2, s3, 1451
                  xori         a1, a0, 1855
                  lui          s5, 961923
                  xori         t5, a4, -1007
                  blt          s3, t5, 922f
                  beq          s6, s5, 928f
                  add          t5, s4, s6
                  bne          s9, t0, 918f
                  and          s3, t6, ra
                  slti         s8, a2, 1506
918:              sll          t2, zero, t5
                  sll          t4, s6, a1
                  add          zero, a5, a7
                  or           a6, s10, a6
922:              srl          t5, gp, ra
                  or           sp, t6, a4
                  auipc        a0, 730148
                  slti         ra, s11, -1092
                  sub          s0, t5, a1
                  xor          s5, a6, a2
928:              ori          a2, a7, 1341
                  beq          s4, s4, 938f
                  and          a0, s9, tp
                  and          ra, t2, sp
                  bgeu         s5, a7, 935f
                  slli         t3, gp, 25
                  lui          gp, 267437
935:              srai         sp, a5, 1
                  auipc        t5, 333087
                  slti         a0, a0, 114
938:              beq          s7, s4, 940f
                  xor          ra, s6, t4
940:              beq          t4, a5, 954f
                  andi         sp, t3, 1326
                  slti         zero, s1, -1112
                  lui          s9, 6392
                  srai         a4, a2, 9
                  sra          s0, zero, a6
                  sltu         s0, a1, a3
                  bltu         t0, s5, 966f
                  andi         s1, s5, -841
                  beq          t2, t0, 967f
                  xor          a0, s9, t2
                  xor          a4, s3, s7
                  srl          t6, t0, s9
                  srai         s2, sp, 23
954:              bne          s3, s3, 959f
                  sltu         s11, s3, s2
                  and          a0, t1, s4
                  sra          s11, s3, s1
                  andi         tp, a2, 225
959:              bne          gp, s6, 960f
960:              nop
                  nop
                  beq          a0, s5, 977f
                  xor          t0, t3, a3
                  add          s5, tp, s6
                  addi         t6, t4, 1348
966:              ori          s1, s2, -1833
967:              srli         a2, t0, 14
                  xor          s11, a1, gp
                  bne          a5, tp, 980f
                  sltiu        t3, s9, 1033
                  slt          sp, sp, tp
                  bgeu         t2, s9, 986f
                  srai         s9, s9, 26
                  srai         a2, s0, 5
                  sll          a4, a6, a3
                  and          s2, s2, s8
977:              beq          s1, sp, 986f
                  addi         tp, t4, 824
                  bne          s5, s4, 983f
980:              sltu         a3, s11, ra
                  xori         t0, t4, 1595
                  bltu         s1, t4, 996f
983:              slli         t1, a0, 11
                  blt          a2, s4, 987f
                  srli         a3, t4, 30
986:              nop
987:              sltu         t2, a5, a7
                  xori         t1, s7, -907
                  srl          ra, a3, t4
                  and          a2, t1, a7
                  or           s2, t1, zero
                  xori         t4, t2, 1401
                  auipc        a3, 776991
                  srai         t5, s1, 14
                  addi         a0, t1, 1264
996:              xor          a0, s10, t0
                  xor          t0, s0, t4
                  srl          sp, a0, s0
                  slti         t6, a4, 1101
                  or           a0, s9, s0
                  add          tp, s11, a6
                  nop
                  sub          s9, a7, t5
                  sltiu        ra, t6, 264
                  nop
                  nop
                  bgeu         t2, zero, 1020f
                  slti         s9, s5, 1780
                  auipc        s1, 335355
                  srli         s8, ra, 4
                  bne          a1, a1, 1016f
                  slti         a2, a2, 543
                  lui          t4, 896053
                  srli         s5, ra, 21
                  slli         ra, t5, 8
1016:             bltu         t6, s6, 1036f
                  sra          s11, a1, a5
                  andi         t3, s9, 514
                  add          a7, a3, a6
1020:             sll          s9, t0, s0
                  sltu         s4, a0, t6
                  xori         t1, s7, -1515
                  sltu         a0, tp, t2
                  add          a0, sp, s8
                  sub          s2, s7, s4
                  bge          ra, t6, 1035f
                  bltu         s11, s7, 1044f
                  sltu         t3, t2, t2
                  bgeu         tp, a2, 1044f
                  slli         a6, tp, 9
                  srai         t2, a0, 31
                  addi         gp, ra, 1475
                  slt          s8, s5, t5
                  auipc        s11, 280407
1035:             or           s1, a6, s6
1036:             beq          s3, t3, 1039f
                  sltu         s2, s11, s0
                  bge          a2, s3, 1053f
1039:             or           t5, a4, a5
                  blt          a3, a1, 1050f
                  srai         a6, s11, 8
                  xor          s9, s3, s5
                  la           sp, region_1+919 #start riscv_load_store_rand_instr_stream_2
                  auipc        s9, 243362
                  lbu          tp, 14(sp)
                  sltu         s2, a0, tp
                  lb           a6, -55(sp)
                  srli         s9, t5, 4
                  sb           a1, -108(sp)
                  sltiu        t2, gp, -1869
                  andi         s1, t1, 1790
                  lbu          s11, -37(sp)
                  lui          a7, 545040
                  lhu          a1, -123(sp)
                  add          ra, ra, t1
                  or           ra, s1, t2
                  xor          t2, s7, s6
                  slt          t0, a5, t5
                  lbu          s3, 61(sp)
                  lbu          t1, -104(sp)
                  srli         t2, s4, 0
                  sltu         s0, s9, t5
                  sb           s6, 46(sp)
                  lb           s10, 178(sp)
                  lbu          s2, -176(sp)
                  lbu          a6, -40(sp)
                  slt          s9, gp, a5
                  lb           t5, -42(sp)
                  slli         s4, tp, 12
                  slti         t3, a3, 901
                  lbu          s9, 87(sp)
                  sb           ra, 176(sp)
                  lhu          a6, -237(sp)
                  slt          t1, t4, s2
                  sh           a5, 103(sp)
                  sw           s8, -187(sp)
                  srli         s8, t5, 28
                  lbu          s9, 87(sp)
                  lbu          ra, -186(sp)
                  lbu          s1, 210(sp) #end riscv_load_store_rand_instr_stream_2
                  slti         s5, tp, 1052
1044:             beq          a5, a5, 1046f
                  addi         sp, a0, -46
1046:             nop
                  auipc        a7, 426653
                  slt          s0, s10, s9
                  sll          s3, s2, a0
1050:             sltu         zero, gp, s4
                  sra          t0, a3, s10
                  and          t5, a3, a6
1053:             lui          s8, 555044
                  srai         a1, a5, 5
                  srl          a3, t1, s11
                  sltu         s2, a7, a4
                  bltu         t5, a7, 1061f
                  nop
                  sll          s5, ra, sp
                  sub          s4, t2, t3
1061:             bgeu         s10, ra, 1080f
                  sub          sp, s1, a4
                  nop
                  bltu         t5, a6, 1074f
                  ori          t0, s5, 204
                  andi         zero, zero, 1040
                  beq          s4, a3, 1068f
1068:             nop
                  slt          ra, a0, tp
                  nop
                  bge          t1, t4, 1082f
                  srl          t2, s9, t4
                  sltu         a4, s7, ra
1074:             slli         s9, a4, 12
                  sll          s2, s10, t1
                  ori          s8, a4, -1598
                  lui          tp, 996313
                  ori          s5, a2, -1550
                  auipc        ra, 711147
1080:             and          a4, sp, s7
                  bltu         t5, a6, 1089f
1082:             xori         s10, t5, 1429
                  ori          a6, a4, 379
                  sll          a7, s10, tp
                  sub          s11, s3, s6
                  lui          t6, 712596
                  addi         s9, s0, -984
                  sra          a0, s0, s11
1089:             sll          a1, s8, gp
                  srli         s8, s10, 1
                  sra          s11, a2, s10
                  auipc        s2, 174654
                  beq          a3, s4, 1113f
                  sltiu        a2, a4, -1691
                  bgeu         sp, t0, 1096f
1096:             sltiu        t5, t6, -177
                  xor          s11, t6, s4
                  sltu         zero, s1, a0
                  lui          s1, 901996
                  blt          a7, zero, 1111f
                  lui          s9, 449674
                  add          t3, s11, a3
                  nop
                  add          t3, sp, s10
                  auipc        a0, 229420
                  sltu         s11, a7, s0
                  sra          a3, t2, s2
                  xor          t0, gp, s7
                  srli         t0, tp, 18
                  srai         a7, gp, 27
1111:             slli         sp, s8, 10
                  xor          t0, s5, s11
1113:             slli         s9, t2, 0
                  blt          s7, s3, 1128f
                  and          ra, gp, s1
                  srl          s5, s0, s9
                  nop
                  blt          t3, gp, 1127f
                  nop
                  sll          s0, s0, s8
                  beq          s2, t4, 1141f
                  beq          s3, s8, 1135f
                  andi         a3, zero, 287
                  bne          a1, a2, 1128f
                  bge          t6, ra, 1139f
                  xor          t0, s9, a0
1127:             slti         ra, s1, 1667
1128:             srli         ra, t5, 29
                  lui          t0, 945689
                  srl          zero, t0, t0
                  blt          a7, a2, 1146f
                  blt          s5, a5, 1146f
                  sll          s3, a2, gp
                  bne          a7, a4, 1142f
1135:             bne          a2, ra, 1150f
                  blt          s1, a4, 1155f
                  addi         s5, a2, -148
                  sltu         tp, ra, a6
1139:             bltu         s10, a2, 1153f
                  xor          t6, tp, a4
1141:             sub          t3, zero, s6
1142:             and          gp, s2, a0
                  bltu         s8, s6, 1145f
                  bge          a4, a4, 1153f
1145:             nop
1146:             srai         s2, ra, 31
                  bne          sp, a3, 1158f
                  sltu         t5, s1, t0
                  ori          zero, a5, 526
1150:             andi         s2, t3, -1414
                  addi         tp, s1, -1419
                  or           a7, t4, s6
1153:             sltu         s11, s5, s4
                  slt          ra, s5, s0
1155:             sub          s9, s11, ra
                  blt          a1, a0, 1157f
1157:             nop
1158:             bgeu         a1, t0, 1159f
1159:             bge          s6, s3, 1169f
                  sltu         s9, a0, t0
                  bgeu         t6, a0, 1162f
1162:             srai         a7, sp, 19
                  slti         s8, ra, 1957
                  sltu         t6, s2, zero
                  srai         s3, s11, 21
                  slli         s0, s5, 0
                  blt          tp, s2, 1172f
                  lui          s3, 463673
1169:             bltu         t3, s11, 1174f
                  sltu         t0, s7, s7
                  bgeu         zero, a2, 1186f
1172:             sltiu        a2, s2, -271
                  bgeu         s6, a2, 1191f
1174:             sra          tp, s0, t2
                  add          t2, s5, s3
                  auipc        s9, 431422
                  srai         sp, s8, 0
                  bltu         s9, t3, 1188f
                  xori         a6, a1, 1993
                  slt          a2, a0, s9
                  add          ra, s9, t1
                  srai         a1, s5, 28
                  sll          a7, t4, t0
                  sll          s11, t1, t0
                  nop
1186:             bge          a2, zero, 1197f
                  xor          s11, a2, ra
1188:             add          tp, s0, s10
                  slli         ra, s9, 25
                  andi         sp, a6, -1511
1191:             srli         t3, a3, 28
                  slti         s1, s9, -1053
                  ori          t5, s9, 1604
                  sltu         ra, a6, a7
                  srl          t4, gp, s9
                  auipc        a0, 328744
1197:             sll          s1, t5, s10
                  add          s0, s8, a5
                  xori         s3, a0, -1118
                  srl          s11, t3, s11
                  slli         s8, t5, 6
                  srli         t5, a3, 28
                  sltu         sp, t2, a4
                  auipc        gp, 657651
                  lui          s2, 829950
                  andi         s4, a6, -1713
                  ori          s2, s3, -643
                  add          t4, a0, tp
                  srai         t0, a7, 19
                  ori          a2, s6, 816
                  sub          t4, tp, zero
                  auipc        s2, 213991
                  beq          a3, t3, 1233f
                  add          a2, a6, t1
                  slli         s3, s8, 28
                  bne          s3, s7, 1233f
                  srl          s2, zero, sp
                  slt          t6, s4, a7
                  xor          a4, a2, s8
                  andi         ra, a2, 2007
                  xor          t3, zero, s0
                  slt          s10, a5, s2
                  xori         a0, s11, 1859
                  sltu         a0, a0, a4
                  bltu         t5, ra, 1229f
                  blt          s1, t5, 1229f
                  andi         a6, a0, 1754
                  bgeu         s10, t3, 1239f
1229:             add          s2, s1, a1
                  add          s4, a3, a2
                  ori          t4, a6, 858
                  sub          s3, s8, t1
1233:             xori         s4, gp, 419
                  slli         t0, a4, 23
                  or           a2, s0, t5
                  sub          a3, ra, s0
                  bne          ra, s2, 1240f
                  slt          a0, a0, a2
1239:             lui          s5, 639838
1240:             andi         a7, s3, 931
                  andi         a2, a6, -703
                  bne          ra, a2, 1259f
                  sltu         t4, t6, s11
                  beq          s2, t1, 1262f
                  add          s11, gp, s11
                  srl          s2, s8, gp
                  bge          s7, a5, 1249f
                  or           a7, a6, s6
1249:             blt          a0, t5, 1250f
1250:             ori          a4, a1, -1802
                  slli         a0, s6, 31
                  srl          t0, tp, a2
                  xori         sp, a5, 1955
                  sub          a6, zero, s2
                  sll          t1, a6, t0
                  blt          s8, a4, 1271f
                  ori          t0, ra, 350
                  nop
1259:             addi         s5, tp, 1484
                  bne          s7, zero, 1275f
                  bltu         s0, s4, 1264f
1262:             auipc        s11, 914650
                  slt          a3, t0, s11
1264:             srl          zero, s10, a2
                  ori          t2, s10, 436
                  slt          a7, a5, tp
                  ori          t6, s7, -1779
                  srli         a3, a7, 19
                  beq          t5, a6, 1282f
                  andi         t6, s4, -1302
1271:             nop
                  slti         zero, gp, -1628
                  addi         a7, s6, 607
                  xori         s4, t6, -721
1275:             blt          t1, gp, 1285f
                  slti         a7, a7, -1746
                  srl          a1, ra, sp
                  srl          t4, a4, t2
                  sltiu        a1, t2, 185
                  slti         t3, sp, 192
                  nop
1282:             blt          s2, sp, 1287f
                  lui          t3, 147220
                  slti         t6, a1, 416
1285:             slli         ra, s10, 14
                  sra          sp, ra, t1
1287:             bne          s2, t5, 1301f
                  bne          a3, t6, 1302f
                  xor          t4, a3, ra
                  nop
                  lui          s10, 248866
                  bne          tp, tp, 1301f
                  beq          zero, s3, 1297f
                  nop
                  bltu         s2, s5, 1315f
                  sltu         a1, s1, t0
1297:             lui          gp, 222540
                  sll          s5, t1, a0
                  xori         gp, a7, 636
                  blt          t0, sp, 1303f
1301:             sltu         t1, s10, s10
1302:             sltiu        a4, s3, -650
1303:             bge          a5, a3, 1322f
                  lui          s5, 979472
                  lui          s3, 342521
                  blt          a1, s2, 1316f
                  blt          s11, a2, 1315f
                  lui          s10, 66868
                  and          t1, t1, s2
                  lui          a4, 330124
                  bne          a5, a0, 1312f
1312:             slti         zero, t2, 290
                  slli         zero, t6, 7
                  beq          s4, s3, 1334f
1315:             bge          a7, zero, 1330f
1316:             auipc        ra, 862725
                  slt          t6, tp, zero
                  auipc        t3, 864617
                  blt          t3, a4, 1324f
                  and          s0, t4, s5
                  lui          s11, 210991
1322:             ori          t2, a4, -454
                  bltu         a3, a1, 1334f
1324:             srai         t1, s0, 22
                  xor          s10, t0, t2
                  sll          a3, s10, s3
                  sltiu        s8, a3, 625
                  and          t0, a7, sp
                  auipc        s1, 700104
1330:             xori         a1, a5, -1204
                  slti         s3, tp, -939
                  or           s5, t6, a5
                  andi         s4, t2, -873
1334:             sltiu        zero, a6, 961
                  bge          t3, ra, 1336f
1336:             bne          s11, t4, 1350f
                  sub          s2, a5, s5
                  bge          a4, t0, 1342f
                  srl          s0, a1, a2
                  or           t1, s3, a1
                  andi         a1, sp, 56
1342:             blt          a4, s10, 1353f
                  sra          a3, zero, t1
                  sltu         s4, s4, a1
                  ori          a0, a2, 685
                  sll          t3, gp, gp
                  sra          s9, s1, a7
                  xori         s10, s6, 149
                  bgeu         t2, a5, 1358f
1350:             srl          a3, gp, gp
                  or           a6, tp, a7
                  bge          a2, s6, 1363f
1353:             addi         zero, t1, 1208
                  auipc        s9, 866955
                  xor          t0, a4, a5
                  sltiu        t6, s11, -423
                  srai         s10, a2, 10
1358:             and          s5, s8, s8
                  slti         s4, sp, 1887
                  blt          a3, a1, 1380f
                  slti         a2, sp, 1315
                  sltu         a0, a1, a7
1363:             ori          a0, a4, -1396
                  sltu         t3, s10, a2
                  sltu         ra, a2, s9
                  bne          tp, t5, 1370f
                  ori          t1, a6, -1049
                  bne          s2, s4, 1381f
                  sltu         t5, s0, s0
1370:             slt          a1, s10, gp
                  slt          a4, s11, ra
                  ori          a6, s9, -1139
                  bge          t1, s8, 1376f
                  bgeu         zero, zero, 1376f
                  xor          t0, a0, s5
1376:             sub          s5, t3, ra
                  sltiu        t0, a1, 419
                  slt          zero, t0, zero
                  sra          s2, t4, s9
1380:             bltu         a6, t5, 1397f
1381:             blt          s4, t5, 1382f
1382:             srl          a0, s11, a1
                  ori          s3, s2, 1864
                  andi         a1, a0, -1305
                  or           s8, s1, a3
                  blt          s3, s4, 1397f
                  slt          zero, t5, gp
                  xor          sp, s6, gp
                  srli         s3, t0, 6
                  or           s4, tp, a2
                  lui          s3, 151113
                  nop
                  bltu         s11, sp, 1394f
1394:             sub          t3, a3, a0
                  xori         tp, tp, 69
                  and          t6, s5, t5
1397:             add          a1, s11, t1
                  xor          s3, a5, a0
                  auipc        a2, 25999
                  sll          a3, t3, s5
                  lui          s9, 390225
                  slli         a1, a1, 19
                  ori          s0, s8, -740
                  blt          s2, t1, 1415f
                  xor          s8, a5, a0
                  ori          sp, s3, -384
                  ori          t1, a2, 488
                  srl          a0, a2, t0
                  bne          tp, ra, 1424f
                  xori         t2, s0, -959
                  srai         a0, zero, 5
                  auipc        s4, 718621
                  xor          s9, a1, s2
                  nop
1415:             sltiu        a0, s11, 661
                  beq          ra, t6, 1426f
                  bne          t6, a7, 1432f
                  bne          s1, s5, 1432f
                  srl          s2, s6, s6
                  ori          s8, t0, 1675
                  add          sp, s5, a7
                  lui          s2, 901391
                  add          a6, a2, s8
1424:             or           s9, t0, t0
                  andi         a7, sp, 1659
1426:             bgeu         t0, t4, 1435f
                  bne          s3, zero, 1445f
                  blt          a0, t4, 1438f
                  nop
                  sra          a1, t1, t5
                  beq          s0, s11, 1436f
1432:             srl          s5, s3, s11
                  addi         t4, ra, -1277
                  blt          gp, a3, 1449f
1435:             slti         s5, s8, -2006
1436:             add          s11, s3, ra
                  sll          t1, s1, s2
1438:             sra          gp, s0, t1
                  and          t6, a5, gp
                  nop
                  andi         gp, s7, 2034
                  andi         gp, s3, 1613
                  blt          a3, s3, 1444f
1444:             sra          s2, gp, tp
1445:             srli         tp, t5, 16
                  beq          a7, tp, 1450f
                  auipc        s11, 191953
                  sll          a1, a0, t2
1449:             srl          t3, s1, s3
1450:             sra          t5, a1, t3
                  andi         t6, t1, 134
                  ori          s2, s9, 687
                  or           a3, ra, a1
                  or           s3, tp, s5
                  sltiu        t6, s10, -954
                  xor          t2, s2, tp
                  xor          a6, t4, ra
                  sltiu        a4, s10, 1578
                  add          t3, a7, s6
                  lui          s1, 717376
                  slli         t4, tp, 19
                  lui          s8, 653363
                  bgeu         a2, a7, 1483f
                  sll          a6, a6, t5
                  add          tp, s2, s0
                  bge          s11, a3, 1477f
                  slt          a6, t4, zero
                  bgeu         t5, s9, 1471f
                  bge          t4, t5, 1474f
                  andi         a3, tp, -2041
1471:             bltu         tp, zero, 1480f
                  bgeu         s8, zero, 1480f
                  bltu         s3, ra, 1487f
1474:             bge          s4, s0, 1488f
                  bgeu         t4, a6, 1494f
                  blt          ra, s7, 1486f
1477:             srl          a7, s1, a2
                  andi         a4, s11, -1498
                  bgeu         t1, a6, 1490f
1480:             auipc        gp, 182217
                  srl          tp, t6, t1
                  sll          tp, s7, gp
1483:             xori         a3, t1, 488
                  sra          gp, gp, sp
                  slli         s5, t4, 11
1486:             nop
1487:             srai         t3, s8, 1
1488:             sltiu        s5, t6, -783
                  bne          ra, t2, 1490f
1490:             srl          a3, gp, tp
                  sub          s11, a0, a0
                  sub          sp, a3, a6
                  bge          s5, s5, 1494f
1494:             xor          tp, a6, a3
                  auipc        a6, 897893
                  srai         t4, zero, 16
                  sll          sp, t6, s3
                  sltiu        s9, s10, -618
                  lui          zero, 18686
                  beq          s0, t6, 1502f
                  bgeu         s11, a4, 1504f
1502:             bge          s3, s4, 1519f
                  sra          a1, t0, s0
1504:             nop
                  slt          gp, t0, tp
                  bge          t5, gp, 1526f
                  srli         t4, t2, 26
                  sll          t4, a1, s8
                  sltiu        t4, gp, -288
                  bgeu         a6, s0, 1524f
                  srai         s0, a2, 6
                  srl          s2, a0, sp
                  ori          t1, a3, 395
                  sltu         sp, s2, a4
                  andi         t4, a1, 167
                  slti         a3, t2, 2043
                  xor          s11, t5, s0
                  or           s0, s2, s6
1519:             blt          s2, s10, 1523f
                  nop
                  sltu         t5, a5, s5
                  ori          ra, s9, -640
1523:             bgeu         a7, s0, 1537f
1524:             blt          ra, t0, 1535f
                  or           a2, a4, s1
1526:             or           s1, t1, t6
                  blt          s11, a0, 1545f
                  sll          s8, a0, t2
                  bne          a2, t5, 1534f
                  sltiu        a0, a0, -1194
                  xori         t3, a2, 2031
                  sll          sp, ra, t4
                  xori         t6, sp, 1025
1534:             bltu         sp, s4, 1545f
1535:             andi         a4, a5, 2012
                  ori          sp, s1, 531
1537:             sltu         a4, t0, a7
                  and          s4, s7, s11
                  beq          a5, s8, 1544f
                  bgeu         s10, t1, 1549f
                  sub          s8, a6, t2
                  add          a7, t4, a7
                  sub          zero, a4, s11
1544:             sra          t2, t4, s10
1545:             auipc        sp, 925008
                  lui          zero, 290669
                  slli         s3, t4, 24
                  nop
1549:             nop
                  or           s8, a2, t4
                  bne          ra, s9, 1560f
                  srl          a1, a4, t4
                  beq          s2, a4, 1566f
                  beq          s6, zero, 1573f
                  sltu         ra, a7, a6
                  bltu         s6, s10, 1571f
                  or           a1, s1, t5
                  slti         t6, ra, -408
                  bltu         a6, t6, 1573f
1560:             beq          t2, a5, 1575f
                  slt          a7, t5, a3
                  bgeu         s9, t3, 1563f
1563:             sltiu        s1, t4, -1530
                  bltu         s9, gp, 1574f
                  bge          s4, s3, 1585f
1566:             andi         t2, s3, -59
                  bltu         a1, s7, 1575f
                  bgeu         s10, a4, 1572f
                  sub          sp, zero, gp
                  sub          t0, t5, a2
1571:             and          a2, a2, t2
1572:             sub          sp, a7, a2
1573:             blt          zero, s1, 1576f
1574:             bltu         tp, s8, 1589f
1575:             bgeu         a3, a7, 1592f
1576:             or           zero, s2, a4
                  srli         gp, a5, 19
                  and          s1, s4, a6
                  slt          t1, s2, a4
                  sltiu        a7, a0, -1997
                  srl          a1, a5, a1
                  xor          a4, s1, t5
                  slti         s5, t3, 1009
                  and          a6, a5, s2
1585:             andi         s8, t3, -454
                  bge          gp, a7, 1596f
                  nop
                  slti         s8, gp, -1693
1589:             bge          a1, s11, 1603f
                  srl          t0, ra, a5
                  sltu         s1, a3, t2
1592:             bne          t0, s0, 1612f
                  bne          s11, sp, 1606f
                  beq          zero, s1, 1602f
                  andi         t0, t2, 1386
1596:             slli         ra, s11, 28
                  slti         ra, s3, 1751
                  bge          s3, s6, 1607f
                  xori         zero, t3, -1037
                  ori          s0, s1, -475
                  srai         s10, s1, 31
1602:             addi         ra, a1, 1161
1603:             srli         s1, s6, 31
                  addi         tp, t1, -422
                  bge          s9, s1, 1620f
1606:             sltu         t5, s10, s6
1607:             or           a4, a7, a1
                  beq          s10, a4, 1612f
                  slli         s4, a5, 13
                  slti         t4, a2, -1739
                  sltu         a2, s4, s6
1612:             bge          t4, s10, 1615f
                  bne          sp, s10, 1628f
                  srl          s0, s4, t0
1615:             addi         s0, s9, 1854
                  ori          sp, t2, -665
                  srl          t5, a7, tp
                  beq          t5, tp, 1621f
                  bgeu         t3, sp, 1637f
1620:             slti         s5, t1, -779
1621:             add          s3, ra, s8
                  sub          s9, s5, ra
                  nop
                  sltiu        s9, sp, 81
                  sra          t5, s7, s11
                  or           s0, t6, t4
                  ori          sp, s7, -604
1628:             blt          tp, s2, 1647f
                  sltu         s1, s1, zero
                  bltu         s3, s3, 1631f
1631:             auipc        a7, 414445
                  and          s11, ra, s11
                  ori          a7, a6, -658
                  bgeu         s10, t6, 1654f
                  auipc        s4, 209214
                  srai         t5, a2, 22
1637:             sub          t6, s1, s5
                  andi         s0, a2, -841
                  sll          s8, t5, s1
                  xori         sp, a1, 21
                  xori         zero, t3, 1279
                  ori          s10, a0, -1936
                  srli         s3, tp, 23
                  and          t2, s11, s2
                  xori         t2, s10, 681
                  srai         s10, t5, 4
1647:             srli         s4, s8, 0
                  slti         s8, s7, -1803
                  bge          a5, s5, 1658f
                  auipc        a6, 417798
                  xori         zero, s2, -940
                  sra          t5, a1, t0
                  addi         a4, sp, 1081
1654:             sra          a1, s4, s8
                  bltu         t5, t6, 1669f
                  slti         s10, s8, -607
                  bgeu         s7, t3, 1659f
1658:             lui          s11, 524849
1659:             blt          a6, a6, 1670f
                  sll          a6, s10, zero
                  andi         s9, ra, 1873
                  slt          s3, s5, s11
                  andi         t2, a2, -1392
                  bge          t0, s8, 1675f
                  blt          t3, s4, 1680f
                  srl          a2, tp, s5
                  srl          a4, s5, a6
                  xor          s0, a2, t4
1669:             srl          sp, sp, s3
1670:             srai         s11, a2, 2
                  bgeu         a2, a2, 1672f
1672:             xor          zero, s9, s7
                  srli         t4, a2, 11
                  auipc        s5, 95751
1675:             or           a7, s4, a3
                  xor          tp, t1, t2
                  bltu         t5, a5, 1691f
                  slt          s1, t5, a6
                  bge          s6, a3, 1690f
1680:             addi         s8, s0, 999
                  srai         gp, a7, 18
                  bne          s1, t5, 1687f
                  bgeu         ra, s9, 1693f
                  auipc        s9, 503890
                  beq          s9, gp, 1689f
                  nop
1687:             slti         t4, s4, -1167
                  xori         s11, t3, -661
1689:             addi         ra, a2, 1258
1690:             add          ra, s4, s1
1691:             bltu         s10, s8, 1692f
1692:             bgeu         t6, a7, 1697f
1693:             slt          t0, s2, s5
                  nop
                  slt          t5, a6, a2
                  ori          t2, tp, 1679
1697:             xori         s5, s2, -1039
                  add          gp, a2, s4
                  or           sp, s0, t2
                  nop
                  srl          s11, t5, s8
                  srli         zero, s0, 19
                  add          t2, a2, t1
                  srli         s10, s5, 27
                  bgeu         a1, t0, 1718f
                  auipc        s2, 590313
                  srl          s9, gp, a5
                  srli         s1, t6, 20
                  add          s1, s9, s10
                  srl          t1, s5, s8
                  srai         s11, s8, 15
                  lui          a1, 764865
                  bgeu         s6, t3, 1727f
                  nop
                  bltu         t5, s6, 1716f
1716:             slt          t3, t4, a1
                  slti         s11, a4, 172
1718:             addi         zero, s6, -1453
                  andi         s8, a7, 1870
                  srli         s3, a4, 3
                  xor          s9, a0, a3
                  nop
                  srli         s5, s8, 30
                  or           s10, sp, a4
                  or           s5, t5, a6
                  xori         a0, s11, 249
1727:             slti         s2, gp, 306
                  srli         t4, t1, 27
                  sll          a4, zero, t2
                  srl          t4, s2, a2
                  bgeu         t5, t2, 1740f
                  sltiu        a2, s8, -1356
                  srli         a2, s6, 8
                  bne          s7, s7, 1739f
                  bge          s8, t1, 1738f
                  andi         ra, t1, 731
                  bltu         ra, sp, 1747f
1738:             or           s5, s4, s11
1739:             bne          t5, s10, 1753f
1740:             sra          s10, t0, s8
                  bne          s11, t3, 1756f
                  add          tp, t4, s4
                  bne          t3, t4, 1751f
                  nop
                  xor          t5, s5, s0
                  lui          s1, 260260
1747:             xor          t3, a7, a7
                  slli         s5, s9, 11
                  sub          a7, s2, s5
                  sltiu        zero, s3, 404
1751:             bltu         s10, a5, 1752f
1752:             bltu         s11, a3, 1761f
1753:             xor          a2, s5, a7
                  sra          s1, s10, gp
                  sub          s1, t2, t1
1756:             sltu         s9, a1, a6
                  ori          s0, zero, 1342
                  or           gp, ra, a7
                  or           s8, t0, s7
                  addi         t3, sp, -758
1761:             slli         a0, s3, 18
                  slt          a1, a6, s3
                  lui          t6, 278049
                  sltu         s0, a1, s4
                  sra          t2, s6, s4
                  sltiu        s8, sp, -232
                  lui          s8, 328727
                  and          tp, a0, sp
                  srl          s4, s0, a1
                  andi         t5, a3, 1950
                  srai         a0, t6, 1
                  srl          s1, s3, a1
                  blt          s8, s1, 1777f
                  sra          t4, a7, a3
                  slt          zero, s6, s2
                  slli         t5, gp, 1
1777:             ori          a0, t3, -1125
                  srl          a4, a0, tp
                  add          s4, a2, s10
                  addi         s10, s1, 595
                  slli         tp, t6, 7
                  nop
                  blt          s0, s4, 1800f
                  sll          a0, sp, t4
                  auipc        s1, 631148
                  sra          gp, sp, a3
                  auipc        t0, 89909
                  nop
                  bge          a5, s11, 1809f
                  nop
                  and          a2, s2, gp
                  bge          a3, s7, 1796f
                  andi         s10, s5, -1593
                  srai         s4, s3, 14
                  auipc        a1, 397247
1796:             bne          ra, sp, 1814f
                  addi         a1, a4, 1377
                  bge          t0, s9, 1808f
                  slt          t3, s8, s5
1800:             srli         s11, s2, 3
                  add          s10, s10, s0
                  slti         t3, t6, 1456
                  beq          t6, t4, 1818f
                  sra          a7, s5, s2
                  add          gp, s0, a7
                  and          s4, s0, t6
                  sltu         s5, a4, t2
1808:             slli         t2, t1, 18
1809:             xor          s10, a2, a4
                  xor          t3, t5, t3
                  bltu         s4, a5, 1826f
                  and          zero, a4, zero
                  bne          s3, s2, 1814f
1814:             bge          s9, a6, 1817f
                  addi         a2, s8, 1327
                  bgeu         s7, s1, 1827f
1817:             ori          a3, a2, -1249
1818:             slli         s11, a2, 22
                  slli         a3, t1, 29
                  sltu         sp, zero, s9
                  lui          t5, 175646
                  and          a3, a6, t2
                  srli         a3, s9, 27
                  sub          s8, s9, a5
                  sub          a3, ra, a5
1826:             add          a2, a4, s10
1827:             sll          t4, t4, s9
                  blt          s5, s10, 1839f
                  sub          s8, a4, s6
                  slti         t6, a6, -2017
                  sltu         a7, s1, a3
                  srai         t5, a6, 23
                  add          tp, s2, a0
                  nop
                  beq          a0, s6, 1854f
                  srai         t2, t3, 2
                  sll          gp, t5, a3
                  or           t3, a6, s11
1839:             sltiu        s11, tp, -1370
                  sltiu        t6, a4, 492
                  add          a0, a2, gp
                  lui          a2, 583437
                  beq          s1, zero, 1845f
                  srai         sp, a5, 0
1845:             beq          a3, s3, 1859f
                  bgeu         a0, a3, 1857f
                  srl          s5, s1, zero
                  xor          t0, a1, s2
                  bge          s3, s2, 1869f
                  or           s10, a7, s3
                  sub          a2, s11, s5
                  bgeu         s8, a2, 1857f
                  sltiu        s5, t1, -1956
1854:             xor          a0, sp, gp
                  bgeu         zero, zero, 1874f
                  blt          a5, a7, 1865f
1857:             sltu         s4, t5, zero
                  lui          t1, 1005480
1859:             bne          t1, a2, 1870f
                  blt          sp, s0, 1873f
                  ori          tp, a0, -883
                  sra          t6, s8, zero
                  slti         a7, a3, -785
                  sltiu        a7, t5, -1814
1865:             slti         s0, a3, 880
                  auipc        sp, 826270
                  blt          a6, sp, 1868f
1868:             addi         ra, t0, -611
1869:             beq          a4, t4, 1879f
1870:             bgeu         s4, a0, 1884f
                  andi         s1, t1, 970
                  bge          t6, t1, 1873f
1873:             sltiu        s8, a6, 2004
1874:             slli         t4, t3, 30
                  slt          gp, a1, a4
                  bne          s0, zero, 1896f
                  lui          s9, 93276
                  lui          t4, 351313
1879:             beq          a1, a6, 1887f
                  auipc        s1, 869404
                  slt          a6, s2, s0
                  ori          t3, s8, -1784
                  xori         tp, tp, -356
1884:             beq          s2, gp, 1889f
                  bge          a0, s7, 1888f
                  nop
1887:             beq          s4, s2, 1901f
1888:             nop
1889:             xor          a7, a4, a1
                  bgeu         a6, s1, 1894f
                  bgeu         a7, s5, 1895f
                  sltu         s3, ra, tp
                  srl          a7, sp, sp
1894:             bltu         ra, s4, 1905f
1895:             beq          sp, gp, 1912f
1896:             bltu         a2, s11, 1910f
                  blt          tp, a3, 1912f
                  srli         zero, a6, 2
                  blt          s7, t5, 1902f
                  sub          s8, s9, s3
1901:             slli         s4, a2, 13
1902:             sub          s0, t5, a3
                  nop
                  sltiu        s9, gp, 1747
1905:             sra          sp, s5, s10
                  andi         s3, s4, 923
                  sra          t0, s3, t5
                  sltu         zero, s0, zero
                  xor          s5, t0, ra
1910:             bge          gp, s9, 1925f
                  bge          a3, s0, 1920f
1912:             bgeu         s2, s3, 1917f
                  sra          t2, sp, s0
                  bge          a2, s11, 1925f
                  xori         s3, t2, 85
                  add          a6, s7, zero
1917:             add          s8, s11, s8
                  ori          a2, zero, 1669
                  xori         s10, s10, -619
1920:             addi         a0, a5, 63
                  sll          zero, t0, s6
                  bgeu         a4, a2, 1932f
                  sub          s9, a1, s3
                  srl          a3, s7, s1
1925:             slt          a6, s5, tp
                  slt          a3, zero, gp
                  add          tp, s5, gp
                  and          t0, s7, s4
                  or           gp, t4, ra
                  bltu         t1, s1, 1932f
                  xor          t3, a3, zero
1932:             bge          a0, s5, 1947f
                  auipc        t1, 436526
                  srl          a7, a6, t3
                  bgeu         t5, zero, 1953f
                  nop
                  xori         a2, s10, -1160
                  addi         t2, t5, -1106
                  sltiu        t5, s3, -568
                  slti         a7, s11, 486
                  sra          a6, s2, s5
                  auipc        ra, 873253
                  beq          t4, s4, 1963f
                  slti         t4, t5, 1002
                  sltiu        a2, a4, -1959
                  bgeu         s2, a4, 1947f
1947:             sltu         gp, a3, t0
                  bge          ra, s4, 1962f
                  and          a3, ra, s3
                  add          t1, s4, gp
                  or           s11, a2, s6
                  slli         a4, s6, 22
1953:             sltiu        s2, s0, -79
                  lui          a1, 121867
                  bgeu         s8, s4, 1969f
                  auipc        t0, 528141
                  bne          a1, sp, 1965f
                  xor          sp, t6, t1
                  sub          s0, zero, a7
                  lui          s8, 226046
                  sub          s0, t5, gp
1962:             srai         a4, s6, 26
1963:             xor          t0, s1, s7
                  slli         a7, s2, 15
1965:             srli         a7, t4, 28
                  lui          t4, 995668
                  auipc        t6, 50310
                  bltu         s9, t3, 1983f
1969:             srli         gp, t3, 4
                  bge          a3, a1, 1972f
                  and          sp, t3, s7
1972:             srli         a4, a0, 27
                  slli         s4, s1, 9
                  srai         t4, a4, 30
                  nop
                  nop
                  bne          a4, s8, 1994f
                  bltu         zero, s11, 1997f
                  slli         ra, t0, 23
                  srl          t5, a2, s10
                  slli         s1, t6, 16
                  blt          t5, t0, 1983f
1983:             addi         s10, s8, -1080
                  sltu         ra, a2, t0
                  srai         s8, t1, 9
                  nop
                  sltiu        s5, s4, 1311
                  beq          zero, s11, 1993f
                  sltiu        s4, s11, -1216
                  slli         s4, a5, 27
                  auipc        s10, 1041767
                  and          s9, a0, zero
1993:             slli         a4, a3, 24
1994:             sll          a4, sp, s7
                  ori          tp, t0, 1585
                  or           gp, s1, s1
1997:             bltu         a6, s2, 2014f
                  ori          s2, s8, -338
                  beq          s2, ra, 2008f
                  bne          a1, s0, 2001f
2001:             or           a3, t0, s8
                  srai         zero, gp, 25
                  nop
                  srli         a0, t3, 25
                  sra          a7, s8, s2
                  or           t6, s4, t1
                  slti         t0, a1, -196
2008:             and          s8, s11, t3
                  slti         a7, a6, -1861
                  bge          t6, t6, 2014f
                  bne          s3, gp, 2014f
                  addi         t4, s3, 335
                  addi         a7, s1, -1473
2014:             ori          t5, a6, 1432
                  sra          t2, t1, sp
                  slti         t5, s6, -820
                  lw           s3, 4(a5)
                  addi         a5, a5, 24
                  sra          t6, s6, t1
                  nop
                  slli         zero, a6, 3
                  andi         s11, gp, -1450
2714:             addi x5, x19, 0
2714:             jalr x5, x5, 0
sub_8:            slti         t5, s7, -626
                  blt          a2, t4, sub_8_stack_p
                  nop
sub_8_stack_p:    addi         a5, a5, -36
                  sw           s3, 4(a5)
                  addi         s8, a1, 1868
                  xor          gp, a2, s2
                  sra          a7, t2, sp
                  slli         tp, a6, 9
                  add          s5, s1, ra
                  srl          s5, a1, s7
                  xor          a0, s5, a2
sub_8_j11:        jal          s3, sub_9 #jump sub_8 -> sub_9
                  srai         a1, a5, 22
                  srl          s8, s2, s5
                  andi         gp, s5, 2043
                  la           s4, sub_10
                  nop
                  sra          a0, a5, s11
                  srai         a7, s11, 0
                  slti         a0, t2, -1806
                  addi         s4, s4, 310
                  nop
sub_8_j12:        jalr         s3, s4, -310 #jump sub_8 -> sub_10
                  la           sp, region_1+903 #start riscv_load_store_rand_instr_stream_0
                  or           a2, a5, s5
                  sll          s10, ra, a1
                  srai         zero, ra, 8
                  lb           ra, -16(sp)
                  auipc        s0, 319133
                  sub          a6, a4, gp
                  slti         s11, s7, -1758
                  add          t5, s2, t5
                  slti         tp, s3, 1518
                  sub          zero, t2, s6
                  sb           t0, -43(sp)
                  andi         s10, tp, -1841
                  lh           t6, 43(sp)
                  nop
                  sb           a1, -44(sp)
                  lui          a3, 308897
                  andi         s8, a4, -1315
                  lhu          s4, 15(sp)
                  auipc        s10, 783234
                  xor          s8, a4, ra
                  srl          s1, t6, a1
                  sub          s2, tp, t4
                  lbu          s4, -46(sp)
                  lh           s0, 53(sp)
                  sll          t4, t6, a5
                  nop
                  sll          s4, a4, s3
                  slti         a2, t2, -1783
                  ori          t3, t2, 1159
                  sra          a6, ra, s5
                  lbu          s0, 8(sp)
                  auipc        s3, 437546
                  slt          s3, tp, s11
                  sb           s11, 4(sp)
                  lbu          a0, -30(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         zero, tp, 115
                  sub          a7, s2, s11
                  slti         a4, a2, 1680
                  srli         t6, s3, 9
                  andi         s1, s4, -753
                  auipc        s2, 105712
                  ori          t2, a0, -10
                  add          t1, a0, t3
                  nop
                  add          s1, s6, a6
                  and          gp, s7, t4
                  bge          a5, a2, 25f
                  sra          s4, a3, sp
                  slti         a0, s7, 2043
                  or           s9, s11, t3
                  bne          a7, a6, 33f
                  sra          s9, tp, s7
                  sltu         tp, s9, s6
                  bge          s11, ra, 38f
                  srl          a4, zero, sp
                  srai         a0, gp, 30
                  auipc        a7, 661421
                  xor          t0, t6, t1
                  lui          t4, 153138
                  beq          s9, s7, 33f
25:               andi         s3, gp, -843
                  addi         a1, s2, -1780
                  or           s3, s3, s10
                  and          t4, a3, t1
                  bge          a2, s6, 46f
                  blt          a7, t5, 35f
                  sub          zero, s11, s0
                  sltu         s3, a0, s7
33:               bgeu         tp, a3, 44f
                  srl          t3, s1, t0
35:               nop
                  blt          s0, s1, 50f
                  nop
38:               sltu         gp, a2, a1
                  slt          s9, s5, t2
                  sltu         t1, s5, t2
                  srl          tp, t3, a3
                  sltiu        a6, t6, -691
                  lui          s10, 368972
44:               sltu         s0, a6, a4
                  slti         a2, tp, -1713
46:               sltiu        s11, a7, 1175
                  slti         s3, a0, -1838
                  sll          gp, s11, a0
                  srai         s4, t1, 11
50:               and          s5, t6, ra
                  add          a1, a6, s6
                  bltu         t2, t1, 64f
                  andi         t6, t0, -1368
                  beq          s7, a5, 71f
                  slti         t2, t1, 1480
                  addi         t2, a6, 431
                  andi         s8, a1, 428
                  ori          s1, t2, -1552
                  xor          s2, ra, t4
                  sub          s10, s10, s3
                  nop
                  bgeu         s7, a3, 78f
                  sra          s3, a3, ra
64:               sltiu        s0, s11, -604
                  slli         s3, a0, 26
                  blt          a0, s5, 69f
                  slti         a3, s1, -1970
                  andi         a4, s8, 1151
69:               bgeu         t4, s11, 86f
                  auipc        t4, 775473
71:               nop
                  auipc        s11, 1044126
                  sra          t1, s9, s5
                  nop
                  lui          t5, 668143
                  or           s1, s5, t0
                  addi         a2, s1, -865
78:               bge          t4, tp, 97f
                  auipc        s4, 128501
                  slli         a3, s11, 29
                  or           s8, sp, a5
                  sll          tp, tp, a1
                  sra          a2, ra, s9
                  sltiu        a1, t2, -1495
                  addi         t1, t3, 1803
86:               beq          t4, t0, 97f
                  xor          s2, sp, gp
                  sltiu        t5, s1, 1800
                  sltiu        s10, s6, 391
                  blt          s4, t1, 98f
                  addi         s9, s8, 484
                  slli         t0, t6, 22
                  xor          a7, s4, s9
                  slt          s11, s10, t2
                  or           a4, ra, sp
                  ori          a2, s8, 725
97:               bne          s0, t5, 114f
98:               bgeu         t4, a2, 111f
                  lui          s8, 914467
                  sll          ra, s7, s4
                  slli         s3, t2, 19
                  or           a6, s2, zero
                  or           s9, s2, s7
                  xori         s8, ra, -931
                  xor          a7, a3, a3
                  ori          a0, gp, 312
                  slt          s0, s5, t4
                  andi         s11, s9, -1836
                  sltiu        s4, tp, -1930
                  sltu         s0, a7, t6
111:              srai         s8, a3, 3
                  bge          s3, a7, 124f
                  auipc        ra, 550196
114:              slti         zero, t5, -1510
                  ori          s8, s7, -1013
                  nop
                  bgeu         a7, s10, 128f
                  slti         tp, s0, -1400
                  bne          t0, s8, 122f
                  xor          t1, tp, gp
                  srl          t5, t1, s10
122:              add          t0, a4, a4
                  srai         t3, s8, 30
124:              blt          a5, s2, 128f
                  slti         a0, s5, 700
                  xori         s1, a3, 1586
                  xori         a4, s2, 1392
128:              auipc        ra, 173470
                  xori         ra, t6, -1592
                  slli         s8, s5, 11
                  sltu         t4, t2, s8
                  slti         t3, s5, -1639
                  bgeu         gp, gp, 134f
134:              lui          tp, 287692
                  slt          t1, a0, s0
                  srai         a3, s9, 3
                  blt          s6, t4, 146f
                  slti         tp, a4, -1133
                  sra          zero, a0, a0
                  sltu         a3, s8, a6
                  ori          a2, t5, -609
                  addi         gp, s0, 1747
                  lui          t2, 259539
                  blt          a1, s6, 145f
145:              addi         a3, a0, -781
146:              xor          a4, t6, a5
                  bgeu         ra, s0, 163f
                  xor          a0, s1, s1
                  sra          tp, s4, t0
                  bgeu         t0, a2, 154f
                  slti         s11, s6, 1198
                  sra          t4, s10, a6
                  sub          t5, t1, sp
154:              srli         t4, s5, 12
                  slti         s5, t0, 1503
                  slti         zero, s9, 1762
                  srl          zero, zero, a6
                  sll          t4, tp, a1
                  bne          a1, sp, 164f
                  nop
                  add          s3, a6, s8
                  bne          s9, a2, 164f
163:              or           s3, a7, a0
164:              ori          s10, t3, -1701
                  lw           s3, 4(a5)
                  ori          t5, sp, 1025
                  addi         a5, a5, 36
                  auipc        ra, 283603
                  lui          t4, 18539
                  sub          s1, s6, s7
                  and          s11, a0, t1
                  or           a2, s9, a2
                  sra          s5, s8, a6
234:              addi x10, x19, 0
234:              jalr x10, x10, 0
sub_10:           sltu         s1, s0, s10
                  addi         a5, a5, -52
                  slt          zero, t5, s4
                  sw           s3, 4(a5)
                  sll          s5, s1, ra
                  slt          s11, s6, gp
                  la           a7, region_0+305 #start riscv_load_store_rand_instr_stream_0
                  lh           t5, -271(a7)
                  sll          s10, s4, ra
                  lhu          t2, 647(a7)
                  xori         t5, gp, -202
                  lb           s8, -131(a7)
                  lb           s8, 646(a7)
                  lb           zero, 899(a7)
                  sub          ra, ra, s6
                  lb           s2, 223(a7)
                  add          s5, s8, s0
                  slti         s10, s1, -1804
                  sra          s10, s7, s5
                  sh           a6, 181(a7)
                  addi         a2, a0, 1613
                  sb           a6, 1592(a7)
                  sltiu        a4, a7, -378
                  xori         a6, tp, -664
                  nop
                  sh           t0, 1275(a7)
                  slli         s1, s4, 18
                  slli         a4, s4, 4
                  sb           t4, 1026(a7)
                  srai         sp, gp, 1
                  andi         a0, s11, -1478
                  sb           s2, 1652(a7)
                  sh           s5, 917(a7)
                  lb           ra, 439(a7)
                  lh           s8, -249(a7)
                  lb           tp, 1676(a7)
                  lbu          t5, 34(a7)
                  add          zero, t1, zero
                  sub          sp, sp, s6
                  lh           gp, 1529(a7)
                  lui          a2, 793143
                  slli         t0, ra, 31
                  lb           a6, 128(a7)
                  lbu          zero, 410(a7)
                  lbu          s8, 640(a7)
                  lbu          gp, -171(a7)
                  sb           tp, 1490(a7)
                  sb           s3, -123(a7)
                  sw           t4, 1031(a7) #end riscv_load_store_rand_instr_stream_0
                  slti         s2, t5, 129
                  srl          a7, a6, s10
                  sll          t0, zero, t1
                  auipc        t4, 567606
                  slti         s0, zero, -457
                  sltiu        a0, s5, -210
                  or           sp, t5, s10
                  sltiu        t2, t5, 926
                  nop
                  sll          s2, s10, s4
                  sra          s10, a2, tp
                  bltu         a1, t6, 27f
                  bge          s11, a2, 20f
                  addi         a6, s5, -445
                  srl          gp, a6, s4
                  beq          s3, t1, 29f
                  srai         gp, s10, 6
                  sll          s4, s7, a1
                  beq          a4, a5, 24f
                  andi         tp, s9, -2043
20:               bltu         s2, a5, 40f
                  beq          s6, a0, 23f
                  and          s9, tp, t0
23:               xor          gp, a1, tp
24:               srli         tp, a6, 30
                  slti         t4, a1, -808
                  beq          tp, a5, 41f
27:               bgeu         a1, t1, 31f
                  slti         a2, s0, -310
29:               andi         t5, t2, 378
                  lui          a1, 1037976
31:               slli         t5, t1, 10
                  ori          t3, s2, 164
                  bge          t6, t3, 52f
                  nop
                  ori          t2, t5, -1776
                  slli         t1, gp, 31
                  slli         sp, t1, 26
                  or           gp, sp, s6
                  srl          a7, s9, a7
40:               ori          ra, s9, -943
41:               xor          a7, a2, tp
                  sub          a3, t3, s6
                  ori          s11, a7, -1134
                  or           t3, s11, t2
                  or           s2, ra, ra
                  addi         s0, t6, -1331
                  xori         t3, t3, -1047
                  srli         t2, a1, 10
                  auipc        s8, 755974
                  sub          t2, sp, t0
                  ori          a7, ra, -1347
52:               auipc        s3, 930047
                  add          t1, a1, t0
                  sltiu        t2, a5, -1398
                  bne          gp, a4, 70f
                  nop
                  beq          t4, a4, 77f
                  sra          t2, s11, s4
                  sltiu        s5, t1, 762
                  auipc        a3, 362990
                  beq          t4, a6, 75f
                  andi         t3, t6, -1159
                  srai         tp, s3, 31
                  xor          s2, a6, s6
                  andi         s11, t0, -1457
                  sltiu        ra, a0, -840
                  slti         t4, s6, -1132
                  bgeu         gp, s2, 72f
                  lui          a4, 787064
70:               auipc        s11, 269795
                  nop
72:               sltiu        s8, s7, 996
                  slli         s0, t1, 10
                  bgeu         t0, t3, 94f
75:               sltu         s2, s6, a3
                  and          a4, s9, s1
77:               bne          s1, s5, 84f
                  sub          s2, s3, s7
                  slt          s8, zero, t5
                  beq          s2, a3, 97f
                  xori         t3, t1, -1929
                  addi         s2, a3, 1756
                  andi         a0, a4, 1488
84:               or           a2, a0, t0
                  sub          t4, a3, a0
                  bne          t0, s4, 94f
                  sltu         s2, t1, s6
                  srl          s1, s7, s4
                  bltu         gp, s9, 108f
                  sub          a6, s8, s8
                  andi         gp, t2, -921
                  bgeu         t4, t3, 111f
                  sra          ra, s7, t1
94:               srai         zero, a1, 10
                  srli         a6, s6, 31
                  slli         tp, s1, 1
97:               andi         s9, s2, 634
                  sub          t4, sp, ra
                  lui          t6, 906995
                  sltu         s1, s11, sp
                  sll          t0, a6, sp
                  ori          a6, a6, 350
                  auipc        a3, 212873
                  slti         a2, s8, -313
                  lui          t3, 678365
                  blt          a2, a6, 119f
                  beq          a5, s3, 122f
108:              or           t4, t6, s1
                  blt          a7, s7, 125f
                  srl          s10, ra, gp
111:              sltiu        s4, sp, -894
                  sub          t1, a6, s9
                  xor          s0, s3, a2
                  bne          t5, a2, 116f
                  or           s4, t6, t2
116:              bge          a4, a5, 133f
                  auipc        s0, 1024940
                  sll          sp, a2, t0
119:              ori          t3, t4, 998
                  sltu         s11, gp, t2
                  srai         a3, s3, 10
122:              slli         s0, a5, 10
                  addi         t6, s2, -1881
                  slli         t0, t5, 28
125:              addi         t6, s11, -1403
                  bltu         t4, a1, 137f
                  sltiu        s4, tp, -90
                  or           s0, a4, ra
                  slti         t3, a4, 42
                  nop
                  slt          ra, s11, s1
                  ori          t6, s11, 1226
133:              add          tp, a0, s3
                  auipc        s8, 987222
                  lui          s3, 778505
                  and          gp, s10, s2
137:              auipc        t4, 875952
                  srai         a0, t0, 10
                  sub          t4, a4, s11
                  xori         a7, a2, -1434
                  beq          t1, a6, 149f
                  ori          s2, sp, -379
                  sltiu        t2, tp, 1805
                  sltu         s2, t5, s2
                  srl          s1, s9, s10
                  bltu         s0, s8, 159f
                  bge          s3, sp, 160f
                  xori         gp, gp, 432
149:              nop
                  sub          gp, tp, ra
                  add          s9, s11, t0
                  nop
                  slt          t4, a6, s4
                  and          s4, s8, s7
                  sltu         a1, t5, tp
                  nop
                  slli         s0, zero, 18
                  slt          t4, zero, sp
159:              slli         s9, t1, 7
160:              blt          t6, s4, 175f
                  add          s9, a3, a5
                  slti         s10, s1, 8
                  nop
                  addi         t4, s3, -1878
                  nop
                  slli         sp, gp, 5
                  sltiu        s4, s9, 960
                  srai         a0, s0, 18
                  sub          a0, t4, s5
                  sltiu        s10, s4, -23
                  slti         s10, tp, 1936
                  srli         t5, s2, 31
                  addi         s8, s10, 236
                  ori          sp, a7, -1591
175:              addi         t6, s9, 294
                  xor          t5, s11, sp
                  lw           s3, 4(a5)
                  xori         t1, a1, 1716
                  and          s8, s3, gp
                  addi         a5, a5, 52
                  or           s8, a3, gp
                  or           ra, ra, t6
                  add          s10, t2, t0
                  or           s10, s2, s7
                  addi         ra, s5, 1171
                  sltiu        t3, a0, 1793
236:              addi x20, x19, 0
236:              jalr x20, x20, 0
sub_4:            xori         a0, s5, 1730
                  xori         s0, t2, -1885
                  xori         s10, s6, 1207
                  slt          s8, s9, s5
                  sll          s2, s1, s1
                  srli         zero, a5, 28
                  or           a3, a3, zero
                  addi         a5, a5, -12
                  sw           s3, 4(a5)
                  nop
                  sra          zero, t5, a1
                  slt          a1, t5, t4
                  la           t0, sub_5
                  ori          a3, ra, 1776
                  slli         t2, s4, 13
                  xori         a4, s9, -2048
                  xori         t2, s2, -152
                  srli         a0, s5, 19
                  srai         zero, a6, 26
                  addi         t0, t0, -339
                  slli         t5, s4, 11
sub_4_j6:         jalr         s3, t0, 340 #jump sub_4 -> sub_5
                  slli         s4, a2, 23
                  xori         a7, t5, -959
                  and          a3, t6, a3
                  srli         s1, s1, 30
                  la           t1, sub_8
                  sltiu        t2, a1, 702
                  addi         t1, t1, -553
                  sll          gp, t6, zero
sub_4_j7:         jalr         s3, t1, 553 #jump sub_4 -> sub_8
                  sltiu        s0, t1, -616
                  and          s11, s7, s8
                  srai         a7, a5, 24
                  la           s5, sub_7
                  addi         s5, s5, 440
                  sra          s10, a6, a6
                  sll          t2, s3, s8
                  xor          a4, s10, t4
sub_4_j8:         jalr         s3, s5, -440 #jump sub_4 -> sub_7
                  or           a0, tp, t6
                  la           t5, sub_6
                  srl          t1, t5, ra
                  slli         a3, s2, 29
                  srl          s5, t6, a6
                  slli         s10, t2, 17
                  sll          a0, a5, s9
                  addi         t5, t5, 354
                  slti         s0, a0, -936
                  addi         s10, s11, -930
                  slti         s5, s5, 722
sub_4_j9:         jalr         s3, t5, -353 #jump sub_4 -> sub_6
                  slt          s0, sp, a3
                  xori         s4, gp, 2000
                  lui          t4, 709864
                  bgeu         s1, s9, 23f
                  sll          a2, s0, t4
                  bltu         t2, s2, 13f
                  bge          gp, s0, 15f
                  bltu         t1, s3, 20f
                  bge          t4, t6, 22f
                  xor          a0, t5, a4
                  nop
                  sltiu        s10, s0, -208
                  auipc        a6, 972455
13:               sltiu        a2, t3, 416
                  lui          s2, 376006
15:               or           a0, s10, s4
                  bgeu         a0, sp, 35f
                  slt          sp, s3, s0
                  ori          s10, s7, 1337
                  sub          a2, s0, t5
20:               addi         a7, s6, -1290
                  xor          a1, s3, a5
22:               lui          s2, 224701
23:               srl          a6, t4, t1
                  and          s2, a0, s0
                  addi         s11, s10, -1283
                  slti         gp, zero, 1719
                  beq          t5, ra, 40f
                  bge          t0, s2, 43f
                  xor          s4, t2, a3
                  slti         t6, zero, 1340
                  srli         zero, a1, 3
                  add          s2, zero, zero
                  or           tp, tp, s6
                  slti         a0, gp, 1596
35:               auipc        t4, 227046
                  bltu         s4, sp, 38f
                  beq          t4, a1, 46f
38:               srai         s10, a7, 25
                  beq          sp, a2, 56f
40:               bgeu         sp, s11, 56f
                  xori         a3, s2, -135
                  slli         a0, s2, 2
43:               slt          s11, s3, tp
                  srl          t2, ra, t5
                  and          t1, t1, s6
46:               xori         s9, a0, 1341
                  nop
                  bltu         sp, s1, 51f
                  xor          tp, a6, ra
                  sll          s8, s1, tp
51:               andi         zero, s1, -1659
                  bne          a4, zero, 53f
53:               srl          t6, a0, a5
                  addi         s5, s2, 409
                  sltiu        t4, a1, -722
56:               slli         t0, a7, 9
                  lui          a1, 1038160
                  andi         t0, s5, -948
                  sltu         t3, zero, a1
                  blt          a4, a4, 75f
                  slt          a2, s5, s11
                  and          s2, s1, a1
                  sltiu        a6, t4, -794
                  ori          sp, a2, -1051
                  add          s5, s0, t3
                  or           s5, s0, s2
                  bltu         s8, a7, 75f
                  srl          t1, s11, t1
                  srl          t3, a7, t5
                  sub          tp, s7, s9
                  nop
                  xori         s5, t2, -36
                  or           tp, s0, a6
                  srli         a7, t0, 14
75:               srl          t1, a1, s2
                  slti         zero, sp, 320
                  xori         ra, sp, 1479
                  sub          ra, t3, s6
                  lw           s3, 4(a5)
                  auipc        t1, 497327
                  addi         a5, a5, 12
                  auipc        sp, 666485
                  sltu         a0, s7, a2
136:              addi x14, x19, 1
136:              jalr x14, x14, 0
sub_9:            nop
                  srli         t2, s8, 24
                  addi         a5, a5, -60
                  sw           s3, 4(a5)
                  sltiu        s5, zero, 263
                  slli         s11, s10, 15
                  la           s0, region_0+932 #start riscv_load_store_rand_instr_stream_0
                  sll          t6, gp, gp
                  slli         tp, t6, 28
                  lbu          a4, 337(s0)
                  sb           t4, 807(s0)
                  lbu          t6, -385(s0)
                  lw           s9, 800(s0)
                  addi         t3, a2, -174
                  sb           s2, 541(s0)
                  nop
                  srai         t5, t0, 6
                  lb           ra, -44(s0)
                  add          t3, tp, s9
                  sltu         a1, ra, t4
                  sb           s6, 155(s0)
                  sb           s4, -816(s0)
                  sw           a2, -308(s0)
                  lb           zero, 677(s0)
                  lhu          s8, 768(s0)
                  sb           s9, -483(s0)
                  srai         a0, a2, 10
                  xor          a3, s6, a0
                  add          s5, sp, s5
                  lb           t0, 430(s0)
                  xori         zero, a3, 1498
                  sh           t2, -492(s0)
                  sh           s9, 456(s0)
                  lbu          t2, -421(s0)
                  slti         s11, tp, 1302
                  lbu          s9, -401(s0)
                  lhu          a7, -588(s0)
                  slli         gp, zero, 8
                  lw           s2, -472(s0)
                  lbu          s11, 341(s0)
                  lbu          s11, 1038(s0)
                  lhu          s1, -158(s0)
                  sh           s3, -684(s0) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1727 #start riscv_load_store_rand_instr_stream_1
                  srai         t2, a4, 17
                  lb           t3, -844(a6)
                  sll          s9, a3, s5
                  slti         s0, a5, -1744
                  addi         s10, t1, 451
                  or           s9, tp, a2
                  addi         tp, s10, -704
                  add          t2, a5, a3
                  slt          a2, zero, t2
                  sra          t4, s6, s11
                  sh           a7, -1151(a6)
                  sltiu        a0, a1, 1156
                  auipc        s2, 837866
                  auipc        zero, 884401
                  xori         a4, zero, 1976
                  lbu          s11, -49(a6)
                  lui          s11, 1008746
                  srl          s10, t4, gp
                  lbu          s10, -718(a6)
                  ori          a0, ra, 1407
                  lbu          s11, -1282(a6)
                  lhu          gp, -221(a6)
                  sb           s0, -568(a6)
                  srli         a4, s10, 29
                  auipc        tp, 170005
                  sb           ra, 156(a6)
                  sltiu        a7, t1, 1062
                  lb           a7, 15(a6)
                  slti         gp, t1, -1273
                  lb           sp, -124(a6)
                  or           t1, a6, zero
                  sltiu        t0, s6, -581
                  lh           s4, -369(a6)
                  auipc        t2, 1038027
                  sll          gp, s9, t2
                  lbu          t1, -1382(a6)
                  slt          s2, a6, zero
                  andi         s3, zero, 1605
                  lbu          s8, 132(a6)
                  andi         a3, s6, -203
                  auipc        t3, 165526
                  lb           a4, -391(a6)
                  lui          gp, 671777
                  srl          s3, a3, a4
                  sb           s6, -852(a6)
                  sb           s1, -390(a6)
                  sb           a6, -1067(a6) #end riscv_load_store_rand_instr_stream_1
                  blt          s1, t4, 19f
                  sra          zero, s3, t0
                  and          s0, s1, zero
                  lui          s5, 465008
                  sub          zero, s6, s3
                  ori          zero, t5, 77
                  addi         t4, a6, 1619
                  sub          s1, t0, a5
                  srli         s2, s11, 8
                  sltu         a6, t5, a6
                  sll          a2, s7, gp
                  sltu         zero, s0, s2
                  bltu         s0, s10, 24f
                  andi         t1, s2, 1499
                  sub          t3, a0, s7
                  xor          sp, s8, s4
                  auipc        a1, 254717
                  and          t4, a2, a2
                  sltiu        s0, s10, 175
19:               sub          s8, a7, a7
                  sltiu        s2, s10, 487
                  srai         a0, a1, 14
                  andi         t1, t5, -1572
                  nop
24:               xori         a7, t6, 1902
                  slti         t4, gp, -604
                  bge          zero, t1, 35f
                  sltiu        sp, a2, -1114
                  beq          s7, s1, 30f
                  nop
30:               xori         ra, s9, 1556
                  add          s3, t4, s5
                  or           sp, t2, t6
                  beq          s8, a5, 43f
                  srai         a0, s1, 12
35:               beq          s7, a6, 45f
                  and          s3, s5, t6
                  nop
                  addi         s10, t1, 639
                  addi         a0, sp, 694
                  add          a1, t5, a3
                  bgeu         t6, s2, 44f
                  srl          t4, s4, s2
43:               auipc        s5, 314787
44:               sll          t2, t6, s4
45:               and          gp, s2, s5
                  sub          s5, s3, ra
                  bge          a1, a5, 54f
                  sltu         s4, a7, s1
                  add          s1, s1, a3
                  andi         a7, s3, -940
                  srli         t2, s9, 20
                  srai         s5, zero, 19
                  bltu         t3, a3, 54f
54:               bgeu         s7, t1, 71f
                  and          s10, t6, tp
                  slli         s4, sp, 16
                  or           s9, s0, s3
                  xori         t6, s10, 204
                  sltu         ra, t1, s6
                  bgeu         a5, s10, 73f
                  sra          s9, s1, s1
                  sra          t6, t4, s2
                  sub          s9, t2, s7
                  nop
                  slli         s9, zero, 0
                  sltiu        t2, s5, 880
                  xori         t4, s4, 626
                  sra          s10, s8, zero
                  and          s4, s11, s8
                  xor          a4, a4, t4
71:               sub          s4, ra, a2
                  slli         a2, s2, 26
73:               srli         gp, a0, 0
                  addi         gp, s7, -1083
                  blt          t5, sp, 85f
                  blt          zero, s10, 82f
                  slti         t2, a2, 553
                  ori          t6, t4, -1875
                  sra          t1, zero, a4
                  or           zero, a6, s7
                  lui          tp, 628094
82:               slti         s9, a0, -962
                  lui          ra, 690232
                  lui          a6, 411537
85:               nop
                  bltu         s2, t5, 87f
87:               ori          t1, s6, 420
                  xori         t0, tp, 742
                  sltiu        tp, a1, 1089
                  ori          s3, s7, 673
                  srli         t5, a7, 28
                  bltu         a1, gp, 107f
                  beq          t1, s7, 100f
                  addi         a6, s5, -1955
                  bltu         s7, a4, 100f
                  bne          s4, a5, 108f
                  srl          a6, s4, ra
                  andi         a3, sp, -305
                  srai         ra, t0, 0
100:              bge          s9, zero, 107f
                  blt          a4, s8, 114f
                  addi         gp, a5, 1684
                  bge          a1, s9, 115f
                  bltu         tp, t4, 118f
                  sub          s9, s9, s0
                  blt          s3, a1, 108f
107:              sltiu        s5, s7, 1455
108:              slt          a7, a1, zero
                  sub          ra, t0, s8
                  beq          s3, a5, 115f
                  beq          t3, s10, 127f
                  nop
                  xori         a4, s3, -1884
114:              and          gp, t3, gp
115:              slli         s3, zero, 9
                  addi         s10, s4, 776
                  srai         a1, a5, 26
118:              srai         sp, s1, 2
                  lui          t5, 505501
                  bgeu         sp, s7, 134f
                  sub          s10, t2, ra
                  add          gp, sp, t6
                  blt          s1, t1, 135f
                  bgeu         s8, t0, 132f
                  srl          gp, s4, a5
                  andi         a3, s1, -46
127:              srli         s8, tp, 30
                  sra          a4, t2, s11
                  bne          zero, s2, 135f
                  ori          t1, zero, 1911
                  addi         t4, s5, 1746
132:              srl          s10, a3, ra
                  sub          s3, t6, s6
134:              slt          zero, t4, s8
135:              bge          a5, s0, 155f
                  ori          a7, ra, -931
                  blt          a1, s5, 144f
                  xor          s0, t5, a1
                  auipc        t5, 316911
                  bge          zero, a7, 143f
                  auipc        zero, 526139
                  srli         t6, s9, 3
143:              slt          t0, s6, s10
144:              andi         a0, s0, -487
                  sll          s10, s1, t0
                  slli         s1, zero, 8
                  srai         t2, s5, 29
                  or           a7, s2, s3
                  xor          ra, t3, sp
                  bltu         ra, s9, 170f
                  bltu         s0, gp, 160f
                  slti         s11, a0, 728
                  slti         a2, s8, -1281
                  bgeu         a7, a3, 159f
155:              slti         s11, a6, 1760
                  sll          a7, s9, t3
                  sll          s5, t0, s8
                  slli         tp, s1, 21
159:              lui          a0, 218273
160:              addi         t4, s0, 1773
                  sltiu        s4, s5, 1341
                  bgeu         ra, ra, 168f
                  srai         a1, s10, 6
                  srai         s1, s4, 7
                  bltu         gp, tp, 167f
                  lui          t1, 288488
167:              lui          t4, 563096
168:              sub          a2, s9, t3
                  srai         a1, t6, 27
170:              beq          gp, s0, 186f
                  beq          s8, s7, 181f
                  nop
                  and          tp, s1, t3
                  bne          a1, ra, 186f
                  or           s9, t6, s4
                  andi         s9, zero, -1484
                  bgeu         s4, a0, 189f
                  bge          t4, s5, 179f
179:              or           t0, s6, s8
                  or           a7, s4, sp
181:              auipc        s0, 32616
                  srl          t1, t5, s9
                  bge          gp, t2, 195f
                  srai         gp, s5, 11
                  lui          s10, 608973
186:              auipc        s2, 987686
                  la           a6, region_1+1715 #start riscv_load_store_rand_instr_stream_2
                  sll          a0, t0, s9
                  auipc        t0, 1038756
                  auipc        s8, 609660
                  sb           t5, -43(a6)
                  sb           sp, 64(a6)
                  lb           a4, -50(a6)
                  srai         t3, a7, 20
                  lbu          a0, -54(a6)
                  sb           a0, -45(a6)
                  ori          ra, t6, 25
                  sb           t6, 36(a6)
                  slt          tp, t2, s0
                  sw           s8, -15(a6)
                  lbu          ra, 46(a6)
                  sub          a2, zero, t1
                  auipc        a1, 432753
                  sb           s9, -41(a6)
                  lbu          s8, -50(a6)
                  add          zero, sp, t1
                  lbu          s10, 58(a6)
                  sltu         a3, a5, s5
                  sltiu        t4, s7, 1502
                  sw           s6, 57(a6)
                  andi         s8, zero, 1606
                  xori         t5, s11, -84
                  srl          t1, a6, a0
                  and          s9, a0, t2
                  sw           t6, 49(a6)
                  slti         sp, a0, -1956
                  sb           a5, 43(a6)
                  nop
                  srli         s4, t0, 31
                  xor          a7, a1, t6
                  sb           a6, 26(a6)
                  lbu          ra, 33(a6)
                  srl          t6, t1, a0
                  auipc        t5, 843175
                  sltu         s5, t3, t2
                  or           a4, t0, s2
                  lb           s11, 40(a6)
                  xori         t1, t1, 1862
                  sb           tp, -24(a6) #end riscv_load_store_rand_instr_stream_2
                  ori          s3, s4, -1007
                  beq          a0, t6, 198f
189:              addi         s3, t0, -1459
                  sll          a6, gp, t0
                  addi         t2, s2, 1457
                  bne          s6, tp, 205f
                  srai         s5, s2, 25
                  slli         s8, a1, 6
195:              auipc        s8, 975215
                  slt          t3, gp, s3
                  addi         t0, s4, 1483
198:              auipc        s5, 936812
                  sltiu        s9, s5, 1165
                  sra          s1, s10, s9
                  srai         a4, s11, 29
                  or           t3, a4, s1
                  srai         a4, t1, 30
                  xori         s2, s5, 1546
205:              sll          a3, a6, zero
                  addi         a3, t3, 976
                  bgeu         a0, t4, 220f
                  srl          ra, a3, t0
                  slti         sp, zero, 1318
                  srli         a1, t5, 8
                  sub          t2, a2, s1
                  nop
                  lui          s2, 680069
                  bne          s9, a1, 231f
                  bge          t3, a2, 222f
                  slt          ra, s3, s2
                  beq          a1, s1, 218f
218:              add          t5, ra, s3
                  xor          t6, a1, sp
220:              sltiu        t6, s11, -1671
                  sll          t3, t6, a2
222:              xor          a1, s3, s3
                  add          a4, s5, t1
                  blt          s2, s9, 238f
                  ori          a6, a5, 1656
                  sll          s3, a6, ra
                  srl          t1, s7, t0
                  addi         s8, a0, 1025
                  bltu         ra, t5, 237f
                  and          t4, a4, a6
231:              sra          a4, gp, sp
                  sltiu        t3, sp, -1007
                  bge          t6, s3, 239f
                  or           s2, s1, a1
                  bltu         t4, s2, 242f
                  slli         t5, s8, 29
237:              sll          a1, a0, s1
238:              bgeu         a1, t5, 243f
239:              addi         gp, s1, 1187
                  bne          s8, s5, 250f
                  ori          a0, s5, -191
242:              sltu         t6, t4, a1
243:              srl          t2, ra, a0
                  xori         t3, t4, -1178
                  nop
                  slt          s9, a6, ra
                  sub          s9, t5, a4
                  sltu         a6, s9, a1
                  nop
250:              bgeu         a0, a7, 252f
                  andi         s2, sp, -1524
252:              srai         a7, t6, 15
                  slli         s2, s5, 20
                  slli         gp, s9, 7
                  srli         s3, a7, 21
                  bne          s0, s10, 271f
                  beq          s9, a4, 276f
                  sll          s9, s0, a2
                  sll          zero, s9, s10
                  addi         sp, t3, -35
                  blt          t4, zero, 273f
                  add          a4, tp, a5
                  srai         t2, s9, 25
                  auipc        s4, 607922
                  nop
                  ori          sp, a2, 1309
                  sltu         a0, a1, a0
                  addi         zero, s0, 1499
                  and          a3, a0, t3
                  blt          s5, a0, 284f
271:              ori          s3, s0, 581
                  srai         a6, t0, 19
273:              bgeu         s6, t2, 276f
                  bge          tp, t3, 286f
                  bgeu         a5, a5, 282f
276:              sra          t6, zero, ra
                  ori          t5, s2, 44
                  sltiu        s2, t4, -563
                  blt          s2, s10, 292f
                  slti         a2, a1, 1616
                  slt          t5, s8, t5
282:              blt          a4, s6, 295f
                  andi         s2, a5, -1208
284:              srl          s3, sp, zero
                  andi         s8, t2, 465
286:              sra          s3, a6, s2
                  srl          a6, s1, s7
                  sltiu        a2, s3, 11
                  slli         a2, s1, 16
                  srli         a0, a3, 25
                  bne          s5, a7, 292f
292:              sltiu        s11, sp, -486
                  andi         s5, t6, 1441
                  bltu         tp, s5, 306f
295:              slti         t5, a1, 1822
                  or           ra, a5, a4
                  sltu         s0, a7, t6
                  srli         ra, t5, 31
                  andi         t0, a3, 611
                  addi         s2, ra, -283
                  nop
                  bge          s9, s3, 304f
                  slti         tp, a3, 308
304:              sltu         t0, s7, s2
                  beq          t6, s10, 310f
306:              blt          a7, s11, 318f
                  sltu         a1, s0, a1
                  xori         zero, s7, -1002
                  sltiu        t1, a7, -900
310:              blt          a5, s11, 320f
                  srai         tp, s10, 26
                  addi         t5, a3, -1600
                  or           t6, gp, t6
                  lui          t3, 73563
                  addi         ra, t6, 1735
                  bgeu         s3, s3, 336f
                  andi         a6, a6, -1303
318:              xor          s1, ra, gp
                  xori         s1, a4, -1304
320:              bne          ra, sp, 332f
                  srl          t6, s5, s1
                  or           a6, t1, s4
                  srl          t4, tp, zero
                  slt          s8, s5, s3
                  xori         a3, t2, 1397
                  bltu         a3, s5, 336f
                  bgeu         a2, tp, 337f
                  sra          t0, ra, tp
                  bne          t0, a6, 338f
                  sra          s10, tp, s4
                  or           a2, a7, s11
332:              srai         s11, t4, 23
                  nop
                  or           a0, a2, s1
                  sll          s5, t4, t4
336:              ori          gp, sp, 339
337:              bltu         s2, a5, 338f
338:              bgeu         a3, s7, 353f
                  sub          gp, s2, s1
                  lui          s11, 803803
                  add          t0, a2, a6
                  blt          sp, t2, 349f
                  lui          sp, 306364
                  bge          s7, t4, 358f
                  xori         s10, s3, -97
                  sub          t0, s11, s1
                  sub          sp, t3, zero
                  slli         s11, a0, 6
349:              or           gp, s3, s2
                  sub          zero, t4, s3
                  or           t6, tp, s11
                  srl          t3, s7, s7
353:              and          t6, s0, s8
                  slt          s11, s2, a5
                  slli         t6, s9, 26
                  add          t0, s1, a0
                  bne          s7, gp, 363f
358:              slli         tp, a7, 26
                  srai         a3, t6, 31
                  sltiu        s0, a3, -1909
                  sub          t1, t5, t3
                  sub          a3, a6, t2
363:              addi         a4, tp, -592
                  srai         s1, a5, 24
                  slli         a4, t0, 25
                  xori         s0, a3, -51
                  bge          s3, t2, 386f
                  nop
                  add          s2, t3, t1
                  sltiu        a7, t4, -478
                  xor          ra, t4, zero
                  slti         s8, s8, -454
                  sll          a6, zero, a6
                  ori          ra, a0, 836
                  xor          a7, a7, s9
                  and          s9, s5, ra
                  sra          gp, a4, a6
                  sra          s3, s5, s1
                  sltu         s10, s1, s1
                  slt          t0, sp, a3
                  bgeu         tp, s3, 387f
                  add          s8, a0, ra
                  andi         s0, a5, -1610
                  srl          s3, a6, t4
                  srl          t5, a2, s1
386:              or           t1, t1, a3
387:              blt          a2, s3, 403f
                  sll          s4, a0, s7
                  xor          s5, a6, a4
                  blt          a7, a1, 395f
                  auipc        t5, 1017531
                  lui          s2, 877688
                  nop
                  or           t3, s10, a6
395:              slli         t6, a5, 16
                  auipc        a7, 402878
                  andi         s8, s0, 1434
                  srl          t2, s0, a7
                  srl          t3, a4, a7
                  sltiu        s0, a0, 1433
                  sub          t5, a2, t0
                  xori         t6, t6, -950
403:              sra          t4, t6, tp
                  add          a3, s0, s1
                  bge          s11, t4, 419f
                  sltiu        zero, ra, 451
                  or           s1, t5, s0
                  nop
                  beq          s4, s0, 411f
                  xor          a1, gp, s2
411:              bne          s5, a0, 418f
                  ori          s3, sp, -456
                  bge          s6, s8, 421f
                  andi         ra, t2, -1366
                  bge          tp, s9, 432f
                  or           a7, s8, ra
                  sll          s8, a1, s4
418:              blt          s11, s3, 437f
419:              and          t5, gp, t6
                  slt          s2, tp, zero
421:              xori         t6, a7, -123
                  andi         a7, tp, -686
                  srli         a0, tp, 8
                  or           t5, tp, t0
                  blt          t3, a6, 432f
                  beq          a5, gp, 433f
                  bge          a1, s0, 439f
                  add          s2, s10, gp
                  srli         a6, t4, 26
                  xori         s8, t0, 1149
                  and          s2, a2, zero
432:              nop
433:              add          t6, s8, t1
                  ori          s0, t4, 97
                  sltiu        a4, a3, 277
                  beq          a0, gp, 456f
437:              addi         a6, s7, -424
                  ori          t3, a4, -1505
439:              andi         a3, s4, 216
                  srl          a6, s8, sp
                  srl          tp, a0, sp
                  xor          s2, t6, a2
                  lui          gp, 449406
                  nop
                  ori          a0, s0, -1176
                  slt          s4, s1, s8
                  xor          t4, s6, t0
                  add          a0, a0, s5
                  nop
                  slli         s10, s1, 2
                  andi         s1, t0, -662
                  and          s11, s0, t2
                  xori         a2, t6, 287
                  bge          a0, s11, 459f
                  sra          a3, t4, a2
456:              and          a7, a4, s9
                  slti         s9, t3, 1098
                  slti         s10, s3, -111
459:              sltu         s2, s5, ra
                  bltu         a0, t2, 465f
                  sll          s0, t1, s10
                  sltiu        a0, sp, 837
                  xori         a1, t3, -1650
                  beq          s5, a2, 480f
465:              srli         a6, t6, 14
                  slli         tp, t6, 16
                  bne          s1, t4, 479f
                  sra          t4, s9, s1
                  xor          s9, s5, gp
                  slti         a3, s8, -770
                  sltu         a6, s10, t5
                  bge          tp, a4, 478f
                  sltiu        s11, s0, 555
                  auipc        a3, 171352
                  xori         a3, s5, 1885
                  andi         s5, t4, -1631
                  srai         zero, s8, 17
478:              andi         t1, s8, -2008
479:              slli         a0, s0, 7
480:              bgeu         a3, a1, 483f
                  sra          t4, t1, tp
                  ori          s2, s5, 746
483:              nop
                  auipc        s11, 366880
                  nop
                  andi         t6, t2, 229
                  slti         s9, s8, -170
                  blt          a5, a5, 495f
                  xor          s11, s0, s7
                  slt          s1, s8, s5
                  andi         s4, s0, -1191
                  lui          t0, 837151
                  srai         t1, a6, 27
                  xor          a0, tp, s8
495:              add          gp, s5, t2
                  lw           s3, 4(a5)
                  srl          a0, s11, t6
                  sub          t5, s8, t1
                  addi         a5, a5, 60
                  srai         t6, a5, 2
635:              addi x4, x19, 0
635:              jalr x4, x4, 0
sub_3:            ori          t6, a5, -1614
                  addi         a5, a5, -16
                  sw           s3, 4(a5)
                  and          t3, t1, s8
                  slli         zero, a4, 1
                  add          t3, s1, t3
                  la           sp, region_0+1015 #start riscv_load_store_rand_instr_stream_0
                  lui          s1, 1001827
                  lb           s1, -232(sp)
                  lbu          t0, -575(sp)
                  add          s11, a3, s6
                  srli         s5, s3, 16
                  andi         s3, s0, 884
                  lhu          ra, -421(sp)
                  lh           s5, 491(sp)
                  srl          s8, t3, a3
                  sh           a2, -537(sp)
                  lw           a4, 589(sp)
                  srl          a0, s3, s4
                  lbu          zero, -692(sp)
                  lui          gp, 927513
                  slt          a2, sp, a4
                  andi         s11, gp, 811
                  sb           a0, -9(sp)
                  sb           t3, -73(sp)
                  auipc        t6, 679768
                  lbu          s1, -676(sp)
                  sb           s9, 634(sp)
                  lbu          s2, -227(sp)
                  auipc        s8, 514633
                  slt          gp, t6, t4
                  auipc        a7, 786342
                  lb           ra, -228(sp)
                  lh           ra, -587(sp)
                  sb           s10, 708(sp)
                  srai         t2, s8, 31
                  sll          s4, t3, a3
                  sll          s2, t0, s3
                  lbu          s11, 265(sp)
                  sb           s6, -88(sp)
                  xori         s1, s2, 1451
                  lb           a1, -528(sp)
                  addi         gp, a4, -802
                  slli         a1, t5, 22
                  lb           s4, 956(sp)
                  sub          a4, ra, ra
                  sb           t1, -694(sp)
                  nop
                  sll          a3, a0, s3
                  andi         s1, a1, 1072
                  sb           s8, -486(sp)
                  and          s8, s8, s4
                  lbu          gp, -462(sp)
                  slli         s3, s1, 0
                  xor          tp, a5, s5
                  lui          s8, 839705
                  sb           s4, -91(sp)
                  sw           a7, -579(sp)
                  lh           s1, -113(sp)
                  lb           s4, -449(sp)
                  lbu          a6, -982(sp)
                  lb           s2, 889(sp)
                  lb           a1, 750(sp)
                  lb           s8, 878(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+773 #start riscv_load_store_rand_instr_stream_3
                  sb           a0, 388(sp)
                  sb           s7, -60(sp)
                  lh           a7, -187(sp)
                  xori         tp, s7, 1335
                  lbu          gp, 769(sp)
                  lb           a7, 1107(sp)
                  srli         s2, s8, 28
                  sltiu        s0, a1, -1747
                  sltiu        s3, t1, -1951
                  sltiu        s1, a5, -919
                  sb           ra, 1088(sp)
                  addi         t5, t2, 2018
                  lbu          t0, 968(sp)
                  slt          a7, a2, a0
                  add          t6, t5, ra
                  addi         a7, t0, -1666
                  srai         t4, t4, 17
                  lbu          t2, 890(sp)
                  xori         s4, s8, 506
                  lhu          a7, 535(sp)
                  srl          t5, t4, a2
                  lhu          s11, -61(sp)
                  slt          a6, a2, t5
                  lbu          a4, 684(sp)
                  sltiu        zero, a2, 551
                  slti         s10, a2, 684
                  sh           a5, -89(sp)
                  add          a3, a7, t5
                  or           s3, a0, s2
                  sltu         s10, zero, t6
                  lui          s11, 261409
                  lui          t3, 553769
                  sb           s1, 1154(sp)
                  addi         t2, s8, 221
                  or           tp, t4, s4
                  or           ra, zero, a4
                  sub          s8, a6, t6
                  sb           a5, 1189(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_0+323 #start riscv_load_store_rand_instr_stream_2
                  lw           a1, -15(t2)
                  slli         t3, a5, 18
                  sb           a7, -3(t2)
                  sb           t5, -8(t2)
                  auipc        s4, 873328
                  sll          tp, a3, t1
                  sb           s1, 10(t2)
                  lbu          s0, 7(t2)
                  slt          t6, s0, t1
                  sb           t1, 10(t2)
                  lhu          s9, -11(t2)
                  sra          a1, a0, a0
                  lhu          s4, 1(t2)
                  slt          a1, a5, a1
                  ori          a1, s4, 843
                  xori         s11, s8, -57
                  xori         s4, t6, -1911
                  sll          a3, s6, a2
                  lb           ra, -4(t2)
                  lb           s2, -12(t2)
                  srli         t5, a3, 7
                  sub          ra, sp, s5
                  lbu          t3, 5(t2)
                  lb           t0, 3(t2)
                  sub          s11, gp, a6
                  sll          a1, s9, gp
                  and          a1, t0, s0
                  addi         a7, t0, 1417
                  slt          tp, t6, s2
                  lb           ra, -10(t2)
                  lui          a6, 265962
                  lb           s4, -7(t2)
                  and          s10, t2, s11
                  addi         t3, s1, 618
                  lb           s5, 5(t2)
                  addi         s11, a6, 890
                  lbu          s10, 3(t2)
                  lb           s11, 7(t2)
                  sra          tp, s9, t4
                  add          a4, t2, a5
                  sltu         s9, s5, s5
                  srli         ra, s10, 13
                  sb           t0, -10(t2)
                  lb           s2, 0(t2)
                  sb           ra, 8(t2)
                  lh           a2, 3(t2)
                  or           t5, a2, s4
                  sltiu        s11, a4, 1082
                  lbu          t1, 9(t2)
                  slli         sp, a4, 23
                  xor          s9, s7, s11
                  sh           s8, -5(t2) #end riscv_load_store_rand_instr_stream_2
                  xor          s3, gp, t3
                  sltiu        s2, s6, 665
                  slli         t0, t1, 5
                  slli         t3, s8, 10
                  andi         gp, t4, 218
                  beq          ra, s1, 12f
                  auipc        a4, 258045
                  sub          tp, s10, a2
                  lui          s2, 566017
                  bltu         zero, t0, 15f
                  lui          a3, 345499
                  sub          s10, a6, t3
12:               xori         t4, t1, 1519
                  srai         s5, a2, 18
                  blt          a0, a6, 33f
15:               and          s0, s3, t3
                  bne          a5, a7, 25f
                  ori          s3, s10, 1835
                  srl          ra, a0, s11
                  xori         a4, zero, -1105
                  srai         a3, s11, 16
                  sub          t3, t6, s5
                  blt          sp, zero, 25f
                  bne          gp, t4, 35f
                  sra          s4, a3, gp
25:               sltiu        t6, a2, -1097
                  slli         zero, tp, 7
                  beq          zero, tp, 32f
                  and          a0, a2, gp
                  lui          t3, 807407
                  or           tp, s0, t4
                  srl          s9, t4, s8
32:               sltiu        s8, s5, -953
33:               slti         s2, t0, -1440
                  addi         a1, a6, -1062
35:               auipc        s2, 706367
                  slti         s4, a7, 1047
                  sltiu        s0, a7, -1606
                  bne          t2, a1, 41f
                  slli         t1, t3, 22
                  bge          gp, t5, 57f
41:               lui          a1, 847598
                  beq          t5, s4, 52f
                  beq          t4, t1, 50f
                  auipc        t6, 808202
                  beq          t3, a0, 56f
                  addi         s0, a4, 499
                  sltiu        t5, s9, 1549
                  nop
                  sll          s10, zero, s11
50:               blt          s0, a5, 69f
                  bgeu         s11, ra, 55f
52:               xor          s11, t3, a6
                  bgeu         s0, ra, 62f
                  lui          gp, 358820
55:               add          a4, t1, s8
56:               sra          ra, s6, a0
57:               srli         t2, s2, 10
                  nop
                  or           s8, ra, a6
                  sltiu        a4, t5, 488
                  sub          a6, s1, a4
62:               and          s5, sp, a3
                  and          s9, s7, s7
                  bge          t1, ra, 80f
                  ori          a0, tp, -960
                  bgeu         a2, a3, 83f
                  or           a4, t1, s2
                  andi         a4, s5, -199
69:               blt          t6, tp, 74f
                  auipc        sp, 769276
                  bltu         s10, a5, 78f
                  nop
                  sub          a7, s6, sp
74:               or           t1, s4, a3
                  srai         zero, t3, 17
                  ori          a6, s0, 1641
                  add          sp, s4, s4
78:               or           s2, s1, s9
                  auipc        t6, 713393
80:               slli         t3, a3, 12
                  andi         s1, a3, -571
                  or           t6, a4, s4
83:               add          s10, s7, a6
                  bgeu         s9, t5, 97f
                  or           t2, tp, sp
                  bge          a4, t2, 95f
                  bge          t0, a0, 91f
                  xori         s4, s6, 1251
                  and          a2, a7, s7
                  auipc        a7, 570342
91:               xori         a0, a2, -1019
                  bgeu         ra, sp, 95f
                  srai         a0, a4, 14
                  sra          s9, gp, s9
95:               or           sp, s1, t6
                  addi         tp, a4, 926
97:               andi         gp, t1, 368
                  xori         s2, s11, -14
                  nop
                  and          tp, s4, s6
                  auipc        a1, 71950
                  sll          t0, s10, t1
                  beq          s3, a0, 121f
                  slli         a0, a6, 17
                  bge          t5, s10, 107f
                  add          gp, a6, t1
107:              and          t0, t0, t0
                  bltu         t0, a0, 122f
                  slli         a4, s8, 4
                  or           tp, t6, s8
                  xor          t3, ra, s6
                  slt          s9, s7, s0
                  srai         tp, s0, 20
                  slt          a6, a5, t4
                  andi         t6, t1, -1330
                  srai         s0, a6, 4
                  sub          a7, s2, a6
                  addi         s0, s9, -523
                  xori         s0, t2, -1265
                  xor          a0, a5, t6
121:              bltu         t2, s6, 140f
122:              srl          s8, s0, t3
                  or           a2, s9, sp
                  nop
                  ori          s8, t3, -168
                  or           ra, t4, t6
                  slti         t2, s7, 2030
                  add          a6, a3, zero
                  srai         sp, t2, 5
                  sltiu        s4, t0, 1987
                  andi         gp, s0, 1309
                  xori         t5, a7, 1702
                  auipc        a6, 980800
                  or           a6, s3, s4
                  bltu         a7, s7, 137f
                  xori         s11, gp, -2025
137:              bge          s9, a1, 143f
                  srli         t4, a2, 3
                  slli         s1, s9, 13
140:              bge          a4, a3, 149f
                  xori         t0, s11, 337
                  lui          a7, 564274
143:              srli         tp, ra, 14
                  xor          s3, zero, s10
                  addi         s9, sp, 35
                  slt          zero, a4, t3
                  blt          s11, a5, 150f
                  add          a7, s1, s4
149:              bne          a4, t6, 158f
150:              srl          a2, s11, t5
                  slti         t4, a4, -1549
                  slt          a1, s9, a3
                  sra          s5, t2, ra
                  auipc        s11, 248593
                  srl          s9, s9, t0
                  sll          a2, s1, s0
                  add          s5, ra, t6
158:              add          s11, a1, sp
                  and          t3, a7, t6
                  slti         s11, a0, 1713
                  bne          t5, zero, 165f
                  add          zero, s9, a5
                  slti         zero, t5, -1862
                  xori         s2, a0, -1016
165:              sra          t6, s7, s9
                  bne          a3, s7, 185f
                  ori          gp, tp, 2014
                  sltiu        a4, s0, -1805
                  srai         s0, s5, 3
                  sltiu        s5, s11, 964
                  addi         s4, tp, -1504
                  srai         a6, a6, 18
                  sra          a6, t3, a6
                  bne          t2, tp, 179f
                  srai         zero, a4, 8
                  lui          gp, 438827
                  slli         a4, t6, 28
                  slt          s2, t1, t4
179:              sltu         s5, a2, s6
                  sltiu        s1, a0, -1240
                  bne          ra, s3, 200f
                  srli         t6, s10, 11
                  srai         sp, s4, 2
                  sltiu        s8, s1, -1932
185:              xor          tp, a0, s3
                  or           s4, t0, s2
                  sll          a4, s3, s10
                  andi         a1, t6, 880
                  and          a0, gp, gp
                  auipc        a1, 540126
                  blt          t6, s7, 201f
                  sll          t1, t0, a7
                  xori         t3, a6, 693
                  sltu         gp, sp, s11
                  sltu         s11, tp, ra
                  sub          t6, sp, s1
                  or           t1, t5, zero
                  auipc        t4, 564309
                  blt          a2, s8, 208f
200:              bltu         t0, s11, 217f
201:              nop
                  srli         a6, s4, 27
                  and          t3, t2, t4
                  nop
                  sra          s11, t6, s9
                  slti         t3, s11, -145
                  srai         t6, s6, 19
208:              or           s1, t5, t1
                  and          s9, sp, a0
                  sltu         a6, s10, s10
                  bltu         s0, s8, 213f
                  bge          a0, s1, 219f
213:              xor          a3, s0, a3
                  auipc        a1, 108638
                  lui          t1, 777868
                  bge          t5, s6, 230f
217:              slti         a4, a4, 1319
                  slti         a7, s1, 1632
219:              slti         t5, a7, -1387
                  and          s10, gp, a4
                  srl          a2, t2, s10
                  slti         a1, a2, 775
                  srl          s3, s3, a0
                  srli         s5, t5, 17
                  nop
                  sra          a7, ra, a5
                  auipc        s2, 146306
                  sltiu        s4, a7, 342
                  sltiu        s2, t3, 1355
230:              srai         t6, a6, 29
                  addi         s11, sp, 1288
                  slt          t6, s9, s8
                  srli         zero, a3, 1
                  bne          a4, s6, 237f
                  slli         a4, s0, 13
                  sll          t4, gp, zero
237:              xori         s4, s6, -568
                  add          t3, s3, s3
                  and          tp, a1, s10
                  addi         a4, s9, 1755
                  sll          gp, sp, s6
                  nop
                  srl          tp, ra, a4
                  xor          a4, t3, a5
                  nop
                  bgeu         a3, s0, 253f
                  sll          t4, t2, t1
                  lui          a7, 791457
                  xor          s3, t3, a5
                  srai         s11, s9, 12
                  bgeu         a3, zero, 268f
                  or           t4, sp, a0
253:              sll          t0, a1, s3
                  bltu         s9, s7, 256f
                  andi         s4, sp, 1452
256:              beq          s6, t6, 269f
                  xor          s9, s3, a0
                  lui          a4, 82278
                  srli         s8, a5, 20
                  slt          s4, a6, s10
                  sltiu        s8, t0, 616
                  addi         tp, s8, 672
                  nop
                  and          s10, a5, a0
                  xori         t0, a0, -55
                  srli         t5, t4, 13
                  xori         s3, s8, -1018
268:              ori          a4, t6, 1966
269:              bne          s9, a0, 278f
                  slli         s10, a3, 4
                  xori         t0, a0, -1063
                  sll          t0, s11, t2
                  slli         s11, t0, 17
                  beq          s11, a6, 285f
                  xori         t0, s11, 712
                  slt          a6, s5, s2
                  sll          t1, s7, a3
278:              andi         a6, a3, 1603
                  slli         t0, s9, 16
                  blt          s6, s0, 287f
                  srli         s8, s7, 10
                  auipc        s5, 232220
                  slti         s5, a5, 1302
                  beq          a6, s10, 302f
285:              bltu         s4, a1, 297f
                  srl          s5, t4, zero
287:              blt          gp, a7, 306f
                  blt          a0, a7, 291f
                  srli         s5, a5, 27
                  srl          s11, s8, t1
291:              ori          s0, s10, -1081
                  lui          s0, 652915
                  nop
                  bgeu         a5, t4, 298f
                  and          a4, s11, a2
                  auipc        t6, 320877
297:              bne          s3, s2, 306f
298:              sub          a0, zero, a3
                  addi         t0, a3, -1551
                  auipc        t0, 899097
                  slti         t0, t2, -1545
302:              srli         s9, a2, 26
                  srl          a7, s3, t3
                  andi         s4, s7, 878
                  blt          t0, s8, 311f
306:              sltiu        ra, a5, 612
                  nop
                  beq          ra, s4, 314f
                  nop
                  sll          t3, ra, a7
311:              bge          s1, t4, 327f
                  or           a1, a5, s3
                  sll          s11, a7, zero
314:              srli         gp, s4, 0
                  srl          t2, ra, t5
                  xori         s4, zero, -1113
                  sltu         ra, t0, s0
                  and          zero, ra, s10
                  and          gp, s10, s6
                  slt          s0, zero, s4
                  sll          s9, s7, s7
                  xori         s1, s10, 1289
                  addi         t4, a6, -702
                  slti         s1, s11, -2015
                  beq          a5, s9, 330f
                  andi         gp, t3, -294
327:              ori          a2, t0, 841
                  blt          tp, s5, 335f
                  addi         s2, s6, 1239
330:              srli         ra, s4, 18
                  addi         s8, s6, -1310
                  sltu         s4, a1, s2
                  slt          s9, gp, a0
                  and          ra, t3, gp
335:              blt          a3, a6, 353f
                  slt          s0, a5, a4
                  sltiu        s8, ra, -679
                  auipc        s4, 82008
                  blt          a4, a7, 352f
                  srl          a1, s7, gp
                  srai         t1, gp, 28
                  xor          s8, a6, s7
                  bgeu         sp, t0, 348f
                  slt          t0, a3, s5
                  ori          ra, zero, -289
                  srli         a7, s6, 12
                  lui          a2, 1004494
348:              xori         s2, s0, -1661
                  sltiu        a3, a6, 1201
                  add          t0, a6, s6
                  addi         s0, s4, -678
352:              addi         a7, a6, -1143
353:              srli         s9, gp, 21
                  add          t0, ra, tp
                  sub          a3, s8, t2
                  bgeu         s3, s5, 358f
                  bltu         a5, s6, 366f
358:              slti         zero, sp, 1235
                  nop
                  bltu         s10, s0, 369f
                  sra          a1, a6, a0
                  srai         t6, a4, 18
                  ori          zero, zero, 110
                  ori          s9, t3, -786
                  bltu         s7, s6, 371f
366:              bge          s0, a0, 373f
                  srli         t4, a4, 18
                  lui          t5, 24141
369:              beq          t2, s3, 386f
                  andi         a2, a1, 317
371:              or           t3, t5, s11
                  addi         s3, a4, -704
373:              slti         s1, gp, -561
                  slli         sp, t3, 19
                  xor          a6, zero, t5
                  bge          s4, a2, 386f
                  bne          zero, t3, 386f
                  sltu         a0, ra, s3
                  blt          s3, t5, 398f
                  add          tp, a1, t1
                  bne          t2, s6, 384f
                  sltu         s0, ra, t2
                  beq          s5, s4, 392f
384:              bge          t1, s10, 389f
                  srli         s9, a1, 5
386:              xor          t1, sp, t2
                  slti         a4, zero, -1894
                  auipc        zero, 978991
389:              lui          s0, 560869
                  nop
                  add          t6, t3, a2
392:              sra          sp, t5, a5
                  srl          a1, s11, s6
                  xor          t1, a2, s11
                  andi         a4, s1, -58
                  bge          s3, gp, 415f
                  bgeu         s7, t0, 408f
398:              slti         t2, t1, 561
                  sll          a4, gp, s9
                  xor          s2, gp, a2
                  sll          a1, s5, s7
                  ori          t5, s5, 1025
                  bne          s4, s2, 410f
                  and          gp, s11, t1
                  slti         t1, s1, 996
                  sltiu        a4, s4, 336
                  or           s8, a3, a4
408:              bge          s11, s9, 412f
                  auipc        a3, 391601
410:              sltiu        s4, t3, -23
                  bge          s6, a3, 413f
412:              auipc        a1, 905301
413:              sra          a7, s4, s1
                  bge          s3, zero, 430f
415:              xor          a1, s3, a2
                  bge          gp, s8, 419f
                  lui          ra, 339517
                  bgeu         t4, s3, 424f
419:              xori         t5, a6, 1747
                  blt          t0, t0, 437f
                  ori          a1, s4, 16
                  andi         sp, t6, 1777
                  slti         t4, a2, 1108
424:              add          a6, s6, s11
                  addi         t0, tp, -195
                  xori         t3, s8, 374
                  sub          a3, gp, tp
                  lui          a6, 265607
                  bge          t0, t3, 448f
430:              sltiu        t4, t3, -62
                  bgeu         s5, t4, 435f
                  srli         s8, s6, 29
                  bne          t4, a1, 447f
                  slli         s4, a2, 13
435:              sra          s4, s7, s0
                  bne          s2, s10, 448f
437:              beq          t2, a3, 440f
                  andi         a1, t2, 243
                  slt          t1, t5, t3
440:              xor          s0, a2, s9
                  sltu         t3, sp, s5
                  sll          sp, t3, s11
                  xori         t6, a3, -826
                  bge          sp, a6, 460f
                  auipc        sp, 480493
                  srli         s3, t6, 24
447:              add          s3, t2, t4
448:              and          a7, a4, zero
                  slti         s1, a2, 624
                  add          a3, tp, a4
                  xor          tp, t0, s7
                  beq          a2, a0, 459f
                  lui          tp, 337541
                  slli         a1, s2, 30
                  sra          s8, tp, s9
                  add          s9, t3, ra
                  addi         tp, a5, -109
                  sub          s8, a6, t2
459:              xor          s1, s10, t1
460:              slt          s11, t4, t5
                  sltiu        t4, ra, 837
                  srli         t3, s11, 7
                  sltu         s10, a5, s11
                  add          zero, t3, t0
                  auipc        s0, 698092
                  beq          s10, s7, 476f
                  or           s8, a5, s7
                  slt          s5, a2, a2
                  or           a7, zero, t1
                  addi         t3, t3, 1757
                  andi         tp, t1, -1897
                  xori         t0, s10, -1399
                  beq          t2, zero, 475f
                  slt          s3, t6, a6
475:              addi         t4, sp, -1233
476:              lui          s8, 762781
                  sub          s3, t0, gp
                  srl          a0, zero, a1
                  xor          s5, s7, a4
                  bgeu         a6, s7, 482f
                  nop
482:              sub          t5, a0, a5
                  blt          s5, t5, 495f
                  sltiu        tp, s10, 1376
                  srai         gp, sp, 19
                  blt          sp, a5, 499f
                  addi         gp, s2, -223
                  slli         t3, s2, 27
                  blt          a2, s1, 506f
                  srli         s10, ra, 7
                  sra          s10, s11, s10
                  lui          a4, 1011667
                  nop
                  blt          t2, a2, 497f
495:              andi         a4, s11, -171
                  andi         a2, tp, 284
497:              beq          t1, s9, 508f
                  la           s4, region_0+1474 #start riscv_load_store_rand_instr_stream_1
                  lb           zero, 476(s4)
                  auipc        s11, 294376
                  sw           t2, -922(s4)
                  slli         a1, t4, 12
                  srl          a6, s8, s11
                  and          s5, a4, s10
                  andi         s9, a5, -1929
                  lb           t3, 167(s4)
                  sb           a4, -597(s4)
                  xori         sp, a5, 347
                  sb           a1, -1229(s4)
                  or           t3, t2, s11
                  sub          s11, sp, ra
                  lbu          t3, -1279(s4)
                  sh           zero, -1260(s4)
                  sra          s5, a1, a1
                  sb           s9, -138(s4)
                  nop
                  sltiu        s0, ra, -1192
                  lbu          s1, -1295(s4)
                  add          t6, t0, s11
                  and          s0, gp, s1
                  lbu          a3, -6(s4)
                  lb           a6, -1055(s4)
                  sll          a6, a0, s4
                  and          ra, a1, a2
                  slti         s3, s7, 1136
                  sltu         a2, a3, a4
                  sb           s5, -765(s4)
                  slt          s8, s11, a6
                  sb           s3, -1403(s4)
                  sb           t1, -1287(s4)
                  addi         t1, a3, 716
                  xori         s10, t0, -123
                  andi         gp, a1, 1139
                  lhu          s11, -1328(s4)
                  sh           t6, 478(s4)
                  and          s1, s11, s1
                  sw           a3, -466(s4)
                  xori         t6, a4, 380
                  lui          t2, 572142
                  lui          gp, 1011651
                  sub          a6, s6, t5
                  sub          t0, t6, t3
                  sb           s0, 103(s4)
                  lhu          t6, -300(s4)
                  srli         a3, s3, 11
                  andi         a0, t3, -914
                  lb           t1, -497(s4)
                  sra          t0, a4, t0
                  lh           s0, -1010(s4) #end riscv_load_store_rand_instr_stream_1
                  slti         s10, s4, 1511
499:              slli         zero, s8, 24
                  xor          a2, s9, s2
                  sra          s2, sp, s11
                  sltiu        tp, t5, 414
                  sra          t5, s9, s11
                  ori          tp, ra, -296
                  bgeu         s8, s7, 523f
506:              nop
                  bltu         s11, a2, 512f
508:              srli         t6, s0, 15
                  add          t6, t6, s3
                  and          s1, s9, t6
                  bne          s2, t0, 518f
512:              ori          zero, a7, -153
                  slt          gp, a5, s9
                  slt          a1, tp, t3
                  lui          a2, 182787
                  andi         a2, s10, -797
                  and          a0, a6, a3
518:              sltiu        s3, s7, 873
                  sltu         a1, s11, tp
                  nop
                  srai         tp, s5, 29
                  add          s4, t4, s11
523:              andi         t6, tp, 1039
                  sltiu        a2, a5, 1010
                  sltiu        zero, a2, -229
                  xor          s5, t3, t6
                  addi         t6, a0, -1749
                  bge          s9, s3, 537f
                  srli         s5, t0, 20
                  bne          tp, gp, 535f
                  sll          t4, sp, t5
                  sra          s8, t3, ra
                  bltu         tp, t2, 536f
                  xor          sp, ra, s4
535:              nop
536:              srai         zero, s7, 16
537:              xor          s9, s1, t1
                  srli         t2, a3, 16
                  or           a0, s6, s3
                  xor          s1, s1, s1
                  xor          a3, t5, a6
                  ori          ra, s7, -638
                  bgeu         s9, t3, 547f
                  slt          s9, s1, a6
                  bltu         t5, ra, 554f
                  srli         zero, t3, 7
                  slli         t4, tp, 31
                  addi         s3, s5, 183
                  srai         a2, a5, 15
                  slli         s11, s8, 4
                  srai         gp, s8, 16
sub_3_j5:         jal          s3, sub_4 #jump sub_3 -> sub_4
                  slli         s9, a1, 31
547:              bltu         s11, s6, 551f
                  sra          t4, t3, a7
                  andi         s3, s11, -551
                  slli         s0, t0, 15
551:              slti         t2, t0, 956
                  slt          a4, t3, t3
                  beq          s3, tp, 559f
554:              or           s8, t4, a2
                  lui          sp, 210662
                  lui          s5, 222233
                  lui          a7, 405517
                  bltu         sp, s3, 560f
559:              srai         a1, t2, 26
560:              srai         s9, zero, 20
                  srli         s5, s0, 19
                  auipc        t1, 582210
                  lw           s3, 4(a5)
                  sub          t6, gp, t4
                  addi         a5, a5, 16
                  srli         a2, t1, 17
782:              addi x16, x19, 1
782:              jalr x16, x16, 0
sub_1:            lui          s10, 339268
                  auipc        a1, 1032239
                  andi         s2, s11, -390
                  nop
                  and          a0, s9, t3
                  addi         a5, a5, -24
                  sw           s3, 4(a5)
                  addi         a7, s11, -555
                  andi         s10, s0, -1189
                  srai         a3, a0, 3
                  sltu         a1, a3, a6
                  la           t3, sub_2
                  lui          a1, 489022
                  srl          s4, s11, t0
                  andi         ra, t1, -998
                  xor          s10, s5, a0
                  addi         t3, t3, -457
                  beq          sp, a7, sub_1_j2 #branch to jump instr
                  sub          a3, s11, s6
sub_1_j2:         jalr         s3, t3, 457 #jump sub_1 -> sub_2
                  add          s0, s9, t0
                  sltiu        t5, s6, -1049
                  add          s11, zero, t2
                  bltu         s9, s7, 19f
                  sll          t4, a5, a3
                  blt          zero, a4, 24f
                  srl          s10, s4, a1
                  srl          s2, tp, a5
                  lui          a6, 136743
                  blt          a0, s4, 12f
                  ori          a6, t6, -1283
                  srl          s9, t5, t5
12:               sra          s3, s2, a0
                  sltu         s2, t5, gp
                  ori          a6, s8, -1798
                  add          tp, t4, s8
                  srai         s0, tp, 18
                  nop
                  sub          s9, s8, ra
19:               slti         a0, s5, 1417
                  xor          zero, zero, t5
                  slti         t1, s3, 1101
                  srai         a4, s3, 19
                  srl          sp, s8, s7
24:               beq          t0, tp, 43f
                  ori          a7, s0, -851
                  slti         tp, zero, -763
                  lui          a3, 662671
                  add          a3, s3, a3
                  srl          s0, a0, s0
                  bge          s9, s1, 34f
                  sub          zero, sp, s0
                  andi         a1, t6, 1639
                  bltu         s6, t5, 40f
34:               add          t2, a4, t6
                  sll          s9, s2, a2
                  bltu         t5, a4, 56f
                  sub          s1, s6, s9
                  xor          t4, sp, t0
                  srai         t6, a5, 10
40:               addi         t0, a5, 1688
                  bne          a5, s7, 51f
                  xori         a3, t3, -975
43:               bltu         a4, s4, 55f
                  lui          a6, 151919
                  bgeu         zero, ra, 47f
                  sltu         t0, s11, s5
47:               or           gp, t6, t5
                  addi         gp, t2, 1396
                  slli         t4, ra, 25
                  or           s8, s7, s1
51:               bne          a7, s8, 60f
                  sll          s9, t4, s7
                  or           s11, s9, s2
                  nop
55:               blt          s10, tp, 61f
56:               add          a6, s3, t2
                  auipc        t4, 256583
                  slti         a4, a7, -1706
                  andi         s11, t4, 1073
60:               addi         s10, a3, -515
61:               slt          a1, t0, t4
                  lw           s3, 4(a5)
                  add          a1, a6, t2
                  srl          a2, s3, t3
                  lui          tp, 1014990
                  slti         t6, s1, -270
                  addi         a5, a5, 24
                  srai         t1, a5, 29
                  lui          s5, 104304
                  sltu         a1, s1, s4
                  slti         a3, s10, -1579
                  add          a7, t4, a4
93:               addi x2, x19, 0
93:               jalr x2, x2, 0
sub_5:            bltu         t6, ra, sub_5_stack_p
                  xor          a0, s9, s1
sub_5_stack_p:    addi         a5, a5, -20
                  sltiu        s9, a5, -1193
                  add          s11, s11, t5
                  sw           s3, 4(a5)
                  slli         t0, s0, 9
                  add          t6, a7, s3
                  la           s1, region_1+1663 #start riscv_load_store_rand_instr_stream_2
                  lh           t2, -175(s1)
                  sh           t2, -109(s1)
                  sll          a1, sp, t2
                  srl          s0, t6, t1
                  lb           tp, -242(s1)
                  lbu          s10, 228(s1)
                  lui          a2, 137991
                  xor          s3, a7, s2
                  lw           t5, -83(s1)
                  srl          tp, a7, s1
                  lb           s10, -20(s1)
                  sltiu        s3, s7, 1002
                  andi         t4, s4, 1116
                  sh           a3, 121(s1)
                  sb           s10, -36(s1)
                  sb           s2, 34(s1)
                  lbu          tp, 93(s1)
                  lhu          a3, 179(s1)
                  srl          ra, a0, s0
                  lb           s5, -228(s1)
                  lbu          s5, -111(s1)
                  lhu          a3, -59(s1)
                  sh           s6, -243(s1)
                  sub          s10, s6, s7
                  ori          s0, s3, 1263
                  lh           a0, 11(s1)
                  lb           s4, 10(s1)
                  sb           s1, 212(s1)
                  sltiu        a2, a2, -722
                  sb           s8, -232(s1)
                  lb           a1, 130(s1)
                  lb           t3, -129(s1)
                  sw           tp, 121(s1)
                  lbu          ra, -146(s1)
                  lb           t5, -68(s1)
                  lhu          t6, -85(s1)
                  srai         a3, s3, 17
                  sb           t2, -254(s1)
                  sb           gp, 173(s1)
                  lbu          zero, 210(s1) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_0+205 #start riscv_load_store_rand_instr_stream_1
                  lbu          ra, -67(a1)
                  sll          s4, a0, t2
                  xori         a4, t6, 1606
                  lb           t5, 52(a1)
                  or           s8, t6, s10
                  and          sp, s3, t6
                  sltu         a7, s10, a6
                  slti         s8, zero, 1055
                  lb           s5, 42(a1)
                  srai         a3, a2, 22
                  lb           t2, 116(a1)
                  slt          a3, zero, a1
                  andi         s0, a6, 16
                  srl          gp, a2, gp
                  srli         s5, a4, 8
                  auipc        s4, 479028
                  sll          a3, sp, s6
                  slti         ra, t0, -1184
                  sh           s6, -113(a1)
                  lui          s4, 143289
                  lbu          a6, 244(a1)
                  sltiu        t3, sp, -1055
                  lh           a0, -11(a1)
                  srli         t5, t4, 20
                  lb           t6, 110(a1)
                  slt          s1, s5, s5
                  sltu         t4, s5, t4
                  srli         tp, t0, 24
                  slli         a3, a6, 30
                  auipc        t4, 607110
                  sll          tp, ra, a7
                  xori         s11, s0, 269
                  add          a2, a0, s10
                  slt          s4, s10, s4
                  add          s0, s8, t4
                  srli         t2, ra, 8
                  sb           s2, 142(a1)
                  sb           s0, 124(a1)
                  sltu         a6, a2, s6
                  sltu         s2, a4, a2
                  lhu          s5, -185(a1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+445 #start riscv_load_store_rand_instr_stream_0
                  lui          t6, 152848
                  slt          t1, t6, s1
                  sltu         t3, s5, a4
                  lb           tp, 68(sp)
                  add          ra, s7, sp
                  sh           zero, 949(sp)
                  sll          a7, a5, zero
                  lbu          s0, 478(sp)
                  lbu          a0, 809(sp)
                  lb           t0, 1278(sp)
                  lh           s11, 363(sp)
                  lb           a2, 1546(sp)
                  lui          t2, 363933
                  add          s10, a7, t6
                  lb           zero, 56(sp)
                  lb           t4, 1470(sp)
                  add          t3, s1, s0
                  lhu          s3, 181(sp)
                  sb           s5, 981(sp)
                  sb           a5, -68(sp)
                  auipc        s9, 239076
                  srl          s3, a7, t0
                  ori          t6, t5, 703
                  slt          a7, s9, a2
                  lbu          s1, 106(sp)
                  lb           s5, -147(sp)
                  auipc        t1, 94404
                  lbu          tp, 334(sp)
                  xori         s9, s8, 183
                  sb           t2, 1292(sp)
                  srli         s4, t1, 30
                  xori         a4, zero, 1237
                  lb           s10, 5(sp)
                  xor          t4, a4, a1
                  lw           t0, 595(sp)
                  lbu          a2, 555(sp)
                  lb           s10, 209(sp)
                  sub          s1, t5, t6
                  sltiu        s9, s11, -4
                  addi         s9, s2, 710
                  lh           s11, 1217(sp)
                  sltu         a4, zero, a7
                  lh           t5, 9(sp)
                  nop
                  sh           s9, 291(sp)
                  lh           zero, 1049(sp)
                  srli         t3, ra, 6
                  andi         gp, t4, 389
                  lbu          s1, 471(sp)
                  lhu          s10, 1085(sp)
                  lhu          s3, 669(sp)
                  lb           a1, 681(sp)
                  add          s1, s2, s4
                  lbu          a3, 1414(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         t0, ra, t3
                  slti         sp, t2, 1410
                  bge          a0, zero, 3f
3:                blt          t3, a3, 19f
                  srai         t4, t1, 29
                  add          t1, a7, t4
                  xori         t3, s7, -420
                  sll          t5, t6, t1
                  lui          zero, 149131
                  slt          t2, a7, a5
                  srli         a6, gp, 2
                  sub          t0, s11, s2
                  sltu         zero, a3, a7
                  lui          t3, 476255
                  slli         t4, t1, 27
                  add          s8, a1, s6
                  ori          t4, s1, 904
                  ori          t0, t3, 706
                  srai         tp, t6, 19
19:               sltiu        s5, a6, 1399
                  add          t2, tp, tp
                  srai         s4, t0, 0
                  sltu         a6, s6, s10
                  slli         t3, ra, 21
                  blt          gp, ra, 25f
25:               xori         t4, gp, -968
                  sltu         a2, t4, s7
                  andi         s4, s7, -993
                  andi         a0, tp, -1746
                  bgeu         a6, s6, 37f
                  addi         sp, s2, -85
                  slti         ra, a7, -770
                  sltiu        zero, t5, 222
                  sll          zero, s4, s10
                  sub          a3, tp, s3
                  sra          a1, s11, t2
                  bgeu         t5, s9, 38f
37:               sltu         s0, s11, t0
38:               srli         a6, s4, 1
                  and          a7, s1, a0
                  bgeu         s8, t3, 49f
                  xor          t0, a2, a4
                  sll          t0, a3, s11
                  lui          a4, 1011763
                  lui          s2, 392213
                  or           a0, gp, s2
                  bgeu         gp, tp, 59f
                  beq          t2, s0, 67f
                  slli         s2, a2, 20
49:               nop
                  and          a2, a3, s5
                  sll          s8, gp, zero
                  ori          a7, a5, 1803
                  auipc        s3, 537394
                  xori         a1, a5, -1141
                  ori          t5, s8, 1031
                  or           tp, t1, s10
                  srli         t3, s2, 5
                  bne          a1, gp, 65f
59:               sub          a7, s7, s9
                  bltu         ra, a5, 62f
                  andi         t5, t2, 1918
62:               bgeu         s2, t6, 68f
                  slli         t6, a2, 3
                  and          t1, t1, a1
65:               sra          s4, a7, sp
                  sra          a3, s2, s6
67:               bgeu         s0, ra, 79f
68:               blt          sp, t2, 74f
                  bgeu         a0, zero, 70f
70:               bge          gp, s0, 73f
                  sll          sp, t3, a3
                  bne          t1, a1, 74f
73:               and          a3, sp, a6
74:               lui          tp, 411518
                  xor          s1, s4, t4
                  sltiu        ra, s4, -85
                  bge          a7, a7, 90f
                  andi         s11, gp, -23
79:               beq          t0, a1, 96f
                  sll          gp, tp, s4
                  slt          ra, a7, a4
                  sltiu        ra, a0, 309
                  lui          s10, 874098
                  sltu         a7, t4, a6
                  add          sp, t4, t3
                  sra          s10, s9, s6
                  and          t6, sp, a6
                  slt          s3, zero, t6
                  blt          s0, a0, 99f
90:               sub          s10, s4, t1
                  blt          a3, s4, 105f
                  sltu         a7, t1, a0
                  sltu         s9, a0, t0
                  sltu         s8, a6, s10
                  lui          zero, 753214
96:               beq          zero, s7, 110f
                  beq          s7, a0, 103f
                  andi         s11, t5, -1571
99:               sll          s4, zero, s5
                  xor          a7, s6, a4
                  srai         s9, s11, 27
                  srl          t3, s7, s11
103:              beq          t1, t1, 122f
                  srli         a4, sp, 29
105:              slti         a7, s9, 1606
                  bgeu         a5, a5, 117f
                  bltu         s10, gp, 123f
                  auipc        t3, 906393
                  srli         s2, s4, 18
110:              and          gp, a6, a3
                  sltu         t3, s8, a5
                  addi         ra, s0, 1863
                  bltu         sp, t6, 116f
                  srl          a3, t2, s11
                  and          t0, zero, sp
116:              slti         ra, a0, -12
117:              bne          a6, s3, 128f
                  slti         t6, t3, 1704
                  blt          s0, a4, 121f
                  slti         t1, s7, -1890
121:              sll          t4, a1, t4
122:              blt          s0, s9, 136f
123:              andi         s11, t5, 502
                  ori          sp, t0, 1802
                  bgeu         a3, a5, 140f
                  ori          a1, s3, 28
                  xori         t6, t6, -1375
128:              beq          s1, t3, 140f
                  srai         sp, s11, 29
                  and          s5, t2, sp
                  slt          tp, s1, s10
                  bltu         s4, s6, 138f
                  add          s4, t5, ra
                  beq          t1, zero, 148f
                  xor          s11, ra, t0
136:              addi         tp, s5, -758
                  nop
138:              xor          s11, a3, a4
                  blt          t5, a2, 145f
140:              sub          s10, a5, t5
                  sltiu        s5, a5, 1820
                  blt          s0, a4, 148f
                  sltiu        a1, sp, -1747
                  xori         a1, s1, 927
145:              andi         tp, s1, -1115
                  auipc        a4, 637946
                  bne          t2, a3, 160f
148:              add          s11, a3, a7
                  bgeu         s5, a2, 159f
                  xor          s1, s9, ra
                  beq          t4, s3, 152f
152:              ori          s9, s5, -236
                  bne          s6, ra, 161f
                  bge          s7, s0, 156f
                  nop
156:              and          a6, s2, t2
                  xori         ra, t1, 427
                  ori          t6, t6, 1908
159:              bgeu         sp, s5, 166f
160:              sltiu        t0, t5, -1505
161:              ori          gp, s6, 750
                  andi         a7, s10, -1731
                  xor          s3, a3, s6
                  slti         t4, t3, 38
                  srl          s4, s9, t4
166:              sltu         t1, s7, sp
                  sra          a6, s0, a3
                  andi         t2, t5, 105
                  srai         t4, sp, 5
                  andi         a6, t2, -253
                  bge          t4, a1, 174f
                  sub          t2, s1, t4
                  bgeu         s2, ra, 192f
174:              add          tp, s3, a0
                  xori         s0, sp, -1161
                  slt          s2, a0, a7
                  andi         s0, a5, -500
                  nop
                  blt          s2, s9, 188f
                  xori         a3, a0, -398
                  ori          s4, a1, -1863
                  blt          s7, ra, 184f
                  slli         a2, s0, 10
184:              lui          t3, 584400
                  bge          s4, sp, 196f
                  srli         a0, a6, 9
                  nop
188:              xori         t1, zero, -138
                  sra          t4, a3, ra
                  sll          s11, a4, a6
                  bltu         sp, a1, 192f
192:              srli         s9, a3, 7
                  xor          a0, a6, sp
                  bltu         s0, t3, 207f
                  sub          t0, a7, tp
196:              lui          sp, 31669
                  xori         s8, s3, -1892
                  andi         a7, s7, 305
                  bltu         s6, t4, 214f
                  add          tp, s11, s8
                  slt          ra, t6, a6
                  slli         s5, zero, 27
                  auipc        s9, 1010573
                  andi         s10, a6, 567
                  srli         s1, s1, 4
                  bge          t6, s11, 222f
207:              addi         a3, s7, -1042
                  slti         s5, t0, -110
                  sltu         s1, s5, t0
                  slli         zero, ra, 15
                  auipc        s9, 48984
                  sra          tp, zero, s4
                  srli         s11, s11, 9
214:              sll          a0, t1, a6
                  add          a0, s0, s10
                  slli         s0, s8, 17
                  xor          s1, s10, a2
                  blt          zero, s10, 234f
                  sll          a0, zero, a2
                  bltu         s0, s10, 234f
                  bgeu         a1, s5, 223f
222:              slt          tp, a0, t1
223:              srai         gp, t4, 28
                  slli         tp, s1, 6
                  xor          sp, a2, sp
                  sll          s0, s4, t0
                  slt          a2, a6, sp
                  addi         s9, s11, -1091
                  sub          a1, s3, t3
                  and          t4, a5, s1
                  sltu         sp, s9, a0
                  sra          s2, tp, t6
                  bge          tp, t5, 236f
234:              sub          s5, s0, s4
                  nop
236:              lui          a7, 95415
                  sra          a0, s4, a2
                  lui          s0, 30476
                  and          t6, gp, s5
                  auipc        t4, 498402
                  slli         s4, s1, 18
                  and          s5, s6, t5
                  sltiu        t0, a4, -1094
                  srl          s3, s7, s8
                  add          t0, a0, t4
                  beq          tp, t0, 257f
                  auipc        tp, 111332
                  sltiu        s10, s9, 1743
                  srli         a4, s8, 18
                  srli         s2, t4, 14
                  slt          t3, s10, s5
                  bgeu         a6, s7, 269f
                  beq          a6, s10, 255f
                  add          s4, t0, a6
255:              srai         t3, a7, 0
                  slt          s0, s7, s3
257:              sll          s3, a1, s0
                  xori         gp, a6, -241
                  addi         t2, a4, 140
                  slti         a3, a2, -225
                  slti         s10, s9, 319
                  nop
                  srai         a7, s5, 28
                  slt          a0, t2, s7
                  srli         s2, ra, 8
                  or           sp, s5, a4
                  slt          s5, t3, t6
                  lui          s3, 892457
269:              slli         a2, a0, 3
                  andi         s0, s11, -38
                  srli         t0, t4, 20
                  slli         sp, a7, 1
                  add          s11, gp, s6
                  sltiu        s9, s0, 1378
                  srl          a2, s6, s9
                  srli         a2, a1, 25
                  sll          s8, a7, t0
                  sub          s11, s4, s6
                  la           t2, region_1+1516 #start riscv_load_store_rand_instr_stream_3
                  andi         a3, s6, 1339
                  sw           sp, 0(t2)
                  sh           s5, -2(t2)
                  lb           s2, 10(t2)
                  ori          a7, a3, 265
                  nop
                  lb           a3, -1(t2)
                  lbu          s10, -3(t2)
                  lbu          s0, -13(t2)
                  sb           s0, 3(t2)
                  sll          t6, s2, t0
                  sb           t0, -4(t2)
                  add          s8, zero, t4
                  srli         a2, a4, 0
                  sb           a5, 4(t2)
                  lb           s4, -3(t2)
                  sb           t6, 15(t2)
                  ori          s0, t3, 944
                  lb           s1, 7(t2)
                  addi         s8, s0, 1392
                  lb           a3, 15(t2)
                  slli         t1, a1, 21
                  lb           a2, 3(t2)
                  xori         t3, s1, 1781
                  sb           a2, -6(t2)
                  sra          s11, a2, a7
                  srl          s10, s11, s4
                  sb           t3, 13(t2)
                  lhu          s8, -4(t2)
                  sb           a7, -16(t2)
                  lhu          tp, -8(t2)
                  sb           a2, -1(t2)
                  sh           zero, 2(t2)
                  xor          zero, t1, s8
                  lbu          a2, -1(t2)
                  lh           s0, 10(t2)
                  sltu         s8, gp, sp
                  sh           a1, -10(t2)
                  srli         a0, s0, 16
                  sll          s0, s8, a3
                  sb           tp, 7(t2)
                  auipc        t5, 789672
                  srli         t5, gp, 26
                  andi         s11, a5, 1164
                  srai         a7, s7, 20
                  auipc        tp, 115675
                  srl          zero, t4, s4
                  srli         s5, s0, 20
                  and          ra, a1, gp
                  sltiu        a7, zero, 702
                  auipc        s10, 305446
                  sb           sp, 5(t2)
                  lh           s11, 10(t2)
                  sltu         tp, s6, a3
                  nop
                  add          zero, a7, t6
                  sh           a5, -10(t2)
                  sb           ra, -12(t2)
                  lbu          s1, -3(t2) #end riscv_load_store_rand_instr_stream_3
                  srli         tp, s3, 22
                  xor          s3, a2, a4
                  nop
                  beq          a0, t3, 283f
283:              bne          t1, t4, 297f
                  bge          s2, s10, 304f
                  xori         t0, ra, 499
                  or           t6, a7, s3
                  xori         s11, t5, 373
                  addi         a3, s6, 1919
                  slli         s0, s7, 5
                  slt          a1, a0, s7
                  slti         t4, t6, 769
                  blt          tp, a1, 299f
                  addi         a1, s10, 987
                  nop
                  bge          a7, a7, 307f
                  xori         t6, a0, -564
297:              slti         a6, s8, -393
                  xor          t4, s10, s4
299:              xor          s1, a1, a3
                  or           a7, s5, s7
                  add          tp, t4, s8
                  slli         s4, s10, 28
                  beq          a6, s1, 316f
304:              sra          t1, s4, tp
                  xor          t2, s9, s0
                  or           t3, t4, s2
307:              srai         t1, s1, 13
                  xor          sp, a2, a1
                  slli         t3, ra, 2
                  bltu         s10, s2, 325f
                  srl          a3, gp, s10
                  slli         s10, s6, 6
                  andi         t2, a2, -169
                  sra          a3, t5, a3
                  bne          t1, t2, 335f
316:              slti         s5, s2, -838
                  bge          s10, s5, 325f
                  auipc        t3, 282648
                  or           a7, s6, sp
                  slti         tp, a0, 1464
                  slti         t3, s10, -34
                  add          s10, s9, s9
                  sra          sp, s8, t6
                  slli         s4, s8, 5
325:              addi         a7, s4, 1964
                  sub          gp, s10, s6
                  srli         zero, s8, 2
                  sltu         s10, t5, a2
                  srai         t3, s7, 18
                  sltiu        s9, t1, -311
                  bltu         s8, t2, 332f
332:              slt          a2, a4, a7
                  slt          s11, a7, s2
                  srl          t6, a6, zero
335:              slli         a1, t1, 6
                  bltu         t5, tp, 338f
                  sra          t5, ra, s11
338:              sub          t2, a0, t2
                  xori         s10, s11, 1943
                  xor          s2, s9, t3
                  or           sp, s0, a3
                  andi         tp, s1, -1582
                  sra          a7, s2, t4
                  bne          a5, s1, 358f
                  blt          t0, sp, 361f
                  blt          a2, t1, 360f
                  bne          tp, s4, 349f
                  nop
349:              sltu         a4, t4, a2
                  xor          a3, t4, a3
                  sll          s0, a4, a0
                  sll          a4, s11, s6
                  bgeu         s5, s2, 359f
                  auipc        a4, 503083
                  xor          a0, s5, t2
                  sub          a0, ra, t6
                  nop
358:              srai         t3, a0, 10
359:              bne          ra, s4, 360f
360:              nop
                  la           s5, sub_9
                  add          t3, t3, s7
                  lui          a6, 456553
                  and          ra, t1, s4
                  slt          a1, s10, s8
                  lui          t5, 1016479
                  sub          t3, a2, gp
                  addi         s5, s5, -839
                  nop
                  bgeu         s6, t3, sub_5_j10 #branch to jump instr
                  srl          s8, s5, s10
                  sra          t2, s1, gp
                  srl          a3, s7, a0
sub_5_j10:        jalr         s3, s5, 840 #jump sub_5 -> sub_9
361:              bge          s4, t1, 375f
                  xori         sp, s3, 54
                  sll          s1, t1, s8
                  sra          s3, sp, a3
                  bne          t2, t1, 368f
                  add          tp, s1, a1
                  andi         t6, s11, -708
368:              bne          t5, s5, 378f
                  sub          s9, a6, s11
                  and          a6, s9, s5
                  lui          ra, 379240
                  lui          s3, 417980
                  bgeu         s1, sp, 392f
                  sub          s10, a1, s6
375:              add          a4, sp, ra
                  sll          gp, t4, s1
                  srl          s5, a3, s6
378:              nop
                  nop
                  and          a3, s2, s7
                  srli         s5, s0, 11
                  lui          s3, 76657
                  auipc        a0, 593541
                  srai         s11, s11, 10
                  sltiu        t5, s6, -872
                  sra          a6, a2, s7
                  nop
                  srl          s8, t6, s1
                  sltu         t1, s7, s4
                  auipc        s8, 272568
                  ori          t3, s5, 1138
392:              bne          t3, a1, 401f
                  bgeu         s1, ra, 404f
                  andi         a4, s9, -41
                  and          a1, a3, t6
                  sltiu        a1, s6, -1429
                  sll          s9, a6, t6
                  srai         s0, s4, 10
                  nop
                  bltu         a0, ra, 406f
401:              bltu         s5, sp, 417f
                  bge          t4, a1, 408f
                  ori          s5, a3, -1629
404:              and          s5, s4, s9
                  ori          t2, s9, -1770
406:              sltiu        t2, gp, 1152
                  bne          s10, gp, 418f
408:              and          t6, s7, s11
                  sub          t5, s0, t0
                  sltu         t0, sp, a7
                  bltu         a5, s8, 428f
                  addi         a2, s2, 1475
                  beq          s4, a0, 414f
414:              slti         t1, s6, 311
                  xor          s10, t6, t6
                  lui          s2, 661958
417:              or           t4, ra, a7
418:              nop
                  sll          s10, a0, t0
                  xori         s8, s0, -895
                  srl          t3, a1, t5
                  bge          t2, s8, 425f
                  sltu         s0, a6, s10
                  xor          s10, ra, t5
425:              srai         s5, s8, 24
                  xori         a7, a4, -1660
                  blt          s11, t2, 429f
428:              bge          gp, s0, 441f
429:              slli         s5, s6, 5
                  srai         t5, tp, 30
                  srl          a7, ra, s0
                  addi         s9, s3, 1506
                  or           a2, tp, a0
                  srai         a3, t6, 1
                  sub          s2, ra, s11
                  and          gp, a2, tp
                  bltu         sp, a6, 439f
                  slti         s3, gp, -1651
439:              or           gp, a1, s4
                  sra          sp, zero, s11
441:              nop
                  srl          t5, sp, a7
                  blt          s8, s1, 450f
                  nop
                  sltu         s11, a6, s3
                  xor          s1, s9, sp
                  slti         s8, a5, 1251
                  and          s10, tp, s2
                  srai         gp, t4, 14
450:              bgeu         ra, ra, 464f
                  or           a4, t0, zero
                  lui          t4, 814085
                  slti         s11, s2, -1322
                  add          t1, a5, s10
                  slt          ra, t6, tp
                  lui          s8, 519504
                  slt          ra, a4, a6
                  andi         s5, t1, 1830
                  slti         a6, s8, 939
                  lui          a4, 196877
                  slti         t5, t4, 612
                  beq          s5, t0, 476f
                  bgeu         s0, a1, 469f
464:              auipc        a7, 156408
                  sra          ra, s7, t4
                  nop
                  beq          s5, gp, 484f
                  addi         s0, s8, -11
469:              nop
                  ori          a1, s10, -289
                  add          a1, s1, t6
                  xor          t4, s8, s6
                  sltiu        a6, t3, -1532
                  sub          s3, a6, s3
                  bgeu         s4, t3, 477f
476:              xori         t6, t5, -1074
477:              nop
                  lui          a1, 871168
                  auipc        t2, 24529
                  bgeu         s11, a3, 489f
                  srli         s5, zero, 27
                  srl          s1, ra, a2
                  sra          a4, sp, a0
484:              slt          ra, a2, t6
                  ori          zero, a1, 1203
                  blt          s9, t1, 496f
                  bge          sp, a7, 499f
                  ori          s0, t3, 292
489:              xor          s0, s7, s11
                  srli         a3, s7, 27
                  blt          sp, t1, 499f
                  nop
                  add          s5, s11, a4
                  ori          s9, s4, -708
                  sra          a3, t0, s3
496:              bne          s8, tp, 509f
                  srai         a7, t5, 31
                  addi         tp, s3, 1558
499:              bgeu         s10, a4, 505f
                  beq          a1, t0, 502f
                  srai         s8, t6, 23
502:              addi         s4, t0, -728
                  bgeu         s11, s3, 517f
                  auipc        tp, 1019028
505:              sltiu        s11, s4, 1422
                  bne          s7, a6, 512f
                  sltu         s11, s9, a6
                  sra          a7, s11, gp
509:              srl          t2, zero, t2
                  slt          t2, gp, t1
                  ori          t5, a6, -440
512:              andi         s1, s4, -1849
                  add          s4, t1, s11
                  sra          t6, s9, s10
                  sll          s8, t4, sp
                  slti         s0, t1, 829
517:              andi         zero, ra, -465
                  srli         t6, s5, 29
                  add          zero, a5, a4
                  srli         t4, t0, 16
                  bgeu         zero, s5, 523f
                  beq          sp, a4, 535f
523:              auipc        s3, 664287
                  bge          a2, a4, 535f
                  bge          a6, t3, 541f
                  srl          s0, a4, s2
                  sltiu        t1, a1, -1489
                  andi         t5, s4, -791
                  sltu         t6, s11, gp
                  nop
                  lui          a4, 925843
                  lui          t5, 915015
                  beq          s3, a3, 552f
                  nop
535:              sltiu        sp, a6, -605
                  beq          a3, gp, 556f
                  sub          s4, s6, s3
                  srl          t6, s11, s6
                  srl          s0, s6, ra
                  slt          s8, a4, a5
541:              ori          t4, s9, 2034
                  addi         tp, s1, 1882
                  sll          t2, a1, a3
                  srai         t6, a7, 1
                  srai         s2, s4, 10
                  ori          s2, a7, -195
                  sll          s8, s10, t0
                  bge          t4, a5, 563f
                  bgeu         a2, s11, 552f
                  srl          a2, t3, a7
                  srli         t0, sp, 16
552:              beq          a4, s3, 553f
553:              slli         s8, t2, 17
                  lui          sp, 325582
                  xori         a2, gp, -446
556:              auipc        s5, 425003
                  nop
                  srli         tp, t2, 13
                  xori         t5, t6, -1427
                  beq          a0, a3, 562f
                  ori          s0, s1, 112
562:              blt          s7, a4, 565f
563:              xori         ra, s1, 2006
                  sll          a7, s8, s7
565:              sltu         s1, t5, s9
                  beq          t2, a7, 567f
567:              srli         sp, ra, 21
                  srli         sp, t6, 1
                  auipc        a6, 814536
                  sltu         a4, sp, t6
                  slli         s8, s10, 0
                  or           s10, a5, s4
                  slt          s1, s9, t3
                  ori          t5, ra, 839
                  or           s4, t3, a0
                  and          s11, s10, a3
                  blt          sp, a6, 593f
                  sltiu        s9, a0, 1821
                  xori         a3, s11, 709
                  bgeu         gp, s3, 581f
581:              srl          gp, a5, s3
                  lui          s4, 749544
                  slli         a3, s5, 0
                  beq          a5, tp, 595f
                  andi         a1, a6, 1086
                  sll          s0, a7, a6
                  sra          a4, a4, a2
                  sra          a7, gp, a0
                  xori         ra, ra, 1
                  andi         ra, a4, -750
                  addi         gp, s5, -588
                  bltu         s6, a0, 594f
593:              add          ra, a0, a2
594:              bne          zero, s8, 613f
595:              addi         a4, t2, 1934
                  ori          t1, s8, 946
                  blt          t3, s6, 604f
                  nop
                  slli         s3, t1, 24
                  auipc        a3, 380767
                  slti         s10, s1, 259
                  ori          t2, a2, -258
                  sub          s11, a6, t4
604:              bge          tp, a4, 606f
                  srl          s8, s11, t6
606:              sll          a3, s9, s8
                  bltu         t2, a2, 613f
                  or           gp, s1, zero
                  slt          t4, s9, a4
                  and          sp, s6, a0
                  beq          a5, a0, 613f
                  addi         t5, t5, 65
613:              andi         a1, s5, 1380
                  srai         t0, s11, 6
                  srli         tp, ra, 10
                  ori          t6, a3, -1114
                  xor          t4, tp, a3
                  lui          sp, 920312
                  lw           s3, 4(a5)
                  nop
                  srli         s4, s8, 5
                  addi         a5, a5, 20
                  sltu         a7, a6, zero
844:              addi x9, x19, 0
844:              jalr x9, x9, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x22, x15, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x6, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x6, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x6, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x6, x19, ecall_handler
                  li x19, 0x1
                  beq x6, x19, instr_fault_handler
                  li x19, 0x5
                  beq x6, x19, load_fault_handler
                  li x19, 0x7
                  beq x6, x19, store_fault_handler
                  li x19, 0xc
                  beq x6, x19, pt_fault_handler
                  li x19, 0xd
                  beq x6, x19, pt_fault_handler
                  li x19, 0xf
                  beq x6, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

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
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x15, x22, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
