.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x26, kernel_stack_end

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
                  li x0, 0xf02bdd3f
                  li x1, 0xa5ed4d0f
                  li x2, 0x0
                  li x3, 0xbed53e7c
                  li x4, 0x55a9ac79
                  li x5, 0x7321475c
                  li x7, 0x5e235ae1
                  li x8, 0x80000000
                  li x9, 0x41ba5753
                  li x10, 0xff078f91
                  li x11, 0xf47371f2
                  li x12, 0x0
                  li x13, 0xf1eb3446
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xaf162379
                  li x17, 0x9
                  li x18, 0x80000000
                  li x19, 0xd
                  li x20, 0xf048af05
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0x42e998e2
                  li x25, 0xf03bd9b8
                  li x27, 0xf62513d7
                  li x28, 0xb6b64f45
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf87012b0
                  la x6, user_stack_end
main:             la           a6, region_1+1733 #start load_store_instr_stream_3
                  la           a2, region_1+242 #start load_store_instr_stream_2
                  la           s4, region_1+629 #start load_store_instr_stream_1
                  lhu          t2, -1007(a6)
                  sh           s3, 149(s4)
                  lbu          s6, -39(a2)
                  la           a5, region_1+1638 #start load_store_instr_stream_0
                  lb           s6, 6(a5)
                  lbu          t5, -7(a2)
                  lbu          s9, -252(a6)
                  lbu          s9, -442(s4)
                  lh           s1, -34(a2)
                  lb           s5, -538(s4)
                  lbu          t0, 53(a2)
                  lbu          s5, 49(a2)
                  lh           t2, -42(a5)
                  lbu          s1, 194(a6)
                  sh           a6, -957(a6)
                  lb           t3, -25(a2)
                  lh           t0, 1029(s4)
                  sb           t6, 11(a5)
                  lb           s7, -228(a6)
                  lb           t3, 19(a2) #end load_store_instr_stream_2
                  lb           s6, 12(a6)
                  lb           a3, 17(a5)
                  lbu          t3, -886(a6) #end load_store_instr_stream_3
                  lbu          t3, 138(s4)
                  lb           a7, -120(s4)
                  sh           a7, -395(s4) #end load_store_instr_stream_1
                  lbu          s8, 63(a5) #end load_store_instr_stream_0
                  la           s9, region_1+1191 #start load_store_instr_stream_2
                  la           s8, region_1+6 #start load_store_instr_stream_3
                  la           t4, region_1+1531 #start load_store_instr_stream_1
                  sb           a1, 611(s8)
                  la           s2, region_1+1514 #start load_store_instr_stream_0
                  sb           t1, 54(s2)
                  lbu          a5, -5(s9)
                  lw           s0, -135(t4)
                  sb           t3, -66(t4)
                  sh           tp, 39(t4)
                  lb           gp, 502(s8)
                  lbu          t5, -9(s9)
                  lb           s1, 15(s2)
                  lb           s1, 1048(s8)
                  lbu          s4, 8(s9)
                  lbu          s1, -26(t4)
                  lb           s1, 205(s8)
                  lb           t6, 11(s9)
                  lbu          s11, 45(s2)
                  lh           a3, 778(s8)
                  lhu          a1, -59(t4)
                  lbu          t2, -33(s2)
                  lh           s0, 368(s8)
                  sb           t4, -170(t4)
                  lbu          s11, 839(s8)
                  sb           a0, -50(s2)
                  lh           t3, -10(s2)
                  sb           s5, 2(s9)
                  lb           a4, -56(t4)
                  lb           a5, -49(s2)
                  lb           s6, 2(s9)
                  sb           a2, 835(s8)
                  lb           ra, -7(t4)
                  lbu          a6, 1502(s8)
                  sw           s8, 17(t4)
                  lb           a6, 1406(s8) #end load_store_instr_stream_3
                  lb           gp, 16(s9)
                  lbu          s3, 60(s2)
                  lw           s5, 13(s9) #end load_store_instr_stream_2
                  sh           s6, -165(t4) #end load_store_instr_stream_1
                  lbu          ra, 4(s2) #end load_store_instr_stream_0
                  la           a0, region_1+1478 #start load_store_instr_stream_1
                  la           s6, region_1+1668 #start load_store_instr_stream_2
                  la           sp, region_1+1634 #start load_store_instr_stream_0
                  lb           s1, 19(a0)
                  lhu          s1, 44(s6)
                  lbu          s9, -33(s6)
                  sb           s7, 33(sp)
                  lb           zero, -183(a0)
                  lb           s7, 9(s6)
                  lb           a5, 86(a0)
                  lbu          s3, -16(s6)
                  sw           a3, 20(s6) #end load_store_instr_stream_2
                  lbu          s8, -19(sp)
                  lbu          t6, -185(a0)
                  lb           t0, 85(a0)
                  sb           a0, 32(a0)
                  lbu          s0, 55(sp)
                  lbu          a5, 43(sp)
                  lh           a1, -68(a0)
                  sb           t6, -5(sp)
                  lb           a3, -35(a0)
                  sb           zero, -11(sp)
                  lbu          a3, 250(a0)
                  lbu          a6, 169(a0) #end load_store_instr_stream_1
                  lb           s9, 1(sp) #end load_store_instr_stream_0
                  la           s5, region_1+125 #start load_store_instr_stream_1
                  lh           t2, -5(s5)
                  la           a4, region_1+1943 #start load_store_instr_stream_0
                  sb           a3, 6(s5)
                  lbu          s8, -1228(a4)
                  sb           a1, -395(a4)
                  sh           s1, -1349(a4)
                  lbu          s4, 10(s5)
                  sh           a3, -621(a4)
                  lbu          s7, 16(s5)
                  lhu          s0, -487(a4)
                  lbu          a1, -330(a4)
                  sb           s2, -304(a4)
                  sb           s8, -11(s5)
                  lbu          s1, 12(s5)
                  sb           s1, -435(a4)
                  sb           sp, -8(s5) #end load_store_instr_stream_1
                  lw           a6, -719(a4)
                  lhu          t5, -1029(a4) #end load_store_instr_stream_0
                  la           sp, region_1+389 #start riscv_load_store_rand_instr_stream_3
                  xori         s4, a7, -1574
                  lbu          a5, 2(sp)
                  sll          a1, t0, a3
                  lbu          s0, -28(sp)
                  add          t3, a5, t5
                  xor          zero, zero, s11
                  lbu          t0, 0(sp)
                  lhu          s8, 15(sp)
                  lbu          s6, -17(sp)
                  sub          a1, tp, t2
                  sb           a6, 0(sp)
                  lb           t0, -44(sp)
                  sra          s6, gp, s2
                  xor          zero, t2, ra
                  lhu          s3, -33(sp)
                  sb           a6, -41(sp)
                  auipc        a5, 286360
                  sb           a4, 63(sp)
                  and          t0, s2, s8
                  nop
                  sub          s3, t6, s7
                  lb           s2, -52(sp)
                  sh           tp, 47(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a1, region_1+1598 #start riscv_load_store_rand_instr_stream_2
                  add          gp, a3, s11
                  srai         s2, tp, 12
                  sb           s0, 106(a1)
                  xori         s11, s2, -519
                  ori          zero, a5, -925
                  sltu         s9, ra, t6
                  xori         t4, t6, -1375
                  and          t6, t4, t6
                  lbu          t5, 210(a1)
                  sltu         s9, a5, tp
                  lb           s0, -224(a1)
                  slli         s6, a7, 22
                  lh           a7, -132(a1)
                  sb           s10, -229(a1)
                  sll          a0, t1, s1
                  sb           tp, -209(a1)
                  sub          s6, s5, zero
                  lb           t6, 71(a1)
                  sltiu        a0, s9, -86
                  lh           t4, 156(a1)
                  sra          a4, t6, a0
                  sh           s7, -8(a1)
                  sb           a4, -147(a1)
                  xori         a2, ra, -428
                  lbu          a0, -54(a1)
                  sb           a0, -211(a1)
                  xor          s7, s11, t4
                  lb           s8, -43(a1)
                  add          zero, s7, s6
                  lbu          s5, 42(a1)
                  lw           gp, -190(a1)
                  lbu          s3, 100(a1)
                  sb           ra, -210(a1)
                  or           sp, s3, t4
                  sb           a2, -191(a1)
                  andi         gp, a7, -1584
                  lb           a6, -147(a1)
                  sb           s1, 164(a1)
                  lbu          ra, 23(a1)
                  nop
                  lhu          a4, -68(a1)
                  auipc        a7, 790255
                  sltiu        a6, t4, 463
                  sb           a4, -138(a1)
                  slt          s1, t5, a3
                  sub          s6, t3, t3
                  sb           s10, 1(a1)
                  sb           s2, 10(a1)
                  sb           t2, -47(a1)
                  nop
                  lb           ra, 129(a1)
                  sh           s1, -56(a1)
                  sll          a5, zero, s11
                  or           a5, s8, s6
                  ori          s11, sp, -1886
                  nop
                  slti         t3, t6, -2002
                  slti         s5, s6, -1655
                  lbu          a5, 237(a1) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_0+234 #start riscv_load_store_hazard_instr_stream_0
                  srli         s5, t4, 11
                  add          s11, a5, t2
                  sb           t1, 709(gp)
                  sub          s11, s6, t2
                  lbu          t2, 1181(gp)
                  lw           a7, 1342(gp)
                  ori          t6, a5, 1474
                  lhu          s0, 1342(gp)
                  lb           s7, 1342(gp)
                  auipc        t3, 513187
                  lbu          a5, 1342(gp)
                  sb           t5, 1342(gp)
                  lb           s5, 1342(gp)
                  sh           t6, 1342(gp)
                  lh           ra, 1342(gp)
                  srai         a1, a1, 2
                  slt          a2, s8, a3
                  sb           a0, 1342(gp)
                  lbu          s5, 1342(gp)
                  lhu          s2, 1342(gp)
                  sh           s9, -220(gp)
                  lhu          a1, -220(gp)
                  lb           t5, -220(gp)
                  sh           a7, -220(gp)
                  lb           s9, -220(gp)
                  lbu          t4, -220(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+303 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s1, -51(sp)
                  sh           t0, 1(sp)
                  lbu          s5, 1(sp)
                  lhu          gp, -53(sp)
                  xori         zero, s2, -371
                  andi         t6, s9, 471
                  sb           gp, 54(sp)
                  sh           s9, 25(sp)
                  sra          s9, sp, s10
                  sh           s9, 25(sp)
                  lb           a1, 22(sp)
                  lb           a5, 22(sp)
                  lbu          a1, 22(sp)
                  lbu          ra, 22(sp)
                  lh           s4, -7(sp)
                  sltiu        s2, t1, -872
                  lhu          a7, -7(sp)
                  lbu          a3, -7(sp)
                  sh           gp, 19(sp)
                  sh           a1, 19(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t0, region_1+719 #start riscv_load_store_rand_instr_stream_0
                  lui          t4, 1025343
                  lb           sp, -27(t0)
                  andi         s8, sp, -236
                  sh           s0, 33(t0)
                  add          a0, s7, tp
                  and          zero, t1, t2
                  srli         s9, zero, 10
                  sll          s4, s1, tp
                  lb           a2, -36(t0)
                  lb           s4, -48(t0)
                  lbu          a3, -40(t0)
                  and          t4, s2, gp
                  ori          s2, a1, 1534
                  lbu          t2, 45(t0)
                  lbu          t5, 30(t0)
                  sb           s5, -18(t0)
                  sb           a7, -46(t0)
                  sll          a6, a3, gp
                  sb           a2, 58(t0)
                  lb           s0, 36(t0)
                  addi         s5, sp, 1795
                  lbu          a5, 4(t0)
                  auipc        t5, 683716
                  lbu          a0, 32(t0)
                  lbu          t2, 21(t0)
                  add          t3, a1, gp
                  xori         s6, t1, 150
                  sra          s4, t1, s4
                  addi         s4, s9, 1678
                  xor          a2, s9, s5
                  lw           s9, 13(t0)
                  sh           a5, -1(t0)
                  sb           t2, -26(t0)
                  sra          ra, t6, t0
                  sb           s8, 14(t0)
                  sb           a3, 48(t0)
                  andi         ra, t4, 1884
                  sltu         a2, t2, t5
                  lhu          a5, -9(t0)
                  and          s8, s9, s0
                  nop
                  slt          s3, tp, t1
                  lbu          s1, 59(t0)
                  lb           a1, 38(t0)
                  or           a6, ra, a7
                  sltu         a2, t4, t3
                  lh           a1, -13(t0)
                  or           s11, s1, s5
                  xori         a0, s7, 972
                  nop
                  lb           t4, 57(t0)
                  lb           ra, -33(t0)
                  sw           t3, 1(t0)
                  addi         a5, a7, 1244
                  lh           s8, 13(t0)
                  ori          t4, gp, -1725
                  lb           s4, 36(t0)
                  lb           a5, 28(t0)
                  add          sp, s2, s11
                  lb           t4, -18(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1065 #start riscv_load_store_hazard_instr_stream_3
                  auipc        a4, 363216
                  lb           a5, 9(sp)
                  lbu          s6, 9(sp)
                  lbu          s9, -6(sp)
                  lb           ra, 14(sp)
                  lb           s4, -7(sp)
                  lbu          s9, -1(sp)
                  lbu          a2, -1(sp)
                  lhu          a5, -1(sp)
                  sb           a4, -1(sp)
                  lw           s9, -1(sp)
                  andi         t4, zero, 1153
                  sll          a4, s7, t3
                  sw           a7, -1(sp)
                  lbu          a4, -1(sp)
                  sb           s1, -1(sp)
                  sh           s0, -1(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t4, region_1+118 #start riscv_load_store_hazard_instr_stream_2
                  lh           t2, -2(t4)
                  lh           t5, -2(t4)
                  sw           a5, -2(t4)
                  sra          s6, s11, a6
                  lb           a0, -10(t4)
                  lhu          t6, -10(t4)
                  slli         a5, a0, 15
                  and          t6, s8, s4
                  sh           a1, 2(t4)
                  sh           tp, 2(t4)
                  lw           a6, 2(t4)
                  and          s6, t0, t6
                  lbu          s2, 2(t4)
                  lbu          s11, 2(t4)
                  lui          s7, 259890
                  sb           s0, 2(t4) #end riscv_load_store_hazard_instr_stream_2
                  slli         a1, s11, 5
                  srai         s8, a2, 2
                  beq          sp, a4, 18f
                  blt          a6, s2, 4f
4:                add          s5, s1, t0
                  blt          gp, s3, 19f
                  bge          s9, s6, 7f
7:                sub          a4, a7, s9
                  bne          a6, s8, 16f
                  add          s4, a5, s6
                  nop
                  lui          s8, 26117
                  slt          s7, s10, s10
                  sltiu        a0, t6, 1105
                  bne          s6, s0, 27f
                  srl          a5, a3, t1
16:               sra          t3, t4, a4
                  blt          s2, s6, 23f
18:               beq          t3, t4, 30f
19:               slli         s6, s4, 6
                  andi         a3, a1, -1416
                  lui          ra, 759677
                  sltu         a2, t1, zero
23:               beq          s7, s5, 39f
                  or           s0, a4, t3
                  andi         a2, s9, -598
                  blt          s7, s8, 30f
27:               xor          ra, ra, s5
                  bne          s3, t0, 46f
                  srli         t0, s5, 2
30:               slli         s9, t5, 27
                  auipc        a7, 55818
                  srai         t5, tp, 30
                  andi         s11, s9, -905
                  add          a2, s5, t5
                  beq          a5, a7, 36f
36:               bne          a6, s7, 56f
                  xor          sp, ra, s1
                  andi         a1, s0, 1123
39:               sra          zero, tp, s0
                  sll          t5, s8, s2
                  blt          t4, a4, 47f
                  sltu         a6, s4, t1
                  slti         a6, t4, 890
                  xori         a5, s8, 169
                  xor          t0, a1, tp
46:               xor          s11, a3, s10
47:               bne          a1, s5, 52f
                  slli         zero, t2, 10
                  ori          s0, a4, 1809
                  sll          t3, s5, zero
                  blt          s10, zero, 59f
52:               bgeu         gp, ra, 68f
                  nop
                  sll          s11, a7, a0
                  slti         s11, sp, 1607
56:               addi         t0, t5, -636
                  slt          a5, t1, sp
                  sll          a7, a0, s3
59:               slli         a2, a7, 29
                  nop
                  sub          s4, s11, s9
                  xor          s5, zero, s10
                  lui          s3, 798552
                  ori          s8, s7, 783
                  lui          s3, 256600
                  and          s6, s6, a6
                  or           t4, t3, a3
68:               auipc        t0, 81308
                  blt          a0, s2, 79f
                  sltiu        s1, sp, 1726
                  sub          s1, t1, s8
                  slti         a5, t0, -1019
                  slti         s3, ra, -1343
                  lui          a4, 897851
                  sub          s0, sp, s9
                  bne          t3, t1, 89f
                  sub          s3, t2, tp
                  add          a6, s10, t5
79:               sll          s11, gp, gp
                  xor          gp, ra, a5
                  sll          a0, a2, s9
                  slt          t2, a1, a5
                  sll          t6, a3, t5
                  bne          s8, s1, 91f
                  beq          t0, s7, 94f
                  ori          s6, t4, 392
                  blt          t0, ra, 97f
                  sra          a5, a4, s6
89:               sra          s4, s6, s0
                  slt          t0, s8, a2
91:               bne          s4, a2, 92f
92:               sub          s11, t2, ra
                  auipc        a4, 548076
94:               bge          t1, a6, 112f
                  sra          s7, s5, a2
                  sll          s4, s0, t1
97:               srai         a0, a1, 23
                  addi         a0, s0, -867
                  ori          a5, a4, 692
                  xori         a7, sp, 777
                  sltiu        ra, s2, 810
                  srai         t5, t6, 31
                  sub          sp, s9, s2
                  sra          s1, s10, a2
                  sltiu        sp, s4, -1954
                  bne          s6, a1, 116f
                  beq          tp, a1, 126f
                  blt          a2, s8, 110f
                  or           a1, s11, s7
110:              sltu         a5, s11, s2
                  sll          a6, s5, t0
112:              nop
                  lui          sp, 410104
                  auipc        s3, 205939
                  slti         a3, a1, -1508
116:              add          a3, s2, t1
                  addi         a6, t6, 1246
                  srli         s4, t1, 17
                  lui          s7, 251207
                  sll          a5, a1, s0
                  lui          s6, 284814
                  srai         gp, s3, 8
                  sub          a3, s11, s5
                  beq          a2, a1, 141f
                  lui          t3, 551896
126:              ori          t0, t2, 1078
                  bge          gp, sp, 130f
                  bgeu         t3, a3, 135f
                  sra          gp, t3, tp
130:              sra          t3, t6, s7
                  srai         s7, gp, 3
                  srai         s9, a0, 7
                  xori         s8, s9, -1761
                  bne          ra, a5, 139f
135:              xor          s9, a5, t1
                  sra          sp, s6, a1
                  bgeu         t0, a7, 143f
                  add          a3, a7, s7
139:              slli         t3, s7, 1
                  xori         s6, s7, -1805
141:              bge          a6, a4, 142f
142:              lui          s6, 987766
143:              srl          s8, t3, s0
                  beq          t2, s6, 163f
                  srl          ra, t1, t4
                  srli         a2, s5, 26
                  srl          t4, s6, s2
                  bltu         a4, a5, 166f
                  srl          s3, a0, s6
                  bltu         t1, s10, 157f
                  nop
                  xori         t4, t2, 1842
                  bne          s5, t4, 170f
                  slt          s8, sp, s11
                  beq          t3, t1, 171f
                  bge          a5, a2, 174f
157:              slli         a6, a3, 28
                  or           s5, s0, s5
                  lui          t3, 373999
                  andi         t3, a6, -1952
                  bge          s9, s2, 162f
162:              xor          a5, gp, tp
163:              srai         s6, s10, 9
                  andi         s0, s5, -789
                  sltiu        a3, a7, -338
166:              sltiu        s9, s4, 1767
                  sltiu        t3, s7, 218
                  sltu         t3, a5, s8
                  sll          a7, a6, a0
170:              bgeu         a6, s4, 190f
171:              addi         gp, a3, 529
                  xor          s3, t4, s8
                  auipc        t5, 247188
174:              xor          zero, s9, s8
                  sra          zero, a7, s1
                  lui          s5, 856571
                  slt          t0, a2, t0
                  sltiu        t4, s8, 1757
                  lui          a7, 38824
                  srl          t4, s5, a2
                  la           a3, region_1+1252 #start riscv_load_store_rand_instr_stream_1
                  andi         zero, s0, 76
                  auipc        sp, 134505
                  lhu          s7, -64(a3)
                  sb           s10, -45(a3)
                  addi         a7, tp, -1287
                  lw           s7, 16(a3)
                  sltiu        t2, zero, 468
                  sh           a0, -14(a3)
                  lhu          s2, 26(a3)
                  lbu          s11, -21(a3)
                  slt          a5, a2, sp
                  lh           a4, 4(a3)
                  add          s0, zero, s5
                  lui          a7, 437658
                  lw           s8, 48(a3)
                  andi         a2, s1, 593
                  sh           t3, -2(a3)
                  sb           a5, -45(a3)
                  srai         s11, t1, 18
                  lb           a1, -56(a3)
                  slt          s5, s2, t2
                  lw           s1, -56(a3)
                  sb           s3, -29(a3)
                  lh           s11, 32(a3)
                  sw           t3, 36(a3)
                  srai         s2, ra, 6
                  auipc        s3, 803181
                  lh           t0, 0(a3)
                  slt          a2, a4, a3
                  or           t6, s10, a1
                  addi         t3, s6, 366
                  lbu          t0, 55(a3)
                  sltiu        t6, a6, 403
                  srli         a1, a4, 28
                  nop
                  sh           s0, -18(a3)
                  slt          sp, t6, ra
                  lb           s5, -16(a3)
                  sb           s0, 47(a3)
                  srli         t5, t0, 17
                  sra          a4, ra, s7
                  lb           s2, 64(a3)
                  slli         s1, ra, 13
                  lh           t2, -18(a3)
                  sb           zero, -51(a3) #end riscv_load_store_rand_instr_stream_1
                  srai         s7, s4, 2
                  xori         s5, s4, 1944
                  sub          a3, s11, sp
                  bne          s7, a6, 197f
                  slli         sp, s2, 13
                  nop
                  xori         s4, ra, 147
                  slli         t6, s9, 2
                  sra          s6, ra, s2
190:              lui          s7, 476737
                  slli         t0, a7, 0
                  srl          a3, a0, gp
                  sub          a2, sp, s7
                  sra          t5, a1, s11
                  and          a5, s11, a5
                  sltiu        sp, s11, 1012
197:              auipc        t5, 752402
                  srl          s9, s7, t5
                  srai         a1, s1, 28
                  srai         a1, t1, 12
                  bgeu         t1, a7, 207f
                  slli         s7, t4, 14
                  add          a1, s8, s2
                  bgeu         s1, t4, 218f
                  srai         s11, ra, 5
                  bne          s5, a6, 207f
207:              lui          t2, 418349
                  xori         t0, t5, -400
                  add          a5, s3, a5
                  addi         s0, t4, -707
                  sra          zero, s8, a2
                  lui          zero, 214265
                  auipc        t3, 846731
                  xor          s0, a3, ra
                  srai         a2, s3, 9
                  add          t2, sp, s1
                  and          a2, t4, s0
218:              ori          ra, s3, 1158
                  slt          a0, s3, t6
                  and          a2, t6, t4
                  xor          s8, t1, t4
                  or           a2, a1, sp
                  bne          tp, s1, 235f
                  bltu         s0, s8, 227f
                  lui          a0, 670937
                  srai         ra, t5, 31
227:              bne          t1, s1, 234f
                  andi         s7, t1, 741
                  or           sp, s6, s6
                  sub          ra, s4, a4
                  add          s11, ra, s5
                  srli         a7, s7, 1
                  slt          s11, t1, t2
234:              bne          t0, a6, 243f
235:              bne          a1, s3, 245f
                  ori          ra, a7, 1889
                  add          t6, s7, a4
                  srl          s5, s8, t3
                  lui          a7, 495740
                  bltu         s8, a5, 242f
                  andi         a6, s5, 1764
242:              xor          s4, a0, zero
243:              nop
                  srai         s1, s11, 8
245:              sltiu        a0, t5, -1749
                  bgeu         a0, a4, 247f
247:              sub          s1, s2, s0
                  sub          s3, a1, a7
                  sltiu        s9, zero, 887
                  slti         a6, t3, -686
                  andi         t4, s2, -1964
                  add          a2, a0, s5
                  bge          a5, zero, 269f
                  addi         t3, t4, -782
                  lui          a3, 16764
                  or           s2, s5, t6
                  auipc        t2, 312363
                  auipc        a2, 841036
                  nop
                  slli         t5, a1, 13
                  sub          t4, t4, t4
                  la           ra, sub_2
                  xori         s0, s7, 1827
                  addi         ra, ra, 124
                  or           t0, gp, a0
                  andi         s0, s4, 828
                  or           s1, s5, sp
                  and          gp, a5, zero
                  or           s6, s5, s1
                  addi         s8, a0, -1283
                  bgeu         t4, s0, main_j1 #branch to jump instr
                  sll          s4, s6, t5
main_j1:          jalr         a7, ra, -124 #jump main -> sub_2
                  srl          s8, t2, t4
                  srl          a0, t2, s10
                  and          sp, s10, sp
                  beq          s4, s6, 278f
                  andi         a6, s0, -512
                  bge          s9, gp, 271f
                  or           a3, sp, t5
269:              srai         a0, s7, 23
                  srl          a3, s9, t2
271:              slt          s3, s1, s7
                  srli         t4, s1, 5
                  srli         t6, t5, 20
                  srli         t0, t0, 1
                  blt          s3, a7, 285f
                  and          s0, t4, t1
                  xori         a0, s11, -1483
278:              sltu         s9, s2, s6
                  sub          t6, sp, s10
                  addi         s11, a5, 39
                  slti         a0, a4, 1726
                  lui          ra, 885098
                  or           s8, t6, t2
                  xori         t3, s11, 705
285:              ori          s2, t0, 806
                  sra          s7, ra, ra
                  slti         t2, t1, -467
                  sltiu        s7, s5, -377
                  sra          s3, t4, a6
                  srli         s5, tp, 9
                  bgeu         s4, s1, 301f
                  sll          t4, t4, a7
                  lui          a5, 929010
                  bge          ra, s6, 302f
                  bgeu         a5, gp, 303f
                  xori         s2, a5, 1340
                  srai         s6, ra, 31
                  nop
                  srl          sp, a1, t5
                  andi         s9, s8, 1594
                  lui          s1, 177448
                  srli         s2, t3, 14
                  sra          t4, t5, a0
                  ori          a3, t5, -1788
                  sltu         a4, s1, a2
                  la           s11, sub_1
                  slli         s0, s8, 17
                  addi         s11, s11, 927
                  lui          a1, 590583
main_j2:          jalr         a7, s11, -927 #jump main -> sub_1
301:              bne          tp, t3, 317f
302:              beq          t2, a2, 307f
303:              sltu         a1, a5, t3
                  sltiu        a6, s8, -1141
                  sltiu        s6, s9, 667
                  ori          s1, s0, 1992
307:              blt          s2, t1, 316f
                  addi         t0, a5, -377
                  bge          ra, zero, 317f
                  andi         a0, sp, -915
                  ori          t0, t3, 238
                  add          a3, s10, sp
                  bne          s10, s0, 323f
                  nop
                  beq          t5, s3, 325f
316:              sra          a5, s0, t6
317:              lui          t5, 228127
                  sll          s11, t5, a3
                  sub          a7, t6, s7
                  bge          t5, a2, 321f
321:              bgeu         s7, t5, 339f
                  bgeu         t3, a7, 330f
323:              auipc        gp, 291324
                  bne          gp, s2, 330f
325:              or           a0, s5, a3
                  sra          a4, a7, s3
                  sra          t2, s3, a7
                  ori          s1, s9, -1042
                  sltiu        s0, s8, -494
330:              nop
                  sltiu        a1, t2, -570
                  blt          s2, s7, 345f
                  auipc        s5, 92761
                  beq          a5, ra, 335f
335:              sltiu        ra, t0, -114
                  srai         s5, s4, 30
                  xori         s1, s9, 1699
                  bgeu         s6, s11, 341f
339:              sra          s6, s1, s5
                  bgeu         s8, t5, 347f
341:              srai         s5, gp, 10
                  nop
                  srli         a2, zero, 8
                  slli         s1, t6, 25
345:              add          s1, t4, t4
                  andi         t4, ra, 130
347:              slt          t4, s0, a0
                  bltu         s7, a1, 364f
                  and          zero, t3, a7
                  slli         t5, sp, 4
                  bltu         gp, s5, 352f
352:              bltu         s11, a7, 365f
                  sra          gp, s2, t6
                  xor          t0, s9, s6
                  sll          a4, a2, ra
                  add          a0, s5, t6
                  beq          s11, s11, 375f
                  and          s0, s5, t5
                  xori         t5, zero, -94
                  blt          t4, zero, 367f
                  auipc        a0, 136130
                  srl          ra, t1, a1
                  bltu         tp, s5, 365f
364:              beq          t6, s8, 378f
365:              sra          ra, t3, zero
                  blt          gp, ra, 372f
367:              bge          a3, a2, 383f
                  andi         t0, ra, 279
                  sll          gp, t5, s11
                  auipc        gp, 673427
                  or           gp, t5, s9
372:              auipc        zero, 321275
                  auipc        a1, 884391
                  andi         s6, s1, -140
375:              blt          zero, ra, 391f
                  sub          t0, s7, s0
                  sub          t0, s4, a0
378:              beq          t3, t6, 382f
                  sll          s4, t0, s3
                  slti         a6, s6, 1448
                  bne          s9, gp, 391f
382:              bgeu         s0, gp, 399f
383:              and          a6, s8, t1
                  add          t3, s4, s11
                  sll          a5, s8, s5
                  auipc        s11, 932181
                  sra          t6, t4, sp
                  slli         gp, a4, 13
                  sra          gp, t1, s7
                  sub          a7, s5, a0
391:              and          a5, t5, s6
                  lui          s3, 782039
                  beq          zero, a0, 412f
                  sltiu        s11, tp, 762
                  sll          t6, s0, a2
                  ori          s0, a2, -1369
                  add          a0, a5, a5
                  andi         s5, tp, -9
399:              or           s5, a3, t6
                  or           ra, a2, t6
                  sltu         s2, a2, s5
                  bltu         s4, s10, 403f
403:              auipc        ra, 852789
                  or           a7, s5, s0
                  xor          t4, zero, s5
                  bge          s3, t1, 426f
                  lui          t6, 992472
                  nop
                  and          t6, gp, s4
                  sub          a5, s7, t3
                  or           s4, t6, ra
412:              ori          sp, s11, 1192
                  addi         s11, a6, -897
                  sltu         s2, s5, tp
                  and          s9, s8, s11
                  xor          s0, a7, s9
                  auipc        s9, 44142
                  bne          s1, s11, 430f
                  addi         t3, s9, -604
                  srli         gp, s1, 30
                  bge          a5, s1, 431f
                  slli         s5, a2, 15
                  slt          t4, ra, t0
                  and          a5, t0, s6
                  blt          t6, ra, 441f
426:              ori          a1, a2, -398
                  add          s2, s5, a0
                  auipc        s3, 571844
                  addi         a5, s6, -1852
430:              slti         a2, s4, 1718
431:              or           s5, a0, sp
                  sltu         s11, s11, a2
                  sra          s5, s7, a7
                  add          a3, s8, t2
                  addi         t5, s1, 1566
                  slti         s1, s8, 616
                  sub          zero, t5, a2
                  sltiu        s9, s8, 579
                  sra          zero, s6, a6
                  lui          a3, 712684
441:              auipc        s11, 682882
                  sra          s4, t1, a2
                  lui          s6, 471384
                  sra          s11, a3, t5
                  srai         t6, t6, 10
                  srai         a3, s10, 19
                  blt          a1, t0, 452f
                  slti         a5, s9, -259
                  xor          t0, s4, a0
                  addi         s9, t0, -1208
                  nop
452:              xor          s2, a0, s0
                  beq          s0, t0, 459f
                  bltu         s9, ra, 455f
455:              srl          s3, t0, a2
                  sub          a5, s0, a3
                  srl          a7, t4, a4
                  sra          a5, a5, ra
459:              nop
                  slli         a4, s0, 14
                  sub          a2, s10, t5
                  beq          tp, s11, 464f
                  blt          a5, s1, 464f
464:              sra          t0, a3, s4
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sub          s4, a7, t6
                  ori          gp, a1, 556
                  sra          t0, t4, zero
                  bne          s11, s3, sub_2_stack_p
                  sltu         s1, a0, t5
                  and          s4, a2, s5
sub_2_stack_p:    addi         t1, t1, -52
                  xori         t3, ra, 1876
                  sra          a5, t4, a6
                  srl          s7, gp, a7
                  sw           a7, 4(t1)
                  ori          zero, a1, -1979
                  slli         t4, ra, 13
                  la           t0, region_0+1035 #start riscv_load_store_rand_instr_stream_2
                  ori          a4, t2, 576
                  sltu         s9, t3, sp
                  lb           a2, 11(t0)
                  nop
                  lb           zero, 11(t0)
                  lb           gp, 11(t0)
                  sb           a2, 15(t0)
                  lbu          a1, 8(t0)
                  lbu          a2, 58(t0)
                  addi         t5, a3, 862
                  lui          gp, 449365
                  srai         s4, a3, 11
                  sb           zero, 30(t0)
                  lbu          a0, -52(t0)
                  sh           s3, 49(t0)
                  lbu          a7, 48(t0)
                  auipc        t3, 17424
                  lb           t4, 30(t0)
                  nop
                  lbu          t6, -43(t0)
                  sb           gp, 40(t0)
                  add          a7, s2, s8
                  nop
                  lbu          s2, 46(t0)
                  lhu          gp, 57(t0)
                  sb           s3, 64(t0)
                  lbu          zero, 20(t0)
                  sltiu        sp, s3, -169
                  ori          a7, t2, 1327
                  srl          s8, s9, s1
                  sh           t4, -21(t0)
                  slt          a2, s7, s7
                  nop
                  slti         s3, t0, -262
                  lbu          a2, 22(t0)
                  lbu          s4, -45(t0)
                  srli         s2, s1, 10
                  sltu         s0, zero, a6
                  sll          s8, sp, a3
                  srl          a3, s2, s9
                  sh           s0, -23(t0)
                  srai         s4, a0, 8
                  sll          gp, gp, s4
                  sll          s3, s9, zero
                  lbu          t3, -18(t0)
                  lbu          a0, -38(t0)
                  slti         t4, a0, -944
                  sltu         s6, s4, s3
                  lbu          s3, 6(t0)
                  lbu          a0, -20(t0)
                  lh           s2, -9(t0) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_0+432 #start load_store_instr_stream_1
                  la           a2, region_0+695 #start load_store_instr_stream_2
                  lw           s11, 12(s7)
                  lb           s1, -14(s7)
                  la           a3, region_0+111 #start load_store_instr_stream_0
                  lbu          a7, 1086(a3)
                  lhu          sp, -4(s7)
                  lb           t0, -15(s7)
                  lbu          s6, 46(a2)
                  sb           a7, 1667(a3)
                  lb           t3, 3(a2)
                  sb           a0, 808(a3)
                  lb           t3, -7(s7)
                  sb           s3, 14(s7)
                  lbu          t4, 174(a3)
                  sh           s0, -25(a2)
                  lbu          a7, -32(a2)
                  lb           s5, -6(s7)
                  lbu          s11, -4(s7)
                  sb           a6, 55(a2)
                  lbu          gp, 144(a3)
                  lb           a4, 9(s7)
                  lhu          a1, -10(s7) #end load_store_instr_stream_1
                  sb           a5, 59(a2) #end load_store_instr_stream_2
                  lb           s3, 1112(a3) #end load_store_instr_stream_0
                  la           s0, region_1+1795 #start riscv_load_store_hazard_instr_stream_1
                  or           s3, t4, a4
                  sb           t6, -1258(s0)
                  lb           s2, -1258(s0)
                  lb           s11, -298(s0)
                  sb           a6, -578(s0)
                  sb           a5, -578(s0)
                  srai         s9, gp, 8
                  lb           a6, -578(s0)
                  srli         sp, a6, 31
                  lbu          s8, -578(s0)
                  lbu          a6, -578(s0)
                  lb           a2, -578(s0)
                  sb           tp, -578(s0)
                  lhu          s4, -1357(s0)
                  ori          s7, s6, -54
                  lh           s11, -1357(s0)
                  and          a0, t4, t3
                  lb           t2, -1357(s0)
                  sh           a5, -1357(s0)
                  add          t3, a1, ra
                  lhu          t0, -1357(s0)
                  lbu          ra, -1758(s0)
                  sb           a2, -1758(s0)
                  lb           s3, -1758(s0) #end riscv_load_store_hazard_instr_stream_1
                  la           s9, region_0+1830 #start load_store_instr_stream_1
                  lb           s0, -79(s9)
                  la           s6, region_0+304 #start load_store_instr_stream_2
                  la           ra, region_0+818 #start load_store_instr_stream_0
                  sb           gp, -236(s9)
                  sb           s7, 5(ra)
                  lbu          a2, -12(s6)
                  lb           a7, 33(ra)
                  lw           t3, 12(s6)
                  lbu          t2, 73(s9)
                  lb           gp, 91(s9)
                  lb           a7, 63(s6)
                  lbu          a4, -34(ra)
                  lbu          a5, -19(s9)
                  lb           s8, 18(s9)
                  lbu          a6, -59(s6)
                  lh           gp, -50(ra)
                  sw           s2, -56(s6)
                  lh           zero, -84(s9)
                  sh           s11, 14(s6) #end load_store_instr_stream_2
                  lbu          t3, 97(s9) #end load_store_instr_stream_1
                  lb           t2, 47(ra) #end load_store_instr_stream_0
                  la           a5, region_0+1848 #start riscv_load_store_rand_instr_stream_0
                  lbu          sp, -1577(a5)
                  sll          a7, s4, s4
                  auipc        zero, 373551
                  lbu          a6, -1141(a5)
                  lhu          t6, -1690(a5)
                  or           a3, s4, gp
                  sltu         a4, s1, s10
                  slli         s3, t1, 22
                  lb           s3, -287(a5)
                  lhu          t0, -130(a5)
                  and          a1, a6, s6
                  lbu          s5, 92(a5)
                  lui          s0, 825286
                  lhu          s3, -252(a5)
                  lbu          s5, -1356(a5)
                  sb           s6, -894(a5)
                  sw           s0, -1720(a5)
                  lbu          a4, 48(a5)
                  sb           s2, -1731(a5)
                  nop
                  lhu          a0, -124(a5)
                  sb           t4, -1237(a5)
                  sb           t3, -695(a5)
                  sb           t6, -779(a5)
                  slt          s3, t6, a3
                  sh           s4, -1622(a5)
                  sra          s5, t3, zero
                  sb           s3, -1668(a5)
                  lw           t6, -272(a5)
                  lhu          t0, -186(a5)
                  xori         a2, a4, -715
                  lb           t5, -1467(a5)
                  add          zero, tp, s1
                  srl          sp, s5, a7
                  sb           s9, -349(a5)
                  sb           tp, -929(a5)
                  sll          sp, a0, s3
                  lh           s6, -1840(a5)
                  ori          a3, t2, 1000
                  srai         ra, a6, 14
                  sh           s1, -996(a5)
                  lb           s1, -627(a5)
                  lb           s4, -144(a5)
                  add          s0, t3, a4
                  sra          s6, sp, s6
                  add          zero, s10, t1
                  lb           a0, -1197(a5) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+690 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t2, -173(sp)
                  lb           a3, -173(sp)
                  sb           t4, -173(sp)
                  sb           s5, -173(sp)
                  add          a5, s2, s11
                  lbu          t2, -173(sp)
                  lb           s7, -173(sp)
                  sb           a3, -173(sp)
                  lb           s3, -173(sp)
                  lb           s1, -173(sp)
                  sltiu        zero, s1, -1677
                  lb           gp, -173(sp)
                  lbu          s4, -173(sp)
                  lbu          t2, -173(sp)
                  sb           gp, -173(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1933 #start riscv_load_store_hazard_instr_stream_2
                  sh           s8, 13(sp)
                  lhu          s6, 13(sp)
                  sh           a7, -7(sp)
                  sh           a3, -7(sp)
                  lh           s1, -7(sp)
                  sb           t3, -7(sp)
                  nop
                  lh           s0, -7(sp)
                  sltu         t6, zero, s3
                  lui          s7, 68614
                  lhu          t2, -7(sp)
                  auipc        s3, 897390
                  slt          s9, s3, tp
                  lbu          t5, -7(sp)
                  srli         a0, s5, 21
                  lb           t5, 0(sp)
                  sub          a1, a2, s11
                  sb           t6, 0(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t4, region_0+301 #start load_store_instr_stream_1
                  la           s8, region_0+842 #start load_store_instr_stream_0
                  lbu          s3, -7(s8)
                  sb           a2, 7(s8)
                  lbu          s9, 48(t4)
                  lb           s6, 30(t4)
                  lhu          t3, 14(s8)
                  sb           t2, -3(s8)
                  sb           t3, 23(t4)
                  sb           t0, 44(t4)
                  lh           t0, -23(t4) #end load_store_instr_stream_1
                  sb           t2, -10(s8) #end load_store_instr_stream_0
                  la           s8, region_1+433 #start riscv_load_store_rand_instr_stream_3
                  srl          s6, a4, s8
                  lb           a4, 130(s8)
                  sh           sp, 1293(s8)
                  lb           s1, 352(s8)
                  or           t3, s5, gp
                  or           a7, t4, a7
                  lbu          t5, 830(s8)
                  sb           ra, 158(s8)
                  auipc        s3, 210667
                  slti         sp, t0, -1484
                  nop
                  lui          a1, 977419
                  addi         t3, a1, 492
                  xor          a2, tp, a5
                  sub          s1, gp, zero
                  slt          a7, t1, zero
                  lb           s9, 890(s8)
                  or           s2, t4, gp
                  auipc        sp, 100679
                  xori         t2, t5, 359
                  and          t5, s8, t5
                  addi         a6, tp, -1453
                  xori         a5, sp, 1763
                  and          a4, s5, s6
                  lb           zero, 457(s8)
                  sb           s4, 829(s8)
                  sub          sp, s8, t3
                  lb           s2, 212(s8)
                  sub          t3, t5, gp
                  sltu         ra, s7, s0
                  andi         a6, s11, -1773
                  sb           s3, 80(s8)
                  andi         a6, s2, -1952
                  sb           s6, 1361(s8) #end riscv_load_store_rand_instr_stream_3
                  andi         s6, a7, -1581
                  lui          a0, 314897
                  andi         a5, s6, 984
                  sltiu        a2, gp, -320
                  add          t2, sp, a3
                  auipc        a0, 287745
                  sll          t0, t2, s0
                  sltiu        s8, a2, -149
                  or           sp, t6, tp
                  xor          t2, tp, t2
                  add          t2, s10, s4
                  auipc        t2, 877032
                  add          zero, zero, s0
                  srai         s3, s10, 25
                  sub          a3, a6, t1
                  add          s2, s5, s4
                  auipc        t6, 96774
                  xor          a4, t3, t4
                  sll          s0, sp, s4
                  sltu         s6, t5, s7
                  slt          a6, s7, s4
                  bgeu         s7, s5, 37f
                  nop
                  ori          s1, t3, -703
                  or           a6, a7, s6
                  sll          s2, s0, s9
                  slt          a6, a6, s8
                  sub          s0, s11, t5
                  slt          a1, s5, t6
                  beq          s1, t3, 48f
                  xori         t4, s8, 1942
                  sltiu        s9, t1, -370
                  ori          a6, s3, -1431
                  slli         s4, s5, 13
                  addi         t5, a4, 1423
                  lui          s6, 392721
                  nop
37:               bltu         a6, t0, 50f
                  sra          t0, t3, s0
                  and          t6, a5, s8
                  sub          t3, s0, s11
                  beq          s9, ra, 51f
                  sltiu        a0, s3, -340
                  sub          s8, s10, a0
                  slt          t0, t6, s5
                  andi         ra, a4, -1177
                  blt          a1, t3, 52f
                  bgeu         s3, s9, 59f
48:               slli         s3, s10, 5
                  lui          s3, 1044018
                  la           a1, region_0+1685 #start riscv_load_store_rand_instr_stream_1
                  lb           s11, 15(a1)
                  sb           tp, 4(a1)
                  sltiu        a4, a1, 997
                  lb           t2, -7(a1)
                  sb           s8, 13(a1)
                  lb           a2, -8(a1)
                  andi         s2, tp, -1022
                  slti         s4, gp, 136
                  add          s7, s1, s10
                  lb           zero, -10(a1)
                  and          a6, ra, a6
                  lh           s11, -1(a1)
                  sh           a7, 13(a1)
                  sltu         a0, s9, s10
                  auipc        s6, 582948
                  sb           t3, 11(a1)
                  sb           t2, -5(a1)
                  lh           t5, 1(a1)
                  srai         t3, s2, 31
                  lb           t5, -8(a1)
                  sltiu        a3, ra, 1528
                  add          t4, tp, s7
                  sll          s6, a2, t1
                  andi         gp, gp, -18
                  srli         t4, gp, 4
                  lh           s0, 5(a1)
                  lh           t0, -13(a1)
                  lb           t0, 11(a1)
                  lhu          t6, 9(a1)
                  lbu          a7, -15(a1)
                  lbu          gp, 6(a1)
                  lb           t4, 12(a1)
                  sltiu        s0, t4, 1627
                  lb           t5, -4(a1) #end riscv_load_store_rand_instr_stream_1
50:               beq          t5, t2, 54f
51:               auipc        ra, 161132
52:               andi         s1, t5, 1593
                  beq          zero, s10, 57f
54:               bgeu         a1, t1, 69f
                  bne          s6, a6, 71f
                  sltu         a6, a5, a4
57:               bltu         t4, ra, 73f
                  sltiu        sp, s3, 1153
59:               sltiu        t0, ra, 416
                  blt          sp, t5, 62f
                  auipc        s9, 73018
62:               bltu         t1, s11, 64f
                  sub          a2, s11, s3
64:               sltiu        a2, s2, -1627
                  andi         a6, t1, 1686
                  sll          s0, t2, s8
                  sltiu        a2, gp, -671
                  andi         t4, t3, 700
69:               lui          s6, 784786
                  slt          a0, s9, t2
71:               lui          s0, 465038
                  sltu         s8, ra, s2
73:               xori         a0, a3, 1368
                  andi         gp, s5, -576
                  or           t2, s11, a5
                  slli         t5, s11, 31
                  addi         a5, s6, -295
                  beq          s6, a5, 93f
                  bne          a4, a2, 88f
                  or           s8, t6, s1
                  bltu         s8, s9, 85f
                  sltiu        a5, s1, -721
                  lui          a5, 793863
                  slti         sp, s5, -2014
85:               slt          gp, a7, s4
                  xor          s11, a3, t2
                  auipc        s7, 186126
88:               sltiu        t3, a0, 1484
                  xori         ra, t1, 1830
                  bgeu         ra, a6, 96f
                  bltu         s10, gp, 93f
                  bgeu         t5, s3, 94f
93:               slti         s4, s1, -896
94:               beq          t6, s1, 100f
                  bgeu         t3, a0, 110f
96:               srai         s8, s3, 14
                  slt          a1, s5, tp
                  sra          ra, t5, t5
                  add          s2, s3, s8
100:              beq          a6, s10, 111f
                  or           zero, a1, s5
                  or           t2, a6, a1
                  blt          a0, s10, 107f
                  sltiu        gp, a5, -1354
                  add          s4, s9, a3
                  addi         s5, t1, -1426
107:              xori         s11, t5, 1993
                  ori          sp, s9, -1958
                  auipc        s2, 257489
110:              beq          t1, s9, 112f
111:              slti         s5, sp, -1787
112:              add          s8, s8, t4
                  srli         a0, s9, 31
                  lui          t0, 513651
                  beq          s11, gp, 130f
                  slti         s0, a1, -1179
                  sltiu        sp, s11, 57
                  bge          s5, s3, 121f
                  nop
                  srl          sp, s6, sp
121:              sltu         a5, t4, t6
                  srli         s0, a5, 29
                  sll          t6, s2, a4
                  sltu         s5, s7, sp
                  ori          s4, gp, -1133
                  slli         t0, s5, 11
                  andi         t3, s6, 155
                  slt          a6, tp, a5
                  blt          a2, a0, 145f
130:              bge          a4, a2, 147f
                  sra          t4, a4, s7
                  xori         ra, gp, -831
                  xori         t5, gp, 35
                  sra          t4, s1, s7
                  slti         s11, zero, 1038
                  sub          t3, s0, s1
                  ori          s6, s1, 1839
                  slti         t5, s4, 509
                  sltiu        a6, a1, 1101
                  lui          s2, 583532
                  sll          s4, s3, s3
                  and          s3, a0, t2
                  sll          t0, a4, t2
                  bgeu         s0, t1, 160f
145:              andi         a6, a7, 1278
                  auipc        s3, 721716
147:              blt          zero, gp, 164f
                  nop
                  auipc        t4, 138124
                  auipc        a6, 613019
                  sltu         sp, s6, t3
                  addi         a1, a1, -1641
                  or           s2, a3, s3
                  srl          s2, gp, t6
                  sll          a7, s3, t1
                  lui          a3, 314992
                  srli         a5, a1, 1
                  andi         ra, a7, 1282
                  slli         s9, s2, 18
160:              bgeu         t4, s9, 177f
                  slt          s5, s11, s7
                  bltu         s11, a1, 178f
                  sra          s5, sp, a5
164:              bne          s4, t1, 179f
                  slti         a2, t1, -429
                  bge          a2, s6, 176f
                  srai         s2, s2, 4
                  beq          s2, t5, 187f
                  andi         a2, tp, -356
                  andi         ra, s7, 1749
                  lui          s5, 734473
                  bgeu         s5, s3, 176f
                  blt          s0, zero, 175f
                  slt          t4, t1, a1
175:              lui          a2, 148912
176:              add          sp, a7, s5
177:              auipc        s1, 619771
178:              beq          t4, s9, 193f
179:              andi         s8, s5, 806
                  and          s3, a1, t6
                  lui          s5, 1328
                  sub          s9, t0, t2
                  and          t2, s4, t4
                  and          t4, s11, t3
                  xori         s6, s7, -1084
                  or           s11, sp, s2
187:              bltu         s4, t6, 190f
                  nop
                  addi         s4, t5, -119
190:              bge          s9, a5, 192f
                  srli         s0, s1, 15
192:              bltu         s1, t0, 194f
193:              srli         zero, a2, 22
194:              beq          s6, t5, 210f
                  bne          s9, a6, 210f
                  sll          s2, s0, tp
                  nop
                  auipc        t4, 364621
                  lui          a6, 800775
                  bltu         t6, s5, 202f
                  srai         s9, t6, 14
202:              addi         s8, s5, -729
                  sll          sp, s2, ra
                  ori          a5, s4, 1750
                  xor          a3, s0, a1
                  sra          a7, t4, a6
                  and          s0, a6, zero
                  bge          ra, s3, 212f
                  blt          t5, s0, 218f
210:              add          a1, s9, t6
                  sltu         s9, sp, a4
212:              bne          a4, s11, 214f
                  add          s8, s8, t5
214:              and          gp, a6, ra
                  and          s3, s6, s5
                  la           s6, region_0+94 #start riscv_load_store_hazard_instr_stream_3
                  xor          s3, s9, s6
                  lb           s9, 13(s6)
                  auipc        t3, 176972
                  lb           gp, -9(s6)
                  sb           a1, 13(s6)
                  lbu          a6, 13(s6)
                  srli         gp, s4, 14
                  lb           s8, 13(s6)
                  lbu          a7, -9(s6)
                  lbu          a0, -16(s6)
                  sra          t6, s7, zero
                  lb           t4, -3(s6)
                  sb           s3, -3(s6)
                  sb           s10, -3(s6)
                  lb           zero, -9(s6)
                  lui          t0, 470190
                  sltu         a5, s2, t4
                  lh           s5, 12(s6)
                  sh           t5, 12(s6)
                  sb           ra, 9(s6)
                  lbu          gp, 1(s6)
                  lb           s8, 1(s6)
                  sb           a5, 1(s6)
                  lb           a1, 9(s6) #end riscv_load_store_hazard_instr_stream_3
                  sra          t4, s0, a7
                  ori          a0, t4, 365
218:              xor          t3, sp, t4
                  sra          ra, zero, s11
                  srl          s7, ra, s6
                  slli         s9, gp, 0
                  slt          t5, s0, tp
                  auipc        a4, 132254
                  srli         s0, sp, 19
                  andi         a4, a1, -1296
                  slli         sp, t6, 2
                  ori          a4, zero, 831
                  addi         s0, ra, 1279
                  and          ra, a5, s1
                  addi         gp, t0, 1719
                  add          s3, s9, s1
                  and          t6, t1, sp
                  auipc        sp, 784112
                  sub          s9, s3, s5
                  lui          gp, 542939
                  xori         a3, s10, -1798
                  srai         a7, s1, 0
                  srl          a2, t3, s2
                  xori         s6, s8, 1080
                  srli         s3, sp, 30
                  sra          a1, s8, t4
                  add          s11, s11, tp
                  srl          s0, s3, s10
                  add          a2, zero, a0
                  bltu         t4, t4, 260f
                  ori          t3, t4, 1651
                  blt          t0, s9, 253f
                  srli         a2, s7, 7
                  add          a0, t5, a4
                  nop
                  blt          t0, s2, 262f
                  lui          a5, 580050
253:              sltu         ra, s4, a1
                  andi         s6, a6, -1609
                  bge          t3, a1, 271f
                  auipc        a0, 570444
                  bne          a3, s10, 263f
                  sll          a5, t6, s0
                  beq          s6, a6, 263f
260:              bltu         s5, s9, 276f
                  lui          s8, 220706
262:              srl          a0, s2, s0
263:              sltiu        ra, t4, 1301
                  sltu         a5, s1, s3
                  nop
                  slt          a5, t0, s11
                  or           t6, tp, s4
                  srli         s5, s5, 14
                  beq          a6, a1, 275f
                  la           a0, region_0+1330 #start load_store_instr_stream_2
                  la           t4, region_0+592 #start load_store_instr_stream_1
                  la           ra, region_0+924 #start load_store_instr_stream_0
                  lb           a5, 246(ra)
                  lb           s4, 1192(t4)
                  lhu          a5, 118(ra)
                  lb           a3, 12(a0)
                  lbu          s0, 15(a0)
                  lbu          a7, -149(t4)
                  lbu          s2, 326(t4)
                  lbu          s8, -37(a0)
                  lb           s3, 711(t4)
                  sb           t2, 255(ra)
                  lbu          zero, 850(t4)
                  lbu          s9, -150(ra)
                  sh           s8, 506(t4)
                  lb           s6, 225(ra)
                  lb           s7, 56(ra)
                  sb           a5, -313(t4)
                  lb           a3, 61(a0)
                  sh           a3, -142(ra)
                  lb           s11, -34(a0)
                  lb           t0, 235(t4)
                  lh           gp, -28(a0)
                  lb           gp, 27(ra)
                  lbu          t2, 15(t4)
                  lbu          zero, 113(t4) #end load_store_instr_stream_1
                  lhu          s9, 152(ra)
                  lb           t0, -20(a0) #end load_store_instr_stream_2
                  sb           a4, -159(ra) #end load_store_instr_stream_0
                  add          t0, gp, t2
271:              srai         a6, s4, 29
                  auipc        s5, 332522
                  srai         s0, t2, 11
                  andi         s1, a6, -300
275:              sra          a7, t5, s9
276:              sra          a3, t2, t5
                  ori          t2, t3, 760
                  ori          s9, t5, -1988
                  auipc        a0, 288001
                  bgeu         sp, s2, 297f
                  bgeu         s4, ra, 293f
                  srai         gp, ra, 12
                  ori          a3, a7, -938
                  blt          ra, t3, 288f
                  nop
                  srl          s3, a2, s8
                  sltu         gp, t3, s5
288:              srli         t3, t1, 8
                  sll          t5, t0, t2
                  lui          s5, 295712
                  or           zero, s3, tp
                  addi         s0, a3, 1303
293:              slti         s9, s11, -736
                  blt          t0, t4, 307f
                  bne          s4, s10, 311f
                  sll          a6, a5, t4
297:              xor          a4, zero, t6
                  sltu         a0, sp, a7
                  ori          t3, s4, -1652
                  sltu         a1, t3, t4
                  andi         a6, a6, -1637
                  bgeu         a0, a5, 306f
                  sltu         zero, a6, a6
                  auipc        s6, 763805
                  or           s6, ra, t4
306:              beq          t4, a4, 312f
307:              slli         a2, a7, 21
                  sub          s4, s5, t0
                  lui          s2, 147596
                  slti         t6, t6, 802
311:              srli         a0, tp, 21
312:              blt          t0, t2, 327f
                  sub          a4, s2, s9
                  sll          ra, t3, a3
                  srai         a3, sp, 26
                  blt          zero, s6, 333f
                  auipc        sp, 24305
                  or           a2, a6, t5
                  bne          a7, t6, 321f
                  sltiu        a6, s7, -315
321:              beq          s11, zero, 333f
                  ori          s3, a1, -1959
                  bltu         a0, a4, 339f
                  or           ra, ra, a4
                  bgeu         zero, t5, 327f
                  sra          a7, s4, s3
327:              or           s9, a0, a6
                  sub          t5, t4, ra
                  add          a6, tp, a6
                  sll          s7, a0, a4
                  slli         s9, zero, 22
                  slli         s3, s10, 27
333:              srai         t3, s6, 31
                  srli         a5, s6, 21
                  xor          s6, s4, s7
                  xor          a0, a4, tp
                  or           sp, s3, t3
                  andi         t6, a5, -1605
339:              andi         s11, s0, -150
                  slti         t2, t4, 2012
                  nop
                  andi         s9, s10, 1534
                  add          t2, s6, zero
                  slt          s9, s10, a6
                  add          a4, a1, s2
                  blt          s2, t3, 350f
                  blt          s0, tp, 357f
                  sltiu        ra, s0, 167
                  xori         zero, s2, 1198
350:              lui          a0, 442088
                  slli         a0, s5, 15
                  slli         sp, a1, 29
                  slti         a2, zero, 1739
                  slli         a6, t1, 0
                  beq          s3, t3, 372f
                  slli         a7, zero, 15
357:              slti         s8, s6, 1556
                  sltu         a0, t0, a0
                  sll          s5, a6, t0
                  sra          s5, t5, s5
                  or           s2, s2, a4
                  and          s9, t4, s3
                  andi         ra, s5, 764
                  srai         a0, s11, 28
                  sll          a2, zero, s0
                  nop
                  slt          s8, t4, t5
                  ori          a0, ra, 281
                  sltu         s8, s5, a6
                  andi         a1, gp, -886
                  bne          s2, sp, 386f
372:              srl          zero, s5, s4
                  addi         s7, s9, 383
                  slti         s11, s8, -915
                  srai         a2, s2, 21
                  slli         a2, a7, 9
                  slt          s3, t1, t6
                  or           a0, t5, a0
                  slli         s11, a7, 29
                  slt          t6, s4, t2
                  nop
                  or           zero, s0, a1
                  srl          sp, t4, sp
                  lui          t5, 937253
                  srai         t0, t3, 14
386:              blt          s6, t0, 389f
                  srli         s2, t4, 3
                  slti         a3, s2, -1112
389:              srli         gp, tp, 13
                  lui          t2, 498073
                  srai         t3, t4, 3
                  bgeu         s6, a2, 407f
                  ori          s7, a2, 291
                  sub          t4, gp, a6
                  nop
                  or           t4, ra, zero
                  blt          ra, ra, 399f
                  auipc        a0, 387306
399:              ori          s4, s1, 939
                  bge          t0, s7, 406f
                  xor          s11, t3, a3
                  srl          t4, t0, s6
                  slt          a2, a2, a6
                  ori          a2, t5, 1104
                  bgeu         a6, a2, 412f
406:              bgeu         a7, s3, 412f
407:              bgeu         s5, a6, 412f
                  bge          s9, ra, 412f
                  xori         t4, ra, -1523
                  addi         s0, a7, 758
                  ori          a2, t4, 1934
412:              slti         a2, a5, -1033
                  xori         a0, ra, 1116
                  or           s7, t4, s3
                  lw           a7, 4(t1)
                  or           s5, a6, s9
                  addi         t1, t1, 52
                  and          s2, a2, s3
776:              addi x7, x17, 1
776:              jalr x7, x7, 0
sub_1:            slt          s7, t1, s8
                  bltu         s5, a6, sub_1_stack_p
                  sltu         s0, t4, t5
                  xori         s0, t4, 1698
sub_1_stack_p:    addi         t1, t1, -24
                  srai         s5, s0, 8
                  slli         ra, t4, 15
                  sw           a7, 4(t1)
                  slli         gp, a1, 26
                  la           sp, region_0+866 #start load_store_instr_stream_1
                  la           s6, region_0+1377 #start load_store_instr_stream_3
                  la           gp, region_0+177 #start load_store_instr_stream_0
                  lw           a3, 431(s6)
                  la           s4, region_0+54 #start load_store_instr_stream_4
                  lb           ra, 1599(gp)
                  la           s0, region_0+1496 #start load_store_instr_stream_2
                  lbu          t4, -1056(s6)
                  sb           tp, -23(s0)
                  lb           s5, 1284(gp)
                  sb           a4, -846(s6)
                  sb           sp, -35(s4)
                  lb           a7, 1654(gp)
                  lb           s3, 27(s0)
                  lw           ra, 311(gp)
                  lhu          t5, 56(s4)
                  lb           t0, -49(sp)
                  sh           a5, -1249(s6)
                  lw           a5, 24(s0)
                  sw           t3, -6(sp)
                  sb           a3, 10(s0)
                  lw           s1, 847(gp)
                  lbu          s1, -1368(s6)
                  sh           t6, -22(s4)
                  sb           s2, 47(sp)
                  sh           a2, 40(s0)
                  sh           t0, -473(s6)
                  lbu          t4, -82(gp)
                  sh           s6, -1023(s6)
                  lhu          a2, 127(gp)
                  lbu          zero, 45(s0) #end load_store_instr_stream_2
                  sb           t4, 26(sp)
                  lb           s8, -15(sp) #end load_store_instr_stream_1
                  lbu          s8, 906(gp)
                  sb           zero, 216(s6)
                  lhu          a1, 48(s4)
                  lbu          s9, 1090(gp)
                  lhu          s7, 16(s4) #end load_store_instr_stream_4
                  sb           a3, -536(s6) #end load_store_instr_stream_3
                  sh           s4, 1167(gp) #end load_store_instr_stream_0
                  la           a0, region_1+1295 #start riscv_load_store_hazard_instr_stream_0
                  sb           s3, -24(a0)
                  lb           zero, -24(a0)
                  lb           a1, -24(a0)
                  lbu          s8, -24(a0)
                  sra          s2, s8, a5
                  srli         s3, s8, 3
                  lbu          zero, -24(a0)
                  lbu          s7, -24(a0)
                  lb           s2, -24(a0)
                  lb           t5, -24(a0)
                  lbu          t3, -24(a0)
                  lbu          s1, -24(a0)
                  sb           tp, -24(a0)
                  lb           t4, -24(a0)
                  lb           s11, -24(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+757 #start riscv_load_store_rand_instr_stream_0
                  nop
                  slli         ra, t2, 31
                  addi         s6, t3, 540
                  sub          t4, a0, t0
                  srl          t3, s9, s0
                  sra          t3, s2, s5
                  sb           s4, -148(sp)
                  or           gp, s11, t5
                  sb           sp, 126(sp)
                  xori         ra, a4, 475
                  lb           s8, -189(sp)
                  slti         gp, a2, -128
                  sb           s8, -142(sp)
                  lbu          s4, 194(sp)
                  nop
                  lbu          s5, -88(sp)
                  lb           a2, 162(sp)
                  ori          a1, t1, 864
                  sh           s7, -179(sp)
                  lb           gp, 157(sp)
                  srai         s1, ra, 10
                  auipc        s4, 778892
                  lbu          a3, -148(sp)
                  or           t4, a6, s10
                  lb           t0, -158(sp)
                  srl          s5, a5, a5
                  sb           s1, 139(sp)
                  sb           ra, 194(sp)
                  add          s3, a6, s2
                  add          s4, t6, s0
                  or           t4, t6, zero
                  lbu          s7, 78(sp)
                  lb           zero, 1(sp)
                  xor          t3, tp, s2
                  sltu         s1, t3, t5
                  lui          a2, 41229
                  lw           t2, -209(sp)
                  sh           a6, -5(sp) #end riscv_load_store_rand_instr_stream_0
                  lui          zero, 773015
                  addi         a7, a1, -159
                  sll          s6, gp, s5
                  add          sp, zero, s9
                  sll          s7, a6, t5
                  slli         zero, t3, 30
                  add          s5, s6, s9
                  sra          s11, s1, t4
                  or           s4, t0, ra
                  xor          a4, s7, s3
                  auipc        s4, 938199
                  sub          t2, s4, a0
                  srai         s6, t2, 15
                  ori          a1, tp, -1150
                  ori          s11, a5, 1654
                  bltu         s0, s4, 31f
                  bne          s3, a1, 25f
                  srli         s7, a4, 31
                  sub          s1, tp, tp
                  lui          ra, 124291
                  bne          a3, a0, 31f
                  and          s8, sp, t2
                  bgeu         t6, t0, 36f
                  bge          t6, t0, 40f
                  sub          a1, s8, s10
25:               sll          s4, a4, a3
                  sll          s6, a3, ra
                  add          a7, a3, t0
                  xor          a7, a1, s9
                  srai         zero, ra, 1
                  blt          s3, s3, 37f
31:               beq          a7, a6, 40f
                  andi         t3, t5, -79
                  andi         t2, s7, 587
                  bgeu         s5, t1, 39f
                  andi         t4, ra, -382
36:               slti         a7, s4, 725
37:               beq          s4, a4, 52f
                  slli         a7, a5, 4
39:               slt          s1, ra, t6
40:               auipc        t4, 360887
                  or           t2, t5, gp
                  srl          a4, t2, a7
                  xori         s7, a0, -1516
                  sub          t2, s9, s6
                  sub          a7, ra, t3
                  slt          a4, a6, t0
                  or           a2, s9, s7
                  bltu         ra, s6, 51f
                  and          a1, sp, s5
                  and          s11, gp, s3
51:               sra          s1, t6, t5
52:               add          a0, zero, tp
                  bltu         gp, s8, 65f
                  blt          t4, s10, 64f
                  sltiu        t4, t6, 153
                  sll          t2, a5, a7
                  xor          a1, sp, gp
                  nop
                  auipc        t4, 451087
                  beq          s9, s2, 67f
                  bltu         t4, s11, 81f
                  bltu         s6, a0, 75f
                  auipc        s8, 794335
64:               slli         zero, s5, 24
65:               auipc        s7, 711704
                  srl          gp, a6, a0
67:               xor          a3, a6, tp
                  xor          s5, tp, s8
                  srli         t6, s1, 7
                  srai         sp, s11, 26
                  ori          s3, a7, -2012
                  srli         s8, s11, 15
                  bge          s7, a1, 77f
                  and          s4, t2, s3
75:               addi         a6, gp, 377
                  or           s8, a1, s8
77:               sub          s0, s10, a5
                  bgeu         s7, s0, 88f
                  sltu         zero, s1, t4
                  bgeu         s9, s3, 97f
81:               add          s6, t4, a2
                  bltu         s4, s4, 89f
                  and          a2, s6, s11
                  srli         t2, s2, 14
                  sub          s7, a1, a4
                  slti         a3, a5, 614
                  beq          s3, s2, 89f
88:               sll          s6, s0, t4
89:               slt          s5, gp, s4
                  xor          s2, t2, t0
                  add          a5, tp, tp
                  lui          a5, 14917
                  bne          s5, s1, 101f
                  xori         s7, s7, 1104
                  bne          s9, s7, 98f
                  sltiu        t5, a6, -1105
97:               or           s6, s8, s5
98:               auipc        a2, 417673
                  bne          s11, t5, 103f
                  srai         s7, s1, 20
101:              beq          s8, t3, 103f
                  bne          a3, s2, 108f
103:              srl          t6, s3, s6
                  sll          s6, t2, t5
                  bge          s6, a0, 119f
                  bltu         s0, t5, 119f
                  slli         s1, a5, 15
108:              add          a1, t5, s11
                  xori         a5, sp, 1868
                  auipc        t0, 1002092
                  and          t2, s5, a0
                  add          t4, s0, t1
                  or           s1, gp, t3
                  bge          s8, s2, 119f
                  add          s7, gp, a6
                  add          s6, sp, tp
                  sltiu        s6, t1, 1013
                  sltiu        s8, t0, -946
119:              xori         sp, t2, 1882
                  sltu         s11, t2, s2
                  lw           a7, 4(t1)
                  srli         t3, a0, 0
                  addi         t1, t1, 24
                  sub          t2, s9, s4
229:              addi x13, x17, 0
229:              jalr x13, x13, 0
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
.word 0x9ec0a91d, 0xa1c10ffb, 0x77abde5b, 0x1d7208a4, 0xc252e9d6, 0x9e601daa, 0xa8bd942d, 0xba873ea3
.word 0x8f773bbd, 0xed43f50f, 0xabe3fb67, 0x98c383cb, 0xe8d25ae2, 0xabad6e5d, 0x987b5773, 0xa3078809
.word 0x302a88e8, 0xa8aff0c7, 0x4a692ba0, 0x6e12c97c, 0xaab0d4a1, 0xff48d887, 0xd3e8bf39, 0x0681f5df
.word 0x585387d9, 0x31a81da8, 0x9b734e1b, 0x01f6867f, 0x98cbc768, 0x5629fc20, 0x7af86e2a, 0xe39414a2
.word 0x9a41d4fe, 0x2a8fed7f, 0x6e4b88ce, 0x2a7fa5ce, 0xf501d00e, 0x0462e73c, 0x775a2691, 0xb3ac788e
.word 0x2246aca3, 0x50e3bec6, 0xf72cdf61, 0xdbf8d8f2, 0x7eba65a7, 0xb3927ee6, 0x0960e379, 0xe7433da3
.word 0x4a2c1987, 0x4800740d, 0x1e918585, 0x6dc2db25, 0x5b79636e, 0x9eea830a, 0x1d7db4b6, 0x6b1bc15c
.word 0x8c19edf3, 0xbe057989, 0xa8499626, 0x267631e9, 0xdb333d6c, 0x897dcaf9, 0x50b56170, 0x05ac2885
.word 0xd0348b2e, 0xcf0a7d68, 0xec4b22d6, 0x88970b15, 0x01830cac, 0xca5da5cf, 0x072c9336, 0x00721f05
.word 0x679c26a8, 0x80bf098d, 0x62c4b91d, 0x4f934648, 0x2a999292, 0x982ae13f, 0x8c58f5b6, 0x1010979a
.word 0xcb17059c, 0x653cec84, 0x42027d38, 0x0d106f82, 0x6d231c5b, 0x2df2d0b9, 0xa4574ea2, 0x1f819e5c
.word 0x9af0c925, 0x741c70aa, 0xc0e79bae, 0xa94c52a0, 0xa00c1a55, 0x374d1728, 0xd55c1e4a, 0xc4226b42
.word 0x74b8ea3e, 0x73d58de7, 0x513cdaad, 0x2806ef08, 0x0b4802cc, 0x915c077a, 0xe966e2f2, 0xdbd1cb02
.word 0x38cef097, 0x57953f89, 0xb17f9a6c, 0xf6314614, 0x251ce967, 0x9495ddb9, 0xdd18385b, 0x4f5aea95
.word 0xa59ef83a, 0x774b2a6b, 0x25d8194e, 0x141a52a5, 0x3437c111, 0xdabdcdb4, 0x163f525b, 0x53b25b7d
.word 0x2720b7db, 0xf499da3e, 0x2b0f828b, 0x53d1397c, 0x9b955dfd, 0x546bb121, 0x3aea0522, 0x454769b0
.word 0xc4309124, 0x50dfe999, 0xf9663fbf, 0x0eee5b3d, 0x6badb47f, 0x06275661, 0x0dfe6175, 0xec673a02
.word 0xa6f4ec47, 0x18c144de, 0x95287324, 0xe89b019b, 0x4b394bb8, 0xd11484ff, 0xef45d5bb, 0x16be7bf6
.word 0x4cec3e5c, 0xa6a508af, 0xd5e22d05, 0xe06fc064, 0x20c9c1ea, 0x1a83baa1, 0xaa33e09f, 0x82d0f5cf
.word 0x8e2e269f, 0x771c19f9, 0x10a12dac, 0xfadc493f, 0x425f4181, 0xc0d2dbed, 0x0d5e3b2c, 0x89368f50
.word 0x3dd03250, 0x78513eaa, 0xf49c7d66, 0x7cbe8e32, 0x3d8c910a, 0x167278d8, 0x34e6a603, 0xb62b64f0
.word 0x1f487377, 0xa8260d53, 0xe3f1dc3e, 0x2f1ee05b, 0xac07c6c5, 0x27c79bd1, 0xe02f6576, 0x3b259957
.word 0x0c2925ba, 0x46e7e845, 0x37959d26, 0x69aa5d98, 0x568fa5b7, 0xe8388ac3, 0x559c9dda, 0xf00b0ba7
.word 0xaef8046a, 0x669ae776, 0x205185d0, 0xbf94b20a, 0x80879e90, 0xc6213609, 0x06adc9bd, 0x37717bf3
.word 0xcf9eb633, 0xb5ab38d1, 0x90b8c30a, 0xb7fe7369, 0x2e80f4c7, 0x1e6992ff, 0x8a1881cb, 0x129da7b5
.word 0x883bad99, 0xe1f0d9dc, 0x6b110ef8, 0xba927350, 0xdd0efb85, 0x7f440f25, 0x9ed93818, 0xffc3794d
.word 0xbbef76e9, 0x65d31375, 0xdb1a406b, 0x010ebe71, 0xc6f0d566, 0xa32e8904, 0x62219bfd, 0x816495ed
.word 0xb2ce4437, 0x58f05504, 0x65723c28, 0xec407768, 0x5511fed8, 0x9766b587, 0x87197da9, 0x1004ad95
.word 0x76073079, 0x11df8e1e, 0x3d82bac7, 0xe8234a00, 0xb8ba3b2b, 0x9173d5f9, 0xcf25fa99, 0x4195524a
.word 0xab41c3c8, 0xe24c2144, 0xec5ef734, 0x55decd7c, 0x4cc6f53a, 0x16028ab3, 0x31cc6c19, 0x8222e533
.word 0xfbc96f56, 0x78900a56, 0xe5716997, 0x620b372e, 0xe8fa59c4, 0x8d06152e, 0x18e61017, 0x0d5c0b05
.word 0xb84a3ba5, 0x9ed08af6, 0x4ef2836e, 0xc72e8b6a, 0xa4a10ecb, 0xf8581548, 0xc0653adb, 0x2b2296fb
.word 0x25b0bda2, 0x81298e8e, 0xe68f4fb4, 0x041e74df, 0x1bc94b2d, 0xad558e2b, 0xe7bf4f8d, 0xb642eaaa
.word 0xdeda5aef, 0x8ac020ec, 0xbfa21d9d, 0x4ff260c9, 0x311d0ed1, 0x732f9807, 0xa7d61a32, 0xf097c4c6
.word 0x28aff4da, 0xe3a11090, 0x62ddb544, 0xe73c49d9, 0x104e7ffd, 0xde69cfc5, 0xfb998840, 0x4c0994c8
.word 0xf9dd1457, 0x3e669d2a, 0x84741922, 0x02e4ea95, 0x019de952, 0xa3612e5e, 0x5997091e, 0x89dca84f
.word 0xc549b1f3, 0xe7e36ebe, 0x44de0ba1, 0xcb3a45c3, 0x60381c96, 0x9978ab93, 0x9a00d48f, 0x25fae9d3
.word 0xbde2963a, 0x7cbd69e8, 0x33e4dbe0, 0x79bdf0c0, 0x8c7e2c59, 0x90300b00, 0xb0b2403a, 0x9604d83c
.word 0x6ac5eba8, 0xf1da3612, 0x1cc2917e, 0x1e7cd0fb, 0xabb2eda3, 0x0915d40a, 0xb11c2089, 0xc025ad1e
.word 0x264d80d8, 0x7e6674d9, 0x04a6a45a, 0xb17042b9, 0x54373e4a, 0x20798a7d, 0x79461564, 0xd0aea8f9
.word 0xf0aff0de, 0x878a0818, 0x3f49e49d, 0x81a2d879, 0x237f3f64, 0x70a9e7fc, 0xfacd1f83, 0x2d393f54
.word 0xde17449b, 0x55cf6c8e, 0x1ae09a60, 0x36c0510b, 0xb0eb7a1c, 0x26cd3e4e, 0xd07656b3, 0x02b79b53
.word 0xcd14c073, 0x6beafd4b, 0xcd62f340, 0x2751bb16, 0x44705ed2, 0x4cf21723, 0xf1d4a7a2, 0xddcf4f8f
.word 0x2d2f8003, 0x085fbf93, 0x1aec1dff, 0x42a72a65, 0x280931c6, 0xc724f335, 0xf8555ba5, 0x36f35f30
.word 0x75b333f8, 0x8bb71c61, 0x910cf004, 0x52ed39d3, 0xc8436a13, 0x13c0edc4, 0x9b663013, 0x08e898a4
.word 0x168dee4f, 0x64e6d6d1, 0x30eb29b2, 0x428762b6, 0xc0226c8c, 0xb52938c0, 0x4b87f139, 0x1c434048
.word 0x07750db2, 0x00d93dba, 0x63ed0eef, 0xb94b4ced, 0x8ede0fb8, 0x9b1ac2cd, 0xac87d91a, 0xd67b558a
.word 0xf509525c, 0x02d4efa6, 0x04915d74, 0x1c053311, 0xe9d02032, 0x26e567a2, 0x4af3dffa, 0x44af32fd
.word 0xb73812d1, 0x5c3057e5, 0x9bc8afca, 0xa88a4b8a, 0xef2b872e, 0xf327cefc, 0xecb6d888, 0xae7874f8
.word 0x028191e1, 0x20a0ab66, 0x9c4120f5, 0x79e43ac8, 0x57a0e009, 0x20d1dca3, 0xfd259d04, 0x68280d8e
.word 0xb4bca8e2, 0xb072850e, 0xd3dca27f, 0x6b5fe328, 0xd584893d, 0x2c25e237, 0xb103bcd8, 0xa3f7a9ec
.word 0x15876f97, 0x2ac5b418, 0xb3211fb0, 0x394f14e2, 0x48492a12, 0x569da7a4, 0x23d141ab, 0x1d58fa2e
.word 0x6ab1f95c, 0xf1a575bb, 0x55634947, 0xe32e50ae, 0x118cf071, 0xa89ba894, 0x1c7d057a, 0xb895aa55
.word 0x97918623, 0x4b6fb49b, 0xaa3e9444, 0xc0092a9c, 0xcaf9352d, 0xfcab2527, 0x628c6286, 0xb04b80a3
.word 0xca4ec0ef, 0x35afc671, 0xd9c07826, 0x36102fc0, 0xfbb5c554, 0x799589ac, 0x37d70f26, 0x450994f9
.word 0xe43bed5f, 0xbeafbdbf, 0xf5500cb9, 0x125b023e, 0xb65a4d79, 0x740fecc9, 0x055a265d, 0x622515aa
.word 0xdbf3ee25, 0x7dbeb30a, 0xe86a899d, 0xa6864760, 0x2bfcac93, 0x163c7fbc, 0x67f207f8, 0x0dcbc1de
.word 0xc7e826d7, 0xbf99bff0, 0xac1d08ec, 0x44cfd6cc, 0x9d0378a4, 0x9e75383a, 0xd505b7ff, 0xc4656be6
.word 0x79718f01, 0x3a28e22e, 0x58bfdbfa, 0x47404796, 0xfa694543, 0x2998ce2d, 0x0989bc83, 0x7b4dc92d
.word 0x728218f4, 0xaa1dec87, 0x77617d95, 0x53c0a534, 0xaf955e0f, 0xb5945b5a, 0x648d8433, 0x2c0f1b66
.word 0xb4da286d, 0x82758a7c, 0xcbc756a5, 0x6ad95618, 0xae12a76d, 0x4025bbc1, 0xfe396480, 0x10377fa8
.word 0x8810ad35, 0x84f4e60d, 0x6ba56d78, 0x907c85ee, 0xfbc27854, 0xf00fe66c, 0x7f570ec3, 0x456f7bde
.word 0x3460859f, 0xfe8f2973, 0x56ea8602, 0x81be9cee
.section .region_1,"aw",@progbits;
region_1:
.word 0xe9f7430b, 0x626931d3, 0x77cfb72a, 0x9f8e1a51, 0x004d9456, 0x912e1285, 0xd9d1ba5a, 0x70e2476d
.word 0x8257c41b, 0x593c9c51, 0x40e3ae17, 0xd508ad71, 0xc89982ec, 0x6778e3ee, 0xa35b18c4, 0xa1adccb3
.word 0x0ea62d66, 0xfa6d213e, 0x2f843404, 0x78ef8b86, 0x3a296d79, 0xeafae529, 0xfdc1e042, 0x9ed12e23
.word 0x59a7397b, 0x0b5036a9, 0xc98ffddd, 0x0f19363d, 0x26504bb9, 0xbb4c633a, 0xf54fb7a2, 0x203bdd7c
.word 0x0b77fc91, 0xaa0bbcac, 0x711b4593, 0x3754f973, 0x2750d854, 0x0c27cd16, 0x79d381ee, 0x2d3cf71b
.word 0x69466d5c, 0x0da4548b, 0x7e72198d, 0x5a0d2195, 0x5d3df47f, 0xee67ce99, 0x487af10a, 0x7795d51c
.word 0x23e09482, 0x53e72e92, 0xef7ee773, 0xa15c43c8, 0xcb34bd3b, 0x2d26b5d1, 0x3ae57f05, 0x729e3bb3
.word 0xd4102cc5, 0x9ce8c16f, 0xd4ff4f04, 0x9b59e899, 0xe2e82f25, 0x0f1e50b7, 0x60b7fc65, 0x203eb4a9
.word 0xddcd26ea, 0x5d4917db, 0x007afd40, 0xeedfec6a, 0x0b26bd7f, 0xb36fd0bf, 0xa274e596, 0x519f52a1
.word 0x3a9366b9, 0xa515079a, 0x13f7c323, 0x5bc0396a, 0x48af74e1, 0xbde93eed, 0xf170b537, 0xc6b6b498
.word 0xaa7afa85, 0x1b689c8e, 0xbbba38f1, 0x6b738e51, 0xbc2d9ee7, 0x339b0f24, 0xfbcd6108, 0xaf1c68b5
.word 0xc01028ce, 0x40e62cdb, 0x4a2f36e1, 0x05053c81, 0x4bf86d4b, 0xbe3c0abc, 0x32ca54fe, 0x108d2f0b
.word 0xc615cf07, 0xeaa974ac, 0x0d140fd3, 0xdaed4404, 0x3cffdb54, 0x67a22c48, 0x352968c3, 0xef90b2b6
.word 0x4b391d62, 0xf2c49e41, 0xdb24895a, 0x297d2bef, 0x3f0d1cd9, 0xc865db73, 0xdbe34bbd, 0xadb9d72b
.word 0xe97fd5e1, 0x0fd43d24, 0x91114e92, 0x4abce78f, 0xa2b5cfee, 0x8a0c05bb, 0xb5d9f985, 0x3ae05dec
.word 0x641f0bc9, 0x671b5f97, 0xfbdd0f6c, 0xeaf3a1ea, 0x0dbef7cd, 0x32802e97, 0x88e4ff2f, 0x6a8a6399
.word 0x073fa35e, 0xd486ea1b, 0xb3619f7c, 0x6448099e, 0x80d64cab, 0x59b7eeec, 0x6187d000, 0x3efea815
.word 0x0ac6e4b9, 0x62f0fae3, 0x35dbe4cf, 0xd1a66d74, 0xb0a3073a, 0xbca3a005, 0x0851612d, 0xba5d1cd8
.word 0xbc9c7a37, 0xda0ba2de, 0x21dd2363, 0xfb84ed0c, 0xdd35f8ab, 0x3e5339de, 0x4edf8f2e, 0x48e429fa
.word 0x7c2144c9, 0xe1ee972d, 0xfdd589b3, 0xcf48dd93, 0x00ce613e, 0x5dca7367, 0x6b79f6a1, 0x95f7b646
.word 0x1e052efe, 0x4068c9a5, 0x387b5890, 0x4ef94aeb, 0xc907844e, 0xb8c35bf3, 0x391e6ab5, 0x3615aba0
.word 0x70cfaa1e, 0x7d69c311, 0x2bcc51f9, 0xce9321dd, 0x727f9497, 0x5f556056, 0x0ac04096, 0x0d9ac588
.word 0x5eb5c9bc, 0xe818ed06, 0x455529e2, 0x1dac778a, 0xd4a3b8c7, 0x6ccc6a04, 0xf2a650fb, 0x2592a2ab
.word 0x2848ab3c, 0x93358f5a, 0x8bec5194, 0x5f81f29c, 0xcb266c89, 0x9629d42c, 0x89316e72, 0x7ad29395
.word 0xb0b0dc4d, 0x40936e22, 0x37a090b4, 0x8b27a760, 0x6c5ec6e6, 0xf15c1557, 0x6a201cff, 0x1e279359
.word 0x70d69338, 0x3677437c, 0x7e82b99d, 0xada7c9b1, 0x59e9b3bd, 0x49a34b51, 0xd5a0280d, 0xb9cd4646
.word 0xa85b42d8, 0xd1d95087, 0xd33f1327, 0x6f630220, 0xb94fe58f, 0x40e2abac, 0x310d179b, 0xeb646c78
.word 0xd2926e22, 0x50bb2bd4, 0xc728b790, 0x0bbad39f, 0x13b2238d, 0xb2081750, 0xf3032d14, 0x53479a95
.word 0x9bc9fc13, 0x16672970, 0x7b977d48, 0x05569da1, 0x17afa94f, 0x1bfbb271, 0x6a411e2a, 0x6d1568ed
.word 0xe6366142, 0xb19516cc, 0x3b1bd0fe, 0x8b81b4c6, 0x4e7ca0e2, 0x880899ed, 0x6c67316f, 0x02ea56c9
.word 0xbeae1be9, 0xb3f4234a, 0x681b8d8d, 0x6e58cffb, 0x1ccdde86, 0xd6cb6c66, 0xf668efc2, 0x3e4ba959
.word 0xe35ef1d4, 0x97750b8c, 0x3d16bd15, 0x49b42f93, 0x672e16ee, 0x2311b93e, 0x591482d0, 0x746a40b5
.word 0x81e28066, 0x5e3b4c02, 0xc72ba3ec, 0xd5b270f9, 0x16652c7e, 0xdc124bd6, 0x4c7eda03, 0xbe9cab26
.word 0x295f0ebc, 0x24efe272, 0xfe6c10ac, 0xb888086e, 0xc75e7030, 0xc8a60d40, 0xaa4be10f, 0xb1ce6ffa
.word 0x3a0e97e1, 0x54e33aee, 0xb185975b, 0x3249fe85, 0x0442a360, 0x8afd84b0, 0xe9771018, 0x7be56e18
.word 0xed2f7571, 0x03980fa4, 0x056a92ae, 0x7d3ea56b, 0x69839bb5, 0xb4c064b0, 0xe1db6b26, 0xe02f1073
.word 0xb03da1dc, 0xf539e722, 0x8bb177c8, 0x0521b2b9, 0x984abdd4, 0xf00a2667, 0x029799ad, 0xf69c821d
.word 0x20c46c60, 0xa2d6eecc, 0x62e52c06, 0xef208526, 0x6f5c4f15, 0x2d99a42f, 0xeff4a98d, 0x10ad21d7
.word 0x75a038d0, 0xfe9bd1c1, 0xaa393fad, 0x00728450, 0x48673560, 0x756b6eea, 0xfac1f4dc, 0x67a69d3e
.word 0xf9587a1e, 0x1e6a6b12, 0x962f34fb, 0x449589c7, 0xcccd1b40, 0xb5117f99, 0x329fde2f, 0x7cd85439
.word 0x8923fb1f, 0xcb613a29, 0xe13ffa4c, 0x332b4c88, 0xc1ae692b, 0x8120b6f5, 0xbbc88c29, 0x9883f685
.word 0xccf9c795, 0x7a8d8e7b, 0x22e021c5, 0xce78b5dc, 0x84d23e8e, 0x780842c8, 0x0f101cc8, 0x4284d8ac
.word 0x24ccf621, 0x1a309b31, 0x6a4cf994, 0x525baf7a, 0x9f16adc1, 0x59b058b3, 0xf636ed9e, 0x5ce534c7
.word 0x8bf2e751, 0x19680b39, 0xec83858b, 0xf747ea91, 0x8d1d19ab, 0x95af3f6e, 0xbfd03762, 0x7f8e6f39
.word 0xbc7c8975, 0xfd88f36d, 0x689da7d6, 0x3412bde3, 0x7fb56cf4, 0xdb5aaafb, 0x2b0ae798, 0x9715c20e
.word 0x764ce28e, 0x041cba00, 0x7b2b11fe, 0xf888fe82, 0x6e101358, 0xc42e9f37, 0xf24fdc40, 0x8afcbccd
.word 0xd4c7f3e8, 0xd9a2c0ee, 0xbde8389d, 0x76422d96, 0x51a717f4, 0x78470e42, 0x8cb8bd48, 0xb8807bb4
.word 0x422cc678, 0x4cb95d87, 0x948fd153, 0x330c2485, 0x5d9f118b, 0x705972ef, 0xe9e7b1cd, 0x188c7a47
.word 0xbb3eed98, 0x7710e249, 0x108263a2, 0x0fcc1df3, 0xe0debf4a, 0x5ba1f9a9, 0x00145784, 0x7ee2ed42
.word 0xe1bc8095, 0x2d1e9f31, 0xf8fc69ec, 0x9174d65a, 0x5f27332a, 0xa89afe9b, 0xfdac5740, 0x0d403a1c
.word 0xe396ff5a, 0x5429d9b9, 0xa63ca8ff, 0xedb41f3f, 0x6382eedb, 0x3f09d73f, 0x74de0e31, 0xb76070a6
.word 0x61852ee6, 0x48f25982, 0xe9dcd069, 0xe31d1595, 0x7a39f7db, 0xf7400936, 0x17ee4d22, 0xb2945778
.word 0x1dc1b683, 0x674fdc4e, 0x865872e0, 0x3e13c45c, 0xfe839c13, 0x0bd2a66b, 0x4debccb8, 0xce834822
.word 0xc7934709, 0x5ea70b92, 0x0033527e, 0xed8b7028, 0xba51f4aa, 0x247fd5b1, 0x6f7c119e, 0x092ab9b8
.word 0x434ed786, 0x21316609, 0xa02c27bd, 0x11fa2299, 0x9d6e75ec, 0xdce01e5f, 0xe28666b8, 0x647f3059
.word 0x326c53d2, 0xcccb4b44, 0x2d676ff4, 0x92732d5f, 0x008aee6d, 0xb1774d02, 0x798ce074, 0xf4568913
.word 0xe9802ae1, 0xd2cd5055, 0x825879be, 0x3c2cf353, 0x658a8385, 0x5c839cdf, 0xe1b0b096, 0x12011697
.word 0x21c12907, 0x79813748, 0x61aafb76, 0x92ccb20b, 0x247ddacc, 0xf1144892, 0xa81a4f34, 0x4e177733
.word 0x7cab6ecc, 0x72c36c53, 0x92370540, 0xcd25868d, 0x163a34fa, 0xe455d708, 0x6728ca2b, 0x7949024a
.word 0x71d68e69, 0x58f09223, 0xee3038e2, 0xe4c831f0, 0xa9c749c1, 0x97844fd1, 0xffc47d0b, 0x88023b14
.word 0xafaa3302, 0xf05b7551, 0x84e9c0d0, 0x44f2e7a7, 0x522a8997, 0x49948eae, 0x2c948dc3, 0xfb625eb5
.word 0xbe8255ba, 0x1b137712, 0x057b2b60, 0x2048d8b4, 0xb1ae8619, 0x9c727592, 0xdfe29d2e, 0x0a6f102c
.word 0x97d69aa9, 0x2dd745ee, 0x6fbc1fd3, 0xebb18ff9
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x16, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x16, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x16, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x16, x20, ecall_handler
                  li x20, 0x1
                  beq x16, x20, instr_fault_handler
                  li x20, 0x5
                  beq x16, x20, load_fault_handler
                  li x20, 0x7
                  beq x16, x20, store_fault_handler
                  li x20, 0xc
                  beq x16, x20, pt_fault_handler
                  li x20, 0xd
                  beq x16, x20, pt_fault_handler
                  li x20, 0xf
                  beq x16, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

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
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
