.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x20, kernel_stack_end

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
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xfd8dfeec
                  li x5, 0x80000000
                  li x6, 0xcb3304cf
                  li x7, 0xf4e38aae
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xf881bb3a
                  li x11, 0x6e497e27
                  li x12, 0xf083bc78
                  li x13, 0x2
                  li x14, 0xfe4d6239
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x0
                  li x21, 0x0
                  li x22, 0xfd9be815
                  li x23, 0x0
                  li x24, 0xf6e127cb
                  li x25, 0xf58d4030
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x8ade07e8
                  li x30, 0x0
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             la           s1, region_0+1834 #start riscv_load_store_rand_instr_stream_0
                  sh           zero, -60(s1)
                  xori         t4, s0, 682
                  xor          s2, t4, t2
                  addi         tp, sp, 1583
                  srl          s7, t0, t6
                  sb           s3, -1(s1)
                  slli         a7, s2, 1
                  sb           t2, -18(s1)
                  lhu          gp, 36(s1)
                  and          s9, s10, s11
                  slli         t0, t6, 0
                  addi         zero, s8, -823
                  lb           s6, 64(s1)
                  andi         gp, a2, -1920
                  lh           t5, 60(s1)
                  slli         s6, t4, 14
                  sub          s8, a1, s9
                  add          t0, zero, s2
                  auipc        a5, 537889
                  lb           tp, -11(s1)
                  lh           zero, 34(s1)
                  sub          sp, t6, t1
                  sra          s6, t3, a5
                  xori         t5, t0, -1283
                  lui          s5, 1007488
                  and          s9, sp, s1
                  slt          a6, s11, s6
                  nop
                  sub          a3, s7, s6
                  auipc        t3, 262787
                  lhu          tp, -30(s1)
                  sltiu        s0, s3, 298
                  sll          s10, a1, a4
                  lui          a3, 265362
                  sb           t4, 24(s1) #end riscv_load_store_rand_instr_stream_0
                  srl          a7, s10, gp
                  blt          s4, s3, 9f
                  xori         ra, tp, -1487
                  auipc        s10, 99048
                  slli         sp, s4, 5
                  sub          ra, t4, sp
                  bltu         ra, s6, 25f
                  slti         s6, s5, -1958
                  bgeu         s11, a2, 10f
9:                beq          s7, s10, 25f
10:               sltiu        t5, zero, 781
                  srai         s0, s0, 12
                  nop
                  bgeu         tp, a5, 17f
                  xor          s9, t5, ra
                  sltu         t4, s7, t0
                  auipc        s2, 1014292
17:               sltiu        s0, tp, -1312
                  auipc        gp, 397695
                  slti         t4, t6, -323
                  slti         s11, s8, 1929
                  or           s10, t0, t0
                  ori          t3, t0, -806
                  srl          a0, a5, a7
                  bne          s1, a3, 40f
25:               addi         s2, a3, -63
                  ori          s7, a5, 802
                  xor          a5, sp, s8
                  xor          t5, a7, s8
                  srl          s9, a5, t6
                  sub          a7, a0, t6
                  sll          s8, s11, s10
                  bltu         s5, t6, 42f
                  srli         s1, t3, 29
                  sll          t0, a7, s6
                  addi         s1, sp, 1925
                  sub          tp, t0, s4
                  bltu         s4, a4, 57f
                  nop
                  slti         t2, s5, 1222
40:               bge          t4, t5, 49f
                  srai         a5, gp, 22
42:               addi         s2, s0, -487
                  blt          t3, t3, 54f
                  auipc        gp, 105467
                  auipc        ra, 194040
                  and          a2, s0, a2
                  srl          s6, t4, a5
                  auipc        t5, 925398
49:               ori          s2, s10, 542
                  slt          a5, gp, t6
                  nop
                  sll          s7, a4, s2
                  beq          a3, s10, 72f
54:               and          t3, t0, s4
                  srl          gp, s0, t4
                  nop
57:               addi         s1, s0, 966
                  sub          sp, sp, a6
                  auipc        a7, 196648
                  sub          t3, t3, s11
                  nop
                  and          s11, gp, t1
                  xor          s9, t3, t0
                  sub          a4, s7, s6
                  slti         s5, a0, 1558
                  andi         t3, s11, -1420
                  srai         t5, a7, 19
                  bgeu         t2, s11, 72f
                  sltiu        a2, t4, -1453
                  xor          ra, s9, a5
                  srl          s1, a1, tp
72:               sltu         sp, t2, s10
                  and          s7, t3, t0
                  srl          zero, s0, ra
                  srai         a5, s6, 15
                  sra          a4, a4, s11
                  slli         a6, t2, 8
                  srai         a6, a2, 3
                  bltu         s11, s5, 82f
                  blt          t0, a4, 90f
                  sra          a3, a6, t5
82:               bne          s1, s7, 88f
                  sll          a2, s1, a5
                  addi         t5, s4, 1985
                  xori         a4, t3, -571
                  blt          t2, t1, 95f
                  lui          s9, 1033805
88:               or           a2, s0, sp
                  add          s8, s4, t0
90:               bne          t6, t4, 109f
                  sltu         gp, t6, ra
                  srli         zero, gp, 14
                  bgeu         a3, s2, 104f
                  sra          s8, a1, s3
95:               nop
                  blt          s0, s6, 104f
                  xori         a7, a0, 1237
                  add          s1, t6, a3
                  bge          t6, s3, 116f
                  bgeu         a0, gp, 118f
                  sll          s0, s7, t6
                  nop
                  addi         s8, sp, -1097
104:              bgeu         t1, a0, 108f
                  srai         a6, t2, 28
                  la           sp, region_1+869 #start riscv_load_store_rand_instr_stream_1
                  add          s6, s8, a0
                  and          t4, t5, sp
                  sra          a7, a4, t0
                  sltu         s9, tp, s5
                  sltu         t3, s9, t3
                  lh           t5, -463(sp)
                  lb           t5, 742(sp)
                  lb           s1, -536(sp)
                  lb           t4, -549(sp)
                  lh           a1, -147(sp)
                  add          s8, s11, a6
                  sh           s1, 1(sp)
                  srli         a2, s10, 8
                  sltu         a5, t0, s3
                  or           a6, a1, a2
                  sltu         s0, a6, t0
                  add          t0, zero, t4
                  sltu         t5, s8, a5
                  lb           a0, -858(sp)
                  and          s6, s1, a2
                  lbu          a0, 493(sp)
                  sh           s3, 989(sp)
                  andi         a6, tp, 578
                  xor          a3, t2, t4
                  lui          a0, 160550
                  sltiu        s6, s10, -775
                  sb           zero, 115(sp)
                  lh           s5, -41(sp)
                  sb           t3, -91(sp)
                  slt          a5, s10, a6
                  and          t1, s2, ra
                  xori         s11, a7, 1398
                  lbu          gp, 550(sp)
                  sw           a1, 619(sp)
                  auipc        a6, 636108
                  sh           t2, 819(sp)
                  sb           s5, -161(sp)
                  lui          a0, 876263
                  sb           a0, 548(sp)
                  sb           t3, 939(sp)
                  lui          a1, 77867
                  sh           a3, -43(sp) #end riscv_load_store_rand_instr_stream_1
                  sra          zero, t2, s8
                  sll          t2, ra, a2
108:              bne          s6, tp, 116f
109:              and          s8, a5, a7
                  lui          s2, 105533
                  sub          a0, s4, s9
                  auipc        t5, 747482
                  srai         t3, a2, 21
                  bge          s6, s1, 126f
                  xori         s7, s4, 1696
116:              beq          s3, a1, 120f
                  bge          s0, t3, 123f
118:              sll          s6, t4, s10
                  nop
120:              slti         t5, a5, -39
                  xor          s0, s4, a0
                  addi         s7, s1, -1404
123:              bge          sp, t2, 135f
                  andi         a5, s1, -1816
                  srl          a6, t4, s3
126:              xor          a2, s7, a5
                  lui          t2, 857568
                  srli         s7, s10, 3
                  or           t1, t0, s3
                  sll          a3, s8, s5
                  xori         zero, tp, 1231
                  add          t2, s11, s8
                  xori         s2, a2, 1609
                  srli         s11, zero, 13
135:              beq          a4, a3, 154f
                  or           a5, a7, ra
                  add          a0, sp, s6
                  srli         s2, a7, 15
                  sra          gp, s6, ra
                  sltu         t3, s7, s0
                  bge          a2, s6, 150f
                  sltu         t4, s4, zero
                  xori         s8, a4, -1871
                  slt          a4, t1, a0
                  sll          zero, ra, s6
                  sll          gp, s4, s2
                  and          s6, s2, s2
                  sra          a7, a7, s11
                  bltu         a6, sp, 168f
150:              bltu         s6, t1, 169f
                  srai         t0, a2, 14
                  add          a7, gp, s4
                  slt          s6, s6, a0
154:              and          a5, a3, a3
                  addi         t1, a4, 869
                  srli         s6, t1, 26
                  xori         t1, gp, -91
                  or           s10, t3, s4
                  ori          t0, gp, 1368
                  or           s7, s4, t4
                  sltu         zero, t1, s9
                  bgeu         s7, ra, 166f
                  and          s2, t1, a2
                  slti         a0, s1, 759
                  xori         a7, a3, -1672
166:              srli         s10, gp, 1
                  xor          sp, a4, s2
168:              sll          t5, a0, zero
169:              sltiu        tp, sp, 1182
                  bne          s1, t4, 186f
                  sra          a5, s11, t3
                  blt          s6, s7, 190f
                  bgeu         s6, t1, 177f
                  bgeu         a6, s2, 185f
                  auipc        t0, 592646
                  slli         a7, gp, 10
177:              ori          s11, tp, 196
                  slt          gp, gp, s4
                  slti         t1, s10, 1160
                  srli         a7, t4, 22
                  xori         s10, a6, -983
                  sra          a0, s2, a0
                  addi         s0, s9, -374
                  slli         a5, s0, 31
185:              sltiu        a2, s4, 226
186:              nop
                  sltiu        a0, s0, -992
                  srli         a5, s8, 16
                  xori         a3, sp, 480
190:              xori         s5, t3, 865
                  lui          t1, 418090
                  addi         s5, s0, -1947
                  srli         s9, a1, 14
                  auipc        a3, 262362
                  and          a4, gp, t3
                  slti         a0, a3, 840
                  slt          a0, s6, s11
                  sra          a1, s3, a7
                  andi         a0, tp, -1812
                  ori          s5, t4, -1311
                  auipc        a7, 803120
                  ori          a2, tp, 383
                  add          a3, s11, gp
                  srai         a3, t2, 29
                  sll          t4, s8, tp
                  bne          t4, t4, 225f
                  bge          s6, ra, 213f
                  bge          a3, a1, 217f
                  lui          ra, 183545
                  bge          t4, s1, 230f
                  srl          s2, t2, t3
                  bltu         s4, s5, 223f
213:              xor          s1, s4, zero
                  slt          ra, a4, zero
                  ori          a1, a4, 34
                  lui          s11, 827868
217:              addi         t5, s11, -1599
                  sll          a6, a1, a7
                  sltiu        s0, s3, 1802
                  nop
                  slli         a7, t4, 30
                  sltu         t4, a0, t6
223:              bge          a3, s6, 242f
                  or           s1, a1, a0
225:              andi         zero, tp, -1502
                  bne          s2, s3, 234f
                  srai         zero, s2, 16
                  auipc        t0, 482292
                  xori         zero, t6, 1108
230:              srli         s8, t0, 14
                  and          ra, ra, s5
                  srli         s2, s4, 17
                  slli         a1, a5, 26
234:              auipc        t3, 592123
                  xor          tp, s11, t2
                  sltiu        s9, s11, 1982
                  sll          s2, sp, a6
                  ori          a3, tp, 564
                  add          t4, tp, t3
                  beq          s11, t5, 246f
                  or           a4, ra, ra
242:              or           t4, s9, t0
                  sub          ra, s4, zero
                  sra          a3, t6, t6
                  slt          t4, zero, a0
246:              sub          s11, tp, tp
                  sll          a0, ra, ra
                  bltu         a0, s7, 252f
                  slti         a6, s6, -1925
                  addi         t5, a5, -592
                  andi         gp, ra, -896
252:              srli         a5, s4, 14
                  sll          t1, a1, s8
                  xor          s2, s5, t4
                  sra          s11, t2, a7
                  bltu         t0, s2, 265f
                  blt          s5, s3, 261f
                  sub          s2, t1, t0
                  bge          s4, tp, 262f
                  lui          gp, 408076
261:              and          ra, s7, s6
262:              bltu         ra, t0, 281f
                  ori          s7, t5, 1547
                  bne          ra, s3, 273f
265:              sltu         t0, s6, a2
                  ori          a4, t5, -1900
                  bne          s2, s2, 275f
                  nop
                  blt          s6, a6, 281f
                  bgeu         a0, zero, 286f
                  srl          s7, a0, s7
                  xori         a4, s10, -607
273:              slti         tp, s3, -715
                  and          a1, a5, a6
275:              sltiu        tp, a2, -546
                  or           a5, s4, s8
                  xori         a3, a0, -1744
                  ori          tp, a6, 1133
                  sll          zero, t5, s7
                  nop
                  srl          s2, zero, s9
                  la           t0, sub_1
                  addi         t0, t0, -818
                  ori          s9, s5, 990
                  lui          t1, 828076
                  bltu         t4, s2, main_j1 #branch to jump instr
                  slti         ra, a2, -1796
                  xor          tp, t5, t6
                  sub          s2, s4, t6
                  slli         t2, s8, 9
main_j1:          jalr         ra, t0, 819 #jump main -> sub_1
281:              ori          gp, a0, 699
                  ori          s10, s0, 1777
                  srai         s8, s5, 23
                  xor          a3, s1, a4
                  sra          t2, a4, t1
286:              xor          zero, a4, t0
                  slti         s0, t4, 958
                  xor          a2, s11, s9
                  srl          s8, t1, a5
                  bge          a5, s1, 292f
                  sra          s6, t0, sp
292:              blt          t3, t6, 302f
                  slt          s10, s6, s4
                  srli         t2, zero, 9
                  bgeu         s0, t6, 303f
                  sra          s10, s1, a6
                  beq          s7, a0, 316f
                  nop
                  xori         t3, a2, -662
                  bltu         s4, t2, 317f
                  srai         t1, a1, 20
302:              bne          s11, t0, 314f
303:              lui          a6, 1023001
                  andi         zero, t1, 1897
                  slti         s8, a6, 95
                  add          t0, s5, s8
                  slt          t2, a7, t5
                  bne          t3, s10, 318f
                  sltiu        a0, t1, -601
                  or           tp, t0, a7
                  add          a5, s0, s10
                  or           a1, a7, t6
                  blt          a1, t2, 317f
314:              sltiu        a1, sp, -528
                  srli         s2, gp, 23
316:              bge          ra, s4, 335f
317:              bgeu         t0, t6, 326f
318:              bgeu         s6, s2, 334f
                  sub          t4, a0, t1
                  sra          t5, t5, t5
                  lui          s2, 1030005
                  ori          sp, a3, 801
                  add          tp, a7, a5
                  slti         a5, s6, 1882
                  bltu         tp, s8, 333f
326:              nop
                  nop
                  bgeu         sp, tp, 337f
                  bge          zero, a1, 339f
                  sll          sp, s10, s5
                  blt          a3, a6, 340f
                  bltu         t3, a6, 340f
333:              beq          t3, a0, 337f
334:              sub          a7, s3, a6
335:              sll          s1, t1, a5
                  sub          a0, t4, gp
337:              addi         a7, tp, 715
                  xor          a7, t0, a5
339:              slt          s8, t2, a2
340:              or           s7, t2, a5
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           andi         a0, t6, 1363
                  bge          s5, zero, sub_10_stack_p
                  lui          s9, 869973
                  lui          a1, 161891
sub_10_stack_p:   addi         s3, s3, -8
                  xori         a0, s6, 1539
                  nop
                  sw           ra, 4(s3)
                  sub          t5, s6, t0
                  slti         s2, t2, 1921
                  xor          s7, s10, t6
                  auipc        gp, 571886
                  lui          s5, 594150
                  addi         t3, sp, 119
                  slt          t0, s0, s3
                  or           a2, t3, t0
                  addi         gp, a4, -656
                  sltiu        s7, t5, -1270
                  slti         t5, s1, 454
                  blt          a7, gp, 7f
7:                and          gp, a5, a1
                  add          tp, s7, s10
                  ori          s10, a4, -998
                  srl          a1, a3, a7
                  add          a7, t0, t4
                  slti         t0, s10, 150
                  sub          zero, sp, s9
                  sra          s1, t0, t4
                  slt          a2, t5, a3
                  nop
                  srli         zero, s2, 12
                  blt          a1, a5, 35f
                  beq          t1, tp, 35f
                  bltu         t1, t3, 31f
                  srli         s1, zero, 10
                  addi         sp, t2, -1136
                  sra          gp, s5, t0
                  andi         s0, a2, 603
                  or           ra, a3, s3
                  bgeu         gp, a2, 46f
                  beq          t0, s8, 35f
                  and          s6, t0, a1
                  sra          t4, s5, ra
                  and          a5, s11, t0
31:               srl          sp, a4, s7
                  addi         s8, a5, -1023
                  andi         s2, s6, 446
                  lui          t5, 385821
35:               srai         t0, t5, 5
                  sll          t2, s4, s2
                  slli         a7, a1, 27
                  and          s1, s9, s10
                  slti         s7, s4, 641
                  add          a6, t5, s10
                  ori          a7, s6, 1691
                  blt          t1, a4, 56f
                  srai         a7, t4, 8
                  bltu         gp, s4, 49f
                  andi         t3, s11, -379
46:               sll          s7, sp, a4
                  lui          s7, 137282
                  ori          s0, a4, -2046
49:               sra          s9, a7, t2
                  sltiu        tp, s6, -404
                  xori         a7, sp, 1968
                  bne          s0, sp, 53f
53:               xor          gp, a7, zero
                  slti         s10, s0, -1167
                  addi         s9, t1, -1659
56:               addi         gp, t4, 908
                  nop
                  srai         t1, s0, 22
                  sra          ra, a6, t1
                  andi         a0, s9, -1941
                  sltu         s0, ra, t5
                  sll          s8, s1, s6
                  xor          tp, s6, t3
                  sll          a1, s2, t0
                  beq          s7, s6, 85f
                  lui          s5, 351328
                  slli         a7, t5, 29
                  sra          a2, t6, s10
                  slti         a0, a1, -901
                  addi         s2, s1, 1453
                  xori         t1, s8, 1061
                  sub          zero, a3, t3
                  addi         s11, s2, -2025
                  xor          s9, t3, a5
                  blt          s2, a7, 90f
                  lui          t4, 823383
                  lui          t3, 744605
                  ori          sp, s11, -100
                  auipc        t1, 67357
                  slti         sp, t3, 198
                  xor          t2, a5, a6
                  bltu         s8, s5, 90f
                  sltiu        a1, a6, 280
                  bge          a5, s1, 103f
85:               sltiu        a3, s2, 175
                  slt          s7, a5, zero
                  sub          a7, a7, a1
                  srai         s8, tp, 25
                  bne          s7, a1, 98f
90:               or           a5, tp, s1
                  srl          gp, s2, s9
                  and          a0, a5, gp
                  sra          sp, a2, t5
                  auipc        a4, 838170
                  addi         a1, s11, -1387
                  blt          a6, s3, 108f
                  slli         s9, s6, 10
98:               andi         s0, a2, -299
                  ori          s1, t0, -1214
                  sub          s5, gp, s10
                  auipc        t2, 911057
                  blt          s1, s5, 109f
103:              and          a1, t2, tp
                  slti         t1, t0, -188
                  auipc        a1, 867633
                  sltu         gp, t5, a1
                  ori          t2, a0, 2038
108:              xori         t1, s9, -1250
109:              xor          s2, a6, s8
                  sltiu        s6, sp, -415
                  sltiu        a6, t4, -132
                  srl          tp, tp, a3
                  or           s2, a5, s4
                  lw           ra, 4(s3)
                  srli         s0, s4, 1
                  srai         s10, s8, 16
                  slli         a5, a3, 11
                  sra          gp, a7, s8
                  addi         s3, s3, 8
                  or           t1, s11, t2
134:              addi x23, x1, 1
134:              jalr x23, x23, 0
sub_9:            auipc        a7, 72404
                  nop
                  bne          a5, a7, sub_9_stack_p
                  xor          s5, t1, t0
sub_9_stack_p:    addi         s3, s3, -24
                  auipc        s11, 2752
                  sw           ra, 4(s3)
                  sub          s9, sp, s5
                  sub          tp, s9, s0
                  la           sp, region_1+907 #start riscv_load_store_rand_instr_stream_1
                  sh           a1, 3(sp)
                  lb           s0, 0(sp)
                  sb           s9, 16(sp)
                  lhu          s1, -11(sp)
                  sb           s4, -8(sp)
                  lb           t2, -16(sp)
                  ori          t4, a2, 1009
                  andi         s10, s0, -1120
                  lb           t0, 11(sp)
                  sb           a3, 12(sp)
                  lh           gp, 1(sp)
                  sb           ra, 15(sp)
                  lb           s0, -14(sp)
                  sb           a3, 14(sp)
                  lbu          a1, 3(sp)
                  sll          s9, s1, s0
                  lbu          s9, 0(sp)
                  sw           s9, 1(sp)
                  lb           s2, 6(sp)
                  nop
                  sltiu        s7, zero, 649
                  lb           a3, 16(sp)
                  add          s9, a6, a2
                  sra          a0, a7, s7
                  lbu          a7, -7(sp)
                  nop
                  lbu          s8, 8(sp)
                  lhu          t2, 9(sp)
                  lhu          t4, 7(sp)
                  sb           s0, -16(sp)
                  slt          s6, gp, s3
                  xor          s1, s2, s9
                  lui          a0, 407578
                  lbu          t2, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  srli         a3, t2, 20
                  slt          zero, s11, a2
                  lui          tp, 719421
                  xori         s6, s10, -33
                  sll          s0, tp, sp
                  lui          t0, 837941
                  auipc        s10, 757325
                  lui          t5, 402997
                  lui          a0, 1000149
                  slt          a7, gp, t4
                  addi         a7, a7, -1138
                  sll          s9, s3, t0
                  andi         t1, a6, 1588
                  addi         t0, s0, 1524
                  xor          s1, s2, s9
                  slt          t0, ra, a2
                  srli         zero, s10, 19
                  ori          a7, s0, 348
                  add          s11, t6, a0
                  slt          a6, t1, s3
                  auipc        a3, 1030771
                  add          a0, s10, ra
                  srai         sp, s10, 21
                  bltu         s3, s7, 27f
                  slli         s6, s11, 13
                  xori         gp, a1, 1692
                  or           s11, s3, a5
27:               slli         ra, gp, 5
                  srl          ra, s10, t6
                  sltiu        s1, t1, 1931
                  bge          s9, t6, 40f
                  or           a5, s10, t1
                  srl          sp, a0, s1
                  slti         s1, a4, -231
                  nop
                  srli         a6, s7, 29
                  sra          s9, t6, zero
                  lui          s10, 456594
                  bge          a2, a0, 41f
                  beq          t4, t5, 43f
40:               xor          t0, a4, t2
41:               and          t3, sp, s7
                  addi         t5, t6, -418
43:               sltiu        t0, s6, 1190
                  blt          s8, a5, 59f
                  addi         sp, s4, 1982
                  bgeu         s2, s11, 58f
                  srl          a5, a2, s8
                  sub          s9, t2, s11
                  bge          s0, t2, 66f
                  srai         a5, a0, 13
                  slt          sp, s9, s11
                  nop
                  bge          s6, s5, 66f
                  lui          t0, 775252
                  sll          s7, a0, a4
                  lui          t5, 1028915
                  sll          tp, a4, s4
58:               add          sp, s8, s6
59:               bge          a4, t6, 68f
                  sra          a7, a3, a5
                  xori         t2, t5, 1698
                  or           a0, s11, a5
                  xor          s11, s0, a2
                  or           t3, t4, t0
                  addi         a0, a0, 1032
66:               bne          s6, t4, 74f
                  andi         a3, s9, -1884
68:               xor          s10, a3, zero
                  ori          a2, s10, -1288
                  lui          a6, 384472
                  slti         a0, s10, -1871
                  srl          a6, a5, tp
                  andi         s2, s4, 1463
74:               sltu         sp, a7, tp
                  lui          gp, 992497
                  add          a1, s0, a6
                  beq          s11, s0, 81f
                  srl          s9, a4, t0
                  slti         a4, s2, -910
                  slt          s5, s2, s1
81:               slt          a1, s11, s8
                  slti         s7, s1, 1440
                  auipc        s7, 809284
                  sub          tp, t6, s11
                  sra          s5, a4, t3
                  bne          s2, sp, 93f
                  xori         s7, tp, 984
                  xor          a0, s4, s5
                  add          a7, a7, s11
                  andi         s1, a0, -1711
                  sll          a0, s7, s7
                  ori          s0, t1, 181
93:               sub          s5, ra, s2
                  lui          a1, 672367
                  lui          zero, 500931
                  srai         t1, t0, 24
                  andi         ra, a0, -748
                  sltu         a7, t3, s10
                  auipc        t0, 209054
                  bge          s5, a1, 112f
                  beq          a2, s7, 120f
                  sltu         s11, t3, t3
                  slli         s7, s3, 19
                  slli         sp, s1, 9
                  slli         s10, t4, 9
                  sltiu        ra, tp, -195
                  and          s5, ra, t6
                  ori          t1, t3, 1127
                  slli         t4, a3, 10
                  slt          t4, a5, a6
                  nop
112:              addi         tp, t3, -1454
                  andi         s1, s3, -1742
                  beq          s9, s2, 121f
                  andi         s1, a6, -1309
                  add          a0, t0, a3
                  srl          s7, s4, s6
                  sub          t5, ra, a3
                  slt          a4, a2, a1
120:              slti         s6, a5, -360
121:              blt          s0, s2, 126f
                  blt          s6, t1, 129f
                  sltiu        tp, zero, -1736
                  and          t1, s1, t1
                  addi         t1, zero, -1165
126:              lui          gp, 862463
                  xor          s9, a6, a5
                  bge          t6, s1, 142f
129:              bltu         s1, a3, 147f
                  add          s8, s7, tp
                  sltiu        t2, tp, -1645
                  srl          s2, s10, a1
                  and          a3, s8, a6
                  sra          a1, s9, s1
                  bltu         t6, t3, 154f
                  sll          s10, t0, t3
                  sll          a0, t4, s2
                  bgeu         a3, a7, 146f
                  slt          t5, s4, s2
                  srl          a0, s6, a7
                  andi         a1, a0, -443
142:              sltiu        t3, a6, 707
                  add          a6, a6, s8
                  bltu         a3, sp, 146f
                  srai         ra, zero, 12
146:              blt          s4, t5, 151f
147:              bgeu         s6, s1, 153f
                  sub          gp, t6, ra
                  xor          a6, t0, sp
                  xor          a4, a4, s3
151:              ori          a3, gp, 1519
                  slti         t4, a5, 660
153:              xori         a5, t1, 1062
154:              sltiu        tp, s6, -1806
                  nop
                  nop
                  srl          ra, t4, s5
                  add          s9, a0, s1
                  xori         t1, gp, -1705
                  srai         s7, s0, 20
                  slti         gp, s11, -646
                  sltu         t5, t0, s4
                  slli         sp, a2, 22
                  slt          t1, t5, a1
                  slli         a5, t4, 24
                  beq          tp, a3, 172f
                  slti         a7, s2, -1241
                  sltiu        s5, a3, 1073
                  srl          a7, a3, a5
                  slti         t4, s1, 268
                  or           zero, a6, s1
172:              beq          t4, s10, 175f
                  xor          t5, a3, t1
                  slli         t1, a2, 24
175:              sltiu        a3, t4, 1734
                  auipc        t0, 929738
                  srai         tp, zero, 16
                  andi         gp, ra, 256
                  slt          s6, sp, t5
                  beq          zero, tp, 190f
                  addi         t2, s3, 1443
                  add          a4, t4, gp
                  nop
                  blt          a6, t4, 197f
                  sra          s2, s5, s2
                  bltu         gp, tp, 206f
                  add          t3, s2, s6
                  ori          a1, s6, -1897
                  beq          s3, t2, 193f
190:              sltu         t5, sp, s9
                  slt          t0, t5, a3
                  bge          a2, a5, 196f
193:              sub          a4, s5, zero
                  lui          s1, 264198
                  nop
196:              slti         s2, s4, 27
197:              sub          s0, t0, s0
                  bne          s5, t0, 200f
                  beq          s8, gp, 208f
200:              addi         a6, t6, 22
                  slli         ra, zero, 2
                  slt          ra, a0, a4
                  bltu         s10, s11, 210f
                  sltu         zero, t6, s11
                  bltu         gp, a5, 208f
206:              bge          t3, t2, 218f
                  beq          a5, s4, 214f
208:              sll          zero, s3, t0
                  xor          a6, a4, t1
210:              slli         ra, s9, 17
                  srai         a3, t5, 15
                  bne          a5, ra, 220f
                  sltu         tp, s8, a0
214:              slt          s8, s4, s2
                  bltu         s11, t1, 219f
                  slt          t2, ra, a7
                  andi         s7, a4, -368
218:              bne          t2, sp, 222f
219:              sltu         a3, t2, ra
220:              srli         a1, s6, 6
                  srl          s11, t6, gp
222:              addi         a6, s9, -1134
                  bgeu         zero, s5, 240f
                  sra          s2, s4, s3
                  slli         s2, a3, 7
                  bge          a1, a0, 240f
                  srl          t4, s6, s1
                  slli         t4, t0, 27
                  xori         s9, t2, -1491
                  beq          t4, s5, 243f
                  bne          a4, s6, 241f
                  srai         sp, t3, 28
                  xor          sp, s5, s3
                  beq          s6, s1, 240f
                  sra          s7, t4, a6
                  bgeu         t6, s4, 248f
                  ori          a6, s1, -1372
                  slli         t3, s6, 23
                  srai         s0, gp, 5
240:              andi         s2, sp, 423
241:              beq          a3, t2, 248f
                  xor          t4, t0, a3
243:              srai         s9, s11, 6
                  sll          s2, t1, ra
                  slli         s8, tp, 26
                  xori         s7, s3, 708
                  lui          s6, 340453
248:              ori          t1, s10, -1308
                  add          t1, t2, s0
                  srai         a6, s6, 20
                  srl          s11, s1, s8
                  srli         t2, a1, 28
                  slli         t4, s2, 16
                  sll          zero, t5, a5
                  andi         s5, s0, 1208
                  sltiu        a5, zero, 5
                  bne          s3, s10, 277f
                  bltu         a5, a7, 263f
                  sub          a6, s11, s10
                  sll          t4, tp, t4
                  auipc        a5, 623838
                  srl          s10, s1, t2
263:              ori          s8, a7, 501
                  or           s8, sp, t2
                  or           s1, s4, t4
                  blt          a5, s5, 271f
                  beq          a0, t4, 270f
                  xor          s6, t0, a6
                  xor          t4, s3, s3
270:              lui          s6, 50627
271:              addi         t5, t5, 802
                  slt          s8, a3, s0
                  bltu         s0, s4, 281f
                  sub          a5, ra, t3
                  srli         a7, s8, 2
                  blt          ra, a3, 294f
277:              or           a2, s10, a5
                  beq          s1, a3, 297f
                  sll          t4, t5, s2
                  bne          s9, s9, 284f
281:              and          a7, a1, t4
                  bne          a1, t6, 297f
                  ori          a4, a5, 1772
284:              sltu         t1, a7, s4
                  ori          zero, s6, -1256
                  xori         tp, t4, 1624
                  bgeu         zero, a5, 300f
                  sll          s6, s2, t3
                  lui          t5, 251515
                  bltu         gp, t5, 300f
                  or           a6, t3, s2
                  slli         s7, zero, 16
                  beq          t2, a0, 312f
294:              beq          ra, s8, 300f
                  slli         a5, a0, 26
                  or           t1, a2, s2
297:              srl          s10, s3, t4
                  slt          a0, s4, tp
                  xori         t4, s10, 1065
300:              sltiu        t1, s0, -1801
                  slli         s9, s0, 2
                  srli         t1, t0, 16
                  slli         s2, a0, 12
                  sll          s10, a1, tp
                  nop
                  ori          a6, a3, -1612
                  slli         a6, s3, 22
                  nop
                  bltu         a5, s9, 321f
                  ori          a4, s7, -1315
                  sll          s1, t5, s5
312:              bgeu         s6, a1, 318f
                  srl          s10, a7, s0
                  lui          s1, 538842
                  bltu         s9, gp, 323f
                  sltiu        s7, a5, 1298
                  addi         t2, tp, -659
318:              blt          s7, s0, 323f
                  sltu         t0, s3, s5
                  slt          t0, s1, s4
321:              nop
                  srli         t5, t2, 6
323:              sra          s10, t1, s10
                  auipc        s0, 913311
                  slti         zero, sp, 1422
                  blt          s8, a1, 341f
                  srai         a7, s0, 16
                  andi         s5, a7, -1510
                  xor          ra, zero, a0
                  nop
                  slli         a3, s8, 8
                  bltu         gp, t0, 339f
                  slti         t3, a6, 424
                  auipc        gp, 178685
                  slt          a7, s3, gp
                  ori          a2, sp, 1383
                  bne          a4, t1, 354f
                  sra          t4, s0, tp
339:              add          s6, s10, s8
                  slti         t0, t3, -1230
341:              bne          s1, s1, 354f
                  blt          a2, a5, 356f
                  sll          a7, s9, a4
                  bltu         s8, s3, 356f
                  bge          gp, t6, 364f
                  beq          t5, s8, 350f
                  add          a7, a7, s6
                  srai         t2, s2, 17
                  slti         a3, t2, -1832
350:              andi         t4, t5, -598
                  ori          s11, s10, -455
                  xor          a7, t3, s0
                  auipc        a5, 644549
354:              beq          s5, a6, 358f
                  auipc        s8, 589642
356:              bge          tp, s3, 359f
                  la           t5, region_1+763 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, -19(t5)
                  sll          a5, s2, s7
                  sub          s0, a7, t6
                  lb           s1, 126(t5)
                  srai         s6, ra, 0
                  sltu         s1, s2, gp
                  auipc        gp, 973560
                  xor          a0, t5, s9
                  sw           a7, 185(t5)
                  lh           a5, -37(t5)
                  lhu          t3, -135(t5)
                  lb           s7, 207(t5)
                  slti         s5, s3, -1789
                  lhu          a0, -19(t5)
                  lbu          a3, 80(t5)
                  lb           s5, 107(t5)
                  add          a0, s8, a6
                  xori         a6, s4, -97
                  sub          a6, s11, a3
                  lhu          zero, -223(t5)
                  or           a2, a3, s0
                  sh           s6, -27(t5)
                  or           sp, s9, zero
                  sll          t3, sp, a0
                  addi         s9, ra, -765
                  sb           s8, 164(t5)
                  ori          t0, s5, -1904
                  ori          a0, a0, 286
                  and          gp, a7, a3
                  sb           t3, -55(t5)
                  sltu         a7, t0, s4
                  sll          a2, a5, s4
                  or           s2, a0, s7
                  sub          tp, s4, s3
                  lb           s8, -122(t5)
                  lb           s9, 47(t5)
                  sub          a2, a7, a4
                  lui          a6, 239135
                  lb           ra, 116(t5)
                  lb           t1, 158(t5)
                  ori          zero, ra, -1651
                  sw           zero, -75(t5) #end riscv_load_store_rand_instr_stream_0
                  nop
358:              ori          s1, s10, 1971
359:              srai         s11, s0, 20
                  blt          a6, s0, 364f
                  andi         a3, a5, -1758
                  sra          zero, t3, s1
                  sll          s7, s4, s0
364:              auipc        s1, 426627
                  sltu         s6, a5, a7
                  or           a7, s9, s6
                  nop
                  sra          a6, gp, a4
                  lw           ra, 4(s3)
                  sltu         tp, s9, s9
                  slti         a2, s9, -614
                  addi         s3, s3, 24
                  sltiu        s1, a2, -1488
                  addi         s9, sp, 739
                  and          gp, tp, t5
463:              addi x25, x1, 1
463:              jalr x25, x25, 0
sub_6:            and          s10, s0, gp
                  bge          a0, s1, sub_6_stack_p
sub_6_stack_p:    addi         s3, s3, -12
                  ori          s5, s3, -1947
                  sw           ra, 4(s3)
                  srai         t1, s6, 26
                  slli         gp, s9, 9
                  sltiu        s6, a6, 710
                  xori         a0, s5, -421
                  slti         sp, t5, -164
                  slli         t5, s2, 14
                  and          s1, t0, t0
                  xori         a1, tp, 876
                  sub          tp, t6, t0
                  bge          a1, s8, sub_6_j11 #branch to jump instr
                  or           a0, a4, s1
sub_6_j11:        jal          ra, sub_10 #jump sub_6 -> sub_10
                  la           t2, region_0+1732 #start riscv_load_store_rand_instr_stream_0
                  andi         s10, a3, 1081
                  addi         a7, t5, 1985
                  srl          a3, s9, a1
                  lb           s9, -79(t2)
                  sltiu        s7, s2, -752
                  lbu          a5, 141(t2)
                  andi         s2, s10, -1978
                  lbu          t3, -131(t2)
                  sb           a1, -54(t2)
                  slli         s11, s1, 3
                  sll          t0, ra, t5
                  sb           t5, -203(t2)
                  srli         s11, a1, 15
                  sb           gp, 5(t2)
                  xori         a2, t2, -48
                  sb           a2, -29(t2)
                  lbu          a2, 101(t2)
                  lb           a2, 180(t2)
                  slti         a3, a4, 964
                  sll          a3, s11, s10
                  sb           s4, 244(t2)
                  addi         t1, s0, -218
                  sltiu        s5, a0, 1172
                  slli         s11, t4, 12
                  ori          a1, a0, 583
                  slt          zero, a3, s9
                  sb           s10, 27(t2)
                  sh           s9, 102(t2)
                  addi         s11, t1, -702
                  lb           sp, 65(t2)
                  lui          a2, 891341
                  lbu          s8, -223(t2)
                  add          s10, t0, s0
                  addi         a3, t2, -822
                  lbu          s5, -153(t2)
                  slti         s5, t0, 100
                  srl          a4, t0, s10
                  lb           s1, 241(t2)
                  addi         a1, a5, -1682
                  lbu          s10, 19(t2)
                  sh           t2, -246(t2)
                  sltiu        a4, a2, 71
                  nop
                  sltu         s5, t4, s1
                  nop
                  srai         s7, a6, 5
                  sb           t2, -199(t2)
                  srl          t1, a6, s7
                  sub          t0, tp, a1
                  lh           ra, -176(t2) #end riscv_load_store_rand_instr_stream_0
                  sltu         zero, t4, s9
                  bne          s11, s5, 9f
                  sltu         t4, s3, t0
                  sub          t3, s4, sp
                  srli         s8, a1, 10
                  beq          s3, t3, 23f
                  bltu         a7, s9, 20f
                  srai         t3, ra, 29
                  lui          s7, 925973
9:                ori          t1, s5, -456
                  andi         a2, a6, -1057
                  srli         t4, s11, 14
                  auipc        a3, 995485
                  addi         s6, a2, -101
                  sltu         s7, a1, t4
                  srai         s7, a1, 1
                  sub          s5, s11, s2
                  ori          a7, s0, 721
                  bne          s4, a6, 34f
                  auipc        t1, 814151
20:               sltu         a7, s0, s11
                  auipc        s6, 812977
                  beq          a7, a6, 32f
23:               sub          a0, s8, a3
                  xor          t3, s3, gp
                  bge          a0, t1, 33f
                  blt          s4, a1, 45f
                  xor          s11, s7, s5
                  bltu         a3, a5, 45f
                  srli         s7, s10, 12
                  bge          a4, t1, 45f
                  beq          s3, a0, 33f
32:               bltu         tp, t1, 39f
33:               srli         a6, a0, 12
34:               beq          s10, a2, 46f
                  ori          t5, t5, -824
                  nop
                  bltu         s6, t2, 41f
                  bge          a1, a6, 42f
39:               srli         s6, t0, 15
                  lui          s11, 330263
41:               add          a4, s6, a4
42:               blt          s7, s3, 61f
                  sltu         a5, s0, tp
                  sra          tp, t2, zero
45:               ori          s8, t1, -324
46:               xori         a2, t3, -140
                  bgeu         a3, t0, 67f
                  slli         a7, a6, 30
                  add          a3, s7, a4
                  or           ra, a0, t3
                  srli         a4, a4, 30
                  ori          a7, a7, 1102
                  srai         a7, a2, 10
                  lui          gp, 404103
                  srli         t1, tp, 4
                  slli         s11, s1, 19
                  sub          s9, s7, t5
                  ori          t0, t6, 466
                  nop
                  srai         ra, a5, 0
61:               xor          s5, a6, a7
                  beq          a5, a3, 72f
                  nop
                  bge          t0, a1, 70f
                  andi         gp, t2, -946
                  auipc        s11, 237635
67:               xor          a4, gp, s1
                  sra          gp, s2, s1
                  beq          a1, s9, 80f
70:               sll          s7, a7, sp
                  blt          s5, zero, 74f
72:               sll          s11, s1, s9
                  sltiu        s0, s3, -1201
74:               add          a6, gp, a2
                  sub          tp, t5, t6
                  auipc        t4, 943646
                  andi         gp, s8, 676
                  or           s6, t4, s6
                  slti         sp, s11, -14
80:               lui          t4, 890722
                  srai         s11, a1, 30
                  xor          t3, s10, t1
                  bge          t5, t0, 86f
                  lui          ra, 382224
                  nop
86:               sltiu        s1, a6, -1820
                  or           ra, t5, t1
                  xori         sp, s5, -1663
                  andi         ra, tp, 739
                  nop
                  slli         a3, zero, 16
                  sltiu        a3, s3, 1914
                  beq          t0, s3, 113f
                  slli         a5, a3, 1
                  srai         s7, t4, 28
                  sll          s8, sp, a5
                  sltiu        s5, a3, -495
                  bgeu         s7, tp, 112f
                  sltu         s0, s5, s6
                  xori         a2, a5, 52
                  lui          t2, 746460
                  addi         t0, a2, 1620
                  add          a6, s6, t6
                  addi         s1, gp, -839
                  bge          gp, a4, 108f
                  xori         t4, a0, 614
                  beq          s0, s11, 125f
108:              slt          t5, zero, a0
                  slli         a6, t0, 26
                  slti         t4, t4, -1034
                  xori         a6, t0, 579
112:              ori          a7, gp, 1924
113:              sub          s2, t3, s8
                  lui          t0, 964136
                  srl          s11, t5, a2
                  sltu         s2, t1, s8
                  sltu         t4, s0, a5
                  srli         s8, s9, 22
                  or           t0, t1, a3
                  beq          zero, a7, 140f
                  nop
                  ori          s5, ra, -910
                  auipc        t0, 823942
                  slti         t4, s1, -223
125:              andi         sp, a3, -1545
                  sub          t3, gp, s5
                  srl          a6, a0, a3
                  beq          t6, s9, 144f
                  la           t2, region_1+1359 #start riscv_load_store_rand_instr_stream_1
                  sll          a1, zero, s2
                  andi         s9, t6, 555
                  slli         t5, a1, 12
                  lw           sp, -119(t2)
                  andi         a0, s3, 218
                  lbu          s9, -29(t2)
                  srai         tp, a4, 30
                  add          a3, s7, s6
                  srl          gp, a0, a6
                  xori         t4, a3, -377
                  srai         s7, ra, 24
                  sb           s11, 222(t2)
                  lb           a3, 103(t2)
                  addi         a1, a1, 1645
                  or           t0, s7, t5
                  lb           s10, 6(t2)
                  ori          zero, t3, -619
                  sb           a1, 158(t2)
                  lh           zero, 209(t2)
                  sll          s9, t1, ra
                  sltiu        a7, gp, 567
                  sll          t3, s3, s2
                  add          s7, a5, gp
                  lb           s8, -143(t2)
                  sra          s10, a0, s3
                  lbu          a6, 223(t2)
                  auipc        s7, 177326
                  lbu          a0, 30(t2)
                  xori         s0, s9, -814
                  andi         s7, s2, 489
                  lw           s5, 109(t2)
                  lbu          s9, -224(t2)
                  lhu          t4, 37(t2)
                  or           t1, tp, a5
                  sb           t2, -61(t2)
                  lh           t1, 3(t2)
                  addi         a2, s5, 1035
                  lb           a1, -153(t2) #end riscv_load_store_rand_instr_stream_1
                  xori         t4, ra, 1348
                  or           a0, ra, a1
                  or           a4, s0, ra
                  bne          a3, a1, 152f
                  addi         t2, s5, 1274
                  add          tp, t0, zero
                  auipc        a5, 668859
                  lui          t1, 218661
                  xori         s7, a6, 1041
                  sltiu        s9, tp, 677
                  bltu         t4, t5, 155f
140:              beq          a3, s1, 145f
                  sub          s5, s10, s11
                  and          a6, s1, s8
                  srl          s1, s5, zero
144:              sll          s8, s2, a4
145:              sra          s11, a4, s6
                  sra          sp, s5, a5
                  sub          gp, s9, s9
                  xor          s10, t4, s1
                  xori         t3, s2, 1985
                  srli         ra, a4, 27
                  sll          s1, s4, s11
152:              srl          s5, t6, s6
                  sra          a6, tp, a5
                  la           t3, region_1+835 #start riscv_load_store_rand_instr_stream_2
                  sub          s5, sp, t2
                  lb           a2, -62(t3)
                  sltiu        tp, a6, 1778
                  lh           zero, 27(t3)
                  srli         a5, s11, 19
                  lhu          s10, 7(t3)
                  sltu         a0, s10, ra
                  sll          s1, a1, gp
                  lb           s1, -21(t3)
                  auipc        s5, 664660
                  slli         t2, a3, 23
                  nop
                  sra          a5, tp, a3
                  lbu          s2, 32(t3)
                  sra          s6, s9, t5
                  lui          s8, 758341
                  lb           sp, -62(t3)
                  ori          t5, s6, 715
                  lui          a3, 407551
                  or           t1, tp, a6
                  sll          a1, t3, a2
                  sb           s0, -38(t3)
                  sb           s11, -47(t3)
                  sra          a6, t3, s9
                  lbu          a3, 14(t3)
                  lb           a5, -58(t3)
                  lbu          a4, 23(t3)
                  sub          t1, s9, a7
                  srai         t0, s1, 10
                  sll          s11, t4, a2
                  or           t5, s11, a6
                  sra          t1, a4, a1
                  ori          t0, t0, -740
                  and          s0, a5, s5
                  and          s7, s2, s7
                  sll          s0, t3, s9
                  slti         t2, s4, -119
                  lui          a6, 757378
                  sll          a3, sp, t3
                  sw           ra, 17(t3) #end riscv_load_store_rand_instr_stream_2
                  bgeu         tp, t6, 174f
155:              bgeu         s10, s0, 173f
                  srai         s9, a2, 6
                  addi         t1, s1, 1747
                  sra          tp, a0, t4
                  addi         s8, gp, -939
                  xori         s5, s0, 1297
                  xor          t0, zero, a3
                  and          s9, a6, a7
                  and          a4, a6, t1
                  auipc        sp, 680532
                  slli         s9, zero, 11
                  slt          s2, s3, t5
                  bge          t6, t6, 186f
                  andi         s11, t0, -404
                  sltiu        ra, a5, 468
                  nop
                  auipc        t4, 249654
                  auipc        gp, 373648
173:              slt          sp, a1, t5
174:              add          s1, t3, s8
                  xori         t2, sp, 867
                  blt          a1, s4, 184f
                  xor          a0, a6, a4
                  and          a7, zero, s5
                  sra          t0, t2, a6
                  slt          s11, a3, s2
                  xor          a1, t2, s7
                  and          s1, t2, a4
                  xori         a3, t1, -1229
184:              andi         a3, s0, -320
                  addi         tp, s5, -1675
186:              bge          s2, s8, 205f
                  slt          a6, s8, s10
                  nop
                  lui          ra, 1044509
                  srai         a2, s4, 14
                  add          s6, sp, t6
                  xori         zero, a7, 245
                  ori          s6, s8, 1174
                  bne          s10, s9, 209f
                  blt          s9, a5, 199f
                  sltiu        a6, s3, 185
                  ori          a7, gp, 1429
                  bgeu         t1, t4, 201f
199:              slt          a5, tp, t5
                  lui          a3, 60120
201:              srl          s10, sp, s11
                  xori         t4, zero, 1156
                  and          t5, s7, t6
                  sltu         gp, zero, s7
205:              srli         s7, a3, 12
                  sub          a0, t1, s11
                  bltu         s1, t4, 221f
                  blt          s1, t3, 220f
209:              auipc        t5, 319874
                  sub          a7, t0, t1
                  bltu         zero, s2, 227f
                  sltiu        a3, sp, 681
                  and          s5, tp, a5
                  and          a4, sp, s1
                  sll          a5, zero, t2
                  lui          s0, 638126
                  srli         t0, zero, 21
                  auipc        a2, 283283
                  beq          a0, s3, 235f
220:              sra          t2, s4, s8
221:              add          t0, s8, sp
                  lui          s11, 125357
                  srai         tp, s10, 27
                  slti         s8, t4, -1810
                  or           s2, s4, t2
                  slti         t1, t2, 1133
227:              sll          a3, t4, gp
                  slt          s9, s0, s4
                  beq          t5, sp, 234f
                  sub          a6, t4, a5
                  slt          s0, s9, zero
                  auipc        s1, 754907
                  xori         a4, s11, 1226
234:              sltiu        s8, a1, -244
235:              beq          s3, sp, 245f
                  slli         s6, s8, 19
                  auipc        s8, 523645
                  sltiu        s7, t1, -280
                  sltiu        sp, s7, -1627
                  nop
                  addi         t5, s5, -2010
                  sra          t1, tp, s4
                  and          s10, a3, sp
                  srli         t3, a3, 13
245:              srli         a2, a4, 30
                  auipc        s6, 624233
                  xori         zero, t4, 1874
                  sltu         s6, sp, gp
                  slt          a0, a2, sp
                  bge          a5, s1, 253f
                  beq          a4, a3, 271f
                  xori         s8, t0, -531
253:              bgeu         a0, t5, 255f
                  and          s6, s9, s0
255:              sll          t5, s7, s7
                  sltu         a4, a4, ra
                  auipc        t0, 861590
                  slti         gp, t1, 1021
                  beq          zero, t2, 267f
                  lui          s2, 105324
                  and          t0, gp, s3
                  ori          s7, a6, 1965
                  or           sp, s9, t2
                  addi         s9, t4, -1452
                  srli         s9, t4, 4
                  bltu         s4, s0, 270f
267:              sll          t1, zero, t6
                  srli         s5, s6, 14
                  sll          s0, s7, s8
270:              add          a2, s11, t3
271:              nop
                  nop
                  sra          s1, s5, sp
                  sltiu        ra, tp, -1639
                  sub          s10, a6, s2
                  lui          a5, 917832
                  and          t2, s7, s8
                  bne          sp, s0, 298f
                  xor          sp, a2, t1
                  bne          s11, a6, 287f
                  xor          a6, a0, a2
                  blt          sp, tp, 288f
                  bne          a4, s6, 286f
                  sra          s5, t4, zero
                  sltiu        tp, t4, 1085
286:              xor          t1, a1, t5
287:              bgeu         s10, a6, 298f
288:              andi         s11, a6, 1855
                  srai         t3, s2, 9
                  xor          t2, s6, t2
                  andi         t1, s10, 1573
                  srli         a4, s10, 4
                  sll          a1, ra, t3
                  slli         s9, a6, 7
                  or           tp, a2, a0
                  srai         s11, s6, 30
                  beq          s8, s6, 315f
298:              nop
                  xor          t4, s6, s9
                  auipc        a7, 496095
                  andi         s10, a2, 1230
                  bgeu         t5, s6, 318f
                  sltu         s0, s9, a3
                  sltu         tp, s5, s6
                  slti         zero, s9, -1586
                  auipc        zero, 442181
                  xori         ra, ra, 1845
                  auipc        tp, 580207
                  bne          s7, t2, 323f
                  xori         sp, t0, -543
                  andi         t3, s7, -1695
                  bge          s0, s5, 329f
                  add          sp, t4, a6
                  bne          s10, s0, 334f
315:              sll          s11, s3, a2
                  addi         a3, t3, 785
                  lui          t1, 591024
318:              ori          a1, s5, -1533
                  nop
                  andi         s7, s8, -349
                  xori         a2, t3, -602
                  srli         t5, s10, 4
323:              sltiu        s6, t0, -38
                  sltiu        zero, a2, -486
                  addi         s9, t5, 1674
                  slt          s5, t5, a2
                  sll          a4, s10, t2
                  nop
329:              srai         a3, t3, 3
                  slli         s2, tp, 25
                  srai         a0, t1, 4
                  ori          a7, a4, 1694
                  slti         s0, gp, 1971
334:              sltu         a4, t2, a2
                  nop
                  nop
                  slti         a0, s8, 1597
                  slli         s10, s0, 2
                  sra          s7, s11, tp
                  blt          t0, s9, 350f
                  bgeu         t6, tp, 357f
                  bne          sp, s2, 344f
                  slt          s0, a4, s1
344:              beq          sp, ra, 349f
                  srli         a2, s3, 2
                  beq          tp, t2, 358f
                  lui          s5, 575035
                  sub          s9, s5, s0
349:              sll          a1, tp, s2
350:              srai         a4, s9, 17
                  lui          s5, 746021
                  srl          t0, a6, a4
                  nop
                  sub          a6, a1, a0
                  or           s5, a1, s7
                  slt          a5, a3, a6
357:              slli         a0, a4, 14
358:              srli         sp, a3, 16
                  bge          a2, s0, 367f
                  slli         s1, a1, 8
                  or           ra, a7, ra
                  auipc        t3, 839472
                  xor          sp, s0, s1
                  add          t3, a7, a4
                  srl          t4, t1, s11
                  srli         t4, a7, 11
367:              beq          s6, a4, 383f
                  slt          s2, a2, a3
                  bgeu         s3, s7, 385f
                  and          a6, sp, s1
                  sltu         t2, s8, s10
                  xor          tp, s1, ra
                  blt          s11, a1, 387f
                  sra          t1, s8, t5
                  slt          gp, sp, ra
                  or           ra, gp, s8
                  bltu         s4, t6, 385f
                  sll          gp, s3, t3
                  srai         t3, a6, 21
                  xori         t3, s11, -1653
                  sll          a0, t0, ra
                  srl          s0, s7, s1
383:              add          a2, t6, t3
                  bne          s8, a4, 403f
385:              bltu         gp, t3, 388f
                  sltu         t0, s11, s8
387:              bltu         t3, s9, 393f
388:              sltu         a6, t6, a7
                  srai         s5, sp, 10
                  addi         a5, s1, -824
                  beq          zero, a5, 403f
                  beq          t4, s3, 395f
393:              beq          s2, zero, 403f
                  addi         s5, t5, -2042
395:              andi         t4, gp, 626
                  xori         s9, s1, 1895
                  bge          t2, sp, 403f
                  xor          s6, s9, t0
                  srai         t5, s3, 23
                  bne          t3, zero, 403f
                  add          gp, a6, t6
                  auipc        s0, 492099
403:              srai         s11, a5, 18
                  lw           ra, 4(s3)
                  lui          s11, 577092
                  auipc        a5, 419376
                  lui          zero, 828470
                  sltiu        a5, a6, -740
                  sltu         s11, s8, ra
                  addi         s3, s3, 12
                  andi         t3, gp, -833
                  sra          s10, a3, a1
561:              addi x7, x1, 0
561:              jalr x7, x7, 0
sub_7:            nop
                  auipc        t2, 493527
                  srli         s8, t3, 18
                  addi         s3, s3, -32
                  sll          s10, s9, s5
                  andi         t2, tp, -1425
                  sw           ra, 4(s3)
                  ori          t4, t6, 559
                  srai         ra, a4, 2
                  srl          a0, s5, t0
                  srl          zero, sp, s5
                  xor          a3, gp, a1
                  srai         a3, t6, 9
                  xor          a1, t5, ra
                  auipc        zero, 795225
                  xor          s6, a7, a5
                  bne          a7, s6, 15f
                  andi         t1, s2, 565
                  sltu         s8, s3, s1
                  andi         s7, s4, -1865
                  ori          sp, t5, -1878
                  sltiu        s7, a5, 1986
                  bge          zero, a2, 16f
15:               or           a7, t1, s3
16:               slt          t3, s3, s1
                  nop
                  srai         a1, a3, 3
                  auipc        a0, 927385
                  srl          a4, a6, gp
                  lw           ra, 4(s3)
                  sra          t0, t3, sp
                  srl          a2, ra, zero
                  auipc        sp, 276586
                  addi         s3, s3, 32
                  xor          a5, s11, ra
                  sltiu        s6, s4, 1208
36:               addi x4, x1, 1
36:               jalr x4, x4, 0
sub_3:            xori         s8, a1, 391
                  bltu         tp, a6, sub_3_stack_p
                  slli         zero, s5, 13
sub_3_stack_p:    addi         s3, s3, -16
                  sra          s6, s8, s8
                  sw           ra, 4(s3)
                  sltu         s9, s8, a6
                  andi         s10, s4, -641
                  add          a2, a1, s4
                  srai         s2, s0, 16
                  nop
                  addi         t0, t2, -2018
                  add          zero, a3, a6
                  nop
                  srai         tp, a0, 5
                  andi         s6, a3, 1352
                  sra          a5, s3, s6
                  andi         s1, gp, 939
                  lui          t0, 1044749
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  la           s7, sub_4
                  addi         s7, s7, -523
                  sll          tp, t3, a3
                  addi         ra, s7, -1283
                  sltu         t3, a3, a0
                  sub          a2, s4, s1
                  bne          t1, s6, sub_3_j6 #branch to jump instr
                  xor          s6, s6, a0
                  sll          s9, a0, s1
sub_3_j6:         jalr         ra, s7, 524 #jump sub_3 -> sub_4
                  addi         gp, s4, -26
                  srli         t5, t5, 3
                  blt          t4, tp, 4f
                  slti         s8, s5, 1064
4:                and          s1, a7, t0
                  bltu         a4, t1, 11f
                  auipc        s9, 810696
                  srli         a2, gp, 13
                  xori         t2, tp, -2012
                  sll          a1, s3, a5
                  lui          a4, 184817
11:               sra          a2, a6, s10
                  auipc        t3, 802694
                  sltiu        gp, tp, 2046
                  lw           ra, 4(s3)
                  xori         s9, t6, 1338
                  addi         s3, s3, 16
                  srai         t4, gp, 7
                  ori          t2, t4, 407
49:               addi x2, x1, 0
49:               jalr x2, x2, 0
sub_5:            auipc        s9, 930636
                  srai         t2, s0, 11
                  addi         s3, s3, -28
                  slt          t3, s4, s11
                  slt          a4, t1, t1
                  sw           ra, 4(s3)
                  auipc        zero, 1038380
                  auipc        a2, 880142
                  srai         a6, s0, 0
                  srli         t0, s4, 6
                  la           sp, region_1+1821 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, -1816(sp)
                  srli         s6, t0, 9
                  lui          a3, 987408
                  ori          s2, t4, 695
                  slli         tp, s10, 1
                  or           s6, t2, s4
                  sub          a1, a5, s2
                  lb           ra, 72(sp)
                  lw           tp, -669(sp)
                  sw           s3, -1025(sp)
                  lbu          a7, -1418(sp)
                  sltiu        a6, s3, -1903
                  lw           s11, 147(sp)
                  lbu          s9, -552(sp)
                  sb           s4, -247(sp)
                  sb           a3, -988(sp)
                  sb           s4, -1371(sp)
                  srai         a0, sp, 10
                  ori          a0, s7, 442
                  lbu          zero, -1744(sp)
                  lb           a4, 136(sp)
                  ori          ra, s10, -1787
                  sb           t4, -3(sp)
                  sb           a0, -1634(sp)
                  lhu          a3, -967(sp)
                  lh           s0, -1321(sp)
                  add          s6, s5, s9
                  xor          a2, s8, a0
                  lbu          s2, -230(sp)
                  sub          a0, t2, gp
                  lbu          s8, -1328(sp)
                  addi         s8, s4, -785
                  ori          s8, a2, -514
                  ori          s8, gp, -880
                  nop
                  slt          s9, s0, s7
                  sb           s5, 14(sp)
                  lbu          a5, -470(sp)
                  add          tp, zero, s8
                  sub          a0, s0, a4
                  srl          a6, a1, s11
                  add          t2, t6, a7
                  lbu          s1, -683(sp)
                  lb           s10, -986(sp)
                  srli         s6, s10, 27
                  lbu          t1, -1710(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_0+416 #start riscv_load_store_rand_instr_stream_6
                  sra          a4, a1, s10
                  ori          t4, t0, 1217
                  lhu          s6, -10(a0)
                  ori          t3, a6, 1323
                  sltiu        s5, a1, 1062
                  auipc        s10, 626270
                  sra          t4, s10, s8
                  sltiu        s10, s8, 514
                  sb           s4, 47(a0)
                  sub          t4, t2, a6
                  lb           a4, 37(a0)
                  lui          s5, 963542
                  sb           a3, 53(a0)
                  and          a1, zero, a3
                  lb           a7, -11(a0)
                  lbu          s10, 49(a0)
                  lb           s2, 14(a0)
                  lhu          a6, -64(a0)
                  srli         gp, s8, 13
                  xori         a3, a2, 1558
                  srl          s0, ra, s0
                  lb           s11, 7(a0)
                  lh           a4, 40(a0)
                  lh           s2, 60(a0) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_1+1955 #start riscv_load_store_rand_instr_stream_5
                  sub          a1, a6, a4
                  sra          t0, t0, s4
                  add          ra, t3, s9
                  sb           sp, -38(s0)
                  xori         a7, zero, -1346
                  srl          s7, gp, a2
                  andi         s7, a2, 1527
                  sb           a5, 22(s0)
                  sb           t5, -13(s0)
                  lhu          a3, -61(s0)
                  sb           t4, -41(s0)
                  sra          a7, s0, a6
                  sltu         ra, a7, s3
                  sra          a5, s2, a4
                  lbu          zero, -16(s0)
                  lb           t0, 33(s0)
                  lbu          s6, -27(s0)
                  lhu          sp, 33(s0)
                  sb           s3, 3(s0)
                  nop
                  and          a1, a4, s4
                  auipc        ra, 276822
                  lbu          s9, 11(s0)
                  slli         s5, a2, 19
                  lw           t3, 9(s0)
                  lbu          s1, 8(s0)
                  ori          t5, s0, -782
                  sh           s9, -5(s0)
                  lui          s2, 1008817
                  or           s5, zero, tp
                  and          t0, t2, a4
                  nop
                  lbu          a2, -12(s0)
                  srli         s11, s2, 16
                  sb           s10, -36(s0)
                  lbu          ra, 22(s0)
                  lb           a6, -58(s0)
                  slt          a0, a5, tp
                  add          s5, a2, s9
                  lb           t3, -54(s0)
                  addi         s11, t5, 1380
                  lb           a5, 42(s0)
                  sll          t5, s10, t0
                  srli         t1, s8, 28
                  sb           s6, 38(s0)
                  sub          zero, s8, zero
                  and          t4, t6, a5
                  sub          t1, s0, a6
                  and          a3, s5, s4
                  ori          a5, a2, -934
                  sb           t1, -2(s0) #end riscv_load_store_rand_instr_stream_5
                  la           t0, region_1+533 #start riscv_load_store_rand_instr_stream_0
                  srl          a2, a1, zero
                  lbu          a1, 288(t0)
                  add          a7, t3, t3
                  lui          t4, 459862
                  ori          a2, sp, 1366
                  lb           t4, 1298(t0)
                  add          t5, s9, s0
                  lb           a1, 1084(t0)
                  lw           a7, 1027(t0)
                  sb           t5, 1256(t0)
                  srai         t2, s0, 9
                  lbu          sp, -167(t0)
                  slt          t3, s0, s5
                  lb           s6, 858(t0)
                  lw           a4, 935(t0)
                  sh           zero, 827(t0)
                  srl          s6, s8, sp
                  lb           gp, 688(t0)
                  sb           a4, 1008(t0)
                  sb           s3, -340(t0)
                  lh           t2, 687(t0)
                  sltu         a4, a5, s7
                  add          a4, ra, ra
                  sh           s5, 547(t0)
                  lbu          t5, -7(t0)
                  andi         s0, t3, -1125
                  addi         tp, a1, -83
                  slli         zero, s10, 6
                  slt          a1, s2, s7
                  srli         a5, a0, 9
                  lb           t1, 1182(t0)
                  slli         sp, tp, 0
                  lh           a7, 321(t0)
                  lb           t2, 124(t0)
                  slt          s6, t5, t0
                  lui          t3, 433606
                  sb           ra, 1452(t0)
                  sh           s4, 343(t0)
                  lh           a4, -167(t0)
                  addi         s0, t6, -1696
                  lw           a5, -529(t0)
                  lhu          a1, 237(t0)
                  slti         a6, gp, 1698
                  ori          s11, s0, 1156
                  lhu          a5, 1071(t0)
                  or           s9, s10, sp
                  lh           s8, 579(t0)
                  srai         s11, t5, 3
                  lbu          s7, -402(t0) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_1+305 #start riscv_load_store_rand_instr_stream_1
                  sb           a7, -12(a0)
                  andi         t2, s6, 1634
                  sb           ra, 0(a0)
                  ori          t0, t2, -1487
                  sb           t5, -11(a0)
                  sra          s10, a3, t5
                  lui          s0, 778718
                  lbu          s2, -8(a0)
                  xor          s8, a7, ra
                  sb           s9, 8(a0)
                  lui          t3, 249974
                  lbu          s1, -1(a0)
                  lh           a5, -15(a0)
                  sll          gp, a4, a6
                  slti         s8, s2, 797
                  srli         tp, s4, 12
                  lbu          t4, 0(a0)
                  ori          t4, t6, -1841
                  add          s6, s6, s0
                  sll          a5, s11, t5
                  sra          t3, s11, s6
                  lb           a3, 15(a0)
                  lbu          t4, -16(a0)
                  lh           a3, -13(a0)
                  or           s9, ra, ra
                  auipc        s9, 247457
                  auipc        t5, 756309
                  sh           s0, 9(a0)
                  slt          s11, a4, s0
                  ori          a5, t6, -1227
                  slli         a7, s0, 12
                  sb           zero, 8(a0)
                  lbu          s2, 13(a0)
                  sh           a5, -7(a0)
                  lbu          s0, -8(a0)
                  sltiu        t5, a4, 479
                  sll          a3, a4, a7
                  lb           a3, 14(a0)
                  xori         s0, t4, 529
                  sra          a7, a3, s5
                  andi         zero, s4, -1981
                  lbu          s5, 1(a0)
                  auipc        t3, 31315
                  lbu          s2, -8(a0)
                  slt          a7, a1, a3
                  lui          a6, 1013941
                  or           t0, ra, s4
                  lbu          ra, -4(a0) #end riscv_load_store_rand_instr_stream_1
                  or           s1, t5, tp
                  lui          a0, 782497
                  blt          s8, s1, 3f
3:                andi         a1, t0, 1406
                  ori          ra, t2, 1123
                  nop
                  bge          a7, tp, 17f
                  xor          a3, s0, s11
                  bgeu         s8, a0, 23f
                  slt          a7, a7, s4
                  bne          s11, s7, 26f
                  blt          a7, a2, 29f
                  sltiu        t4, s6, -1490
                  addi         tp, t5, 233
                  slli         a5, s1, 14
                  nop
                  bltu         s8, t3, 23f
17:               and          a3, s10, s8
                  bltu         a3, a7, 24f
                  bltu         t3, s8, 26f
                  bgeu         ra, a2, 34f
                  slt          a4, t4, a5
                  add          gp, t2, a5
23:               addi         a3, a2, 476
24:               andi         gp, s2, -1630
                  bltu         t3, a4, 44f
26:               slli         a5, t5, 14
                  sltiu        s5, t1, -1464
                  bne          a0, sp, 36f
29:               sltu         s5, a5, a6
                  bgeu         s5, s1, 40f
                  srli         t0, s3, 27
                  sll          s8, a3, s3
                  bgeu         t3, t5, 37f
34:               ori          t5, s5, -1666
                  sll          a7, zero, s11
36:               sra          a7, s3, sp
37:               sub          s0, t6, s5
                  andi         s8, a4, 346
                  bne          s3, s6, 40f
40:               bltu         s6, s6, 56f
                  bge          s2, sp, 52f
                  bgeu         s1, s4, 49f
                  sltu         ra, s10, a6
44:               xori         s0, s11, -126
                  blt          gp, s10, 61f
                  xori         ra, a2, 320
                  ori          t3, s3, -1465
                  and          a2, tp, s0
49:               blt          gp, a0, 50f
50:               bge          s1, a0, 66f
                  add          a3, s4, t5
52:               sltiu        a7, s3, -604
                  blt          a1, a7, 69f
                  andi         a7, a7, -1893
                  nop
56:               srai         s10, s8, 19
                  auipc        s0, 879095
                  srl          s8, zero, s5
                  lui          s11, 713014
                  addi         t1, s9, -1516
61:               bgeu         a1, s3, 78f
                  srl          s9, s10, s10
                  la           a0, region_0+910 #start riscv_load_store_rand_instr_stream_3
                  andi         a2, t3, -211
                  lui          a5, 850191
                  sb           zero, 826(a0)
                  xori         tp, s10, 1484
                  ori          t3, s11, -942
                  and          t2, t6, a2
                  xor          t1, t3, a3
                  sb           s1, 99(a0)
                  xor          s10, tp, s10
                  lui          a7, 645439
                  slt          s9, s1, t2
                  srl          sp, tp, s7
                  slt          a5, tp, gp
                  xori         s11, a7, 971
                  sb           a4, -791(a0)
                  lb           s7, 1053(a0)
                  and          s1, s5, a1
                  sb           gp, -722(a0)
                  andi         a7, t2, 384
                  lbu          s5, 411(a0)
                  sltiu        s8, ra, -1508
                  srai         s2, s7, 2
                  ori          s2, a7, 1510
                  sb           s8, 245(a0)
                  lhu          s9, 744(a0)
                  sb           ra, 537(a0)
                  lbu          t2, 1053(a0)
                  srai         a5, a2, 14
                  addi         ra, t0, 724
                  xor          s10, s3, s10
                  auipc        t1, 96406
                  sb           t5, 944(a0) #end riscv_load_store_rand_instr_stream_3
                  srl          gp, t0, s11
                  srai         a0, a4, 6
                  and          tp, t4, s8
66:               blt          tp, t4, 70f
                  sll          s9, zero, ra
                  sub          t0, t1, s11
69:               ori          gp, a5, -637
70:               bltu         t0, s9, 84f
                  bltu         tp, ra, 76f
                  nop
                  sll          a0, s3, tp
                  or           ra, t5, s3
                  xori         a2, gp, 63
76:               slti         s11, a2, 1623
                  andi         a7, a2, -2002
78:               bge          a7, s0, 98f
                  xor          gp, s3, s9
                  bgeu         a3, s6, 91f
                  srai         s8, s10, 0
                  sra          a3, a4, zero
                  lui          t3, 109379
84:               srli         t0, s5, 7
                  sub          s2, ra, s4
                  sub          ra, t0, a5
                  sra          zero, s6, s11
                  addi         s7, a4, 665
                  bltu         a3, t3, 105f
                  nop
91:               srl          a2, zero, tp
                  ori          t5, s10, 1528
                  ori          t0, t6, -1210
                  bge          s2, t6, 109f
                  beq          t4, a3, 99f
                  slli         s7, t4, 16
                  beq          zero, gp, 113f
98:               lui          a6, 315695
99:               sltu         s6, a3, s6
                  beq          t1, t3, 101f
101:              andi         t4, t2, 361
                  srli         a0, s7, 2
                  sll          s0, t2, a5
                  bltu         t3, a5, 115f
105:              or           a0, a4, s11
                  sub          s2, zero, tp
                  xori         a2, t4, 240
                  xor          s6, s9, s8
109:              andi         s0, s3, 565
                  bltu         s7, s6, 126f
                  srli         s0, a1, 19
                  addi         s0, t5, 1788
113:              bne          s8, a3, 114f
114:              sra          a3, s10, s4
115:              sltiu        t1, t1, 1602
                  bgeu         s0, gp, 120f
                  slt          a3, s2, t1
                  slti         a6, ra, -607
                  sll          s1, a0, s3
120:              ori          s0, s2, -71
                  blt          t2, t6, 137f
                  slli         zero, s11, 19
                  ori          s7, t5, -763
                  bge          s11, a0, 135f
                  or           ra, t2, s4
126:              sltu         t4, t0, s0
                  slt          tp, s0, s6
                  nop
                  slti         a0, a1, -109
                  srl          s0, a0, s11
                  add          s1, t0, s1
                  slli         s5, s3, 22
                  bgeu         sp, sp, 140f
                  slli         a6, a5, 12
135:              sra          s7, a2, a6
                  auipc        t2, 805643
137:              and          a3, a6, a6
                  xor          a7, a0, t5
                  xori         a6, s9, -626
140:              sra          a5, a5, s7
                  or           tp, a2, ra
                  srai         a5, t3, 2
                  or           t5, s9, gp
                  bltu         a0, t0, 160f
                  sll          t2, a7, a4
                  srai         s8, a7, 30
                  blt          a1, s0, 153f
                  and          a0, a0, t5
                  sra          a1, a0, a7
                  addi         t3, t6, 1966
                  slt          ra, a2, s7
                  slti         s5, t4, -1159
153:              and          s11, t2, a4
                  nop
                  auipc        a0, 212857
                  xori         t5, t1, 1547
                  bgeu         s5, ra, 168f
                  addi         t4, s1, -983
                  add          t3, a2, a7
160:              slti         t1, gp, -1333
                  sll          t0, s8, a4
                  slti         t2, s9, -811
                  andi         t5, s0, -907
                  and          s6, s0, t0
                  or           gp, ra, a5
                  bne          a7, s6, 181f
                  sltiu        t2, s7, 1645
168:              and          a5, s4, s5
                  lui          t2, 968337
                  bltu         a5, s1, 174f
                  auipc        s7, 50642
                  add          a0, t4, s10
                  ori          t4, s0, -1736
174:              addi         s7, s1, -1824
                  xori         gp, a3, -1417
                  xori         tp, t3, 483
                  xor          a4, t3, a0
                  sltiu        a6, s10, -1246
                  sra          a2, s7, gp
                  sll          s11, s11, s8
181:              bgeu         gp, s7, 182f
182:              addi         tp, s8, -1762
                  sltu         a6, s7, t3
                  bltu         zero, s3, 199f
                  sltiu        t5, gp, 676
                  slt          s11, s3, a2
                  sltu         a7, t2, gp
                  bne          t0, a0, 206f
                  xor          s8, t1, t4
                  ori          s8, t2, 238
                  sub          a0, t3, t2
                  ori          a3, s3, 249
                  ori          tp, s3, 2027
                  lui          s2, 519850
                  or           s0, s4, s5
                  auipc        s6, 720655
                  sltu         sp, zero, t2
                  sub          t4, s3, s0
199:              sll          tp, t1, t3
                  ori          s8, t5, -1134
                  xor          t0, a0, tp
                  bge          t6, a7, 218f
                  ori          a7, s8, -1785
                  bne          t4, a1, 214f
                  and          s0, gp, a7
206:              slti         t2, s8, 21
                  xori         gp, s1, -1929
                  srli         s0, a6, 8
                  xori         s0, a3, 994
                  xori         s6, a3, -301
                  ori          a3, a1, -1059
                  sltiu        s8, t1, 1953
                  sub          t2, a0, s0
214:              add          a4, a2, sp
                  blt          a2, s7, 223f
                  slt          a5, s3, s8
                  slti         s2, tp, -302
218:              bgeu         s9, s3, 225f
                  slt          s11, t2, a2
                  lui          gp, 920930
                  bltu         a6, s9, 238f
                  auipc        a7, 472745
223:              add          s10, s11, t3
                  sltu         t0, s0, s9
225:              srai         a6, s7, 29
                  xor          t5, s10, ra
                  beq          t1, s2, 247f
                  addi         a0, tp, 343
                  xori         tp, a7, 1565
                  lui          s8, 679980
                  sll          a1, t4, s7
                  or           a2, s10, a3
                  slti         zero, ra, 1224
                  srli         s10, a2, 4
                  sll          sp, s0, t3
                  xor          t4, s6, s11
                  srli         t0, s11, 19
238:              add          gp, s1, s5
                  auipc        s8, 298926
                  bge          a7, a6, 244f
                  la           s9, region_0+1049 #start riscv_load_store_rand_instr_stream_4
                  lhu          t4, 159(s9)
                  sra          gp, a1, t1
                  lb           zero, -190(s9)
                  or           a1, ra, a5
                  lb           s6, 96(s9)
                  addi         s10, s8, 174
                  or           t0, t0, s2
                  andi         sp, s4, 1543
                  auipc        s8, 956597
                  add          zero, s5, t3
                  srli         s7, t6, 16
                  lui          s10, 976078
                  and          s2, s0, t1
                  auipc        a5, 300859
                  xori         s8, s6, -1413
                  srai         s2, t2, 27
                  lbu          s0, -123(s9)
                  sb           t1, 54(s9)
                  sltu         a1, t2, ra
                  or           a6, s4, gp
                  lbu          s8, -110(s9)
                  sub          t2, t5, s10
                  nop
                  ori          s11, t2, -1602
                  sra          a4, gp, tp
                  lhu          t2, -91(s9)
                  lbu          tp, 224(s9)
                  lb           t5, -91(s9)
                  sra          a4, t2, s2
                  sb           s6, 254(s9)
                  sltiu        s6, s5, -1070
                  sub          s6, tp, a2
                  sh           a5, 229(s9)
                  slt          s8, s11, s11
                  xor          s11, ra, t4
                  srai         t1, a1, 19
                  sub          a3, zero, a7
                  lb           s0, 88(s9)
                  sll          zero, t6, s6
                  lhu          s10, 245(s9)
                  sh           zero, 137(s9) #end riscv_load_store_rand_instr_stream_4
                  xori         s5, t5, 489
                  slti         s2, t1, 1220
                  bltu         t5, s5, 248f
244:              xor          s0, t6, s4
                  bne          tp, t4, 264f
                  srl          s5, t6, ra
247:              ori          a5, zero, 499
248:              sra          s0, s1, s8
                  xori         s5, ra, -1880
                  xori         a2, sp, 1485
                  ori          t0, tp, 1292
                  addi         s8, t5, -359
                  or           s5, s1, s6
                  sltu         s5, s3, a4
                  ori          gp, a0, -1273
                  sra          t3, a3, sp
                  nop
                  sltiu        a2, a0, 2036
                  sra          ra, s10, s1
                  xor          s7, t0, a2
                  bltu         a7, zero, 275f
                  addi         a7, sp, 1789
                  andi         s7, tp, 992
264:              bgeu         ra, a2, 271f
                  bne          s6, t0, 279f
                  or           a6, s0, s4
                  slti         a7, s4, -1155
                  addi         s1, s6, -115
                  srl          a2, t1, t6
                  slli         a1, s10, 15
271:              srli         t3, t0, 19
                  xori         s6, t1, -1030
                  bltu         zero, s0, 289f
                  xor          s9, t1, a0
275:              or           s0, s3, s2
                  bge          s11, a7, 284f
                  nop
                  addi         t3, s9, 232
279:              bge          s11, s5, 283f
                  sltu         s2, a7, gp
                  sra          a0, t1, t3
                  auipc        s11, 585381
283:              sltiu        t1, ra, -859
284:              blt          a3, tp, 300f
                  or           sp, s10, ra
                  srl          s1, s11, s6
                  ori          zero, a7, -499
                  ori          a0, t3, -462
289:              bltu         t5, s7, 293f
                  bltu         s9, t3, 297f
                  blt          s6, a1, 301f
                  srai         t2, s8, 12
293:              bgeu         a4, sp, 300f
                  bltu         s3, tp, 299f
                  bgeu         s4, t5, 311f
                  nop
297:              blt          s0, a5, 311f
                  andi         a1, tp, 1261
299:              addi         t2, a2, -143
300:              sra          a1, s8, t6
301:              srli         a6, sp, 22
                  bne          zero, zero, 318f
                  and          s8, a0, a7
                  srli         s9, t0, 4
                  bge          t3, ra, 321f
                  nop
                  sltiu        t0, a3, -597
                  xori         ra, a4, 832
                  xor          s7, t2, a1
                  and          sp, s9, s7
311:              or           s8, gp, t0
                  xor          tp, t0, s2
                  sra          s11, s5, s6
                  sll          s11, t4, ra
                  sll          s10, gp, s4
                  srai         gp, s4, 29
                  or           a3, gp, s3
318:              blt          s8, a6, 334f
                  andi         t0, s0, 1872
                  beq          t6, t5, 321f
321:              sra          t4, a3, a0
                  sltiu        t1, t3, 1304
                  bltu         a1, tp, 343f
                  xor          ra, t3, ra
                  la           sp, sub_8
                  xor          a2, s3, sp
                  addi         a5, s1, -1487
                  ori          a6, s1, -789
                  nop
                  slli         s9, t5, 19
                  srli         s5, a2, 8
                  andi         t3, t5, 1711
                  addi         sp, sp, -847
                  sub          s8, s5, s2
sub_5_j10:        jalr         ra, sp, 848 #jump sub_5 -> sub_8
                  add          sp, a0, a3
                  slli         s6, gp, 12
                  beq          t3, s4, 341f
                  sll          s10, s1, s0
                  sll          s6, s10, s11
                  beq          t1, s1, 335f
                  sltu         a5, s1, t3
                  ori          s11, s7, 1496
                  srl          a1, s1, s1
                  and          t4, t5, a5
334:              bgeu         a0, t1, 335f
335:              andi         a7, s9, 938
                  auipc        a5, 486384
                  srl          t1, ra, t0
                  or           t2, s6, a6
                  bne          s10, s4, 356f
                  bne          s6, a2, 351f
341:              srai         s9, gp, 24
                  sll          t4, s8, s8
343:              beq          s1, a3, 350f
                  addi         s9, t1, -102
                  lui          zero, 943754
                  add          a4, s10, a0
                  sll          s9, s4, t5
                  auipc        t2, 1006460
                  sltiu        a5, t0, 964
350:              sltiu        a5, s8, 832
351:              lui          a5, 846555
                  blt          s10, s10, 366f
                  bgeu         a0, s3, 372f
                  sra          t4, s11, s3
                  ori          s0, t3, 1085
356:              srai         a4, t2, 14
                  andi         s1, s9, 1625
                  srl          s1, tp, a3
                  sra          t2, a3, zero
                  addi         a1, a5, 1721
                  add          a2, a0, s11
                  nop
                  addi         zero, gp, -1770
                  andi         s11, t6, 1912
                  andi         a0, t2, -686
366:              ori          t2, t2, -969
                  lui          t3, 829118
                  slli         t0, s10, 20
                  slti         s2, s4, 27
                  andi         t2, s7, -1821
                  or           s11, a5, ra
372:              xori         sp, s6, 1410
                  addi         a7, t2, 913
                  bne          a4, a6, 378f
                  lui          t0, 903654
                  xori         a1, zero, 501
                  or           sp, a0, a2
378:              bge          a4, s6, 396f
                  srli         a6, s2, 1
                  lui          zero, 718733
                  srl          t5, a1, zero
                  sub          t3, s9, tp
                  beq          t4, a7, 394f
                  sub          a0, s3, t5
                  and          s7, s8, a5
                  bgeu         s9, s11, 387f
387:              and          t1, s9, s8
                  add          ra, s0, a5
                  xor          a3, t4, a3
                  srl          t0, s8, t0
                  addi         s8, s3, -156
                  slt          zero, s10, a0
                  sltu         t0, t3, s5
394:              srl          s1, a2, zero
                  slti         t3, t2, 1613
396:              sltiu        t5, t1, -1411
                  sub          t3, a2, s8
                  srli         a0, a1, 7
                  or           t4, s2, gp
                  sll          a6, tp, s8
                  sltiu        tp, t5, 234
                  beq          zero, t5, 418f
                  slti         a1, a3, -391
                  nop
                  bne          s9, a7, 420f
                  sltiu        a4, a2, 372
                  auipc        s5, 331695
                  sltiu        t3, a1, 85
                  addi         t0, t5, -1846
                  sll          t1, gp, s3
                  auipc        a0, 133848
                  beq          t4, a7, 423f
                  add          s9, a0, a5
                  sltiu        a4, a0, -1802
                  bne          t3, s5, 425f
                  bne          a3, gp, 432f
                  and          s5, s8, a3
418:              sltu         s8, s7, s3
                  andi         t0, a0, -1404
420:              slt          s9, s1, a5
                  xor          gp, gp, s10
                  sub          t2, s6, s4
423:              bne          a2, a6, 428f
                  nop
425:              slt          a3, tp, a3
                  bltu         t2, t3, 427f
427:              slti         t2, sp, -1307
428:              xor          a5, a5, s11
                  addi         zero, tp, 1015
                  blt          a5, ra, 446f
                  sltu         a4, t6, s9
432:              bgeu         s1, sp, 452f
                  andi         t2, gp, -388
                  addi         tp, t3, 355
                  slti         a3, a1, -580
                  andi         t4, t2, 1447
                  bge          s10, t1, 453f
                  slt          t1, t1, a6
                  or           a7, sp, s3
                  sra          a2, s6, s5
                  slti         a6, t2, 1902
                  sra          t4, t3, t1
                  bne          tp, s2, 454f
                  bge          s2, sp, 461f
                  bltu         a2, gp, 460f
446:              xori         a4, s0, 1857
                  sll          s1, a2, a3
                  auipc        a4, 361725
                  srl          s8, t1, t1
                  srl          t4, s1, ra
                  xor          a4, s11, a3
452:              beq          s8, a2, 463f
453:              sra          a7, a6, s2
454:              beq          s5, t1, 468f
                  srai         a7, t1, 16
                  lui          s11, 905185
                  blt          s3, s11, 464f
                  xor          s9, a7, zero
                  beq          s8, a3, 477f
460:              lui          s1, 121251
461:              and          sp, a4, s8
                  bltu         a1, gp, 468f
463:              bgeu         t4, a7, 464f
464:              slli         a3, s8, 1
                  srl          s9, t3, s6
                  andi         t3, t4, -194
                  or           a0, sp, s0
468:              or           a2, a5, s11
                  sub          t0, a5, s3
                  bne          a4, a5, 471f
471:              xor          t1, t4, s5
                  sltiu        t2, t0, 2025
                  srli         t4, a6, 18
                  slti         s8, t2, -405
                  sltu         t5, sp, a5
                  bltu         s4, a2, 492f
477:              sub          tp, t3, s8
                  sra          s2, s0, s11
                  or           a0, tp, t6
                  andi         a2, t5, 666
                  sub          t2, s4, a4
                  andi         t4, s2, -478
                  slti         a4, t5, 331
                  beq          a7, t2, 492f
                  sltiu        s2, s3, 1396
                  bne          s4, s5, 490f
                  and          a4, zero, a5
                  sra          ra, t2, gp
                  sltiu        s1, t5, -1816
490:              slti         t0, s4, -1359
                  srai         s9, a3, 22
492:              bne          a2, a0, 511f
                  or           a0, s11, a2
                  and          s7, a0, t3
                  srai         a0, s3, 6
                  sll          a4, a2, tp
                  srl          a2, s0, s6
                  nop
                  andi         a0, gp, 582
                  bge          t3, a3, 515f
                  srl          a2, a5, s11
                  slli         sp, s3, 23
                  add          t0, t3, a4
                  bgeu         a6, s7, 518f
                  slti         s5, ra, 567
                  bge          s11, a4, 522f
                  lui          a5, 159241
                  lui          zero, 41838
                  addi         tp, t5, -416
                  addi         s0, gp, 1632
511:              andi         ra, s11, -448
                  nop
                  slt          s7, s2, a4
                  auipc        tp, 194626
515:              andi         s9, s8, 1920
                  sll          ra, t5, sp
                  beq          a4, a7, 524f
518:              xori         t2, s9, 179
                  beq          t1, t0, 535f
                  addi         s2, t4, 109
                  andi         s11, t5, 1221
522:              xor          a6, s4, s11
                  slti         a1, ra, 257
524:              srli         sp, a1, 8
                  nop
                  slti         a6, a0, 488
                  sra          s6, s10, gp
                  blt          a3, a5, 539f
                  srl          t2, s3, a2
                  srli         s1, a0, 23
                  sltiu        t1, t6, 835
                  xori         t2, t1, 432
                  and          a0, ra, s4
                  slt          tp, s7, a1
535:              lui          gp, 635842
                  slti         s1, t2, -412
                  lui          s10, 173882
                  ori          a1, s4, -1021
539:              lui          a6, 725586
                  auipc        ra, 670923
                  bgeu         a0, s6, 545f
                  srai         t2, t1, 28
                  bge          a6, s6, 547f
                  sll          a3, a0, a4
545:              nop
                  bne          s8, tp, 553f
547:              add          a4, a2, s2
                  ori          s5, s7, -1313
                  nop
                  add          a2, t4, t5
                  beq          s8, t1, 567f
                  srl          s2, gp, s11
553:              add          t1, zero, a3
                  blt          t2, t2, 555f
555:              or           a5, t3, t3
                  sra          s0, s11, t0
                  srli         sp, t0, 14
                  lui          a2, 861348
                  sltiu        a2, s8, 1669
                  sub          t1, zero, s1
                  lui          s7, 719924
                  srai         t1, s3, 26
                  sub          a7, s0, a1
                  slt          t0, s10, t5
                  sll          sp, a0, s1
                  bgeu         t0, t0, 582f
567:              and          a4, t1, a7
                  beq          s7, a2, 578f
                  bge          sp, a2, 580f
                  xor          t4, t3, s1
                  srl          a1, tp, a7
                  add          s11, a5, s5
                  sltu         s7, t0, s2
                  auipc        s0, 961797
                  slt          a3, a3, tp
                  or           s5, s2, t3
                  sltu         s0, sp, t1
578:              sltiu        t1, s5, -897
                  add          a7, a7, s9
580:              lui          t4, 512312
                  addi         s6, a5, -1513
582:              sra          s10, s11, sp
                  auipc        t0, 640671
                  xor          a0, s4, sp
                  sltiu        a2, s9, 1013
                  sub          a2, a3, t1
                  sltu         zero, t1, a1
                  xor          s10, t3, s2
                  andi         s9, s2, -480
                  slt          a6, t5, t2
                  lui          a1, 242223
sub_5_j9:         jal          ra, sub_6 #jump sub_5 -> sub_6
                  sra          t1, gp, t6
                  blt          sp, a5, 593f
                  ori          a4, t1, 1052
                  blt          a3, a2, 606f
                  srli         s2, s2, 31
                  beq          ra, gp, 609f
                  add          s8, s11, s0
                  blt          zero, t0, 607f
593:              bltu         a6, s1, 608f
                  srli         ra, zero, 27
                  srai         a0, s0, 17
                  slti         s10, a4, 215
                  slti         a7, t5, 1257
                  or           a6, s11, s11
                  ori          s1, t3, 862
                  srl          a5, ra, a0
                  blt          s9, s10, 615f
                  bltu         s3, s6, 609f
                  andi         a3, s8, 775
                  slt          a1, s10, t0
                  slti         s1, zero, 554
606:              blt          a1, a6, 610f
607:              slti         s11, s5, -1749
608:              and          a3, a5, s4
609:              bltu         s7, t3, 610f
610:              slli         s9, s5, 0
                  slt          a1, s8, s1
                  beq          s7, t6, 628f
                  andi         s5, a6, 277
                  and          t4, tp, t4
615:              bltu         s1, a0, 626f
                  beq          a0, a0, 617f
617:              nop
                  sub          t1, s2, s9
                  xor          ra, t3, s6
                  auipc        t5, 1035578
                  srli         t5, a6, 12
                  slti         a0, s6, 1312
                  andi         a1, s10, 542
                  srai         s5, a1, 1
                  slti         a7, a4, -889
626:              sub          t4, t6, a0
                  slli         t4, s11, 21
628:              add          ra, t6, a2
                  bne          t0, t4, 633f
                  sll          s5, a5, t4
                  or           t5, t4, s11
                  sub          s9, s11, a4
633:              srli         ra, a5, 22
                  sll          a6, t6, s1
                  sltiu        s10, s8, 1287
                  bgeu         s1, t2, 652f
                  sll          t1, a1, s6
                  sub          s2, t6, a3
                  or           t1, s10, s4
                  sub          a5, t3, s2
                  ori          gp, zero, 1404
                  sll          a2, t5, s8
                  sra          a5, ra, t1
                  sra          t4, a3, t0
                  slt          s6, tp, a1
                  sub          a0, a6, a4
                  xori         s1, s10, -280
                  sltiu        a5, a2, 624
                  auipc        t1, 85192
                  sra          s10, a4, zero
                  sra          t4, s1, s9
652:              addi         a3, a2, -681
                  srl          t0, a6, sp
                  bne          a4, s9, 670f
                  auipc        s7, 256723
                  srl          a5, a2, s4
                  addi         s1, a2, 2034
                  sub          a4, ra, sp
                  slti         a1, s9, 543
                  blt          ra, zero, 667f
                  bge          sp, s10, 665f
                  slli         s11, s6, 18
                  lui          a7, 570063
                  and          s10, t6, s11
665:              xor          a5, t1, t3
                  nop
667:              auipc        s1, 677048
                  sra          t2, s2, s10
                  bltu         ra, s1, 675f
670:              andi         s6, s6, 1347
                  blt          t4, t5, 679f
                  slti         gp, s10, -511
                  sra          s0, t2, a6
                  sub          a1, a4, s8
675:              add          s10, a4, a6
                  xor          a4, zero, s7
                  nop
                  sll          zero, s7, s8
679:              bltu         t3, s9, 690f
                  slti         t1, ra, 43
                  ori          s5, t5, 792
                  beq          s10, a7, 698f
                  bgeu         s0, s0, 703f
                  bne          a4, t2, 698f
                  add          s2, a5, s4
                  and          sp, s3, a6
                  addi         s2, a5, 2041
                  addi         t0, a2, 1486
                  bgeu         s5, a2, 694f
690:              ori          zero, s2, -539
                  sltu         s8, a0, gp
                  sltiu        s1, a7, 1780
                  srl          t5, a5, s10
694:              sltiu        a2, a3, 1296
                  addi         t1, t0, 380
                  addi         a2, a5, -1729
                  srli         t0, s8, 19
698:              beq          t1, a7, 715f
                  xori         s2, t6, 1880
                  auipc        a6, 790653
                  xor          s2, a7, a3
                  bgeu         t2, s5, 713f
703:              nop
                  and          s0, a6, s7
                  bltu         s8, gp, 720f
                  srai         a4, s9, 14
                  sra          s8, t0, a2
                  add          t0, t1, s11
                  srli         a0, gp, 17
                  xor          s5, a2, s0
                  xor          t2, s2, t6
                  addi         s10, s10, 1295
713:              srl          tp, a6, t6
                  slli         s5, t6, 31
715:              bne          a0, t1, 734f
                  slt          a2, a2, s9
                  sra          t0, t2, a0
                  sub          a7, zero, s0
                  bne          a1, a7, 733f
720:              xori         gp, s11, -1207
                  srai         a5, a4, 20
                  bgeu         s0, s2, 740f
                  xor          gp, a1, s8
                  beq          s6, s7, 731f
                  bge          t2, a4, 729f
                  add          a4, sp, s1
                  sll          s2, gp, a5
                  bgeu         a7, t1, 742f
729:              blt          t4, s4, 740f
                  sll          a0, s4, s7
731:              srai         tp, a5, 11
                  sltiu        a2, t3, -1938
733:              ori          a1, t2, -192
734:              xor          a1, t0, ra
                  sub          a2, a0, a0
                  slli         s9, s10, 4
                  auipc        sp, 49615
                  srli         t4, s2, 15
                  beq          zero, s11, 740f
740:              srl          tp, t2, gp
                  andi         sp, s0, 873
742:              xori         a5, a1, -167
                  beq          a1, tp, 759f
                  addi         sp, t5, 1797
                  sra          a1, s3, a5
                  xor          a2, gp, tp
                  nop
                  bltu         a2, s9, 764f
                  slt          s0, s8, tp
                  sltiu        a1, s1, 1209
                  or           s7, t5, s8
                  and          s1, a5, t5
                  sltu         t3, tp, s2
                  nop
                  xori         t4, t4, -773
                  slti         a0, zero, -1898
                  sltiu        tp, s2, -1568
                  blt          t4, a5, 774f
759:              nop
                  bne          t1, tp, 767f
                  slli         a6, s8, 15
                  bge          s5, s3, 769f
                  sra          a1, zero, s5
764:              xor          a3, t0, tp
                  sltu         t5, t5, a5
                  sra          tp, s8, t5
767:              srl          s0, sp, a6
                  and          tp, s8, zero
769:              lui          t2, 259749
                  xor          s8, t5, t0
                  nop
                  lui          t2, 82556
                  bge          t6, t4, 788f
774:              sub          tp, s3, ra
                  slti         a5, t2, 425
                  and          a5, s10, a0
                  andi         zero, zero, 1719
                  and          t2, s10, s8
                  sll          s5, t4, s1
                  srl          ra, s11, s7
                  sra          s2, t3, t2
                  slt          s8, s4, s5
                  sltu         a3, a7, s3
                  srai         a4, a4, 25
                  bgeu         a7, s3, 789f
                  bge          a3, t1, 806f
                  nop
788:              srl          tp, s11, s5
789:              andi         a1, a2, -2001
                  srai         s5, s2, 21
                  sub          t5, s8, zero
                  beq          a4, a5, 797f
                  sll          s8, s5, s11
                  xor          zero, s1, s9
                  lui          tp, 956451
                  sll          a3, s7, a1
797:              nop
                  auipc        t2, 254843
                  auipc        s7, 348932
                  srli         a0, t2, 7
                  bltu         t6, s3, 817f
                  beq          s6, a1, 813f
                  or           s10, a2, t4
                  sll          t4, s3, s10
                  sltu         s9, s11, t4
806:              xori         s6, s5, -1451
                  srl          sp, s1, s5
                  srai         a2, t1, 8
                  lui          s10, 477330
                  sra          gp, s4, t6
                  sll          s8, s2, a7
                  nop
813:              sll          t0, tp, s8
                  sub          s7, s8, s10
                  sll          a1, a3, t4
                  add          s7, a3, s1
817:              ori          t5, zero, -1436
                  slt          s7, a7, t3
                  xori         s7, s8, 1680
                  auipc        ra, 716159
                  add          tp, a2, t4
                  srai         a2, t0, 25
                  srl          a6, s8, t5
                  andi         s2, a0, -1012
                  bltu         a7, s7, 835f
                  andi         a7, t1, 1712
                  sltiu        tp, sp, 576
                  addi         t3, t2, 994
                  slt          s5, t5, s2
                  auipc        s2, 147928
                  bltu         tp, a0, 832f
832:              lui          ra, 527215
                  nop
                  bltu         t0, s11, 835f
835:              sll          t4, s8, sp
                  sltu         sp, t3, a0
                  add          tp, s2, a5
                  or           sp, s1, s8
                  or           t0, ra, t1
                  bne          a6, tp, 844f
                  ori          s8, s6, -669
                  sltiu        t4, a7, -41
                  xori         s11, a5, -1021
844:              auipc        s9, 51563
                  srli         s6, t6, 28
                  andi         a5, a6, 472
                  nop
                  slli         a2, s1, 17
                  and          ra, zero, zero
                  bgeu         a3, s11, 866f
                  sltu         a5, s4, a4
                  srli         sp, t5, 14
                  bne          t0, t3, 861f
                  srli         s11, s2, 21
                  slt          s9, a6, tp
                  and          tp, t3, t2
                  xor          s11, a1, s4
                  srli         ra, s10, 19
                  slti         t4, t0, 674
                  beq          t4, a3, 876f
861:              or           tp, a6, s7
                  and          a5, tp, t0
                  or           s7, zero, a7
                  andi         s9, ra, 875
                  xor          s0, s0, a6
866:              blt          ra, zero, 883f
                  or           a3, ra, ra
                  bge          a0, s8, 874f
                  lui          s2, 358924
                  auipc        s10, 941771
                  lui          s9, 1019011
                  or           s8, s5, a6
                  slt          s0, a5, s4
874:              sltu         ra, t2, s4
                  srli         s6, s3, 31
876:              beq          t2, a3, 894f
                  sll          a5, s0, s11
                  bge          t4, t2, 885f
                  xori         s7, s9, -1171
                  auipc        tp, 179827
                  auipc        t5, 616297
                  andi         t5, zero, -1655
883:              lui          t0, 850724
                  sra          s2, t1, tp
885:              blt          a4, ra, 886f
886:              beq          a5, a2, 890f
                  ori          ra, a7, -1883
                  add          a2, s6, a4
                  auipc        s6, 285980
890:              beq          t2, t0, 906f
                  addi         s0, s11, -2003
                  sltu         s1, a5, s1
                  slli         a6, s9, 8
894:              beq          ra, s7, 911f
                  bltu         a5, a2, 899f
                  nop
                  andi         s7, a3, 643
                  slt          a5, s5, s2
899:              srl          sp, zero, a5
                  lui          tp, 84595
                  bgeu         s5, s1, 917f
                  beq          gp, zero, 916f
                  bne          s1, a6, 919f
                  bltu         t3, t5, 915f
                  bne          s3, gp, 920f
906:              slli         t1, a3, 23
                  srli         a4, t1, 27
                  beq          s5, a4, 919f
                  blt          s8, s7, 919f
                  and          s11, a5, t1
911:              ori          s7, a7, 1273
                  srai         t3, a1, 1
                  and          ra, a4, s4
                  lui          sp, 621648
915:              bge          a4, t6, 920f
916:              bge          a1, gp, 920f
917:              blt          t6, s5, 920f
                  sra          ra, a3, zero
919:              sltiu        s8, ra, 1544
920:              sltiu        t5, t5, 912
                  sll          s7, a6, t2
                  sra          a7, a3, t0
                  lw           ra, 4(s3)
                  nop
                  addi         s3, s3, 28
                  slt          sp, gp, s5
1255:             addi x16, x1, 1
1255:             jalr x16, x16, 0
sub_1:            addi         zero, s2, 1651
                  sub          s5, t4, s10
                  blt          s8, ra, sub_1_stack_p
                  add          a4, t6, s2
                  or           a5, s7, sp
sub_1_stack_p:    addi         s3, s3, -8
                  sw           ra, 4(s3)
                  xori         t2, ra, 1290
                  la           t1, region_1+958 #start riscv_load_store_rand_instr_stream_1
                  lh           s6, -628(t1)
                  xor          sp, t2, t0
                  srl          sp, a1, gp
                  srai         a2, t6, 3
                  lbu          a3, 741(t1)
                  sb           s2, 279(t1)
                  sltiu        a6, t0, 1783
                  lh           a1, -574(t1)
                  nop
                  add          a3, s11, t0
                  lbu          tp, -332(t1)
                  add          a1, s8, s2
                  ori          tp, zero, 460
                  lb           a7, 123(t1)
                  lb           t3, -900(t1)
                  lui          sp, 393417
                  lb           t2, -370(t1)
                  sb           a4, 476(t1)
                  lbu          t5, -298(t1)
                  lb           a3, 133(t1)
                  lhu          s5, 606(t1)
                  lb           s8, 711(t1)
                  add          a6, t3, t4
                  srl          s6, s10, s4
                  and          s1, zero, a3
                  addi         t2, s10, 334
                  sltu         a4, s10, t2
                  lbu          zero, -830(t1)
                  lb           a3, 783(t1)
                  lbu          t4, -925(t1)
                  sll          ra, s7, a3
                  lw           a2, 818(t1)
                  lh           s10, 522(t1)
                  addi         a4, a2, 1241
                  lb           a0, -839(t1)
                  slti         s7, t5, 1883
                  sw           a6, -138(t1)
                  sb           s3, 290(t1)
                  lbu          s5, -469(t1)
                  add          gp, t0, a2
                  addi         s2, s11, -661
                  sb           t2, -248(t1)
                  addi         a0, s0, -1725
                  sra          a6, s9, a5
                  lh           s7, 940(t1)
                  sb           s3, 809(t1)
                  sb           t6, 389(t1)
                  srl          t2, tp, a6
                  or           ra, t6, t6
                  add          t0, zero, a7
                  lb           tp, 373(t1)
                  lh           s11, 56(t1)
                  xori         s0, s6, -16
                  or           t3, t5, a4
                  lb           s10, -809(t1)
                  xori         s6, s4, 918
                  sra          s11, a7, sp
                  sltu         gp, a2, s1
                  lhu          s8, -304(t1) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+317 #start riscv_load_store_rand_instr_stream_0
                  addi         t5, a5, 470
                  xor          s5, s5, tp
                  lbu          a1, -8(a7)
                  sub          s5, t6, a5
                  lw           a4, -5(a7)
                  lbu          s0, 8(a7)
                  lh           s9, 1(a7)
                  lhu          t4, 15(a7)
                  srai         a1, s3, 9
                  sh           a6, 13(a7)
                  srli         a5, t6, 26
                  sltu         s7, t1, a7
                  slli         t0, s8, 28
                  lb           ra, -6(a7)
                  sw           sp, 11(a7)
                  lw           t0, 7(a7)
                  lb           ra, 14(a7)
                  nop
                  lui          t2, 984276
                  xori         s6, s6, -1878
                  srli         s7, s10, 16
                  sb           s5, 12(a7)
                  andi         a4, a6, 834
                  lw           s1, -13(a7)
                  sb           s5, 13(a7)
                  lw           s10, -13(a7)
                  slt          s1, zero, t4
                  lbu          t3, 6(a7)
                  lb           a0, 5(a7)
                  lhu          zero, 13(a7)
                  sw           s3, -9(a7)
                  sb           zero, 2(a7)
                  auipc        t3, 405940
                  lbu          s7, -2(a7)
                  slti         gp, t4, 1194
                  sb           s4, -10(a7)
                  sb           a5, -13(a7)
                  lh           a3, 1(a7)
                  sra          ra, sp, gp
                  sh           s1, -11(a7)
                  lw           s2, 15(a7)
                  nop
                  lb           s2, -1(a7)
                  lbu          t0, 7(a7) #end riscv_load_store_rand_instr_stream_0
                  xori         a6, t0, -1097
                  lui          s7, 227100
                  and          s6, tp, s3
                  andi         s2, s9, 1972
                  srli         t2, a3, 11
                  nop
                  auipc        zero, 957893
                  srl          tp, s5, t1
                  andi         s10, t3, -170
                  and          a5, s6, tp
                  la           s8, sub_2
                  xor          s6, s11, zero
                  ori          t4, t2, 1311
                  addi         s8, s8, -34
                  srai         s5, s0, 0
sub_1_j2:         jalr         ra, s8, 35 #jump sub_1 -> sub_2
                  blt          tp, a3, 20f
                  blt          t0, t3, 12f
                  sltu         t5, gp, a2
                  sltiu        a5, sp, 982
12:               nop
                  bge          t0, ra, 27f
                  slt          s9, a4, sp
                  srl          t4, ra, s8
                  blt          s6, s7, 21f
                  xori         a3, sp, 1929
                  and          t0, s7, s7
                  sra          s6, a1, s10
20:               sll          s5, a1, t2
21:               or           s7, s4, t2
                  ori          s8, s6, -501
                  blt          a1, a3, 36f
                  xori         a3, t3, 1059
                  bge          a7, s3, 27f
                  blt          a1, s2, 33f
27:               xor          t3, t2, a5
                  beq          ra, t6, 40f
                  slli         a3, tp, 29
                  or           s1, s0, ra
                  slli         t4, a2, 13
                  srai         s9, s9, 16
33:               sra          tp, a3, s5
                  sltiu        s11, t4, -1290
                  bge          s0, ra, 48f
36:               beq          t5, s8, 53f
                  bgeu         s0, t3, 39f
                  sltiu        ra, zero, 277
39:               bgeu         t3, a3, 58f
40:               srli         s2, a3, 2
                  bge          s2, s5, 52f
                  sltu         a1, t2, a3
                  andi         a3, s2, 15
                  lui          a5, 329467
                  srai         a0, s11, 1
                  addi         t2, zero, 389
                  xor          s9, t0, t2
48:               bge          s2, s1, 57f
                  sra          a1, s1, a5
                  sub          a6, s0, s1
                  bltu         s10, t0, 52f
52:               slt          a5, t3, t2
53:               srl          t0, t4, t0
                  or           s10, a7, t6
                  sub          gp, ra, a7
                  ori          a6, s6, -177
57:               srl          t4, a2, s7
58:               slli         a2, a6, 15
                  slti         s9, a5, 1710
                  xori         s5, a2, 1051
                  blt          s10, s5, 77f
                  xori         a3, s11, 1852
                  xori         a3, s9, 1860
                  or           s6, s4, t6
                  srai         s0, a0, 20
                  beq          s3, a1, 78f
                  srli         t1, a3, 23
                  and          s8, a5, a2
                  and          s6, a6, t6
                  or           t1, s10, a5
                  srli         t5, s10, 21
                  sltiu        s11, t5, -1143
                  nop
                  nop
                  add          s2, s5, s7
                  auipc        tp, 254225
77:               sub          tp, t4, s11
78:               slli         s1, s10, 4
                  bne          a0, a2, 93f
                  addi         s7, t1, -1353
                  sll          a2, t1, s8
                  nop
                  slli         s9, gp, 17
                  ori          s11, a2, 1429
                  ori          t1, a0, 886
                  sltiu        t0, t6, 1964
                  bge          s8, a0, 89f
                  sub          a7, s10, ra
89:               auipc        ra, 626253
                  add          a0, a1, a4
                  sub          s9, a5, a0
                  xori         s8, t3, 505
93:               ori          s8, s6, 1032
                  beq          ra, s10, 96f
                  bltu         s8, a0, 108f
96:               sll          a0, t3, t0
                  sltiu        s5, t0, 819
                  slti         t1, a6, 1734
                  slt          t3, t0, s2
                  srli         a7, t1, 9
                  sll          s10, t5, t4
                  addi         gp, s1, -264
                  or           t0, s4, sp
                  lui          a4, 758566
                  bge          s7, s8, 118f
                  srai         s10, s5, 27
                  blt          a0, zero, 124f
108:              sltu         a4, s7, s11
                  and          s6, t3, a0
                  bne          s4, s10, 130f
                  beq          a2, a5, 124f
                  slti         s8, a2, 586
                  srli         a4, s5, 20
                  sra          s5, s3, a2
                  bgeu         s6, t4, 123f
                  sltiu        s7, a0, 1806
                  beq          a0, a7, 133f
118:              sra          a0, s1, t2
                  slti         s7, s2, -828
                  blt          s3, a1, 123f
                  addi         t5, t5, 1016
                  and          s6, s0, a5
123:              or           a6, s10, s7
124:              nop
                  addi         t2, sp, -617
                  sra          a4, s5, t5
                  bge          s9, t6, 132f
                  srl          a6, a6, s9
                  addi         a5, s6, 629
130:              srl          s11, a6, s2
                  bltu         gp, t5, 133f
132:              bltu         t6, gp, 143f
133:              sll          t2, a0, a1
                  ori          s11, tp, 1246
                  beq          a3, a6, 137f
                  sll          a0, t6, a3
137:              srai         t4, gp, 4
                  srl          s8, sp, s4
                  bltu         a6, t2, 141f
                  blt          zero, tp, 153f
141:              srli         s1, ra, 11
                  bgeu         a2, s4, 143f
143:              srl          s2, s2, gp
                  sll          ra, s7, zero
                  auipc        t3, 892931
                  sra          s11, a4, s6
                  and          gp, t4, t3
                  add          s9, t2, s6
                  slli         sp, zero, 14
                  ori          s2, a6, -1296
                  sltiu        a7, gp, -1053
                  add          gp, t0, sp
153:              blt          s4, a3, 162f
                  sra          s8, t0, t3
                  sltu         a2, s5, a2
                  sra          a6, t6, tp
                  andi         a2, a7, -674
                  bltu         s4, s1, 171f
                  bgeu         t6, t2, 164f
                  sll          a7, s9, a1
                  beq          s9, a1, 174f
162:              beq          t6, s7, 164f
                  bgeu         s1, a7, 166f
164:              bltu         t1, s6, 167f
                  beq          s9, a6, 179f
166:              lui          a5, 1026403
167:              slti         a1, s2, 564
                  slt          tp, a7, s7
                  bgeu         t1, sp, 171f
                  add          s9, s8, s3
171:              addi         a3, sp, -1170
                  blt          t0, s5, 189f
                  sltu         gp, t2, s6
174:              and          s7, s4, s1
                  bltu         a4, t0, 191f
                  bge          t4, t3, 178f
                  srli         s5, s7, 12
178:              srli         a5, s9, 24
179:              sll          s1, s8, t1
                  bge          s2, tp, 187f
                  sll          t3, s3, t1
                  addi         t1, t6, 1639
                  sltu         a7, t6, tp
                  bge          a2, s10, 204f
                  beq          s10, t2, 197f
                  addi         s10, gp, 1343
187:              nop
                  beq          tp, t5, 193f
189:              slti         a1, s3, 179
                  sra          s7, sp, s7
191:              or           t2, a1, a2
                  bne          gp, s6, 204f
193:              slli         t4, t4, 27
                  srli         a6, s6, 0
                  and          s2, t5, a6
                  or           s7, a7, a4
197:              bne          s0, a6, 210f
                  or           s5, t5, s4
                  beq          t5, s1, 218f
                  sltu         s0, a2, s2
                  xori         t1, s6, 1023
                  add          tp, a6, s2
                  auipc        t0, 717915
204:              lui          sp, 645240
                  slli         t2, a4, 31
                  bge          t0, tp, 220f
                  slt          zero, t2, t6
                  or           a4, s9, s4
                  bne          gp, t6, 225f
210:              bgeu         s9, s3, 227f
                  srli         s8, a6, 15
                  xor          t5, a3, ra
                  sll          a1, s11, s6
                  ori          a5, a6, -1908
                  xor          s9, sp, tp
                  blt          gp, s4, 228f
                  slti         a5, s3, -1005
218:              sltiu        t2, s4, -1376
                  lui          s6, 271469
220:              andi         a7, s0, 789
                  bgeu         s5, zero, 234f
                  blt          t4, s6, 230f
                  ori          s1, a1, -1112
                  bne          t2, s6, 226f
225:              and          a5, gp, s9
226:              sra          a1, a2, t2
227:              xori         tp, a1, 48
228:              bltu         a4, s6, 240f
                  auipc        s10, 57856
230:              addi         sp, a5, 1055
                  sra          s5, t6, a6
                  lui          t0, 594979
                  srl          t4, sp, s5
234:              add          gp, t1, s4
                  slli         s7, t0, 8
                  srl          s2, a3, sp
                  nop
                  lui          sp, 843502
                  and          a6, t6, sp
240:              add          gp, t0, s9
                  ori          t2, s3, -240
                  bgeu         a4, a3, 251f
                  beq          t2, sp, 251f
                  bgeu         a4, s4, 246f
                  sra          s0, t1, s8
246:              bgeu         s6, s6, 251f
                  lui          gp, 819003
                  andi         a0, s4, -1524
                  srai         a4, a4, 23
                  auipc        s11, 151137
251:              srl          zero, s3, s1
                  sltu         t0, a5, t2
                  lw           ra, 4(s3)
                  addi         s3, s3, 8
                  xor          t5, tp, s2
                  slt          a5, s3, t4
                  sll          a2, t3, a2
                  add          tp, s4, s11
                  srl          t1, t1, ra
                  and          t3, s10, s4
                  srli         s8, a5, 2
                  srl          a6, gp, t2
                  auipc        t3, 103197
385:              addi x7, x1, 1
385:              jalr x7, x7, 0
sub_2:            sltu         sp, tp, s4
                  xori         a6, sp, -822
                  sll          zero, a0, a7
                  nop
                  nop
                  and          s2, t5, s3
                  or           t1, sp, tp
                  srl          zero, tp, s3
                  addi         s3, s3, -40
                  sw           ra, 4(s3)
                  lui          t3, 411476
                  srli         a6, s11, 23
                  sltu         s7, s0, t2
                  sub          sp, zero, sp
                  srai         s10, t2, 19
                  srli         s0, s7, 20
                  slti         s8, zero, 251
                  addi         t5, t1, -60
                  or           a5, t3, t1
                  slti         gp, a3, 804
                  sltiu        zero, s11, 562
sub_2_j3:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  srl          s9, a1, ra
                  slti         tp, s4, -1572
                  sub          t5, s5, s7
                  sltu         t0, ra, a5
                  srl          s8, t1, a0
                  srli         a1, ra, 31
                  srl          gp, a6, t5
                  sltiu        t0, a5, -1876
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  la           t3, region_1+473 #start riscv_load_store_rand_instr_stream_0
                  addi         a2, s8, -882
                  lhu          ra, -31(t3)
                  lbu          a5, 4(t3)
                  and          t5, t1, tp
                  lui          s1, 894702
                  auipc        s8, 588015
                  slti         a0, a0, -1871
                  sb           s7, 220(t3)
                  addi         s6, s3, 924
                  lw           t5, -145(t3)
                  lbu          a2, 210(t3)
                  lh           a5, -59(t3)
                  srli         a0, tp, 14
                  add          s5, s5, a4
                  lbu          s1, 66(t3)
                  lb           a6, -228(t3)
                  sub          s10, s9, sp
                  sll          gp, t2, zero
                  lb           t1, 158(t3)
                  and          tp, t1, zero
                  xori         t4, s0, -651
                  sltiu        a3, a6, 1477
                  slli         a0, s8, 7
                  lbu          a4, 17(t3) #end riscv_load_store_rand_instr_stream_0
                  srai         s2, s0, 12
                  lui          gp, 20604
                  sra          t3, s0, t2
                  bltu         s0, s11, 16f
                  sltiu        s6, t3, -1701
                  sll          a0, s7, a5
                  or           a1, s4, s2
                  slt          s11, a3, s8
                  andi         t2, s3, 664
                  slli         gp, s9, 18
                  sll          a4, s10, s4
                  sll          s6, zero, s3
                  blt          s9, s0, 29f
                  addi         t5, t4, -1480
                  addi         t3, a3, 590
                  sltu         a2, s3, s4
16:               andi         s1, s9, -1613
                  sub          s8, t1, s10
                  bltu         ra, t0, 27f
                  srai         a2, ra, 28
                  bltu         s5, s0, 22f
                  ori          s1, s1, 1598
22:               sltu         s9, a3, s7
                  slli         a0, s3, 10
                  sll          a1, gp, s5
                  bge          gp, t1, 33f
                  bne          t3, t6, 38f
27:               sub          s0, s2, s6
                  slt          t4, t4, t1
29:               srl          a4, a7, gp
                  slt          a6, t4, t4
                  nop
                  sltu         a4, a7, a2
33:               auipc        s0, 142947
                  nop
                  nop
                  and          s0, s11, zero
                  bltu         a7, t0, 40f
38:               andi         a3, t4, 1793
                  slli         s7, s7, 4
40:               blt          a1, a0, 44f
                  slti         a1, zero, -170
                  and          s9, s5, t1
                  xor          s2, s9, s1
44:               xori         t2, s10, 1073
                  bgeu         s5, t0, 63f
                  xor          s2, a6, t0
                  addi         s5, s0, 1544
                  bltu         s7, s2, 64f
                  bge          a1, t5, 56f
                  auipc        a2, 462197
                  ori          a5, zero, -577
                  srai         sp, a1, 9
                  auipc        t5, 740004
                  bgeu         a6, t1, 72f
                  sub          a6, t1, a0
56:               ori          s0, a7, 563
                  add          a3, s8, gp
                  srai         s2, s6, 24
                  sub          a4, a2, a5
                  addi         a0, a6, -1261
                  slt          a2, t1, s10
                  bne          s3, a0, 64f
63:               addi         s10, s0, -1345
64:               slli         s6, a4, 24
                  srli         s8, t5, 27
                  andi         a1, gp, -1404
                  slli         s0, gp, 24
                  or           s2, a1, a1
                  sll          s5, gp, a5
                  xori         t3, s11, -332
                  sltiu        s9, tp, -596
72:               bgeu         s9, a3, 83f
                  sra          a5, a6, a5
                  lui          s1, 846717
                  sub          a5, zero, s3
                  blt          t0, t5, 86f
                  beq          a0, t5, 92f
                  beq          s11, s8, 97f
                  slli         t1, t2, 16
                  auipc        s9, 653658
                  bltu         t5, ra, 90f
                  auipc        s5, 636039
83:               sra          s11, t3, tp
                  addi         sp, t5, -456
                  srl          t1, t3, sp
86:               sltu         a5, a3, a4
                  bltu         s2, t1, 106f
                  and          t5, a6, s5
                  auipc        gp, 651134
90:               lui          t1, 7071
                  slt          s7, s6, sp
92:               bne          t1, a7, 93f
93:               bltu         s11, a1, 105f
                  lui          tp, 226531
                  bne          s10, a0, 97f
                  addi         t0, t1, 256
97:               nop
                  blt          t6, s11, 103f
                  nop
                  slli         s0, s7, 23
                  bgeu         s7, t1, 108f
                  slli         sp, a3, 17
103:              and          t1, t0, t0
                  sll          a6, s0, t2
105:              srai         t5, s9, 6
106:              bne          zero, a4, 118f
                  beq          gp, s5, 124f
108:              andi         s6, s6, -1100
                  blt          a4, s10, 118f
                  addi         a4, a2, -1304
                  srl          a3, a6, s8
                  sub          s8, s11, a5
                  sltiu        t3, s8, -282
                  addi         a1, s7, 1127
                  add          a1, t1, t1
                  sltiu        t3, s9, 1120
                  srli         t0, t0, 17
118:              slt          sp, s9, t1
                  ori          a5, t1, -1732
                  srai         sp, t4, 0
                  slt          t0, a3, ra
                  bge          t0, s5, 130f
                  srai         a0, sp, 23
124:              beq          a4, t3, 141f
                  add          s7, a3, s1
                  andi         ra, s4, -615
                  bgeu         s6, s4, 137f
                  bltu         t3, a6, 136f
                  bltu         a6, t4, 138f
130:              slt          t5, t2, s9
                  andi         a1, a1, -484
                  and          a3, s3, s4
                  beq          a2, s11, 143f
                  auipc        s2, 19560
                  sltu         a4, s4, s4
136:              xor          a1, t1, a7
137:              blt          t0, sp, 148f
138:              or           tp, t5, t1
                  slti         a2, s11, -792
                  xori         a0, s3, -221
141:              sll          t3, zero, s6
                  srl          a5, tp, t1
143:              beq          s7, ra, 145f
                  and          s9, s0, s7
145:              sll          a3, a2, a4
                  srli         a7, t0, 13
                  sub          a6, s6, t3
148:              slli         s9, zero, 0
                  addi         a4, s9, -124
                  bgeu         s2, s2, 167f
                  addi         s10, a0, -1287
                  srli         s11, a0, 22
                  blt          t0, s5, 158f
                  auipc        a6, 412957
                  srli         s6, s2, 26
                  sltu         a1, sp, s11
                  slli         s2, a3, 28
158:              sra          a7, tp, a7
                  sltu         s2, s5, sp
                  andi         s8, s0, -244
                  lui          s8, 512897
                  or           s5, s4, s5
                  xori         ra, t1, -903
                  sra          a1, t1, t1
                  xori         a5, gp, -307
                  srli         zero, s11, 5
167:              bltu         a2, s8, 184f
                  or           a4, s11, a2
                  xor          s5, sp, s3
                  bgeu         t3, s5, 188f
                  bge          s1, a5, 188f
                  slt          a5, a1, t4
                  auipc        s0, 230551
                  bge          sp, s7, 188f
                  add          s5, t4, s8
                  sltiu        t2, t1, -1705
                  slli         s11, s7, 20
                  sltu         s7, s4, tp
                  andi         t0, s8, -10
                  blt          s2, s5, 188f
                  bgeu         ra, s10, 188f
                  sub          t0, ra, a4
                  sltu         t1, s11, a2
184:              bne          s3, sp, 185f
185:              and          a1, s10, ra
                  srai         a0, a0, 30
                  bne          s11, sp, 188f
188:              sll          s11, s6, s10
                  slt          a7, t2, s9
                  andi         s11, a7, -1343
                  sltu         a2, s4, s2
                  sll          gp, a5, a1
                  lw           ra, 4(s3)
                  sltu         a0, zero, t1
                  addi         s3, s3, 40
                  srli         s9, t3, 19
                  andi         gp, t1, -307
                  auipc        gp, 819318
                  auipc        t1, 938246
256:              addi x18, x1, 0
256:              jalr x18, x18, 0
sub_8:            xori         t2, s0, -1831
                  add          t3, t2, a7
                  or           a2, t3, s10
                  bne          t6, s2, sub_8_stack_p
                  slt          s7, t5, t1
                  slt          s11, t0, s10
                  xori         zero, a4, 370
                  slti         s5, s2, -826
                  srai         a6, tp, 3
sub_8_stack_p:    addi         s3, s3, -64
                  or           a2, s6, ra
                  sw           ra, 4(s3)
                  xor          s8, s6, t0
                  la           sp, region_1+782 #start riscv_load_store_rand_instr_stream_0
                  xor          t1, s5, s7
                  lb           a7, -15(sp)
                  lb           a0, 15(sp)
                  sub          a2, t2, t4
                  sb           s4, -11(sp)
                  lb           a5, 7(sp)
                  sb           t2, 4(sp)
                  lbu          ra, 12(sp)
                  sub          a4, s2, s10
                  lw           zero, -6(sp)
                  sll          gp, t2, s3
                  sb           a2, -11(sp)
                  sb           a2, 8(sp)
                  sh           s3, 2(sp)
                  slti         s10, tp, -1085
                  add          tp, s7, t0
                  ori          s7, s11, -563
                  ori          zero, t1, -1645
                  sh           gp, -8(sp)
                  or           s0, t6, s9
                  srl          s5, a4, ra
                  sh           s5, -10(sp)
                  xor          t1, s4, t4
                  ori          s9, s9, 439
                  xor          s9, s6, t0
                  slt          s7, s11, s10
                  sltiu        t2, t3, -926
                  lbu          s6, 2(sp)
                  lui          a2, 469613
                  lw           a3, 10(sp)
                  lb           a6, -3(sp)
                  sh           s7, 16(sp)
                  lbu          s8, -13(sp)
                  lb           a7, -3(sp) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+1713 #start riscv_load_store_rand_instr_stream_9
                  sb           t2, 18(tp)
                  xor          s11, gp, s5
                  slt          sp, zero, a1
                  lbu          t3, -14(tp)
                  slt          t5, a0, gp
                  lbu          s0, -2(tp)
                  lbu          t4, 2(tp)
                  lb           a2, -36(tp)
                  lb           a7, -49(tp)
                  lb           t0, -38(tp)
                  slli         a3, s5, 7
                  sll          a3, s2, tp
                  srli         a4, a4, 21
                  sb           gp, -56(tp)
                  lbu          s1, 27(tp)
                  sh           t5, 19(tp)
                  lhu          a5, -55(tp)
                  or           gp, s6, sp
                  srai         t3, a2, 11
                  add          s7, a4, a6
                  lb           a1, 10(tp)
                  lbu          a0, 45(tp)
                  slti         s2, zero, -418
                  sub          s2, a0, a7
                  auipc        a1, 320565
                  lbu          a0, 30(tp)
                  sb           t6, -56(tp)
                  xori         a3, s0, -1933
                  sh           a1, -13(tp)
                  nop
                  lbu          a5, 59(tp)
                  lb           t2, 13(tp)
                  lui          t0, 52444
                  sltiu        a2, t6, 1975
                  sll          t3, s3, tp
                  srai         t3, s2, 4
                  sb           s7, 62(tp)
                  addi         a5, a6, 1839
                  sb           a6, 63(tp)
                  sb           a3, 8(tp)
                  lb           s8, -12(tp)
                  lh           a2, -27(tp)
                  lbu          s11, -5(tp)
                  sh           s4, 59(tp)
                  lw           s7, 35(tp) #end riscv_load_store_rand_instr_stream_9
                  la           a0, region_1+173 #start riscv_load_store_rand_instr_stream_5
                  sb           s1, 64(a0)
                  or           a2, s3, a7
                  sb           ra, -15(a0)
                  sltiu        tp, t3, -1269
                  sb           a4, -63(a0)
                  auipc        t4, 643679
                  sra          t3, zero, s2
                  sb           t0, -28(a0)
                  lbu          gp, 46(a0)
                  and          t3, t5, s2
                  lb           t0, 46(a0)
                  sh           t6, -15(a0)
                  lbu          a5, -40(a0)
                  sltiu        s10, s10, 1741
                  nop
                  sltu         s5, tp, s1
                  xori         t3, t0, -1758
                  lb           t0, 62(a0)
                  slt          tp, tp, a1
                  or           s1, t5, a5
                  lbu          t1, -53(a0)
                  sb           a5, 28(a0)
                  sra          a3, s0, s4
                  lb           ra, -28(a0)
                  xor          a1, s1, t3
                  sh           zero, 33(a0)
                  sll          a7, s5, s4
                  lb           s2, 24(a0)
                  ori          s9, s6, 1566
                  lhu          s1, -9(a0)
                  sw           tp, 43(a0)
                  lbu          s7, 40(a0)
                  lbu          t0, -46(a0)
                  lbu          t1, 15(a0)
                  sh           t1, 51(a0)
                  andi         s1, t1, 226
                  lui          s1, 39868
                  andi         s1, t0, 1726
                  sltu         a4, a6, s1
                  sb           a3, 20(a0) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+65 #start riscv_load_store_rand_instr_stream_7
                  sh           zero, 25(sp)
                  or           t2, t3, a5
                  lb           s8, 406(sp)
                  sb           t1, 16(sp)
                  slti         a5, t3, 1590
                  lb           t2, 1723(sp)
                  slt          a0, s11, zero
                  auipc        zero, 41212
                  lh           s10, 689(sp)
                  lb           s2, 668(sp)
                  sltu         s1, t5, s3
                  slti         ra, a1, -195
                  sub          a1, s2, s8
                  sb           t0, 1778(sp)
                  lbu          t1, 350(sp)
                  sb           s2, 628(sp)
                  sb           gp, 992(sp)
                  srli         a7, a3, 9
                  lbu          s8, 261(sp)
                  sltiu        gp, a6, -201
                  sll          t4, a0, a4
                  srai         s10, s4, 8
                  lui          s7, 89714
                  and          s0, s3, t2
                  auipc        t2, 633897
                  lb           zero, 1257(sp)
                  slli         a1, t0, 12
                  or           s11, a1, t0
                  srl          t1, zero, s7
                  lh           a3, 659(sp)
                  lbu          s6, 1073(sp)
                  nop
                  lb           ra, 1116(sp)
                  srl          a0, s2, a0
                  slli         gp, s9, 8
                  addi         a0, t2, 378
                  lbu          t5, 285(sp) #end riscv_load_store_rand_instr_stream_7
                  la           a1, region_1+1486 #start riscv_load_store_rand_instr_stream_10
                  lbu          tp, -1307(a1)
                  auipc        s10, 863541
                  lhu          t1, 370(a1)
                  andi         s9, s6, -1365
                  srai         s2, sp, 24
                  lbu          t1, -683(a1)
                  or           a4, ra, zero
                  nop
                  nop
                  lhu          t1, -1066(a1)
                  xori         s5, s9, 732
                  sb           t2, 287(a1)
                  lbu          s7, -581(a1)
                  srl          t5, s11, s6
                  xori         s6, sp, -334
                  lb           a3, 394(a1)
                  sltu         t3, a2, sp
                  srai         a7, a7, 31
                  sb           a5, 236(a1)
                  sh           a2, -432(a1)
                  add          a2, a0, ra
                  sb           t3, -710(a1)
                  lw           a3, -58(a1)
                  lb           s6, -1091(a1)
                  lw           s11, 382(a1)
                  slli         gp, s7, 19
                  lh           a6, -18(a1)
                  sra          tp, s5, a0
                  lhu          a6, -702(a1)
                  and          s5, s0, t6
                  sll          s7, gp, sp
                  sb           s7, -411(a1)
                  and          ra, s3, t0
                  sll          a4, t1, ra
                  slli         tp, ra, 9
                  sh           t5, 172(a1)
                  addi         a4, a5, 419
                  auipc        a4, 921975
                  add          a0, t1, a6
                  lbu          t2, 208(a1)
                  sll          a6, t2, s11
                  or           t3, s6, s1
                  lh           ra, -1308(a1)
                  slli         s1, a2, 24
                  lw           s5, 90(a1)
                  addi         s7, zero, 1912
                  sltiu        t1, t3, 169
                  xori         t1, t3, 27
                  lh           t5, -1362(a1)
                  sb           t2, -1435(a1) #end riscv_load_store_rand_instr_stream_10
                  la           a5, region_0+883 #start riscv_load_store_rand_instr_stream_1
                  lbu          a3, 56(a5)
                  sb           a4, -17(a5)
                  srai         zero, t4, 25
                  xori         a6, s0, -1985
                  lb           a2, 4(a5)
                  lb           s2, 46(a5)
                  auipc        t3, 709247
                  lbu          a2, -57(a5)
                  sb           a6, -54(a5)
                  sb           a5, 5(a5)
                  andi         a4, a4, 1718
                  sh           t3, -47(a5)
                  sw           a6, -7(a5)
                  lb           ra, 8(a5)
                  sb           s3, -26(a5)
                  lbu          a2, -51(a5)
                  auipc        gp, 599330
                  sll          zero, s5, sp
                  lhu          s1, 53(a5)
                  sb           t3, -47(a5)
                  lui          s9, 700464
                  lh           gp, -31(a5)
                  srl          s9, t2, tp
                  sll          t1, tp, t2
                  lb           gp, -46(a5)
                  lhu          gp, -17(a5)
                  lw           s6, 61(a5)
                  xori         s10, s6, -807
                  srl          a7, t2, a6
                  lhu          s8, 15(a5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+292 #start riscv_load_store_rand_instr_stream_4
                  srli         s9, t5, 23
                  lh           t5, -12(sp)
                  auipc        s5, 592041
                  lh           s6, 2(sp)
                  lb           s1, 7(sp)
                  lh           t3, -6(sp)
                  lbu          t4, -5(sp)
                  lui          t2, 344637
                  add          t1, s1, a5
                  or           a6, s4, t6
                  lb           a1, 9(sp)
                  nop
                  sb           a2, 1(sp)
                  andi         ra, s10, 157
                  lb           tp, 11(sp)
                  xori         t1, t1, 370
                  sb           t2, 3(sp)
                  slli         s5, a7, 11
                  sb           t2, -6(sp)
                  or           s10, a0, t4
                  lui          s6, 1000274
                  lhu          a5, 16(sp)
                  sb           t5, 1(sp)
                  lw           t2, 8(sp)
                  add          a6, s6, zero
                  sub          s6, t4, ra
                  slli         t5, a1, 11
                  xori         t4, tp, 840
                  ori          s10, t6, 1566
                  lw           s5, -8(sp)
                  slt          s10, sp, a6
                  or           a7, s0, s10
                  lbu          t2, 0(sp)
                  andi         a3, s7, 1276
                  lbu          a5, 9(sp)
                  sh           a5, 12(sp)
                  lbu          s6, 7(sp)
                  xor          s0, sp, s2
                  sw           s5, 0(sp)
                  lb           a0, 1(sp)
                  addi         a6, s8, 1971
                  and          t1, a7, s7
                  sltiu        t3, a6, 1950
                  lb           t4, -3(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1626 #start riscv_load_store_rand_instr_stream_2
                  lh           s9, -52(sp)
                  ori          s2, s7, 434
                  srai         a3, s7, 25
                  lb           tp, -63(sp)
                  lb           s2, -48(sp)
                  sub          t5, s0, s2
                  xor          s2, a6, a0
                  sw           t5, -10(sp)
                  sh           t0, -32(sp)
                  sltiu        t4, s0, -291
                  or           s1, a5, s1
                  sb           s1, -3(sp)
                  sh           s6, -10(sp)
                  lbu          a1, 37(sp)
                  sb           t3, -12(sp)
                  add          t0, s0, s9
                  slt          t0, s8, sp
                  lb           s10, 5(sp)
                  lw           a5, -50(sp)
                  sb           s9, -55(sp)
                  lbu          t1, -5(sp)
                  lb           tp, -35(sp)
                  lb           s2, -5(sp)
                  lbu          t3, -57(sp)
                  lb           tp, -29(sp)
                  lhu          a2, 42(sp)
                  lbu          s6, 21(sp)
                  lui          t0, 202063
                  lui          s11, 671744
                  sra          a0, ra, t3
                  lbu          s6, -63(sp)
                  slt          s11, s10, s8
                  sb           t6, 61(sp)
                  sra          a1, gp, s7
                  andi         s9, t3, -58
                  lb           a3, 51(sp)
                  slt          t3, t2, a3
                  slli         t1, a2, 26
                  lbu          t3, 19(sp)
                  lhu          s7, -38(sp)
                  lw           t5, 22(sp)
                  lb           s9, 5(sp)
                  lbu          s9, -15(sp)
                  lbu          tp, 52(sp)
                  lbu          a7, 47(sp)
                  addi         s11, a3, -1978
                  sb           t5, 9(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+521 #start riscv_load_store_rand_instr_stream_8
                  sra          s7, a1, t0
                  srl          t4, a7, t2
                  lb           ra, 1210(a2)
                  xori         a7, t6, -1681
                  addi         s9, a1, 1223
                  sltiu        s1, s0, 1333
                  and          t5, t1, a4
                  sll          s1, s10, s0
                  slt          s2, t5, s5
                  sra          a0, a2, s4
                  and          a0, a1, a3
                  lb           s10, -96(a2)
                  or           s6, s1, t0
                  slli         gp, tp, 14
                  slti         s2, tp, 1688
                  sltu         gp, sp, a5
                  srli         t1, s4, 21
                  sw           a3, -513(a2)
                  lhu          t3, 1261(a2)
                  add          a5, a5, s0
                  lbu          a6, 423(a2)
                  sh           s6, -211(a2)
                  sub          s10, zero, ra
                  lb           s9, 797(a2)
                  srli         a1, ra, 2
                  lb           a6, 678(a2)
                  lbu          a6, -142(a2)
                  xori         s6, t2, -601
                  auipc        s2, 844348
                  sb           sp, -500(a2)
                  addi         s2, zero, 1315
                  sb           a2, 119(a2) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1970 #start riscv_load_store_rand_instr_stream_3
                  srl          t5, s8, s8
                  add          s1, s5, a6
                  lb           a4, -65(sp)
                  lbu          t5, -89(sp)
                  sb           t3, 8(sp)
                  lb           zero, -105(sp)
                  or           s10, s0, t1
                  lh           t2, -244(sp)
                  lbu          s8, -208(sp)
                  lbu          s0, -148(sp)
                  sw           s7, -198(sp)
                  lbu          gp, -5(sp)
                  auipc        tp, 438722
                  sh           t3, -208(sp)
                  sra          s8, ra, s5
                  add          s9, sp, a0
                  sub          t3, s4, gp
                  sra          a5, t2, s4
                  sh           a5, -88(sp)
                  auipc        tp, 218745
                  lhu          t4, -218(sp)
                  sb           a7, -97(sp)
                  srai         s6, a7, 14
                  lb           ra, -224(sp)
                  lui          a1, 302381
                  lb           tp, -205(sp)
                  lbu          a2, -9(sp)
                  sb           a0, -131(sp)
                  lh           s11, 2(sp)
                  slt          s0, s1, a7
                  lhu          s6, -100(sp)
                  srli         t2, s10, 17
                  sh           t0, -132(sp)
                  sb           s5, -52(sp)
                  lbu          a3, -85(sp) #end riscv_load_store_rand_instr_stream_3
                  bne          a4, a6, 14f
                  lui          s9, 752273
                  sltu         t5, s11, ra
                  add          s7, s6, s4
                  slt          s1, t5, s1
                  add          a0, ra, s9
                  beq          sp, a5, 19f
                  add          s11, a6, s2
                  auipc        s7, 943267
                  auipc        t5, 595434
                  add          a1, t3, sp
                  or           s8, a5, t3
                  xor          s2, t4, s4
                  beq          a7, sp, 24f
14:               sll          s7, a0, s0
                  xor          a0, s8, a6
                  srl          s6, a5, s4
                  sll          ra, a7, s8
                  srli         t3, s0, 14
19:               blt          s6, t3, 22f
                  ori          s11, t2, -1797
                  bltu         a2, a5, 22f
22:               addi         gp, s9, -859
                  sltiu        a4, sp, 657
24:               and          s2, a0, a1
                  sltu         t5, tp, s7
                  and          ra, t0, s1
                  slt          s10, s8, ra
                  sltiu        t1, a7, -1712
                  bltu         a0, s9, 48f
                  bne          ra, t1, 37f
                  add          s7, s10, ra
                  auipc        ra, 420538
                  lui          s2, 189125
                  auipc        s7, 527678
                  blt          a4, s9, 39f
                  addi         t4, s6, 262
37:               add          sp, s3, s10
                  srl          sp, a3, a2
39:               auipc        a3, 623021
                  sll          s10, t6, a1
                  bltu         s2, a4, 59f
                  add          ra, gp, a0
                  sll          zero, sp, s9
                  or           t3, s3, a4
                  sra          s6, a6, s6
                  andi         t0, t4, 1501
                  or           ra, t2, s7
48:               xori         s11, a1, -1017
                  bgeu         t1, s9, 51f
                  add          gp, tp, s9
51:               blt          tp, a7, 59f
                  sub          s2, s7, a3
                  sltiu        s5, a0, -428
                  ori          tp, zero, -1888
                  srli         a0, a5, 2
                  ori          s0, t0, -1368
                  addi         tp, a4, -1666
                  slti         a0, s9, 263
59:               sltu         sp, t2, a2
                  slt          t3, a5, s11
                  bltu         tp, t2, 68f
                  sltiu        s1, a0, -983
                  srai         s10, sp, 20
                  slti         s7, a0, 791
                  ori          a0, t5, 751
                  srai         a4, a2, 16
                  ori          zero, t2, 1874
68:               add          s5, t3, s2
                  or           s2, t5, s3
                  sra          t0, a1, s5
                  auipc        t2, 670546
                  ori          s10, a1, -612
                  bltu         zero, s3, 93f
                  bgeu         t6, s4, 81f
                  bge          a6, t6, 86f
                  bne          t3, s7, 78f
                  srai         t4, t0, 9
78:               bltu         s6, a0, 90f
                  srl          a2, a3, zero
                  or           s8, a4, gp
81:               lui          tp, 548953
                  bge          a0, a6, 85f
                  add          t1, s7, a3
                  and          t5, t4, t4
85:               nop
86:               srl          ra, t1, s6
                  nop
                  sub          a0, sp, a3
                  sltiu        s2, a3, 97
90:               bge          s8, ra, 102f
                  slti         s8, s9, 1333
                  nop
93:               bltu         s2, a4, 96f
                  lui          s8, 734963
                  sll          s2, a2, ra
96:               sltu         a7, t0, s4
                  andi         tp, t2, -177
                  xor          t1, t6, s4
                  auipc        t5, 470366
                  sra          a4, ra, s10
                  slt          a1, t2, zero
102:              auipc        s11, 992884
                  slti         s6, tp, -625
                  srl          t3, s9, a2
                  ori          a6, t2, 1068
                  slt          s10, tp, s8
                  srli         t2, zero, 4
                  srli         ra, sp, 25
                  xori         a7, t0, 608
                  sub          s6, s4, t1
                  srli         s0, t4, 15
                  lui          s8, 1010419
                  xor          s0, t5, a4
                  blt          a4, sp, 120f
                  xor          s2, t3, a5
                  sltiu        s11, sp, 640
                  bge          s0, a5, 120f
                  and          a3, sp, s1
                  ori          s7, s4, 954
120:              bne          a6, s6, 125f
                  slti         s10, s6, -1636
                  and          a1, t4, s2
                  xori         t5, a1, -16
                  bne          gp, t6, 127f
125:              addi         t0, t1, 1651
                  beq          ra, t0, 145f
127:              sltu         t2, t6, s9
                  ori          a3, s1, -295
                  sll          a1, t4, a2
                  blt          s3, gp, 144f
                  slti         s10, zero, 917
                  sub          t4, a5, t6
                  srl          a5, s2, s3
                  and          s10, a2, s10
                  auipc        t1, 365976
                  srli         s5, s10, 9
                  bltu         a4, zero, 149f
                  srli         a3, a5, 2
                  ori          s2, s4, -799
                  ori          s9, a0, -1660
                  bge          sp, ra, 153f
                  sll          a2, zero, t3
                  bne          s4, sp, 152f
144:              slti         s1, t2, 795
145:              bge          t5, t3, 153f
                  sra          s6, t4, a3
                  bge          t1, s1, 153f
                  slti         a7, t1, -1702
149:              srli         s1, s7, 15
                  srl          s11, t1, t4
                  nop
152:              srai         s1, a4, 7
153:              xor          s1, a1, gp
                  sub          s2, t3, s2
                  and          t5, s11, s8
                  slti         sp, s8, 593
                  blt          t4, s11, 161f
                  addi         a6, s11, 527
                  slt          s7, t1, s2
                  add          t4, t1, t0
161:              blt          s7, s10, 180f
                  bgeu         a7, ra, 174f
                  ori          s0, s4, 1812
                  sltiu        t0, a3, 55
                  slli         s10, t3, 21
                  slt          s10, tp, zero
                  bltu         t3, zero, 187f
                  sltiu        s6, s10, -531
                  srai         a0, t3, 25
                  beq          a5, a4, 178f
                  or           t1, a1, s11
                  srli         a0, s1, 18
                  beq          a4, t3, 187f
174:              sltu         a4, s10, gp
                  andi         s7, ra, -863
                  auipc        s7, 661356
                  srli         a5, a5, 3
178:              blt          s3, a3, 197f
                  slt          s7, s7, s9
180:              add          ra, t0, s8
                  andi         zero, t6, -1006
                  srl          s2, ra, a3
                  sub          s6, t1, s3
                  xori         s8, s8, 433
                  ori          sp, t3, 1621
                  and          t2, s7, zero
187:              auipc        t4, 555667
                  blt          s10, t4, 191f
                  xor          ra, s2, s9
                  nop
191:              andi         s8, zero, -388
                  or           a7, s4, s7
                  srl          tp, t4, a1
                  addi         t2, s2, -17
                  xor          gp, s4, a0
                  bge          s4, s10, 208f
197:              bltu         s1, s5, 204f
                  xori         tp, a7, -1526
                  sltiu        a7, s6, 318
                  sub          t4, t1, t6
                  lui          sp, 280476
                  srli         s1, s10, 4
                  ori          s5, t0, 1709
204:              srli         s10, zero, 27
                  bne          a4, t1, 208f
                  lui          a5, 266490
                  beq          a3, a0, 209f
208:              slti         t5, s7, -1082
209:              nop
                  xori         ra, zero, 1679
                  srl          s10, s10, zero
                  sra          a3, s4, a7
                  srai         a0, a3, 28
                  srl          a7, t2, tp
                  sltu         s7, t3, s9
                  slt          a2, t0, s9
                  bltu         a1, t1, 229f
                  slti         sp, s3, 709
                  slt          s8, t1, s7
                  sltiu        s1, t2, -2026
                  srai         tp, s6, 10
                  sll          s7, t1, a3
                  srai         t1, s10, 14
                  srai         a2, zero, 27
                  slli         sp, s2, 2
                  add          a3, t3, s9
                  sra          s9, a7, s2
                  sltiu        t0, a3, -1553
229:              blt          t6, s3, 232f
                  beq          s5, s7, 233f
                  beq          sp, a4, 244f
232:              add          tp, s6, t2
233:              and          sp, s1, a7
                  sltiu        gp, a1, 1990
                  addi         s2, s6, 1557
                  sra          s2, s4, a3
                  beq          a0, a7, 238f
238:              and          a7, sp, gp
                  srl          t1, a3, ra
                  addi         s0, s0, 225
                  sltiu        s0, t2, 1785
                  sra          a7, s11, s10
                  ori          a5, t4, -951
244:              slti         s8, t4, 367
                  bgeu         a5, t6, 259f
                  sltiu        s11, s1, 471
                  bltu         t2, s1, 256f
                  andi         a4, a3, -225
                  sltiu        a0, s7, 1879
                  add          a5, a6, t1
                  or           a7, s6, s0
                  beq          t2, a0, 260f
                  slti         zero, s4, 377
                  xor          s6, s9, s5
                  xori         a4, gp, -1057
256:              beq          a1, zero, 263f
                  and          tp, t4, a4
                  srai         s10, s8, 25
259:              add          a5, t3, a5
260:              beq          a5, s7, 272f
                  andi         a0, a6, 1221
                  xor          t5, s3, a1
263:              sltu         a5, sp, a3
                  auipc        a7, 686568
                  ori          a4, t2, -1211
                  xor          gp, a5, t0
                  sll          a2, t0, ra
                  blt          s1, s4, 273f
                  slti         tp, t4, 294
                  bne          a4, a6, 277f
                  ori          s2, tp, 1008
272:              xori         s10, s4, 499
273:              lui          zero, 28691
                  sra          t5, t4, s2
                  sltu         s0, a7, a2
                  add          t2, a3, s6
277:              add          a4, a3, sp
                  srai         t4, s2, 4
                  nop
                  bltu         s7, a7, 282f
                  sll          ra, a1, s9
282:              bge          t1, s3, 300f
                  slt          s9, a0, sp
                  srli         a0, tp, 24
                  nop
                  sltu         sp, a3, t5
                  lui          s11, 475459
                  and          t0, t2, a1
                  sltu         a3, t1, sp
                  ori          t1, t3, -1927
                  bltu         s3, s8, 302f
                  srai         t5, s5, 25
                  bge          t6, a4, 304f
                  slti         a1, t5, -110
                  sub          a4, zero, a5
                  slt          a7, ra, s5
                  sll          gp, s3, s2
                  andi         sp, a2, 928
                  bgeu         s0, t2, 302f
300:              sltu         s5, zero, a4
                  slt          s5, t5, a0
302:              sub          s0, a0, s6
                  srli         s8, t5, 19
304:              addi         a7, gp, 584
                  xor          sp, s2, t0
                  blt          a7, s10, 311f
                  or           s6, s1, s4
                  lui          gp, 130139
                  bge          t5, t6, 322f
                  srl          a7, a2, a1
311:              sll          s2, s3, t3
                  bne          t2, s9, 323f
                  beq          zero, a4, 316f
                  andi         gp, a7, -1985
                  bge          s1, s4, 327f
316:              bge          a3, t3, 320f
                  bgeu         a4, s6, 336f
                  lui          t1, 99956
                  slt          t4, t4, s6
320:              xor          s9, t4, t3
                  sltiu        t2, s9, -1762
322:              sltiu        tp, s4, -1807
323:              beq          t4, s7, 330f
                  sltu         a2, a3, s11
                  sub          s9, t4, s4
                  bge          s6, t3, 328f
327:              nop
328:              sll          t5, s1, a2
                  sltiu        s5, s6, -425
330:              lui          s2, 884448
                  bne          gp, s4, 342f
                  sra          a2, a0, s6
                  sll          zero, s10, sp
                  sltu         t5, t6, a7
                  and          t2, a1, s6
336:              slti         s7, s0, 752
                  srl          t5, a1, tp
                  sra          t2, a5, s5
                  srai         a2, zero, 5
                  sltiu        t0, t6, -1817
                  beq          s5, a1, 350f
342:              sll          t5, ra, s3
                  bge          a6, a7, 346f
                  sll          t0, s11, sp
                  slti         s2, a3, 1719
346:              bgeu         s11, s8, 349f
                  or           s8, s0, t5
                  xor          s10, s11, s11
349:              lui          ra, 749175
350:              addi         s5, a6, 1308
                  andi         s6, gp, -566
                  bne          a3, s4, 355f
                  srli         sp, s5, 22
                  blt          a2, tp, 355f
355:              xori         t4, zero, -521
                  slli         sp, a4, 24
                  srl          s6, s6, ra
                  sra          a3, zero, s1
                  sltiu        t5, a7, 1250
                  xori         a5, ra, 378
                  lui          s6, 966611
                  addi         t0, gp, -1568
                  srli         a7, s0, 2
                  srai         s11, s8, 26
                  add          s1, a7, sp
                  and          s1, t2, ra
                  sltiu        s11, s4, -1398
                  xori         s11, s8, -1570
                  beq          s8, t6, 381f
                  sltu         tp, a2, a0
                  sra          s1, a3, s2
                  andi         a7, t4, -812
                  slti         s8, t6, -693
                  xor          gp, s6, s5
                  lui          s5, 1047120
                  sltiu        s7, a1, 347
                  slt          a1, sp, zero
                  slt          a3, s3, t5
                  sub          s1, s9, t5
                  and          s8, t3, a2
381:              lui          s8, 763891
                  sub          a0, s10, t3
                  xor          a0, gp, gp
                  addi         a0, t2, 132
                  srl          a0, gp, s5
                  lui          s10, 337299
                  auipc        t5, 326161
                  bltu         s11, a0, 402f
                  slt          a2, s0, a4
                  or           s5, s6, tp
                  lui          t2, 265072
                  sub          sp, s4, s4
                  slli         t2, s5, 19
                  sll          s10, a4, a0
                  and          t4, t0, a3
                  slt          tp, zero, s7
                  xor          s9, zero, a1
                  srl          s10, a6, s11
                  sltiu        sp, t6, -127
                  srai         a0, zero, 25
                  auipc        gp, 649061
402:              or           a7, s6, t5
                  ori          t4, s1, -1590
                  and          a1, a1, s9
                  nop
                  srai         a3, s11, 14
                  slli         t0, s9, 19
                  and          ra, t2, s0
                  and          a2, t5, s1
                  andi         a7, a3, -44
                  nop
                  lui          zero, 783721
                  blt          zero, a7, 425f
                  addi         a3, s3, 1374
                  sub          t3, s7, s7
                  sll          s7, a3, a2
                  sra          t2, a1, s11
                  srli         s2, s2, 25
                  nop
                  xori         s9, s6, -607
                  bgeu         s0, a4, 439f
                  lui          s5, 884386
                  sltu         t1, t5, tp
                  sll          s5, t6, s8
425:              nop
                  and          s11, s0, a1
                  auipc        s10, 158564
                  lui          s11, 480408
                  ori          a7, a1, -1745
                  sll          t1, zero, s11
                  bgeu         s1, t2, 438f
                  sltiu        s6, s11, -1581
                  or           t0, a4, s5
                  xor          s1, t3, s11
                  sub          s5, s8, gp
                  sltiu        s6, t6, 1380
                  xor          a6, s10, s9
438:              auipc        s8, 813158
439:              sltiu        t2, a3, -1288
                  slt          s2, a3, t3
                  srai         a0, s11, 18
                  bge          a5, s4, 462f
                  xor          s11, s4, s5
                  bgeu         a2, a4, 451f
                  andi         a2, s3, 678
                  beq          s2, zero, 454f
                  slli         t2, t2, 23
                  sll          a0, s6, s6
                  sll          s10, a5, a3
                  lui          sp, 919791
451:              slli         t2, t4, 0
                  nop
                  sll          a7, s1, t0
454:              andi         sp, a6, 1260
                  bge          t3, a5, 469f
                  bltu         a1, s2, 464f
                  slt          a0, s6, ra
                  lui          ra, 928419
                  sub          gp, s2, a7
                  nop
                  bltu         s10, s1, 480f
462:              bne          s5, s1, 465f
                  add          a0, a0, s6
464:              slti         a7, a7, 23
465:              auipc        t3, 501033
                  or           a0, a6, a6
                  slli         t5, a0, 1
                  beq          s3, s9, 474f
469:              ori          t1, a1, -1462
                  sltiu        s11, t1, -1703
                  auipc        a2, 853168
                  auipc        ra, 54795
                  slti         s11, t6, 1354
474:              xori         a3, t4, -385
                  bge          s1, zero, 477f
                  addi         t4, a6, -1206
477:              sll          ra, a0, s1
                  add          s7, t1, t0
                  addi         a6, a1, 1752
480:              blt          s4, s2, 492f
                  auipc        a2, 971357
                  slti         a0, ra, 342
                  xori         a3, gp, 1326
                  bne          s8, t4, 497f
                  srai         a5, s8, 29
                  slti         s1, t4, -323
                  lui          s6, 161909
                  bne          s1, s8, 502f
                  sra          zero, s8, ra
                  sltiu        s5, s5, -213
                  sll          a0, t2, a5
492:              sra          s5, s7, s0
                  ori          ra, t3, 848
                  and          t0, s8, t6
                  or           t4, a0, t4
                  ori          s5, t2, -720
497:              sub          sp, a6, a3
                  sltiu        gp, zero, -1335
                  bltu         s11, t1, 510f
                  sll          s2, a5, sp
                  add          a6, s6, s11
502:              srai         s2, s11, 25
                  bgeu         a4, s11, 506f
                  xori         zero, a3, -598
                  srli         t3, a3, 15
506:              bne          t4, ra, 510f
                  beq          t3, s6, 513f
                  sll          t3, t0, t4
                  slti         t1, t6, -694
510:              andi         s11, s7, -91
                  sltu         s1, t5, t1
                  sll          s9, zero, a7
513:              xor          t0, a0, t2
                  bltu         t3, t2, 517f
                  bgeu         t4, s10, 534f
                  or           sp, t6, a2
517:              slt          t3, t0, a1
                  xori         s10, a4, 1366
                  and          s7, a2, a0
                  sub          s8, t5, s1
                  lui          t4, 647809
                  srai         s1, gp, 4
                  andi         t0, s0, 1130
                  beq          s2, t3, 533f
                  xori         s1, t0, -1579
                  and          a0, s6, t3
                  or           s1, a7, gp
                  blt          a5, t6, 535f
                  slt          s10, t1, s10
                  blt          t6, a3, 541f
                  srai         s9, s7, 31
                  or           t3, s0, s7
533:              add          sp, s4, t4
534:              sltiu        s10, t4, 535
535:              sltiu        t2, s5, 1263
                  auipc        s0, 49992
                  srai         t5, s9, 3
                  or           t3, a5, gp
                  bgeu         s6, a0, 546f
                  slti         s10, sp, -784
541:              sra          t1, t6, s11
                  srli         s10, t1, 26
                  sll          a5, s0, sp
                  sltiu        s11, t2, -1620
                  blt          t3, t1, 557f
546:              sra          t3, s7, a3
                  lui          a0, 1008670
                  ori          a3, s5, 1823
                  nop
                  sub          s6, s1, t3
                  blt          s8, s9, 552f
552:              srl          s11, a7, t5
                  add          s6, s11, s5
                  bltu         zero, s3, 572f
                  auipc        t4, 726300
                  add          t3, t6, t2
557:              srai         s9, a7, 15
                  or           t3, t4, t5
                  bgeu         a7, tp, 562f
                  sll          t4, s11, t0
                  sub          zero, t1, a6
562:              sltiu        s10, t4, -152
                  xori         a3, t3, -860
                  srli         t0, a0, 23
                  blt          t5, s5, 584f
                  srl          t3, t5, a2
                  srli         s11, a2, 16
                  auipc        tp, 531124
                  xor          a0, s0, t6
                  andi         t0, t2, 1896
                  sltu         s11, s4, s1
572:              bne          gp, t0, 574f
                  bge          s10, s7, 580f
574:              srli         s7, a4, 27
                  add          t1, t4, s1
                  xor          s0, s10, a4
                  bltu         s6, a4, 589f
                  add          s7, s6, a3
                  ori          a7, s1, 596
580:              srl          s5, s5, s1
                  and          ra, a5, s11
                  sltiu        a5, s1, -1315
                  sra          a2, a5, s7
584:              addi         a4, s0, 935
                  xor          s7, t6, s4
                  bltu         zero, t4, 589f
                  addi         a7, a4, 540
                  sll          t3, t2, s11
589:              blt          a6, a0, 594f
                  add          s1, s8, zero
                  andi         a0, s8, -509
                  or           s9, ra, s11
                  sltiu        a0, s4, -1059
594:              slti         a3, a0, 1817
                  srai         sp, s3, 10
                  or           a6, a5, s2
                  or           s11, s6, s9
                  blt          s4, t1, 601f
                  andi         s2, s1, 2020
                  bne          a7, a3, 602f
601:              srli         a0, a3, 16
602:              sra          a6, a6, zero
                  bge          a2, s9, 615f
                  sra          s9, t4, t1
                  lui          s10, 914822
                  xori         s0, t1, 550
                  bgeu         s10, s2, 627f
                  blt          ra, t0, 616f
                  and          s10, t2, a3
                  bge          a1, s0, 618f
                  bge          ra, a6, 623f
                  sra          a2, a2, zero
                  andi         t5, t0, 174
                  ori          a4, zero, -1242
615:              slt          s5, s0, zero
616:              bne          t5, a0, 630f
                  nop
618:              slli         a6, t3, 24
                  slti         s11, a1, 1245
                  sltu         t0, t6, t1
                  srl          zero, t4, t5
                  srli         sp, s5, 20
623:              beq          a4, s1, 642f
                  ori          sp, t1, 246
                  sub          tp, a0, a4
                  sub          tp, s11, t4
627:              addi         a1, a5, 263
                  blt          a0, t3, 637f
                  lui          s5, 1041530
630:              slti         s6, a4, -485
                  add          sp, gp, a2
                  sll          t4, a2, s3
                  srl          t5, s2, t1
                  srl          s1, s1, s7
                  auipc        a1, 6662
                  andi         a2, s0, -119
637:              and          s6, s0, s8
                  slli         s6, sp, 10
                  srai         a3, s6, 28
                  sltiu        tp, a0, -1227
                  andi         s9, a7, 1745
642:              xor          ra, s0, s7
                  beq          s7, s8, 655f
                  and          a7, s7, t5
                  beq          t5, a7, 648f
                  sub          t0, a3, s9
                  slt          s9, t3, a7
648:              and          a3, s11, tp
                  blt          a2, s2, 655f
                  srl          t1, zero, t1
                  xor          a4, s1, s3
                  auipc        a5, 936177
                  or           a5, s8, t0
                  nop
655:              or           s5, a7, zero
                  blt          s1, t6, 668f
                  srl          gp, t6, tp
                  srai         a2, s6, 11
                  bltu         s10, s10, 666f
                  xori         t4, t5, -1246
                  nop
                  bge          a0, s0, 664f
                  bgeu         a3, s0, 671f
664:              srl          a5, ra, a6
                  xori         a3, a0, 9
666:              lui          s1, 103474
                  slt          t2, s8, s7
668:              addi         s11, a0, 39
                  slli         t5, zero, 13
                  ori          a3, t1, -257
671:              srai         s9, s10, 28
                  nop
                  sltiu        zero, s2, 67
                  or           s7, a1, t0
                  andi         s7, s9, -701
                  nop
                  srai         t2, t5, 20
                  auipc        a2, 470727
                  or           t2, ra, s3
                  slti         tp, s1, 1764
                  slt          a1, zero, tp
                  blt          ra, a4, 693f
                  auipc        s9, 536836
                  ori          t1, s9, -91
                  srli         t3, t2, 29
                  srai         t5, s2, 5
                  lui          t2, 517426
                  xor          s10, s10, s10
                  xori         s2, s9, -1141
                  andi         t2, t0, 179
                  bltu         a4, t4, 703f
                  blt          a6, a0, 695f
693:              or           s11, gp, s11
                  sra          t4, t6, ra
695:              auipc        a0, 259735
                  sra          zero, a6, a1
                  add          a2, s4, a3
                  sltiu        s8, s11, -374
                  bne          a2, zero, 713f
                  nop
                  srai         a2, s0, 13
                  sltu         s5, a0, t1
703:              add          tp, s11, s4
                  sll          s6, tp, t5
                  slti         s1, s2, -1012
                  sll          s6, s9, s10
                  bge          t3, s8, 715f
                  lui          ra, 1012193
                  xor          s9, a2, t4
                  auipc        t0, 428326
                  bge          ra, t0, 715f
                  bltu         s10, t2, 715f
713:              sltu         s10, a7, sp
                  slti         a5, a7, 72
715:              and          t3, s5, a3
                  ori          s7, a3, 1604
                  bne          t2, t1, 735f
                  auipc        s5, 309086
                  srai         a3, a0, 19
                  xori         a0, t1, 1276
                  slt          s2, t5, zero
                  sra          t3, a7, s2
                  srli         s6, a3, 12
                  blt          s9, s11, 726f
                  addi         t3, t4, -1320
726:              ori          s1, a6, 1803
                  srli         s8, t4, 28
                  sltiu        t2, t3, 750
                  slti         t0, a0, -1470
                  and          s10, t1, s3
                  slti         s11, t5, -771
                  sltiu        s8, s6, -795
                  slli         a3, s3, 23
                  bltu         t5, s7, 735f
735:              addi         t3, t4, 754
                  sub          s8, s1, t0
                  bgeu         a1, a5, 748f
                  srl          a5, s9, s1
                  andi         a5, a1, -1708
                  and          s8, a6, s11
                  sll          a3, s4, t1
                  srli         s1, tp, 10
                  sub          s8, a5, t2
                  add          s6, s9, s6
                  add          t2, s3, t1
                  beq          zero, s9, 753f
                  and          t4, zero, sp
748:              beq          sp, a2, 762f
                  lui          s2, 760921
                  and          a0, t1, t2
                  bltu         s10, a3, 758f
                  auipc        a7, 375388
753:              slti         s5, ra, 523
                  nop
                  sll          sp, s10, s6
                  slli         s11, s4, 17
                  auipc        a5, 69948
758:              slli         a2, s9, 14
                  bne          t0, a0, 779f
                  xori         a4, s4, 182
                  srai         t3, s2, 13
762:              beq          s6, zero, 775f
                  beq          t6, t3, 768f
                  addi         tp, t5, 1381
                  bltu         a6, gp, 768f
                  xor          gp, tp, t4
                  sra          s8, ra, s8
768:              srl          ra, t1, s11
                  sub          gp, a5, t3
                  ori          s0, t2, 1671
                  srli         zero, sp, 20
                  sltiu        t4, a5, 598
                  sra          s2, tp, a0
                  xori         gp, s10, 1604
775:              beq          t6, gp, 787f
                  slti         a7, zero, 420
                  sra          t5, s9, sp
                  nop
779:              sra          sp, s1, s4
                  sra          s8, a6, a5
                  nop
                  sll          s8, s6, s8
                  addi         a1, a4, -1777
                  addi         s7, gp, -1188
                  srli         tp, t0, 3
                  sll          a2, s0, a6
787:              and          zero, a0, tp
                  srli         t3, t2, 27
                  bne          s7, ra, 808f
                  slti         t5, s7, -504
                  nop
                  bne          gp, s11, 795f
                  srli         tp, a2, 14
                  srai         gp, a3, 27
795:              slli         s7, gp, 24
                  sra          t4, s2, a2
                  sll          s7, s6, sp
                  srai         t1, a0, 13
                  sltu         a2, zero, s1
                  addi         t5, a4, 1118
                  lui          t3, 698767
                  sub          a4, ra, s7
                  ori          tp, s6, 1860
                  xori         s11, s0, 2036
                  ori          ra, s2, -13
                  add          a7, t4, tp
                  srl          a7, t0, a1
808:              beq          ra, s1, 811f
                  or           s9, s9, t5
                  nop
811:              bge          t1, a2, 829f
                  srl          a4, a3, s7
                  slti         a6, s8, 1424
                  add          zero, a1, s7
                  or           a3, a2, s3
                  srli         a0, t0, 0
                  sub          t2, a5, tp
                  or           s11, t4, t2
                  slli         ra, a6, 21
                  bltu         s1, s9, 840f
                  nop
                  bge          s2, s2, 836f
                  ori          a1, t1, -962
                  andi         t5, s5, -1372
                  srai         s5, t0, 26
                  auipc        ra, 484069
                  bge          t3, s8, 838f
                  bgeu         a7, t0, 831f
829:              and          s11, tp, a2
                  srai         s7, a3, 26
831:              bgeu         s6, s9, 845f
                  andi         a3, t6, -1424
                  slt          a7, s10, a7
                  srl          a1, tp, a0
                  andi         t0, t5, -416
836:              xori         s6, s8, 342
                  bne          s1, a1, 846f
838:              blt          s2, a0, 842f
                  bgeu         t4, t6, 842f
840:              slti         a1, a7, 1188
                  slti         s7, s11, -1943
842:              slli         s0, s4, 15
                  ori          t3, t2, -1450
                  slli         a1, t1, 29
845:              blt          s5, a1, 853f
846:              slti         gp, t4, -220
                  sltu         s11, tp, s5
                  bltu         s7, gp, 859f
                  bltu         s6, sp, 854f
                  sra          s2, a6, a7
                  andi         s11, a6, 1299
                  slli         t2, s7, 8
853:              srli         s5, s9, 24
854:              bgeu         t6, t4, 857f
                  nop
                  lui          tp, 632333
857:              sub          gp, s1, s9
                  bgeu         t1, s0, 865f
859:              sra          a5, s5, gp
                  blt          s1, t1, 867f
                  srai         a5, a0, 28
                  sll          t5, t3, a6
                  sll          s0, t1, s7
                  srl          s5, tp, a5
865:              bne          s4, a0, 873f
                  sll          a3, a5, gp
867:              blt          a6, gp, 870f
                  add          ra, a0, ra
                  srai         s11, sp, 31
870:              slli         t2, s0, 21
                  bgeu         a4, t6, 883f
                  auipc        s2, 703801
873:              bltu         a1, a2, 892f
                  nop
                  sra          a0, s4, s3
                  bgeu         t6, s6, 888f
                  slt          s8, s3, s11
                  beq          t6, ra, 880f
                  sra          a4, a2, zero
880:              slti         s2, s1, 365
                  slt          s6, t3, gp
                  bne          t2, a1, 894f
883:              or           a7, a0, t1
                  bgeu         s7, s9, 897f
                  andi         tp, a6, -1248
                  slt          a6, a1, zero
                  slti         a0, a6, -182
888:              andi         a0, a4, -2020
                  bne          t4, s0, 890f
890:              nop
                  slli         a4, gp, 4
892:              sub          tp, t0, zero
                  slt          a1, zero, t0
894:              sll          s1, a2, a2
                  or           t1, zero, t5
                  auipc        s9, 419604
897:              and          t1, s3, a5
                  or           tp, sp, t4
                  nop
                  addi         zero, a0, 1119
                  nop
                  bge          t4, a2, 909f
                  nop
                  add          a5, s9, t6
                  bltu         tp, s1, 917f
                  slt          t0, t5, t2
                  sll          t5, t6, sp
                  srai         a7, t2, 16
909:              sra          s5, sp, s8
                  bltu         tp, t0, 912f
                  sra          s6, a3, t6
912:              bgeu         a7, a6, 931f
                  bgeu         sp, t3, 919f
                  srli         a2, a7, 18
                  sltu         zero, gp, t4
                  auipc        s8, 490745
917:              srl          tp, a6, t6
                  bgeu         ra, s5, 922f
919:              ori          ra, t6, 1859
                  xor          sp, a7, s11
                  sltu         t1, gp, a1
922:              bgeu         ra, s10, 925f
                  bgeu         s2, s5, 934f
                  srli         a5, s2, 7
925:              srl          t2, s4, s2
                  or           s11, a0, tp
                  bgeu         s4, a7, 928f
928:              srli         s1, sp, 14
                  andi         t2, t0, -405
                  sub          sp, s10, a5
931:              slti         s6, s2, 395
                  or           ra, a1, s7
                  ori          ra, a7, 1035
934:              add          t1, s6, zero
                  nop
                  slli         t0, t5, 28
                  nop
                  bltu         a6, s4, 945f
                  slt          t5, gp, a0
                  blt          a7, a0, 948f
                  srai         ra, s5, 6
                  beq          s4, s6, 956f
                  auipc        t4, 337611
                  srl          s2, t4, zero
945:              xori         sp, a2, -1630
                  slt          a3, sp, gp
                  bne          s11, sp, 958f
948:              srl          gp, a5, t6
                  or           t0, s3, zero
                  slti         a5, sp, -549
                  addi         a7, s7, -1336
                  auipc        t4, 726416
                  sub          t0, t6, s11
                  sll          zero, t4, a2
                  add          s2, t6, s8
956:              blt          a3, a4, 975f
                  srl          a1, t5, a3
958:              or           t3, s4, s7
                  blt          a0, s7, 978f
                  sub          a1, a5, a7
                  addi         gp, s5, 1926
                  bge          s9, s11, 982f
                  xor          a4, a3, s1
                  lui          t4, 949041
                  blt          a4, gp, 979f
                  slti         t4, a4, 1080
                  ori          s6, t6, -1031
                  srl          t2, s1, s2
                  srai         t2, a7, 0
                  bge          gp, s9, 973f
                  andi         t1, zero, -2041
                  add          zero, t6, s5
973:              bge          s3, s4, 980f
                  xori         a0, s0, 1935
975:              bltu         a7, t4, 988f
                  bge          t4, a5, 978f
                  slli         a2, t6, 18
978:              xori         gp, t0, 910
979:              srl          a6, s1, s2
980:              and          s6, a6, s3
                  slti         s0, t4, -1204
982:              ori          a5, s2, 1872
                  slti         zero, s5, -1029
                  sll          s6, gp, a7
                  srai         a2, s4, 28
                  blt          tp, s0, 989f
                  bge          a7, s10, 999f
988:              xor          a5, a5, s8
989:              andi         a0, s11, 2004
                  ori          s0, t3, 1409
                  add          a7, a1, zero
                  or           s10, s10, s11
                  auipc        tp, 370435
                  auipc        t2, 292518
                  addi         a4, t4, -897
                  srli         t1, t6, 22
                  sltiu        a7, a5, 1812
                  bge          s4, tp, 1004f
999:              bgeu         t1, t4, 1004f
                  andi         ra, zero, 1961
                  sltiu        a4, a3, -325
                  sltiu        zero, a1, -273
                  bne          t5, a3, 1006f
1004:             slt          a0, s7, s2
                  xor          s9, t6, s8
1006:             add          a1, a4, s2
                  blt          s2, s9, 1014f
                  sltu         t1, s9, t1
                  addi         a6, s7, -1062
                  sra          s1, tp, a1
                  slti         s7, s0, -215
                  slli         a5, s6, 9
                  srli         t4, s11, 16
1014:             sra          s11, gp, s11
                  blt          gp, s2, 1027f
                  srli         s0, s0, 9
                  la           a3, region_1+804 #start riscv_load_store_rand_instr_stream_6
                  and          a0, a2, a2
                  sh           a7, -14(a3)
                  srli         a4, t3, 27
                  sra          s7, s3, zero
                  lbu          s9, -10(a3)
                  sw           t1, 8(a3)
                  sh           s7, 14(a3)
                  auipc        s6, 46318
                  sll          t3, zero, s8
                  sb           a3, 13(a3)
                  sb           s10, 16(a3)
                  lbu          a4, -12(a3)
                  lbu          a4, 1(a3)
                  srli         t4, a6, 21
                  or           t5, s10, s4
                  srli         gp, s5, 19
                  slti         a5, a0, 521
                  lb           t0, 15(a3)
                  lbu          s11, 3(a3)
                  slt          a6, s9, s3
                  sb           s7, -15(a3)
                  lbu          t3, -1(a3)
                  sltu         a6, a2, a0
                  sh           a0, 16(a3) #end riscv_load_store_rand_instr_stream_6
                  or           a6, t6, a0
                  bge          gp, s3, 1030f
                  slti         t0, s11, -1739
                  addi         zero, s4, -1062
                  add          t2, a1, gp
                  slli         a7, s4, 7
                  sll          t4, t6, t4
                  lui          a7, 605308
                  srli         t0, s4, 24
                  sub          a7, zero, a4
1027:             blt          s11, s4, 1030f
                  slt          s0, t6, a6
                  slti         zero, a6, -1301
1030:             nop
                  srli         t1, t0, 29
                  xori         s5, s5, -22
                  add          sp, t2, s10
                  andi         a6, s10, 313
                  slti         zero, a4, -1977
                  slt          a3, ra, a6
                  lui          a1, 785939
                  srl          gp, gp, a7
                  sltu         a0, a1, a1
                  srli         tp, s3, 30
                  slli         s0, s9, 4
                  xor          s10, s4, t3
                  bge          a0, s11, 1052f
                  lui          tp, 297680
                  xor          a2, s7, a1
                  sub          a1, tp, gp
                  slti         s11, s11, 1974
                  sra          t1, s9, a0
                  xor          tp, t3, a6
                  blt          t1, sp, 1068f
                  sra          s0, s10, s5
1052:             andi         t1, t0, -568
                  ori          s0, t1, 961
                  addi         s0, sp, 1560
                  slli         s7, a7, 23
                  sltu         a4, t5, s3
                  or           a0, s7, s5
                  slti         s6, s3, 628
                  srl          s2, t0, s1
                  blt          s4, t0, 1072f
                  bltu         s11, s0, 1063f
                  srli         s5, a6, 30
1063:             bgeu         a2, t6, 1071f
                  srli         t4, a2, 29
                  and          a4, a5, a5
                  srl          sp, s1, a4
                  or           t2, t4, t6
1068:             sltiu        s9, t4, 1526
                  slli         s5, s8, 5
                  add          a5, t1, a2
1071:             sra          a5, t2, s8
1072:             or           t2, ra, t0
                  sll          s1, a0, t1
                  auipc        ra, 371509
                  xor          s10, ra, s10
                  sltiu        a1, a1, -835
                  sub          t3, s0, t5
                  slt          tp, a7, t5
                  sra          a7, t2, a6
                  slt          zero, a2, s5
                  bltu         s0, sp, 1093f
                  slli         a6, gp, 20
                  srai         t4, tp, 28
                  sub          a1, s7, s0
                  bltu         s0, s0, 1088f
                  srli         t4, zero, 25
                  slti         s9, gp, -1401
1088:             bgeu         s3, s3, 1102f
                  addi         gp, a6, -1391
                  sll          t1, s7, gp
                  sltiu        a4, s8, -1814
                  blt          t1, ra, 1112f
1093:             lui          a1, 696522
                  sltiu        s11, s10, 224
                  auipc        t0, 844408
                  or           a7, s2, tp
                  bltu         s11, s0, 1099f
                  srl          t1, a5, s4
1099:             beq          gp, s8, 1107f
                  bgeu         a1, a3, 1112f
                  and          t3, t1, s10
1102:             andi         a2, s7, -339
                  slt          s8, a5, t1
                  nop
                  sltu         s2, t0, s8
                  bne          a6, s5, 1107f
1107:             srai         a6, a1, 15
                  sra          a0, zero, t4
                  nop
                  andi         t3, t1, -1912
                  bltu         s7, s11, 1123f
1112:             sra          a6, t1, a4
                  add          a4, t2, s7
                  xor          s8, s7, a2
                  sra          zero, t3, a3
                  xor          a0, s11, a5
                  sltu         s5, t2, s2
                  sltiu        a0, s11, 428
                  bne          t2, s3, 1126f
                  ori          s0, s4, -1621
                  srai         a2, s6, 23
                  bltu         s1, zero, 1129f
1123:             bge          a6, s1, 1142f
                  bltu         a0, t2, 1126f
                  nop
1126:             sra          t1, s8, gp
                  and          t2, a7, a1
                  beq          s7, t0, 1141f
1129:             lui          t1, 858024
                  bgeu         t2, t1, 1133f
                  and          a4, s8, ra
                  slt          a7, a2, gp
1133:             slti         a2, s5, -591
                  sltiu        s6, a3, -1069
                  nop
                  slt          gp, s1, a0
                  xor          a5, s9, s11
                  andi         gp, a5, -1438
                  bge          gp, s2, 1151f
                  bge          sp, s0, 1143f
1141:             sll          a5, s10, zero
1142:             beq          s3, s7, 1145f
1143:             lui          a4, 791286
                  add          a0, s6, a2
1145:             bge          s11, s0, 1164f
                  sltiu        s1, tp, 213
                  srli         zero, a3, 6
                  auipc        s11, 282858
                  nop
                  or           a3, zero, gp
1151:             sub          s1, s9, s7
                  srl          s1, t3, s1
                  slti         s9, zero, 675
                  bge          s10, gp, 1158f
                  nop
                  srl          s8, t1, s2
                  addi         s11, a5, 224
1158:             addi         a7, a3, 821
                  ori          gp, t4, 1410
                  sltu         s11, s6, t2
                  bge          a7, a1, 1164f
                  sltu         a3, s1, s7
                  lui          sp, 447090
1164:             addi         s11, s9, 752
                  xor          s11, s6, sp
                  beq          a3, s11, 1184f
                  bne          tp, ra, 1178f
                  lui          gp, 97937
                  xori         t5, zero, -219
                  bge          s11, t0, 1175f
                  sub          t0, s3, s11
                  bne          s4, t2, 1179f
                  slti         s2, a6, -1285
                  or           sp, s3, s6
1175:             xori         sp, a4, -910
                  and          t0, s11, a3
                  or           a3, s4, s9
1178:             beq          t2, s9, 1184f
1179:             xori         ra, s10, -1597
                  slt          t5, sp, s10
                  blt          s9, ra, 1192f
                  sll          a6, a1, a6
                  sra          a1, t4, a1
1184:             or           sp, t3, s10
                  ori          a4, t2, -951
                  add          a2, s1, s10
                  beq          a0, s11, 1201f
                  bltu         a1, t1, 1196f
                  bltu         sp, s7, 1198f
                  sltiu        s7, s7, 109
                  or           a6, sp, s9
1192:             auipc        ra, 51949
                  nop
                  xori         t4, s4, -717
                  srli         s10, sp, 18
1196:             andi         s8, t3, -1855
                  srli         s11, t1, 19
1198:             and          a6, t2, t3
                  bge          s10, s2, 1218f
                  slti         s2, s1, 759
1201:             slti         a0, t6, 1003
                  andi         s9, s1, 988
                  srli         a4, t0, 23
                  xori         s0, s6, -808
                  xor          a4, s6, a6
                  xori         a5, a3, 1480
                  sub          a4, a2, s2
                  blt          s9, t2, 1219f
                  sltiu        zero, tp, -1930
                  sub          gp, t2, t4
                  sltu         a0, a3, a7
                  xori         s7, ra, 1710
                  addi         a2, sp, 1633
                  slti         a0, a4, 1567
                  bltu         t3, ra, 1234f
                  bltu         s4, s5, 1228f
                  slti         t2, t1, -1260
1218:             xor          a5, s3, t5
1219:             sra          t3, s6, s1
                  sra          s7, a5, zero
                  addi         a1, a4, -358
                  srli         a7, t2, 8
                  slt          t5, s7, s6
                  and          ra, s6, t3
                  bne          a6, t1, 1228f
                  srai         s10, a0, 14
                  bgeu         s10, t5, 1233f
1228:             or           t3, s6, t0
                  sub          a4, s8, a1
                  and          a3, t4, t4
                  beq          s3, t1, 1251f
                  addi         s5, s7, 1306
1233:             sltiu        ra, a0, -1193
1234:             andi         s8, a4, -1128
                  sll          a4, a7, s10
                  bge          ra, a7, 1249f
                  bge          sp, gp, 1240f
                  srli         s0, t4, 21
                  sltiu        sp, a5, 865
1240:             sra          t1, tp, s9
                  or           s0, t0, t0
                  bne          s3, s2, 1256f
                  sltu         zero, a2, a4
                  bltu         s3, a5, 1248f
                  and          t1, a3, a1
                  srl          t0, t3, t6
                  bge          t5, a3, 1255f
1248:             blt          a5, t0, 1256f
1249:             slt          s1, a7, t5
                  slli         s0, s6, 16
1251:             xori         a3, a1, 1721
                  sltiu        a1, t3, 1805
                  xor          s8, sp, s5
                  srl          s5, a5, a2
1255:             xori         zero, gp, -1520
1256:             bgeu         s6, s3, 1259f
                  srai         s0, t0, 7
                  andi         s6, s5, -1784
1259:             xori         t1, s11, -614
                  xori         s7, tp, -653
                  xor          zero, s3, sp
                  addi         ra, sp, 1243
                  sll          t1, t1, t0
                  blt          s4, s10, 1276f
                  sll          s2, t4, zero
                  or           s7, s5, s2
                  slt          a2, t0, sp
                  sra          s2, s5, zero
                  bge          t6, sp, 1283f
                  srai         s1, zero, 16
                  slt          a6, s1, sp
                  sll          t3, t4, s9
                  bltu         zero, tp, 1280f
                  andi         zero, t3, 496
                  add          s11, t4, tp
1276:             slti         t2, a1, 1144
                  or           s1, s5, a1
                  sltu         a7, s6, a6
                  slt          t0, t2, gp
1280:             and          a7, s0, s7
                  nop
                  sra          a1, s0, s8
1283:             addi         zero, t5, -657
                  slt          s1, zero, s9
                  bge          a6, s0, 1297f
                  sub          t0, t2, s9
                  ori          a5, t3, 781
                  auipc        a3, 896208
                  sra          t2, gp, s2
                  xor          s0, s8, t4
                  ori          gp, s7, -944
                  bltu         t5, s6, 1310f
                  slt          s2, s9, zero
                  add          s8, s6, s4
                  sltiu        s2, s5, 777
                  blt          a1, s3, 1298f
1297:             sub          s5, s4, s7
1298:             addi         t2, s1, 524
                  xor          s2, s1, a4
                  slli         a5, a6, 5
                  bge          a1, a0, 1310f
                  sra          a7, a6, s8
                  ori          t0, a6, -1030
                  srl          s5, a5, s0
                  ori          t4, s8, -759
                  sltu         ra, tp, s7
                  xor          a5, s0, gp
                  lui          s11, 897370
                  nop
1310:             slt          s1, s5, t3
                  srli         a3, a0, 4
                  srai         ra, s1, 5
                  add          a1, t4, s5
                  or           gp, s10, t3
                  andi         a2, s3, 1360
                  srli         a6, ra, 12
                  nop
                  slti         s6, s4, -441
                  bltu         a3, t2, 1326f
                  sltu         s5, zero, a0
                  xor          s7, ra, s7
                  nop
                  nop
                  srai         a2, a7, 21
                  andi         s1, a5, -1745
1326:             bgeu         s8, a6, 1337f
                  andi         a0, t5, 4
                  sra          s9, t6, s6
                  beq          gp, a5, 1341f
                  srli         sp, s2, 1
                  addi         t3, s10, -348
                  slli         s1, zero, 17
                  lui          a1, 901114
                  sll          gp, s10, a0
                  bge          s7, t1, 1338f
                  lui          a3, 679742
1337:             sll          a4, s10, a3
1338:             addi         a2, t0, 738
                  slt          a2, s3, zero
                  srai         t0, a3, 31
1341:             auipc        gp, 659551
                  blt          s0, a0, 1349f
                  or           a2, a7, s9
                  add          s11, s6, ra
                  srl          s9, a5, zero
                  and          s11, a6, s3
                  xori         t3, s8, 422
                  srl          a5, tp, a5
1349:             sltiu        s5, tp, 376
                  slti         gp, t3, 460
                  xori         t0, t0, 455
                  sltiu        sp, s8, -1232
                  beq          a1, t2, 1355f
                  auipc        a1, 901305
1355:             sub          s9, s3, ra
                  add          tp, s11, s6
                  xor          a4, a7, gp
                  slt          a2, a7, s6
                  sltiu        s1, s11, -402
                  andi         zero, zero, 1630
                  bge          s6, s9, 1366f
                  add          a0, s4, t1
                  slt          s11, s9, s7
                  bltu         t1, a7, 1367f
                  bge          s11, s2, 1366f
1366:             bgeu         a4, t6, 1378f
1367:             xor          s7, ra, a4
                  slli         s8, s7, 19
                  ori          s1, t5, -851
                  blt          gp, zero, 1374f
                  add          s9, tp, sp
                  sltu         s1, t4, a4
                  slli         a7, t4, 6
1374:             sltiu        a7, s1, 1628
                  bltu         s10, s11, 1378f
                  slti         s1, a7, -737
                  sra          zero, ra, s9
1378:             bgeu         t5, s10, 1381f
                  slti         t1, s1, -338
                  sltu         a1, t1, zero
1381:             or           a1, s8, t0
                  bne          s9, s6, 1400f
                  addi         a2, sp, 1120
                  srai         sp, s11, 2
                  sltu         s5, t3, a0
                  andi         t2, a4, 1096
                  add          t2, t5, tp
                  slti         s6, t2, -1453
                  and          a2, a7, s6
                  srai         a3, s5, 6
                  addi         a2, t2, 516
                  nop
                  sltiu        zero, s3, -52
                  andi         s1, a4, -72
                  sltu         t0, zero, t5
                  blt          t2, a1, 1409f
                  slli         a1, zero, 23
                  sltu         t4, a5, s9
                  addi         sp, gp, 1812
1400:             sltiu        sp, a0, -1202
                  blt          t0, t3, 1408f
                  bne          gp, tp, 1411f
                  srli         zero, s5, 22
                  beq          s11, a6, 1407f
                  xor          tp, s2, a4
                  add          s2, zero, s11
1407:             bltu         a2, a4, 1411f
1408:             add          a4, t0, t1
1409:             srli         a7, s7, 2
                  add          zero, zero, t4
1411:             slli         s10, a4, 30
                  srli         a7, a1, 5
                  sltiu        a5, s8, -1296
                  xor          a0, s11, a5
                  slli         t4, a6, 24
                  lw           ra, 4(s3)
                  slti         tp, t1, 2002
                  addi         s3, s3, 64
                  slli         s10, s5, 18
                  and          s5, zero, s8
1863:             addi x10, x1, 0
1863:             jalr x10, x10, 0
sub_4:            ori          a0, t1, 1777
                  sltu         s0, a3, s3
                  addi         s3, s3, -48
                  sw           ra, 4(s3)
                  add          s11, zero, s10
                  srli         a5, a6, 1
                  la           sp, region_1+1365 #start riscv_load_store_rand_instr_stream_5
                  lh           t5, -223(sp)
                  ori          s2, t3, 2
                  sw           s3, 87(sp)
                  lui          tp, 411288
                  lw           zero, -93(sp)
                  sb           s11, -106(sp)
                  auipc        a7, 286314
                  or           s11, t1, a3
                  lb           t4, 74(sp)
                  slti         t4, t3, 1716
                  sltu         s11, s0, a5
                  or           a7, s8, zero
                  lui          a6, 158446
                  sb           s4, 18(sp)
                  lh           a7, 23(sp)
                  auipc        s0, 59280
                  auipc        a3, 603523
                  xor          a1, s2, t3
                  lb           gp, -242(sp)
                  slt          s2, s5, ra
                  xor          a1, t2, a2
                  xori         s1, s8, 960
                  nop
                  srli         a4, s1, 12
                  lbu          gp, -126(sp)
                  auipc        a4, 438634
                  lui          s10, 643790
                  lbu          s7, -248(sp)
                  sb           zero, 245(sp)
                  add          a6, a6, t0
                  addi         gp, s7, -1137
                  sll          t5, s11, s5
                  sll          zero, s2, ra
                  lh           s1, 127(sp)
                  lb           s6, 116(sp)
                  lbu          a5, -12(sp)
                  sub          a2, s1, s9
                  xori         s11, s9, 1088
                  srai         a7, a0, 8
                  ori          a2, s6, -1384
                  lhu          s2, 173(sp)
                  sb           t3, -153(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1720 #start riscv_load_store_rand_instr_stream_2
                  addi         ra, sp, -468
                  andi         a3, s10, 2014
                  and          s6, sp, a5
                  sb           s0, 67(sp)
                  sh           tp, -154(sp)
                  lh           a1, -42(sp)
                  srl          t2, a1, gp
                  sltu         t0, gp, s8
                  auipc        tp, 834434
                  sll          t2, t5, ra
                  sltiu        s5, zero, 873
                  lbu          s5, 233(sp)
                  slli         ra, s7, 20
                  srai         a5, a3, 6
                  lbu          s0, 72(sp)
                  lui          s8, 454505
                  sltiu        a4, s2, -1114
                  lbu          a5, 163(sp)
                  nop
                  lh           a3, -18(sp)
                  add          s8, ra, s4
                  lh           s0, 116(sp)
                  and          t3, s6, a5
                  lb           s2, 152(sp)
                  xori         t2, a7, 1384
                  sltu         a7, gp, ra
                  slt          gp, s5, a5
                  auipc        s1, 328714
                  and          s6, a2, s7
                  and          t1, t6, s4
                  sh           s0, 66(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+587 #start riscv_load_store_rand_instr_stream_3
                  auipc        s2, 463427
                  srli         a3, s3, 5
                  lb           gp, 8(sp)
                  srli         s1, a6, 13
                  srl          a7, t3, t4
                  lhu          s11, -9(sp)
                  lbu          t5, -6(sp)
                  xor          t2, t6, s3
                  lbu          s8, -5(sp)
                  lb           s10, 7(sp)
                  addi         s9, tp, 798
                  lb           a6, 14(sp)
                  slt          t2, s2, s7
                  lui          s11, 923282
                  lbu          t0, -12(sp)
                  lb           s5, -8(sp)
                  sll          s8, s11, s9
                  addi         a5, t2, 1160
                  lb           tp, 8(sp)
                  sb           t4, 4(sp)
                  xori         a3, t3, -1291
                  add          a4, t1, a2
                  srai         gp, t4, 9
                  sb           s9, 11(sp)
                  auipc        s1, 795106
                  lb           a2, -10(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+213 #start riscv_load_store_rand_instr_stream_0
                  xori         zero, t3, -953
                  lb           t1, 58(sp)
                  lhu          tp, 41(sp)
                  sra          s6, a4, s1
                  lw           t2, -49(sp)
                  or           zero, t5, a3
                  sub          a2, s8, s5
                  lw           a3, 51(sp)
                  lb           gp, -34(sp)
                  lb           s0, -14(sp)
                  slli         a2, s4, 20
                  lbu          a0, -54(sp)
                  lbu          a1, 60(sp)
                  sb           s9, -39(sp)
                  srli         s7, s5, 29
                  or           t5, t0, gp
                  sltu         t3, s11, a4
                  lb           a0, -24(sp)
                  and          t0, t5, t0
                  sb           a1, 58(sp)
                  add          a3, s4, t0
                  addi         t2, a1, -891
                  lb           t4, -30(sp)
                  slti         s1, s3, -607
                  lb           s2, -52(sp)
                  sll          s8, tp, t3
                  lb           ra, 10(sp)
                  srli         s7, s6, 6
                  sb           s0, 38(sp)
                  add          ra, a4, s9
                  lh           t1, -51(sp)
                  xori         s1, a4, 398
                  lbu          a7, -44(sp)
                  slt          s9, s10, s3
                  lbu          zero, 64(sp)
                  srai         tp, s0, 28
                  lw           a6, 59(sp)
                  lui          t3, 442024
                  lbu          a1, -28(sp)
                  lh           a5, 7(sp)
                  lb           zero, -6(sp)
                  lb           s11, -26(sp)
                  ori          s8, sp, 2000
                  addi         a3, tp, -828
                  lbu          s7, -22(sp)
                  lbu          s2, 59(sp)
                  slt          a2, ra, t3
                  lb           a7, -28(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_1+491 #start riscv_load_store_rand_instr_stream_1
                  lb           a4, -53(a0)
                  sll          t1, a1, zero
                  ori          s7, t3, 1666
                  lbu          s5, 36(a0)
                  and          s6, t2, s9
                  xori         s6, s7, -1043
                  sw           a2, 13(a0)
                  lb           a5, 52(a0)
                  andi         t2, a1, 1340
                  addi         s10, gp, -42
                  auipc        t1, 418843
                  sb           sp, 34(a0)
                  add          a4, s7, a6
                  and          s0, a2, s1
                  auipc        t2, 1003396
                  addi         tp, a4, 1167
                  sll          a2, a1, a1
                  srli         gp, s10, 29
                  sw           s6, -31(a0)
                  srl          a4, t6, s9
                  lbu          a1, 14(a0)
                  srl          s1, t2, a1
                  sh           a5, -55(a0)
                  slt          zero, sp, a6
                  sh           ra, -33(a0)
                  lhu          a7, -11(a0)
                  srli         zero, s1, 31
                  ori          s2, s5, -1875
                  lh           a7, 43(a0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+128 #start riscv_load_store_rand_instr_stream_4
                  sb           s11, -16(sp)
                  slt          s10, a7, t4
                  auipc        a5, 93752
                  sw           ra, -16(sp)
                  lb           s11, -1(sp)
                  lb           a7, -11(sp)
                  auipc        zero, 627510
                  lbu          a0, 10(sp)
                  srai         ra, a2, 25
                  sh           a2, 14(sp)
                  lbu          t2, -15(sp)
                  sltiu        s5, a7, 157
                  addi         s7, s10, -1432
                  xori         t3, s6, -881
                  xor          zero, s11, tp
                  sltu         t2, a1, ra
                  lbu          a4, 7(sp)
                  lh           s5, -6(sp)
                  slti         s2, s6, 70
                  sltiu        a0, a6, -226
                  andi         gp, a7, -502
                  lw           t1, 0(sp)
                  slli         s2, t5, 27
                  sb           tp, -13(sp)
                  sb           sp, 4(sp)
                  lhu          ra, -16(sp)
                  srli         s0, tp, 0
                  sll          s6, s11, a3
                  sra          ra, a4, ra
                  srl          s11, a6, zero
                  lb           t0, -11(sp)
                  lb           s0, -5(sp)
                  lh           ra, 6(sp)
                  ori          s2, a7, 1661
                  sb           s5, -4(sp) #end riscv_load_store_rand_instr_stream_4
                  srl          s9, s10, s9
                  srai         a5, a3, 26
                  addi         sp, s11, 1002
                  ori          a5, t6, 1787
                  slti         s7, s8, 1172
                  nop
                  sltiu        a2, t2, -503
                  sra          a3, s3, a6
                  andi         s0, t4, -1801
                  sll          a6, a2, s4
                  or           tp, t1, a4
                  beq          t0, s10, 29f
                  xori         t1, t6, 1702
                  sll          s9, t6, s9
                  sra          a7, a6, t3
                  xori         tp, t5, -441
                  xori         s7, sp, 1473
                  srai         zero, t3, 21
                  bne          t6, t5, 32f
                  bltu         t6, s5, 39f
                  add          t2, s2, t6
                  slli         t2, t5, 2
                  nop
                  nop
                  sltu         s9, s3, s4
                  srl          a3, t1, s6
                  sll          a3, t6, s3
                  ori          ra, a3, -1824
                  sll          a6, a1, a5
29:               bltu         s7, t4, 32f
                  sltiu        s7, s6, -1060
                  lui          s5, 834925
32:               srli         s7, a6, 28
                  bgeu         gp, tp, 44f
                  bge          s6, t3, 35f
35:               bltu         s8, a0, 48f
                  bne          a1, a1, 43f
                  bge          s4, a7, 44f
                  lui          s0, 578676
39:               sll          a4, a1, t6
                  auipc        t2, 37911
                  ori          s2, s0, -1676
                  sltu         a7, s7, t0
43:               addi         a6, s9, -1403
44:               auipc        s9, 948313
                  andi         s8, s7, -363
                  srl          sp, s8, s3
                  srai         tp, s8, 27
48:               auipc        s5, 257764
                  bne          s5, t4, 61f
                  sub          a4, s11, s5
                  sub          s0, a3, t3
                  lui          s5, 821833
                  xor          a5, s5, s5
                  blt          a2, a3, 73f
                  slli         a5, t0, 1
                  nop
                  srl          gp, s11, a4
                  slti         gp, s9, 44
                  sub          a6, a0, a7
                  sub          a1, t5, ra
61:               sll          s9, s6, zero
                  sltu         a4, s3, t2
                  add          a4, s1, a4
                  sltiu        s5, t6, 1904
                  beq          s11, a1, 84f
                  bltu         s7, t2, 84f
                  or           a0, s8, a5
                  bgeu         s3, a0, 69f
69:               blt          a7, s4, 78f
                  bne          a4, t2, 87f
                  addi         sp, t1, -1671
                  sltu         a1, s6, a1
73:               beq          t6, t3, 76f
                  beq          s1, s4, 85f
                  auipc        s11, 44515
76:               bgeu         s4, s3, 88f
                  auipc        t0, 72193
78:               or           s8, t6, t2
                  sltiu        a5, a2, 360
                  xor          s6, s0, a1
                  slt          s9, t4, t5
                  add          s7, a3, s4
                  beq          a5, t0, 91f
84:               bltu         ra, s9, 92f
85:               auipc        s0, 482779
                  sltu         s11, tp, s8
87:               auipc        a6, 343178
88:               and          t1, tp, t6
                  sra          a4, a2, s4
                  srl          a0, s3, s8
91:               sra          a0, t2, s1
92:               srl          sp, t3, s6
                  sra          ra, s4, s3
                  bgeu         a1, s3, 110f
                  and          zero, s9, ra
                  slti         s1, s3, 1367
                  nop
                  slt          s2, s5, t3
                  slli         a7, s4, 28
                  srli         ra, a7, 4
                  and          a6, t1, s9
                  slti         s2, s8, 693
                  sltiu        a4, a3, 516
                  bltu         s1, t4, 113f
                  auipc        t3, 133949
                  bgeu         a0, s6, 122f
                  blt          t1, s7, 120f
                  ori          a7, s5, 537
                  auipc        s5, 982628
110:              srai         s9, s6, 0
                  or           ra, a6, a4
                  addi         t0, s3, -718
113:              srai         s10, s0, 12
                  xor          a3, zero, s5
                  nop
                  sub          a3, s8, t3
                  xor          t3, s8, s11
                  xori         s7, s8, 1650
                  sra          a7, t4, ra
120:              addi         a5, a5, 29
                  sltiu        s6, t4, 626
122:              xori         t1, a3, -82
                  sltu         a3, t1, s9
                  auipc        ra, 187980
                  xori         s11, s3, -1482
                  auipc        s8, 380848
                  ori          s2, s11, 1880
                  bne          s4, gp, 148f
                  and          t2, s9, t3
                  srli         gp, s8, 31
                  xor          sp, t6, t4
                  srl          a1, s6, a4
                  slt          tp, s4, t3
                  bge          s1, s4, 142f
                  slt          t0, a3, t6
                  srai         t1, t0, 18
                  addi         sp, s0, 172
                  srli         s7, s0, 28
                  lui          s8, 752490
                  xor          ra, s3, s3
                  lui          s9, 250646
142:              bgeu         a7, s2, 146f
                  add          a7, s3, tp
                  bgeu         s5, s8, 149f
                  sll          t2, s5, a2
146:              sll          gp, a3, t4
                  slt          a7, s0, ra
148:              srl          s8, t6, ra
149:              auipc        s10, 599047
                  srai         a5, a7, 23
                  add          s8, s11, a5
                  bne          t4, a4, 164f
                  beq          t3, s9, 160f
                  xori         a5, s9, 690
                  bne          s7, s0, 171f
                  nop
                  srli         s6, s5, 14
                  auipc        a1, 225312
                  auipc        a7, 83517
160:              srl          t0, t2, t3
                  addi         s1, gp, 1623
                  srai         s5, s2, 8
                  blt          a1, t2, 176f
164:              andi         s6, a4, 800
                  xori         t5, t1, 347
                  nop
                  sra          t4, t1, a5
                  sra          s5, s5, t1
                  srai         a2, tp, 8
                  bltu         t1, s3, 184f
171:              ori          s5, s8, 1695
                  blt          a2, s5, 192f
                  srli         s5, zero, 4
                  sll          a6, a1, s2
                  slti         a4, s0, 1014
176:              addi         s11, s2, -628
                  lui          s0, 734195
                  bne          a4, a6, 183f
                  add          t4, s2, t3
                  sra          a5, s6, a1
                  nop
                  sltu         ra, a4, s7
183:              srli         t3, s0, 31
184:              bge          t0, a7, 185f
185:              slt          a0, a7, t3
                  slti         ra, tp, 642
                  and          a7, s9, s9
                  auipc        t1, 839809
                  auipc        a5, 400231
                  xori         t4, zero, -1817
                  bltu         a1, s2, 204f
192:              add          t0, t3, s8
                  srli         zero, t1, 11
                  slti         a3, a6, 672
                  slt          s6, t2, t5
                  blt          gp, t0, 199f
                  beq          t0, s4, 214f
                  and          a3, gp, a0
199:              andi         s11, s4, 1697
                  auipc        a5, 507765
                  bne          a6, t6, 212f
                  xori         a7, t5, -211
                  sub          a5, s1, t1
204:              lui          s7, 79635
                  or           a0, s6, s10
                  bne          s9, s11, 210f
                  beq          t0, s9, 215f
                  srl          s10, tp, t1
                  andi         s11, a7, 1096
210:              sltiu        s10, s6, -765
                  srl          a0, a2, a5
212:              beq          s7, a5, 219f
                  beq          zero, t1, 221f
214:              lui          a4, 405424
215:              xor          s8, a7, s7
                  slli         s8, sp, 8
                  bltu         s6, s7, 229f
                  bltu         t6, a0, 226f
219:              auipc        a2, 156656
                  bltu         s2, t4, 232f
221:              xori         t1, a1, -1335
                  slli         t4, s3, 25
                  sll          s6, t2, t5
                  nop
                  sltu         a3, s1, s4
226:              lui          s0, 311372
                  andi         zero, gp, -944
                  add          a5, t5, s1
229:              srl          t0, ra, a3
                  srli         t4, s1, 17
                  ori          s6, a4, -558
232:              sltiu        t2, s3, 1546
                  xor          s11, a0, s4
                  beq          t5, s6, 253f
                  srli         tp, s2, 8
                  beq          a3, a1, 255f
                  bne          t4, t2, 246f
                  blt          t0, t1, 256f
                  and          tp, s8, t5
                  bne          t2, a4, 251f
                  xori         t4, ra, -17
                  sra          a5, s6, s4
                  sub          t5, gp, a3
                  sub          s10, t6, t3
                  srai         s6, s10, 13
246:              nop
                  xori         t4, s4, -1734
                  andi         s9, t4, 1437
                  add          a1, sp, sp
                  xor          sp, s4, s7
251:              andi         a6, ra, -976
                  andi         tp, a4, 1028
253:              bne          a4, s3, 256f
                  srli         s0, a4, 30
255:              and          sp, s10, s4
256:              andi         t2, sp, 479
                  addi         t2, zero, 129
                  lui          s7, 903497
                  blt          s0, s0, 277f
                  auipc        t2, 188689
                  xor          t2, a1, sp
                  sll          t2, ra, tp
                  xori         s10, ra, 618
                  slli         t3, tp, 1
                  slt          t0, zero, s10
                  lui          gp, 264249
                  or           s9, a5, s1
                  and          s11, s4, s8
                  bltu         t1, a7, 270f
270:              srl          t3, a4, t1
                  sub          sp, s8, ra
                  bne          tp, s3, 292f
                  and          t3, t4, a2
                  bgeu         a0, gp, 286f
                  lui          a6, 350687
                  or           s11, s2, s9
277:              nop
                  bge          s3, t4, 294f
                  blt          a7, t3, 288f
                  srl          s0, a0, sp
                  bltu         tp, gp, 300f
                  slti         t0, s6, 468
                  sltiu        s2, s0, 1217
                  sltiu        a2, a2, -1885
                  beq          t5, s10, 303f
286:              lui          t3, 498031
                  bltu         zero, sp, 298f
288:              xor          s0, ra, a4
                  srai         a4, t0, 7
                  sltiu        tp, a7, -180
                  and          s6, a6, t6
292:              srai         t4, sp, 7
                  slti         zero, s6, 657
294:              xori         s6, s10, 2028
                  srl          t1, t1, sp
                  slti         s7, s11, -1616
                  srai         t4, tp, 19
298:              bne          s10, t5, 302f
                  add          t0, t3, s10
300:              or           a0, t0, s3
                  beq          s9, gp, 317f
302:              andi         tp, gp, -140
303:              srl          s2, a2, t4
                  slli         s9, zero, 8
                  srai         a0, s2, 1
                  bltu         s1, gp, 309f
                  slti         tp, s10, -1180
                  slli         s1, s2, 1
309:              add          tp, s11, a7
                  add          t4, a7, s7
                  slli         s9, a1, 3
                  addi         s6, a0, 1108
                  bge          t6, tp, 321f
                  bgeu         s9, a1, 326f
                  ori          t5, a7, -1069
                  sltiu        a7, t0, 1442
317:              sltu         t1, s0, s9
                  xori         s1, s0, -1707
                  sltiu        a6, s0, 1838
                  xor          a4, t1, s9
321:              xori         s10, a6, 815
                  lui          t0, 66763
                  slli         t3, a1, 20
                  sltiu        a5, zero, 1519
                  beq          t6, t2, 337f
326:              bge          a3, a2, 335f
                  ori          s11, t3, 2032
                  srl          a6, s11, t1
                  bge          sp, a6, 342f
                  srli         t1, s10, 5
                  sra          s11, t3, gp
                  or           s0, a2, s2
                  slli         ra, s0, 31
                  andi         t1, zero, 1327
335:              auipc        s9, 895688
                  sltu         a3, s0, t1
337:              ori          a2, a4, 314
                  and          t5, t5, s8
                  lui          s8, 31161
                  nop
                  auipc        ra, 662481
342:              and          s5, gp, s11
                  sub          t5, a1, s10
                  srli         s2, a6, 13
                  sltu         sp, s3, s7
                  sltiu        s6, gp, 516
                  sra          t4, s11, s8
                  add          s11, s9, a4
                  sltu         t2, a5, a3
                  auipc        a4, 989456
                  and          a7, s6, a2
                  sltiu        a6, s7, 976
                  sltiu        a0, t5, -589
                  srli         a7, gp, 11
                  slti         s9, s11, -2039
                  srli         gp, s5, 11
                  bgeu         a7, a3, 374f
                  sll          a4, sp, t1
                  bltu         s8, zero, 372f
                  sub          ra, sp, s5
                  addi         t2, t6, -1516
                  la           ra, sub_7
                  slli         s2, s0, 25
                  slli         s1, t4, 16
                  sltu         t1, s3, s1
                  or           sp, s7, t5
                  slt          a2, gp, s5
                  xori         a0, t3, 1454
                  or           t1, a5, s10
                  srl          t2, gp, t4
                  addi         ra, ra, -480
                  slti         a5, s10, 1750
                  xor          s10, s0, t0
sub_4_j7:         jalr         ra, ra, 481 #jump sub_4 -> sub_7
                  bne          a2, a2, 370f
                  lui          s2, 343851
                  slli         t4, a2, 25
                  sra          s11, s9, a5
                  xor          s6, t4, t1
                  blt          a1, zero, 368f
368:              lui          a1, 790470
                  add          a3, gp, s6
370:              bltu         t2, t3, 379f
                  xori         a5, ra, 223
372:              sltu         sp, a2, a2
                  auipc        a7, 642302
374:              add          gp, t5, t5
                  bltu         s0, s6, 386f
                  srli         a7, t0, 26
                  add          tp, t4, zero
                  andi         s10, t0, 361
379:              and          a0, a4, t0
                  srl          s8, t6, a3
                  xor          a6, s8, s6
                  add          zero, t1, s0
                  srl          s10, a3, s1
                  add          s5, s9, a7
                  srl          a6, t0, s8
386:              srl          t1, a4, s3
                  auipc        s6, 430599
                  ori          s2, sp, -587
                  srli         s11, t6, 20
                  add          a7, s6, t4
                  sub          s5, t0, t0
                  sll          a3, t6, t5
                  beq          sp, s3, 401f
                  lui          s9, 153779
                  srli         s2, tp, 6
                  bge          s10, t6, 416f
                  bgeu         ra, s4, 411f
                  lui          s2, 270126
                  blt          t4, s10, 404f
                  bgeu         s4, a3, 407f
401:              srai         a0, t3, 26
                  sra          s11, t5, s2
                  or           s5, s6, a0
404:              bne          ra, sp, 422f
                  srai         a3, sp, 15
                  bge          s11, a4, 418f
407:              xor          s10, t2, a2
                  and          t1, t4, t4
                  auipc        sp, 877087
                  bne          t6, sp, 430f
411:              sub          t5, a1, s9
                  slt          sp, s5, a7
                  xori         t0, zero, 774
                  slti         a1, a5, -115
                  sll          s0, s7, t2
416:              bltu         t5, t0, 435f
                  bne          ra, sp, 424f
418:              and          ra, tp, s8
                  sltu         s9, gp, s10
                  sltu         a6, zero, ra
                  xor          tp, s5, t4
422:              slt          s2, a5, sp
                  bne          t0, sp, 424f
424:              srl          s7, gp, s0
                  nop
                  xor          t5, t2, s0
                  auipc        s2, 874633
                  addi         s5, a2, -308
                  sub          t0, s9, s7
430:              blt          s0, a6, 446f
                  bne          s10, s1, 434f
                  bne          s7, a3, 440f
                  blt          sp, s4, 440f
434:              sll          t2, s2, s11
435:              slt          t4, s4, tp
                  lui          gp, 805352
                  xor          s11, s2, t4
                  nop
                  andi         t1, t4, 576
440:              sltiu        tp, t6, 264
                  slli         t5, s11, 7
                  slli         a0, s2, 21
                  xori         a7, gp, -836
                  srli         s2, t4, 5
                  sltu         s9, s3, a7
446:              add          s6, s5, s9
                  blt          s2, a7, 461f
                  or           gp, s5, a1
                  sltiu        zero, a6, 1535
                  beq          s6, s8, 470f
                  sltu         a0, sp, tp
                  ori          t3, a2, -1837
                  xori         a4, a2, 1508
                  slti         sp, a7, 69
                  auipc        a2, 639462
                  slli         s2, s4, 19
                  bltu         zero, s2, 458f
458:              sltiu        a3, sp, 1495
                  add          a4, t6, t5
                  or           a4, s2, s5
461:              addi         t2, tp, -1302
                  sll          s0, s6, s4
                  lui          s8, 163207
                  lui          s1, 233875
                  blt          s0, a3, 481f
                  sra          s11, t6, t2
                  add          t1, tp, s6
                  xor          zero, t4, t3
                  or           a1, t1, s5
470:              add          a5, a1, s11
                  auipc        tp, 497964
                  bgeu         t5, tp, 490f
                  xor          t1, s10, t1
                  beq          s6, tp, 487f
                  sra          s8, t2, a2
                  add          a0, s1, a1
                  andi         s2, t1, -625
                  bne          zero, s6, 490f
                  ori          a7, s7, 448
                  la           t3, sub_9
                  slli         s9, s3, 18
                  auipc        s1, 1021663
                  andi         a1, a3, -731
                  addi         t3, t3, 383
                  auipc        t5, 919185
                  nop
                  slti         a7, a1, -1924
                  bge          a3, s0, sub_4_j8 #branch to jump instr
                  or           t2, a5, s3
                  srl          gp, t2, a1
                  xori         tp, a7, 89
sub_4_j8:         jalr         ra, t3, -382 #jump sub_4 -> sub_9
                  blt          s2, t5, 487f
                  srli         s10, a3, 3
481:              auipc        s10, 421429
                  sra          a5, s3, s6
                  xor          ra, s6, s8
                  sltu         s6, a0, a6
                  xori         s6, t3, -1180
                  sra          t0, t4, t0
487:              and          a4, s11, s3
                  srai         s1, sp, 12
                  sltu         a4, t3, t4
490:              or           s7, s7, a6
                  ori          a2, zero, 1769
                  sub          s1, s5, t4
                  bgeu         s3, a4, 512f
                  la           sp, region_1+157 #start riscv_load_store_rand_instr_stream_6
                  lbu          s1, 1585(sp)
                  srl          zero, s6, a5
                  sll          tp, a5, a4
                  addi         a1, sp, 1619
                  lb           a6, 1270(sp)
                  lb           s2, 782(sp)
                  sb           a5, 48(sp)
                  sb           gp, 942(sp)
                  sb           s10, 361(sp)
                  add          t4, a7, s10
                  lb           s9, -136(sp)
                  sb           tp, 1502(sp)
                  sb           s5, 1132(sp)
                  sb           s7, 936(sp)
                  or           t3, a3, a5
                  lhu          s11, -135(sp)
                  lb           s10, 56(sp)
                  lb           a6, 674(sp)
                  lhu          s8, 1281(sp)
                  slt          tp, a2, t1
                  lb           a4, 212(sp)
                  lb           gp, 149(sp)
                  srl          s10, t0, t2
                  lh           t3, -83(sp)
                  lb           t4, 796(sp)
                  srl          s1, sp, s11
                  auipc        t1, 642936
                  lbu          a1, 168(sp)
                  lb           a3, 890(sp)
                  lh           s5, 1189(sp)
                  lbu          a6, 454(sp)
                  sra          s7, s8, a3
                  sb           t2, 830(sp)
                  sb           t3, 1022(sp)
                  nop
                  sb           t5, 818(sp) #end riscv_load_store_rand_instr_stream_6
                  ori          t2, a2, -1588
                  blt          t5, a7, 498f
                  sltu         s9, sp, a5
                  bge          s9, a3, 510f
498:              xori         s8, a5, -1462
                  srl          gp, s8, a6
                  lui          a2, 704624
                  xor          a1, s5, s8
                  bgeu         t4, a7, 503f
503:              blt          gp, s5, 506f
                  blt          gp, s6, 511f
                  xor          gp, zero, s3
506:              slt          sp, a0, s0
                  bgeu         t2, t6, 516f
                  srl          s7, s5, zero
                  sub          t5, s7, gp
510:              auipc        sp, 326717
511:              auipc        a1, 998761
512:              srai         tp, zero, 3
                  bgeu         ra, s7, 533f
                  xor          s11, a3, t4
                  or           s7, s11, s7
516:              and          s6, s7, gp
                  bge          s5, s11, 528f
                  bltu         t2, s1, 530f
                  lui          s2, 988512
                  lui          zero, 374784
                  ori          t4, s7, 587
                  ori          t2, gp, 1909
                  slti         t3, a5, -218
                  xori         sp, s6, -321
                  xori         s8, s1, -1728
                  add          s8, a7, s8
                  xor          t5, t2, a7
528:              slli         a4, s1, 17
                  and          t3, ra, t5
530:              xori         ra, s1, -1772
                  srl          a6, s3, s9
                  nop
533:              bltu         a1, s11, 538f
                  add          a3, s7, ra
                  sra          s2, gp, t3
                  srai         a3, a5, 13
                  or           s1, t3, a2
538:              slti         s9, ra, -1561
                  ori          gp, s5, -1585
                  ori          ra, t6, 1721
                  sub          ra, t6, tp
                  bne          a1, a5, 553f
                  xor          sp, a7, a1
                  ori          a2, t0, 1503
                  bne          a3, t4, 564f
                  sra          tp, tp, t0
                  sltu         s2, zero, s10
                  slt          a3, t6, a6
                  bgeu         a2, s9, 553f
                  andi         s1, s0, -1882
                  sltu         s10, s4, s11
                  beq          a2, t6, 561f
553:              or           t2, s2, gp
                  andi         a1, sp, -344
                  slti         a4, t6, -586
                  nop
                  sra          s9, gp, t2
                  sub          s11, t5, s7
                  bge          sp, s3, 571f
                  bltu         s8, s10, 576f
561:              addi         s10, t2, -1571
                  sltu         t1, ra, s5
                  auipc        a0, 252666
564:              lui          t2, 769296
                  sltiu        s1, a7, 10
                  add          a0, s8, sp
                  slt          a6, s6, s4
                  srli         a5, s11, 25
                  bne          a5, t3, 577f
                  bltu         t5, t4, 587f
571:              srl          s10, t2, s10
                  auipc        s5, 180379
                  slli         ra, s9, 30
                  nop
                  and          t1, s9, t1
576:              sll          gp, a6, a0
577:              or           s7, s7, t0
                  slt          sp, s8, a6
                  lui          sp, 851804
                  srai         a6, a1, 23
                  srl          tp, tp, a0
                  bne          a7, s7, 600f
                  slti         gp, s5, -681
                  sra          t4, t2, t1
                  sub          a7, a4, s4
                  ori          s9, s5, 1209
587:              xori         a3, a7, -578
                  beq          s1, a0, 607f
                  xor          t5, s8, a2
                  bltu         s0, a3, 602f
                  sltiu        s9, t3, -1914
                  ori          s1, s5, 516
                  xori         t4, s10, 219
                  auipc        s0, 204373
                  lui          s0, 997440
                  slt          s2, t2, t3
                  beq          t6, tp, 604f
                  xori         a1, a6, -211
                  slt          t2, zero, a7
600:              bltu         a3, s2, 616f
                  xor          sp, a5, s4
602:              bgeu         s2, s8, 618f
                  sub          t5, gp, a1
604:              andi         gp, s9, 1147
                  sll          t2, a7, t5
                  xor          a3, t6, s6
607:              blt          zero, ra, 621f
                  slt          t5, s6, a7
                  or           s10, t1, t3
                  xori         a4, a7, -1141
                  srli         s9, s1, 10
                  lui          a2, 798779
                  or           ra, s10, s8
                  bge          s1, s4, 622f
                  bltu         zero, a4, 622f
616:              slt          s11, a0, a6
                  sub          s1, s10, s10
618:              bge          a2, s5, 623f
                  sub          s10, t2, a5
                  srl          ra, a5, s3
621:              slti         s0, t4, 378
622:              bne          s11, a3, 635f
623:              and          t3, a0, s5
                  bltu         t5, gp, 635f
                  xor          s2, t2, t4
                  nop
                  andi         s1, t5, 317
                  srai         a1, a6, 0
                  bge          tp, s10, 647f
                  srai         zero, a3, 3
                  slt          a3, s7, t3
                  srli         a0, t3, 20
                  srl          zero, t0, t6
                  xori         t0, t1, 1071
635:              srli         t4, s4, 11
                  and          a7, s6, a4
                  ori          s11, a1, 1447
                  slti         t0, a5, 643
                  bltu         gp, s11, 656f
                  sltu         ra, s0, t5
                  slli         s6, t1, 20
                  sra          a7, s8, s11
                  slt          s2, t2, s2
                  sltiu        sp, sp, 941
                  ori          s2, s9, 918
                  sltiu        s10, zero, 146
647:              xori         a4, a4, 592
                  and          s1, gp, t4
                  xor          t5, t5, s4
                  sra          t5, t2, a5
                  xor          s1, a5, s9
                  slli         s1, t3, 28
                  slli         ra, a4, 20
                  and          gp, s0, s11
                  nop
656:              slli         a6, ra, 26
                  sltu         a6, a0, s7
                  bge          a1, s8, 666f
                  auipc        a7, 228650
                  xor          a2, t5, t5
                  xor          a4, a1, t6
                  ori          s2, t1, -1594
                  blt          s5, t2, 683f
                  bge          s8, t0, 667f
                  blt          a0, a6, 668f
666:              srai         s8, tp, 18
667:              slli         a3, zero, 17
668:              sll          zero, a1, a5
                  addi         a6, zero, -1365
                  bltu         a6, a6, 679f
                  bge          ra, s2, 691f
                  beq          s2, a4, 673f
673:              xori         a4, s7, -1439
                  xori         a2, t0, -741
                  srl          t2, s9, a4
                  and          t4, tp, t2
                  slti         t0, s9, -146
                  ori          s8, sp, 458
679:              sltu         a7, a7, s5
                  blt          s6, s7, 689f
                  slli         t5, s9, 5
                  and          gp, tp, s1
683:              sra          s2, s9, a5
                  bgeu         t5, t3, 703f
                  sub          s10, ra, s6
                  sra          zero, s11, s1
                  srai         s9, a7, 17
                  sll          s1, t3, s5
689:              sub          s0, a1, a2
                  srl          sp, tp, a1
691:              srli         a4, a0, 5
                  bltu         sp, s11, 705f
                  beq          s7, gp, 705f
                  blt          s3, a4, 695f
695:              sltu         t0, s3, s11
                  lui          gp, 302134
                  slli         a3, a6, 19
                  or           a6, s5, a3
                  sra          s5, a5, t2
                  ori          t5, t5, -163
                  ori          a3, a4, 1554
                  auipc        zero, 890772
703:              sll          s6, s11, s2
                  and          s8, s7, s9
705:              sub          s11, zero, t5
                  blt          a3, s11, 717f
                  xori         a3, s7, -1498
                  srl          t2, gp, s10
                  auipc        t3, 635988
                  and          tp, a0, s1
                  bne          s8, a1, 723f
                  add          ra, ra, a7
                  bltu         s4, s9, 717f
                  srl          s2, s0, t0
                  slti         s5, a7, -1974
                  xor          s1, a2, a2
717:              slt          a7, a1, s4
                  addi         tp, s10, -1815
                  lui          t0, 569422
                  slt          s11, s1, s5
                  ori          s6, gp, 270
                  sltiu        a6, s5, -438
723:              sll          a0, a5, a0
                  srai         gp, s7, 30
                  addi         a2, a1, 203
                  sltiu        a4, t3, -944
                  bge          s9, s5, 735f
                  addi         s1, a6, 1142
                  sra          a1, s2, t3
                  bne          sp, s10, 748f
                  addi         s2, s0, -954
                  blt          sp, t6, 743f
                  sll          t3, a3, s0
                  bne          a1, s11, 754f
735:              slli         s0, s9, 18
                  srl          s10, tp, s4
                  blt          s11, s10, 748f
                  bgeu         a7, t2, 743f
                  lui          s2, 550745
                  sltiu        tp, zero, 710
                  slt          s1, s9, s2
                  lui          s1, 977399
743:              sub          a4, sp, s5
                  bltu         s7, a3, 751f
                  srai         s10, t1, 30
                  andi         s8, s8, 782
                  srli         tp, t6, 27
748:              xor          s5, s7, a7
                  sltu         t2, t1, a2
                  addi         s5, t1, 1716
751:              add          a5, s7, a7
                  srli         s10, t5, 0
                  slti         gp, sp, 1293
754:              bge          s10, a0, 772f
                  nop
                  bltu         s3, s11, 759f
                  blt          a4, gp, 773f
                  sltu         s8, s0, s11
759:              sll          t5, ra, s3
                  slti         s10, ra, -455
                  xori         s1, t0, -208
                  slli         gp, a4, 2
                  sub          t0, s3, a0
                  sltu         s10, gp, s2
                  or           t5, t1, a6
                  blt          a7, t2, 785f
                  srai         a7, s4, 5
                  beq          a6, s10, 785f
                  srai         s0, t3, 15
                  bge          gp, t3, 782f
                  sll          s1, s7, t0
772:              srli         a1, s3, 25
773:              lui          s8, 655022
                  slt          tp, s5, s9
                  sltu         a5, t3, s7
                  or           a1, t2, tp
                  bltu         s10, s8, 791f
                  sra          a6, a2, t6
                  bne          a4, a7, 787f
                  addi         s1, s3, -956
                  sra          t5, gp, s5
782:              bgeu         sp, s1, 791f
                  srl          gp, s4, s11
                  sltiu        a0, s11, -1881
785:              sra          a7, s5, s8
                  srl          s2, gp, a1
787:              xori         ra, a5, 845
                  beq          zero, a3, 789f
789:              slt          a2, gp, t6
                  andi         t1, s0, -740
791:              bne          a1, s6, 803f
                  ori          s11, s8, -823
                  sub          t4, t4, a7
                  beq          s2, s0, 802f
                  add          a7, s8, s0
                  ori          zero, a4, 835
                  andi         tp, a4, 48
                  bltu         tp, gp, 811f
                  slti         t0, t2, -682
                  sll          s1, t4, a3
                  andi         gp, s7, -1708
802:              slli         a0, s1, 3
803:              lui          a1, 1013356
                  xori         a0, ra, 466
                  or           s8, s2, ra
                  sll          s2, a2, t3
                  bgeu         t5, a5, 814f
                  auipc        t0, 236153
                  srai         s11, zero, 1
                  sltu         t4, a6, s5
811:              xori         s10, a0, 465
                  or           a0, a6, sp
                  ori          s6, s3, 865
814:              bltu         a7, t2, 815f
815:              ori          s2, a2, -298
                  srai         s2, ra, 22
                  srli         a3, a7, 10
                  xori         gp, s7, 1864
                  srli         t0, a3, 2
                  addi         a3, a5, 1166
                  srai         s5, t6, 21
                  addi         a4, s3, 1487
                  add          a3, zero, tp
                  srai         t1, s4, 16
                  slli         t2, t1, 19
                  slt          a2, t0, s4
                  addi         t5, a1, -880
                  srli         gp, t5, 19
                  srli         s7, tp, 13
                  or           a1, a2, t6
                  lui          tp, 433888
                  andi         s5, s5, 1346
                  sltiu        a2, t4, -1553
                  slti         s0, t5, 1517
                  auipc        s0, 152039
                  xor          zero, s10, a3
                  bgeu         a3, s8, 841f
                  addi         a6, s10, -1795
                  slti         zero, a3, -233
                  andi         gp, s0, 1106
841:              bltu         s3, a0, 844f
                  or           a1, t2, a7
                  nop
844:              xor          a3, t3, s10
                  sra          a4, a3, a7
                  srl          s1, s7, ra
                  lui          t5, 195927
                  ori          tp, t1, 193
                  blt          s11, s11, 868f
                  andi         t3, s0, 944
                  lui          ra, 138300
                  beq          a1, s3, 861f
                  srl          a3, a0, s0
                  beq          t3, a7, 870f
                  slti         a6, a7, 581
                  bltu         s3, t4, 869f
                  srl          s11, a5, s1
                  sub          s2, a2, a2
                  bgeu         a4, sp, 877f
                  add          a6, s3, s5
861:              bgeu         a0, s1, 881f
                  srli         t1, s11, 13
                  or           s5, t1, s5
                  beq          s8, s6, 876f
                  bgeu         a3, a1, 873f
                  bltu         s7, s6, 884f
                  xor          s6, s4, s0
868:              sra          a2, a1, t3
869:              srl          a6, s3, t1
870:              xor          s2, zero, sp
                  addi         sp, zero, 1499
                  sltiu        t4, a1, 1366
873:              srli         a2, s8, 15
                  srli         tp, t6, 11
                  bgeu         s4, s10, 888f
876:              sub          t2, a6, s2
877:              slli         a2, a5, 18
                  sra          s9, tp, a4
                  bne          a7, s9, 886f
                  sub          zero, t0, s3
881:              srli         a1, a6, 19
                  sra          s7, s5, s0
                  sub          a1, s4, a1
884:              slli         t5, s1, 26
                  add          a4, s4, t4
886:              xori         s1, sp, 1428
                  nop
888:              srli         a6, sp, 6
                  blt          a4, zero, 901f
                  andi         a3, t6, -1212
                  and          s5, s4, gp
                  or           t0, a3, s0
                  slti         a6, s1, -747
                  sltu         a6, a7, s5
                  bge          t5, a7, 896f
896:              sltiu        s11, s1, 1983
                  sll          s8, s1, a5
                  sra          s5, gp, s4
                  beq          a3, a1, 919f
                  bltu         t6, sp, 914f
901:              slti         s10, a2, -247
                  sra          gp, t5, s5
                  or           a1, t5, gp
                  auipc        s0, 885333
                  auipc        a5, 194453
                  and          t4, t1, sp
                  addi         t4, t6, -1054
                  bne          a2, s11, 916f
                  bne          t0, a3, 920f
                  nop
                  srai         t0, ra, 25
                  lui          a2, 388591
                  bgeu         a0, a1, 916f
914:              beq          s9, a3, 923f
                  ori          s7, tp, -1832
916:              srli         t0, t3, 19
                  blt          a2, sp, 924f
                  beq          a2, s9, 930f
919:              srli         a7, s8, 0
920:              srli         t1, a0, 18
                  nop
                  xor          gp, sp, a2
923:              bgeu         zero, gp, 936f
924:              sub          t0, s11, t4
                  auipc        s0, 922154
                  nop
                  srl          s5, s4, a3
                  sll          s0, s1, a5
                  sra          s9, a4, t1
930:              sll          a3, s8, s1
                  blt          a5, t1, 936f
                  sltiu        s1, s11, 108
                  srai         a1, a6, 29
                  srai         t5, a6, 20
                  blt          s8, a2, 953f
936:              slli         s6, s8, 26
                  sltu         a2, a7, a5
                  slli         s0, s1, 20
                  blt          s5, gp, 959f
                  bgeu         s4, s2, 959f
                  sltiu        gp, a0, 1131
                  bltu         s11, s0, 943f
943:              auipc        t4, 313352
                  sra          s10, t3, s0
                  sltiu        a7, t0, 873
                  bne          t1, s6, 962f
                  add          t1, s11, a4
                  xor          s5, s7, a5
                  or           t1, t3, a5
                  sltiu        t5, t0, 785
                  auipc        a4, 977907
                  bge          a6, t1, 963f
953:              sltiu        t4, t3, 1467
                  xor          t2, t3, s0
                  bgeu         s4, a2, 970f
                  slli         s9, a0, 31
                  srai         a7, s2, 8
                  andi         sp, s9, -755
959:              nop
                  xor          s8, s1, a6
                  srli         t1, a0, 22
962:              sltu         sp, s8, t5
963:              sltu         t1, a1, t5
                  slli         s5, a3, 7
                  nop
                  add          tp, s5, t5
                  sltiu        s2, a6, 1696
                  slti         s6, t4, 242
                  and          tp, s7, s10
970:              auipc        tp, 121858
                  srl          t0, t6, a5
                  add          gp, a4, s11
                  slli         t1, t0, 14
                  sltiu        a0, a4, 1468
                  lw           ra, 4(s3)
                  addi         s3, s3, 48
                  slti         t5, t3, -1880
1265:             addi x4, x1, 0
1265:             jalr x4, x4, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x20, x19, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x8, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x8, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x1
                  beq x8, x18, instr_fault_handler
                  li x18, 0x5
                  beq x8, x18, load_fault_handler
                  li x18, 0x7
                  beq x8, x18, store_fault_handler
                  li x18, 0xc
                  beq x8, x18, pt_fault_handler
                  li x18, 0xd
                  beq x8, x18, pt_fault_handler
                  li x18, 0xf
                  beq x8, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

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
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x19, x20, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
