.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0x7
                  li x1, 0xc669f691
                  li x2, 0x0
                  li x3, 0x69db016e
                  li x4, 0xfd979434
                  li x5, 0xe
                  li x6, 0x5
                  li x7, 0xfb4019c6
                  li x8, 0x0
                  li x9, 0x0
                  li x11, 0xb
                  li x12, 0x1
                  li x13, 0xed24e5a9
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x12927b46
                  li x17, 0x8
                  li x18, 0xf092a286
                  li x19, 0x0
                  li x20, 0xd
                  li x21, 0x235a7970
                  li x22, 0x97ce54dc
                  li x23, 0x0
                  li x24, 0x2
                  li x25, 0xd
                  li x26, 0xf1ab96a8
                  li x27, 0xfcb03cad
                  li x28, 0xa79026f3
                  li x29, 0xf6b8f9f3
                  li x31, 0xf7b4b9db
                  la x10, user_stack_end
main:             xor          t2, s10, ra
                  la           a3, sub_1
                  addi         a3, a3, 118
                  slli         a6, s8, 12
                  sll          t1, a1, s4
                  sll          s7, s6, a2
                  auipc        t2, 254978
                  bne          a1, sp, main_j2 #branch to jump instr
                  slti         s10, a1, -1152
                  auipc        t1, 73549
                  ori          ra, a0, -550
main_j2:          jalr         ra, a3, -117 #jump main -> sub_1
                  la           t4, region_1+60 #start riscv_load_store_rand_instr_stream_2
                  lhu          s7, 1530(t4)
                  sltu         s7, s1, a0
                  sltu         t6, a3, ra
                  xori         s7, a5, -1829
                  slli         a7, a7, 17
                  lh           ra, 188(t4)
                  srai         t1, s7, 31
                  lb           t6, 1213(t4)
                  add          sp, s7, t3
                  xor          s7, a1, tp
                  sw           t6, 1300(t4)
                  xor          a6, s1, s8
                  lb           a4, 1229(t4)
                  and          a7, t4, t3
                  sub          a5, a6, a1
                  lbu          s11, 1530(t4)
                  sw           t2, 1932(t4)
                  and          s6, s6, sp
                  auipc        a6, 155744
                  addi         s9, a1, 1628
                  sub          s3, s7, t1
                  sb           t5, 1241(t4)
                  slti         a1, s6, -1871
                  lui          t0, 773936
                  slt          s8, t2, s8
                  sb           t2, 1115(t4)
                  sb           s0, 403(t4)
                  lbu          ra, 893(t4)
                  sb           a1, 658(t4)
                  srli         ra, ra, 3
                  srai         s8, a7, 6
                  andi         t3, gp, -1394
                  sb           t1, 1800(t4)
                  srai         t3, ra, 30
                  slti         a4, s0, 2044
                  nop
                  lbu          ra, 877(t4) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_0+466 #start load_store_instr_stream_2
                  la           s10, region_0+650 #start load_store_instr_stream_3
                  lh           s7, -8(s8)
                  la           a3, region_0+1818 #start load_store_instr_stream_1
                  la           s3, region_0+885 #start load_store_instr_stream_4
                  lb           ra, 176(s3)
                  lbu          t6, 120(s3)
                  lhu          t4, 64(a3)
                  lh           s4, -2(s8)
                  la           t1, region_0+1373 #start load_store_instr_stream_0
                  sw           a1, -18(a3)
                  sb           s6, 170(s3)
                  lh           s9, 11(t1)
                  sh           s0, 33(t1)
                  lb           t0, -51(t1)
                  lb           a5, -55(s10)
                  sb           s9, -44(s10)
                  sb           s11, 5(a3)
                  sh           t5, -211(s3)
                  lbu          a1, 19(a3)
                  sb           s0, 5(s8)
                  sh           a7, 47(t1)
                  sh           a5, 193(s3)
                  lb           s2, 15(s10)
                  sb           s2, -47(a3)
                  sb           s3, 31(s10)
                  lbu          a1, 4(s10) #end load_store_instr_stream_3
                  lbu          ra, -9(s8)
                  lbu          t4, 108(s3)
                  lb           s4, -38(t1)
                  lbu          t6, -143(s3)
                  sb           a6, -9(s8)
                  lb           t6, 9(s8)
                  lbu          ra, -10(s8)
                  lb           s5, 13(s8)
                  sb           sp, 25(a3) #end load_store_instr_stream_1
                  sw           s11, -2(s8) #end load_store_instr_stream_2
                  lbu          s9, -246(s3) #end load_store_instr_stream_4
                  sb           s7, 4(t1) #end load_store_instr_stream_0
                  la           a3, region_1+314 #start riscv_load_store_hazard_instr_stream_2
                  lb           t0, 1477(a3)
                  lb           sp, 455(a3)
                  lb           a1, 455(a3)
                  sb           s11, 61(a3)
                  sb           s11, 917(a3)
                  sb           ra, 799(a3)
                  lbu          a2, 993(a3)
                  sb           s3, 993(a3)
                  lbu          t3, 993(a3)
                  srl          s7, t4, a2
                  lbu          s5, 993(a3)
                  lb           a7, 993(a3)
                  sb           t5, 993(a3)
                  sb           s11, 589(a3)
                  lb           s5, 589(a3)
                  sh           t2, 1056(a3)
                  lbu          t6, 1472(a3)
                  lh           s6, 1472(a3)
                  sb           a0, 1472(a3)
                  sh           a5, 1472(a3)
                  sb           t0, 1472(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           a7, region_0+396 #start load_store_instr_stream_2
                  la           tp, region_0+96 #start load_store_instr_stream_1
                  la           a6, region_0+502 #start load_store_instr_stream_0
                  la           sp, region_0+1467 #start load_store_instr_stream_3
                  lbu          s5, -59(tp)
                  lb           s5, -5(a7)
                  lbu          s9, 265(sp)
                  lbu          t0, -147(a6)
                  lbu          gp, 49(a7)
                  sb           s2, -1345(sp)
                  sb           ra, 442(sp)
                  lb           gp, 25(a7)
                  lh           t0, 50(tp)
                  lbu          t2, 27(a7)
                  lb           s2, -4(tp)
                  sb           s7, -684(sp)
                  lbu          gp, 186(a6)
                  lh           s7, 250(a6)
                  sb           t6, 33(a7)
                  lhu          s6, 8(tp)
                  lbu          t0, 47(tp)
                  sb           t0, 281(sp)
                  sh           s11, -40(a6)
                  lbu          s2, 168(sp)
                  lh           t3, -42(tp)
                  lb           s6, -54(a6)
                  sw           s2, -295(sp)
                  lbu          s8, -1024(sp)
                  lbu          ra, 282(sp)
                  sb           t2, 19(a7)
                  sb           a3, -29(a7)
                  sb           a0, 35(tp)
                  sb           a4, -19(tp)
                  lbu          s7, -6(a7)
                  lb           s2, -231(a6)
                  lb           zero, 25(a7) #end load_store_instr_stream_2
                  lb           s10, 47(tp) #end load_store_instr_stream_1
                  sb           s8, -238(a6)
                  lb           a2, 495(sp) #end load_store_instr_stream_3
                  lb           t4, 162(a6) #end load_store_instr_stream_0
                  la           a4, region_0+1990 #start riscv_load_store_hazard_instr_stream_0
                  lb           s2, 5(a4)
                  lb           t3, 5(a4)
                  sub          s11, s4, a6
                  ori          s9, a5, 1569
                  lbu          s9, -157(a4)
                  sh           gp, -206(a4)
                  sh           s2, -206(a4)
                  sb           zero, -206(a4)
                  slt          gp, s4, s9
                  lui          a2, 1025829
                  sh           t0, -104(a4)
                  lbu          t2, -104(a4)
                  or           s8, a4, a2
                  lh           t6, -104(a4)
                  lbu          s2, -253(a4)
                  sh           a2, -148(a4)
                  srai         a2, s5, 9
                  lhu          s11, -194(a4)
                  lbu          s0, -196(a4)
                  sh           t2, -196(a4)
                  sb           s5, -251(a4)
                  nop
                  lbu          t0, -252(a4) #end riscv_load_store_hazard_instr_stream_0
                  la           s6, region_0+415 #start riscv_load_store_rand_instr_stream_1
                  andi         ra, t0, 62
                  srai         s10, s4, 4
                  add          gp, a0, t5
                  lbu          t3, -109(s6)
                  andi         t3, a7, -645
                  sll          s7, gp, t4
                  sh           s5, 105(s6)
                  lui          a2, 619387
                  lb           a7, -204(s6)
                  andi         sp, a7, 671
                  addi         s2, s11, 1042
                  auipc        s5, 259934
                  slli         s0, s0, 0
                  lb           t0, 224(s6)
                  sb           t5, -144(s6)
                  srli         ra, s3, 18
                  lhu          zero, 207(s6)
                  lb           s2, 70(s6)
                  slt          s4, a2, sp
                  lbu          ra, 154(s6)
                  lbu          a1, -208(s6)
                  or           t2, t3, s8
                  srai         s11, t2, 10
                  sub          t3, a6, t3
                  lhu          tp, 195(s6)
                  lb           gp, -158(s6)
                  lw           gp, 69(s6)
                  lui          s11, 875915
                  sh           a3, 59(s6)
                  sb           sp, -196(s6)
                  lbu          sp, 102(s6)
                  andi         s7, a5, -1415
                  lw           t2, -239(s6)
                  lb           a6, 179(s6)
                  lb           a5, -16(s6)
                  sb           a4, 118(s6)
                  sh           s2, 43(s6)
                  sw           t6, -91(s6)
                  lbu          s9, -90(s6)
                  lbu          t0, 172(s6)
                  lw           s10, 141(s6)
                  slli         a2, sp, 26
                  sb           zero, 115(s6) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+1607 #start load_store_instr_stream_3
                  la           tp, region_0+962 #start load_store_instr_stream_0
                  la           s8, region_0+1645 #start load_store_instr_stream_2
                  la           s10, region_0+624 #start load_store_instr_stream_1
                  lbu          ra, -12(s8)
                  sh           a7, -5(s8)
                  lw           a7, 10(tp)
                  lb           ra, -8(tp)
                  lbu          s5, -7(s8)
                  sh           gp, -6(s10)
                  lhu          a3, -4(tp)
                  sb           s6, 14(s10)
                  lbu          a2, -6(s8)
                  lb           t4, -1(s10)
                  sb           t3, -16(s8)
                  lbu          ra, 11(gp)
                  lb           s0, 14(s8)
                  sb           a1, -10(gp)
                  lbu          zero, 7(tp)
                  lh           s0, 7(gp)
                  lbu          a6, -13(s10)
                  lb           a6, 11(s10)
                  lb           t4, -10(tp)
                  sb           ra, 13(s10)
                  sh           s7, 13(gp)
                  lbu          a6, -11(s10)
                  sb           zero, 8(gp)
                  lb           s3, -14(s8)
                  lb           ra, 7(s10) #end load_store_instr_stream_1
                  lw           s7, -15(gp) #end load_store_instr_stream_3
                  lb           a6, 14(s8) #end load_store_instr_stream_2
                  sh           a6, 10(tp) #end load_store_instr_stream_0
                  srai         s5, t4, 6
                  bne          a0, gp, 18f
                  bgeu         t4, s10, 8f
                  slti         a6, t5, 835
                  sra          s2, s2, s5
                  sub          t1, ra, sp
                  or           s2, gp, s9
                  auipc        sp, 614521
8:                and          a7, t5, s6
                  addi         s2, s9, -1169
                  bne          a6, s1, 21f
                  bne          a1, s7, 17f
                  bltu         ra, a3, 27f
                  srl          s9, t3, s11
                  xor          a6, a7, s5
                  slti         a2, s10, -953
                  lui          gp, 117989
17:               bgeu         s7, t6, 37f
18:               auipc        t6, 845080
                  srli         t1, a6, 2
                  srli         s2, a0, 19
21:               bltu         s9, a7, 33f
                  slt          s5, s10, t5
                  add          s10, s8, t6
                  srli         s4, a7, 6
                  ori          s7, s3, 990
                  slti         t3, t4, -576
27:               nop
                  xori         ra, s5, -1388
                  bge          s7, ra, 34f
                  bltu         s7, sp, 31f
31:               or           a7, t4, s4
                  bne          s7, a1, 48f
33:               add          t6, a5, gp
34:               bne          t3, t6, 39f
                  ori          a5, s6, 267
                  bge          a3, s4, 51f
37:               sll          s0, s6, s8
                  lui          s6, 782728
39:               srai         s5, a1, 2
                  or           s9, s10, a1
                  auipc        a5, 301483
                  bltu         gp, s8, 52f
                  lui          s7, 787835
                  srl          s11, a3, s1
                  slti         s6, t1, 1994
                  beq          s4, s4, 58f
                  sll          ra, s7, a2
48:               blt          t6, t2, 53f
                  srl          a1, ra, a4
                  and          zero, gp, a6
51:               sltiu        tp, s3, 236
52:               bgeu         sp, t5, 61f
53:               add          s10, t6, a5
                  add          a5, s4, t1
                  and          t3, s11, s10
                  ori          t3, sp, 1619
                  xor          sp, ra, a0
58:               bltu         s1, s0, 70f
                  sltiu        a4, t3, -684
                  addi         zero, ra, -845
61:               blt          a4, a7, 69f
                  beq          tp, t1, 73f
                  lui          tp, 751056
                  andi         a7, t3, -729
                  srai         s2, t2, 30
                  bge          t4, tp, 85f
                  xori         a4, s9, 1438
                  bne          s0, s1, 85f
69:               slt          s2, t2, tp
70:               srli         t2, a6, 4
                  sltiu        t0, zero, -1940
                  auipc        a3, 637756
73:               bltu         a0, t4, 83f
                  slti         t1, s9, 1254
                  bge          a5, t4, 78f
                  slt          t6, t2, zero
                  srl          s6, t2, s11
78:               and          t2, zero, s11
                  or           s11, a5, t2
                  sra          s10, t0, t1
                  xor          t0, s6, t4
                  auipc        sp, 373888
83:               sub          zero, sp, s4
                  sltu         s7, t1, a2
85:               and          s5, a5, a4
                  sub          s3, a3, t1
                  slti         sp, s7, 1196
                  xor          gp, sp, s2
                  xori         t1, a5, 1764
                  ori          a4, s6, -382
                  lui          s2, 44902
                  slli         s9, t4, 21
                  bltu         t5, s6, 95f
                  or           s8, t1, t5
95:               add          s3, a2, t2
                  sll          sp, s4, a3
                  blt          a5, s11, 100f
                  sub          a6, t4, s6
                  add          a1, s7, s11
100:              xor          s9, s3, s8
                  bltu         t3, s4, 107f
                  bltu         a7, a1, 114f
                  srl          s5, t1, a5
                  lui          s3, 135415
                  lui          zero, 448489
                  sll          a5, t1, s3
107:              slt          s4, s10, s1
                  nop
                  sll          zero, sp, s11
                  slli         s5, s1, 3
                  xori         s5, t2, -627
                  bltu         ra, zero, 121f
                  slli         a3, ra, 30
114:              and          s11, a7, a1
                  beq          t6, t6, 133f
                  beq          ra, a4, 117f
117:              sll          t0, s8, s1
                  add          tp, s9, a5
                  xori         s0, a0, 680
                  slti         s7, zero, -507
121:              slli         a2, s4, 0
                  ori          s4, t4, -1218
                  srli         s3, a6, 29
                  slli         a2, s5, 28
                  xor          t1, s3, a4
                  sra          tp, t4, s8
                  and          s5, s2, zero
                  auipc        s5, 69296
                  beq          t1, s8, 132f
                  sltiu        s0, s3, -314
                  addi         t0, gp, -271
132:              bne          t0, s8, 142f
133:              and          s4, a3, a7
                  bltu         s9, s7, 145f
                  auipc        a1, 141587
                  sub          gp, a7, a0
                  srai         s2, a2, 9
                  xori         s0, a1, -1527
                  bge          t2, tp, 159f
                  srai         tp, s11, 20
                  srli         t4, s6, 20
142:              bltu         t2, t0, 160f
                  slt          a4, s6, a3
                  srai         a7, t1, 21
145:              srli         a2, t6, 10
                  beq          t4, zero, 151f
                  srli         t4, a4, 14
                  sub          a2, s5, gp
                  ori          t6, s2, 1977
                  blt          a4, t0, 167f
151:              sub          s4, t5, a1
                  slli         tp, a6, 31
                  slt          t3, s9, t0
                  sub          s0, t6, s4
                  slti         s0, s6, 1567
                  xori         ra, t2, 1698
                  xor          t0, zero, gp
                  slti         a1, a4, -1217
159:              xor          s9, s11, a3
160:              slti         a4, a6, 47
                  bne          a5, t5, 176f
                  bgeu         s7, t5, 168f
                  ori          sp, s2, -100
                  srai         s0, t6, 8
                  slt          t1, t0, s1
                  addi         t4, a6, -1824
167:              bltu         s4, a0, 170f
168:              lui          tp, 1026541
                  auipc        s4, 352471
170:              lui          zero, 312125
                  srl          zero, s9, t6
                  bgeu         t5, t2, 189f
                  and          t6, s5, gp
                  blt          s11, s8, 189f
                  srl          s0, gp, s4
176:              sltu         s0, a4, s5
                  bltu         s2, a3, 178f
178:              bne          sp, s8, 190f
                  sll          a7, a5, zero
                  la           a7, sub_2
                  addi         a7, a7, 355
                  sltu         s10, a1, s6
                  srl          t3, s1, s11
                  slli         t3, t2, 12
                  beq          s4, a2, main_j1 #branch to jump instr
                  srl          s4, tp, s0
                  sub          s6, s9, t4
main_j1:          jalr         ra, a7, -354 #jump main -> sub_2
                  and          t4, s1, ra
                  sltu         s0, a4, t1
                  andi         s6, a4, -907
                  sltu         a7, s6, s10
                  slli         zero, t6, 0
                  lui          t0, 432341
                  add          t4, s4, s7
                  slli         s0, sp, 24
                  bge          sp, s10, 200f
189:              slt          s7, s9, a0
190:              sub          t3, ra, t1
                  sltiu        t2, zero, -702
                  lui          s0, 661887
                  srai         s7, a1, 29
                  ori          t6, s10, 466
                  bltu         s9, s0, 196f
196:              xori         t6, t0, 673
                  srl          s10, gp, s6
                  beq          gp, t6, 214f
                  andi         t3, s8, -1504
200:              ori          ra, s9, -1381
                  lui          a4, 270796
                  sra          a3, s4, t6
                  blt          ra, s1, 222f
                  xor          t1, a5, t1
                  slti         s8, s9, 1910
                  and          tp, t5, a6
                  sll          t3, sp, s3
                  sra          s6, a2, a4
                  sra          tp, t1, t4
                  andi         t0, t0, -716
                  beq          t3, s10, 217f
                  slt          t3, s7, a5
                  srl          gp, s1, a0
214:              beq          gp, tp, 226f
                  slti         zero, s10, -380
                  ori          ra, sp, -630
217:              nop
                  addi         t2, t4, -1179
                  nop
                  bltu         t6, s1, 226f
                  bne          a5, a5, 230f
222:              or           s7, s10, s0
                  slti         s2, a6, 745
                  sra          s3, s2, t0
                  sll          s6, tp, a4
226:              ori          s8, s7, -419
                  addi         s9, gp, 1916
                  andi         t6, s6, -1260
                  slti         a4, s8, -1753
230:              sltiu        gp, a1, -1489
                  xori         s9, t3, 1986
                  sltiu        s10, t4, 75
                  slt          a3, a7, sp
                  bltu         s10, a7, 245f
                  slt          t6, s8, s4
                  srli         s10, s7, 24
                  sll          a3, s9, ra
                  srai         a3, a1, 29
                  srl          tp, s8, a5
                  slt          s5, t6, a6
                  blt          a7, a6, 246f
                  auipc        a1, 569236
                  sra          s3, s8, a7
                  andi         a2, t4, -1592
245:              bgeu         s1, t4, 253f
246:              srl          sp, s11, a7
                  andi         zero, s3, -632
                  slt          t2, s0, t1
                  beq          a0, t1, 251f
                  nop
251:              bge          s2, s8, 263f
                  add          ra, s5, s1
                  la           t2, region_0+1642 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s4, -1497(t2)
                  lb           s10, -1497(t2)
                  sb           t5, -1497(t2)
                  sb           s7, -1497(t2)
                  andi         gp, t6, 1594
                  lb           s6, -1497(t2)
                  sb           s0, -1497(t2)
                  sb           ra, -1497(t2)
                  lb           t3, -1497(t2)
                  sb           gp, -1497(t2)
                  sb           t0, -1325(t2)
                  lb           a3, -1325(t2)
                  sb           a5, -1325(t2)
                  lbu          s2, -1355(t2)
                  sb           s10, -1355(t2)
                  srl          s9, a2, ra
                  sh           a2, -338(t2) #end riscv_load_store_hazard_instr_stream_1
253:              and          s6, s3, s2
                  addi         ra, s0, -112
                  sub          t1, t3, s9
                  srl          s7, a7, tp
                  addi         tp, s3, 1071
                  add          t2, a6, a3
                  sll          gp, a0, s4
                  nop
                  xori         s5, t1, 1758
                  bgeu         s10, s4, 272f
263:              sra          s4, a5, t3
                  srai         a7, t1, 28
                  slt          t3, tp, zero
                  and          a5, s0, s1
                  bge          s9, a0, 272f
                  sll          s5, t2, t1
                  sra          s0, s2, s2
                  slt          s6, t3, s9
                  auipc        a2, 20202
272:              bltu         tp, a0, 281f
                  xor          s10, a3, s5
                  auipc        s10, 793986
                  sltiu        t4, s10, -1461
                  auipc        s10, 92050
                  bltu         s10, s7, 288f
                  or           s3, t5, a6
                  xor          zero, s4, gp
                  xori         t2, ra, -994
281:              sltiu        s4, a0, 744
                  lui          s5, 35327
                  andi         a3, s2, 1081
                  andi         s3, zero, 318
                  lui          t1, 39980
                  slli         a2, s2, 11
                  slt          s8, t3, t4
288:              bgeu         s5, s5, 300f
                  beq          s0, t0, 301f
                  sll          t6, t4, zero
                  blt          s2, s7, 294f
                  bgeu         a5, s2, 297f
                  sltu         s0, s6, a2
294:              sltiu        t1, s11, -1452
                  slti         a4, s6, -1434
                  or           t2, zero, s8
297:              srli         s6, s7, 22
                  bltu         sp, t6, 306f
                  slli         t6, s4, 7
300:              or           a3, t3, a5
301:              sub          a7, gp, a0
                  slti         t4, t4, -639
                  bltu         a5, s3, 320f
                  and          s2, a6, a6
                  sltiu        gp, s3, -1542
306:              addi         s0, s9, 105
                  addi         gp, a4, 742
                  beq          sp, a7, 309f
309:              bltu         zero, a0, 314f
                  and          a2, s1, tp
                  ori          s6, t0, -1823
                  slti         a3, a0, 656
                  xori         t2, s9, -1264
314:              add          s6, t3, a6
                  sra          s3, t6, s3
                  slli         s5, s11, 19
                  bne          a2, a2, 327f
                  sub          t1, a4, s10
                  and          s3, s4, a3
320:              bge          s9, s4, 322f
                  or           sp, ra, a1
322:              sra          zero, t6, s10
                  and          a7, s4, a2
                  blt          t2, a7, 327f
                  ori          s8, t4, -1139
                  auipc        t2, 1029699
327:              blt          t3, sp, 342f
                  bne          t6, s3, 338f
                  addi         a7, a2, -1230
                  blt          t2, t5, 349f
                  srai         s10, s11, 31
                  xor          a5, tp, s4
                  bgeu         t0, a7, 345f
                  la           a1, region_0+1001 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, 78(a1)
                  addi         sp, t0, 8
                  andi         ra, s1, 994
                  or           s9, a2, s8
                  slli         s9, t1, 13
                  lhu          s8, 41(a1)
                  sltiu        t4, t1, -1430
                  srli         t2, t5, 27
                  xori         a4, gp, -1923
                  lbu          a5, -45(a1)
                  sh           s1, 71(a1)
                  sll          a4, s4, a5
                  sra          t0, t5, s4
                  sb           s6, -140(a1)
                  slt          s4, a6, t3
                  sll          a5, a7, s8
                  sb           s11, -122(a1)
                  lbu          gp, -90(a1)
                  lbu          s0, -122(a1)
                  srai         t2, a4, 19
                  lbu          t4, 254(a1)
                  srl          s2, a3, ra
                  xori         s8, s6, -71
                  lbu          t2, 225(a1)
                  nop
                  lb           tp, 36(a1)
                  xori         s10, s4, 1678
                  sb           t6, -202(a1)
                  and          s9, t5, ra
                  srli         s5, ra, 20
                  lb           tp, -126(a1)
                  xori         s4, s3, 316
                  srli         s11, a7, 6
                  lui          s4, 1043874
                  sb           a2, -92(a1)
                  srli         ra, s6, 3
                  lui          s0, 332772
                  sb           s1, 198(a1) #end riscv_load_store_rand_instr_stream_0
                  sltu         zero, t4, t1
                  srli         t1, s10, 12
                  slt          gp, a5, gp
                  sra          t0, s6, a7
338:              xor          s2, t2, s10
                  sltiu        s9, s8, 769
                  sll          gp, a7, s7
                  bge          a2, s11, 358f
342:              slti         gp, tp, -81
                  srli         s6, tp, 17
                  bgeu         s1, a6, 349f
345:              sra          sp, a7, s6
                  sub          a4, s11, a1
                  add          ra, s3, s4
                  nop
349:              andi         t3, a3, 1462
                  andi         sp, tp, 1854
                  sra          a3, t3, s11
                  slti         zero, s0, -1258
                  and          s10, t4, t2
                  slt          a7, s4, s8
                  and          s5, s4, s10
                  xori         s11, s4, 106
                  auipc        a7, 164607
358:              bne          sp, s0, 374f
                  auipc        s3, 188095
                  sub          sp, ra, s10
                  sll          tp, s1, a3
                  andi         t0, sp, 909
                  andi         s6, t5, 1511
                  srai         s3, a5, 4
                  srai         sp, s9, 5
                  addi         sp, t3, -984
                  bne          a0, s11, 368f
368:              nop
                  xor          zero, s10, sp
                  sll          t3, s10, ra
                  beq          s1, t0, 377f
                  nop
                  blt          s5, t4, 387f
374:              auipc        t4, 962293
                  and          t2, a6, s7
                  bge          a1, sp, 385f
377:              andi         s2, s5, 1905
                  slti         s2, t1, 1609
                  xor          ra, s4, ra
                  srl          a6, s4, s11
                  andi         zero, t1, -974
                  bne          s9, s0, 387f
                  nop
                  srl          s7, s10, a0
385:              bne          s3, tp, 387f
                  blt          s0, zero, 387f
387:              and          s8, a1, s11
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        s9, s3, 1120
                  beq          s7, a4, sub_2_stack_p
                  andi         zero, s7, -511
sub_2_stack_p:    addi         a0, a0, -20
                  sub          t4, a2, t3
                  sw           ra, 4(a0)
                  xori         t3, s1, -1338
                  xori         s9, a6, -178
                  la           t1, region_1+275 #start load_store_instr_stream_2
                  lb           a6, 0(t1)
                  la           s9, region_1+1825 #start load_store_instr_stream_1
                  la           s3, region_1+1658 #start load_store_instr_stream_0
                  lb           s4, -1024(s9)
                  sb           a2, -4(t1)
                  sb           s0, -755(s9)
                  la           gp, region_1+731 #start load_store_instr_stream_3
                  lhu          s0, -1(gp)
                  lbu          s6, -900(s9)
                  lw           s4, -3(t1)
                  lw           s5, -3(gp)
                  lb           a3, -518(s9)
                  sb           tp, 2(gp)
                  sb           a0, -9(s3)
                  sw           s0, 13(gp)
                  lh           s7, 3(t1)
                  sb           tp, -13(gp)
                  sb           s1, -1161(s9)
                  lh           a5, 26(s3)
                  sb           t6, 6(t1)
                  lhu          ra, 3(t1)
                  sw           gp, -1485(s9)
                  sb           t2, -15(t1)
                  lhu          s8, -5(gp)
                  sb           ra, -1688(s9)
                  sw           t1, -3(gp)
                  lhu          zero, -6(s3)
                  lbu          s2, -761(s9) #end load_store_instr_stream_1
                  sb           t3, 1(t1) #end load_store_instr_stream_2
                  sb           ra, 1(s3)
                  sb           s5, 11(gp)
                  lbu          a7, 6(gp) #end load_store_instr_stream_3
                  sb           t2, 45(s3) #end load_store_instr_stream_0
                  la           s4, region_0+305 #start riscv_load_store_hazard_instr_stream_0
                  sltiu        a7, a3, -288
                  lb           zero, 1374(s4)
                  lb           s8, 1374(s4)
                  lb           s11, 1374(s4)
                  sltu         a2, a4, t3
                  lb           t0, 1374(s4)
                  sb           t1, 1374(s4)
                  sb           a5, 1374(s4)
                  lb           a3, 1374(s4)
                  sb           s10, 1374(s4)
                  and          s2, s5, a7
                  lb           gp, 1374(s4)
                  sb           s0, 1374(s4)
                  lbu          t1, 1374(s4)
                  lbu          t3, 1616(s4)
                  lbu          a2, 1616(s4)
                  lbu          s2, 1616(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+531 #start riscv_load_store_rand_instr_stream_1
                  sub          a2, s5, t4
                  sb           t0, -1(sp)
                  lb           a4, -4(sp)
                  sra          a7, t0, t0
                  lb           t0, 8(sp)
                  slli         zero, a5, 9
                  lbu          s4, 10(sp)
                  lb           t0, 9(sp)
                  sll          s4, t6, s8
                  lh           t2, -1(sp)
                  lb           a4, -5(sp)
                  nop
                  sh           s6, 5(sp)
                  sll          s3, a0, s2
                  lhu          ra, -7(sp)
                  sb           t2, -14(sp)
                  slt          a5, a0, a1
                  sb           zero, 3(sp)
                  lbu          t6, -12(sp)
                  sltiu        a2, s5, -648
                  lh           s5, -9(sp)
                  sb           t5, -7(sp)
                  sh           s0, -9(sp)
                  lbu          t3, -16(sp)
                  sll          t4, a4, s10
                  lh           s9, 13(sp)
                  sltiu        s3, t3, -464
                  or           zero, s8, s3
                  lb           a1, -14(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_0+52 #start load_store_instr_stream_2
                  la           s5, region_0+458 #start load_store_instr_stream_0
                  la           t1, region_0+1872 #start load_store_instr_stream_1
                  la           s10, region_0+318 #start load_store_instr_stream_3
                  lbu          s3, 1183(s5)
                  lb           sp, 1013(s5)
                  lbu          t6, 121(a2)
                  lb           a5, 99(a2)
                  lhu          sp, -200(t1)
                  lb           a3, -40(a2)
                  lbu          sp, 251(s10)
                  lb           s9, 59(t1)
                  lh           s11, -52(s10)
                  lb           t6, 1483(s5)
                  lh           s9, 136(s10)
                  sb           t5, -214(t1)
                  sb           gp, -193(s10)
                  lbu          s0, 53(a2)
                  sb           s3, -208(s10)
                  lb           t2, 79(s10)
                  lw           t3, -240(t1)
                  lb           t6, 408(s5)
                  lbu          t6, -15(s10)
                  lb           t4, 157(a2)
                  lbu          s9, -207(t1)
                  lbu          tp, -228(t1) #end load_store_instr_stream_1
                  lbu          s9, 95(s5)
                  sb           t0, 97(a2)
                  lbu          s6, -247(s10)
                  lb           s6, 870(s5)
                  lh           s9, -86(s5)
                  lb           a3, 239(s10) #end load_store_instr_stream_3
                  lb           a3, 414(s5)
                  lb           a6, 105(a2) #end load_store_instr_stream_2
                  lbu          zero, 752(s5) #end load_store_instr_stream_0
                  la           a5, region_0+1192 #start riscv_load_store_rand_instr_stream_0
                  or           s9, s0, t6
                  addi         a7, a2, -622
                  slt          sp, t3, t5
                  xori         s2, a3, 785
                  srai         a6, a6, 9
                  srai         a7, tp, 24
                  xori         gp, tp, -1287
                  sh           a7, 174(a5)
                  srl          s0, a3, a6
                  sltiu        s3, s10, 20
                  srai         zero, s11, 15
                  sb           t6, 581(a5)
                  slt          t6, s3, a1
                  or           s11, t3, a1
                  lhu          s9, -1180(a5)
                  slli         a1, gp, 30
                  add          s2, s8, s9
                  sll          s2, s9, s7
                  lb           t2, -422(a5)
                  sub          t1, t2, t1
                  lb           s6, 10(a5)
                  lbu          a1, -880(a5)
                  sb           t4, -271(a5)
                  lhu          a7, -842(a5)
                  lbu          s11, 162(a5)
                  sltu         s2, s8, s9
                  xori         s4, s10, 1146
                  slti         gp, t6, -172
                  srl          tp, t2, s7
                  lb           s9, 383(a5)
                  sltu         a3, s8, t3
                  sub          a6, s6, sp
                  andi         a3, s8, -1470
                  ori          s11, zero, 1976
                  lb           t0, -69(a5)
                  lb           t3, -588(a5)
                  andi         s5, s10, 788
                  lhu          a7, 218(a5)
                  lb           a4, -477(a5) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+1575 #start riscv_load_store_hazard_instr_stream_1
                  lbu          zero, 1(s0)
                  sb           a3, 1(s0)
                  slti         a7, s8, -1538
                  lb           s8, 1(s0)
                  srl          s10, ra, a4
                  slti         gp, ra, -966
                  or           ra, s4, tp
                  sltiu        a3, s0, -129
                  sh           a6, 1(s0)
                  sw           t3, 1(s0)
                  lb           s8, 1(s0)
                  lw           a1, 1(s0)
                  sh           sp, 1(s0)
                  lb           s3, 1(s0)
                  lbu          ra, -5(s0)
                  sb           ra, -5(s0) #end riscv_load_store_hazard_instr_stream_1
                  addi         zero, s9, 825
                  and          s11, sp, s4
                  slli         t2, a5, 20
                  slt          t0, t3, t0
                  bne          t0, ra, 12f
                  or           tp, tp, a1
                  blt          a6, ra, 11f
                  ori          ra, sp, -121
                  srl          tp, t2, s5
                  slti         a3, a2, 737
                  ori          s7, s7, -39
11:               srl          a3, t6, s9
12:               auipc        s0, 1007853
                  auipc        tp, 561414
                  slt          t0, s4, s9
                  blt          a0, t0, 22f
                  slti         t6, s7, 992
                  and          sp, s4, s7
                  and          s6, t5, s2
                  bge          t4, s2, 34f
                  srl          zero, t0, a1
                  beq          s8, s9, 29f
22:               srai         s11, t4, 29
                  sltiu        a6, s4, 1126
                  sltu         sp, a3, a3
                  ori          s10, s11, 1899
                  bgeu         a2, s0, 39f
                  bge          s7, t2, 41f
                  srai         s2, t1, 6
29:               andi         t0, s11, 1031
                  sub          s9, tp, s0
                  bgeu         t1, t4, 51f
                  lui          a5, 618168
                  slli         s11, s8, 1
34:               or           t6, s1, t5
                  andi         t2, t0, -1807
                  sltiu        ra, s9, -705
                  sltu         t1, t1, a3
                  beq          s6, t0, 45f
39:               bgeu         a0, t0, 46f
                  ori          t2, s3, 227
41:               nop
                  nop
                  sltiu        ra, s5, -522
                  slti         a6, s9, -515
45:               sub          sp, s3, zero
46:               srli         t3, sp, 4
                  xori         t4, t6, 1126
                  sltiu        a3, a2, 832
                  sra          t3, s0, t5
                  bgeu         s10, s10, 53f
51:               xori         a3, gp, -642
                  bgeu         t4, tp, 56f
53:               sltu         t3, gp, a3
                  srl          a7, gp, t0
                  auipc        t2, 645756
56:               addi         sp, a3, 1553
                  sll          s5, s2, sp
                  sub          a3, tp, a0
                  bltu         a3, s4, 62f
                  beq          t1, t6, 64f
                  bne          t5, ra, 71f
62:               nop
                  sra          a7, s1, s8
64:               xori         s5, tp, -1512
                  sra          a5, a5, tp
                  slli         a4, t1, 22
                  slti         t4, s1, -1335
                  xori         t4, a4, 246
                  nop
                  or           t2, t2, s4
71:               xori         sp, gp, 1521
                  slt          a4, t2, s9
                  and          zero, a7, s7
                  lui          s11, 637390
                  andi         s10, s2, -1614
                  sra          a4, a4, s2
                  sltiu        s3, s2, 423
                  andi         a5, s8, -516
                  nop
                  or           gp, s1, a5
                  xor          ra, t4, t0
                  xori         sp, zero, -287
                  andi         s10, s7, 1422
                  add          s10, a6, s1
                  ori          zero, a7, -1633
                  srai         a3, t1, 1
                  nop
                  bne          gp, s3, 95f
                  bne          t0, s1, 98f
                  add          s2, a7, zero
                  bne          s10, a6, 99f
                  andi         s3, a6, -435
                  xori         s11, t2, 851
                  nop
95:               xor          a4, s11, t0
                  lui          a1, 369293
                  sub          gp, s1, a0
98:               add          zero, a4, s11
99:               sltiu        s6, zero, -1074
                  sll          s4, s10, a5
                  nop
                  sltu         s0, t1, sp
                  slti         a4, a6, -731
                  blt          a5, gp, 123f
                  and          s8, a4, a7
                  andi         s3, t0, -1929
                  sltu         a1, s3, a6
                  addi         s5, s1, -1008
                  srai         s9, t6, 29
                  blt          a0, s7, 120f
                  srai         s5, a6, 23
                  auipc        ra, 622184
                  blt          t4, t6, 133f
                  and          t1, s1, gp
                  sltu         a3, s5, s11
                  lui          a5, 9268
                  xori         zero, t5, -1017
                  slli         s9, s4, 21
                  srli         t4, s0, 2
120:              xor          s5, s6, a2
                  and          s11, t0, t1
                  auipc        s4, 176060
123:              nop
                  sltu         a1, zero, s2
                  bne          a3, t6, 141f
                  sltu         a4, a4, a4
                  nop
                  bltu         t0, ra, 143f
                  nop
                  sltu         s3, t2, s9
                  sll          a2, t4, gp
                  sra          s11, s5, a5
133:              sltu         t6, a1, t6
                  sub          s5, t2, t3
                  sll          t6, a4, s4
                  andi         t3, s3, -1475
                  nop
                  or           a4, a3, s10
                  ori          s6, a4, 1637
                  addi         s6, a7, -120
141:              slli         s9, s10, 29
                  auipc        zero, 784156
143:              addi         ra, t6, -442
                  bne          s10, t6, 164f
                  sltiu        gp, a1, 1140
                  srai         tp, s10, 14
                  bne          zero, t6, 155f
                  addi         a1, a3, -318
                  xori         s7, a5, 1880
                  sra          s6, t2, a5
                  beq          ra, a1, 156f
                  beq          t5, zero, 154f
                  srli         t2, a7, 7
154:              or           zero, s8, a3
155:              xor          t0, a3, s4
156:              slti         a2, a4, -394
                  bgeu         s10, a1, 160f
                  slti         ra, zero, -1620
                  andi         a7, s3, 122
160:              slli         s0, s9, 6
                  and          s2, a0, a7
                  sra          t6, a3, s9
                  addi         t0, zero, 1574
164:              and          s10, s4, t2
                  sll          s6, s9, s5
                  slti         a6, s7, 812
                  slli         s3, a3, 0
                  slti         s2, s1, 167
                  sltu         sp, t6, a2
                  nop
                  sub          a2, a2, s10
                  slli         s10, tp, 9
                  slt          t2, tp, t5
                  auipc        t2, 502801
                  xori         t0, t2, -476
                  bgeu         a3, s0, 180f
                  bne          s4, sp, 185f
                  bltu         a4, t1, 192f
                  or           a2, s6, a2
180:              ori          a7, s2, 264
                  sltu         a5, a5, a5
                  srl          t1, s0, t4
                  bltu         s11, s10, 199f
                  bltu         t5, s8, 193f
185:              sltiu        s4, a4, -1561
                  auipc        a2, 993324
                  bgeu         t1, zero, 195f
                  sltiu        s2, t5, 1953
                  srl          a2, s1, tp
                  slt          s3, s3, t3
                  slli         s4, s4, 13
192:              bltu         a0, t4, 202f
193:              slt          s5, t2, zero
                  beq          a0, s11, 199f
195:              srai         s0, a1, 7
                  sub          s2, t2, t0
                  sltu         s6, s6, ra
                  slti         s8, s9, -1096
199:              nop
                  and          a7, t6, s7
                  srli         s7, s8, 2
202:              blt          s9, s6, 222f
                  bgeu         a0, t4, 210f
                  sll          s0, s9, s8
                  addi         s11, t4, -2008
                  beq          t4, a3, 210f
                  bltu         s2, a5, 227f
                  nop
                  ori          a7, a5, 1420
210:              or           a5, tp, t5
                  bne          s5, s6, 213f
                  bgeu         s1, s7, 220f
213:              srai         t3, ra, 25
                  nop
                  blt          t4, t4, 230f
                  lui          s2, 113114
                  bgeu         s7, s9, 225f
                  sltiu        s6, sp, 922
                  sll          s4, s6, a2
220:              sll          s8, t1, a2
                  sub          sp, s4, s8
222:              add          a7, tp, t3
                  bne          s2, s7, 230f
                  addi         a1, s11, 63
225:              sltu         t1, s5, ra
                  xori         t0, t0, -895
227:              xor          t2, s6, zero
                  sll          a4, a2, zero
                  srl          t3, ra, s0
230:              lui          a5, 364447
                  sub          a7, t6, t4
                  slli         t1, s2, 14
                  bne          t3, a1, 237f
                  bge          s9, ra, 241f
                  add          t4, s11, s11
                  srli         t4, t1, 20
237:              sltu         sp, t6, a7
                  slli         t3, s0, 18
                  blt          a5, s11, 243f
                  blt          s4, a2, 243f
241:              lui          s2, 551545
                  andi         a4, t3, -1437
243:              add          a3, t3, a7
                  slli         t4, s8, 18
                  and          t2, a7, s0
                  sll          t2, sp, a2
                  lw           ra, 4(a0)
                  slli         s9, s11, 25
                  and          s6, gp, s6
                  lui          zero, 26309
                  ori          s7, t6, -137
                  slli         t3, a6, 15
                  add          s7, a3, a2
                  addi         a0, a0, 20
                  and          gp, a5, s3
438:              addi x29, x1, 1
438:              jalr x29, x29, 0
sub_1:            sra          a5, a7, t2
                  sra          s10, s8, s7
                  sll          s7, s10, t5
                  bltu         tp, gp, sub_1_stack_p
                  nop
sub_1_stack_p:    addi         a0, a0, -48
                  add          a2, s3, t0
                  nop
                  sw           ra, 4(a0)
                  sltiu        tp, s2, -1048
                  ori          t1, s8, 387
                  la           t1, region_1+793 #start riscv_load_store_rand_instr_stream_2
                  add          zero, s2, a0
                  sh           a0, 5(t1)
                  lb           s11, 8(t1)
                  and          s9, a4, a0
                  lui          s4, 746798
                  sh           ra, 1(t1)
                  lb           gp, 5(t1)
                  ori          s11, a7, 1857
                  or           s11, a0, a0
                  slti         s9, t3, -1614
                  lui          a1, 326666
                  srai         t4, s9, 25
                  srli         s9, s3, 22
                  lh           s2, -5(t1)
                  slli         ra, t3, 18
                  lh           t0, -1(t1)
                  lbu          ra, -6(t1)
                  xori         s5, a2, 1505
                  lb           a4, -7(t1)
                  srl          t3, t1, a2
                  sw           t6, 7(t1)
                  auipc        a1, 129794
                  sll          s4, gp, sp
                  lb           a5, 12(t1)
                  sw           a4, -1(t1)
                  sll          a6, s10, s5
                  lb           a6, 16(t1)
                  lb           a5, -8(t1)
                  slli         s11, s0, 5
                  lbu          s4, -3(t1)
                  lhu          a4, 13(t1)
                  lbu          a4, -3(t1)
                  sb           a5, -11(t1)
                  sh           t6, -5(t1)
                  or           s2, a3, s4
                  sb           t6, -12(t1) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+909 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t4, s10, -1847
                  and          a4, tp, gp
                  lbu          a5, 102(a3)
                  sb           a7, 25(a3)
                  lh           t4, 59(a3)
                  srl          gp, s7, t5
                  srli         s9, sp, 21
                  xori         t2, s1, 1865
                  sb           s11, 198(a3)
                  lb           s11, -170(a3)
                  sb           zero, -98(a3)
                  srli         t4, s9, 7
                  and          s0, s2, s0
                  srai         t3, a3, 6
                  sb           s0, -67(a3)
                  sltiu        t3, s4, 1872
                  sltiu        s2, s4, 1884
                  lb           a1, 182(a3)
                  sll          s2, s10, t6
                  sb           sp, 130(a3)
                  sltu         t3, s5, t1
                  lb           s3, 227(a3)
                  slli         s3, s6, 20
                  srai         s10, a1, 21
                  sw           a2, -41(a3)
                  sb           t3, 206(a3)
                  lbu          s4, -188(a3)
                  sh           a6, 1(a3)
                  lb           s5, -182(a3)
                  lb           s4, 110(a3)
                  sh           s9, -137(a3)
                  nop
                  lh           t3, -37(a3)
                  sb           s6, -82(a3)
                  sltiu        a4, s3, -1443
                  sb           s5, 252(a3)
                  slt          a7, t0, s1
                  sra          s11, a6, a3
                  lb           a4, 104(a3)
                  lb           s3, -74(a3)
                  or           s0, tp, ra
                  lb           s8, -62(a3)
                  lbu          s4, 141(a3)
                  slt          s2, t5, s8
                  slti         s11, s6, 89
                  sh           a4, -97(a3) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_0+1074 #start load_store_instr_stream_2
                  la           a5, region_0+923 #start load_store_instr_stream_1
                  la           s5, region_0+1917 #start load_store_instr_stream_0
                  lbu          s6, -103(s2)
                  lb           s0, 34(s5)
                  lbu          t1, -85(s2)
                  sb           s10, 7(a5)
                  sb           t4, -18(s5)
                  lh           s9, 53(s5)
                  lbu          s9, -72(s2)
                  sb           gp, 197(s2)
                  lb           s11, -12(a5)
                  lb           sp, 2(a5)
                  lhu          a1, 240(s2)
                  lb           tp, 55(s5)
                  lbu          tp, 175(s2) #end load_store_instr_stream_2
                  lb           ra, -62(s5)
                  sb           s5, 14(a5)
                  sb           s4, -14(a5) #end load_store_instr_stream_1
                  sh           s9, 25(s5) #end load_store_instr_stream_0
                  la           s4, region_0+1056 #start riscv_load_store_hazard_instr_stream_0
                  sb           s0, 57(s4)
                  sb           t2, 57(s4)
                  lb           t4, 57(s4)
                  lbu          s2, 57(s4)
                  sb           s7, 57(s4)
                  sb           s11, 57(s4)
                  lb           zero, 57(s4)
                  sb           a2, 57(s4)
                  sb           s11, 57(s4)
                  lbu          s3, 57(s4)
                  slt          t1, zero, s1
                  sb           s4, 57(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_0+593 #start riscv_load_store_rand_instr_stream_0
                  sh           t4, -7(s5)
                  lb           a2, -16(s5)
                  sb           t6, 16(s5)
                  sll          s2, ra, a1
                  ori          t3, sp, -1926
                  and          a1, a2, t3
                  srai         s10, s8, 14
                  sb           t4, -10(s5)
                  sb           s11, 16(s5)
                  andi         a3, s6, 225
                  add          gp, s10, t4
                  sltu         a4, gp, s2
                  slt          t4, s3, s2
                  lbu          s7, -14(s5)
                  srai         a4, s2, 16
                  nop
                  sra          ra, a2, t1
                  lbu          a3, -12(s5)
                  sra          a1, a0, zero
                  add          t0, a3, a3
                  slli         gp, ra, 15
                  sw           s8, -1(s5)
                  xor          a3, s6, s7
                  lh           a5, -11(s5)
                  lui          tp, 206738
                  addi         a1, s0, 626
                  lbu          t2, -16(s5)
                  sltiu        t1, s9, 1904
                  xor          s2, s3, s2
                  ori          t3, s1, -499
                  srli         a2, a6, 4
                  andi         zero, t4, 1518
                  lhu          a3, 3(s5)
                  sll          a1, zero, a2
                  slli         a7, a7, 30
                  lui          t2, 850131
                  andi         a4, s10, -1970
                  srl          s3, a1, zero
                  or           a6, sp, a5
                  sb           a4, 0(s5)
                  lhu          zero, -1(s5)
                  add          a5, s3, a3
                  ori          a6, a1, -3
                  lbu          tp, -10(s5)
                  lhu          s4, -9(s5)
                  lb           a7, -5(s5) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+1619 #start riscv_load_store_hazard_instr_stream_2
                  sb           s10, 2(a3)
                  sh           s5, 25(a3)
                  lbu          a7, -45(a3)
                  lbu          t1, -45(a3)
                  lhu          a7, -45(a3)
                  lbu          s4, -45(a3)
                  lh           zero, -41(a3)
                  sb           a3, 16(a3)
                  lbu          a7, 16(a3)
                  lhu          gp, 47(a3)
                  srai         a4, s2, 23
                  lb           s6, 38(a3)
                  sb           t2, 48(a3)
                  lb           ra, 48(a3)
                  sb           a1, -50(a3)
                  lbu          tp, -28(a3)
                  sb           s7, -64(a3)
                  lbu          t2, 25(a3)
                  sw           s3, 25(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           s6, region_0+956 #start load_store_instr_stream_1
                  la           a1, region_0+35 #start load_store_instr_stream_2
                  lbu          s11, 1649(a1)
                  la           sp, region_0+1181 #start load_store_instr_stream_0
                  sb           a0, 9(sp)
                  sb           zero, 5(sp)
                  sb           a1, 1803(a1)
                  sb           a0, 187(a1)
                  lb           tp, -17(s6)
                  sb           t3, -335(s6)
                  lbu          tp, -703(s6)
                  sb           s10, 1858(a1)
                  sh           a3, 7(sp)
                  lbu          t3, 330(a1)
                  lbu          tp, 4(sp)
                  lbu          s7, 9(s6)
                  lb           s2, -703(s6)
                  lh           t3, 27(a1) #end load_store_instr_stream_2
                  lbu          gp, 226(s6) #end load_store_instr_stream_1
                  sb           t1, -12(sp)
                  lh           s0, -13(sp) #end load_store_instr_stream_0
                  srai         a4, t0, 23
                  slli         s6, s0, 15
                  sll          ra, s7, s2
                  slti         a2, s4, -1726
                  sltiu        a1, s10, -176
                  or           s4, t4, t1
                  addi         s5, s2, 707
                  bltu         a1, t5, 24f
                  blt          t6, a5, 19f
                  add          a3, a4, a1
                  andi         s4, s4, 35
                  addi         a3, s6, 427
                  blt          tp, tp, 15f
                  or           a2, s8, t5
                  beq          a5, t6, 19f
15:               bge          a5, s8, 28f
                  bne          s3, a1, 21f
                  addi         s2, a7, 164
                  srl          s9, t0, s3
19:               xori         s4, t2, 196
                  sll          t3, a7, t0
21:               sltiu        t4, s3, -1183
                  bltu         a6, s2, 26f
                  slli         s4, a7, 18
24:               srli         s10, a0, 16
                  beq          gp, s6, 29f
26:               andi         s3, s5, 859
                  sub          tp, a3, t2
28:               slti         s4, s1, 457
29:               xor          s6, s7, s5
                  sll          a2, s10, a6
                  lui          ra, 315700
                  slli         gp, a1, 30
                  sra          ra, gp, s11
                  addi         a5, s6, 185
                  blt          s5, ra, 46f
                  addi         s2, zero, -967
                  and          t0, s7, a1
                  sltiu        a4, t6, 1046
                  auipc        sp, 151975
                  nop
                  auipc        a7, 487883
                  slti         gp, ra, -1897
                  sltiu        s8, t2, 1816
                  and          a4, s11, s6
                  sub          s9, s4, a7
46:               ori          t6, s10, -1591
                  sra          a5, s6, tp
                  srli         tp, a0, 24
                  bgeu         a4, s10, 52f
                  slti         tp, s1, -102
                  andi         t4, t6, 648
52:               or           a5, tp, s4
                  addi         s11, a7, -417
                  bgeu         s8, a2, 71f
                  srli         a2, tp, 7
                  lui          zero, 674223
                  beq          s10, s5, 66f
                  beq          s11, a0, 74f
                  slt          s9, t5, s0
                  ori          t4, a3, 907
                  auipc        t0, 557550
                  sltu         ra, a6, a4
                  auipc        s9, 26099
                  xori         tp, s3, 232
                  bge          s10, s5, 69f
66:               sra          s5, ra, zero
                  srli         t3, a7, 1
                  bgeu         t5, s4, 87f
69:               nop
                  and          t3, s3, ra
71:               beq          s2, a5, 88f
                  slti         s8, a6, 1956
                  lui          s7, 387589
74:               andi         s3, s11, 1979
                  bge          s2, s11, 94f
                  srl          zero, a5, s4
                  slt          s6, a0, s3
                  nop
                  nop
                  bltu         a5, a3, 90f
                  xor          s7, t5, a1
                  or           t6, a0, sp
                  or           a3, a4, s7
                  auipc        s5, 788937
                  sub          t1, s9, t0
                  lui          s5, 933400
87:               srl          tp, sp, a0
88:               addi         a1, s0, -674
                  bltu         s10, sp, 98f
90:               ori          t1, s9, -11
                  bge          s11, s7, 103f
                  sltiu        sp, t4, 324
                  ori          t1, ra, 1677
94:               add          t0, t5, s6
                  addi         s10, sp, 1591
                  bgeu         s5, s8, 115f
                  xor          a2, t3, s9
98:               sra          s11, s8, s0
                  bgeu         a0, a1, 106f
                  sll          zero, t5, s10
                  sll          gp, a3, a6
                  add          ra, s5, s0
103:              and          a6, s3, s10
                  slt          s6, t1, a2
                  and          t0, a0, a7
106:              sltiu        a5, t2, 1452
                  xor          s11, s9, a4
                  slti         a1, a5, -664
                  xor          s7, zero, gp
                  sra          t6, a5, s6
                  sll          a5, a0, t1
                  or           t1, a2, t3
                  sub          s2, a2, a0
                  andi         a1, t1, 1739
115:              ori          a2, s3, 1466
                  bne          a6, gp, 130f
                  xor          s10, s6, s0
                  auipc        a7, 364256
                  beq          a6, a0, 138f
                  bne          ra, s6, 135f
                  xori         gp, s6, 1948
                  andi         s0, s8, -718
                  srli         tp, a2, 14
                  and          s10, t0, a1
                  and          s2, a4, a7
                  sub          s11, ra, t2
                  blt          t3, a3, 139f
                  ori          t0, t1, -1364
                  nop
130:              sll          tp, sp, a5
                  bne          t2, s11, 136f
                  sra          a4, s1, tp
                  or           s7, ra, s9
                  sltiu        t3, a6, -1772
135:              srl          s7, s4, t3
136:              bgeu         a5, s1, 152f
                  add          s0, a5, t4
138:              bge          s10, a0, 153f
139:              sltu         zero, s7, ra
                  sub          t3, sp, t5
                  bgeu         s7, s4, 148f
                  add          s6, tp, s4
                  xori         a6, s8, -933
                  auipc        a4, 549953
                  xori         a7, s6, 1975
                  srli         s11, t5, 14
                  sltu         s11, t0, t2
148:              or           gp, t4, a7
                  sub          a6, t3, a6
                  sltiu        sp, a6, 2020
                  and          ra, tp, t2
152:              bgeu         t1, a5, 156f
153:              auipc        a7, 956176
                  slt          a2, a0, a3
                  srl          s5, t2, t5
156:              slli         sp, s2, 26
                  srli         s8, s7, 28
                  bne          t6, s1, 177f
                  ori          tp, t3, 1847
                  and          a4, s10, s8
                  sltiu        t0, a1, 1574
                  bge          s0, t5, 165f
                  blt          gp, s3, 172f
                  sra          s6, t1, s4
                  la           sp, region_0+1447 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a1, 62(sp)
                  sb           t0, 233(sp)
                  nop
                  sra          s4, gp, sp
                  sh           t3, -197(sp)
                  ori          t0, ra, 426
                  sh           s11, 87(sp)
                  sll          s10, t2, s7
                  sh           a1, -79(sp)
                  lbu          s3, 183(sp)
                  sra          t6, zero, sp
                  lh           a6, 183(sp)
                  lbu          s8, -188(sp)
                  lbu          a2, -188(sp)
                  lw           s10, -35(sp)
                  ori          a1, s5, 72
                  lb           tp, 52(sp)
                  and          a5, t4, s11
                  sb           a7, 52(sp)
                  lb           a1, 52(sp)
                  sb           sp, 30(sp)
                  lbu          a2, 30(sp)
                  sb           s3, -144(sp)
                  lb           t1, 110(sp)
                  sb           s5, 110(sp)
                  sh           a0, -71(sp)
                  lh           s9, 11(sp) #end riscv_load_store_hazard_instr_stream_1
165:              nop
                  bltu         s8, a7, 181f
                  sltiu        s7, t4, 835
                  slli         a4, a6, 20
                  srli         a3, t2, 5
                  auipc        t3, 579298
                  andi         t4, tp, -1369
172:              blt          a6, a4, 183f
                  sltiu        t3, s7, -1338
                  slli         s4, a7, 19
                  srai         t6, a5, 19
                  add          s11, a1, zero
177:              xori         a7, s5, -160
                  lui          zero, 880490
                  sltiu        s8, t2, -1750
                  bgeu         t5, t4, 192f
181:              bgeu         a7, s1, 197f
                  slli         t2, t4, 26
183:              bge          t1, a2, 192f
                  bge          a0, s10, 200f
                  srl          s2, t6, s8
                  auipc        zero, 51643
                  and          s11, a3, a0
                  slt          t6, t0, s6
                  bge          t0, a0, 196f
                  or           s9, s8, a5
                  auipc        s11, 419365
192:              addi         gp, tp, -1924
                  srl          s9, a5, s6
                  sltu         s3, s4, a0
                  xor          a6, a4, t6
196:              add          tp, s5, ra
197:              beq          a0, ra, 202f
                  sltiu        a4, s11, 791
                  addi         s10, s0, 74
200:              slti         s4, s3, -1881
                  sltiu        t3, a1, 569
202:              srl          a4, t6, tp
                  auipc        t4, 169254
                  andi         sp, zero, 1791
                  nop
                  xori         s4, t0, -1493
                  lui          a3, 591987
                  add          sp, tp, t3
                  bne          t3, t6, 219f
                  or           a2, t1, a3
                  sltu         s3, s0, s1
                  auipc        a3, 883819
                  lui          ra, 884597
                  sltiu        t2, a6, -1382
                  lui          s7, 423873
                  xori         s5, t4, 1016
                  slli         t1, s4, 6
                  srli         zero, s4, 17
219:              sra          t4, s3, a6
                  nop
                  ori          t6, a5, -1492
                  srai         t0, a2, 11
                  srli         s10, s4, 11
                  or           a3, ra, a3
                  beq          a2, a0, 242f
                  slt          t4, s0, a1
                  ori          s4, sp, 1302
                  sltu         tp, s2, t4
                  addi         s3, a1, 962
                  lui          a5, 973251
                  auipc        a2, 977791
                  auipc        a1, 52921
                  srli         s11, a6, 9
                  srli         s11, t5, 29
                  add          a7, s1, zero
                  slli         a3, ra, 21
                  addi         a6, a4, -1071
                  bgeu         a5, ra, 257f
                  sll          s8, s5, zero
                  sltu         s0, s5, s9
                  srl          a1, sp, gp
242:              sltiu        t3, s8, 79
                  lui          s0, 447718
                  and          s5, t1, t6
                  blt          t3, s9, 248f
                  nop
                  or           s11, a4, s8
248:              bne          s8, a4, 261f
                  nop
                  srai         a7, a0, 27
                  beq          s4, s6, 265f
                  ori          sp, s8, -1017
                  sra          t3, t3, s2
                  sll          s2, s8, a4
                  sub          t4, s3, t1
                  bltu         s2, a5, 273f
257:              sub          s5, sp, s11
                  bgeu         a5, a4, 265f
                  or           a2, zero, t2
                  lui          s6, 129116
261:              xor          a5, a2, a2
                  xor          t1, ra, t3
                  sra          s7, a5, a2
                  blt          a0, t4, 269f
265:              beq          a0, s0, 280f
                  sll          a5, ra, s4
                  slt          s7, a3, a0
                  addi         a1, s5, 2007
269:              bltu         a0, t1, 274f
                  auipc        s9, 1034480
                  nop
                  xori         tp, s3, -558
273:              addi         ra, s9, 420
274:              xori         s5, a6, -639
                  add          t1, ra, s11
                  srl          a7, zero, s0
                  auipc        t1, 259973
                  srai         s3, s10, 4
                  srli         s2, t3, 7
280:              or           s2, s1, a6
                  bgeu         t3, a4, 298f
                  beq          s0, s3, 301f
                  xor          s10, s9, a1
                  andi         s0, t6, 1394
                  add          t0, s6, a1
                  sll          s3, s10, a3
                  and          a3, ra, s4
                  xor          s5, s6, gp
                  bne          a3, a1, 293f
                  srl          t1, a7, ra
                  sltu         s3, a1, a1
                  lui          gp, 527943
293:              addi         s5, t5, 402
                  sltu         t2, s6, a5
                  auipc        s8, 197287
                  beq          s6, gp, 315f
                  slti         a1, a0, 1066
298:              blt          a6, t0, 310f
                  or           a7, zero, a0
                  sltu         t4, t3, a0
301:              bgeu         s8, s4, 305f
                  bne          s5, t2, 313f
                  nop
                  sra          a5, t5, t6
305:              lui          a3, 650630
                  slt          t3, ra, a4
                  andi         s6, s6, 592
                  bgeu         a6, gp, 325f
                  slli         t2, t5, 9
310:              lui          t3, 464119
                  ori          sp, t5, -1545
                  blt          a6, s6, 331f
313:              srai         s4, tp, 3
                  andi         t0, s4, 649
315:              slti         a4, t2, 924
                  bne          s6, a5, 326f
                  nop
                  sll          a5, t6, a4
                  xori         s3, t1, 587
                  srl          t6, t1, s8
                  auipc        s4, 975114
                  srli         a1, t6, 27
                  sltiu        s11, s4, 1512
                  and          t4, s6, tp
325:              ori          t6, tp, -432
326:              xor          s0, t6, a3
                  sub          a2, a2, t2
                  andi         t3, s11, -1352
                  lui          t1, 640732
                  slli         s4, s8, 24
331:              bne          gp, s10, 344f
                  bne          s8, s5, 351f
                  ori          s8, t5, -589
                  addi         zero, s9, 733
                  bne          s9, ra, 339f
                  bgeu         a4, t1, 343f
                  bltu         a6, a3, 349f
                  slli         t1, a6, 9
339:              srl          s9, s2, s0
                  addi         zero, s4, -641
                  la           s2, region_1+1924 #start load_store_instr_stream_3
                  la           s10, region_1+677 #start load_store_instr_stream_0
                  lhu          s9, -3(s10)
                  la           s3, region_1+1138 #start load_store_instr_stream_2
                  lb           s11, -1817(s2)
                  la           a4, region_1+1664 #start load_store_instr_stream_1
                  lb           a7, 132(s3)
                  lb           a5, -7(a4)
                  sb           a1, -2(s10)
                  lb           s5, 213(s3)
                  lbu          s0, -242(s3)
                  lb           a2, -5(a4)
                  lh           s6, -250(s2)
                  sb           s10, 5(s3)
                  lhu          s7, -59(s10)
                  sb           tp, 13(a4)
                  sh           a5, -59(s10)
                  sw           a3, 242(s3)
                  lbu          t6, -14(a4)
                  sb           t3, 3(a4)
                  lbu          zero, -1573(s2)
                  lb           sp, -1425(s2)
                  lhu          s9, -15(s10)
                  lb           a5, 11(a4)
                  lb           ra, -59(s10)
                  lh           s8, -2(a4)
                  lb           gp, -222(s3)
                  lbu          s9, -34(s10)
                  lbu          s0, -94(s3)
                  sb           s5, 15(a4)
                  lw           s0, 226(s3)
                  sh           s0, -214(s3)
                  lb           t2, 13(a4) #end load_store_instr_stream_1
                  sb           tp, -757(s2) #end load_store_instr_stream_3
                  lb           a5, 28(s10)
                  lbu          t2, -232(s3) #end load_store_instr_stream_2
                  lb           a6, -18(s10) #end load_store_instr_stream_0
                  slli         a4, s5, 11
                  sltiu        a3, tp, -342
343:              or           s4, a6, s8
344:              bltu         s10, a3, 363f
                  and          t4, ra, zero
                  bge          a6, t4, 357f
                  xori         sp, ra, -1040
                  sub          t6, sp, tp
349:              nop
                  lui          s8, 62567
351:              srli         a2, t4, 11
                  lui          s2, 227887
                  sll          a4, t2, a4
                  and          s6, t0, s11
                  auipc        s6, 577749
                  sltu         t6, a6, t1
357:              bne          s1, s7, 366f
                  nop
                  sltu         t3, tp, t5
                  srl          zero, t6, s3
                  slti         s3, a4, -1447
                  bltu         tp, s1, 366f
363:              sltiu        sp, s10, 1808
                  slt          a5, t3, gp
                  blt          s9, s10, 366f
366:              ori          s5, s8, 2016
                  lw           ra, 4(a0)
                  xori         s2, a6, 492
                  sub          s6, gp, s0
                  slt          a6, s0, t4
                  sll          tp, s8, zero
                  slt          tp, s7, a4
                  srl          t6, s5, s7
                  addi         a0, a0, 48
                  addi         t6, s7, 876
657:              addi x3, x1, 1
657:              jalr x3, x3, 0
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
.word 0x422dad30, 0x516458b0, 0x371cdb78, 0x6ee1a826, 0x80f24e7f, 0x561511f1, 0xbcb6ecc0, 0x26a0275d
.word 0x4da4d14b, 0x2e27f07d, 0x08bafd5e, 0xc785d2ef, 0x3fea1f8a, 0x7cbf3409, 0xc1ba41a8, 0x6bf5446d
.word 0x33554c90, 0x3db94fcf, 0xa016a30f, 0xe9186469, 0x8904bbae, 0xe86a778e, 0x6e99fea5, 0x80382956
.word 0xa3173f34, 0xeefd1494, 0x24b7d488, 0x6e237028, 0x2b1ecf0a, 0x0d61c0cb, 0x74f008f6, 0xaae03bdc
.word 0x9f4b319d, 0xf93858b5, 0xa394e431, 0x1e219123, 0x753c8a70, 0x0cce6076, 0x7c4721b3, 0xc9ee8bca
.word 0x55388e8e, 0x3d62a467, 0x9a12a2c8, 0x3e055ef9, 0xb621d0ad, 0xcbaa230a, 0x5809c63a, 0x930224c1
.word 0xfbc4eaa5, 0xc1ff9203, 0xb2cb8ec4, 0x903f7e18, 0x698839f3, 0xc77d7ff6, 0xa591a032, 0x3ecdcfbb
.word 0x820e2612, 0xab86ab2b, 0x7c731b84, 0x5eff2bf3, 0x856ddadd, 0xab6a8fa1, 0x8803b700, 0x780bd438
.word 0xeb8c5bb1, 0xb95d3e37, 0xcca3d18e, 0xf3ebc075, 0x80fc349f, 0x1debe155, 0xbe5ff19a, 0x56c9c1a9
.word 0x5b817123, 0x28d9b07b, 0xa7dc8c74, 0x0d0cbdf6, 0xe9cc4e8e, 0x24ae2ad5, 0xc4c3d04a, 0xa5c60ac8
.word 0xfc9d948e, 0xe4e3c131, 0xfb4d7ded, 0xa56bbc5c, 0x738da124, 0xf30af8a8, 0x421e845f, 0xcc456221
.word 0xcc5971c4, 0xc898f107, 0x26445529, 0xcb5ae368, 0x90e87319, 0xce83b8bb, 0xd2c828a2, 0x8b12f9ed
.word 0x81224ff3, 0xe5318825, 0x44fb89db, 0x55112b3d, 0x457bc140, 0x2491d0d2, 0x5edd73dd, 0x7fa67d6f
.word 0xbbf9dfad, 0x13cf7752, 0xa1625152, 0x37b541b1, 0x0e6c9baa, 0xbf9c52d8, 0x2371c1f4, 0xe3934faa
.word 0x8f5aa208, 0x1a033a09, 0x3ab91799, 0x81fd6135, 0x9d4a6d41, 0x48319b0c, 0xe23e3c5f, 0x3ca5d33d
.word 0x3307ae31, 0x756854c3, 0x13389d5e, 0xbc32844a, 0x850e9c05, 0xb2937577, 0x20ca0430, 0xe0a34528
.word 0xf50e400d, 0x54f574cf, 0x93addbab, 0xd4a6d466, 0x01a07c4f, 0xdf0f6032, 0x9f2b3b49, 0x625fc98f
.word 0x99cce5cf, 0x68670082, 0x56998bef, 0x96a61e5a, 0x946151e1, 0x62b34879, 0x9e963065, 0x996405ff
.word 0xaf1bd73e, 0x5b052090, 0x271c8500, 0x2080d95c, 0x3f330634, 0xcfc697e9, 0x2c6f3596, 0xe16e9196
.word 0x717c3655, 0xd4a6a5da, 0x874ead3c, 0x34e3491e, 0x45f19a15, 0x4c97fd9a, 0xa045607d, 0x23b62e27
.word 0xd340c015, 0x4423cd91, 0x158fd276, 0x4659a10f, 0x18a52c4c, 0xe3a1a7b3, 0xf701d25a, 0x38dd7226
.word 0xbfd9cf34, 0x373d4e22, 0x24c59c6c, 0x3c1c003c, 0xacb53ded, 0xd3a55936, 0x2eb1a848, 0x63e170a5
.word 0x6c6030c1, 0xf754fbfb, 0x5db8e512, 0x7289b671, 0x0401e998, 0xe5d16146, 0xa00266f4, 0x14a10a7a
.word 0xa098cb33, 0x987b950f, 0x0f78c555, 0x86790574, 0x3a622651, 0xea5726bc, 0xaf0748fd, 0x99abc4aa
.word 0xd0a6a87f, 0x261768d0, 0x2ee8ae00, 0x9971cab3, 0x573c120b, 0xf9b05e4b, 0x0d999fed, 0x10dee17f
.word 0x3e5b1d4a, 0x190ce7e5, 0x392c67b4, 0xfa4a96d2, 0x9908a23b, 0xfda8b8b7, 0xcb17ba28, 0xcab9ca71
.word 0xa5d9e693, 0x6700eeeb, 0x1b5103f6, 0x28238d49, 0xddf64f13, 0xd2b413d1, 0xe3ecf154, 0x6bdf7503
.word 0xfde9b007, 0xb75b57d6, 0xb2a73d38, 0x3e9d4084, 0xc65d11a9, 0x4e4422e1, 0x091f29f9, 0xea045ebe
.word 0x47f10730, 0x9d83a8b4, 0xf204d3f3, 0xd73379ba, 0x9da317b5, 0xaa6ff4ec, 0x4c864529, 0x13c59164
.word 0xb441a53d, 0x57e090aa, 0xb5f04393, 0xbcf903b8, 0x5bbb33d9, 0xf8ac67c7, 0x731a0682, 0x3324fa7e
.word 0x2eaf3564, 0x46a74989, 0x39c55286, 0x1e39940f, 0xa480f20f, 0x9b77643c, 0x23512c62, 0xe5c4a5da
.word 0xfd80509d, 0x32ce6d07, 0xfe42cb78, 0xbc63899f, 0x49519cb5, 0x0e6f4398, 0x1bbaeafb, 0x6410fe7c
.word 0x86cacdd0, 0x4c7ab0f3, 0x0bc73596, 0xef7fed77, 0xa2101e86, 0xacce7edc, 0x7d4c4fad, 0x7d024ae3
.word 0xc8f5e479, 0xf4106f9a, 0xd9145e25, 0x9224826a, 0x4236914e, 0x6d81d735, 0x48f0cfd5, 0x1e17964c
.word 0x9dfd76bd, 0x45bf6836, 0x2773a4e1, 0x95c5a04c, 0x138a232d, 0x50a64ad5, 0x7ca2ca12, 0xd811b3cd
.word 0x6669fdd4, 0xa7ba69bf, 0x309dee97, 0x9bc22c11, 0x4d2f3739, 0x57410911, 0x4b06bf7a, 0x6277ca2e
.word 0xbd0ed169, 0x8fe59d61, 0xf5f17140, 0x53a77486, 0x1263bf13, 0xe0c5484b, 0xd60d7094, 0x105d2f25
.word 0xabecd6df, 0x993fa99c, 0x4e87f38d, 0xde069133, 0xd2498ccb, 0x74c83622, 0x2bbbc25d, 0x3e1d8bff
.word 0x1a6c3c36, 0xd6f015e6, 0xcd437d1f, 0x9266163b, 0xac2b84fe, 0xc9fb5fc2, 0x25467894, 0xab5af1d5
.word 0xe0115e21, 0xca74f565, 0x49d74ade, 0x9e10a19d, 0xee859feb, 0xd58925aa, 0x8b06406e, 0xd0ce1a57
.word 0x61469d27, 0x566433db, 0x7e12f90b, 0xa2195193, 0xb2359b14, 0x163bac90, 0x76e49439, 0xe9710ad1
.word 0xf566eab3, 0x4eaa05a4, 0xf5a2f229, 0x7df4eda8, 0x607e89d9, 0xb5c9a366, 0x468ab302, 0x75dbd200
.word 0x951b8c82, 0x3faa4f09, 0x6490dc73, 0xd58a5942, 0xa6a9be16, 0x6f5704e5, 0x9d8e1b81, 0x9a8efba8
.word 0x8f371363, 0xb2edd1fd, 0x81470e88, 0x853f78f0, 0x5fb0a627, 0x15e17191, 0xbaba723b, 0x16b33113
.word 0x407e0349, 0x7f9ffb7c, 0x0420fecf, 0xa6818b57, 0x5e9472c3, 0x727e343d, 0x40d7aa52, 0x065d4cb6
.word 0x538bcd25, 0xad0ecc7d, 0x36bb4a6c, 0x13869cac, 0x63ba45ef, 0x6dbf527b, 0x69b0e672, 0x49630e74
.word 0x22602ec2, 0xffb39919, 0xe379fdc9, 0x6bafd991, 0xf5748ef1, 0xf7972138, 0x8622d5f3, 0xaa792fba
.word 0xb025750b, 0x6f4a9e5e, 0xec8de2bf, 0x8b032ad2, 0x1bf54004, 0x3e495e8d, 0xa6c3ace7, 0xc976ab33
.word 0x598dc47c, 0xa7f4e258, 0xd0ac65d5, 0x2a0a2da3, 0x05af9383, 0x29b22ad6, 0xc184dde2, 0xab71490d
.word 0x19da9861, 0x6faa9379, 0x338aa620, 0x2f5e6022, 0x871e28e4, 0xe436723f, 0xaf471736, 0x0853351a
.word 0xebdf69b8, 0x8010bcc6, 0xfe523041, 0xf67eb9e1, 0xdc1f5672, 0x5cea824f, 0x1a55633a, 0x59844d07
.word 0x647e1961, 0x756c1486, 0x84758b3a, 0x27da13eb, 0x6b9573d3, 0x6743730a, 0xeb2c0715, 0x289dacb1
.word 0xb9fe13ae, 0xb19a525b, 0x2c568e87, 0x28872153, 0xc4b3d603, 0x847bb651, 0xffadf777, 0x5f6129b4
.word 0xeb3bc0e8, 0x6d22470f, 0xeb72ba30, 0xdef5d2da, 0x4e7fb58b, 0x67d0419d, 0xcbdd4dcb, 0x6e1625dc
.word 0x74c95dbe, 0x032529b3, 0x38bc926b, 0x8e3352e2, 0x46ce125d, 0xb00cbd59, 0xa9c3050b, 0x4d7f372d
.word 0xf3231009, 0x8ad5cb28, 0x4c0554c5, 0x380f96ac, 0x73162e47, 0xbe3922d4, 0x091be353, 0xa3c4d45a
.word 0x5ede8ce3, 0xb719aff1, 0x6171145a, 0x3c927339, 0x42995357, 0x3ecbe405, 0x5fe6faa3, 0x0d734ba0
.word 0xfd1d00b5, 0x36189d0c, 0x81352dc1, 0xa7227ffd, 0x80a4000b, 0x87993dfe, 0xfbe9ce62, 0x9ad19639
.word 0x45d58192, 0x768d1e94, 0x6a27341c, 0x0fca1cb6, 0xa7ac21e4, 0x605ad0e1, 0x28a0d343, 0xcbb01a2e
.word 0x14f43be3, 0x1f4a3e06, 0x53b7f9b3, 0x993f8ff3, 0xd33a5484, 0x5cc37af5, 0x7c3c6d49, 0x8bdd15bd
.word 0xbee7bd80, 0x4767183e, 0x04df419e, 0x778258b8, 0x764e86b7, 0x396bde94, 0xb4cefddf, 0xd51c8415
.word 0x1712add8, 0xf5d3874e, 0x3c3651b2, 0xdc421566, 0x7be20705, 0xa3a41fd0, 0x638c74d6, 0x0a7c518b
.word 0x613c92b9, 0x3f966b48, 0x89d2db0c, 0x6ec7acbb
.section .region_1,"aw",@progbits;
region_1:
.word 0x3d36bcbe, 0x9ca1ee0a, 0x90829f99, 0x5f2d6005, 0x8e563133, 0x5719c055, 0x628d1faa, 0x76de6bab
.word 0x10ebedf3, 0x949a90ef, 0xe1f40da1, 0xbb47996f, 0x2ad2a895, 0x993db31a, 0xd28fecd1, 0xa360ef52
.word 0x38d0e70c, 0xc69de21f, 0x3756f4a3, 0x7a67a25e, 0xccab2511, 0x9a09ea8b, 0xf4ca5b33, 0x70918924
.word 0x8a80bfcb, 0x6472a8f5, 0xa9e18ab2, 0xe7d35668, 0x0b756bf5, 0x702237b2, 0x97a652b8, 0x32f413df
.word 0x47882aeb, 0xfe724dfe, 0xc09e948a, 0x2dd206bd, 0x94befd9c, 0x783bdc91, 0x6f8b831f, 0xfebf7e49
.word 0x69818a41, 0xbd537b7e, 0xa43e053d, 0x55a45a15, 0x9334a65b, 0x8c785c60, 0xb6b026b7, 0x50cc868a
.word 0x2d4a50b8, 0xc5e60574, 0xc94460eb, 0x94e69df5, 0x41dc18a4, 0x350ca7f9, 0x6976e41e, 0x39013488
.word 0xa7b865aa, 0xaf4a0089, 0x370e546d, 0x932bf3d8, 0xf27c69bc, 0x0a775cb5, 0x606884a4, 0xbac768b2
.word 0x151f9afa, 0x93bc53c5, 0xb7bb0b27, 0xa551c558, 0x3baf9886, 0x79b6f205, 0x058b923d, 0x3dfec271
.word 0x3dabb083, 0xc6831906, 0x970c97de, 0xbf492c0e, 0x82b0bde3, 0xecfa08be, 0x7bf96060, 0xd6ebe8eb
.word 0xa7c50f4b, 0x216372fe, 0x5e6da4e4, 0x0d261370, 0x45a2e21c, 0xe36dc75a, 0x44137e68, 0x951f39c2
.word 0x26dde48c, 0xef17a524, 0xaae9d870, 0x506daf95, 0xdd283470, 0x6490632d, 0x151592c5, 0xb1f1452e
.word 0x13701492, 0x07e857d8, 0x93e3c8b2, 0x42b7796c, 0x929e25de, 0xa8a195f5, 0x1b75b5d9, 0x34acc425
.word 0x8955c534, 0xea8c5f27, 0x89c996a8, 0x5ebf3d74, 0xa7d24286, 0x81fc1a6b, 0xdc361958, 0xf20a9286
.word 0xb677688a, 0xf1652ca2, 0xb3ef7c0d, 0xc407d396, 0xa0a0a0eb, 0xd340f211, 0x217ccc02, 0x51053598
.word 0x0da254a0, 0x28cb73b7, 0xd1f67f54, 0x9aa04d1d, 0xbb58bb91, 0x1681cf99, 0xa7d19b0a, 0xd1f62ea2
.word 0xc7eca693, 0xae5426b1, 0xe6cc2a9a, 0x38bb3067, 0xae368741, 0x81b0c009, 0x7f25b8f9, 0x5556a668
.word 0x5baf7db0, 0x351d2f5d, 0xb9430cdf, 0x22a74881, 0xf4014d1a, 0x0d873da0, 0xb1ff7381, 0xc9e8bacc
.word 0x4c9cd3b2, 0xa5f2775a, 0xe654905c, 0x669327fa, 0x6ca98dc3, 0x1730d0e0, 0x94304503, 0x97271976
.word 0x8e2a4cd7, 0xc13b0715, 0x2b612444, 0x2a4c4992, 0xebe4524f, 0xae3a2905, 0x4abca64c, 0xd60a7ac5
.word 0x26617bae, 0x115ca3eb, 0xc0eb00df, 0x839d2b96, 0x8890ad45, 0x0cd1e006, 0xfbe7543b, 0x786318b5
.word 0x22de5846, 0x8779c5f9, 0x994f86aa, 0xf401edfc, 0x5dcb363b, 0x7f430e7d, 0xfdf71aaa, 0xe6d7d082
.word 0x7bce8eaf, 0x169fe315, 0x6f83e1d1, 0x75d9e2ac, 0x04beb3a7, 0x0e2cb352, 0xf42a1c10, 0xcda63eed
.word 0x50c242c2, 0x221dc7a4, 0x206d20b4, 0xfa2b0569, 0x22f26ca3, 0x2967047f, 0xe42bf00c, 0xc34e341d
.word 0x2c1a7ec4, 0x0a7a6159, 0x5a43d5f9, 0x255eeedb, 0x204275ef, 0xcbc9f406, 0xfb6443df, 0xe204b5d4
.word 0x0ea230f6, 0x674b903d, 0x22d86d36, 0x4bf221d6, 0x3066cffc, 0xc4d89426, 0x6281e0d6, 0x338598c1
.word 0x130d6325, 0x33fcecab, 0x1100ef92, 0xccd78aa4, 0xa78d5682, 0xf1b7a080, 0x50ec6262, 0x5b0fbd86
.word 0x9fab4bed, 0xc3f648bc, 0x7569ee7b, 0xbad35ba4, 0x06113fe3, 0x0d3b6877, 0x314fe3db, 0x195a8621
.word 0xaa93cc24, 0xf53b5cd5, 0x328d24ae, 0x06997bed, 0x376e3f06, 0x8f22d5e0, 0x4832e991, 0x3307953d
.word 0x0c063e29, 0xc02d6029, 0x43d0d3c9, 0x32ae5553, 0x49cd8b87, 0xf9826a06, 0x4068939a, 0x5178e8ce
.word 0x9db576cd, 0x83e3621e, 0xe014b04c, 0xbd13f14f, 0x8c53db5a, 0xa8d9d662, 0xc091ae3b, 0x472d926e
.word 0xf2c34b07, 0xc50d8fb9, 0xa9970295, 0xf8adfe64, 0xf665afe7, 0x28e22543, 0x7528b4db, 0xf411315c
.word 0xb139ac78, 0xa87bb2c3, 0x4ebf1f14, 0x0dae9b7c, 0x090599c7, 0xffc2805c, 0xa35189ea, 0xe66e912b
.word 0x0fb282a8, 0x1ac7a4bc, 0x0f2aabf6, 0x1f81ad43, 0xe1afb554, 0xb2f3520e, 0x8ba11257, 0x6d333a41
.word 0xde1e56c5, 0xbc01678b, 0x13ff152c, 0xae7af8c6, 0x9a7d87cb, 0xb7535808, 0x82eca405, 0xac1a608e
.word 0xc9fba771, 0x96763c17, 0xa7cc6674, 0xa39d4e97, 0x21eda5fc, 0x76754e33, 0x9e9bd709, 0x0f5550e8
.word 0x69d23d47, 0x7e92de4d, 0xe48d7dba, 0xb6589a7a, 0xb06a309a, 0x99037c6d, 0xa233b067, 0x1ee51f1a
.word 0xa4ac59c5, 0xaa83a379, 0x6e23c456, 0x9b6a61f9, 0x28bc7905, 0x1e6326c5, 0xaf0ec4ef, 0xf5856d81
.word 0xa3d12dfb, 0x339166a2, 0xc06d9946, 0x9de0d681, 0xc030aef6, 0x1842fc08, 0xcf92b748, 0x5471abaa
.word 0xbf63adc6, 0xa110af6f, 0x30ada14c, 0x1be87b7e, 0xc5aaf3e5, 0x78ab451a, 0x10a4130c, 0x3d4a5985
.word 0xfb5d06ff, 0xe0f06d5e, 0x0243a0ea, 0x46b96c79, 0x050cd6b7, 0x80891fbe, 0x070fdf16, 0x23d9f283
.word 0xa3290962, 0x4c2a0bc7, 0x66d42662, 0x3220247e, 0xf2afc4ef, 0x5e614006, 0x6933d293, 0x54bd87e3
.word 0xcf2b88ae, 0x67e64ee5, 0x157ed9f1, 0xaab18bf1, 0x31f71244, 0x98e55ceb, 0xbabc26ba, 0x7f65b24e
.word 0x3ff023ce, 0x2b419643, 0x7711eb8f, 0x69cacf75, 0x411148cf, 0xfd56d10f, 0xdd726038, 0x6712ab83
.word 0xb2c8bbdc, 0x682eef4c, 0x23562b38, 0x3ff9386f, 0x96eb40d6, 0x281884a9, 0x9adde1a8, 0xab02f464
.word 0x199ae56e, 0x5bbc1e3f, 0x8be29332, 0x9474e95a, 0xfdcf5a0d, 0xf67d8ced, 0x5c65de50, 0x5bf1a7d8
.word 0x3e0dd41d, 0xf7d40dc5, 0xe647bd72, 0x3bf50e8f, 0x05bb89e8, 0xb5eb278f, 0xd51f4ebd, 0x01ababa7
.word 0xf9bce364, 0xaa49245a, 0x72681d96, 0x0e934c24, 0x3cb94c20, 0x82a61514, 0x56d8ee26, 0x692546fc
.word 0x61d55450, 0x6eb3dc9c, 0x6edad848, 0x9e1c2267, 0xdeb00bcd, 0x6a87d0e0, 0xcdb1623c, 0x924fb016
.word 0x804a9dd6, 0xb1359c99, 0xc7187c1f, 0x4f28d364, 0xd3625a43, 0xd157cfc6, 0xc02a1dd7, 0x25cb2701
.word 0x35a18517, 0xb562185c, 0x5072e8b0, 0x3b75a9e3, 0x118c425f, 0xa26a3d7d, 0xa8728224, 0xc6a20003
.word 0x9efffcc8, 0xfdf5c8b0, 0x979c3f95, 0xe8603c65, 0x82cf93e7, 0x247904b9, 0x8e95e4af, 0xe74f1669
.word 0xcb24eacc, 0x2e63b629, 0xbbffb18f, 0x0d28bc62, 0xbebda1df, 0x614659c6, 0x036b18cb, 0x5f822b62
.word 0xc4e1e556, 0x36169443, 0x405c5932, 0x62cd5742, 0xd1f0110e, 0xba1320f7, 0x3e1988ee, 0xf2752a90
.word 0x92129862, 0x43c9701c, 0xeb0a83a3, 0x75ba78a4, 0x973d23de, 0x5c3b7a64, 0x57e7f84e, 0x5d023165
.word 0xc3c849d2, 0x99e4aa71, 0x486e8bd1, 0x36d09e9f, 0xced563a7, 0x395aac9b, 0x4e60c69d, 0xd9354158
.word 0xd23fa8b5, 0xbabf699c, 0x19278a50, 0xba548698, 0x3591d962, 0xbb65ef8f, 0xff989483, 0x8e79d5a5
.word 0x951a694e, 0xf881e373, 0x86010573, 0xf79f224e, 0xa38677eb, 0x986e05de, 0xffe66422, 0xd4cc3610
.word 0xe2670213, 0x2ad3d220, 0xad4c2537, 0x42beb85c, 0x5648c345, 0xc686de2e, 0xa9e7387c, 0x664d244a
.word 0xf34d92b1, 0x7ced6e02, 0x7572be4b, 0x7542871b, 0x07f177ed, 0x15e6a612, 0x37a0ddce, 0xfdae38d9
.word 0x8493857e, 0xfe6097c8, 0x4f98927a, 0xa3f00197, 0xc661b266, 0x753189bb, 0x96f6a06a, 0xa75ce9e0
.word 0x396fcd33, 0x4d127277, 0x3d310cab, 0xbf692d0f, 0xd00b5e50, 0xa57142b9, 0x3f24e4d9, 0x6bb40b15
.word 0x9df0a5d8, 0x61c57245, 0x883ac48d, 0x81d1fbc8
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x30, x10, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x16, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x16, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x16, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x16, x11, ecall_handler
                  li x11, 0x1
                  beq x16, x11, instr_fault_handler
                  li x11, 0x5
                  beq x16, x11, load_fault_handler
                  li x11, 0x7
                  beq x16, x11, store_fault_handler
                  li x11, 0xc
                  beq x16, x11, pt_fault_handler
                  li x11, 0xd
                  beq x16, x11, pt_fault_handler
                  li x11, 0xf
                  beq x16, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

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
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x10, x30, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
