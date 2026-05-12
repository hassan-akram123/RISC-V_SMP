.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 0
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x6
                  li x1, 0xfb4cbf5a
                  li x2, 0xf252fc3f
                  li x3, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xf62946b6
                  li x8, 0x5
                  li x9, 0x80000000
                  li x10, 0xf
                  li x11, 0xf29ff483
                  li x12, 0xdb1b3061
                  li x13, 0xb6e70a1c
                  li x14, 0x80000000
                  li x15, 0x6
                  li x16, 0x80000000
                  li x17, 0xe794698b
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0xf06a01b0
                  li x21, 0x5738f4bc
                  li x23, 0xfd3dc101
                  li x24, 0xd9f3ac5e
                  li x25, 0x17ab4b66
                  li x26, 0x80000000
                  li x27, 0x21dfc81a
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0xfbbc1cf6
                  li x31, 0x0
                  la x22, user_stack_end
main:             la           s2, region_0+845 #start riscv_load_store_rand_instr_stream_0
                  xori         t6, tp, 855
                  slli         s9, s0, 16
                  lh           s10, 1123(s2)
                  sltiu        t2, a1, 973
                  lbu          s9, -580(s2)
                  add          s4, s11, a7
                  sltiu        s11, a2, -1650
                  and          s1, a3, sp
                  sub          a2, s4, s11
                  sltiu        t1, a4, -437
                  xor          s1, gp, gp
                  lb           s5, -677(s2)
                  lui          s10, 838757
                  ori          s0, s10, 730
                  srl          t1, s3, s2
                  lb           sp, -290(s2)
                  lb           t4, -465(s2)
                  andi         a7, s8, -1994
                  lb           s10, 450(s2)
                  lb           a5, 78(s2)
                  lbu          a4, 184(s2)
                  lb           s0, -530(s2)
                  srai         s3, s4, 20
                  sra          a1, s10, sp
                  lbu          a2, -609(s2)
                  sltiu        t6, tp, -882
                  lb           s1, 600(s2)
                  add          a1, t6, s3
                  and          ra, s10, t3
                  lh           s5, -49(s2)
                  sltiu        a2, tp, 1963
                  lb           ra, -338(s2)
                  lbu          gp, 1154(s2)
                  xor          s0, s8, sp
                  xor          t5, gp, a2
                  xor          a1, tp, a3
                  lh           t5, 391(s2)
                  sll          t6, t3, s3
                  lb           t4, 618(s2)
                  lbu          a6, 42(s2)
                  lb           a0, -76(s2)
                  lb           a2, 538(s2)
                  lb           t2, 304(s2)
                  lhu          sp, -281(s2) #end riscv_load_store_rand_instr_stream_0
                  srl          sp, sp, s3
                  xori         a5, s11, -1619
                  bge          s9, a2, 18f
                  srai         a3, a5, 1
                  xor          t6, sp, s5
                  sll          a7, s7, t4
                  srl          a3, s3, t2
                  sltu         a0, s7, t5
                  slt          zero, a0, s9
                  sra          t6, gp, t0
                  sltiu        s10, a5, 772
                  blt          t3, s1, 31f
                  bne          s0, a1, 17f
                  bne          s1, t2, 26f
                  auipc        t2, 132195
                  or           a7, t3, a2
                  addi         t5, tp, 908
17:               srli         t5, t6, 15
18:               slti         s11, s11, 603
                  sltiu        a6, ra, 1094
                  slli         sp, a2, 1
                  bltu         s6, gp, 27f
                  andi         t1, a4, 417
                  slli         s2, s11, 8
                  add          s3, a6, s5
                  ori          s5, s11, 1530
26:               or           s3, s5, a7
27:               and          t0, s9, t4
                  addi         sp, t4, -708
                  sltu         t4, gp, a3
                  sll          s4, zero, a6
31:               auipc        s4, 994192
                  beq          t3, t6, 45f
                  srai         a0, s0, 6
                  add          gp, t3, t4
                  auipc        s4, 782073
                  la           a6, sub_1
                  sltiu        t2, gp, -487
                  ori          s1, s2, -586
                  addi         a6, a6, 173
                  slt          a7, s3, a4
                  auipc        a7, 679535
                  sra          s7, s8, s3
                  add          s8, t3, a0
                  bgeu         t4, s0, main_j1 #branch to jump instr
                  srai         a2, s5, 14
                  slli         s3, s11, 28
                  add          ra, t6, t1
                  ori          s8, a3, -565
main_j1:          jalr         t5, a6, -172 #jump main -> sub_1
                  sltiu        t0, a4, 1946
                  sltiu        s4, a4, -77
                  srai         a4, a1, 0
                  andi         s7, ra, -1251
                  or           sp, a3, t1
                  sltu         zero, t6, s7
                  add          s4, s8, s11
                  sltu         a6, s9, sp
                  bgeu         s9, t5, 64f
45:               and          gp, t1, s1
                  ori          t6, s1, -462
                  add          s1, s8, a6
                  beq          t1, gp, 68f
                  and          s1, ra, a2
                  nop
                  addi         t0, s0, -955
                  beq          a3, zero, 56f
                  bge          a2, t1, 59f
                  srl          s4, t6, a5
                  sll          t2, t4, t3
56:               srl          s8, s7, s2
                  slt          s11, ra, t1
                  sll          s8, s11, s8
59:               and          t6, s3, zero
                  srai         s4, s8, 16
                  srli         t0, t3, 0
                  sub          zero, t2, sp
                  ori          s3, s11, -1281
64:               beq          a7, t3, 73f
                  or           gp, t5, s3
                  bltu         s1, t4, 79f
                  or           a3, s3, t5
68:               srl          s3, s4, a7
                  srl          s9, t1, tp
                  lui          s2, 200511
                  add          a0, t6, tp
                  or           t5, t5, a1
73:               sub          s9, a4, s9
                  nop
                  sltiu        s10, zero, -1394
                  sub          s3, a6, a3
                  srai         t4, t0, 18
                  sub          t1, s9, s11
79:               bgeu         zero, t1, 83f
                  srai         t2, a0, 8
                  slti         t0, sp, -1338
                  srai         a5, a4, 19
83:               and          a3, t6, a6
                  sltu         s11, s10, a5
                  blt          s2, s8, 92f
                  or           s10, s10, a4
                  add          a5, t2, t5
                  nop
                  add          a2, s3, t2
                  auipc        t5, 161233
                  lui          a2, 27219
92:               sltiu        s9, s6, 704
                  beq          gp, s5, 108f
                  xori         s3, gp, 1224
                  srl          zero, a4, s10
                  nop
                  lui          gp, 397506
                  nop
                  or           a2, tp, s11
                  bgeu         s8, s0, 107f
                  slt          sp, zero, a6
                  andi         s7, t3, 1384
                  slli         a7, t4, 2
                  nop
                  bltu         sp, t4, 121f
                  srai         a5, s11, 22
107:              srli         a6, s9, 26
108:              nop
                  and          a7, s9, a4
                  slti         t0, a2, -1641
                  nop
                  or           s7, zero, t3
                  sll          gp, s2, a3
                  sltu         s8, a7, t6
                  sll          sp, s5, t5
                  addi         s9, a6, 1731
                  slt          s1, a1, t5
                  srai         t5, t1, 1
                  or           s8, s3, a0
                  ori          s4, s9, -1484
121:              blt          t3, t5, 141f
                  beq          zero, s1, 139f
                  lui          a2, 963812
                  bgeu         a3, s8, 131f
                  andi         t2, a3, -1653
                  srai         s2, s8, 10
                  srli         a4, t1, 10
                  addi         a6, s5, -1691
                  xori         s10, tp, 856
                  sra          s0, zero, ra
131:              blt          s3, a2, 147f
                  slli         a5, gp, 23
                  xor          s10, t6, s2
                  and          s7, tp, t0
                  auipc        a3, 316689
                  add          s9, t0, s7
                  slti         s5, s10, -1514
                  add          s11, s11, s3
139:              sll          s4, s9, t3
                  add          zero, s9, t6
141:              sltu         s1, s11, a0
                  slli         t5, t4, 3
                  blt          s6, t6, 145f
                  slli         a7, t6, 24
145:              xor          s5, s10, a4
                  srl          a6, s11, a5
147:              sra          t2, s1, s9
                  sub          t4, a3, sp
                  addi         a2, t2, 1930
                  slti         a2, s1, -735
                  or           s9, t5, s3
                  addi         a4, a4, -516
                  xor          a3, t1, tp
                  sltu         a7, t5, gp
                  addi         ra, s8, -1288
                  sltu         a6, a7, a2
                  and          a7, s3, gp
                  andi         a5, a2, 707
                  auipc        t0, 785153
                  auipc        a4, 348824
                  sub          t1, t3, a3
                  auipc        t1, 636271
                  slti         s4, t2, -351
                  sltu         a3, tp, gp
                  bge          s9, t4, 179f
                  slli         s2, gp, 11
                  srl          a2, s5, s11
                  sltu         sp, a7, s3
                  slli         a0, gp, 9
                  sltiu        a1, s0, -1601
                  sltu         a4, s8, s8
                  slt          s1, a3, s3
                  bge          s10, a3, 186f
                  sub          a0, a7, a4
                  add          s8, t0, a7
                  andi         s3, sp, -1888
                  sra          s5, t1, s2
                  slt          t5, s11, zero
179:              addi         a7, gp, 10
                  lui          s0, 543059
                  auipc        s2, 585491
                  and          a0, a5, s10
                  sltiu        a0, a1, -854
                  auipc        sp, 892951
                  xori         s4, tp, 986
186:              blt          a6, t3, 201f
                  bne          s5, s5, 190f
                  bltu         t0, a1, 204f
                  and          s11, t4, t5
190:              bgeu         t3, t6, 196f
                  and          a1, t4, s4
                  bge          s6, s5, 209f
                  srl          t4, s10, s11
                  or           a7, s5, t1
                  blt          s11, gp, 211f
196:              xori         s2, s1, -1797
                  or           t5, gp, s7
                  srli         s3, s6, 2
                  slti         s3, s11, 1987
                  blt          s10, a0, 207f
201:              slli         s0, s1, 12
                  slti         t1, t2, -1662
                  beq          s5, s9, 206f
204:              ori          s0, t0, -2013
                  srl          t4, s9, t0
206:              addi         s4, s3, 472
207:              xor          a5, t2, s3
                  sltiu        a1, s3, -1852
209:              auipc        gp, 41964
                  or           t1, a6, a6
211:              or           a7, a3, a1
                  srli         t5, s0, 8
                  ori          t5, a6, -1075
                  lui          a6, 936054
                  blt          a3, a5, 230f
                  xori         a3, gp, 49
                  slti         a1, a4, 1341
                  srl          gp, a6, s10
                  addi         a3, zero, -893
                  sll          s1, a3, t6
                  xori         s11, a1, 359
                  srli         t1, s2, 2
                  and          t4, t0, s5
                  bge          t0, s11, 226f
                  srli         a5, s10, 31
226:              srli         t0, a3, 21
                  lui          a4, 481578
                  andi         t4, sp, 1435
                  sub          a4, s1, gp
230:              xori         s2, s8, 1189
                  add          s3, s6, s3
                  sltiu        sp, a4, -1024
                  or           a4, tp, sp
                  bne          s11, sp, 243f
                  sll          a6, a3, t4
                  slli         t6, s1, 0
                  nop
                  sra          a3, zero, s5
                  sll          a3, t4, s7
                  sub          zero, s7, s9
                  slti         s8, a0, 2024
                  srai         s5, a6, 16
243:              nop
                  bne          gp, a4, 261f
                  slti         s4, ra, 1380
                  nop
                  addi         a6, t1, 1786
                  sra          t0, t5, s10
                  andi         s7, t5, -447
                  and          s5, t5, a0
                  slti         s2, a6, -831
                  addi         gp, sp, -318
                  slt          a4, a3, a6
                  addi         s9, t2, 222
                  blt          s1, ra, 261f
                  addi         t2, ra, -1726
                  slli         s5, t2, 20
                  add          ra, a4, sp
                  nop
                  beq          s5, s2, 276f
261:              srli         s3, a3, 28
                  sra          t5, s2, tp
                  ori          t0, t5, -200
                  lui          a2, 282564
                  srli         a7, s3, 24
                  auipc        s3, 13579
                  beq          t3, t0, 287f
                  slt          t1, a1, a4
                  ori          s2, sp, -713
                  la           s3, region_1+1884 #start riscv_load_store_rand_instr_stream_1
                  addi         sp, a5, 1321
                  lb           gp, 19(s3)
                  lbu          a7, -17(s3)
                  lbu          a6, 57(s3)
                  srl          zero, sp, s4
                  auipc        s9, 659328
                  lb           t0, 30(s3)
                  sb           s7, -60(s3)
                  or           ra, s7, t3
                  add          s1, ra, t4
                  lbu          a6, 53(s3)
                  lb           a3, -23(s3)
                  sll          s10, a2, a0
                  lui          ra, 842379
                  lbu          s8, -59(s3)
                  slli         a3, t1, 21
                  sb           s8, 55(s3)
                  srl          t2, a3, s7
                  lh           ra, -8(s3)
                  andi         s11, s10, -100
                  nop
                  lb           s7, 33(s3)
                  srai         sp, s5, 14
                  or           a0, s3, ra
                  lb           a3, -8(s3)
                  srl          s9, t5, a0
                  lw           t5, 44(s3)
                  add          sp, t3, t1
                  lb           sp, -41(s3)
                  add          a6, s10, s5
                  lbu          s11, -17(s3)
                  srli         s4, s3, 24
                  lb           s5, 43(s3)
                  lbu          s11, -41(s3)
                  srai         a4, s7, 31
                  ori          s4, t5, 1788
                  xori         t0, a6, -726
                  sw           a1, -60(s3)
                  nop
                  lbu          s10, 55(s3)
                  sh           s8, 26(s3)
                  lbu          a4, -45(s3)
                  lbu          s0, -55(s3)
                  addi         zero, a7, 1382
                  sb           s0, -44(s3) #end riscv_load_store_rand_instr_stream_1
                  and          ra, s2, t2
                  slt          a4, a6, s11
                  bltu         s1, s11, 288f
                  bge          ra, t6, 289f
                  bgeu         a6, a6, 289f
                  sub          a2, s6, s0
276:              xori         t2, s2, 794
                  sra          a5, tp, s11
                  addi         s11, a0, 884
                  srai         s2, a3, 15
                  andi         a1, ra, 562
                  auipc        a6, 241234
                  bltu         t3, t2, 289f
                  ori          s10, s11, -687
                  srai         s2, a6, 10
                  bltu         s6, t1, 302f
                  auipc        a1, 658591
287:              srai         sp, t0, 27
288:              blt          a1, s6, 308f
289:              nop
                  bgeu         tp, s10, 296f
                  nop
                  beq          s6, a1, 296f
                  slt          s0, a3, t2
                  addi         s11, gp, -1067
                  xori         s0, s4, 518
296:              xor          s4, s9, a0
                  bltu         t2, s2, 303f
                  ori          t5, s4, -1591
                  add          t5, a4, ra
                  sltiu        s2, t6, 253
                  addi         a7, ra, 1690
302:              add          ra, t4, a4
303:              ori          s11, a0, -1111
                  beq          s7, s5, 317f
                  ori          ra, zero, 1808
                  blt          a5, a0, 319f
                  slli         t6, ra, 7
308:              beq          a7, s1, 322f
                  bge          s3, t0, 322f
                  slti         s3, s5, -490
                  addi         a6, a1, -376
                  sll          s1, s2, s2
                  addi         gp, s8, 781
                  sltiu        s11, a3, -1426
                  andi         a0, a0, 1654
                  sub          s11, s4, s0
317:              xor          zero, tp, a1
                  srl          t0, t6, t4
319:              bge          sp, a7, 322f
                  slli         s10, a3, 18
                  ori          t5, a7, 1353
322:              sltiu        s7, t1, 1948
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            sltu         s9, t3, s5
                  blt          a3, a1, sub_9_stack_p
                  auipc        s9, 514813
                  srli         sp, s11, 18
sub_9_stack_p:    addi         s6, s6, -44
                  ori          zero, t1, 472
                  sw           t5, 4(s6)
                  slt          a1, zero, s3
                  or           t2, s1, s4
                  addi         t6, s4, 1878
                  and          s11, tp, gp
                  slli         t5, a2, 9
                  sltu         s5, s5, a4
                  auipc        s8, 603228
                  slli         a7, a1, 15
                  sltu         a3, t0, gp
                  andi         s10, a6, -541
sub_9_j13:        jal          t5, sub_10 #jump sub_9 -> sub_10
                  blt          ra, a4, 14f
                  srli         a3, s2, 21
                  beq          t6, a1, 3f
3:                andi         s9, a0, 870
                  nop
                  sltiu        t2, a7, -964
                  sub          s10, s6, s6
                  sltu         a4, s0, a5
                  bltu         sp, sp, 27f
                  slti         s1, a4, -15
                  xori         s8, s8, -1237
                  and          s4, s3, sp
                  add          t6, s7, t6
                  xor          a6, a2, t4
14:               and          a6, s1, a4
                  slli         a1, ra, 14
                  xori         s7, s5, 766
                  addi         t0, a6, 1214
                  beq          t1, t2, 38f
                  auipc        s2, 13556
                  lui          gp, 524385
                  nop
                  add          t0, t3, a5
                  auipc        a6, 561508
                  beq          t6, s5, 44f
                  xori         a4, t2, -308
                  ori          a3, s5, -1581
27:               and          a4, s6, a2
                  sll          s10, ra, s1
                  slt          t2, a2, s7
                  blt          s5, tp, 47f
                  lui          t5, 920612
                  lui          s3, 821139
                  auipc        a0, 688873
                  bgeu         a2, a1, 39f
                  slt          sp, t3, t3
                  andi         t4, zero, 1392
                  sub          s0, s8, s7
38:               slli         s2, s9, 14
39:               ori          s9, t0, -353
                  and          s7, ra, zero
                  slt          t0, a4, t4
                  srai         s0, s6, 14
                  blt          gp, a1, 48f
44:               sra          t6, gp, a1
                  nop
                  xori         ra, s6, -1352
47:               bgeu         s8, s2, 48f
48:               srl          a7, s5, s10
                  andi         s5, t6, -298
                  addi         zero, a5, -1330
                  auipc        a0, 642263
                  lui          a4, 518120
                  slli         a5, s7, 0
                  srli         a6, t5, 27
                  xori         a6, a2, 1738
                  lw           t5, 4(s6)
                  nop
                  addi         s6, s6, 44
                  add          t4, t6, s4
78:               addi x3, x30, 1
78:               jalr x3, x3, 0
sub_2:            sll          t4, gp, s7
                  blt          s2, a0, sub_2_stack_p
                  sltiu        ra, a1, 152
sub_2_stack_p:    addi         s6, s6, -12
                  sw           t5, 4(s6)
                  or           a6, t1, s3
                  xor          t0, t4, t4
                  sub          ra, a2, s11
                  andi         zero, a6, -1939
                  sltu         a6, a3, s5
                  nop
                  and          t5, a6, a7
                  andi         a4, a6, 1991
                  nop
                  slli         a2, s3, 16
                  srl          s1, s7, a4
sub_2_j3:         jal          t5, sub_3 #jump sub_2 -> sub_3
                  sltu         s1, a3, a2
                  ori          a1, t4, 265
                  ori          a0, s9, 310
                  srai         a6, a2, 20
                  srl          a5, sp, sp
                  sra          t4, t3, s8
                  sra          t5, s5, tp
                  bge          s6, s6, 14f
                  sll          ra, s1, s5
                  addi         s2, gp, 1627
                  bge          t3, a1, 14f
                  slt          a6, s3, t5
                  sll          t6, sp, a0
                  srai         s8, t4, 0
14:               slli         s3, s11, 30
                  lw           t5, 4(s6)
                  ori          s10, s10, 655
                  sra          t4, t3, s1
                  srl          s5, sp, s0
                  addi         s6, s6, 12
                  srl          s9, s6, s7
                  andi         sp, t3, 1877
                  sra          s4, t4, s7
                  or           a5, s0, s4
                  slt          s0, zero, a4
42:               addi x17, x30, 0
42:               jalr x17, x17, 0
sub_5:            srl          a5, sp, a2
                  sra          a6, t5, s2
                  addi         s6, s6, -64
                  addi         s9, t4, 779
                  srli         s3, t2, 15
                  sw           t5, 4(s6)
                  addi         t4, t6, 1807
                  la           sp, region_1+1249 #start riscv_load_store_rand_instr_stream_4
                  sra          a2, s4, a1
                  sll          t4, s10, a0
                  sltu         a5, s11, ra
                  ori          t1, zero, 1708
                  srl          s4, a7, a4
                  sltu         t4, s8, s0
                  ori          s8, a3, -236
                  lui          s2, 433331
                  auipc        a6, 123667
                  add          gp, s9, t3
                  sb           tp, 286(sp)
                  lbu          s2, 290(sp)
                  sb           t2, 637(sp)
                  sll          a4, a5, a4
                  nop
                  nop
                  lw           s9, 47(sp)
                  lb           ra, 37(sp)
                  sub          t4, t2, t3
                  lh           zero, -137(sp)
                  lh           a2, -271(sp)
                  lbu          s7, 254(sp)
                  and          a0, a3, tp
                  sb           a2, -947(sp)
                  sb           t4, 76(sp)
                  lb           s0, -996(sp)
                  xor          t1, s8, a2
                  add          a2, a4, a4
                  lbu          s8, 413(sp)
                  ori          a7, a6, -1316
                  lbu          t1, -679(sp)
                  add          a4, tp, gp
                  lbu          t1, 326(sp)
                  srai         t0, a0, 20
                  lb           a1, -367(sp)
                  lbu          s0, -690(sp)
                  lbu          a3, 522(sp)
                  xori         a3, s8, 1862
                  srl          t0, s5, s11
                  sll          s10, s6, s9
                  srli         t6, s8, 16
                  sltiu        zero, s6, -1015
                  sh           t2, 349(sp)
                  sll          gp, a0, s9
                  ori          a4, a4, 765
                  lb           a1, 384(sp)
                  and          s8, s5, t5
                  lbu          ra, 62(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_1+391 #start riscv_load_store_rand_instr_stream_1
                  lhu          a3, -37(s9)
                  sra          a5, s3, s0
                  lb           sp, -40(s9)
                  lb           s5, -55(s9)
                  ori          a7, tp, 405
                  sb           t1, -33(s9)
                  lbu          t6, -16(s9)
                  andi         t6, sp, -1186
                  slti         gp, s6, -1430
                  slti         s11, zero, 1967
                  sb           t1, 46(s9)
                  sub          gp, t1, s10
                  srai         s5, tp, 4
                  slti         t6, s1, -303
                  add          s0, t6, s4
                  andi         s8, tp, 1451
                  sll          t1, tp, s1
                  sh           t2, 53(s9)
                  lbu          t2, -30(s9)
                  sltu         a1, tp, s10
                  lbu          s8, -34(s9)
                  sh           sp, 25(s9)
                  sw           t0, 41(s9)
                  xori         a5, s11, -833
                  srai         s0, t6, 24
                  sb           s2, 34(s9) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_0+292 #start riscv_load_store_rand_instr_stream_5
                  srai         s5, s3, 30
                  srli         s5, gp, 4
                  sb           t4, 511(a4)
                  sltiu        s4, t4, 809
                  sub          t5, s5, t2
                  srli         s8, a5, 20
                  addi         s1, s10, -265
                  lbu          s5, 745(a4)
                  xor          a1, a7, t1
                  slli         s2, s10, 5
                  lbu          a6, -111(a4)
                  lb           s11, 1037(a4)
                  slli         t5, t1, 10
                  slli         a1, a4, 27
                  lw           t4, 1348(a4)
                  sub          t0, t0, t5
                  ori          s9, t1, 1907
                  lbu          s9, -45(a4)
                  lh           s7, 1626(a4)
                  srai         ra, a3, 30
                  sll          a0, s7, t4
                  lb           s8, 727(a4)
                  lh           sp, 338(a4)
                  sb           s0, -39(a4)
                  or           a1, gp, a3
                  lh           t4, 666(a4)
                  slli         s10, a3, 21
                  lhu          s7, 1656(a4)
                  lhu          t0, 678(a4) #end riscv_load_store_rand_instr_stream_5
                  la           t2, region_0+422 #start riscv_load_store_rand_instr_stream_2
                  or           gp, t1, s9
                  lh           sp, -256(t2)
                  sb           s3, 117(t2)
                  sb           sp, -87(t2)
                  sb           t3, -121(t2)
                  sltu         a2, s10, s8
                  lb           a0, -217(t2)
                  srai         a5, t6, 9
                  slli         t0, s6, 28
                  auipc        s8, 1012750
                  slt          s4, a1, t4
                  sb           s4, 131(t2)
                  slt          sp, a2, gp
                  slti         gp, zero, -1040
                  sb           t6, 242(t2)
                  lhu          s7, 70(t2)
                  lhu          s8, 6(t2)
                  sb           zero, 113(t2)
                  sub          a7, sp, gp
                  addi         a1, s9, 838
                  sb           s0, -242(t2)
                  auipc        a6, 429209
                  srl          s7, s3, s3
                  nop
                  auipc        a3, 630084
                  sw           s1, -130(t2)
                  lbu          a7, 210(t2)
                  slti         s9, s0, -1687
                  lb           s7, -8(t2)
                  sltiu        a2, t3, -806
                  or           s9, gp, s4
                  slt          zero, t0, gp
                  slli         t0, s11, 22
                  sb           t1, -148(t2)
                  addi         a1, s4, -996
                  sb           s4, -40(t2)
                  sh           a5, -156(t2)
                  lb           a5, 126(t2)
                  sltu         s0, t5, a3
                  lhu          a3, 226(t2)
                  lui          t4, 760336
                  lbu          t5, 50(t2)
                  lb           a2, -230(t2)
                  lb           a2, -53(t2)
                  or           s3, t5, a6
                  auipc        t6, 913904
                  sb           s1, -5(t2)
                  and          a6, t3, a7
                  xor          s10, tp, s8
                  lb           s9, 189(t2)
                  lh           s10, 192(t2)
                  xori         a6, zero, -1867
                  sb           a3, -192(t2)
                  sh           a5, 146(t2)
                  lbu          s8, -158(t2)
                  sll          s3, s7, t1
                  addi         s7, a7, 1347
                  lbu          a6, 207(t2)
                  lhu          gp, 88(t2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+647 #start riscv_load_store_rand_instr_stream_0
                  sb           t0, 54(sp)
                  lb           s11, -44(sp)
                  xori         s2, t2, -1235
                  lui          s9, 397491
                  lui          t1, 1004507
                  lbu          t4, 7(sp)
                  lh           s4, 23(sp)
                  lw           s9, -3(sp)
                  lbu          a2, -50(sp)
                  addi         a1, s6, 56
                  lhu          t1, -15(sp)
                  lb           s4, -46(sp)
                  lb           t4, 17(sp)
                  srai         s7, a6, 29
                  slti         t1, a7, -464
                  lbu          s4, 57(sp)
                  slti         a5, s1, -1092
                  slli         s7, s5, 12
                  slt          s8, s2, s2
                  andi         t2, s6, 959
                  lhu          s10, 35(sp)
                  sb           s9, 26(sp)
                  sll          a2, s3, t0
                  xor          s4, s8, a0
                  srai         t5, a0, 14
                  srl          s3, ra, s4
                  lbu          s2, 26(sp)
                  lh           gp, 59(sp) #end riscv_load_store_rand_instr_stream_0
                  auipc        sp, 714082
                  or           ra, s9, a7
                  andi         s2, s9, 1114
                  and          gp, t5, a5
                  andi         s4, s7, 2007
                  auipc        a6, 625194
                  bge          a1, s0, 17f
                  srl          s0, sp, a4
                  xori         s3, t4, 2008
                  bltu         s1, s5, 22f
                  slt          a3, a3, s9
                  slli         t4, t6, 3
                  srli         sp, a2, 17
                  bltu         s2, tp, 15f
                  srai         t0, s10, 31
15:               sra          s7, gp, t0
                  bltu         t0, a6, 23f
17:               slti         a7, s6, -1754
                  sltiu        t2, s3, 249
                  bltu         s10, s11, 25f
                  sltiu        s7, a1, -985
                  slti         a3, a5, -1409
22:               addi         s11, a5, -412
23:               srli         s3, s3, 23
                  andi         a5, s4, 180
25:               and          t4, a4, s11
                  bge          s10, a6, 38f
                  sra          a6, s3, s8
                  srai         s11, a1, 3
                  srai         gp, s7, 2
                  slt          s11, a7, s0
                  and          s3, ra, tp
                  ori          ra, sp, -363
                  slli         t6, t1, 29
                  srli         t5, a6, 0
                  lui          s7, 430975
                  srai         a7, a2, 11
                  xori         s4, s11, 417
38:               addi         s11, sp, -3
                  bltu         sp, zero, 48f
                  slt          s9, s10, a4
                  bgeu         s4, s7, 57f
                  sub          s11, a4, a5
                  sltiu        t5, t2, -112
                  srli         a3, s4, 21
                  lui          a3, 803266
                  slti         s9, a3, 611
                  lui          a5, 338510
48:               sra          s8, s10, s11
                  sltu         a0, tp, t4
                  xor          s2, s8, s4
                  addi         a4, t5, -1984
                  sra          s4, a2, a4
                  or           t1, a4, t0
                  add          s7, t5, t2
                  xor          a5, a2, t0
                  sub          s3, s5, gp
57:               ori          a2, t4, 460
                  slt          s0, zero, a1
                  andi         ra, t3, -1625
                  add          s4, s4, s8
                  beq          s9, tp, 66f
                  srli         zero, a1, 28
                  andi         a6, s3, -1978
                  blt          t3, s4, 78f
                  sub          s3, t5, a5
66:               bge          a0, tp, 83f
                  andi         ra, s3, -941
                  xor          ra, s3, a2
                  add          s4, t3, t0
                  bne          s7, tp, 89f
                  xor          s7, s9, zero
                  or           t1, gp, t3
                  bge          s8, t0, 93f
                  slt          a7, s0, a6
                  sll          s8, t0, a0
                  xor          t5, a2, a6
                  beq          s7, a1, 89f
78:               slli         s7, zero, 24
                  andi         gp, a4, -751
                  ori          a1, gp, 635
                  srai         t6, s8, 12
                  la           s10, sub_6
                  nop
                  lui          s5, 833544
                  addi         s10, s10, 475
                  xor          t2, tp, t2
sub_5_j8:         jalr         t5, s10, -474 #jump sub_5 -> sub_6
                  lui          s5, 973105
                  lui          a7, 438629
                  add          a3, s1, s7
83:               xor          s0, zero, s6
                  bne          a4, a5, 87f
                  slt          s1, t3, t0
                  slt          t0, s1, s5
87:               sub          t4, a0, ra
                  or           a1, s11, s4
89:               srli         s8, a1, 26
                  nop
                  slti         s3, a4, 881
                  bge          t1, s3, 94f
93:               add          s9, a3, t2
94:               beq          s10, t0, 108f
                  sll          a0, gp, s11
                  srli         a1, a7, 9
                  bltu         t1, s4, 114f
                  beq          s9, s3, 102f
                  bgeu         s2, zero, 115f
                  xori         a5, s2, -137
                  sra          s9, t3, a5
102:              srai         t4, ra, 30
                  nop
                  auipc        a5, 364811
                  auipc        t4, 201606
                  xor          s10, s10, s6
                  bltu         s11, s10, 127f
108:              sltiu        zero, t1, -1771
                  ori          sp, a0, 1276
                  addi         s4, tp, -96
                  andi         s9, t5, 745
                  srl          zero, s7, s7
                  sra          ra, s6, s3
114:              xori         a2, a6, -33
115:              beq          s2, zero, 118f
                  and          s3, s2, a2
                  sra          gp, a7, zero
118:              sll          s8, s9, t3
                  slt          gp, s0, t1
                  sltu         gp, a4, a3
                  beq          a0, a4, 136f
                  sll          a7, s10, t3
                  lui          a0, 369238
                  auipc        a3, 1042492
                  lui          s1, 155633
                  srl          a0, s0, t2
127:              slt          sp, s11, s9
                  bne          s5, t2, 141f
                  blt          s2, a5, 142f
                  xori         t0, tp, 976
                  slti         t4, t0, 626
                  xori         s5, s3, -46
                  sltiu        s2, s3, 1004
                  lui          a7, 1040861
                  srli         a6, t4, 15
136:              auipc        s5, 148562
                  xori         a5, tp, 394
                  lui          t6, 544302
                  srl          s11, s11, a1
                  andi         t5, a7, -1349
141:              lui          a2, 281478
142:              sra          s3, s4, a3
                  sll          a2, t0, s5
                  beq          a3, t4, 160f
                  bge          s3, s0, 157f
                  bltu         a4, a7, 147f
147:              or           s1, t0, a0
                  sub          t2, t4, a0
                  ori          gp, a1, 1416
                  bgeu         t5, s1, 157f
                  sll          t1, s9, s0
                  or           sp, zero, a2
                  bgeu         s3, gp, 162f
                  bgeu         s9, s4, 169f
                  and          sp, a3, a7
                  sub          t2, s7, s10
157:              ori          s2, ra, -601
                  xor          s4, t0, s8
                  beq          t1, sp, 173f
160:              slti         ra, s8, 1849
                  sll          s3, a7, s2
162:              bne          s1, a6, 165f
                  srli         a6, s6, 5
                  sub          s3, tp, sp
165:              slti         a2, s4, -1814
                  slt          a1, s2, t4
                  bltu         a7, s9, 183f
                  andi         gp, s0, 918
169:              andi         ra, s5, -1145
                  slt          t6, t5, tp
                  srli         t2, s8, 16
                  or           s3, a6, t3
173:              bge          t5, a2, 176f
                  bgeu         s0, t4, 179f
                  bne          t4, s9, 191f
176:              blt          a0, a7, 188f
                  beq          t1, s7, 190f
                  bge          a6, t5, 198f
179:              bltu         s6, a3, 193f
                  srai         s9, t2, 10
                  bne          s4, s2, 182f
182:              lui          a0, 1042001
183:              add          s11, tp, s7
                  bgeu         s3, a6, 186f
                  xori         a1, s10, -1775
186:              nop
                  xor          a3, a7, ra
188:              xori         s1, t0, 1246
                  lui          a3, 483168
190:              slti         t6, sp, 17
191:              sltiu        a2, t4, -92
                  bge          a3, s1, 194f
193:              slli         s4, s11, 7
194:              bgeu         a5, t0, 211f
                  xori         a7, a1, -2014
                  addi         a7, t3, -496
                  slli         a6, sp, 8
198:              srai         s8, a2, 26
                  blt          zero, s0, 211f
                  srai         a3, s2, 14
                  srl          t6, s6, s4
                  xor          s1, s8, a3
                  sltu         sp, tp, zero
                  slt          ra, s10, t3
                  beq          s3, sp, 211f
                  andi         sp, gp, -1075
                  xori         t6, sp, 1808
                  xori         s9, s6, -689
                  xor          s4, s4, s5
                  bltu         a5, s9, 219f
211:              bgeu         a6, s3, 218f
                  add          t5, s2, sp
                  slti         a3, s5, -863
                  srai         a7, sp, 7
                  beq          s8, s10, 222f
                  sltiu        a7, a7, 1699
                  nop
218:              bne          tp, s5, 237f
219:              bne          t6, a5, 228f
                  blt          a0, s2, 236f
                  addi         s0, s3, 33
222:              addi         s10, a6, 1922
                  slli         s9, s0, 8
                  bne          t4, a7, 241f
                  ori          a7, a6, 1461
                  ori          s5, t6, 1988
                  sub          s1, s4, s4
228:              srl          t2, a1, a1
                  srai         s3, s6, 17
                  bgeu         t1, s11, 243f
                  xor          s9, a1, t5
                  auipc        a5, 1030724
                  add          a3, s4, s7
                  addi         t1, t5, 656
                  bgeu         s10, ra, 246f
236:              srli         a5, t5, 0
237:              blt          s6, tp, 249f
                  beq          a4, t4, 258f
                  slli         a1, s7, 28
                  srli         a3, s3, 19
241:              add          s11, sp, ra
                  add          t6, zero, s5
243:              xor          s9, s6, s8
                  slli         s3, a2, 20
                  srai         zero, s7, 22
246:              blt          s4, t0, 259f
                  srli         t5, gp, 18
                  bltu         s11, s4, 252f
249:              srli         s9, t6, 2
                  bgeu         s1, s6, 265f
                  bge          a3, s0, 258f
252:              andi         s5, s11, -868
                  bne          zero, s6, 265f
                  nop
                  bne          s10, s8, 269f
                  or           s9, t5, a5
                  beq          s6, a2, 270f
258:              bge          a0, a3, 272f
259:              sltu         s2, s0, a6
                  and          ra, sp, s1
                  slli         s10, t5, 9
                  bltu         a6, tp, 271f
                  sra          a7, ra, a0
                  xor          s4, s10, s4
265:              srai         a0, s9, 31
                  or           s8, s11, t3
                  beq          a7, s7, 279f
                  andi         t5, a0, -664
269:              addi         s1, a5, 1635
270:              slti         a1, a0, -1066
271:              sltu         t0, t5, t4
272:              sll          s2, a5, s3
                  or           s8, s7, a0
                  nop
                  bgeu         s3, t3, 288f
                  bne          s11, s10, 295f
                  bne          s11, s3, 283f
                  blt          s2, a2, 298f
279:              srai         t0, a2, 20
                  bltu         a2, s6, 297f
                  addi         s4, s5, -1099
                  sltu         a2, t4, s1
283:              lui          t5, 948877
                  addi         s1, s0, -1483
                  add          zero, a3, s8
                  nop
                  srli         sp, zero, 0
288:              sra          zero, s6, t0
                  bgeu         t4, s1, 291f
                  or           a4, t6, a1
291:              sll          s10, t6, a4
                  sll          t4, a1, a5
                  lui          t6, 214172
                  srl          t4, gp, sp
295:              sll          a5, t4, s7
                  blt          t2, zero, 298f
297:              nop
298:              bge          s2, t4, 314f
                  bltu         t5, t5, 312f
                  blt          a0, s5, 317f
                  sll          a7, t2, a1
                  beq          t2, tp, 305f
                  blt          s0, s10, 314f
                  xor          a5, t2, s8
305:              andi         a7, s2, 48
                  andi         s4, s7, 1821
                  sra          gp, gp, s4
                  bltu         a2, t2, 309f
309:              sll          t5, t2, t6
                  srai         a4, a7, 1
                  and          t2, ra, gp
312:              andi         a2, t6, -345
                  auipc        s5, 405880
314:              ori          t0, a1, 1451
                  slt          t1, sp, s10
                  xor          s9, s11, s1
317:              andi         t5, s7, -1601
                  or           a5, a6, t1
                  ori          s2, s0, -977
                  addi         a0, t5, -1967
                  srli         a2, t5, 24
                  nop
                  xor          s5, s1, s11
                  bgeu         t4, s0, 331f
                  ori          s5, t1, -1812
                  slt          s3, s7, s1
                  beq          a1, t4, 336f
                  add          a7, s4, s11
                  sltu         t5, s0, t0
                  slt          a6, a2, a4
331:              blt          a3, ra, 336f
                  xor          s2, t0, gp
                  bgeu         tp, s0, 345f
                  xor          s3, zero, t5
                  blt          a1, s2, 351f
336:              or           s5, a6, a6
                  bltu         gp, a4, 340f
                  srai         t5, s1, 31
                  srli         s2, ra, 27
340:              sltu         t4, s11, t2
                  auipc        s9, 883417
                  sra          a5, s8, t2
                  sra          s8, t2, a5
                  blt          s2, a4, 364f
345:              sll          s7, ra, sp
                  andi         s10, s4, -1870
                  nop
                  or           a1, a3, a3
                  addi         t5, s5, 873
                  nop
351:              beq          s1, a2, 355f
                  bge          s8, a2, 368f
                  la           sp, region_0+349 #start riscv_load_store_rand_instr_stream_3
                  xor          t4, ra, s6
                  xori         zero, s0, 41
                  lui          t1, 886677
                  sra          a5, s4, t4
                  lh           a3, 15(sp)
                  sll          a3, a1, s11
                  addi         zero, s2, -1047
                  or           s3, a6, a0
                  lbu          s0, 29(sp)
                  sra          s9, a6, s9
                  addi         t2, t5, 1216
                  lb           a2, 40(sp)
                  lb           s2, -63(sp)
                  sb           s4, 8(sp)
                  srai         a3, s9, 3
                  auipc        t6, 628975
                  sb           s2, -4(sp)
                  sb           s10, 44(sp)
                  lb           zero, -18(sp)
                  lb           a6, -2(sp)
                  and          a5, a1, t0
                  sb           t2, -52(sp)
                  lb           s0, 13(sp)
                  lbu          s1, 18(sp)
                  sb           t1, -25(sp)
                  sb           s1, 30(sp)
                  lbu          t0, -34(sp)
                  lbu          s8, 43(sp)
                  sll          s9, s5, a2
                  lb           s0, -35(sp)
                  lhu          gp, -25(sp)
                  sll          a7, s1, a2
                  lb           s9, -46(sp)
                  sll          s4, ra, s6
                  sltiu        a6, s7, 210
                  srai         s0, s11, 1
                  slti         t1, tp, 1527
                  sltu         a1, a1, s3
                  slti         t0, tp, -349
                  lw           ra, 51(sp)
                  lb           s8, 13(sp)
                  lb           t1, 1(sp)
                  lb           t2, -46(sp)
                  xori         ra, s8, -608
                  xor          a6, s5, tp
                  lbu          t6, 11(sp)
                  sra          s3, sp, s5
                  and          s8, t0, s10
                  lbu          t1, 24(sp)
                  srl          s8, s5, s9
                  slt          t0, a0, ra
                  lb           t6, 13(sp)
                  sh           zero, 33(sp) #end riscv_load_store_rand_instr_stream_3
                  auipc        a0, 977654
                  auipc        a3, 775864
355:              srl          t4, t5, s9
                  slt          t6, a5, s1
                  bge          t1, t2, 364f
                  bne          zero, s11, 360f
                  nop
360:              srai         ra, a1, 15
                  add          sp, t3, t6
                  bge          s10, s8, 364f
                  and          t2, a4, a3
364:              lui          a0, 255674
                  xori         s10, s1, -1934
                  xori         s9, s1, 1521
                  sra          s7, t0, s11
368:              add          s0, a5, tp
                  sub          zero, s10, a3
                  slli         a1, a5, 24
                  bge          a6, t4, 388f
                  sra          s11, s1, t0
                  bgeu         tp, a1, 387f
                  lui          t0, 598843
                  beq          zero, a1, 386f
                  bgeu         a7, s11, 379f
                  bltu         a4, a2, 389f
                  slti         gp, t0, 397
379:              lui          sp, 224318
                  sub          s1, a2, t6
                  beq          s2, gp, 387f
                  slti         s11, a6, -1495
                  bgeu         t0, t5, 399f
                  sltu         t6, t6, a2
                  add          zero, s9, s1
386:              xori         a7, t3, 590
387:              sra          s9, t2, s8
388:              srli         s10, s4, 3
389:              bgeu         t4, ra, 402f
                  lui          s1, 981464
                  srl          s8, t3, s4
                  andi         s7, s5, -309
                  srai         s10, s4, 5
                  bge          a1, a3, 403f
                  slt          t0, a5, s4
                  xori         s8, s3, -2027
                  slli         t4, a0, 25
                  sra          sp, tp, s4
399:              slti         t4, gp, -1056
                  sub          ra, s3, s11
                  srli         a3, s6, 14
402:              sub          a7, a6, a6
403:              slt          t0, ra, t6
                  and          a2, s0, a6
                  xori         s11, s0, -102
                  beq          t1, s0, 415f
                  andi         t2, ra, 864
                  slti         a7, t2, -1270
                  xor          a5, a5, t4
                  sub          a0, a2, t2
                  nop
                  lui          s2, 756894
                  add          ra, s9, s8
                  ori          s4, t0, 750
415:              slli         a4, t3, 15
                  bge          t4, s3, 420f
                  sltiu        a6, a2, 357
                  and          t2, t3, s3
                  bge          t3, s1, 439f
420:              sltiu        s9, a2, 211
                  sltu         t1, s5, a0
                  bltu         a1, s9, 439f
                  and          t5, s2, s0
                  sra          t2, s5, s7
                  bltu         s10, s1, 438f
                  beq          tp, sp, 441f
                  sra          t5, s1, a3
                  or           s0, t3, t4
                  slti         a0, s0, -1640
                  slti         s10, zero, 867
                  sra          zero, t1, a5
                  bltu         s2, t3, 439f
                  xori         t2, a7, -946
                  srli         t6, a7, 1
                  add          s2, t0, a6
                  sltiu        s3, a5, 1396
                  ori          a5, t1, -244
438:              sra          ra, s1, t5
439:              lui          a0, 374105
                  add          s0, gp, t1
441:              bge          t2, s5, 457f
                  lui          t0, 911669
                  slli         s9, a7, 3
                  sra          a5, a1, t4
                  sll          a6, a1, t5
                  bge          s8, t5, 465f
                  sub          a0, s7, s8
                  add          sp, tp, zero
                  andi         a4, t5, -405
                  nop
                  sltiu        s9, s9, 1701
                  sra          s0, tp, gp
                  bne          ra, a1, 473f
                  beq          a1, s11, 457f
                  bltu         zero, t2, 468f
                  addi         s5, t1, 451
457:              bge          ra, s3, 469f
                  bne          s5, a6, 470f
                  slti         a6, t6, -855
                  blt          t4, t4, 465f
                  sltiu        a3, a3, -639
                  slli         gp, s6, 5
                  sltiu        a1, a7, -964
                  xor          a3, s6, t5
465:              nop
                  srli         s10, a4, 28
                  sra          s9, a1, t0
468:              addi         t5, t6, 1573
469:              slti         a5, t1, 1442
470:              slt          ra, sp, a5
                  bne          s5, s0, 485f
                  xor          s7, zero, t5
473:              beq          t0, t2, 474f
474:              slt          a1, s10, s11
                  srli         t6, s4, 19
                  srl          s11, s7, tp
                  srl          ra, t3, ra
                  sll          a6, s6, a6
                  blt          gp, a4, 495f
                  lui          ra, 247459
                  slli         a7, zero, 8
                  bne          tp, t6, 494f
                  slt          s11, s4, s3
                  nop
485:              slt          s9, t3, t0
                  sltiu        a2, a6, -1454
                  xor          a6, t3, a3
                  add          a3, a3, t5
                  blt          s4, zero, 502f
                  srl          ra, s2, s0
                  sltu         t4, sp, s9
                  srl          ra, t5, a0
                  slt          s9, t4, zero
494:              andi         s1, sp, 1156
495:              slt          sp, t5, a3
                  slli         gp, t2, 0
                  auipc        s0, 857595
                  or           a1, s9, s1
                  andi         t1, s5, -1194
                  bne          zero, gp, 503f
                  or           t1, a7, s3
502:              addi         s8, s10, 540
503:              bgeu         t6, t0, 517f
                  sra          ra, t3, t6
                  bltu         t0, s11, 507f
                  or           s1, a7, a2
507:              xori         s0, t4, 807
                  slt          s10, t0, t2
                  addi         t5, t5, -344
                  sltiu        a2, sp, -1862
                  srai         t0, s1, 20
                  sltu         s0, s0, ra
                  srai         a1, s10, 13
                  sltu         t5, s7, gp
                  srl          s3, s5, a1
                  slti         s1, s2, 407
517:              xor          t1, a6, s4
                  addi         gp, s2, 428
                  slt          a4, a0, s11
                  or           s7, s11, s4
                  srli         t4, s7, 28
                  bne          s2, s10, 542f
                  xor          a3, s8, a0
                  bge          s8, s5, 538f
                  sra          s7, s6, s6
                  slli         s3, s8, 10
                  slti         a2, s0, 436
                  slt          gp, s10, s5
                  auipc        a6, 109752
                  srli         t6, s7, 3
                  srai         a5, t6, 25
                  slt          s3, s2, gp
                  sub          t1, s3, zero
                  or           a3, gp, s9
                  srai         t4, s9, 28
                  andi         zero, sp, 445
                  beq          s7, t4, 543f
538:              sra          zero, t1, t1
                  nop
                  srl          t6, t2, a6
                  sltu         gp, s10, gp
542:              slli         gp, a2, 21
543:              bge          sp, s5, 550f
                  bgeu         zero, s0, 551f
                  andi         a6, t6, 1802
                  bltu         s3, s7, 559f
                  slt          s1, t5, s4
                  slti         s3, a5, 1770
                  lui          s3, 270700
550:              xor          t1, a2, s11
551:              sltiu        s7, t1, 1489
                  sub          s0, a2, ra
                  xor          a3, tp, s11
                  addi         t5, gp, 370
                  xori         s10, a7, -1292
                  slt          gp, t4, a0
                  beq          s2, a0, 566f
                  nop
559:              slti         t2, ra, 1846
                  nop
                  lui          s0, 319913
                  blt          zero, t5, 566f
                  srai         a2, a1, 31
                  slli         s5, s11, 1
                  blt          s7, s10, 581f
566:              srai         t5, sp, 8
                  bne          s0, a1, 578f
                  auipc        t0, 848886
                  slli         ra, zero, 7
                  sltu         t0, t5, gp
                  srli         s10, a1, 11
                  bge          s8, t1, 587f
                  xor          t0, a7, t5
                  sub          a0, s9, gp
                  nop
                  blt          t4, s3, 588f
                  slli         s10, s0, 27
578:              sll          a1, gp, a1
                  slt          t4, s3, a6
                  sub          s8, ra, s1
581:              sll          t1, a4, t0
                  slli         zero, a0, 13
                  xor          sp, a4, a1
                  or           s4, t1, a7
                  sltiu        t6, a7, -715
                  sltu         s2, s7, a3
587:              bgeu         ra, s8, 606f
588:              or           a2, s10, a3
                  sltu         s5, s9, t6
                  sltiu        s1, t5, 906
                  auipc        t0, 638292
                  slti         s5, t6, -1123
                  addi         s0, s8, -725
                  sub          s2, s1, a0
                  auipc        a1, 180041
                  bltu         s11, gp, 598f
                  slt          t5, s11, a7
598:              sltiu        a3, s11, -961
                  add          a3, s0, a7
                  blt          s2, a4, 616f
                  sll          t1, s4, sp
                  slti         a4, s8, -334
                  srli         s3, a5, 24
                  slti         a1, s5, 615
                  srl          t4, sp, zero
606:              bgeu         t1, a4, 611f
                  add          a3, sp, t6
                  sltiu        s3, s11, 236
                  or           gp, a0, a2
                  srli         s7, a1, 4
611:              sltu         s4, a6, t0
                  blt          sp, t1, 632f
                  addi         s0, s7, -1428
                  or           s1, t5, t5
                  srli         t0, s3, 8
616:              xori         t2, a0, -414
                  bne          a0, a2, 629f
                  bltu         t5, t1, 627f
                  addi         t5, s5, -1231
                  or           t4, t4, s8
                  and          s10, a0, s4
                  sltu         t2, t0, a1
                  auipc        a0, 595317
                  ori          s2, tp, 1729
                  slli         a0, a5, 24
                  bgeu         sp, s6, 643f
627:              addi         t5, s10, -1114
                  bltu         t1, a1, 629f
629:              srl          s3, s6, s1
                  xor          t4, a4, s3
                  bne          t5, s3, 644f
632:              blt          s7, a7, 649f
                  or           a5, gp, tp
                  srli         s2, s4, 23
                  srai         sp, a0, 12
                  srai         s8, t4, 8
                  or           s10, t0, a1
                  xor          s1, s6, a7
                  slti         a3, s4, -769
                  auipc        s8, 197894
                  auipc        s4, 101266
                  bge          ra, t5, 658f
643:              auipc        a7, 301677
644:              bgeu         a2, t1, 647f
                  andi         sp, ra, -1002
                  lui          s7, 923395
647:              bgeu         zero, a1, 662f
                  xor          t6, tp, s7
649:              addi         t2, s11, -1721
                  add          a7, t1, s4
                  srli         s11, s5, 7
                  sll          s11, s1, a3
                  bltu         s8, t6, 673f
                  xori         s2, s3, -1425
                  lui          t6, 259150
                  bne          tp, gp, 662f
                  xor          s5, t5, s9
658:              sll          s2, a7, tp
                  bgeu         t2, a7, 671f
                  srai         a5, zero, 4
                  xori         t1, s6, 313
662:              blt          s2, a3, 663f
663:              xor          a7, t6, s2
                  sub          t4, t1, s1
                  and          ra, s4, t6
                  sub          s1, t5, s11
                  andi         s5, s4, 1665
                  sltiu        s7, s3, -2039
                  bgeu         s1, s10, 685f
                  sltu         gp, s4, t1
671:              add          a1, s6, sp
                  slti         t2, gp, -469
673:              srl          s0, a5, a0
                  xor          s3, t6, s5
                  srli         a0, t2, 18
                  sltu         t0, s11, s2
                  srli         s7, s5, 31
                  slti         s5, ra, 1400
                  blt          a6, a7, 684f
                  beq          s4, a3, 694f
                  sltu         a4, t6, a3
                  add          a3, s0, s9
                  ori          t6, s1, 1951
684:              bltu         s10, t4, 697f
685:              slli         a5, s7, 9
                  beq          s5, zero, 695f
                  srai         a0, tp, 3
                  lui          gp, 935737
                  sra          s7, sp, t5
                  and          gp, s11, t5
                  lui          s2, 153985
                  add          sp, s6, s7
                  nop
694:              nop
695:              xor          a3, s5, s5
                  xori         a5, a6, -532
697:              bltu         a3, s11, 710f
                  xori         s4, gp, -1731
                  or           t5, a4, a3
                  andi         a1, a0, -944
                  slli         a3, a0, 28
                  srl          a0, s11, a6
                  nop
                  slti         s11, s10, -1718
                  or           s9, a7, s4
                  srli         s0, s2, 11
                  lui          t2, 22515
                  sltiu        s4, s2, -593
                  slt          a5, s5, s6
710:              blt          tp, s8, 712f
                  bne          s8, s2, 731f
712:              sra          s11, a6, sp
                  sra          s3, s4, zero
                  sltu         s0, s7, t3
                  slli         s3, s11, 4
                  nop
                  sltiu        sp, ra, -362
                  bgeu         t1, t5, 737f
                  slti         s8, s9, -1865
                  beq          s9, t5, 723f
                  auipc        ra, 946509
                  bge          t6, a3, 729f
723:              auipc        s0, 498499
                  or           s9, t0, t1
                  beq          tp, s11, 728f
                  srai         s11, a6, 10
                  nop
728:              bltu         a2, a4, 732f
729:              xor          s7, a3, s6
                  srli         ra, s6, 19
731:              sltu         a6, s11, t2
732:              slti         s4, tp, 547
                  sra          t4, t5, s2
                  sltiu        t4, gp, -1314
                  auipc        s5, 117218
                  blt          s6, a2, 743f
737:              sll          s8, s6, t2
                  slli         a7, sp, 26
                  and          t5, t1, s7
                  sltiu        a5, gp, 250
                  andi         sp, t6, -487
                  beq          t3, a0, 744f
743:              bge          t5, s5, 754f
744:              beq          s7, s6, 760f
                  srl          s1, s2, s5
                  srli         s7, ra, 7
                  lui          gp, 76135
                  addi         a6, a3, -1818
                  slti         a1, sp, 1259
                  add          a2, zero, s9
                  slti         a0, a4, -119
                  bne          a3, s7, 769f
                  bltu         s8, sp, 767f
754:              sll          s7, a5, zero
                  xori         s11, t0, 416
                  addi         s11, t4, -324
                  andi         s5, a0, 1707
                  sltu         s1, gp, a2
                  blt          t5, a3, 776f
760:              sll          a6, t6, t5
                  and          a2, tp, s4
                  bgeu         s0, t0, 775f
                  sltu         s8, a5, s9
                  bltu         ra, s3, 776f
                  bge          s8, a4, 781f
                  bltu         a5, s3, 778f
767:              bne          a3, s4, 776f
                  blt          s9, a3, 781f
769:              and          s5, a6, a7
                  nop
                  slti         s0, a6, 1415
                  xori         t5, a5, -2027
                  nop
                  srli         t5, t3, 15
775:              bltu         s5, s0, 778f
776:              slt          t5, s2, s4
                  add          s7, s5, t1
778:              slt          s3, sp, s11
                  ori          t2, s10, -815
                  xori         s2, s7, -374
781:              blt          s3, a6, 787f
                  addi         gp, t5, 1030
                  and          zero, a3, s5
                  xor          s2, t3, a1
                  nop
                  sltu         s11, s11, t3
787:              slti         sp, a5, -737
                  beq          s4, zero, 792f
                  sra          s1, s10, gp
                  sltiu        t0, t2, 1553
                  ori          s9, s6, -648
792:              auipc        s7, 818597
                  bge          s5, s9, 808f
                  auipc        s1, 130493
                  sll          s4, s9, s0
                  slli         a5, a7, 20
                  srai         s5, s4, 22
                  andi         zero, t3, 802
                  beq          s7, gp, 816f
                  sltu         ra, tp, gp
                  srai         a3, a4, 26
                  bne          s8, s2, 821f
                  ori          sp, sp, 736
                  sra          s3, a4, s6
                  add          t4, sp, a0
                  sll          t6, sp, t3
                  add          s1, sp, ra
808:              andi         t0, a5, -869
                  auipc        s10, 374057
                  xor          t6, s8, a1
                  srli         a4, a5, 17
                  andi         a5, a2, -340
                  slti         ra, s11, 713
                  srai         a4, a2, 23
                  sltiu        t2, s2, -1754
816:              auipc        s11, 837842
                  add          t6, s7, s8
                  srl          a3, s0, s7
                  xori         sp, s6, -1937
                  slt          t0, t0, a4
821:              xori         s8, a6, -1801
                  lw           t5, 4(s6)
                  srli         t2, a3, 23
                  sltiu        a1, a2, -907
                  lui          s9, 685358
                  xor          s3, zero, s8
                  slli         s9, sp, 13
                  addi         t0, t5, -797
                  auipc        a4, 89560
                  addi         s6, s6, 64
                  srl          a7, a5, t4
                  or           sp, gp, s10
                  lui          a4, 305840
1098:             addi x14, x30, 1
1098:             jalr x14, x14, 0
sub_1:            addi         s6, s6, -36
                  and          s7, a6, t3
                  srl          s5, s5, t0
                  sw           t5, 4(s6)
                  auipc        s8, 606619
                  la           gp, region_0+1896 #start riscv_load_store_rand_instr_stream_5
                  lb           a1, -480(gp)
                  sb           t5, -691(gp)
                  nop
                  lbu          s0, -686(gp)
                  lbu          t5, -1621(gp)
                  lbu          s1, -1317(gp)
                  lbu          t1, -349(gp)
                  lb           s5, -847(gp)
                  slt          a0, a2, sp
                  sb           t0, -904(gp)
                  slt          s4, s10, t4
                  lbu          a7, -1069(gp)
                  lb           ra, -915(gp)
                  sh           a1, -1142(gp)
                  lhu          s7, -256(gp)
                  lbu          t4, -946(gp)
                  sb           s10, -282(gp)
                  sb           t4, -1862(gp)
                  lbu          s9, -1190(gp)
                  sh           a2, -1482(gp)
                  add          s2, a6, sp
                  slti         s2, zero, 1132
                  xori         t0, s4, -1221
                  lw           a7, -604(gp)
                  add          s4, s10, t1
                  sub          a6, a7, a4
                  lh           s9, -1254(gp)
                  auipc        a1, 47519
                  nop
                  sh           s4, -958(gp)
                  lw           t4, -1348(gp)
                  lbu          ra, -1242(gp)
                  sb           a6, -600(gp)
                  and          t5, s4, t6
                  sb           s4, -877(gp)
                  sb           a7, -889(gp)
                  lbu          s2, -1283(gp) #end riscv_load_store_rand_instr_stream_5
                  la           t5, region_0+767 #start riscv_load_store_rand_instr_stream_6
                  nop
                  srai         a7, s4, 2
                  ori          s7, t6, -1935
                  andi         s8, t6, -1785
                  lb           s1, 1168(t5)
                  lb           s2, -152(t5)
                  lbu          a7, 1185(t5)
                  slti         ra, gp, -360
                  addi         t0, a7, -748
                  sra          s9, t2, s1
                  ori          s11, s7, 2005
                  sb           s9, 988(t5)
                  lb           t6, -388(t5)
                  xori         s9, t6, 635
                  sh           s5, 855(t5)
                  srl          t1, s10, s3
                  or           a4, s9, ra
                  slt          t2, a5, t5
                  lb           a0, -134(t5)
                  sh           sp, 203(t5)
                  sltiu        t0, a5, -1855
                  xori         t4, t1, 1373
                  sltu         t1, a1, t0
                  sb           a6, 822(t5)
                  and          s5, zero, t6
                  lh           a0, -711(t5)
                  nop
                  sb           s1, 1179(t5)
                  add          s3, s5, s8
                  sll          t6, a4, s4
                  lhu          a0, -325(t5)
                  xori         s10, a3, 1150
                  sll          s1, ra, s4
                  lui          s8, 256831
                  xor          s4, s11, tp
                  sra          a4, s2, tp
                  andi         s9, s10, -375
                  xori         a2, a1, -1111
                  auipc        a7, 410317
                  and          a6, t2, s10
                  lbu          s4, 1123(t5)
                  xor          t2, s4, a1
                  and          t2, s3, s11
                  sb           a5, -110(t5) #end riscv_load_store_rand_instr_stream_6
                  la           s8, region_1+1253 #start riscv_load_store_rand_instr_stream_11
                  lbu          a4, 6(s8)
                  addi         a2, s1, 1921
                  xor          a7, t2, s0
                  or           t0, tp, t4
                  sb           s9, 13(s8)
                  or           s3, s1, a5
                  slti         s4, a6, 155
                  slt          s5, t6, t4
                  or           a7, a2, a6
                  lbu          s9, -7(s8)
                  sb           s11, 13(s8)
                  sltiu        s7, s5, 1325
                  sb           a5, 12(s8)
                  or           ra, a7, ra
                  lbu          a4, 6(s8)
                  lh           s1, 3(s8)
                  add          a1, a6, a2
                  sub          t0, t5, a0
                  lb           s7, 14(s8)
                  nop
                  slt          t6, a1, s5
                  sb           a0, 11(s8)
                  sw           a1, 3(s8)
                  lbu          a2, 8(s8)
                  srli         t4, gp, 27
                  sltiu        zero, s11, -648
                  addi         s9, s4, -1227
                  sltu         t4, tp, a1
                  or           s11, s5, s9
                  slt          s2, t4, s7
                  xor          s7, s0, s3
                  andi         a5, gp, 626
                  sh           s6, 7(s8) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+979 #start riscv_load_store_rand_instr_stream_8
                  xor          t2, t5, gp
                  lb           s3, 62(sp)
                  lbu          gp, 34(sp)
                  sb           s1, 54(sp)
                  lbu          a5, -10(sp)
                  or           s10, a0, t0
                  xor          t5, s6, s9
                  lbu          s3, -44(sp)
                  ori          a3, t5, -294
                  lbu          s10, -34(sp)
                  sra          t5, s3, gp
                  sh           gp, -53(sp)
                  srai         ra, t3, 8
                  ori          s11, t3, 964
                  ori          zero, zero, -1349
                  ori          s0, s7, -1683
                  slli         s9, t2, 7
                  addi         s4, s0, -1512
                  lui          s10, 287671
                  xori         a5, ra, -74
                  nop
                  lbu          s7, -20(sp)
                  slli         s9, t1, 0
                  srli         a6, a6, 5
                  ori          a0, t4, -1509
                  slti         a2, s11, 73
                  and          a6, s3, t1
                  slt          t2, a4, t4
                  lui          a3, 441288
                  sltiu        gp, s8, 1189
                  lhu          t6, 35(sp)
                  auipc        t2, 838886
                  sra          t6, s11, t5
                  srl          s4, t3, t5
                  sb           t5, -42(sp)
                  lb           s0, -52(sp)
                  sb           a3, 12(sp)
                  lhu          a6, -63(sp)
                  lbu          s9, 36(sp)
                  lb           a5, -60(sp)
                  andi         a3, s8, -1533
                  lui          t2, 809742
                  sh           a1, -41(sp)
                  lbu          a6, 29(sp)
                  slli         a6, s7, 28
                  and          s11, t0, s4
                  lh           ra, -11(sp)
                  or           s5, t4, a4
                  lbu          a0, -16(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s11, region_1+1407 #start riscv_load_store_rand_instr_stream_2
                  lb           ra, -108(s11)
                  lbu          a5, -231(s11)
                  srl          a1, t4, t1
                  sb           t0, 109(s11)
                  ori          a5, a1, -2031
                  lh           s4, -191(s11)
                  xor          t0, s11, s4
                  slti         a1, s4, 1271
                  or           ra, a4, s3
                  lh           s7, -185(s11)
                  lbu          a0, 236(s11)
                  andi         a2, ra, 151
                  xori         zero, s2, 609
                  sb           s11, 70(s11)
                  slt          s8, zero, gp
                  lbu          s1, -33(s11)
                  srl          a6, tp, s3
                  sltu         s10, s5, s7
                  sb           a4, 216(s11)
                  lbu          zero, 164(s11)
                  srai         s3, gp, 25
                  sb           s11, 170(s11)
                  lbu          a0, -109(s11)
                  srl          s10, sp, s3
                  lb           t0, 170(s11)
                  lb           gp, 205(s11)
                  sh           t4, -123(s11)
                  slt          a7, s11, zero
                  auipc        a5, 996426
                  lbu          s2, -84(s11)
                  sb           a6, -113(s11)
                  sb           s9, 20(s11)
                  slli         a3, a1, 5
                  lbu          t0, -51(s11)
                  xori         s4, t3, -1724
                  and          a1, s11, ra
                  lh           t4, 83(s11)
                  lbu          s5, -230(s11)
                  sb           a2, -246(s11)
                  xori         t6, a7, 648
                  srli         a2, s11, 20
                  lbu          t6, -231(s11) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+323 #start riscv_load_store_rand_instr_stream_9
                  lbu          s0, -40(sp)
                  lbu          ra, -88(sp)
                  sltu         s0, t3, s3
                  or           s4, s9, s5
                  andi         ra, s0, -1242
                  slli         a6, s4, 0
                  nop
                  srai         t1, s4, 22
                  sltiu        a2, zero, 1117
                  auipc        s8, 216753
                  slti         s11, a3, 274
                  and          a6, s9, s3
                  lb           t1, -149(sp)
                  sltu         s10, s2, a6
                  lbu          t6, -68(sp)
                  sb           s9, -58(sp)
                  and          a5, s5, t6
                  lui          s5, 841773
                  lh           a5, 11(sp)
                  lui          s3, 923901
                  auipc        s4, 311371
                  slt          s0, s3, t2
                  auipc        a1, 1039548
                  srai         s9, t4, 0
                  sub          t1, a0, a0
                  sb           s4, 79(sp)
                  sltu         t4, s6, a0
                  add          t4, t1, t0
                  lb           a0, -226(sp)
                  sll          t1, s1, ra
                  slli         t4, s1, 15
                  lbu          s5, -223(sp)
                  srli         t6, a6, 28
                  sh           a6, 83(sp)
                  slt          a7, tp, t0
                  lb           s11, -79(sp)
                  lhu          s10, -163(sp)
                  lw           s11, 217(sp)
                  sll          gp, s0, a1
                  sb           t3, 146(sp)
                  addi         s7, s6, 359
                  sh           s11, -167(sp)
                  sb           a1, -152(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s5, region_0+1516 #start riscv_load_store_rand_instr_stream_1
                  nop
                  slt          sp, sp, a3
                  lbu          t2, 138(s5)
                  sll          gp, t3, ra
                  sub          zero, a4, t0
                  lb           t6, -421(s5)
                  sltiu        s8, a2, -775
                  nop
                  lbu          a5, 291(s5)
                  lhu          a7, -1062(s5)
                  add          s10, t0, a2
                  lbu          ra, -1095(s5)
                  lhu          s10, 274(s5)
                  xori         gp, t2, -1684
                  slli         s3, a1, 1
                  lb           s10, 49(s5)
                  lbu          s11, 270(s5)
                  slt          gp, ra, t2
                  sub          a0, a6, s9
                  slli         gp, s5, 22
                  lb           s0, -1381(s5)
                  lh           a2, 330(s5)
                  auipc        a7, 184029
                  add          s10, a4, s2
                  lb           s0, 241(s5)
                  sltiu        a1, t0, 503
                  lb           s0, -1349(s5)
                  lh           a7, 474(s5)
                  sltu         ra, tp, tp
                  sb           t6, -1037(s5)
                  lbu          t0, -831(s5)
                  lw           s1, -612(s5)
                  auipc        s0, 133260
                  srl          s8, a3, t6
                  lbu          t0, 36(s5)
                  xor          a3, s10, t6
                  srl          a1, zero, s8
                  sb           a1, 285(s5)
                  sltu         s7, s4, s7
                  sltu         s10, s9, a2
                  lbu          s11, -489(s5)
                  lb           s1, 227(s5)
                  sra          a7, a3, a2
                  lb           s11, -89(s5)
                  lhu          gp, -576(s5)
                  sll          s10, a1, s6
                  sltiu        a5, a1, -328
                  lbu          a7, -770(s5)
                  lbu          a4, -548(s5) #end riscv_load_store_rand_instr_stream_1
                  slli         s7, t2, 21
                  sltu         ra, s4, t2
                  bgeu         a7, t2, 14f
                  bne          sp, ra, 14f
                  bne          a1, a1, 11f
                  add          a5, zero, t2
                  sra          ra, t0, s4
                  xor          gp, t2, t5
                  auipc        t6, 527505
                  lui          sp, 483568
                  srli         s9, a7, 27
11:               add          a2, s1, s7
                  sltiu        ra, t3, 1686
                  slli         s2, gp, 4
14:               andi         ra, s11, 1152
                  beq          t3, s6, 24f
                  blt          s1, s2, 32f
                  sll          s10, a5, t3
                  srl          a1, s8, a4
                  xori         t4, s7, -1876
                  lui          s10, 83881
                  andi         t1, a1, 1590
                  slti         ra, s4, -1170
                  xori         s3, t2, 834
24:               addi         s10, s10, -1352
                  and          gp, t3, s1
                  addi         gp, s3, -1882
                  bge          a6, t4, 29f
                  slt          s2, s0, a6
29:               sra          s9, s8, a7
                  srli         a3, s9, 12
                  srl          s3, t2, a1
32:               add          gp, s3, s9
                  sltiu        a5, s5, 156
                  addi         s4, a7, -1437
                  bltu         a5, a7, 49f
                  sub          s4, a0, s0
                  nop
                  or           s2, s2, s3
                  sra          a6, t1, s10
                  bltu         s9, t1, 45f
                  bge          s2, t2, 48f
                  slli         t5, sp, 13
                  srai         t4, a5, 21
                  xor          s11, a0, t2
45:               xor          t4, s9, t5
                  slti         t2, s7, 757
                  andi         s8, t3, 1370
48:               sll          a7, s4, tp
49:               ori          t1, s8, -1162
                  bge          a7, a7, 52f
                  bne          s2, a6, 52f
52:               bne          a3, s9, 65f
                  bltu         a2, t3, 56f
                  ori          t4, t3, 112
                  srai         s10, s2, 26
56:               sltu         s5, a7, a0
                  blt          s6, a1, 59f
                  srl          s9, sp, s1
59:               sll          t5, t6, a6
                  sltu         sp, s5, s6
                  slt          s2, a6, a1
                  slt          s4, zero, s0
                  srli         s8, sp, 2
                  sltu         s10, a5, tp
65:               sltu         s2, s0, a4
                  sltiu        a2, s11, -263
                  addi         t2, t3, -1195
                  auipc        t0, 69655
                  srli         a4, a6, 14
                  srli         sp, t0, 0
                  nop
                  beq          t1, ra, 89f
                  andi         t0, a4, 1933
                  auipc        s4, 498919
                  sll          zero, s3, s5
                  slt          a1, a6, s5
                  ori          t0, s5, -1836
                  ori          t4, t4, -1719
                  bge          s1, a1, 82f
                  bne          sp, t6, 100f
                  srli         gp, a1, 23
82:               bltu         t5, s6, 102f
                  xori         t4, t6, -1431
                  slli         a6, t0, 18
                  sub          t6, a5, s2
                  beq          gp, s4, 101f
                  bgeu         s1, t3, 94f
                  bge          s0, a1, 97f
89:               nop
                  or           a7, s9, s7
                  sltu         a1, a1, s11
                  srai         t6, s7, 22
                  bltu         tp, s3, 104f
94:               bltu         a2, s5, 101f
                  slti         a2, a0, 449
                  bge          a2, s9, 104f
97:               beq          a5, s11, 113f
                  bne          sp, s8, 110f
                  sra          t2, a6, s2
100:              and          s8, t0, gp
101:              sll          a6, s7, s8
102:              xor          s4, s1, t0
                  addi         s1, a1, 1856
104:              bne          s5, ra, 110f
                  and          t5, a7, a5
                  slt          s4, s6, t3
                  xor          a4, a2, sp
                  srli         a1, s6, 25
                  sra          zero, s4, tp
110:              srl          s9, s4, a6
                  sra          s1, a3, s3
                  sub          s4, s2, t3
113:              bne          s11, t6, 132f
                  sub          sp, s4, t1
                  bltu         s10, s5, 116f
116:              xor          gp, t4, s2
                  sll          s2, s4, a6
                  sltu         sp, t3, s1
                  bge          a2, a6, 127f
                  sltiu        s3, tp, 1278
                  nop
                  bgeu         t3, a4, 142f
                  lui          ra, 958581
                  ori          s4, a4, -155
                  srli         s11, a2, 21
                  slt          a5, s2, a4
127:              bgeu         s8, ra, 134f
                  bgeu         zero, t0, 142f
                  sra          t4, s9, t0
                  addi         t2, s1, 384
                  bltu         t5, t0, 147f
132:              sltu         ra, s1, a4
                  lui          zero, 839425
134:              bltu         s2, s5, 147f
                  bge          zero, a2, 147f
                  srai         s0, a7, 9
                  beq          a4, s3, 156f
                  srli         s4, s4, 6
                  nop
                  auipc        s8, 313299
                  xori         s3, tp, -417
142:              slti         a7, s2, 642
                  slt          a4, a2, s9
                  or           s9, s10, s0
                  nop
                  lui          s2, 112441
147:              srl          a5, sp, zero
                  auipc        t4, 245635
                  andi         s8, s1, 161
                  srl          sp, t4, a6
                  add          t0, s7, s0
                  srli         s7, tp, 5
                  ori          t0, t0, 786
                  xori         a7, a0, -1931
                  blt          t1, zero, 162f
156:              nop
                  bltu         s3, s4, 173f
                  bltu         a6, ra, 165f
                  srli         t6, s0, 27
                  bltu         s7, sp, 167f
                  bge          tp, s0, 170f
162:              sra          t5, s3, t2
                  sll          s4, s11, t4
                  slti         s10, s3, 1940
165:              bne          s4, a4, 167f
                  addi         a0, s4, 14
167:              slt          sp, t4, ra
                  bgeu         ra, s0, 171f
                  sub          a2, a1, s11
170:              blt          a1, zero, 181f
171:              add          ra, s5, t1
                  andi         a2, ra, 376
173:              auipc        sp, 305659
                  srai         s3, s7, 23
                  srai         a5, t2, 26
                  bge          s11, t4, 191f
                  xori         t6, t5, 1140
                  srai         s10, t1, 1
                  ori          s11, s7, -1577
                  blt          t3, s9, 181f
181:              bltu         s6, s0, 193f
                  and          s2, a0, t3
                  lui          a3, 105554
                  add          a0, a5, gp
                  sltiu        gp, a2, 644
                  srai         s1, s3, 3
                  slli         s9, t3, 9
                  andi         t6, a2, 2014
                  xori         s3, s9, 186
                  sra          t4, s2, t6
191:              sltiu        sp, s4, -1602
                  srai         a2, a3, 18
193:              and          s1, ra, s11
                  srl          a2, a4, t0
                  bgeu         sp, a3, 196f
196:              auipc        s1, 613887
                  bgeu         s3, s5, 208f
                  add          s11, sp, t0
                  or           t4, s6, s11
                  srl          t1, gp, a6
                  srli         a4, a6, 25
                  sub          a5, t6, a7
                  sltu         a7, a4, t5
                  sltiu        a2, t4, -373
                  srai         s4, tp, 24
                  xori         t1, s9, -1920
                  and          t2, s8, s0
208:              or           t4, s3, ra
                  lui          s5, 97001
                  bgeu         a6, s9, 213f
                  bne          s3, s8, 216f
                  blt          a3, a5, 232f
213:              sltu         sp, t6, a0
                  slli         a3, s11, 1
                  slli         s3, a2, 1
216:              xor          s8, t3, s5
                  nop
                  nop
                  beq          t1, a6, 221f
                  srl          a0, s6, t1
221:              nop
                  xor          t6, t3, t5
                  srai         t0, t2, 10
                  bne          a3, s1, 226f
                  sll          gp, t2, s6
226:              beq          s9, s1, 234f
                  bgeu         t4, s6, 235f
                  nop
                  ori          t0, s6, 515
                  bgeu         s0, t2, 236f
                  slli         s5, a5, 18
232:              or           a0, s11, a5
                  lui          a6, 565513
234:              sub          t2, s11, s9
235:              bge          s0, s2, 244f
236:              bge          a0, a1, 253f
                  sltiu        s7, s7, -1553
                  and          a1, a0, s0
                  sltiu        gp, a2, -830
                  srli         s3, ra, 27
                  nop
                  bltu         ra, a6, 262f
                  addi         s5, t4, -1434
244:              lui          zero, 187116
                  sub          a5, a3, a0
                  srai         s5, ra, 17
                  sll          t1, s7, s5
                  sll          a5, t1, s7
                  srli         s5, a2, 7
                  xor          a3, a7, a5
                  slli         sp, t3, 28
                  bne          tp, a1, 253f
253:              xori         s0, s8, 1480
                  bne          a2, gp, 259f
                  auipc        a7, 427148
                  nop
                  slti         t4, s7, -1499
                  or           a4, s0, a5
259:              and          t6, s5, s2
                  bltu         a0, s3, 262f
                  sub          t5, s6, a1
262:              addi         s5, s0, 1301
                  bltu         s7, tp, 274f
                  srl          a6, a3, a2
                  and          a0, t4, a5
                  addi         t4, s3, 676
                  bgeu         t4, s1, 286f
                  nop
                  slt          t2, a3, a6
                  beq          a3, ra, 283f
                  blt          a0, s4, 288f
                  bltu         tp, a6, 273f
273:              add          t2, s2, s2
274:              blt          s10, t6, 288f
                  auipc        s2, 612374
                  sub          t1, s5, a3
                  sltu         t0, a3, ra
                  srl          a1, sp, tp
                  or           s3, t6, s4
                  bge          a3, a2, 287f
                  or           s8, s4, t0
                  bgeu         zero, a1, 291f
283:              sub          t5, a4, a6
                  slli         s5, a1, 4
                  slt          gp, t0, s3
286:              nop
287:              and          s9, ra, t1
288:              sltu         gp, t6, s3
                  beq          a1, ra, 298f
                  bltu         s1, t4, 292f
291:              or           s5, t4, s5
292:              or           t4, s5, s0
                  sltu         a5, t2, t1
                  bltu         s9, t6, 301f
                  sub          a3, a4, tp
                  sltu         a1, s0, t2
                  ori          a1, s8, -1383
298:              bne          s7, a0, 314f
                  sll          s2, a7, a4
                  and          t2, a0, a6
301:              bltu         tp, s4, 307f
                  srli         s5, s9, 22
                  beq          ra, a3, 323f
                  sltu         s9, s8, a5
                  auipc        s11, 927502
                  slt          a3, gp, s3
307:              add          s11, gp, t2
                  nop
                  sll          zero, tp, s0
                  blt          s6, a4, 317f
                  beq          s1, t2, 319f
                  slt          a1, tp, s7
                  srli         s11, t3, 4
314:              and          s1, s11, a5
                  slti         t4, zero, -423
                  sltiu        a1, tp, 382
317:              xor          a4, a1, t2
                  lui          t6, 852510
319:              srl          s10, s4, s6
                  sltiu        a1, a1, -1860
                  sra          s3, a7, a3
                  slt          t0, s1, t6
323:              slt          s0, s11, s1
                  sll          s1, s1, s11
                  bltu         a2, a0, 341f
                  or           s8, s7, a5
                  slli         a2, s1, 3
                  bge          zero, s7, 343f
                  xor          s9, t2, a2
                  xor          t6, a0, a3
                  slt          s11, s10, a3
                  blt          s0, tp, 339f
                  auipc        s0, 532995
                  bgeu         s6, s1, 337f
                  slti         zero, s3, 1905
                  and          s3, s3, t6
337:              bgeu         t4, t2, 349f
                  beq          a5, s9, 340f
339:              sub          s11, tp, a4
340:              srli         a2, a4, 11
341:              xori         s8, t1, 1071
                  sub          s8, a2, s0
343:              beq          s8, a4, 354f
                  bltu         zero, a6, 352f
                  slt          zero, s7, t1
                  addi         t5, s10, 18
                  sra          a6, s10, s3
                  xor          a2, a1, t2
349:              add          s0, s7, a1
                  srli         a6, a3, 11
                  auipc        s0, 628359
352:              srli         s1, s5, 19
                  sltu         s5, s8, t5
354:              auipc        s1, 455677
                  sltiu        s7, s10, 677
                  andi         s10, s2, 224
                  lui          t0, 794486
                  bltu         gp, s8, 370f
                  sltiu        a4, a0, -892
                  nop
                  sltiu        a5, s5, 616
                  sll          s10, t3, a7
                  sltu         s2, gp, t1
                  srli         t0, s4, 0
                  sub          zero, gp, t0
                  slt          s10, zero, s1
                  sll          a5, s8, s9
                  auipc        s0, 333930
                  sll          s10, a3, s5
370:              andi         s5, s11, 711
                  bne          tp, s8, 374f
                  bgeu         zero, s5, 384f
                  xor          a1, s0, t5
374:              bge          s8, a6, 376f
                  sra          s8, t6, a5
376:              sub          a6, gp, gp
                  sltiu        s4, t6, -1007
                  add          a7, gp, s6
                  slt          s3, a0, s4
                  add          t1, a0, ra
                  srli         t1, a6, 22
                  blt          sp, a0, 390f
                  lui          t5, 336335
384:              slti         a2, s6, -1900
                  bne          a5, a1, 401f
                  sll          s2, s0, s1
                  slli         a3, a3, 9
                  blt          s2, s7, 394f
                  sltu         a0, s2, s5
390:              srli         a5, a1, 31
                  add          t2, a7, s5
                  sltu         a1, s0, a3
                  blt          ra, zero, 406f
394:              xor          a7, a1, a0
                  ori          a6, zero, 1397
                  beq          t6, s0, 403f
                  bgeu         a5, s10, 398f
398:              sub          s11, sp, t5
                  xor          s0, a2, s3
                  lui          t2, 765762
401:              bge          tp, s3, 402f
402:              slt          ra, tp, a5
403:              addi         a6, s4, 787
                  srai         s8, a1, 8
                  blt          t1, t4, 425f
406:              and          a5, s10, t4
                  add          a7, gp, ra
                  addi         a1, t0, -1567
                  addi         s1, s8, -62
                  add          a7, ra, a2
                  srli         s2, a4, 30
                  add          a6, s1, zero
                  auipc        s10, 842902
                  bgeu         a0, t5, 422f
                  bltu         s1, s6, 429f
                  bne          t2, tp, 425f
                  bgeu         s8, t2, 428f
                  xor          s10, zero, gp
                  lui          s7, 952417
                  bge          a1, s5, 431f
                  slli         a0, t1, 24
422:              add          t5, t5, t3
                  srli         a5, ra, 4
                  beq          a6, a2, 427f
425:              bne          ra, ra, 432f
                  bne          a7, t2, 442f
427:              srl          s8, t6, sp
428:              ori          s10, a2, 1598
429:              nop
                  ori          sp, a7, -1328
431:              add          s8, a0, t6
432:              xori         a3, s0, -645
                  slli         s3, a2, 9
                  lui          t5, 116346
                  andi         s4, s5, -1154
                  slli         t2, s0, 18
                  add          a4, s4, a2
                  srli         s9, t3, 25
                  srai         ra, t0, 25
                  xor          s5, t5, t4
                  auipc        t2, 577381
442:              beq          s4, a4, 449f
                  blt          a3, ra, 448f
                  slti         a3, s9, -325
                  xor          gp, s4, s1
                  blt          s0, zero, 466f
                  slt          zero, s10, s1
448:              blt          a7, gp, 463f
449:              auipc        a7, 790180
                  add          s10, sp, a6
                  srai         s4, t5, 21
                  srl          zero, t4, a2
                  srli         s9, a0, 6
                  lui          a0, 292861
                  andi         t6, ra, -731
                  nop
                  or           a4, t3, t1
                  slt          t2, zero, sp
                  sll          ra, s1, s11
                  add          t0, ra, s8
                  slt          a4, t0, a4
                  addi         t4, t2, 1390
                  la           sp, region_0+969 #start riscv_load_store_rand_instr_stream_10
                  xor          s7, a1, s4
                  lhu          ra, -35(sp)
                  sb           zero, 53(sp)
                  lb           a0, 127(sp)
                  or           t6, tp, zero
                  sra          t2, tp, t3
                  sra          t2, s9, a3
                  srai         gp, a7, 2
                  sb           sp, 210(sp)
                  srl          s5, s0, t4
                  lhu          s0, -153(sp)
                  sw           sp, -13(sp)
                  sll          ra, s7, s3
                  ori          t1, s11, -2047
                  lb           ra, 188(sp)
                  lb           gp, 249(sp)
                  lbu          t6, -54(sp)
                  lbu          a5, -114(sp)
                  sub          a2, t6, a7
                  lhu          t6, -243(sp)
                  lb           s3, 69(sp)
                  lhu          a2, 229(sp)
                  sb           tp, -214(sp)
                  auipc        s2, 329338
                  lbu          a2, 214(sp)
                  lb           t1, -155(sp)
                  lh           a4, 75(sp)
                  addi         zero, s9, 1684
                  lb           s8, 112(sp)
                  lbu          gp, 188(sp) #end riscv_load_store_rand_instr_stream_10
463:              bltu         a0, a3, 482f
                  blt          s5, s11, 466f
                  add          t0, s1, t2
466:              slt          a7, ra, s5
                  xori         s11, s1, 430
                  srl          a7, sp, s8
                  bltu         s0, s11, 486f
                  beq          t6, a5, 473f
                  slt          zero, a0, s7
                  sra          t1, a4, a5
473:              addi         a4, s0, -1410
                  sll          a2, t0, s0
                  srai         gp, a2, 30
                  srai         a0, a5, 16
                  sra          t4, a5, t4
                  bltu         a6, s0, 485f
                  and          t5, a0, t5
                  xor          s10, s6, t3
                  andi         a4, s6, -424
482:              xor          t2, t5, a3
                  auipc        zero, 370569
                  nop
485:              srai         a3, a5, 11
486:              srl          s0, tp, s5
                  ori          a4, a7, 1389
                  xori         s1, s3, -502
                  xori         s7, s8, 681
                  xori         zero, s11, 935
                  blt          t3, s6, 493f
                  slli         s10, tp, 17
493:              sub          a3, s6, s0
                  sltiu        a3, a1, 225
                  and          s0, a7, a2
                  slli         a3, s8, 2
                  slt          a7, a2, s11
                  la           a7, region_1+494 #start riscv_load_store_rand_instr_stream_0
                  sh           s9, 14(a7)
                  sh           a4, 2(a7)
                  ori          a5, t0, 2029
                  lb           a0, 6(a7)
                  addi         s9, s8, -1031
                  lb           s9, 9(a7)
                  lw           a4, 2(a7)
                  lhu          a3, 2(a7)
                  lbu          s8, 1(a7)
                  and          sp, t2, a3
                  lb           a0, 9(a7)
                  lb           a4, 14(a7)
                  slti         t2, zero, -120
                  lb           a2, 15(a7)
                  lb           s7, 15(a7)
                  sh           a5, -10(a7)
                  or           a3, gp, s8
                  or           a4, s11, s10
                  lh           sp, -14(a7)
                  lb           gp, 11(a7)
                  sb           t1, -2(a7)
                  sb           t2, 0(a7)
                  lbu          t5, 11(a7)
                  sb           s5, -6(a7)
                  lb           a5, -12(a7)
                  srl          s10, s1, s5
                  sll          zero, s2, s5
                  lb           s5, 9(a7)
                  lbu          s3, 10(a7)
                  sb           s3, 3(a7)
                  sh           a2, -10(a7)
                  lh           a1, 10(a7)
                  xor          gp, t0, s7
                  srai         s2, tp, 20
                  lbu          s8, -13(a7)
                  sra          a1, t5, sp
                  nop
                  or           zero, s7, a0
                  lbu          a4, -15(a7) #end riscv_load_store_rand_instr_stream_0
                  sub          a3, a5, s4
                  andi         s0, s9, -268
                  bgeu         a7, s5, 509f
                  add          a2, t5, s11
                  andi         a7, s6, 512
                  slti         gp, gp, 586
                  sltiu        a5, t6, 150
                  sra          a6, gp, t6
                  beq          s4, s9, 518f
                  add          t0, ra, gp
                  blt          a2, s9, 510f
509:              bne          a6, a5, 520f
510:              or           s3, a3, s6
                  sltu         t2, zero, s10
                  beq          s6, a5, 526f
                  bne          t2, s0, 516f
                  or           a7, a2, sp
                  blt          ra, t3, 522f
516:              add          s4, t3, t3
                  andi         s1, t0, 1541
518:              blt          t1, t1, 526f
                  bltu         a0, t2, 531f
520:              bgeu         s0, a2, 527f
                  add          s11, t2, a3
522:              sll          s10, a4, t1
                  ori          a6, zero, -407
                  bge          t0, s1, 533f
                  sltu         s1, t4, s0
526:              sra          s11, t2, s9
527:              xori         a6, s9, -1315
                  sll          s4, s11, zero
                  sll          s5, t5, a7
                  and          sp, ra, ra
531:              and          a1, ra, a0
                  slli         zero, s8, 8
533:              xor          ra, a6, s2
                  bgeu         t0, t3, 550f
                  srai         zero, s9, 4
                  auipc        s9, 148362
                  nop
                  ori          s1, tp, -1979
                  ori          t5, s3, -1739
                  and          s2, t4, t1
                  ori          s9, s6, -1565
                  lui          t1, 900695
                  add          t5, a5, s7
                  sub          s1, s4, t2
                  andi         t1, s11, -1174
                  ori          zero, a7, 628
                  sltu         t6, a2, s5
                  bge          t4, t2, 559f
                  slt          a6, t1, t0
550:              slti         t6, s3, -1684
                  beq          s2, t1, 554f
                  ori          s5, t6, 417
                  blt          t6, a7, 573f
554:              slli         a2, a7, 8
                  slli         gp, a6, 7
                  bltu         gp, s11, 557f
557:              srai         s1, s3, 21
                  sltu         ra, zero, s10
559:              bltu         tp, s6, 566f
                  sltiu        s9, t6, -1420
                  addi         s2, s8, -382
                  ori          t6, t6, -1468
                  sltu         a4, t6, a3
                  srl          t0, zero, t5
                  andi         s11, a5, -1528
566:              ori          s7, s0, 2046
                  slt          s4, s8, t3
                  srai         gp, s6, 17
                  or           s10, a1, s3
                  bltu         s11, t2, 571f
571:              bgeu         a3, a5, 583f
                  bgeu         a0, t6, 578f
573:              slti         t0, t5, 1936
                  add          s5, a4, s1
                  andi         s10, s3, -1985
                  addi         t6, t0, 540
                  slt          t5, s1, s9
578:              slt          a0, a6, a7
                  bge          zero, s8, 599f
                  addi         t0, a5, 1896
                  xor          a3, t0, a7
                  bge          s4, a0, 584f
583:              bltu         t6, s5, 588f
584:              nop
                  sll          s5, gp, a1
                  slti         sp, s11, -676
                  addi         sp, t6, -373
588:              slli         t0, tp, 25
                  lui          s1, 590990
                  lui          a3, 962856
                  beq          s5, t3, 608f
                  sll          a0, s9, s9
                  add          s10, t2, a2
                  andi         s3, zero, -668
                  addi         s1, a1, -910
                  auipc        s3, 391138
                  or           a6, s6, a4
                  add          a3, tp, sp
599:              nop
                  sll          s11, zero, gp
                  sltu         t0, s3, t0
                  bge          s0, sp, 610f
                  ori          a1, s2, 141
                  slti         a6, s3, 178
                  addi         s4, a4, 1653
                  slti         t4, a7, 1797
                  auipc        t2, 783547
608:              sub          t1, t3, s9
                  bne          sp, s2, 616f
610:              sltu         ra, a3, t1
                  ori          a1, s8, -370
                  and          t4, s5, s10
                  and          t4, a6, t3
                  sltu         gp, ra, t6
                  srai         t6, s11, 9
616:              srl          s7, s1, tp
                  add          a1, s2, s10
                  add          t6, t0, a2
                  blt          t5, ra, 638f
                  slt          gp, s4, t6
                  bltu         s10, a2, 623f
                  auipc        s5, 417333
623:              sll          a3, s11, s11
                  sltiu        s8, s0, -1557
                  lui          a3, 101814
                  ori          a5, t6, 1490
                  bltu         a7, t6, 643f
                  bge          s9, a3, 643f
                  sltu         gp, a4, a0
                  addi         a2, s6, 1269
                  srl          s8, t6, s3
                  xori         ra, s1, 1149
                  slti         t5, t6, 333
                  srli         t1, ra, 14
                  nop
                  bgeu         a6, s3, 649f
                  sltiu        a1, gp, -345
638:              sll          t0, a1, a2
                  add          s10, s5, s4
                  sltu         a0, a1, a4
                  xori         a7, a1, -2029
                  sub          gp, tp, gp
643:              bgeu         s7, s1, 652f
                  bltu         s9, a1, 664f
                  lui          s3, 698401
                  sltiu        a2, s5, 1183
                  andi         t2, s10, -1978
                  lui          s11, 320171
649:              xor          s8, t4, s4
                  addi         gp, s10, -1490
                  xori         t5, s7, 1784
652:              beq          t3, s7, 655f
                  nop
                  sra          s5, s8, t4
655:              lui          t6, 475071
                  xori         s7, a5, -2030
                  sub          zero, t3, s5
                  slti         t4, a0, 1960
                  ori          a6, s6, 1396
                  andi         t4, a6, -1357
                  ori          s5, s7, -1445
                  auipc        ra, 436023
                  or           s0, s1, s9
664:              srl          s9, t1, t6
                  andi         s10, tp, -1713
                  srli         s10, a7, 6
                  ori          a2, t4, -920
                  and          t1, s10, a7
                  sll          a7, a3, t3
                  slti         a2, tp, -710
                  bgeu         t4, s1, 673f
                  srl          ra, t6, t4
673:              bltu         s7, s1, 692f
                  sltiu        a2, s6, 1419
                  beq          s3, t5, 684f
                  sltiu        a6, sp, 38
                  blt          a1, a6, 688f
                  sltu         gp, s5, t0
                  sra          ra, t5, a5
                  slti         a3, t1, 1087
                  bge          s5, s7, 688f
                  beq          s3, s3, 699f
                  slti         s7, a4, -1591
684:              sltiu        a2, t6, -1956
                  sra          t0, zero, a7
                  xor          a0, t1, a7
                  sll          a4, a1, s2
688:              or           sp, sp, s9
                  ori          gp, t2, 1310
                  sll          a4, s7, a7
                  and          s5, t4, a1
692:              and          sp, s3, t0
                  add          a1, a2, s8
                  add          a1, s9, s1
                  lui          sp, 521265
                  sll          s5, ra, s7
                  xori         s9, a1, 1043
                  auipc        s7, 669103
699:              lui          s3, 416668
                  beq          s6, s11, 716f
                  sra          sp, a6, s7
                  bltu         a5, s5, 703f
703:              sltiu        ra, s7, -1324
                  blt          a3, s8, 716f
                  nop
                  bltu         s3, s7, 720f
                  bne          a7, s2, 716f
                  nop
                  auipc        a5, 619455
                  srai         s8, sp, 22
                  nop
                  bge          s7, s3, 717f
                  blt          t0, s4, 720f
                  and          t6, a7, ra
                  sltiu        s7, a1, 597
716:              srl          sp, s1, a5
717:              bgeu         a4, a5, 719f
                  sltu         t6, s5, t1
719:              and          a6, a3, tp
720:              srli         a2, s9, 28
                  bltu         a0, a3, 733f
                  beq          t4, a7, 730f
                  slli         s1, t2, 17
                  slli         gp, a4, 16
                  ori          s0, zero, 762
                  slti         t1, a1, -1186
                  or           a6, t4, a7
                  bltu         s2, s3, 731f
                  sub          s3, a4, t6
730:              srai         s7, gp, 1
731:              bltu         a7, s3, 738f
                  and          a6, s10, a5
733:              bge          a4, s0, 741f
                  sub          s2, t6, s6
                  add          ra, s2, zero
                  sltiu        sp, a0, -1870
                  bne          s7, s8, 744f
738:              bne          a0, t1, 740f
                  xori         gp, gp, 32
740:              bgeu         t4, ra, 753f
741:              or           s8, s3, a4
                  ori          t5, a7, -1549
                  xori         s11, s4, 1136
744:              slti         a7, zero, 1723
                  andi         t0, t3, -1674
                  auipc        s10, 621437
                  bgeu         t4, t2, 753f
                  lui          s4, 772045
                  beq          gp, a7, 765f
                  lui          s11, 667740
                  bge          s2, s2, 752f
752:              xor          t4, zero, s4
753:              lui          s4, 232553
                  add          sp, tp, s9
                  bgeu         s0, s5, 770f
                  addi         t0, ra, 27
                  lui          a1, 1032752
                  sra          s3, t2, ra
                  beq          s0, s0, 779f
                  add          gp, sp, s9
                  ori          s9, tp, 81
                  slli         sp, ra, 19
                  beq          a0, s2, 774f
                  lui          s9, 626291
765:              slti         sp, tp, 179
                  bne          sp, zero, 786f
                  srai         s4, s9, 25
                  blt          s1, s7, 776f
                  andi         s11, t1, -1718
770:              addi         s0, s8, -1977
                  sub          t0, s6, a1
                  andi         s9, s0, 681
                  sub          t1, t5, gp
774:              bge          s5, ra, 780f
                  or           ra, s2, a6
776:              xor          s3, tp, t6
                  srl          s9, s1, s11
                  bgeu         s8, a5, 787f
779:              ori          a2, t3, 1991
780:              sra          s3, a0, t0
                  bltu         tp, a2, 782f
782:              andi         sp, a5, 1460
                  xor          t6, t0, ra
                  sub          t5, s5, a3
                  sltu         gp, ra, s6
786:              slti         s8, t1, -1850
787:              srl          a3, t6, a1
                  sltiu        t5, s0, 1217
                  beq          t3, s1, 806f
                  bne          a4, t3, 797f
                  ori          t2, a3, -1165
                  srli         t2, s0, 18
                  srli         gp, s1, 9
                  bltu         s2, t0, 807f
                  bge          a0, a6, 811f
                  slli         t6, a5, 11
797:              bge          tp, s5, 811f
                  auipc        sp, 786428
                  beq          sp, a1, 811f
                  sltu         a0, s9, t2
                  xor          gp, t2, a5
                  slti         s11, a2, -1756
                  lui          t0, 329667
                  bge          t4, s1, 806f
                  slli         s8, t0, 7
806:              bgeu         a7, s8, 817f
807:              lui          s0, 783229
                  and          gp, s7, t1
                  xor          ra, ra, sp
                  bne          a3, ra, 822f
811:              sltu         gp, a2, s2
                  bne          a3, gp, 831f
                  and          s10, a6, s2
                  bne          s3, s6, 819f
                  xori         a1, s9, 1677
                  slt          t1, s8, t2
817:              xori         t0, s0, 3
                  bge          zero, s6, 826f
819:              sub          a4, t0, t4
                  nop
                  or           s4, s0, a2
822:              lui          s0, 125267
                  bne          s0, t5, 830f
                  sub          t5, t2, zero
                  sltiu        t1, gp, -575
826:              ori          s11, s8, -1130
                  bne          t3, a3, 838f
                  andi         s7, t6, 41
                  ori          a6, zero, 1951
830:              beq          sp, s11, 839f
831:              bgeu         a5, s2, 832f
832:              bge          s7, gp, 839f
                  xor          s5, tp, s5
                  sll          t0, gp, a1
                  sltiu        s0, t5, 517
                  ori          s5, a5, -920
                  nop
838:              lui          a0, 741421
839:              srl          a7, a6, sp
                  sltiu        s1, a1, -1612
                  bne          t0, zero, 856f
                  sub          t0, s10, s7
                  slti         a5, t2, 387
                  bge          a4, s7, 851f
                  lui          s10, 231926
                  sra          s1, s8, s3
                  bltu         t3, t2, 849f
                  sltiu        t6, t0, 717
849:              andi         ra, s2, 1188
                  slli         s7, s11, 29
851:              and          t5, t2, t0
                  lui          a1, 494508
                  and          a4, gp, a3
                  sra          t4, s0, s2
                  slti         s2, t5, 1249
856:              slli         t0, s10, 1
                  or           t1, a0, gp
                  bgeu         a5, t6, 878f
                  sub          s4, t3, s11
                  lui          s10, 689805
                  xori         sp, s0, 1448
                  bgeu         s8, s1, 865f
                  addi         s7, t3, 63
                  bgeu         t5, s11, 880f
865:              ori          t2, gp, -598
                  slli         s1, a2, 10
                  or           s11, s1, s11
                  xori         s11, a1, -1112
                  lui          t5, 1030186
                  bltu         t0, s7, 872f
                  xor          a2, ra, s7
872:              lui          s5, 994820
                  and          s9, s2, s6
                  ori          a0, s10, 789
                  bne          s5, t6, 878f
                  srl          t5, s6, s10
                  bgeu         a3, s5, 888f
878:              ori          a3, s0, -1993
                  addi         a0, a6, -940
880:              andi         t5, sp, -1699
                  slli         s3, t4, 5
                  sll          gp, s4, a0
                  bge          ra, s8, 892f
                  andi         s1, s8, -1981
                  auipc        a5, 620319
                  sltiu        t1, s10, -944
                  ori          s7, t6, 239
888:              add          s3, a0, t2
                  bgeu         tp, t0, 896f
                  xori         t1, t4, -1802
                  beq          ra, tp, 898f
892:              beq          a7, s5, 906f
                  xori         zero, tp, 1422
                  slt          s3, zero, gp
                  bgeu         t0, s5, 896f
896:              addi         s2, s1, -1040
                  sltiu        t4, s4, -1582
898:              bgeu         t6, s0, 918f
                  srai         a6, a0, 6
                  slti         s3, s9, 1005
                  and          s2, t3, t1
                  xor          t6, a2, t2
                  sltu         s7, sp, sp
                  srli         s10, s3, 3
                  beq          ra, s8, 918f
906:              lui          t2, 64544
                  and          s9, a2, s3
                  srai         s7, a4, 14
                  and          gp, a2, a6
                  srl          t0, t5, t5
                  andi         s2, t4, -1504
                  srai         s5, a0, 19
                  bge          t1, t2, 925f
                  nop
                  bne          t5, gp, 923f
                  bltu         t0, a5, 918f
                  add          gp, s11, a6
918:              or           s1, tp, s5
                  bltu         s10, s8, 921f
                  slt          s11, t0, a2
921:              xori         a5, a1, 905
                  srli         s10, s8, 30
923:              auipc        a3, 160815
                  bltu         t4, sp, 927f
925:              xor          s4, s3, zero
                  blt          s3, s8, 941f
927:              beq          a3, a1, 930f
                  bne          s9, t3, 934f
                  blt          a2, ra, 931f
930:              or           sp, s6, a0
931:              beq          sp, s8, 940f
                  nop
                  srli         ra, a3, 25
934:              beq          s10, tp, 941f
                  sub          s3, zero, a4
                  addi         t1, ra, 436
                  add          t5, a3, s11
                  bgeu         a1, s4, 958f
                  auipc        s2, 424996
940:              andi         sp, s4, 110
941:              and          t1, a7, a1
                  sra          a5, t4, t3
                  xor          t6, t1, ra
                  bgeu         t4, s0, 956f
                  addi         a1, sp, 210
                  blt          zero, s2, 957f
                  ori          t0, s3, 354
                  beq          t6, a4, 955f
                  andi         s11, s11, -1272
                  srli         s7, a3, 10
                  sltu         t6, a3, gp
                  auipc        a0, 834654
                  srli         a3, s2, 3
                  srl          t0, a3, s11
955:              beq          gp, t3, 971f
                  la           sp, region_1+1301 #start riscv_load_store_rand_instr_stream_4
                  lbu          s1, -35(sp)
                  srl          s3, a4, zero
                  xori         a7, sp, -1621
                  sb           a2, -38(sp)
                  lbu          s2, -56(sp)
                  sb           s5, 7(sp)
                  sub          a4, ra, s0
                  or           s5, tp, a3
                  sra          a7, s8, s11
                  sh           t0, 51(sp)
                  lh           t4, -17(sp)
                  sub          a6, s9, a6
                  lhu          s5, 23(sp)
                  sll          s0, a2, s1
                  lb           s1, -55(sp)
                  sw           a1, 27(sp)
                  sll          s11, a2, t1
                  lb           t4, -4(sp)
                  lbu          a4, 36(sp)
                  sb           zero, 64(sp)
                  sb           t5, -1(sp)
                  slt          s4, zero, gp
                  sltiu        s10, gp, 858
                  sltu         s2, a6, a2
                  sb           s6, -12(sp)
                  slli         s10, t2, 25
                  ori          s10, s4, 1482
                  slti         a2, a2, -2043
                  sub          s9, t0, t5
                  xori         a2, a4, -1582
                  lw           a2, 19(sp)
                  sra          a3, s11, gp
                  sh           s8, -23(sp) #end riscv_load_store_rand_instr_stream_4
956:              slt          a4, zero, a5
957:              srl          gp, s5, t5
958:              slti         a3, a3, 1245
                  srl          s11, t6, t1
                  bge          s10, t4, 979f
                  blt          gp, t4, 969f
                  add          a2, ra, s3
                  ori          a6, t0, -1073
                  slti         a0, a2, 902
                  slti         t0, a0, 64
                  slti         s8, a7, -1821
                  xor          t5, a1, t0
                  blt          s8, a0, 973f
969:              slt          s5, s11, s2
                  lui          s9, 257394
971:              xor          s7, s6, s6
                  andi         t1, t6, 1176
973:              bge          s1, ra, 974f
974:              slli         s1, s5, 30
                  sub          a2, a7, a3
                  andi         s11, s7, 1953
                  sub          t4, a0, t0
                  auipc        s10, 688243
979:              lui          a5, 648386
                  slt          t2, t3, a5
                  srl          a5, a0, a6
                  sll          s2, s10, tp
                  beq          t3, t6, 1000f
                  xori         s0, s9, 767
                  or           s3, a1, a2
                  srl          ra, s4, a1
                  bgeu         s7, a1, 1003f
                  blt          a0, zero, 995f
                  slti         t1, a3, -294
                  srl          t0, t5, s5
                  ori          s1, ra, 1243
                  andi         a3, ra, -952
                  sra          s8, a1, s2
                  sub          s8, t5, s6
995:              bgeu         a3, a2, 1002f
                  sub          a7, s4, t3
                  auipc        s4, 372680
                  nop
                  srai         t5, s5, 16
1000:             ori          s11, t6, 103
                  auipc        a7, 887228
1002:             xori         a7, s8, -312
1003:             addi         a5, s11, -1452
                  bgeu         s5, zero, 1016f
                  slli         t0, a1, 15
                  bne          s11, s6, 1008f
                  or           a7, a5, a1
1008:             sra          a1, s5, s0
                  andi         t4, t3, 41
                  add          s3, s6, a3
                  xori         s11, t1, 1707
                  srai         s7, tp, 18
                  slti         a2, t5, 389
                  bne          t1, a0, 1019f
                  bge          s6, a4, 1024f
1016:             sltiu        s2, t2, -1968
                  addi         a5, ra, -1362
                  addi         t2, a1, 1431
1019:             add          zero, s8, ra
                  and          a3, a5, s5
                  sltu         t0, s3, t2
                  beq          a0, a1, 1037f
                  sltu         s2, a0, a2
1024:             and          s3, s1, s4
                  add          a5, s6, zero
                  sll          s3, t5, s8
                  nop
                  slt          s0, s5, s1
                  blt          gp, a0, 1048f
                  or           zero, a3, s8
                  andi         a0, s0, -1075
                  srl          s0, s4, a4
                  bne          s7, zero, 1036f
                  beq          t3, s4, 1048f
                  blt          sp, tp, 1041f
1036:             ori          a0, s5, -1256
1037:             lui          s3, 291627
                  lui          s7, 175250
                  and          sp, s4, s9
                  or           t6, s2, t2
1041:             and          sp, gp, s11
                  blt          s1, sp, 1045f
                  slli         t4, sp, 21
                  sll          s5, s4, t3
1045:             bltu         s7, a6, 1065f
                  add          t5, s6, s0
                  xor          a5, t1, a0
1048:             xori         a1, a7, 186
                  slti         a1, s5, 19
                  sltiu        a0, t5, -487
                  bne          a2, s10, 1060f
                  bge          a7, s3, 1072f
                  srai         a1, s7, 8
                  srai         a6, s4, 11
                  sltu         s5, s8, t5
                  sltu         a5, s3, a7
                  sltu         sp, a4, s0
                  xori         t5, s1, -9
                  srli         t4, s0, 22
1060:             and          s9, s6, s2
                  sra          s7, s4, s1
                  srl          gp, zero, gp
                  lui          t6, 581390
                  bgeu         a1, s0, 1066f
1065:             sra          s9, a4, a3
1066:             srli         t0, s5, 10
                  la           sp, region_1+787 #start riscv_load_store_rand_instr_stream_3
                  and          t2, tp, s9
                  andi         a2, a5, 689
                  sw           a1, 205(sp)
                  srli         t4, zero, 14
                  lb           a4, -146(sp)
                  slti         a4, t5, 1987
                  lh           s0, -241(sp)
                  lb           zero, 186(sp)
                  sub          a4, a2, t0
                  lui          s8, 108729
                  sw           a3, 245(sp)
                  sltu         a6, a4, a4
                  lh           a3, 201(sp)
                  nop
                  lb           ra, 12(sp)
                  lhu          s10, 193(sp)
                  sltiu        t4, tp, -42
                  sltiu        t5, s3, 509
                  slli         s1, a5, 14
                  sb           sp, 222(sp)
                  slt          t0, s1, a7
                  slti         zero, a2, -775
                  srai         a7, a1, 30
                  sb           s4, 46(sp)
                  xori         s0, ra, 1043
                  addi         s0, s7, 1942
                  srli         s5, s6, 18
                  lbu          a2, 179(sp)
                  sh           s7, 147(sp)
                  sub          s1, ra, a4
                  xor          s8, s0, s6
                  xori         a4, s0, -1350
                  lbu          s4, 222(sp)
                  lb           s10, -190(sp)
                  lbu          a1, 132(sp)
                  sra          t5, gp, a4
                  sb           a2, -54(sp)
                  auipc        s4, 431031
                  nop
                  or           t1, a0, s10
                  slli         s10, a4, 30
                  lbu          a6, -128(sp)
                  lh           t4, 107(sp)
                  lh           a1, -9(sp) #end riscv_load_store_rand_instr_stream_3
                  add          s9, t1, t5
                  sub          t2, s11, a4
                  bne          s2, s1, 1086f
                  and          zero, s10, t3
                  beq          s10, zero, 1087f
1072:             beq          t2, zero, 1073f
1073:             sra          s10, s7, zero
                  sub          a1, a2, s8
                  or           s4, s0, s10
                  blt          a4, sp, 1084f
                  blt          t5, t0, 1093f
                  beq          s1, s1, 1080f
                  slli         s0, a2, 6
1080:             sra          s7, a7, t5
                  xor          t0, ra, s11
                  auipc        t6, 709117
                  blt          a2, a3, 1084f
1084:             sltiu        a6, ra, -570
                  bgeu         s3, t3, 1093f
1086:             bltu         s4, s4, 1097f
1087:             bge          a5, s11, 1094f
                  slti         t5, tp, -1933
                  andi         s10, a0, -1979
                  bge          s4, a4, 1102f
                  xor          ra, s9, t0
                  bne          a1, s7, 1105f
1093:             addi         t6, sp, -977
1094:             slt          sp, s11, s5
                  andi         a4, a4, 8
                  srli         s10, t1, 7
1097:             srl          a0, t4, t6
                  xori         t2, s10, 896
                  srl          s11, ra, s3
                  or           a5, a5, s6
                  slt          s8, t6, s2
1102:             andi         zero, t5, -195
                  slti         a6, t0, -236
                  srl          s10, sp, s10
1105:             andi         zero, gp, -2022
                  beq          sp, a1, 1113f
                  xori         a0, t3, 1817
                  or           s4, a1, s5
                  slt          ra, sp, t4
                  sltu         s10, a6, t6
                  blt          s4, s8, 1122f
                  auipc        s8, 85804
1113:             sltiu        zero, s3, -1342
                  beq          t2, t4, 1123f
                  andi         gp, s6, -1955
                  and          s9, a2, tp
                  bne          s8, t3, 1119f
                  slt          a5, t2, a4
1119:             add          a1, t4, t1
                  srl          gp, a5, ra
                  srli         s2, t5, 5
1122:             auipc        s10, 568057
1123:             or           t1, s2, ra
                  xori         s8, s8, -1499
                  blt          s4, s1, 1128f
                  add          sp, s7, s0
                  srl          s11, t0, s4
1128:             bne          s0, a0, 1137f
                  blt          sp, s2, 1142f
                  beq          a2, s9, 1141f
                  auipc        gp, 173180
                  xori         s3, tp, -980
                  sub          a5, sp, a4
                  addi         s5, s8, -764
                  srli         s8, t1, 16
                  slti         s4, tp, -1006
1137:             slt          t4, a1, s1
                  srai         sp, t5, 16
                  sub          s11, a0, t2
                  slt          s3, t2, t3
1141:             sub          a7, t1, t6
1142:             sll          s0, a3, t1
                  slli         gp, s11, 25
                  nop
                  ori          a3, a0, -1046
                  sll          a1, a4, s4
                  slli         zero, s11, 3
                  and          s4, s7, t6
                  sltiu        s10, tp, 1928
                  slt          s5, t6, tp
                  bne          t5, t3, 1159f
                  slt          a6, t6, t3
                  and          a2, s8, ra
                  sll          a5, a6, a5
                  bltu         zero, ra, 1163f
                  or           a6, a5, s7
                  xori         gp, s6, 483
                  sub          s3, s0, s3
1159:             andi         a3, s0, 1947
                  bne          sp, sp, 1161f
1161:             bgeu         a2, gp, 1168f
                  slli         s1, s11, 6
1163:             bltu         s1, ra, 1175f
                  sll          a0, t2, a2
                  srli         a2, t2, 31
                  ori          s5, t4, -1538
                  sltiu        s7, s9, 625
1168:             ori          s7, a7, 1908
                  blt          s3, s6, 1189f
                  nop
                  blt          t4, sp, 1183f
                  srai         s2, t3, 16
                  srli         sp, s4, 7
                  sub          sp, s8, tp
1175:             slt          a3, s8, s4
                  sll          s0, a5, s10
                  sub          a6, a4, t5
                  blt          s4, a3, 1194f
                  bgeu         s1, tp, 1185f
                  lui          s11, 449224
                  ori          s8, zero, -1869
                  andi         a7, s5, 1079
1183:             bne          s6, t0, 1203f
                  sra          a6, s0, s9
1185:             ori          t0, tp, -308
                  sltiu        s9, s11, 795
                  srai         t0, gp, 5
                  srai         a7, s8, 4
1189:             ori          s8, t6, 1209
                  sra          a6, a7, t3
                  lui          s3, 644215
                  ori          t5, t6, 1653
                  nop
1194:             bge          s8, s0, 1196f
                  srli         t1, a5, 19
1196:             slti         a1, s1, 1509
                  add          a6, sp, a7
                  bgeu         s5, s3, 1213f
                  and          s10, s7, a7
                  bne          ra, a5, 1207f
                  ori          s0, s7, -232
                  sra          a1, s7, t3
1203:             bgeu         t3, zero, 1220f
                  sub          a2, a3, zero
                  lui          s1, 577756
                  bgeu         s0, a6, 1213f
1207:             ori          t0, tp, 299
                  addi         a4, a4, 1888
                  sltiu        a3, a5, -1638
                  xori         s3, s6, -567
                  xor          a6, gp, t1
                  or           s11, ra, a1
1213:             bltu         s6, sp, 1216f
                  sub          s9, ra, sp
                  srli         a2, s1, 0
1216:             addi         ra, t3, -1111
                  sub          s1, s2, sp
                  srli         a1, a3, 3
                  auipc        t5, 421015
1220:             and          a3, s10, s11
                  bne          a1, s7, 1226f
                  sra          s11, a4, t2
                  sltu         sp, s9, s5
                  bne          s8, t4, 1238f
                  bgeu         zero, t5, 1232f
1226:             sll          a1, a4, t1
                  beq          a4, s11, 1243f
                  nop
                  beq          s7, s5, 1248f
                  slli         s4, s0, 29
                  slti         s10, s11, -617
1232:             lui          a1, 938685
                  sub          a4, gp, t4
                  lui          s3, 704066
                  nop
                  sll          a0, gp, s8
                  lui          s3, 569743
1238:             blt          a1, tp, 1249f
                  ori          a7, s11, -1534
                  bltu         s2, a3, 1242f
                  ori          a7, s4, 319
1242:             addi         gp, s5, 400
1243:             slli         s2, gp, 3
                  sub          a4, t3, a2
                  srai         t2, a0, 2
                  xor          s10, a6, a2
                  sub          s11, sp, s3
1248:             and          a5, a2, s0
1249:             sra          s1, s1, s9
                  sra          s9, ra, sp
                  addi         ra, s10, 1453
                  add          s9, s10, gp
                  slt          t6, t4, s8
                  addi         a7, t6, -1441
                  nop
                  nop
                  srai         s3, a7, 7
                  auipc        a3, 408135
                  slti         ra, sp, -1104
                  sltiu        t0, a1, -97
                  andi         s0, s0, 1941
                  ori          t4, tp, -189
                  add          a3, tp, s8
                  sra          s8, a3, s0
                  slt          sp, s2, t2
                  add          a2, a2, s1
                  lui          s10, 58730
                  srli         ra, s2, 14
                  nop
                  blt          a3, s1, 1271f
1271:             srli         t0, zero, 2
                  lui          s2, 582243
                  slli         t5, t3, 17
                  ori          t5, a0, 1848
                  sltu         a5, ra, s0
                  srai         sp, t3, 15
                  bne          gp, s11, 1279f
                  andi         a6, t2, 958
1279:             xor          s8, tp, sp
                  sltiu        a3, sp, 1334
                  ori          sp, t6, -1537
                  auipc        s5, 92554
                  sra          a4, a6, t1
                  sra          t5, ra, a5
                  bgeu         s9, s10, 1292f
                  and          s5, s11, a4
                  slli         s4, t1, 24
                  sra          a0, s4, t1
                  bge          a0, t3, 1296f
                  or           a5, t5, s6
                  sra          s2, s3, t2
1292:             slti         s7, tp, 667
                  ori          t1, a1, 260
                  slti         a2, s3, -1067
                  srli         a0, t1, 27
1296:             slt          sp, s7, zero
                  bgeu         a6, s8, 1312f
                  beq          t6, s1, 1301f
                  andi         a1, t5, -2005
                  bne          s6, t6, 1309f
1301:             lui          a0, 851526
                  slli         t5, sp, 9
                  xor          t6, s0, s1
                  ori          s7, s6, 547
                  add          ra, s8, a7
                  beq          t0, a1, 1308f
                  slt          gp, gp, s6
1308:             xor          s1, t3, s5
1309:             add          s3, a2, s2
                  sltiu        a3, a2, -216
                  srli         t4, t1, 21
1312:             sll          s1, a5, t3
                  slti         t4, s2, -1120
                  andi         ra, s4, -142
                  bge          t4, a2, 1335f
                  srai         s8, ra, 29
                  sltu         t0, a4, t2
                  beq          s6, s4, 1330f
                  slti         a1, tp, -439
                  slli         s0, a1, 1
                  addi         t0, a0, -2015
                  sra          gp, t1, s6
                  srai         t1, tp, 31
                  sub          a4, t5, t0
                  andi         s5, t3, -1965
                  xori         a3, s9, -214
                  srli         s10, a3, 8
                  add          s11, t6, s10
                  andi         a6, ra, -1375
1330:             xori         sp, a0, -1269
                  lui          s9, 514956
                  srli         a1, zero, 3
                  bne          zero, s9, 1338f
                  xori         a4, s2, 1827
1335:             lui          a2, 478117
                  or           s4, t3, t6
                  beq          s10, a6, 1343f
                  la           sp, region_0+856 #start riscv_load_store_rand_instr_stream_7
                  add          s4, s0, a6
                  lb           t0, -8(sp)
                  and          a0, ra, t0
                  add          s1, t0, sp
                  andi         t1, a3, 335
                  srli         t6, s10, 12
                  lbu          s9, 11(sp)
                  addi         a1, s7, -726
                  lh           t2, -12(sp)
                  sh           a4, -2(sp)
                  addi         a1, s10, 60
                  sw           s8, -16(sp)
                  srli         s1, gp, 11
                  lbu          a0, -11(sp)
                  sb           a1, -7(sp)
                  add          t6, a6, s6
                  sw           a5, 0(sp)
                  sb           s2, 1(sp)
                  sltiu        a1, a0, -1480
                  sb           zero, -5(sp)
                  lb           ra, 7(sp)
                  sb           a3, -14(sp)
                  lbu          a7, 9(sp)
                  sb           t2, -5(sp) #end riscv_load_store_rand_instr_stream_7
1338:             sll          s4, s11, s2
                  blt          t5, s0, 1342f
                  bltu         s2, a0, 1348f
                  bge          s9, a4, 1349f
1342:             bltu         s10, t3, 1349f
1343:             slli         t0, s10, 8
                  lui          s11, 808798
                  addi         sp, s11, -1075
                  bge          s0, s8, 1347f
1347:             addi         a3, s5, -697
1348:             beq          s3, tp, 1367f
1349:             slli         t5, s1, 17
                  nop
                  slt          zero, s9, a0
                  bgeu         s8, a7, 1368f
                  slti         s11, s11, 1143
                  lui          s8, 292272
                  sltu         sp, s10, t1
                  xori         ra, s2, 663
                  slti         a1, s3, -194
                  sub          sp, s3, t3
                  and          s5, a0, a4
                  ori          t5, s2, 334
                  bge          s4, s1, 1370f
                  sra          s2, s2, a5
                  beq          a3, s0, 1365f
                  sltu         a0, zero, s9
1365:             nop
                  sub          t0, a4, s7
1367:             slt          ra, s8, tp
1368:             beq          s7, a6, 1388f
                  ori          a0, a6, -1465
1370:             ori          t1, s5, 1927
                  or           a0, s10, s5
                  sra          s0, t6, s0
                  addi         s0, s2, -894
                  srli         s1, t2, 30
                  ori          sp, t0, 1768
                  slti         s0, s9, 1271
                  xori         t6, t1, -164
                  bge          t1, s2, 1390f
                  blt          a6, t0, 1396f
                  auipc        ra, 1020322
                  blt          t5, s0, 1388f
                  ori          a6, a3, 1119
                  slti         ra, a5, 1428
                  lui          t6, 551281
                  andi         s4, gp, -1204
                  andi         s9, a7, -2034
                  auipc        s0, 226505
1388:             sll          t2, s0, s8
                  bge          a7, s1, 1405f
1390:             auipc        a3, 634181
                  lui          s10, 349761
                  sltu         a4, t3, s7
                  sltu         a6, ra, s10
                  srai         a2, s6, 1
                  srli         s3, a1, 19
1396:             blt          s6, s5, 1409f
                  sra          t6, t4, t0
                  slt          a3, t2, s4
                  beq          tp, sp, 1400f
1400:             andi         a3, s9, -1848
                  andi         sp, s7, -403
                  sll          sp, t5, s4
                  sltu         s5, t5, a5
                  bne          a4, t3, 1415f
1405:             slti         t4, a0, -1325
                  xor          a5, t3, s1
                  xor          sp, a4, s7
                  sra          s7, gp, gp
1409:             ori          a3, t4, 2038
                  slt          s0, zero, a3
                  lui          s11, 931939
                  and          s4, s7, t3
                  sltiu        sp, a0, -502
                  beq          s0, sp, 1428f
1415:             lui          s4, 84669
                  bge          ra, zero, 1427f
                  addi         s2, s0, -223
                  bge          s1, s2, 1438f
                  addi         a2, s6, -634
                  ori          gp, s1, -775
                  lui          a7, 201626
                  or           s9, s7, t5
                  blt          s6, s3, 1424f
1424:             srli         t4, s9, 2
                  ori          a6, t0, -920
                  blt          s7, s4, 1428f
1427:             srli         a1, zero, 0
1428:             beq          gp, a0, 1429f
1429:             srl          t5, a7, s3
                  sub          s5, s2, t0
                  sll          a4, a2, sp
                  srai         zero, s0, 4
                  or           gp, s11, t4
                  sll          s0, s9, a4
                  sll          a2, t6, s11
                  slt          s8, t3, a5
                  bne          t3, s1, 1439f
1438:             srli         a1, s10, 21
1439:             sltiu        ra, s9, 788
                  addi         a0, a2, -905
                  srli         s4, t6, 16
                  nop
                  srl          a2, s3, t1
                  sra          s11, zero, s3
                  xor          sp, sp, a4
                  srl          s9, a4, s2
                  srai         gp, a3, 5
                  or           a2, s7, s4
                  srli         t2, a2, 20
                  slli         a7, a4, 1
                  beq          t4, t4, 1458f
                  addi         zero, t0, -516
                  srl          s9, t5, s4
                  bge          ra, a1, 1467f
                  slti         s9, t1, 813
                  blt          s8, s5, 1465f
                  lui          t6, 818932
1458:             bltu         t0, zero, 1477f
                  slti         s7, a4, 899
                  andi         a7, a2, -515
                  slti         a1, s3, 1862
                  sll          a0, tp, s4
                  bgeu         a0, a3, 1479f
                  blt          s10, t6, 1466f
1465:             or           sp, sp, a4
1466:             slt          a2, s9, t6
1467:             sltiu        s9, t2, -1372
                  bltu         s0, s10, 1488f
                  xor          s4, s5, a7
                  slt          a5, a7, zero
                  slli         a2, a2, 8
                  bltu         s3, t5, 1488f
                  bge          a2, a0, 1485f
                  lui          a1, 970679
                  sltu         s7, t3, s5
                  slti         s5, a0, -301
1477:             sltu         s7, a0, sp
                  sub          t0, t4, s7
1479:             srli         t1, t2, 8
                  xor          s2, a6, a3
                  andi         ra, s2, 457
                  slli         a5, gp, 15
                  ori          t1, a0, 1913
                  sltiu        sp, a2, 909
1485:             xor          a4, a7, t5
                  beq          s2, a2, 1501f
                  and          t6, a7, s2
1488:             auipc        s10, 1032168
                  addi         s11, a4, 588
                  sll          s1, s5, zero
                  la           t2, sub_2
                  addi         t0, a4, 518
                  addi         t2, t2, -763
                  bgeu         s0, t0, sub_1_j2 #branch to jump instr
                  lui          s5, 72808
                  add          s7, a1, t4
                  slti         t0, t5, -1032
sub_1_j2:         jalr         t5, t2, 764 #jump sub_1 -> sub_2
                  sltu         t4, s3, t1
                  xori         ra, t1, -172
                  xor          a1, s8, s8
                  sltiu        t5, t4, -1353
                  nop
                  and          t5, s5, s6
                  blt          s6, t5, 1502f
                  bne          zero, a6, 1505f
                  sltiu        t0, t2, -284
                  bltu         t3, s7, 1508f
                  auipc        sp, 985138
1501:             andi         t1, s4, -1491
1502:             xor          s2, a1, t2
                  addi         a7, s2, 1341
                  ori          ra, a6, 733
1505:             blt          t3, tp, 1508f
                  srli         ra, s7, 26
                  ori          a2, s8, -1178
1508:             slt          s10, ra, t2
                  srai         s9, zero, 14
                  lw           t5, 4(s6)
                  addi         s6, s6, 36
                  auipc        s4, 956048
                  and          gp, t1, s6
2007:             addi x3, x30, 0
2007:             jalr x3, x3, 0
sub_8:            beq          t1, s7, sub_8_stack_p
                  xori         s11, a0, 204
sub_8_stack_p:    addi         s6, s6, -52
                  sw           t5, 4(s6)
                  xor          zero, a4, a3
                  slti         t1, s4, 1584
                  la           sp, region_0+1579 #start riscv_load_store_rand_instr_stream_3
                  srai         s5, s10, 10
                  lbu          a4, -14(sp)
                  lw           s2, -15(sp)
                  or           s7, t3, a6
                  sb           t2, -4(sp)
                  lhu          a1, 7(sp)
                  slt          a3, a3, t1
                  sb           a3, 7(sp)
                  addi         s1, s9, 1201
                  srli         ra, s5, 12
                  lui          a7, 88602
                  lb           a7, -6(sp)
                  lui          t5, 756210
                  auipc        gp, 753201
                  lhu          t0, 7(sp)
                  sltiu        t4, s7, -127
                  srl          s2, gp, t5
                  sll          s2, zero, a3
                  lb           t0, -4(sp)
                  lb           a0, 12(sp)
                  lh           s10, -13(sp)
                  sb           t6, 0(sp)
                  auipc        a5, 51389
                  lb           t6, -10(sp)
                  lbu          s8, -4(sp)
                  lb           a1, -14(sp)
                  sll          a0, gp, t2
                  sh           gp, 5(sp)
                  lhu          s4, 9(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1200 #start riscv_load_store_rand_instr_stream_0
                  sb           t6, 576(sp)
                  sb           t3, 142(sp)
                  addi         t4, s4, 1887
                  xori         s10, s7, 1477
                  sb           t4, -441(sp)
                  lb           a5, 711(sp)
                  sltu         s5, s10, t2
                  lb           s5, 633(sp)
                  sub          a2, s5, s6
                  slti         t1, s8, 1929
                  lh           t6, 402(sp)
                  andi         t1, a5, -1154
                  lbu          s11, 735(sp)
                  lhu          a4, -608(sp)
                  slt          a6, s3, t5
                  sb           a1, 759(sp)
                  lhu          t5, -502(sp)
                  srai         t1, a4, 15
                  and          t1, gp, s11
                  sb           s6, -205(sp)
                  sb           a4, -477(sp)
                  add          gp, gp, s6
                  lh           a2, 564(sp)
                  lh           s5, 676(sp)
                  sb           s9, 282(sp)
                  lb           s5, -507(sp)
                  lh           a1, -560(sp)
                  lbu          s3, -691(sp)
                  lbu          a7, 9(sp)
                  slli         s1, s11, 14
                  ori          gp, s3, 1549
                  lbu          s0, -247(sp)
                  xor          s1, sp, s5
                  sb           t3, -147(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_0+1754 #start riscv_load_store_rand_instr_stream_5
                  lh           a5, 14(t0)
                  lw           a5, -14(t0)
                  lbu          gp, 8(t0)
                  xori         a3, t4, -155
                  auipc        s11, 436706
                  sb           a1, 7(t0)
                  lbu          a2, -4(t0)
                  slti         a3, a0, -163
                  lb           s11, 13(t0)
                  sb           a6, 14(t0)
                  lb           sp, 1(t0)
                  srli         s1, t6, 21
                  lb           a5, -5(t0)
                  sb           s9, 4(t0)
                  sh           tp, -8(t0)
                  sll          s8, s8, t6
                  lbu          t5, -3(t0)
                  and          a5, s7, s9
                  sub          a0, s6, a4
                  sh           s11, 8(t0)
                  lbu          t6, -10(t0)
                  srl          t5, a5, s4
                  lb           s11, 14(t0)
                  addi         a0, ra, 1797
                  lh           t2, 8(t0)
                  xori         t5, s9, -1380
                  sb           s2, -9(t0)
                  sra          sp, sp, a6
                  sb           zero, 3(t0)
                  slt          s10, a7, a7
                  lbu          t2, 3(t0)
                  lhu          t6, -16(t0)
                  lbu          a4, -5(t0)
                  lb           sp, 6(t0)
                  sb           s0, 1(t0)
                  auipc        a4, 335219
                  lhu          a3, -6(t0)
                  sra          s3, s0, s7
                  or           a3, s4, s1
                  lhu          s0, -14(t0)
                  lb           a6, 13(t0) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+907 #start riscv_load_store_rand_instr_stream_1
                  sltu         s4, t2, s1
                  sb           s7, 14(sp)
                  lbu          s5, 3(sp)
                  sll          t4, t0, gp
                  or           a4, a0, a7
                  lb           a6, -4(sp)
                  xor          a3, a7, ra
                  lh           s5, 11(sp)
                  slli         a1, t3, 15
                  lbu          s7, 12(sp)
                  sb           tp, 0(sp)
                  lbu          s3, 16(sp)
                  sb           s6, 11(sp)
                  ori          t6, s2, 619
                  lb           ra, -8(sp)
                  sb           s9, -8(sp)
                  or           t0, s8, t2
                  lh           s3, -11(sp)
                  sll          s1, t4, s3
                  lb           a7, -10(sp)
                  xori         s1, s2, 158
                  lw           s8, 13(sp)
                  and          s10, s11, s8
                  sh           a5, 13(sp)
                  sb           t5, -16(sp)
                  ori          s8, tp, 557
                  slli         t1, a2, 25
                  lhu          s7, 3(sp)
                  slli         s11, ra, 18
                  lb           s2, -12(sp)
                  sltiu        s7, s1, -1834
                  lb           a5, 16(sp)
                  sra          s8, s1, t4
                  lb           a6, -16(sp)
                  sll          a4, s0, tp
                  lb           zero, 8(sp)
                  slli         s5, t6, 25
                  lb           s2, -8(sp)
                  or           s5, t4, s10
                  lhu          s4, -9(sp)
                  srli         a7, a6, 14
                  lbu          t6, 9(sp)
                  lb           a1, 4(sp)
                  and          s4, s7, s1
                  lbu          a5, -16(sp)
                  lb           gp, -7(sp)
                  sb           t3, 8(sp)
                  srai         ra, s11, 26
                  lbu          s10, 0(sp)
                  xori         gp, t6, 17
                  sh           t0, -9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_0+1785 #start riscv_load_store_rand_instr_stream_6
                  auipc        a1, 690441
                  add          s2, t6, a5
                  srai         t6, t6, 24
                  sra          t1, s6, a1
                  sra          ra, s4, t5
                  slti         gp, a4, 48
                  srai         s3, a4, 25
                  slt          a6, s4, t6
                  srl          s9, a0, t6
                  add          s8, sp, a0
                  add          a2, t3, zero
                  addi         a1, gp, -1157
                  lui          a7, 1041475
                  sb           s6, -7(s1)
                  xori         s2, t1, 1368
                  lui          s9, 811342
                  sb           a1, 6(s1)
                  sll          a6, t4, a3
                  lb           t2, 4(s1)
                  slt          t6, s9, gp
                  lb           s10, 16(s1)
                  srai         a0, s0, 28
                  sb           t2, -15(s1)
                  lb           s7, -14(s1)
                  sb           s9, -4(s1)
                  add          s3, tp, a3
                  auipc        s5, 182334
                  addi         a3, s1, 9
                  lb           gp, 9(s1)
                  lb           gp, -5(s1)
                  auipc        a6, 218543
                  lw           sp, 7(s1)
                  srl          a7, s10, s11
                  sb           s2, -8(s1) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+702 #start riscv_load_store_rand_instr_stream_7
                  lh           s2, -230(ra)
                  slli         sp, t6, 23
                  lbu          s7, 123(ra)
                  lbu          a0, -24(ra)
                  addi         s8, t5, 1526
                  srli         a5, s0, 20
                  sw           s2, -46(ra)
                  lb           a7, 49(ra)
                  nop
                  lb           s4, -71(ra)
                  sb           t1, 105(ra)
                  ori          t0, s1, -223
                  auipc        s11, 745224
                  lh           s8, -154(ra)
                  srl          a0, s11, ra
                  lbu          sp, 207(ra)
                  xori         s0, a2, 648
                  sb           s1, -79(ra)
                  slt          t2, a5, a7
                  lbu          s10, 249(ra)
                  srai         a1, ra, 21
                  sb           s8, 30(ra)
                  sb           t1, 214(ra)
                  lhu          t2, 126(ra)
                  and          gp, s6, a2
                  srai         s9, t0, 5
                  add          t2, a3, s4
                  slt          gp, gp, s11
                  sltu         a3, s11, a3
                  sra          a6, a0, a0
                  lbu          s4, 87(ra)
                  lui          a4, 14005
                  lbu          t5, 147(ra)
                  sb           t1, -31(ra)
                  srl          s1, sp, sp
                  slti         t1, a4, 1680
                  lw           a0, -2(ra)
                  lbu          a6, -163(ra)
                  slti         s3, s8, -1423
                  lb           t0, 201(ra)
                  lbu          s4, -197(ra)
                  nop
                  xor          a5, t2, t5
                  sltu         a4, s6, s6
                  xori         t0, s2, 451
                  ori          zero, t5, 567
                  srl          a0, s2, a3
                  lb           s5, -245(ra)
                  andi         s3, a2, -601
                  lbu          s1, 116(ra)
                  lb           t2, -100(ra)
                  ori          a4, zero, -143
                  lb           a3, -145(ra) #end riscv_load_store_rand_instr_stream_7
                  srli         a1, a4, 27
                  bne          gp, a7, 15f
                  bne          s2, s0, 8f
                  auipc        t6, 567844
                  bgeu         tp, ra, 20f
                  sra          t1, zero, a3
                  bgeu         a7, s7, 13f
                  sll          a1, s8, a7
8:                or           s1, s7, s11
                  sll          a4, gp, t5
                  and          s11, t2, s10
                  add          t4, a4, tp
                  bltu         t3, zero, 13f
13:               xori         gp, s5, 170
                  sltiu        t6, a3, -344
15:               beq          s0, t4, 26f
                  slt          a4, s9, a5
                  sltiu        s2, s9, -1068
                  slli         s7, t5, 13
                  auipc        a1, 136339
20:               beq          a2, sp, 26f
                  xor          s11, s8, t5
                  slli         s0, a5, 21
                  add          s9, ra, t4
                  srl          s3, t3, t1
                  add          t0, s4, t3
26:               nop
                  sra          ra, ra, s10
                  add          a1, t1, t6
                  sltiu        s4, s2, 850
                  srl          t6, s4, s5
                  sra          s7, s0, t5
                  srli         t1, t6, 3
                  bne          s11, t5, 35f
                  sra          a2, a3, a2
35:               ori          a3, s5, 164
                  sll          s2, s8, s9
                  bgeu         a2, gp, 49f
                  xori         a7, a4, 485
                  sll          a0, t1, s5
                  bge          t6, tp, 60f
                  beq          ra, ra, 44f
                  slli         t0, s10, 14
                  or           s1, s9, s0
44:               bge          a2, s0, 58f
                  auipc        s3, 1008520
                  and          s2, a0, gp
                  slti         a7, a2, -852
                  lui          zero, 1017627
49:               slti         a6, s0, 1758
                  sra          s10, t3, t4
                  add          s0, a4, s7
                  and          a6, t0, s4
                  auipc        s4, 101403
                  ori          a4, t0, 1596
                  or           s7, s7, t5
                  sll          s11, gp, t0
                  addi         a7, t3, -577
58:               and          a0, s8, t3
                  bgeu         ra, s6, 73f
60:               blt          a1, sp, 64f
                  srai         s11, gp, 20
                  srai         s9, s4, 16
                  sll          s5, a0, t1
64:               and          s11, t1, a4
                  beq          ra, t5, 78f
                  srl          s1, a2, s7
                  slt          a7, a5, a2
                  and          a6, t0, t5
                  slli         s2, a7, 3
                  auipc        t4, 196762
                  xori         s7, a1, 723
                  sra          t5, s11, a3
73:               auipc        a7, 10594
                  bge          t3, a4, 90f
                  sltiu        t4, a4, -943
                  xori         s7, a3, -1100
                  srl          s0, a0, a2
78:               andi         s5, t1, 44
                  ori          t1, s8, 605
                  sra          gp, s2, t2
                  sltu         s8, a3, s4
                  sll          s7, s0, t4
                  addi         s7, a1, -330
                  srli         sp, a2, 30
                  bge          a4, a1, 88f
                  srl          s0, s10, t3
                  bge          t5, s5, 106f
88:               slt          a3, s9, t4
                  or           s10, t3, t3
90:               bltu         a2, s0, 98f
                  add          s3, zero, s9
                  andi         s1, zero, -392
                  xor          s11, s8, s8
                  xori         t1, t1, 662
                  bltu         s11, a7, 114f
                  nop
                  auipc        s3, 977927
98:               xori         s5, t1, -31
                  sltiu        s11, a1, 1882
                  auipc        s7, 314343
                  srli         t1, a4, 9
                  sub          a7, s10, t5
                  srl          s9, s9, t5
                  xori         s4, s2, -1659
                  sub          a6, s6, sp
106:              slt          s7, s7, t6
                  slli         a6, t4, 7
                  slt          s4, sp, t0
                  blt          t3, a3, 116f
                  srl          s4, s10, s5
                  sltu         gp, a1, t0
                  ori          t1, t6, -197
                  bne          s9, a0, 121f
114:              bltu         zero, a7, 122f
                  lui          t1, 998384
116:              srl          t2, s9, a4
                  xori         t2, s8, 1559
                  sltiu        s2, a4, 1045
                  or           a1, s11, t3
                  ori          a2, t0, -1817
121:              nop
122:              sra          s1, sp, s10
                  srai         t5, s3, 8
                  or           s4, t0, ra
                  bltu         t3, t0, 128f
                  and          gp, a7, s8
                  bltu         a6, s2, 147f
128:              and          t5, t5, ra
                  nop
                  slli         s1, a6, 25
                  andi         t0, s7, -522
                  srai         t2, s10, 6
                  bne          s4, a3, 144f
                  sll          sp, a0, s9
                  srai         a7, tp, 9
                  slt          s9, t6, s5
                  bge          t4, t4, 147f
                  bgeu         t3, s9, 145f
                  la           sp, region_0+936 #start riscv_load_store_rand_instr_stream_2
                  srli         t0, a6, 9
                  sb           s3, 61(sp)
                  lbu          s5, 32(sp)
                  sb           zero, -45(sp)
                  lbu          t2, -55(sp)
                  sltu         s10, s10, sp
                  lhu          t2, -28(sp)
                  add          a5, s7, s11
                  ori          ra, s10, -1401
                  lui          s8, 258265
                  lb           s5, -37(sp)
                  lbu          a3, 16(sp)
                  or           s10, s1, t4
                  lw           t1, 48(sp)
                  srl          t5, s9, t1
                  lbu          a6, -22(sp)
                  lh           a3, 36(sp)
                  and          s7, t1, t1
                  lbu          t2, -17(sp)
                  lbu          a4, -30(sp)
                  lui          s9, 196348
                  andi         a4, a5, -282
                  addi         a7, t5, -769
                  srai         s10, t4, 23
                  srli         t4, s5, 14
                  lhu          zero, 32(sp)
                  addi         a4, sp, 1426
                  lbu          s1, -18(sp)
                  lh           s5, -14(sp)
                  lhu          t2, -2(sp)
                  nop
                  addi         s3, s6, 106
                  xor          a7, s6, s8
                  add          s4, s3, s2
                  sb           s6, -18(sp)
                  sb           s9, 49(sp)
                  sb           a0, 39(sp)
                  sb           gp, -64(sp)
                  sb           s2, -35(sp)
                  lw           s2, 12(sp)
                  sb           a3, -53(sp)
                  lbu          a3, -19(sp)
                  sh           s7, -10(sp)
                  lw           a3, -20(sp)
                  sb           s11, -15(sp)
                  lb           s10, 15(sp)
                  sb           s6, -30(sp)
                  add          t5, t4, gp
                  lh           t0, -48(sp) #end riscv_load_store_rand_instr_stream_2
                  bge          s8, ra, 141f
                  blt          a3, a0, 160f
141:              xor          t2, gp, s2
                  bgeu         a5, s0, 150f
                  andi         a0, t0, -885
144:              bgeu         s5, t3, 160f
145:              add          s0, s2, t4
                  bgeu         sp, a7, 149f
147:              nop
                  nop
149:              addi         t5, ra, 219
150:              xori         s5, a3, 160
                  slt          s0, s8, t0
                  bgeu         t0, t6, 164f
                  sltu         t6, s3, gp
                  srli         a3, t2, 4
                  srl          t5, t4, a0
                  nop
                  addi         a5, a0, 269
                  bltu         s3, a1, 172f
                  srli         a6, s1, 0
160:              srli         s4, s6, 1
                  xor          s5, a6, a2
                  sltiu        ra, a7, 1334
                  bgeu         t1, a0, 167f
164:              sra          a0, a3, t3
                  and          s10, tp, t5
                  sltiu        t4, s10, -1729
167:              bge          s8, t4, 180f
                  or           t4, s4, s0
                  sub          a4, s1, a1
                  bltu         zero, a0, 181f
                  sra          s8, a4, s10
172:              addi         t4, t0, 600
                  sra          s0, t1, a1
                  addi         t6, s11, 860
                  sub          gp, a4, s2
                  bltu         s0, zero, 186f
                  auipc        s5, 4572
                  slli         t2, s3, 23
                  sll          s0, a2, s2
180:              lui          a5, 956904
181:              xor          t6, gp, gp
                  and          s3, a5, s0
                  bgeu         t4, ra, 194f
                  sub          a5, t0, a6
                  beq          t5, a0, 191f
186:              bne          t5, s2, 193f
                  nop
                  bltu         gp, zero, 196f
                  add          a7, sp, sp
                  auipc        t6, 1002338
191:              sub          sp, a2, a3
                  bne          a2, s2, 200f
193:              bne          s5, t3, 200f
194:              auipc        a3, 865394
                  sll          a3, zero, s3
196:              slt          t6, s8, a7
                  blt          ra, t1, 200f
                  sll          t0, s10, a7
                  andi         a1, a6, 1333
200:              slti         s9, ra, -2018
                  slti         s8, a4, -1886
                  bgeu         ra, a7, 216f
                  or           a1, s1, s9
                  xori         sp, sp, -1272
                  and          t1, a7, s7
                  auipc        s2, 862278
                  xori         a3, a4, 1859
                  and          s10, s8, a5
                  nop
                  sub          s3, s6, a7
                  srai         a5, tp, 14
                  auipc        s7, 184302
                  sltu         s3, s7, t2
                  xor          s1, a7, s7
                  xori         zero, t6, 1959
216:              xori         t1, tp, -741
                  auipc        a6, 907822
                  xor          t2, a7, t4
                  sub          t6, a6, s1
                  or           a3, s3, gp
                  slli         a4, a7, 28
                  slti         s0, s7, 268
                  auipc        s5, 690573
                  sltiu        t1, gp, 1949
                  addi         s10, s0, -743
                  srai         s11, sp, 13
                  sltu         a6, a1, t4
                  lui          s4, 950481
                  blt          s7, t6, 243f
                  blt          a5, s9, 250f
                  and          s11, s3, a6
                  add          a3, a0, t2
                  or           gp, s9, t3
                  slti         s10, a0, -1386
                  sll          t0, t2, t5
                  addi         s4, sp, -909
                  sll          s1, a4, s10
                  lui          t4, 807130
                  or           a5, s8, a3
                  slti         s0, s6, 1313
                  sltiu        t2, a4, -1180
                  addi         a0, s2, 1558
243:              blt          t3, t6, 262f
                  lui          s0, 813432
                  add          s1, t6, s6
                  sra          s7, sp, s8
                  srl          s9, t5, s11
                  add          t1, s5, t5
                  add          s2, ra, t5
250:              ori          s1, zero, -1805
                  xori         s10, ra, -236
                  slt          t2, a5, tp
                  add          s7, s4, a5
                  sub          gp, a5, a4
                  xori         s9, t5, -1314
                  andi         ra, a5, -718
                  srl          s4, zero, a7
                  sub          t5, t4, s7
                  srl          a5, zero, s9
                  sltu         s4, a6, s2
                  bgeu         s5, a6, 263f
262:              add          s10, s2, t4
263:              srai         zero, s6, 16
                  ori          s0, a3, -1094
                  sltiu        s11, t3, -1192
                  bge          s4, s7, 282f
                  blt          tp, s0, 287f
                  sll          t2, a5, t6
                  beq          s0, t4, 270f
270:              nop
                  slt          a6, s7, t0
                  sub          s2, t3, s5
                  sra          t5, t4, a4
                  sltiu        s10, a3, 507
                  sltiu        s8, t1, -1533
                  xori         a4, t1, 1377
                  addi         s3, t6, 1268
                  sll          s4, s7, t4
                  sll          zero, t2, s3
                  sll          s2, s11, s4
                  or           s10, t0, a2
282:              slli         t5, s10, 23
                  bltu         s3, ra, 286f
                  lui          s3, 531273
                  srli         a4, s0, 21
286:              bgeu         s3, s2, 305f
287:              add          a3, s7, gp
                  bltu         t6, t3, 295f
                  sltu         s2, s11, s10
                  srli         a6, s8, 2
                  ori          a1, zero, -1337
                  and          s4, ra, a5
                  add          a4, t6, s7
                  sra          t0, sp, a6
295:              sltiu        s11, gp, -833
                  bne          s2, s6, 316f
                  xori         a7, a4, -1878
                  sra          a5, t6, t5
                  sll          gp, t6, s4
                  xori         a6, s10, 343
                  lui          a0, 207493
                  lui          s0, 611138
                  and          s5, gp, a0
                  nop
305:              lui          s11, 999632
                  sltu         s10, a4, s2
                  auipc        s4, 964417
                  addi         s10, s11, 1912
                  sll          s0, s1, t2
                  andi         a7, t6, 1880
                  sltiu        gp, ra, 1551
                  slt          zero, s6, ra
                  sltiu        t6, t0, 1016
                  xor          t4, s2, t1
                  and          s0, a0, t6
316:              slli         a7, s9, 23
                  addi         ra, s1, -1451
                  andi         t2, s7, 1642
                  and          a7, a2, a0
                  xori         s7, t4, -667
                  or           s9, s7, sp
                  nop
                  srli         a1, a5, 19
                  srli         s2, a0, 0
                  add          s0, zero, s5
                  slti         t2, a2, 181
                  ori          t1, s3, -1531
                  and          s10, t5, t6
                  sltu         a2, s6, a4
                  auipc        t0, 950449
                  beq          s0, t2, 337f
                  srl          a6, a1, ra
                  sltiu        t4, t4, -1748
                  bne          tp, s0, 336f
                  sltiu        s1, t1, 1770
336:              slli         s8, t5, 28
337:              sub          a5, t6, s6
                  slli         sp, s5, 30
                  xori         t5, s8, 1827
                  andi         a6, t1, 1153
                  and          s2, t5, t2
                  and          gp, a1, gp
                  nop
                  auipc        a1, 615561
                  xori         sp, sp, 230
                  slt          t2, t6, a2
                  blt          a5, t2, 355f
                  xor          t2, a0, s4
                  slti         t6, t6, 1087
                  slt          a3, t2, tp
                  bltu         ra, s2, 365f
                  nop
                  ori          a6, a1, 309
                  or           a4, s10, s10
355:              slli         sp, s7, 30
                  beq          s5, s11, 363f
                  slti         t1, a4, -1944
                  la           s4, region_1+1256 #start riscv_load_store_rand_instr_stream_8
                  auipc        s1, 434999
                  srli         t2, a6, 11
                  nop
                  lbu          a1, -19(s4)
                  lbu          s2, -18(s4)
                  lbu          t5, 48(s4)
                  nop
                  srai         s11, a5, 24
                  lbu          a7, -31(s4)
                  lui          a4, 311851
                  or           s1, a6, a3
                  lb           t5, 23(s4)
                  andi         t6, s3, 181
                  lh           zero, -18(s4)
                  xori         a4, ra, 238
                  srl          s3, s9, t4
                  lb           s7, -7(s4)
                  lbu          s7, -59(s4)
                  lbu          a6, 23(s4)
                  xor          zero, s9, s2
                  sltu         a7, t3, s1
                  lbu          s3, -49(s4)
                  lb           a3, 45(s4)
                  lb           t5, -39(s4)
                  lbu          t2, 25(s4)
                  sb           s8, 27(s4)
                  lb           t4, -25(s4)
                  sltiu        a4, zero, -788
                  sra          s3, a6, t3
                  lbu          t0, 37(s4)
                  sub          t1, a5, s1
                  lb           s5, -7(s4)
                  addi         t0, a5, -532
                  lui          s2, 171072
                  lbu          a0, 7(s4)
                  lbu          t4, -17(s4)
                  andi         ra, a3, -1279
                  or           s9, a7, t0
                  srai         s11, a3, 31
                  lbu          a0, 45(s4)
                  lbu          a7, 55(s4)
                  sltu         a4, tp, a1
                  slli         sp, s1, 17
                  lb           t6, -21(s4)
                  lbu          a0, 52(s4)
                  sltiu        a0, s3, -1890
                  lb           a4, -31(s4)
                  auipc        zero, 407787
                  xori         t6, s7, 1881
                  andi         s11, t4, 412
                  lw           gp, 44(s4)
                  lui          sp, 251089
                  lb           t2, -42(s4) #end riscv_load_store_rand_instr_stream_8
                  beq          a4, s2, 366f
                  sub          gp, gp, s1
                  srl          gp, s5, t2
                  lui          zero, 710667
                  andi         a7, s11, -1417
363:              bltu         s3, a2, 374f
                  lui          s0, 589621
365:              add          a3, t2, t4
366:              bgeu         s1, a6, 378f
                  lui          a3, 719717
                  slli         s4, t5, 15
                  bgeu         t1, zero, 383f
                  slt          t0, s8, s10
                  and          s4, ra, s9
                  addi         s10, s1, -1961
                  slt          s9, s5, s11
374:              sltiu        s9, s0, 637
                  add          zero, s6, s5
                  addi         a2, sp, -1279
                  addi         a6, tp, 940
378:              bltu         s9, s6, 397f
                  beq          a1, a6, 399f
                  bltu         a3, s10, 382f
                  ori          a4, a3, 146
382:              bge          t1, zero, 393f
383:              auipc        s2, 52739
                  slli         a1, s4, 18
                  bgeu         s10, s7, 404f
                  sub          s8, a7, sp
                  srai         s0, s10, 5
                  sltiu        ra, t3, -1962
                  sll          t2, a4, a3
                  addi         a5, s3, 1812
                  add          a3, a2, s9
                  sra          zero, s6, a1
393:              auipc        gp, 771876
                  sra          a7, s1, s6
                  lui          a2, 751462
                  nop
397:              xori         s8, t5, -885
                  bne          t4, a7, 406f
399:              xori         s8, s8, 1138
                  slt          ra, t0, t5
                  bgeu         s2, s7, 403f
                  and          t5, t6, a4
403:              sltiu        a0, t0, -1093
                  la           s2, region_1+1172 #start riscv_load_store_rand_instr_stream_4
                  slti         t1, s9, -1210
                  andi         s0, a6, -897
                  sra          s5, zero, s11
                  lbu          s10, -4(s2)
                  xor          a5, s5, zero
                  sb           s11, -7(s2)
                  sh           s8, 14(s2)
                  nop
                  srai         sp, zero, 6
                  slli         s10, zero, 16
                  add          t6, s1, gp
                  lh           sp, -4(s2)
                  and          t0, t6, t2
                  sll          s1, a2, zero
                  slti         t5, ra, -868
                  addi         s9, a3, 1894
                  lb           t6, -13(s2)
                  ori          a7, s6, 860
                  or           sp, s10, ra
                  and          a1, t6, a3
                  lbu          a0, 3(s2)
                  addi         s10, s8, -659
                  lbu          a4, -5(s2)
                  or           t0, ra, s8
                  lw           s4, 0(s2)
                  add          s10, tp, a0
                  sub          s0, s1, zero
                  xor          a2, a5, sp
                  lui          ra, 145748
                  ori          s3, t4, -584
                  lbu          sp, -9(s2)
                  slt          t0, s0, t5
                  lbu          t6, -9(s2)
                  lw           a4, 16(s2)
                  auipc        a5, 781752
                  lb           ra, -8(s2)
                  lbu          s8, 3(s2)
                  lbu          zero, 10(s2)
                  lui          s0, 982824
                  lbu          t4, 13(s2)
                  lb           s7, 4(s2)
                  lhu          t4, -6(s2)
                  xori         s10, t5, -1094
                  sltu         s7, a0, s1
                  lb           ra, -5(s2) #end riscv_load_store_rand_instr_stream_4
404:              slt          a4, t6, t5
                  slt          a5, a2, s11
406:              nop
                  ori          a1, t2, -646
                  addi         s2, zero, 1506
                  bne          s1, t6, 410f
410:              bgeu         t2, a3, 424f
                  beq          s1, a7, 414f
                  sltiu        a2, s4, -1931
                  bltu         s10, s10, 433f
414:              slli         a3, s10, 17
                  bgeu         a1, t3, 428f
                  or           sp, s7, sp
                  sra          s11, s7, s3
                  or           s2, sp, s4
                  bltu         s11, a7, 422f
                  addi         t4, a0, -85
                  auipc        s9, 991508
422:              or           s5, t3, t3
                  xori         t6, s7, -1799
424:              or           s0, a1, a7
                  or           s2, a1, a3
                  srai         a3, s8, 30
                  beq          t4, sp, 434f
428:              bge          t3, a3, 434f
                  or           s3, tp, a0
                  slt          a4, s5, a7
                  blt          s4, s5, 447f
                  sltu         s5, s10, a4
433:              auipc        t6, 834049
434:              sll          s10, t3, a3
                  bltu         a4, t4, 451f
                  xor          t4, t0, s8
                  xor          a5, s3, t2
                  or           a4, ra, t4
                  sltu         a7, s5, t0
                  ori          a1, t2, 1618
                  andi         a1, a6, -1390
                  bgeu         a7, ra, 446f
                  sltiu        a1, s2, 1227
                  or           s4, gp, tp
                  and          a5, a4, a6
446:              addi         ra, a2, 1674
447:              sltiu        t5, s5, 677
                  add          s3, a7, t3
                  lui          s11, 42789
                  and          s7, gp, gp
451:              and          s10, a6, s10
                  srai         a0, a5, 23
                  andi         a5, s5, -739
                  bgeu         s11, s2, 464f
                  xori         t2, s9, -236
                  xori         a6, s6, 531
                  slti         t6, t2, 1704
                  xor          a4, t0, a1
                  andi         s7, s2, 1784
                  add          t6, s8, a2
                  sltiu        a5, ra, -990
                  andi         a2, t6, -1705
                  slti         s10, s4, 1153
464:              ori          a1, s6, 1245
                  lui          t0, 58133
                  addi         t5, s11, 2021
                  sll          ra, s4, s7
                  or           a6, s6, s11
                  srai         sp, a1, 12
                  xori         s7, s2, -1302
                  bne          a5, a6, 491f
                  sra          s3, t5, a4
                  add          sp, s9, t2
                  ori          t6, s3, -782
                  auipc        a1, 568976
                  ori          s1, a7, 1715
                  or           s2, a6, a7
                  andi         s8, s7, -366
                  andi         t0, s6, 1904
                  slli         ra, a4, 16
                  slli         t6, gp, 10
                  srai         s5, ra, 5
                  slti         sp, s3, 505
                  ori          s1, a0, -1242
                  and          t6, a5, a5
                  or           s10, a4, t0
                  srli         t2, a0, 30
                  lui          t4, 639288
                  bne          t3, gp, 496f
                  srl          s2, tp, s9
491:              lui          s2, 465524
                  add          s5, s7, s4
                  bge          s10, s1, 496f
                  and          t5, s5, gp
                  bgeu         s6, s11, 501f
496:              bgeu         a0, a0, 507f
                  bge          s0, s9, 511f
                  slt          s8, zero, a5
                  slti         s0, a1, 1631
                  add          t6, s8, t0
501:              bge          s10, gp, 509f
                  sltiu        t0, a3, 133
                  or           s9, t6, s3
                  xor          t0, a3, t2
                  ori          a6, a4, 660
                  srai         t4, ra, 11
507:              xor          a5, a7, s10
                  slti         s10, ra, 679
509:              sll          a1, s11, s5
                  sra          a7, s8, t2
511:              bne          s10, a1, 525f
                  auipc        a4, 445277
                  bne          s0, a7, 519f
                  bne          t2, zero, 517f
                  srai         a0, ra, 5
                  beq          zero, s7, 523f
517:              add          a5, zero, s8
                  sltiu        t5, a2, -256
519:              beq          t2, s1, 535f
                  sltiu        s0, sp, -1990
                  srl          t2, s1, s10
                  beq          s11, s1, 541f
523:              lui          a0, 195000
                  xori         s3, a7, 628
525:              sltu         s5, t3, a6
                  bgeu         s5, s5, 546f
                  srli         a6, a3, 11
                  beq          t5, tp, 548f
                  xor          s8, t4, s5
                  sltiu        t5, s7, 727
                  bge          s5, t3, 541f
                  bltu         a5, gp, 539f
                  and          s10, s9, s7
                  bne          s3, a3, 541f
535:              beq          a5, t0, 538f
                  xori         s0, s11, -1869
                  srli         s3, a2, 26
538:              auipc        a7, 66409
539:              or           s4, a6, t4
                  addi         a2, tp, 644
541:              bgeu         a2, t5, 549f
                  bgeu         zero, a0, 544f
                  bge          t4, zero, 559f
544:              auipc        a3, 593236
                  addi         s8, a3, -1758
546:              bgeu         t3, a0, 549f
                  addi         s7, a7, 2001
548:              srl          s9, a6, a7
549:              sub          s10, s11, t3
                  or           t2, a5, a3
                  xor          s0, t0, s7
                  addi         t5, s3, -1443
                  srl          t2, s8, s10
                  auipc        t1, 372624
                  slt          ra, s4, s8
                  slti         s1, t3, 1781
                  srli         a5, s2, 21
                  bgeu         a6, s9, 566f
559:              bge          a6, s1, 561f
                  xori         s5, zero, -470
561:              srli         ra, s5, 17
                  auipc        a1, 704474
                  xori         t6, s5, -1443
                  beq          tp, s11, 575f
                  bne          s5, s2, 566f
566:              slli         t4, t1, 31
                  beq          s6, t3, 586f
                  add          ra, gp, t3
                  xor          s8, a2, tp
                  bne          tp, gp, 590f
                  sltu         s9, gp, tp
                  sra          s8, t2, gp
                  sltu         s10, sp, s10
                  bltu         a5, t0, 587f
575:              srli         ra, s2, 14
                  blt          s6, zero, 590f
                  auipc        t6, 865218
                  or           t6, s5, ra
                  auipc        a0, 233785
                  srai         a1, a2, 22
                  sra          s8, a0, a6
                  addi         t2, s3, 718
                  srli         s1, s10, 5
                  sll          a2, t4, s5
                  blt          t2, t1, 591f
586:              ori          a4, s1, 601
587:              slt          s4, s3, t5
                  sub          s2, s9, ra
                  andi         t6, ra, -917
590:              sltu         t0, t2, t1
591:              and          s2, t2, t5
                  lui          t6, 16259
                  ori          s11, s2, -1304
                  bge          a4, s2, 598f
                  sub          sp, t2, t0
                  sltu         s4, s6, a6
                  bltu         s8, ra, 609f
598:              blt          s7, s8, 609f
                  auipc        s11, 694221
                  bne          t6, s4, 603f
                  ori          a3, a7, 396
                  srli         s8, zero, 28
603:              sll          s2, s3, t5
                  auipc        s8, 128340
                  bne          s1, s0, 625f
                  nop
                  slti         s7, t4, -382
                  slt          s5, s4, s3
609:              bne          a3, s1, 629f
                  bne          a4, s7, 616f
                  sra          s9, s11, a1
                  addi         zero, a2, 150
                  lui          s9, 330048
                  slli         gp, a4, 18
                  slli         s5, a4, 27
616:              and          t0, a5, s10
                  xor          a6, t4, t5
                  or           s3, s1, s10
                  xor          a7, s3, a2
                  xor          a4, a3, a0
                  sltiu        a1, a1, -344
                  slt          s0, s0, s6
                  lui          s0, 738604
                  slti         zero, ra, -1419
625:              sub          zero, s4, a1
                  slti         s10, s8, 629
                  beq          a1, s6, 628f
628:              or           s2, s6, tp
629:              bge          a3, s9, 648f
                  andi         s3, a7, 1359
                  or           a1, t1, a7
                  lui          t6, 270825
                  sra          s5, s11, s4
                  slli         s2, t1, 8
                  sltu         s3, a0, s5
                  nop
                  slt          gp, s9, a2
                  bltu         s8, s0, 650f
                  srai         t0, t0, 14
                  srl          s7, a6, s10
                  srl          a7, a7, sp
                  xori         t2, s10, -681
                  srl          zero, s10, s11
                  xori         s3, s8, -812
                  bne          tp, tp, 656f
                  slli         s5, sp, 1
                  andi         s3, t5, -1752
648:              srli         gp, a4, 26
                  srl          a5, s0, s9
650:              lui          a2, 429335
                  slt          t4, t1, a1
                  beq          t3, s1, 654f
                  and          ra, t5, s11
654:              bne          t6, a7, 668f
                  addi         ra, a3, -704
656:              or           a5, s0, a3
                  bltu         s6, s11, 660f
                  xori         s10, s11, 544
                  and          s4, s4, ra
660:              srl          t5, s6, s6
                  blt          s10, a2, 677f
                  blt          s5, s10, 669f
                  ori          a7, s4, 1619
                  srai         t0, a2, 15
                  slli         a1, sp, 29
                  srai         a6, t4, 23
                  andi         sp, t6, 1134
668:              srl          sp, t4, s9
669:              xor          ra, s6, t6
                  bltu         s0, gp, 689f
                  bne          a3, t0, 674f
                  slt          s3, t3, t5
                  sltiu        a0, t5, 947
674:              blt          ra, a7, 687f
                  xori         t5, s7, 1570
                  sra          a5, s3, s1
677:              addi         s10, gp, 790
                  ori          t1, t0, -1496
                  sra          s7, t5, t1
                  bne          s7, tp, 694f
                  srai         a1, a3, 6
                  bne          a3, a6, 698f
                  sub          ra, t2, t4
                  slli         s2, t5, 28
                  andi         a0, t1, 935
                  sll          s11, s2, s0
687:              slti         a3, s5, 97
                  bge          t6, sp, 696f
689:              bltu         t3, tp, 693f
                  slt          a5, t0, a5
                  xor          s3, gp, s10
                  slli         a0, sp, 0
693:              sub          t4, t6, s4
694:              bgeu         t6, s6, 701f
                  sltu         s9, a6, s3
696:              sll          s10, s9, s4
                  blt          s9, sp, 705f
698:              andi         s8, t5, 1295
                  bltu         sp, a7, 719f
                  and          s10, s6, a4
701:              srli         s2, s2, 26
                  bltu         sp, a1, 709f
                  sll          s9, gp, a5
                  srli         s7, sp, 19
705:              xor          gp, a3, gp
                  blt          a4, a5, 720f
                  and          a4, s8, t5
                  andi         s11, ra, 56
709:              sub          a5, s2, a2
                  slti         a6, s0, -1990
                  sra          s3, s4, s1
                  or           s7, t3, a6
                  bne          a0, s3, 721f
                  ori          ra, a0, 1980
                  blt          s6, a0, 725f
                  srli         a2, t3, 0
                  slti         s4, ra, -659
                  bge          s6, s3, 720f
719:              slli         t1, a7, 21
720:              sltu         s10, a1, s9
721:              bge          gp, a7, 727f
                  auipc        s11, 839295
                  bltu         s0, s6, 730f
                  srl          s3, t5, a0
725:              srli         s5, a0, 16
                  slt          gp, s0, t3
727:              blt          a1, a7, 740f
                  auipc        t5, 424651
                  sub          sp, s5, s4
730:              srl          a0, t0, ra
                  sltiu        t2, a7, -454
                  sub          a5, tp, s2
                  xori         a1, s2, -1758
                  sltu         t1, s11, a6
                  bge          t2, s3, 741f
                  nop
                  slti         s3, a0, 335
                  addi         s10, s0, 842
                  sltiu        a4, t1, 1831
740:              bltu         t5, t6, 748f
741:              add          t2, zero, t2
                  bgeu         t3, a7, 745f
                  xori         a7, t4, 1323
                  add          s8, t3, sp
745:              sll          a0, a5, ra
                  srai         a3, t4, 26
                  sltu         a0, s11, s3
748:              srai         a6, s4, 29
                  bge          t5, s2, 761f
                  srai         s7, a6, 13
                  and          sp, gp, a0
                  ori          s0, a0, -1752
                  bge          tp, a5, 760f
                  srli         s9, s9, 31
                  nop
                  sra          a6, a5, t3
                  ori          s10, t5, -852
                  bgeu         t4, t1, 778f
                  sltu         s9, gp, s4
760:              slli         t2, t3, 20
761:              bne          s3, s8, 762f
762:              bge          t3, s5, 778f
                  slt          s10, tp, s9
                  or           s3, s2, sp
                  bge          a6, sp, 779f
                  slt          s10, s0, s6
                  andi         s4, tp, -1268
                  add          t5, a4, tp
                  bne          a5, a3, 777f
                  or           s4, a3, s10
                  add          sp, ra, zero
                  sltu         s5, a1, gp
                  sltu         s0, a5, t1
                  add          s4, t3, a2
                  nop
                  bne          s10, a4, 778f
777:              and          s7, t6, sp
778:              sltiu        a4, t1, -1029
779:              slti         s11, s5, 1970
                  slli         a3, a5, 14
                  bgeu         a4, s9, 795f
                  nop
                  srai         s5, s0, 4
                  srli         s2, s2, 7
                  slt          a1, tp, a5
                  and          s4, tp, a5
                  and          t0, t5, s9
                  slt          s4, t5, gp
                  beq          s7, s3, 809f
                  andi         a6, a2, -1956
                  beq          s1, s9, 794f
                  and          a5, s0, a2
                  sub          t2, t5, t3
794:              bgeu         ra, gp, 808f
795:              add          s0, zero, t6
                  slti         ra, s5, -1534
                  srai         s1, a7, 24
                  sub          a6, sp, a7
                  sltiu        s8, s10, -1043
                  sltiu        t0, a6, 1362
                  srli         s4, t2, 19
                  sra          a3, s8, s11
                  bge          s4, s6, 813f
                  bltu         s5, s2, 820f
                  beq          s7, s3, 816f
                  sltu         t1, t4, s7
                  sub          zero, t4, s5
808:              slti         s2, s2, -685
809:              add          s2, s6, a1
                  sltu         ra, gp, s4
                  nop
                  slti         a4, s3, 378
813:              andi         s10, ra, 144
                  blt          a1, s0, 833f
                  bltu         s6, a2, 826f
816:              xori         a7, a7, 1810
                  ori          s1, a0, 348
                  srai         a3, sp, 11
                  add          s7, a0, zero
820:              or           t0, t4, tp
                  bgeu         t2, s11, 827f
                  slt          gp, s4, s7
                  addi         a3, s0, 1229
                  ori          a5, s2, 458
                  xor          s9, t3, a5
826:              auipc        a2, 1026893
827:              srli         gp, a6, 11
                  auipc        s9, 157038
                  and          zero, s0, s2
                  sra          s0, t6, s10
                  slti         t0, t3, 1159
                  srai         ra, ra, 21
833:              beq          s5, s4, 837f
                  sltu         a5, s11, gp
                  sub          a1, s8, t0
                  or           s4, gp, s5
837:              addi         ra, s5, -699
                  beq          a3, t6, 840f
                  or           a3, a7, s7
840:              slt          gp, s1, s10
                  slt          gp, sp, a2
                  blt          tp, t1, 862f
                  lui          a1, 740083
                  andi         s0, a1, -858
                  blt          s3, s0, 848f
                  slt          gp, a0, s9
                  sltu         a7, a5, t4
848:              srli         a5, tp, 24
                  srli         s3, t6, 6
                  and          t0, s0, a1
                  sra          t6, s11, s11
                  auipc        s7, 919025
                  lui          a5, 568241
                  ori          gp, s4, 485
                  slt          t2, s4, zero
                  bgeu         s9, a0, 863f
                  bne          a1, a2, 876f
                  or           a6, ra, s8
                  sltu         s3, sp, t1
                  sll          t5, s5, t1
                  sra          s11, ra, s2
862:              bgeu         a5, s11, 870f
863:              sltiu        zero, zero, -289
                  slt          a3, a6, s5
                  xori         t6, t2, 483
                  slt          t4, s6, s3
                  nop
                  bgeu         t3, s8, 869f
869:              xori         t6, s8, 303
870:              sltiu        ra, a2, -226
                  bgeu         s9, a7, 881f
                  andi         a1, s5, -1979
                  lui          t1, 986398
                  sll          s9, s5, s1
                  bge          t2, s9, 895f
876:              auipc        gp, 183349
                  nop
                  sltu         s5, a7, zero
                  bltu         a0, a1, 886f
                  sll          ra, a2, s9
881:              srli         s5, ra, 30
                  sra          s8, a6, a7
                  slt          sp, s0, t3
                  or           s1, s3, a1
                  or           s2, s0, zero
886:              slli         s11, a4, 18
                  add          sp, s0, a1
                  sltiu        s1, s4, 570
                  bge          t1, s4, 897f
                  nop
                  andi         s2, a6, -503
                  sll          s11, a6, a4
                  sll          a3, t3, t3
                  srai         s11, ra, 26
895:              bgeu         s1, s2, 909f
                  addi         s11, a6, -421
897:              bgeu         s4, t1, 899f
                  srli         s1, t1, 19
899:              or           t1, a7, t5
                  srl          s4, a3, s11
                  ori          t1, a5, -1207
                  or           s5, t3, t4
                  srli         s1, s10, 16
                  addi         s10, t2, -181
                  sra          a5, a5, s2
                  addi         s11, a3, -1526
                  slt          t2, t2, s10
                  srai         t6, s8, 20
909:              auipc        t2, 745729
                  bgeu         s1, s7, 913f
                  ori          a0, s3, -1701
                  lui          s9, 939761
913:              sltiu        t4, s5, -568
                  sltiu        a6, t4, 773
                  srli         sp, a2, 16
                  srai         zero, ra, 15
                  addi         a7, ra, -17
                  ori          sp, sp, 1476
                  andi         a2, a4, -429
                  xori         t2, a5, -234
                  slti         a3, s9, 2039
                  bltu         a0, s5, 936f
                  nop
                  bge          s10, a1, 927f
                  xori         a1, a5, 257
                  bgeu         ra, s0, 929f
927:              srli         t4, a6, 25
                  add          s3, s0, s8
929:              sltiu        a6, t2, -910
                  auipc        s1, 624860
                  slt          t2, zero, s10
                  slti         a1, s6, 333
                  add          ra, s1, t2
                  xori         ra, s3, 1316
                  sltu         a3, t2, s0
936:              bge          s4, s8, 944f
                  sltiu        t0, t1, -783
                  or           s7, t2, s11
                  slt          a2, a1, a6
                  beq          a2, zero, 960f
                  blt          s3, s0, 960f
                  srli         gp, a5, 28
                  and          t4, zero, sp
944:              sltu         sp, s7, ra
                  srl          a6, t6, a5
                  add          t2, s1, s11
                  beq          s6, s6, 954f
                  sltu         a6, s2, t2
                  srli         s8, s6, 25
                  sub          a5, a0, s7
                  sltiu        gp, tp, 1468
                  lui          a1, 37792
                  slli         a7, t5, 17
954:              sra          a0, s0, s1
                  and          s10, s6, a7
                  bltu         s2, s8, 970f
                  srli         a6, t5, 13
                  ori          a2, a6, -1191
                  auipc        s3, 693957
960:              sltiu        t0, a0, 587
                  add          ra, a2, s2
                  nop
                  addi         ra, t4, 2016
                  slt          s3, s2, s0
                  auipc        t2, 872521
                  bne          t6, s10, 979f
                  auipc        s8, 720841
                  sll          a5, sp, s0
                  srai         t5, s6, 27
970:              blt          s0, t0, 976f
                  bne          t6, t4, 975f
                  or           t0, s10, t1
                  ori          a0, a4, -1837
                  and          s10, a6, s0
975:              lui          s8, 161196
976:              bne          s0, s7, 978f
                  srli         t6, a2, 4
978:              blt          s1, a4, 989f
979:              bge          t3, s11, 998f
                  ori          s10, a1, 226
                  auipc        s0, 772515
                  sra          s1, a7, a3
                  nop
                  xori         s0, sp, -2018
                  slti         gp, s4, 1441
                  lui          sp, 69232
                  bge          s5, s3, 995f
                  sltu         s0, s0, a6
989:              blt          a0, t6, 995f
                  addi         s11, s11, -1748
                  bltu         s8, s0, 1007f
                  xori         s5, a3, -503
                  slt          s2, a1, t3
                  bge          s11, a5, 1001f
995:              srai         s5, s9, 3
                  lui          s7, 248824
                  bne          s9, s3, 1008f
998:              lui          t1, 150636
                  ori          a6, s11, 663
                  bge          t0, sp, 1012f
1001:             sll          s7, s5, t1
                  beq          t4, a6, 1022f
                  bge          ra, t0, 1019f
                  slti         s8, zero, -1091
                  addi         t2, a5, -1491
                  srl          t0, ra, zero
1007:             add          a0, t2, ra
1008:             blt          s2, s0, 1022f
                  srli         a3, t6, 1
                  addi         a0, a0, 1216
                  or           s7, t5, s11
1012:             srli         a0, ra, 0
                  bne          t3, a6, 1026f
                  sltu         t0, s2, s7
                  bge          a6, a3, 1023f
                  srai         s0, s11, 0
                  beq          a1, a6, 1037f
                  srl          a0, t4, s2
1019:             srl          ra, tp, ra
                  bne          zero, a3, 1022f
                  or           gp, zero, a0
1022:             sll          s7, sp, a6
1023:             sltu         s2, tp, t6
                  bne          t5, s6, 1032f
                  ori          a7, t4, 1317
1026:             add          s1, t1, t2
                  sra          a2, a0, s4
                  ori          s3, s11, -424
                  bne          a6, s11, 1048f
                  sltiu        a6, t5, -300
                  nop
1032:             slti         t5, a1, 1092
                  bne          t0, s0, 1037f
                  add          t1, s5, t2
                  ori          s1, s5, -849
                  bge          s2, a0, 1042f
1037:             srli         gp, s0, 30
                  srai         t4, s10, 25
                  sra          a4, t5, s11
                  xori         s9, a3, 623
                  sub          gp, a3, ra
1042:             sub          s1, a1, a7
                  srl          a3, s0, gp
                  and          s8, s7, s9
                  slt          s7, t4, s5
                  auipc        t2, 574670
                  srl          a0, a0, s1
1048:             auipc        s0, 317979
                  beq          a7, s6, 1052f
                  srli         s1, t0, 9
                  xori         s5, s5, 993
1052:             addi         a2, a4, -1488
                  bltu         t3, s0, 1064f
                  bltu         t2, a0, 1057f
                  addi         s11, sp, 420
                  sll          s11, a4, t6
1057:             xor          s1, zero, tp
                  beq          sp, s5, 1074f
                  sltiu        gp, t0, -1117
                  lui          zero, 272065
                  add          t4, gp, t6
                  bltu         s0, s5, 1068f
                  and          a4, a4, a2
1064:             srai         s9, t3, 15
                  sub          ra, a6, gp
                  slti         s11, a3, 794
                  slti         a0, s2, -361
1068:             auipc        a0, 1005901
                  bge          a1, t0, 1081f
                  auipc        t1, 715347
                  sub          a4, a2, s2
                  sll          a5, a5, a2
                  sll          a2, s0, t2
1074:             ori          t6, t0, 468
                  blt          s10, a1, 1089f
                  bge          t2, t1, 1083f
                  bgeu         t1, s6, 1085f
                  ori          t2, a4, -542
                  sltiu        a0, t0, -1586
                  srl          gp, t2, ra
1081:             add          zero, t2, s9
                  srl          zero, s11, s6
1083:             bgeu         s6, a4, 1090f
                  ori          s7, s3, -155
1085:             nop
                  blt          s6, s11, 1088f
                  bgeu         zero, a7, 1107f
1088:             srli         s11, s9, 11
1089:             bge          s4, a2, 1100f
1090:             beq          a1, a4, 1093f
                  sra          s4, a5, a6
                  sra          s0, s8, ra
1093:             srai         s7, s1, 6
                  srli         s8, t4, 11
                  sltu         s7, s9, tp
                  bgeu         t5, s1, 1112f
                  nop
                  auipc        s2, 1036554
                  nop
1100:             sll          t2, s8, s3
                  slli         s10, s5, 10
                  sll          s11, a7, a2
                  sub          s4, tp, t3
                  xori         a0, s7, 703
                  slt          s10, a4, gp
                  nop
1107:             srai         t1, t6, 0
                  sltu         s9, a1, t5
                  bltu         sp, s8, 1119f
                  slli         a1, t2, 16
                  sub          s1, s6, gp
1112:             lui          s7, 1024870
                  sltiu        zero, s0, 353
                  srai         s2, a1, 4
                  add          s3, s2, s4
                  addi         ra, a1, 276
                  bge          ra, a0, 1136f
                  and          a1, s2, s7
1119:             xor          a4, t0, a0
                  srli         s10, s7, 19
                  srai         t2, s2, 1
                  xori         t2, a4, -1923
                  bge          s11, a7, 1124f
1124:             sltu         s4, t6, t2
                  add          sp, a0, t3
                  srl          s5, zero, a2
                  sra          a1, a7, s9
                  bgeu         a6, s1, 1148f
                  lui          s7, 666151
                  addi         s1, gp, 2030
                  add          zero, s3, s4
                  slti         a3, zero, 829
                  bgeu         t1, a4, 1140f
                  srai         t4, t5, 14
                  ori          t1, s3, 727
1136:             sll          sp, s3, t2
                  andi         t1, a4, 383
                  sltiu        a1, a5, 1051
                  slli         a6, t3, 27
1140:             ori          a0, s11, 1299
                  lui          t4, 53785
                  blt          s2, a6, 1156f
                  auipc        t2, 354692
                  xori         s11, s11, -1517
                  bne          t0, s7, 1156f
                  sltiu        gp, t4, 947
                  xor          t0, a1, t4
1148:             sll          t4, a4, s8
                  sll          s2, t4, s4
                  or           t6, a1, a0
                  lui          a1, 1006606
                  srli         zero, s10, 10
                  xor          s3, t5, sp
                  slli         zero, s10, 10
                  bne          s7, gp, 1162f
1156:             nop
                  xor          a2, s4, t4
                  beq          t6, s4, 1178f
                  ori          a0, t0, -825
                  bgeu         t6, a3, 1163f
                  beq          a0, s4, 1163f
1162:             ori          a1, a5, 245
1163:             and          a3, s4, s1
                  srai         sp, s6, 13
                  slli         a3, s4, 21
                  slti         zero, s1, -916
                  auipc        s9, 138607
                  sltu         s9, gp, zero
                  or           s7, s10, t0
                  andi         a2, s6, 399
                  bge          a4, ra, 1178f
                  sll          a2, t3, s5
                  sltiu        gp, s10, 632
                  bne          s10, s10, 1186f
                  bltu         a7, t0, 1176f
1176:             beq          ra, gp, 1195f
                  auipc        s2, 620740
1178:             bltu         s10, t2, 1185f
                  sub          a6, s7, a1
                  slt          a7, s8, a7
                  bge          s2, gp, 1185f
                  bltu         s2, t3, 1196f
                  addi         s2, s5, 646
                  bne          s1, ra, 1198f
1185:             and          a4, s5, a0
1186:             beq          s5, ra, 1194f
                  auipc        s5, 435250
                  slti         gp, t6, -2003
                  or           ra, gp, t1
                  beq          s10, tp, 1206f
                  and          ra, zero, s1
                  xori         a2, zero, 1374
                  xori         gp, a3, 1484
1194:             srli         a1, a0, 14
1195:             bne          a1, a0, 1201f
1196:             sub          s2, a6, ra
                  addi         s2, s9, -1082
1198:             slli         s0, a6, 8
                  slti         a0, a0, -285
                  srl          a7, tp, s6
1201:             slt          t4, a4, a6
                  bltu         a4, a7, 1214f
                  slli         a7, zero, 9
                  bge          t5, a7, 1214f
                  auipc        t0, 558146
1206:             lui          t4, 726565
                  add          t2, t4, t4
                  beq          s3, a1, 1214f
                  addi         gp, s7, -920
                  srli         a2, t5, 4
                  sra          a7, s8, t2
                  srai         t1, s9, 30
                  sub          s8, a5, a3
1214:             srli         t5, a4, 10
                  lw           t5, 4(s6)
                  sltu         s5, a2, s1
                  addi         s4, s10, 651
                  addi         a5, s10, -91
                  ori          zero, a2, 1806
                  sra          s3, s2, s8
                  addi         s6, s6, 52
                  or           t6, a0, a1
                  nop
1628:             addi x7, x30, 0
1628:             jalr x7, x7, 0
sub_4:            addi         a1, s2, -243
                  ori          s5, s4, -667
                  addi         s6, s6, -20
                  add          s0, s0, s5
                  slt          a2, s10, s3
                  srli         s11, s3, 31
                  slli         s2, t3, 14
                  sra          a0, s5, s3
                  sw           t5, 4(s6)
                  addi         a3, s4, -1910
                  slti         s11, t4, 1851
                  sll          s9, s1, t4
                  la           t5, sub_6
                  nop
                  addi         t5, t5, 282
                  srai         s3, t2, 13
                  or           a2, t1, sp
                  slli         t1, s9, 11
                  lui          s10, 400110
sub_4_j7:         jalr         t5, t5, -281 #jump sub_4 -> sub_6
                  or           gp, s0, t0
                  srai         a3, s0, 16
                  sltiu        t2, t2, 1194
                  addi         a1, s9, 1671
                  slt          a1, a0, s10
                  addi         sp, a0, -1731
                  xor          a1, s8, s0
                  andi         a5, s4, -1227
                  nop
                  add          a4, t3, s9
                  auipc        gp, 65418
                  sra          a7, a7, sp
                  addi         s5, a5, 747
                  sub          ra, a3, t4
                  sub          t1, t6, s5
                  srai         a5, a6, 14
                  slli         a5, s7, 24
                  lw           t5, 4(s6)
                  auipc        t4, 8831
                  addi         s6, s6, 20
                  nop
41:               addi x19, x30, 0
41:               jalr x19, x19, 0
sub_10:           srai         t4, t6, 7
                  auipc        a1, 48666
                  sub          a3, s8, s5
                  xor          zero, t3, a1
                  bne          s5, s2, sub_10_stack_p
                  addi         s8, s5, -660
                  srai         a1, s6, 29
sub_10_stack_p:   addi         s6, s6, -24
                  and          a4, s2, t1
                  sw           t5, 4(s6)
                  nop
                  auipc        t4, 866150
                  slti         s2, t0, 848
                  beq          t3, a6, 3f
                  nop
3:                sll          t5, a4, ra
                  add          a3, s8, s9
                  bgeu         ra, t5, 10f
                  srl          s8, t4, tp
                  srai         a2, a6, 6
                  bge          a6, s6, 10f
                  beq          s9, a4, 10f
10:               sltu         s8, s3, a1
                  lw           t5, 4(s6)
                  srai         s2, s10, 26
                  lui          t1, 166555
                  slt          ra, s0, a4
                  slti         a1, s3, 73
                  addi         s6, s6, 24
                  ori          gp, s10, 732
                  or           a6, sp, s9
                  sub          s10, s4, t2
                  add          a6, a7, s9
                  nop
34:               addi x9, x30, 1
34:               jalr x9, x9, 0
sub_3:            bge          a6, s8, sub_3_stack_p
                  addi         a1, a2, -1519
                  sub          s1, zero, t3
                  addi         s2, s10, 1668
sub_3_stack_p:    addi         s6, s6, -48
                  slt          s2, s2, a2
                  and          s4, s8, s5
                  slli         s8, t2, 15
                  sra          a5, t6, s4
                  sw           t5, 4(s6)
                  andi         s5, t2, -211
                  ori          s9, s10, -1798
                  la           a7, sub_4
                  slli         a1, s7, 27
                  nop
                  or           t5, s4, gp
                  auipc        a3, 612810
                  add          a1, ra, a4
                  and          a4, a1, t1
                  andi         sp, t0, 208
                  addi         a7, a7, -71
                  nop
                  xor          t6, t2, a4
sub_3_j4:         jalr         t5, a7, 72 #jump sub_3 -> sub_4
                  slt          s8, sp, a4
                  ori          a7, t2, -1126
                  srl          s9, t1, s1
                  srl          s9, t1, a6
                  sra          a2, a5, s8
                  slti         t0, s6, 426
sub_3_j5:         jal          t5, sub_5 #jump sub_3 -> sub_5
                  la           t6, sub_5
                  sltiu        s10, a3, 1646
                  addi         t6, t6, 990
                  xori         ra, s5, -360
                  sra          s0, s2, t4
                  lui          s11, 553051
                  srai         a3, a1, 18
sub_3_j6:         jalr         t5, t6, -990 #jump sub_3 -> sub_5
                  add          sp, t3, s5
                  and          s9, ra, s8
                  xor          s0, a3, t2
                  xor          a0, t5, zero
                  slti         s5, a3, 1045
                  xor          t0, t6, a3
                  add          t5, s3, zero
                  slli         ra, s9, 6
                  ori          t1, t4, 863
                  ori          a7, s11, -427
                  nop
                  sltu         t6, s6, ra
                  srl          a0, s11, t6
                  slt          zero, a0, s8
                  sra          s4, a2, a5
                  xori         t2, s11, 1466
                  ori          sp, s8, 1668
                  sltu         s7, s9, a5
                  nop
                  sll          s7, a0, a2
                  bgeu         a3, t5, 22f
                  add          zero, t3, a2
22:               srli         s2, zero, 18
                  slli         s8, a5, 23
                  sltu         a5, zero, gp
                  xori         a3, sp, -353
                  beq          s2, t4, 29f
                  xor          s2, tp, a0
                  sll          t1, s10, s3
29:               sra          gp, s5, a1
                  srai         s0, s10, 22
                  lw           t5, 4(s6)
                  srl          s0, zero, t0
                  sltu         sp, s11, a3
                  addi         s6, s6, 48
                  ori          gp, a4, 430
                  nop
                  andi         s3, s9, 1519
                  xor          s0, a1, t0
78:               addi x10, x30, 1
78:               jalr x10, x10, 0
sub_7:            sltu         s9, gp, a0
                  auipc        a4, 342653
                  addi         s6, s6, -28
                  srl          s3, s7, t1
                  sw           t5, 4(s6)
                  slti         s5, s8, 1552
                  la           sp, region_1+711 #start riscv_load_store_rand_instr_stream_1
                  lb           s5, -26(sp)
                  lw           s10, -63(sp)
                  sub          a0, a4, t3
                  auipc        a7, 476733
                  lb           t5, -64(sp)
                  and          s10, s0, s1
                  lbu          a7, -26(sp)
                  xori         s9, t1, 1223
                  add          t2, a2, s3
                  lb           a0, -38(sp)
                  ori          t4, ra, 1228
                  ori          a1, tp, -1926
                  lbu          t2, 62(sp)
                  sub          a5, t1, t5
                  lb           s0, 30(sp)
                  lh           a6, 63(sp)
                  and          zero, tp, s9
                  lui          t2, 307378
                  lbu          s11, -41(sp)
                  lb           a5, -10(sp) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_0+1141 #start riscv_load_store_rand_instr_stream_3
                  andi         a5, s6, -19
                  slti         a4, t5, -1055
                  sltu         s2, a5, ra
                  ori          a6, ra, -1361
                  lb           t4, -229(ra)
                  sb           s4, -12(ra)
                  sra          s10, s11, t2
                  lh           s8, 241(ra)
                  lb           s2, -2(ra)
                  addi         sp, a3, -1104
                  ori          s1, s2, 1729
                  lw           a1, -233(ra)
                  slli         a5, zero, 21
                  sra          s1, a7, t0
                  lbu          s2, 83(ra)
                  sltu         s7, gp, t1
                  andi         t2, a5, 1853
                  or           s2, s9, gp
                  lbu          a1, -94(ra)
                  lbu          s8, -164(ra)
                  andi         s10, t1, -2002
                  sb           t6, 152(ra)
                  andi         s4, s0, 1488
                  sltiu        t4, s1, -1000
                  xor          s10, s9, a0
                  lb           a2, 44(ra)
                  lbu          t6, 150(ra)
                  srl          t4, s1, s0
                  slli         zero, t5, 19
                  sb           a0, 171(ra)
                  lb           s3, 52(ra) #end riscv_load_store_rand_instr_stream_3
                  la           s0, region_0+223 #start riscv_load_store_rand_instr_stream_2
                  sra          a1, sp, tp
                  or           s9, t3, s5
                  or           s8, zero, s9
                  lb           a2, -40(s0)
                  lui          s4, 523624
                  lbu          t1, 58(s0)
                  lhu          a5, -33(s0)
                  nop
                  sh           a3, 49(s0)
                  sltiu        a2, s5, 1001
                  sra          t4, t4, t2
                  andi         zero, s9, 391
                  lhu          gp, -33(s0)
                  sltiu        s4, s4, 1573
                  lb           s7, -20(s0)
                  add          sp, a1, t5
                  lb           ra, 5(s0)
                  sltiu        a7, s10, 724
                  slli         t5, a1, 24
                  sltiu        t1, t1, 1679
                  lhu          s1, 37(s0)
                  sb           t5, -20(s0)
                  sb           a7, -61(s0)
                  sh           s11, -15(s0)
                  lb           s1, -43(s0)
                  sltu         a3, s10, t6
                  lb           t5, -31(s0)
                  xor          a2, s6, t4
                  srli         a6, s7, 4
                  and          t4, a0, a7
                  lb           a2, -30(s0)
                  sra          a7, sp, s6
                  sh           sp, -39(s0)
                  sw           a4, -43(s0)
                  or           s8, gp, a2
                  slli         s9, s6, 5
                  add          s5, a1, s1
                  sltu         t4, t4, t0
                  nop
                  sub          a2, a1, s2
                  lb           t1, 37(s0)
                  add          t6, sp, t0
                  sltu         t6, s9, s11
                  srli         a6, gp, 4
                  slti         s5, tp, 1995
                  sb           t3, -8(s0) #end riscv_load_store_rand_instr_stream_2
                  sltiu        s1, s10, -91
                  slti         ra, t4, -639
                  sltu         gp, s10, tp
                  xor          a4, t5, t2
                  slti         zero, t2, 523
                  ori          gp, a0, 1270
                  srli         a2, t3, 25
                  bge          s8, a3, 8f
8:                beq          t5, gp, 10f
                  sll          a0, t3, t0
10:               bge          a5, t2, 13f
                  bltu         ra, a0, 17f
                  sra          s2, a6, s5
13:               bltu         s4, s3, 19f
                  bgeu         a0, a0, 24f
                  or           a1, a1, a1
                  sra          a4, s11, t0
17:               bne          t3, t2, 31f
                  bge          t1, a1, 23f
19:               beq          a4, t6, 33f
                  srl          t6, s8, a7
                  sra          a7, t4, gp
                  xori         s8, a0, 1150
23:               ori          s5, a5, 959
24:               andi         s10, s9, 2033
                  sub          t4, s9, t5
                  auipc        t4, 631746
                  slti         s1, t1, -1603
                  xori         t1, s4, 2019
                  slti         t4, s1, 412
                  slli         t6, a2, 25
31:               srli         a1, ra, 15
                  addi         a2, s11, -1796
33:               srli         a3, t2, 2
                  srl          a4, t6, t0
                  slti         s2, gp, -52
                  bne          t4, gp, 47f
                  sltiu        s9, s11, 1977
                  beq          s1, s5, 45f
                  slt          gp, s1, s11
                  beq          s6, s2, 48f
                  add          a4, s2, s4
                  bltu         a1, t3, 46f
                  nop
                  slt          t5, a7, t1
45:               blt          s2, s10, 58f
46:               addi         ra, gp, -260
47:               bge          s0, s8, 65f
48:               bgeu         a7, s4, 54f
                  auipc        t0, 660401
                  sub          a1, s9, s7
                  xori         t1, s9, 513
                  or           s4, t0, a2
                  lui          t5, 524314
54:               nop
                  sll          ra, a6, s4
                  bgeu         gp, sp, 61f
                  and          ra, s1, s8
58:               sltu         a4, s8, t4
                  and          s3, s10, a7
                  xor          s11, s11, s6
61:               andi         a3, s10, -370
                  sra          s9, s9, s0
                  srli         a3, s5, 11
                  xor          s5, s11, s5
                  bne          s1, zero, sub_7_j12 #branch to jump instr
                  srl          t0, s8, s2
                  sltu         s5, s2, t2
                  andi         a4, s5, 190
                  xor          a7, s8, a0
                  auipc        s3, 744034
                  srli         s1, s1, 7
sub_7_j12:        jal          t5, sub_8 #jump sub_7 -> sub_8
                  addi         s2, t1, 1087
                  add          s3, a3, s6
65:               bgeu         s0, s0, 79f
                  srli         t2, t6, 9
                  srli         gp, a2, 1
                  ori          a2, zero, -1992
                  addi         s3, s10, 471
                  beq          t1, zero, 90f
                  nop
                  bltu         t1, a1, 86f
                  bne          ra, sp, 76f
                  sll          a5, s11, s9
                  beq          a0, t4, 95f
76:               slt          a3, ra, s2
                  bne          a7, s6, 78f
78:               slli         s5, s10, 24
79:               or           gp, ra, s11
                  sltiu        ra, a3, -1003
                  xori         s9, a2, 1616
                  bge          a7, s4, 97f
                  bgeu         t4, t5, 93f
                  srl          t5, a7, ra
                  sra          a4, s2, a5
86:               sltiu        s8, a0, 1436
                  slli         s9, t2, 23
                  sra          zero, s9, s4
                  lui          t1, 417429
90:               slt          gp, a4, a0
                  lui          a7, 373465
                  slti         a3, a7, -893
93:               slt          t6, t5, t6
                  or           a2, s3, s6
95:               srai         a1, s9, 5
                  srai         zero, s6, 13
97:               or           a4, sp, gp
                  sltiu        a7, s10, -453
                  slli         a6, t1, 27
                  bgeu         s1, s1, 112f
                  andi         t2, a2, 1578
                  slt          s9, t1, t2
                  srl          a5, a4, s3
                  xor          a7, s3, s6
                  auipc        a3, 738376
                  or           s9, s2, a7
                  beq          t2, t2, 110f
                  lui          s11, 224340
                  xor          s10, t5, t5
110:              blt          s7, gp, 128f
                  srl          s0, s11, s2
112:              slt          s7, a3, s0
                  beq          s11, a1, 128f
                  add          t2, a2, t5
                  andi         s0, s4, 1460
                  nop
                  srai         a3, t0, 4
                  bltu         s4, a7, 124f
                  addi         s3, s5, -200
                  blt          ra, a5, 123f
                  and          t1, s8, s5
                  bne          t4, gp, 128f
123:              bltu         zero, sp, 141f
124:              xor          s8, t3, s6
                  or           s5, t0, zero
                  srai         ra, a6, 27
                  xori         s3, sp, 1199
128:              sltiu        a5, a6, -743
                  sra          a4, s2, t6
                  ori          s11, t1, -1595
                  sltu         s10, a1, ra
                  srli         zero, tp, 14
                  blt          s7, s8, 134f
134:              slt          a6, t4, a4
                  bne          a1, t1, 143f
                  andi         gp, t4, -1686
                  sltiu        zero, t2, 1850
                  bltu         a7, s6, 144f
                  add          a2, t4, s10
                  bltu         zero, t0, 155f
141:              bge          a2, tp, 155f
                  nop
143:              bgeu         s10, s6, 147f
144:              and          t6, s0, t3
                  or           s0, a2, a4
                  srli         t5, s1, 0
147:              sltiu        s7, s3, -958
                  nop
                  sub          t6, s8, s4
                  xor          s1, t2, a5
                  slli         s4, a1, 8
                  auipc        sp, 27322
                  lui          s3, 210675
                  blt          gp, a1, 164f
155:              and          s0, a6, t2
                  xori         a5, t1, -460
                  sll          s3, a1, sp
                  add          s11, a6, a4
                  slt          a6, t1, a5
                  or           a7, a0, t0
                  sltu         t6, t0, a0
                  beq          s7, s10, 169f
                  bltu         s8, s1, 166f
164:              andi         t1, a7, -1148
                  sll          s7, a6, s7
166:              addi         a1, s2, 710
                  sra          a5, sp, s8
                  xori         t6, s10, 1700
169:              lui          a4, 135806
                  sra          a1, s7, t3
                  bltu         t6, s8, 176f
                  sra          s8, zero, s5
                  lui          t2, 589884
                  bne          t5, zero, 177f
                  bgeu         sp, s3, 193f
176:              bgeu         s10, tp, 188f
177:              slt          s3, sp, a1
                  lui          t1, 324213
                  srli         s3, t5, 27
                  srl          a5, s0, t3
                  srai         s11, s3, 14
                  slti         s4, t5, 1466
                  ori          ra, gp, 744
                  slt          ra, a7, t5
                  bgeu         s5, s10, 191f
                  bltu         s9, a3, 191f
                  add          gp, s8, s9
188:              sra          s1, s0, s5
                  bgeu         s11, a1, 200f
                  add          a6, a5, s3
191:              and          a5, s5, a3
                  srai         s0, s11, 27
193:              beq          s2, s8, 208f
                  sra          s9, zero, s0
                  lui          s8, 853699
                  ori          s5, s7, 1236
                  lui          t5, 275950
                  slti         s8, s7, 1816
                  sll          sp, s1, s4
200:              nop
                  bltu         sp, s11, 203f
                  la           s2, sub_9
                  slt          s3, a4, s8
                  addi         s2, s2, 407
                  srl          s4, a5, t3
                  auipc        t4, 995999
                  srli         a0, t6, 13
                  bne          s7, s1, sub_7_j11 #branch to jump instr
                  andi         s0, zero, -754
                  sltiu        t1, t2, 1053
                  srl          s4, a6, a6
sub_7_j11:        jalr         t5, s2, -407 #jump sub_7 -> sub_9
                  nop
203:              and          s10, tp, s8
                  auipc        sp, 468994
                  slt          a0, t0, a7
                  nop
                  ori          s0, a0, 271
208:              bltu         gp, a0, 228f
                  bne          a0, s10, 210f
210:              and          a5, a0, t5
                  bgeu         t4, t6, 231f
                  sll          sp, zero, a2
                  slt          t2, s9, s4
                  slt          a4, s4, t1
                  or           a4, zero, s3
                  lui          a6, 411003
                  andi         s10, s10, 1369
                  addi         t0, t0, -723
                  andi         ra, t4, -1974
                  and          a5, t5, s4
                  addi         s5, s5, -67
                  slt          a6, a2, a1
                  srl          a3, sp, a1
                  auipc        s11, 812665
                  xori         t1, s7, 1540
                  auipc        ra, 665433
                  nop
228:              sub          a3, t1, s6
                  addi         s1, s7, -753
                  xor          ra, s0, ra
231:              srai         a2, t4, 28
                  sltiu        t6, s11, -1914
                  bne          t1, s10, 247f
                  lui          sp, 362771
                  xor          s0, s8, t2
                  lui          t6, 967455
                  nop
                  nop
                  sub          s8, t3, ra
                  or           t6, s3, s4
                  srli         s9, t6, 2
                  bge          a6, s9, 248f
                  bltu         a1, a3, 257f
                  auipc        a6, 209279
                  srai         ra, t1, 17
                  auipc        s8, 123987
247:              sub          s11, s5, a2
248:              sub          a6, s1, t2
                  or           s1, s0, tp
                  srli         a3, t4, 30
                  nop
                  sra          t0, s4, ra
                  blt          t5, a5, 267f
                  and          s7, t3, s1
                  add          t4, sp, a3
                  srl          s5, tp, gp
257:              or           t0, a7, s1
                  andi         t2, t0, 1020
                  sra          s1, t2, s9
                  sra          s9, zero, a7
                  beq          ra, s4, 274f
                  sltiu        s9, t5, 833
                  srl          a5, s0, a0
                  or           s11, s7, gp
                  bge          t6, a6, 275f
                  slti         a7, s10, -1403
267:              lui          a0, 562168
                  bltu         s6, a4, 275f
                  slli         a5, t3, 10
                  lui          s3, 990846
                  slt          s11, ra, a1
                  bltu         a4, a3, 292f
                  auipc        s10, 179129
274:              andi         a5, ra, -285
275:              beq          s2, s11, 281f
                  srl          t0, a1, a5
                  ori          s7, t2, 333
                  andi         a4, a2, 1875
                  andi         s7, tp, -1795
                  sll          ra, s11, a0
281:              slt          zero, t2, a4
                  blt          s7, t0, 300f
                  bne          zero, a6, 298f
                  add          s7, t1, a4
                  srai         a0, ra, 12
                  bge          a5, a1, 292f
                  slt          a6, t6, t1
                  sub          s10, s9, ra
                  beq          a4, s5, 299f
                  sltu         a0, s11, s11
                  slli         t4, a5, 21
292:              ori          s9, a7, -1998
                  lui          t6, 353284
                  ori          a0, s0, -1936
                  auipc        zero, 583334
                  xor          t4, a0, tp
                  blt          a4, a3, 317f
298:              or           sp, t6, s8
299:              addi         s5, s10, 858
300:              bgeu         s8, ra, 313f
                  bne          s9, t6, 304f
                  bge          t6, a0, 312f
                  and          a7, s6, a2
304:              slli         gp, s9, 16
                  srl          t0, s3, a2
                  beq          t3, a4, 317f
                  sltiu        s10, s1, -1991
                  xor          s5, t2, sp
                  xor          s0, s2, a3
                  lui          zero, 701122
                  srai         s9, ra, 9
312:              add          a3, s3, s3
313:              sltiu        t0, a1, 1873
                  sll          ra, s8, s0
                  srli         t0, s1, 21
                  add          s5, t3, t0
317:              slti         s10, a0, -1818
                  add          t1, s11, a6
                  xor          s5, t6, sp
                  sltu         s5, ra, s11
                  sll          t4, s4, s8
                  sra          a1, a4, ra
                  beq          s2, a6, 326f
                  or           a2, t2, zero
                  auipc        a2, 461397
326:              srli         a1, s6, 3
                  sltiu        s4, s1, 1227
                  slt          s3, a3, s5
                  sltiu        a6, a5, -758
                  beq          s8, t6, 344f
                  slt          s2, zero, a6
                  bltu         s8, t1, 336f
                  srli         a1, s6, 13
                  sub          t0, a6, t4
                  bge          t1, t6, 349f
336:              slt          s7, s9, ra
                  sltu         a3, t3, s11
                  blt          s6, t6, 339f
339:              add          ra, a0, s9
                  sltiu        ra, s1, -258
                  slli         a7, tp, 25
                  slti         sp, t1, -757
                  bne          t3, a6, 348f
344:              addi         a3, t4, 799
                  srl          t0, t5, ra
                  srai         t1, t5, 19
                  lui          s0, 58305
348:              beq          a2, a3, 349f
349:              andi         a3, s4, 951
                  xori         t0, t4, 1306
                  sltu         t1, s11, a6
                  srli         s2, a0, 6
                  srli         s11, a7, 14
                  srai         t1, s11, 9
                  srli         a3, t4, 16
                  bge          a2, s8, 374f
                  sra          a3, t3, a5
                  sub          ra, t6, s4
                  lui          s10, 489042
                  add          t1, ra, s9
                  xori         ra, t0, 1502
                  sltu         s11, a1, s5
                  sub          s9, s8, t0
                  srli         a1, t2, 22
                  andi         a7, s5, 1035
                  srl          s10, s11, zero
                  la           s11, region_1+805 #start riscv_load_store_rand_instr_stream_0
                  add          a7, s8, s3
                  srl          a0, t2, s11
                  sltu         s2, s5, a4
                  sb           t6, -80(s11)
                  lhu          gp, 225(s11)
                  nop
                  sltiu        a7, s5, 364
                  lhu          s3, -145(s11)
                  add          s0, s6, t3
                  lb           ra, 43(s11)
                  lh           a4, 79(s11)
                  lb           a6, 37(s11)
                  slt          a6, s11, a2
                  ori          t4, a1, -72
                  lhu          s7, -199(s11)
                  addi         a7, t3, 116
                  auipc        s1, 827745
                  lw           t2, -65(s11)
                  and          s7, t3, s0
                  lb           gp, -140(s11)
                  srl          sp, t0, s6
                  lui          t1, 1001663
                  sb           a0, -104(s11)
                  xor          t5, t1, s1
                  slt          s2, t3, s7
                  add          s10, t1, s1
                  lb           t5, -221(s11)
                  srai         s1, s2, 26
                  and          a0, s8, s3
                  lb           s9, -117(s11)
                  lh           a1, 91(s11)
                  add          s7, t2, tp
                  lbu          t2, 38(s11)
                  sra          t1, a2, a7
                  srli         s10, a7, 23
                  ori          s8, s8, 358
                  add          zero, a4, sp
                  ori          s8, s5, 1465
                  addi         a0, t0, 817
                  xor          s5, tp, sp
                  ori          s5, s10, 1823
                  sra          s9, a0, a6
                  sra          ra, s1, a3
                  sb           s5, -158(s11)
                  sb           s10, -140(s11) #end riscv_load_store_rand_instr_stream_0
                  bgeu         a5, a2, 373f
                  bne          t4, s4, 376f
                  ori          s7, t0, -655
                  slli         s3, tp, 20
                  andi         a7, a6, 1028
                  bltu         t4, t6, 378f
373:              nop
374:              xor          s3, gp, t3
                  bne          s9, a0, 389f
376:              xori         a5, zero, -899
                  sll          a0, s5, s7
378:              or           s10, s6, s5
                  add          s3, s5, a1
                  slti         t0, a7, 564
                  ori          a2, a2, -1215
                  slt          t0, zero, t2
                  srai         sp, s3, 8
                  sub          t6, t6, t1
                  slti         s1, ra, 50
                  xor          s10, a7, t3
                  lui          s4, 51797
                  sltiu        a0, s5, -1009
389:              sll          s2, a1, s3
                  bgeu         a1, s0, 392f
                  slli         s10, t4, 26
392:              xor          t1, ra, a3
                  sltiu        t6, a6, 1345
                  bne          t2, a6, 397f
                  or           s10, a0, a4
                  nop
397:              sltiu        a4, t0, 756
                  nop
                  sra          sp, t5, t2
                  auipc        s7, 640727
                  and          a1, a1, a0
                  srai         s0, s5, 23
                  blt          t2, a0, 418f
                  sll          t2, a0, s3
                  ori          a0, t6, 1869
                  blt          s1, s4, 411f
                  bltu         s6, t1, 419f
                  sltiu        t5, s5, 879
                  lui          s0, 900494
                  ori          a3, ra, 492
411:              slli         a7, a2, 28
                  sltu         t2, t5, s2
                  srli         s4, t3, 4
                  sra          s0, s2, tp
                  bltu         t5, a3, 429f
                  beq          t2, a2, 419f
                  slti         t1, gp, -1796
418:              srli         a5, a7, 26
419:              slli         sp, s9, 3
                  sltiu        t2, zero, 1045
                  ori          s7, s1, 657
                  xor          s2, a0, zero
                  lui          zero, 961522
                  srai         sp, a0, 20
                  bne          s6, t5, 439f
                  sub          a0, a3, zero
                  srli         t2, s5, 8
                  add          t6, t0, t0
429:              srli         zero, s9, 18
                  lui          s10, 353443
                  bgeu         a5, tp, 432f
432:              xor          a4, a7, t6
                  sll          t4, a1, a7
                  srl          s0, ra, a3
                  lui          t5, 822427
                  sltiu        s8, s2, -574
                  and          ra, t0, s5
                  or           s5, a0, s5
439:              blt          s10, s3, 453f
                  sltiu        s7, gp, -1674
                  sub          a0, s5, tp
                  sra          t0, s7, a5
                  xori         gp, s11, 164
                  andi         a3, zero, 196
                  sll          a5, a5, zero
                  xori         s11, s0, -1545
                  xor          t1, a5, s0
                  beq          s2, gp, 451f
                  and          s0, s1, s5
                  sll          a5, a6, s0
451:              srai         s3, s7, 7
                  sll          s4, a4, s4
453:              lui          a1, 133517
                  nop
                  sll          a4, t1, s2
                  sra          s5, a5, s4
                  srai         t1, t3, 7
                  beq          s4, s7, 476f
                  slti         s7, a7, -1349
                  add          s4, s11, zero
                  or           s9, s5, a2
                  slt          a0, s2, s1
                  sltu         t6, sp, s4
                  blt          s0, s1, 478f
                  add          s10, a0, s1
                  bgeu         a2, a3, 486f
                  slti         a2, a2, -858
                  auipc        t5, 471441
                  auipc        zero, 497244
                  srl          t0, t1, sp
                  sra          t1, zero, s6
                  srl          s1, a1, t4
                  and          a1, s4, s3
                  bne          s1, tp, 475f
475:              bge          zero, t3, 481f
476:              slt          a4, a1, a3
                  slt          t0, t2, t4
478:              sltu         s10, a6, sp
                  sltu         gp, s5, a1
                  blt          a6, a2, 494f
481:              sra          t4, t3, a4
                  sra          a7, s8, t0
                  bltu         t5, zero, 498f
                  srli         s7, s10, 3
                  sub          t2, a4, t6
486:              xor          t6, a6, zero
                  nop
                  sll          zero, t1, t3
                  or           s7, t1, s10
                  slti         s5, a3, -1542
                  slli         s7, t4, 25
                  bne          sp, ra, 498f
                  slt          t4, a2, t1
494:              slti         a2, t5, -383
                  srl          zero, a0, s2
                  addi         s8, t6, 1904
                  srai         a2, s7, 7
498:              slti         ra, sp, -431
                  bgeu         s4, a4, 506f
                  add          t0, t4, s7
                  slti         a4, a7, -1738
                  sra          s3, a6, t5
                  nop
                  and          s10, s11, t0
                  srl          s1, s10, t6
506:              andi         a1, s7, 1181
                  xor          a4, a6, t5
                  sll          sp, s8, sp
                  beq          a4, s9, 513f
                  sub          gp, a6, s7
                  beq          s4, t4, 521f
                  or           zero, gp, s2
513:              sltiu        a3, s0, -1887
                  or           s4, a0, tp
                  xor          s5, ra, s8
                  xori         s3, ra, -1302
                  lui          s8, 214544
                  sll          a5, t1, tp
                  bltu         a0, t0, 530f
                  andi         gp, s9, -1610
521:              slli         s2, ra, 18
                  sra          s2, a2, s4
                  nop
                  srai         a4, s11, 12
                  slli         t6, a3, 2
                  xor          t5, s4, s8
                  bltu         s1, s6, 545f
                  srai         t6, tp, 1
                  sltiu        s8, t6, -1436
530:              slli         s2, s8, 4
                  add          gp, t5, a7
                  blt          a5, a4, 540f
                  xori         t5, s2, -1147
                  addi         t5, s9, -101
                  sltiu        s10, s8, 1588
                  srl          a3, s3, s6
                  lui          a5, 805032
                  blt          a6, s3, 544f
                  srli         a1, ra, 28
540:              srai         s4, a2, 3
                  xori         s11, s2, -863
                  beq          a3, t0, 557f
                  srli         ra, s4, 11
544:              or           s1, t6, s9
545:              bne          a4, zero, 555f
                  sltiu        s7, t6, 543
                  auipc        ra, 803708
                  sra          s7, t3, s8
                  sltiu        s0, t1, 1617
                  sra          a0, t4, s7
                  blt          t2, s4, 554f
                  add          a3, t0, a3
                  srl          s9, s5, s8
554:              andi         s7, t0, -1136
555:              sltiu        a5, s9, -809
                  sub          s4, t1, s3
557:              slli         s7, s11, 31
                  srli         a4, s7, 9
                  xori         a7, a6, -1993
                  sra          a0, t3, a7
                  slli         s9, t4, 2
                  srl          s0, t1, s10
                  lw           t5, 4(s6)
                  slti         zero, gp, 1170
                  sll          t2, t1, a5
                  sll          a5, t0, s5
                  sra          s4, ra, s2
                  addi         s6, s6, 28
                  add          s9, t2, s7
                  xor          a7, s7, a3
                  add          s10, t0, t6
745:              addi x11, x30, 1
745:              jalr x11, x11, 0
sub_6:            andi         ra, tp, -98
                  nop
                  nop
                  bne          s7, sp, sub_6_stack_p
                  xori         zero, a2, 1971
sub_6_stack_p:    addi         s6, s6, -56
                  sw           t5, 4(s6)
                  xori         a2, t4, 1314
                  slt          a6, a7, t6
                  add          s10, s11, t0
                  srli         s4, s8, 7
                  xor          s2, t3, t6
                  la           t4, region_0+543 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, 47(t4)
                  slt          s2, s5, s8
                  lh           t6, -9(t4)
                  sh           a3, 57(t4)
                  slti         a3, s10, -951
                  nop
                  lbu          s11, 26(t4)
                  lbu          s3, 64(t4)
                  andi         a5, s10, -221
                  sb           s11, -64(t4)
                  sh           zero, -45(t4)
                  and          a3, ra, a1
                  lbu          s10, 42(t4)
                  sltu         a3, t0, s4
                  sub          s2, t6, s4
                  sra          a7, a6, a1
                  lb           s2, -57(t4)
                  lbu          a5, 46(t4)
                  and          t1, a4, a5
                  slt          a1, s8, s6
                  sltiu        a0, tp, 724
                  sra          s0, t5, s4
                  sltiu        a7, s1, 441
                  sb           ra, 14(t4)
                  lbu          a6, -58(t4)
                  lhu          gp, -39(t4)
                  lbu          s8, -6(t4)
                  lhu          s4, 9(t4)
                  sltiu        sp, a4, -1495
                  slt          s3, a7, t3
                  sll          zero, tp, ra
                  lbu          a3, -12(t4)
                  slt          s9, s5, a1
                  addi         a5, s5, -627
                  ori          t5, s8, -1160
                  sll          zero, s9, gp
                  and          s9, s3, t3
                  auipc        a1, 533640
                  sltiu        s5, zero, 574
                  sltu         t1, a1, gp
                  sw           t3, -19(t4)
                  sb           t0, -20(t4)
                  sub          a6, t5, s10
                  sra          s8, zero, t3
                  sw           t3, -55(t4)
                  lb           gp, 48(t4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1468 #start riscv_load_store_rand_instr_stream_0
                  lb           s4, -3(sp)
                  sh           s2, 2(sp)
                  lbu          a2, 14(sp)
                  sltu         t5, t1, s5
                  lb           a1, -5(sp)
                  sb           s7, 12(sp)
                  sh           t2, -6(sp)
                  add          s4, a4, a6
                  or           gp, t6, t1
                  lb           a5, 13(sp)
                  lbu          zero, -13(sp)
                  slt          s4, s1, s6
                  lb           a6, -10(sp)
                  sltiu        s3, t2, -1380
                  xori         s4, a5, -450
                  lb           gp, 8(sp)
                  sra          gp, s4, a3
                  lb           t6, -5(sp)
                  addi         s11, s5, -1948
                  andi         ra, s7, 1357
                  lbu          t1, 13(sp)
                  lui          s2, 663818
                  slt          a7, s4, a5
                  lb           t4, 0(sp)
                  slli         t0, a1, 11
                  sub          a7, s3, zero
                  slt          t4, tp, a2
                  lh           t1, 6(sp)
                  sb           a4, 12(sp)
                  srai         s11, s11, 13
                  srai         t1, t3, 9
                  sb           s9, -13(sp)
                  lb           t0, -5(sp)
                  lb           s8, -3(sp)
                  lb           t0, 5(sp)
                  lh           a1, -6(sp)
                  lbu          t1, -13(sp)
                  nop
                  sll          s1, s10, s6
                  ori          t1, tp, 577
                  xor          gp, zero, a2
                  lbu          s4, 11(sp)
                  lhu          s9, 6(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_1+1738 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, -469(a0)
                  slt          a5, s5, s5
                  sh           s2, 34(a0)
                  lbu          a2, -516(a0)
                  srl          s3, a0, gp
                  andi         s0, a7, 415
                  lb           sp, -1244(a0)
                  addi         zero, a2, -914
                  sra          t6, a3, s4
                  lbu          s3, -1112(a0)
                  lbu          a7, -1105(a0)
                  lb           a1, -731(a0)
                  sw           s11, -1510(a0)
                  slt          s3, gp, a1
                  lui          t2, 306931
                  sub          s2, t6, tp
                  slt          a3, s1, t1
                  sb           t1, -215(a0)
                  lbu          s1, 49(a0)
                  slli         a2, t3, 14
                  lb           s10, -1685(a0)
                  slt          a3, t6, t6
                  lh           s8, -908(a0) #end riscv_load_store_rand_instr_stream_2
                  blt          s1, t4, 19f
                  xor          gp, t6, a0
                  sub          a5, sp, t5
                  sll          s8, t1, a2
                  srai         t2, t2, 2
                  slti         t5, a1, -434
                  sub          t1, zero, t1
                  blt          t6, t1, sub_6_j10 #branch to jump instr
                  slt          s0, s5, s2
                  auipc        t0, 337859
                  or           a2, a3, a2
                  srai         zero, a0, 18
                  xor          a0, a5, gp
                  slli         s0, s4, 10
                  andi         a7, t3, 1541
sub_6_j10:        jal          t5, sub_7 #jump sub_6 -> sub_7
                  beq          t1, gp, 18f
                  slti         a3, s10, -619
                  bne          s3, s7, 19f
                  auipc        t2, 377747
                  bge          a6, s2, 11f
11:               srl          a5, a2, sp
                  srli         ra, s8, 28
                  lui          a0, 188273
                  xori         s10, t5, 470
                  beq          gp, s2, 34f
                  slt          s2, a7, t5
                  sra          a2, t2, s8
18:               sra          s7, tp, s11
19:               nop
                  srl          t1, s0, tp
                  srl          gp, s10, s7
                  sub          a1, a1, s1
                  slt          s2, sp, s10
                  bltu         t6, t6, 29f
                  bge          t4, s1, 32f
                  sll          ra, s9, a6
                  nop
                  slti         s10, t6, -8
29:               sll          a7, a0, a6
                  lui          s2, 851704
                  and          s4, a1, s0
32:               xor          a5, a7, s6
                  sub          a0, a3, ra
34:               or           a3, a0, a6
                  srai         s5, t4, 28
                  sra          s8, t5, t1
                  nop
                  srai         a3, a2, 4
                  sltu         a0, s2, s5
                  sll          a3, s0, s4
                  or           a7, s0, s8
                  sll          t0, s10, a3
                  srai         s9, sp, 28
                  bgeu         s4, t5, 52f
                  add          t1, a6, zero
                  sub          s1, t3, s9
                  or           s1, a4, s6
                  add          a0, ra, s8
                  sub          ra, a0, s8
                  auipc        t1, 738717
                  andi         a1, s2, -1421
52:               srl          a4, t5, s8
                  sltiu        a1, s5, 420
                  slli         s7, ra, 15
                  xor          sp, s1, s1
                  auipc        sp, 542577
                  nop
                  srli         s5, a4, 0
                  bgeu         zero, ra, 63f
                  sll          a4, t3, s8
                  add          t5, t1, t3
                  blt          s6, a2, 70f
63:               sltiu        s9, t3, -1389
                  srl          s1, s2, a5
                  nop
                  bgeu         s10, s4, 73f
                  addi         s7, a5, 732
                  and          ra, a0, a4
                  sub          gp, t1, s8
70:               bge          tp, s0, 79f
                  andi         s3, s8, 358
                  srli         gp, a3, 18
73:               sra          gp, s1, s6
                  xori         zero, a7, -1104
                  add          ra, s4, t0
                  sub          t4, t6, zero
                  andi         a4, gp, 1199
                  xor          a4, s11, sp
79:               sra          t2, s9, s2
                  bgeu         t3, gp, 93f
                  slli         a1, a3, 21
                  srli         s0, t2, 26
                  bltu         t4, a1, 92f
                  blt          s4, s1, 94f
                  slli         s2, s9, 8
                  ori          t6, s11, -599
                  xor          t1, a4, s7
                  or           t6, tp, s11
                  lui          s5, 452727
                  auipc        t1, 112494
                  sll          s5, s1, s2
92:               sltiu        s8, gp, -47
93:               bne          a6, t1, 101f
94:               or           t2, s9, s8
                  andi         sp, a7, 1244
                  sra          s3, a1, a6
                  lui          s8, 746604
                  slt          gp, t6, a2
                  slt          ra, a0, a4
                  or           a6, s9, s6
101:              xor          s0, t5, a5
                  and          a5, a5, s8
                  beq          s7, t0, 109f
                  sub          sp, t2, t2
                  srli         s8, s10, 0
                  auipc        s7, 196505
                  blt          t0, s7, 127f
                  addi         t2, s4, -376
109:              and          s4, t2, s5
                  sub          gp, s5, s9
                  sltu         zero, a5, s0
                  sltiu        t4, s0, -943
                  bge          t6, a2, 114f
114:              sra          s4, s5, t0
                  addi         zero, s8, -360
                  srli         a0, a0, 16
                  andi         zero, a2, 1274
                  bltu         s6, a1, 134f
                  sra          s2, s9, s8
                  bne          s5, s9, 136f
                  blt          s7, s4, 137f
                  slti         s0, zero, 1572
                  nop
                  xor          t5, s3, a6
                  xor          a2, a3, a6
                  srli         s10, a6, 26
127:              sltu         s2, s9, t1
                  sub          a5, a7, s2
                  sltiu        a6, s0, 509
                  srl          s9, a0, a4
                  and          a7, s7, t6
                  sub          s9, s10, a6
                  blt          zero, a4, 152f
134:              slti         s7, t4, 1342
                  bge          s8, s11, 143f
136:              xor          t4, a4, zero
137:              slti         a4, gp, -736
                  sub          a7, ra, s3
                  sra          gp, sp, s9
                  slti         t0, t6, 1993
                  xori         t4, a3, 1104
                  bne          a2, s2, 157f
143:              and          s10, s0, s8
                  srli         s0, a3, 19
                  addi         s1, s9, -1297
                  nop
                  nop
                  slti         s0, t0, -338
                  sltu         a3, ra, a3
                  blt          a5, s3, 170f
                  blt          s1, a1, 155f
152:              slt          s7, s9, s4
                  and          a7, s11, s6
                  andi         s10, s8, -1308
155:              bge          s3, a1, 173f
                  bgeu         s9, gp, 169f
157:              blt          t6, t3, 169f
                  and          a4, t5, a7
                  sra          t1, s6, t2
                  ori          ra, t5, -186
                  add          a0, a7, s7
                  slli         a1, t6, 28
                  blt          a3, s7, 168f
                  andi         s9, s5, -257
                  bge          zero, a2, 185f
                  slt          s5, a0, s7
                  slt          a6, s4, a6
168:              sltu         s4, s11, s3
169:              xori         sp, a7, -744
170:              bne          s11, s7, 178f
                  sll          s4, s7, ra
                  sll          t2, gp, s2
173:              xor          gp, zero, a1
                  sra          t5, ra, a4
                  srl          a6, ra, s2
                  ori          t6, s6, -1054
                  add          t4, s9, a6
178:              auipc        a0, 40269
                  sra          t5, a2, a0
                  srl          s10, t0, s4
                  slti         a0, t5, -972
                  srl          t1, s8, s6
                  beq          s8, a5, 193f
                  beq          t5, ra, 191f
185:              beq          s3, a3, 205f
                  add          s5, a4, t1
                  bne          s5, t0, 191f
                  auipc        a7, 958980
                  beq          a5, ra, 208f
                  slli         s3, s11, 22
191:              slti         a3, sp, -1649
                  srli         a4, zero, 11
193:              bge          s5, s8, 202f
                  srl          s8, s1, t1
                  srli         a5, a6, 6
                  srli         sp, a1, 13
                  add          s3, zero, a1
                  or           a5, a5, ra
                  auipc        t5, 289181
                  slt          a0, t6, t0
                  srl          t4, t0, a2
202:              nop
                  addi         s0, t0, 612
                  lui          s5, 627276
205:              slti         s3, t3, 1355
                  andi         t6, s1, 1760
                  bltu         s8, s1, 215f
208:              slti         t4, s8, -968
                  xor          t2, sp, s6
                  xor          s8, s0, a3
                  sltu         a0, s8, t4
                  srl          ra, s8, s10
                  srl          t1, s9, t5
                  srli         t4, s1, 27
215:              or           t0, t5, a3
                  lui          s5, 1004702
                  sll          a6, s11, t4
                  slt          s3, a4, s8
                  bltu         a7, a2, 232f
                  beq          t0, t2, 232f
                  sltiu        s3, a1, 224
                  bge          t5, t2, 230f
                  blt          t1, s6, 232f
                  sltu         t1, s11, s10
                  andi         t1, zero, 549
                  ori          s1, ra, -208
                  bltu         s8, a0, 231f
                  sll          s5, s0, a7
                  ori          sp, a4, 1610
                  nop
                  sltiu        s4, a5, -873
                  srl          s7, s10, a1
                  la           a5, sub_7
                  add          t2, gp, s5
                  addi         a5, a5, -457
                  xor          t2, a0, a2
                  srl          t1, gp, a2
sub_6_j9:         jalr         t5, a5, 458 #jump sub_6 -> sub_7
230:              sll          s11, t0, t6
231:              add          sp, zero, s4
232:              slli         a4, t0, 17
                  addi         s1, a6, 1042
                  auipc        gp, 310659
                  bltu         t3, t0, 248f
                  srai         ra, s10, 23
                  xori         t4, s3, -244
                  add          gp, t0, t2
                  add          s7, t2, ra
                  bltu         a7, t0, 256f
                  ori          s5, a6, 1078
                  blt          s4, t2, 248f
                  beq          ra, s7, 258f
                  srli         a3, s7, 4
                  add          a2, t4, a2
                  slti         a3, t5, 370
                  nop
248:              slti         a6, t4, 235
                  add          s2, s0, t0
                  slt          a4, s1, a2
                  bge          t5, t2, 258f
                  srai         sp, sp, 28
                  sra          a1, s2, a5
                  beq          t3, a1, 270f
                  sub          s0, a0, s1
256:              bne          s4, sp, 272f
                  and          s2, s2, a6
258:              nop
                  bgeu         s4, s5, 277f
                  lui          t4, 978713
                  sltiu        t1, a4, -321
                  ori          sp, t3, -1580
                  bne          a5, a4, 264f
264:              addi         s10, s2, 1443
                  slt          a7, s11, t6
                  add          t6, s7, s10
                  bgeu         t1, t1, 286f
                  srli         a1, s7, 26
                  srai         s11, t2, 18
270:              bltu         s2, t5, 281f
                  bne          s1, a6, 290f
272:              add          ra, s1, t5
                  nop
                  srai         a2, tp, 18
                  nop
                  or           a7, s8, t2
277:              bne          s1, sp, 289f
                  slli         t4, t5, 15
                  or           a4, a6, s5
                  bge          t3, ra, 288f
281:              sra          t4, t3, a4
                  nop
                  xor          a3, ra, a1
                  nop
                  sltu         s3, s9, a4
286:              slt          t1, zero, t5
                  srai         s4, s5, 22
288:              ori          sp, s3, -331
289:              lui          s3, 414308
290:              addi         s5, t4, 1043
                  srai         s5, gp, 3
                  andi         a1, s6, -845
                  add          a4, sp, a7
                  srli         t5, a6, 26
                  xori         t5, s7, 399
                  beq          a6, a3, 297f
297:              sll          a7, t2, s7
                  add          a5, t1, t5
                  sll          s7, gp, a3
                  slt          s11, s9, t4
                  slti         a2, a4, -681
                  slt          t5, t6, s6
                  srai         sp, s7, 4
                  addi         s5, a5, -790
                  srai         s8, a7, 30
                  auipc        s0, 420573
                  slti         a5, t0, -1011
                  auipc        t1, 21209
                  addi         s1, s5, -410
                  beq          s3, s5, 329f
                  bgeu         s4, a7, 320f
                  xori         a0, t5, 83
                  srl          s7, s10, t5
                  bltu         s11, s7, 330f
                  sltiu        t1, a0, 858
                  slti         ra, t0, 712
                  blt          a3, zero, 321f
                  add          s11, s1, s2
                  xori         s1, s1, -1149
320:              xor          a3, s8, s7
321:              srl          s0, zero, t6
                  bne          s6, s6, 329f
                  bltu         t2, s2, 324f
324:              bge          s5, t6, 334f
                  lui          a1, 517725
                  bge          s9, gp, 345f
                  sra          s8, a7, a7
                  srl          sp, tp, a7
329:              xor          s4, a7, ra
330:              xori         s3, a1, 1115
                  or           s10, s4, tp
                  bgeu         s11, a7, 347f
                  slti         s8, gp, 1547
334:              addi         s1, zero, -1889
                  sll          s0, gp, t2
                  sltiu        t2, a2, -207
                  slti         t5, s1, 668
                  bge          sp, gp, 343f
                  slti         a5, a5, -1634
                  bltu         zero, t6, 341f
341:              sltu         s11, a1, t0
                  bne          a4, a5, 350f
343:              sub          s11, a4, s6
                  srl          a5, a1, zero
345:              lui          a0, 259515
                  bgeu         s10, t6, 366f
347:              andi         sp, gp, -712
                  bltu         s3, s7, 364f
                  srli         t4, t5, 29
350:              or           a5, s5, s7
                  lui          s5, 173054
                  andi         s9, zero, 1701
                  sub          s11, t2, a4
                  srli         a3, t3, 28
                  bgeu         ra, s11, 366f
                  slt          s10, t3, s4
                  srli         t6, t5, 22
                  sltu         s3, gp, zero
                  srli         a4, ra, 16
                  ori          t2, a0, 185
                  nop
                  lui          a2, 580876
                  ori          sp, s3, 1825
364:              add          a6, t4, a3
                  andi         ra, s5, -8
366:              sub          zero, s10, s2
                  bge          gp, t6, 374f
                  and          t4, t0, s10
                  bne          s10, s11, 377f
                  ori          t2, t6, -187
                  auipc        a1, 318168
                  blt          s0, t4, 380f
                  xor          t5, s7, t3
374:              blt          a1, a4, 393f
                  blt          a1, a5, 391f
                  sra          s10, s10, t0
377:              sltu         sp, s5, s2
                  slli         t2, s9, 30
                  addi         ra, t3, 1822
380:              sltiu        s2, a5, 1265
                  auipc        a2, 408635
                  blt          s0, zero, 388f
                  sltu         zero, t6, s7
                  add          s7, t5, t6
                  sll          a2, s5, a5
                  srli         s4, s7, 27
                  sra          a7, a4, t3
388:              xori         a4, ra, 1521
                  xor          s3, s6, t2
                  bgeu         t1, sp, 399f
391:              slli         s4, a5, 10
                  lui          t0, 164931
393:              sub          s1, s2, a3
                  bltu         a3, tp, 406f
                  xori         s11, t6, 560
                  xori         s5, s2, -909
                  lui          t4, 411362
                  srai         s8, s10, 20
399:              add          s3, s2, s6
                  slli         s4, a0, 29
                  xori         a5, t4, -1491
                  xor          a2, a2, s11
                  blt          a0, a7, 411f
                  add          a2, a0, t3
                  sltu         t6, a0, s8
406:              bltu         s3, a3, 418f
                  ori          t6, t5, -1619
                  or           a0, s5, zero
                  beq          s9, t1, 429f
                  sll          s11, s7, tp
411:              blt          s8, s4, 424f
                  srai         t0, s11, 11
                  or           s10, s8, a7
                  and          s4, s4, s8
                  srl          t2, s5, gp
                  slti         a6, s3, 1140
                  nop
418:              sltu         ra, a0, s0
                  sra          a2, t1, s3
                  andi         a4, tp, 1399
                  xori         a5, t5, -239
                  and          s0, s9, t4
                  xor          s7, s9, a0
424:              sub          t5, t6, sp
                  blt          a5, s1, 443f
                  nop
                  lui          s2, 913238
                  slti         t4, t5, 715
429:              srli         t4, zero, 27
                  sra          a4, s1, s3
                  or           gp, ra, s4
                  ori          s2, s4, -1119
                  addi         a1, t2, 390
                  bltu         t6, a3, 447f
                  srai         a4, a1, 12
                  slt          s1, t4, a1
                  sltiu        s7, s6, 2007
                  slli         a0, t4, 18
                  xor          t2, s0, t4
                  addi         a4, t1, 1803
                  andi         zero, tp, -115
                  srai         t0, s5, 2
443:              add          s11, tp, s7
                  bne          s0, s0, 448f
                  sub          t1, a5, t6
                  bne          s7, t5, 451f
447:              sll          s10, s7, t1
448:              sltiu        t6, a6, -1236
                  add          t4, a7, s5
                  xor          t1, s10, t3
451:              addi         a3, sp, 1016
                  lw           t5, 4(s6)
                  xori         t4, s1, 496
                  slt          a2, a1, s5
                  addi         s6, s6, 56
                  slti         s1, s10, 1964
603:              addi x19, x30, 1
603:              jalr x19, x19, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x4, x22, zero
                  csrr x26, 0x300 # MSTATUS
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 31
                  bne x26, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x26, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x26, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x26, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x26, x27, ecall_handler
                  li x27, 0x1
                  beq x26, x27, instr_fault_handler
                  li x27, 0x5
                  beq x26, x27, load_fault_handler
                  li x27, 0x7
                  beq x26, x27, store_fault_handler
                  li x27, 0xc
                  beq x26, x27, pt_fault_handler
                  li x27, 0xd
                  beq x26, x27, pt_fault_handler
                  li x27, 0xf
                  beq x26, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x22, x4, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
