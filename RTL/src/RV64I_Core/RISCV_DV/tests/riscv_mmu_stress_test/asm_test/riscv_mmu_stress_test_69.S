.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x23a2fd37
                  li x2, 0x80000000
                  li x3, 0xcae24004
                  li x4, 0x80000000
                  li x5, 0x7
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x5
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x13, 0xb
                  li x14, 0x0
                  li x15, 0xfaece6eb
                  li x16, 0x80000000
                  li x17, 0xf1c0b02d
                  li x18, 0x4
                  li x19, 0xe84e49a6
                  li x20, 0x80000000
                  li x21, 0xfcc7368d
                  li x22, 0x80000000
                  li x23, 0x28b967b6
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x79bf5d58
                  li x28, 0x80000000
                  li x30, 0x3
                  li x31, 0xa
                  la x29, user_stack_end
main:             la           sp, region_0+1624 #start riscv_load_store_rand_instr_stream_3
                  lh           s3, -1172(sp)
                  sb           s2, -243(sp)
                  or           ra, t5, s2
                  lw           s6, -1524(sp)
                  lb           t1, -83(sp)
                  lb           zero, -727(sp)
                  slt          a0, s11, a6
                  lbu          s5, -1530(sp)
                  slt          t5, t2, s4
                  xor          a1, zero, s1
                  or           s1, t6, t4
                  slti         s6, ra, 578
                  lbu          t0, -1187(sp)
                  lb           zero, -225(sp)
                  sb           s8, -812(sp)
                  sb           a0, -904(sp)
                  lw           t0, -24(sp)
                  sb           s6, -1183(sp)
                  sb           t4, -251(sp)
                  lb           s0, -1037(sp)
                  slti         s11, s10, 215
                  sb           s11, -1169(sp)
                  add          ra, t3, s2
                  and          a5, s10, t2
                  sub          t5, a6, a4
                  lbu          tp, -35(sp)
                  nop
                  lhu          s11, -1248(sp)
                  sb           s4, -988(sp)
                  sb           a5, -791(sp)
                  nop
                  lb           s4, -256(sp)
                  xori         s6, s5, -1233
                  lh           s3, -1552(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+764 #start riscv_load_store_hazard_instr_stream_1
                  sb           t6, -7(sp)
                  lb           t0, -7(sp)
                  lbu          t6, -7(sp)
                  lbu          t6, -4(sp)
                  lhu          s6, -8(sp)
                  addi         t1, a6, -1327
                  sb           s4, -3(sp)
                  lb           s2, 2(sp)
                  lhu          a5, 4(sp)
                  lbu          s5, 0(sp)
                  sra          s7, s0, t4
                  sh           s3, 4(sp)
                  lb           tp, 3(sp)
                  lhu          t1, 6(sp)
                  lh           s5, 6(sp)
                  slti         t1, zero, -372
                  add          s10, ra, gp
                  slti         a0, a6, 306
                  srl          s11, s6, s2
                  lbu          a6, 15(sp)
                  lb           s5, 15(sp)
                  srai         t6, a0, 14
                  lbu          s6, -3(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+1853 #start load_store_instr_stream_3
                  la           s1, region_1+72 #start load_store_instr_stream_1
                  la           t3, region_1+1907 #start load_store_instr_stream_4
                  lh           t6, -1061(sp)
                  lb           s3, -40(s1)
                  la           s6, region_1+713 #start load_store_instr_stream_0
                  la           s2, region_1+997 #start load_store_instr_stream_2
                  sb           a5, -39(s1)
                  sb           a1, -1626(sp)
                  lbu          a1, 12(s2)
                  lw           s8, 52(s1)
                  lhu          t5, 37(s6)
                  lb           a6, -8(s6)
                  lb           s5, 43(s1)
                  sb           a3, 7(s2)
                  sb           gp, -1198(sp)
                  lbu          s11, -1554(t3)
                  lhu          gp, 31(s6)
                  lb           t0, -1893(t3)
                  lbu          s4, -998(sp)
                  lb           s0, -714(t3)
                  lbu          s7, -1703(sp)
                  sb           t1, -1032(t3)
                  sb           zero, -149(s6)
                  sw           s7, -8(s1)
                  sb           gp, -1142(sp)
                  lb           s8, -147(t3)
                  sb           a4, 4(s2)
                  lbu          t2, -214(s6)
                  lh           gp, 147(s6)
                  lb           tp, -981(t3)
                  lb           t1, -54(s6)
                  lh           a5, -1011(sp) #end load_store_instr_stream_3
                  lbu          a6, 8(s2)
                  sh           t3, -469(t3) #end load_store_instr_stream_4
                  lb           a5, 37(s1) #end load_store_instr_stream_1
                  lhu          a4, -3(s2) #end load_store_instr_stream_2
                  sb           s7, 218(s6) #end load_store_instr_stream_0
                  la           s9, region_1+999 #start riscv_load_store_rand_instr_stream_0
                  sb           s8, 20(s9)
                  lw           s1, 29(s9)
                  and          tp, a5, a3
                  lbu          s10, -37(s9)
                  lb           s8, 40(s9)
                  lbu          a3, -47(s9)
                  lbu          s3, -21(s9)
                  sll          s11, tp, s6
                  lb           s6, -54(s9)
                  sh           s1, 35(s9)
                  lbu          s10, 32(s9)
                  sw           a4, 49(s9)
                  lh           s0, 43(s9)
                  add          zero, a5, s11
                  srl          a5, s10, s7
                  sh           gp, 57(s9)
                  andi         a4, s5, -133
                  lbu          a6, 14(s9)
                  sh           s0, 35(s9)
                  lhu          t5, -23(s9)
                  sltiu        t6, s8, -1869
                  auipc        t5, 430369
                  lb           a0, 18(s9)
                  sll          sp, t2, t2
                  lbu          a4, 47(s9)
                  nop
                  sb           s3, 50(s9)
                  lb           a1, 19(s9)
                  sb           a6, -19(s9)
                  andi         s1, zero, 1502
                  sltu         t6, s6, zero
                  sb           t0, 16(s9)
                  sb           a2, 63(s9)
                  srl          t1, tp, t0
                  lh           zero, -59(s9)
                  auipc        a1, 716215
                  lhu          s3, -5(s9)
                  lui          gp, 965755
                  sh           s5, 59(s9)
                  xor          zero, a3, t0
                  sb           s0, 43(s9) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+712 #start riscv_load_store_rand_instr_stream_2
                  sb           s10, -353(a6)
                  lb           t0, -589(a6)
                  lbu          a4, 565(a6)
                  sw           t1, 260(a6)
                  slt          t2, s0, a5
                  lh           s5, 198(a6)
                  sb           s7, -347(a6)
                  srai         a1, tp, 2
                  sb           s6, 667(a6)
                  lb           t2, 980(a6)
                  lb           s11, 1200(a6)
                  lb           s5, 609(a6)
                  sb           s0, 559(a6)
                  lhu          sp, 1244(a6)
                  srai         s10, a5, 12
                  lh           s8, 674(a6)
                  lbu          t0, 478(a6)
                  addi         s11, a2, 1952
                  lhu          t1, 1264(a6)
                  and          zero, s6, s7
                  lb           sp, -322(a6)
                  lb           a4, 1119(a6)
                  lb           s9, 1207(a6)
                  xor          zero, sp, s8
                  lbu          a3, -458(a6)
                  lb           s7, -328(a6)
                  slli         s8, s1, 9
                  lbu          s1, -666(a6)
                  lh           a1, 1058(a6)
                  sb           ra, -76(a6)
                  and          s7, s5, t3
                  addi         s3, a5, 1997
                  lui          gp, 103962
                  xor          s5, a6, sp
                  lbu          s8, 1078(a6)
                  srai         a4, a4, 5
                  or           a5, t5, sp
                  auipc        s7, 697923
                  lh           tp, 740(a6)
                  lh           a3, -144(a6)
                  sb           sp, 137(a6)
                  lw           t1, -712(a6)
                  nop
                  add          zero, a5, s9
                  lb           s4, -535(a6)
                  lh           t2, 586(a6) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+194 #start riscv_load_store_hazard_instr_stream_3
                  lhu          a0, -40(sp)
                  sb           a4, -4(sp)
                  lhu          s9, -4(sp)
                  lw           s3, -46(sp)
                  nop
                  lw           s0, -46(sp)
                  lbu          a5, 1(sp)
                  ori          s4, a7, -21
                  lb           a4, -44(sp)
                  lh           s8, -54(sp)
                  lbu          t3, -54(sp)
                  lbu          a3, -38(sp)
                  sb           a2, -38(sp)
                  lb           a5, 43(sp)
                  lbu          t0, -15(sp)
                  lbu          a3, -15(sp)
                  sb           a4, -15(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s2, region_1+323 #start riscv_load_store_hazard_instr_stream_2
                  lh           a0, 31(s2)
                  lb           a4, 31(s2)
                  sh           s10, -11(s2)
                  lbu          s4, -52(s2)
                  srai         s7, sp, 26
                  sb           s6, 60(s2)
                  lb           s4, -22(s2)
                  srai         gp, s5, 14
                  lh           sp, 7(s2)
                  lh           a3, 7(s2)
                  slli         a3, t5, 31
                  lb           sp, 46(s2)
                  ori          tp, s3, 125
                  lbu          s10, 46(s2)
                  lbu          a6, 51(s2)
                  lbu          s1, 51(s2) #end riscv_load_store_hazard_instr_stream_2
                  la           t0, region_1+142 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t3, 30(t0)
                  lh           s5, 30(t0)
                  lh           t1, 30(t0)
                  lw           a0, 30(t0)
                  lbu          a3, 30(t0)
                  lbu          t6, 1698(t0)
                  lbu          s10, 1698(t0)
                  sh           s3, 1698(t0)
                  sh           s11, 1698(t0)
                  lb           a4, 1857(t0)
                  lbu          gp, 1369(t0)
                  lbu          a6, 1369(t0)
                  sb           a4, 983(t0)
                  srli         sp, t3, 2
                  lw           t6, 1678(t0)
                  sb           a2, 195(t0)
                  lhu          t1, 794(t0)
                  sb           t5, 191(t0)
                  lbu          a4, 1363(t0)
                  sb           s2, 1525(t0) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+103 #start riscv_load_store_rand_instr_stream_1
                  sh           a0, -9(sp)
                  sra          a5, s7, a0
                  lbu          s9, -6(sp)
                  and          a4, a4, a2
                  sb           s7, -1(sp)
                  slli         s6, sp, 0
                  sltiu        t1, s3, -1872
                  lw           s8, 9(sp)
                  xor          s3, s10, t5
                  ori          s1, t1, -1171
                  lw           a4, 5(sp)
                  lbu          s9, 13(sp)
                  srai         t6, s5, 18
                  srl          s11, a1, s6
                  sltiu        tp, a4, 1360
                  sb           s4, -14(sp)
                  ori          a5, a2, -1927
                  sll          s3, s5, s11
                  lui          t3, 382714
                  xor          s7, s11, s10
                  xor          s5, t4, t0
                  sltu         t0, s9, a0
                  sb           zero, 15(sp)
                  xor          s7, a1, t1
                  lh           gp, 7(sp)
                  lw           s9, -15(sp)
                  sra          s3, a0, s10
                  sh           ra, -11(sp)
                  sb           t3, 1(sp)
                  sltu         a0, t2, a1
                  sb           a4, 8(sp)
                  sb           a2, 12(sp)
                  lb           a4, 11(sp)
                  sub          t0, s3, s0
                  sh           t2, 1(sp)
                  sll          s9, a4, a1
                  lh           s0, 9(sp)
                  lb           s0, 0(sp)
                  sb           a5, -6(sp)
                  addi         t1, s10, 1721
                  sra          t2, s1, gp
                  sb           tp, 7(sp)
                  lw           gp, 1(sp)
                  lb           ra, -3(sp)
                  lb           a5, -1(sp)
                  add          t0, a4, a5
                  lb           s11, 8(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+178 #start load_store_instr_stream_1
                  la           t0, region_0+875 #start load_store_instr_stream_0
                  sh           t6, 14(s0)
                  lbu          t3, -16(s0)
                  lbu          ra, -252(t0)
                  sh           a3, 6(s0)
                  lb           s5, 46(t0)
                  sw           t0, 169(t0)
                  lbu          a1, -9(s0)
                  lb           sp, -13(s0)
                  lhu          a5, 63(t0)
                  lb           s3, -1(s0) #end load_store_instr_stream_1
                  lb           s9, 115(t0) #end load_store_instr_stream_0
                  add          gp, s3, gp
                  sltiu        a1, a1, 1168
                  nop
                  sll          s4, t1, t5
                  auipc        a4, 418078
                  andi         t1, a7, 1605
                  or           a0, s7, t6
                  sltiu        tp, tp, -144
                  xori         t3, a3, 306
                  addi         s6, ra, -171
                  and          t3, s2, a6
                  or           s4, t6, t2
                  la           tp, region_0+1594 #start load_store_instr_stream_0
                  la           a3, region_0+598 #start load_store_instr_stream_1
                  lb           a1, -865(tp)
                  sb           t3, -7(a3)
                  la           t6, region_0+864 #start load_store_instr_stream_2
                  sh           t3, 22(a3)
                  sb           tp, -21(a3)
                  lb           s6, 512(t6)
                  lb           s1, -1439(tp)
                  sh           t6, 1118(t6)
                  lb           a0, -237(tp)
                  lbu          s5, 53(a3)
                  lh           s6, 252(t6)
                  lb           gp, -689(tp)
                  lh           s7, 0(a3)
                  lh           s2, 410(t6)
                  lbu          t3, -647(t6)
                  sb           a5, 367(t6)
                  lb           t5, -29(a3)
                  lbu          t2, -1038(tp)
                  sb           t4, -1399(tp)
                  lb           t3, 64(a3)
                  lbu          s0, 672(t6)
                  sh           a6, 54(a3)
                  sb           zero, -72(tp)
                  lbu          a0, -54(a3)
                  sb           gp, -1184(tp)
                  sb           a6, -712(t6) #end load_store_instr_stream_2
                  lh           s4, -50(a3) #end load_store_instr_stream_1
                  lbu          s8, -1263(tp)
                  lbu          zero, -1179(tp) #end load_store_instr_stream_0
                  bltu         s9, s3, 17f
                  auipc        a4, 1024978
                  or           s1, s9, s5
                  slti         sp, s8, 1440
                  slti         s10, s4, -1349
17:               bge          t4, a2, 20f
                  ori          a6, s11, 1535
                  sltiu        t1, s1, 1796
20:               sll          ra, s5, t5
                  add          s8, t5, gp
                  or           ra, gp, tp
                  and          a5, t4, tp
                  bne          s0, s5, 34f
                  addi         a5, s7, -1425
                  ori          s3, a0, 1586
                  slli         s9, a3, 22
                  slti         s0, a7, 1875
                  nop
                  xor          a4, t6, t6
                  and          t2, sp, s2
                  andi         s4, s8, -1672
                  blt          s10, t2, 39f
34:               or           ra, t3, s5
                  or           s5, t0, a0
                  ori          s5, sp, -1637
                  bltu         s8, s8, 48f
                  xor          s4, a6, s6
39:               addi         a4, t3, 1073
                  la           t5, region_1+551 #start load_store_instr_stream_0
                  la           s2, region_1+1311 #start load_store_instr_stream_4
                  la           a5, region_1+1981 #start load_store_instr_stream_2
                  la           s8, region_1+93 #start load_store_instr_stream_1
                  la           s7, region_1+783 #start load_store_instr_stream_3
                  sh           t2, -81(a5)
                  sb           tp, -14(s2)
                  lw           t1, -137(a5)
                  lb           s3, 10(s7)
                  sb           s4, 6(s2)
                  lbu          a0, 957(t5)
                  lhu          a1, -15(s2)
                  sb           s5, 377(t5)
                  lw           sp, 3(s8)
                  lhu          s0, 109(s7)
                  sb           a6, 14(s2)
                  lb           a6, 76(s8)
                  lh           a0, -393(s7)
                  lb           s9, -262(t5)
                  lbu          t6, 16(s2)
                  lhu          gp, 5(a5)
                  lb           a0, 164(s8)
                  lb           gp, 969(t5)
                  sb           a6, -691(s7)
                  lh           s11, 1075(s7)
                  lhu          a1, -231(a5)
                  lw           s4, 1173(s7)
                  lb           zero, -486(t5)
                  lb           s10, -174(a5)
                  lb           sp, 64(s8)
                  sw           ra, 5(s2)
                  lbu          sp, 1391(t5)
                  sw           s8, -7(s2)
                  lhu          a4, -95(a5)
                  sb           t1, 8(s2) #end load_store_instr_stream_4
                  lw           s4, -267(s7)
                  lb           s4, -254(a5)
                  sw           t6, -25(s8) #end load_store_instr_stream_1
                  sw           s5, 1093(s7)
                  lb           s6, -88(a5)
                  lb           s0, -498(s7) #end load_store_instr_stream_3
                  sb           a5, -163(a5) #end load_store_instr_stream_2
                  lb           t0, 322(t5)
                  lbu          a6, 1322(t5) #end load_store_instr_stream_0
                  blt          t3, t0, 43f
                  sra          gp, s8, s10
                  andi         t6, ra, 513
43:               xor          zero, s5, s8
                  beq          s4, t5, 58f
                  ori          s3, s0, -1758
                  srl          s4, s8, t6
                  auipc        s3, 890774
48:               andi         a5, ra, 1596
                  or           s2, a7, s7
                  srli         s11, s5, 26
                  slti         s1, a7, -396
                  lui          a6, 963528
                  andi         a0, t0, -1711
                  sltiu        ra, s6, 701
                  blt          a1, s7, 58f
                  nop
                  xor          s7, a6, t0
58:               sltiu        t0, t4, -863
                  xori         a5, t1, 897
                  bltu         a0, ra, 62f
                  bltu         tp, a5, 78f
62:               sltiu        t3, a2, -1990
                  bltu         a1, t5, 79f
                  beq          t6, a1, 71f
                  xori         t0, s0, 1816
                  xori         a5, a2, -1436
                  srl          s9, t6, a1
                  slli         s10, s9, 20
                  srli         s1, t3, 6
                  sltiu        tp, s9, 97
71:               bltu         a5, s10, 72f
72:               slti         s1, s0, 39
                  andi         tp, t1, 1881
                  sra          s10, s2, tp
                  sltu         s6, zero, s0
                  blt          a2, gp, 96f
                  andi         gp, t5, 94
78:               slti         a0, s0, 1204
79:               slti         a4, t1, 1849
                  beq          s10, t1, 83f
                  slt          t3, s11, gp
                  sub          a4, s9, a4
83:               sra          a5, s8, s1
                  beq          t0, s8, 94f
                  srai         t3, s0, 31
                  and          s4, s6, tp
                  beq          s5, sp, 88f
88:               sltu         a0, s0, t1
                  slt          s2, t2, t1
                  blt          s10, a3, 96f
                  bge          a6, tp, 92f
92:               sltiu        s5, a6, 1901
                  or           s8, t2, s6
94:               beq          s1, s4, 97f
                  slli         t1, a6, 2
96:               slti         a6, t0, -1428
97:               srai         sp, t5, 1
                  add          ra, ra, gp
                  slti         s6, a5, -957
                  addi         s5, gp, -312
                  addi         a5, zero, -598
                  srli         t5, t3, 19
                  xor          s8, a7, t0
                  srai         zero, s11, 1
                  sra          t6, a6, t3
                  or           s10, s2, a1
                  bgeu         a0, zero, 114f
                  addi         a3, s1, -1091
                  xori         s11, a2, -971
                  xori         s10, s11, -1745
                  auipc        s4, 476601
                  blt          t4, a2, 116f
                  slt          t2, t2, t4
114:              and          s1, a5, tp
                  lui          s9, 339959
116:              ori          sp, s10, -928
                  auipc        a1, 926195
                  srai         t2, tp, 18
                  slti         s10, s0, 461
                  auipc        s3, 1023693
                  xor          sp, t0, s7
                  xor          gp, sp, gp
                  sll          a6, s1, s8
                  srai         a5, t0, 30
                  sll          t1, gp, t3
                  nop
                  beq          a2, a0, 145f
                  add          s7, s9, s2
                  ori          s1, a6, 1707
                  beq          s6, a7, 144f
                  and          t5, t3, t0
                  sltiu        a4, t5, -334
                  srai         s5, a5, 22
                  srai         s5, tp, 16
                  nop
                  srai         s6, t0, 22
                  sra          ra, a2, a1
                  bne          s2, s2, 148f
                  bltu         zero, t0, 146f
                  bgeu         s9, a6, 145f
                  andi         gp, t5, 948
                  auipc        s2, 105636
                  xori         s1, s5, 51
144:              ori          t0, s6, 1863
145:              blt          tp, s0, 158f
146:              lui          t3, 860310
                  xori         s11, a3, 1552
148:              or           s0, s11, t5
                  sltiu        t0, a4, -534
                  ori          ra, a2, 889
                  nop
                  sra          t0, s9, t0
                  nop
                  sra          s5, a0, s10
                  slt          s0, t3, tp
                  or           ra, t6, s10
                  sub          sp, s5, s11
158:              slti         a1, s6, -1985
                  bgeu         s11, s8, 166f
                  lui          s0, 603907
                  sltu         zero, t3, s8
                  srli         t0, t6, 8
                  ori          s7, tp, 600
                  srli         sp, a6, 11
                  sltu         s9, s2, ra
166:              bne          s5, t0, 178f
                  slti         s5, a4, 1519
                  beq          s7, sp, 185f
                  sub          tp, t0, s3
                  srai         s9, gp, 26
                  slti         a0, s7, 1128
                  add          t2, s7, a5
                  beq          s3, s10, 177f
                  sra          s0, gp, s4
                  sltu         s9, t3, s5
                  sra          a1, t2, s5
177:              bltu         s0, a4, 184f
178:              addi         a0, s11, -1589
                  blt          s9, a5, 192f
                  xor          t5, t0, s5
                  srai         s8, zero, 26
                  sll          t0, s10, s1
                  bge          s11, s1, 188f
184:              bne          s6, zero, 187f
185:              sltu         s9, s9, t2
                  or           t2, a4, s5
187:              and          t2, t4, zero
188:              srl          t5, t0, tp
                  sra          s3, s5, s4
                  sra          t6, s8, t6
                  slli         a0, s9, 31
192:              slt          a3, t2, s1
                  xor          t0, a4, t0
                  slti         s4, s3, -925
                  sll          a6, a2, gp
                  sltu         t1, zero, t2
                  sll          s2, a1, a2
                  slli         t5, s8, 5
                  nop
                  blt          s8, a2, 207f
                  blt          s10, a3, 213f
                  blt          a0, t6, 220f
                  addi         tp, t4, -1341
                  beq          t5, a3, 205f
205:              andi         s8, ra, -524
                  ori          gp, s0, -1889
207:              add          s11, s9, s1
                  blt          t6, s1, 210f
                  srai         ra, ra, 3
210:              sra          s8, s8, ra
                  bge          ra, t2, 218f
                  andi         s11, s7, -1809
213:              andi         t6, t2, -1822
                  addi         s5, t0, -1389
                  blt          s8, s1, 218f
                  beq          a4, t5, 230f
                  ori          a5, a3, -1632
218:              bne          s7, s7, 223f
                  slt          tp, s8, t0
220:              slli         t3, t1, 24
                  nop
                  slt          a3, a6, s0
223:              sub          s3, s5, a4
                  auipc        tp, 230933
                  beq          t2, t6, 236f
                  xor          s11, s0, a7
                  xor          s10, t3, t6
                  bge          a1, a2, 238f
                  addi         s7, s11, 159
230:              nop
                  sub          s3, s2, s5
                  sub          zero, t0, s0
                  andi         a1, a0, -149
                  lui          s11, 253336
                  add          t3, a0, s10
236:              nop
                  xor          s7, t1, t0
238:              lui          t5, 234573
                  bgeu         zero, a5, 245f
                  add          a1, t0, t0
                  slli         gp, s1, 4
                  or           s10, s6, t4
                  auipc        s8, 560385
                  or           s6, s5, s8
245:              srai         s11, tp, 25
                  nop
                  auipc        tp, 863956
                  andi         s2, t5, -228
                  sub          s11, t0, t5
                  srai         ra, t2, 25
                  slti         t2, t1, 503
                  bne          a6, s1, 253f
253:              sll          s11, s1, t6
                  ori          a5, t0, -949
                  or           t2, ra, tp
                  srl          ra, s0, a5
                  xori         sp, s9, -607
                  beq          tp, a2, 261f
                  xor          t5, ra, s11
                  add          s4, s1, t1
261:              bge          s3, t4, 271f
                  slti         s3, a5, 1975
                  and          t6, t1, s2
                  lui          s11, 761478
                  la           a6, sub_1
                  addi         a6, a6, -503
                  andi         tp, a7, -1838
                  srl          sp, s5, a1
                  slt          a3, a7, a5
                  bne          s10, a3, main_j1 #branch to jump instr
                  slti         a0, a3, -1648
                  slt          a5, sp, s8
                  srai         gp, t3, 12
                  sll          s2, s9, a5
                  srai         s6, t1, 19
main_j1:          jalr         ra, a6, 504 #jump main -> sub_1
                  srai         s4, gp, 1
                  blt          a7, s11, 265f
265:              addi         t1, gp, -703
                  bge          a3, sp, 276f
                  beq          a2, a0, 283f
                  sltu         s9, a5, a4
                  srl          t2, ra, ra
                  xori         a3, a3, 189
271:              sub          gp, s9, a0
                  bgeu         a6, a7, 279f
                  srai         a4, a1, 4
                  sltu         ra, s0, a4
                  or           t6, t6, a5
276:              sltu         s2, a2, s11
                  slli         a6, a6, 16
                  andi         a6, s8, -408
279:              addi         s11, s11, 1668
                  and          a1, t3, t2
                  ori          t3, t2, 976
                  srl          s0, s11, a4
283:              sltiu        a0, t1, -857
                  addi         gp, s5, -342
                  xor          a1, s2, t2
                  sll          s2, s0, gp
                  bne          gp, a1, 301f
                  slt          s3, a1, t2
                  srai         sp, s11, 7
                  slti         gp, a0, -189
                  srai         s10, gp, 30
                  auipc        a3, 293668
                  bltu         a7, s1, 296f
                  auipc        s5, 915645
                  blt          t0, a6, 315f
296:              slli         a0, s11, 30
                  bgeu         a5, t0, 300f
                  sltiu        gp, s9, 1394
                  lui          s9, 571305
300:              slti         a5, a2, 1887
301:              sltu         s5, a0, a5
                  and          s5, tp, gp
                  sra          s8, s3, t1
                  slli         s6, a6, 19
                  bgeu         s2, s11, 311f
                  slti         zero, tp, -1615
                  xor          s2, s5, s0
                  auipc        t1, 438129
                  sra          t5, tp, t5
                  and          tp, s9, a3
311:              ori          s5, t3, -376
                  or           t2, s3, s10
                  lui          s10, 761662
                  add          a3, s6, gp
315:              xori         s1, s10, 1591
                  auipc        s10, 264226
                  xori         ra, s4, -1656
                  srli         s11, a6, 29
                  slt          tp, s5, zero
                  slli         a6, s9, 15
                  sll          t3, s7, a4
                  beq          s11, a2, 336f
                  nop
                  bne          t0, s6, 331f
                  slli         s2, tp, 19
                  sll          s2, s4, t0
                  andi         s2, s8, 876
                  bltu         s6, a1, 329f
329:              bne          s0, zero, 346f
                  srai         a5, a3, 24
331:              sra          s0, a7, s7
                  beq          t3, s8, 333f
333:              xor          s9, gp, t3
                  or           s5, s11, s9
                  sltu         s3, zero, t2
336:              slti         t3, s6, -1991
                  slt          s1, gp, a4
                  slti         tp, t5, -657
                  sltiu        a3, s5, 392
                  slti         a3, tp, 12
                  bge          t2, t5, 361f
                  add          gp, a5, s7
                  bltu         s5, s7, 349f
                  slti         sp, s8, -501
                  sll          s5, s4, tp
346:              addi         s9, s9, -1836
                  beq          a3, s6, 365f
                  addi         a4, a1, 1988
349:              slli         t0, zero, 31
                  or           a1, zero, s1
                  ori          s10, tp, 1122
                  srai         s5, t2, 15
                  bltu         t0, t5, 363f
                  srai         sp, t3, 30
                  sll          t1, a7, t5
                  sra          s11, t0, a7
                  srli         sp, zero, 20
                  add          gp, s9, t2
                  srli         ra, t6, 2
                  addi         t6, s7, -119
361:              srai         a0, sp, 24
                  sub          s9, a2, s11
363:              sll          s9, a5, t1
                  slti         t3, t4, 613
365:              nop
                  ori          t5, t1, 1365
                  slli         s6, gp, 26
                  or           t5, t3, t2
                  slti         t0, a1, -119
                  sll          t2, tp, s2
                  srl          t5, a6, t0
                  sltiu        t3, tp, -1979
                  srai         a3, s0, 28
                  srli         t2, t4, 1
                  srai         a0, s11, 15
                  beq          a2, sp, 389f
                  and          t2, s2, s8
                  bltu         tp, s5, 388f
                  srl          zero, zero, t3
                  sltu         s9, t4, zero
                  nop
                  sll          a5, s3, s1
                  xor          a4, t5, sp
                  lui          s10, 259464
                  sra          s6, a3, s6
                  andi         zero, s3, 1988
                  ori          t1, ra, -1567
388:              sra          s1, gp, s4
389:              bgeu         a1, t0, 405f
                  srai         s4, a5, 29
                  sll          t1, s6, zero
                  beq          a0, s5, 396f
                  srl          a4, zero, s2
                  nop
                  bgeu         sp, s0, 405f
396:              nop
                  slti         sp, s4, -1919
                  srl          sp, a0, s6
                  blt          t1, a0, 402f
                  xor          s8, zero, a0
                  srli         a6, s1, 17
402:              add          s1, a3, s0
                  auipc        s4, 874322
                  sltiu        s9, s8, 1680
405:              ori          t2, s6, -1928
                  sra          t1, a2, a3
                  slti         s7, sp, 1264
                  bge          s0, a7, 411f
                  nop
                  auipc        gp, 59962
411:              slt          a3, zero, a3
                  srl          ra, t1, s3
                  sra          t5, t0, a4
                  slt          t1, t1, s6
                  bltu         s10, sp, 422f
                  srli         s3, a6, 16
                  add          a6, a4, s2
                  ori          s4, s2, 712
                  auipc        s8, 329659
                  bgeu         s7, sp, 426f
                  srli         t5, s11, 9
422:              addi         t1, t0, 284
                  xor          s1, t2, tp
                  sll          t6, t5, sp
                  or           s10, t3, s9
426:              slti         t0, sp, -1378
                  add          a5, t1, t5
                  sra          t1, a4, tp
                  addi         a5, s11, 1418
                  sub          a6, a7, s9
                  sll          a3, t1, a3
                  andi         t3, s0, -1574
                  nop
                  srli         a6, a2, 30
                  beq          s4, s5, 447f
                  xor          t1, t6, s3
                  and          t0, s11, a1
                  andi         s4, s0, 1614
                  lui          a1, 914361
                  sub          s3, a6, s4
                  xori         s5, s4, -819
                  sltu         a3, t3, tp
                  lui          s5, 1005927
                  nop
                  bne          t1, gp, 450f
                  sra          a3, s8, s2
447:              slti         s11, t0, -1959
                  sll          s7, a4, tp
                  slt          sp, s7, s11
450:              add          s5, gp, s10
                  slt          zero, t6, a5
                  bgeu         s6, t2, 457f
                  sra          gp, t2, t3
                  nop
                  sra          s5, a0, s5
                  bltu         s5, s4, 463f
457:              srli         a6, tp, 30
                  andi         a6, s7, -380
                  bgeu         a1, a3, 473f
                  addi         s11, a3, -1768
                  bgeu         s7, s11, 464f
                  and          s6, a3, a2
463:              srli         a0, s0, 10
464:              andi         s5, zero, 166
                  beq          s7, a6, 472f
                  sltiu        a1, a5, -1733
                  bne          s10, a2, 470f
                  srl          t0, a4, t4
                  add          s0, a6, a3
470:              sub          s5, sp, t3
                  or           s2, s10, s3
472:              andi         a4, a4, 336
473:              auipc        s1, 415369
                  and          s5, t2, t4
                  addi         s8, t5, 94
                  sll          s6, zero, a2
                  or           s6, t0, s2
                  bne          a3, a6, 480f
                  srl          a1, s0, a3
480:              bne          a1, s2, 483f
                  nop
                  ori          s5, s7, -2019
483:              auipc        a1, 642205
                  slt          a0, t5, a2
                  bge          s1, t6, 486f
486:              sra          t0, tp, sp
                  sra          s11, a3, t5
                  sub          s4, gp, t4
                  xor          t2, s1, sp
                  and          t1, t4, ra
                  add          t3, s9, t6
                  ori          s7, a7, 574
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sub          a0, tp, t4
                  addi         zero, zero, -249
                  auipc        t3, 826046
                  srai         s3, t6, 20
                  addi         s2, s5, 1517
                  sll          s10, t3, a5
                  addi         t4, t4, -44
                  and          s4, a4, s7
                  andi         a3, t2, -1791
                  sw           ra, 4(t4)
                  srai         t3, s9, 2
                  sltu         zero, t4, a0
                  sltiu        s2, s7, -1218
                  andi         t3, s9, 1164
                  slli         s11, a1, 20
                  add          a0, s5, s4
                  bne          s0, s9, sub_1_j2 #branch to jump instr
                  xor          s8, ra, gp
                  sltiu        s6, s9, 205
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srli         s0, t1, 8
                  la           s8, sub_2
                  andi         s7, a4, -105
                  slli         s2, a4, 4
                  addi         s8, s8, -664
                  srai         s1, s10, 30
                  bge          t2, ra, sub_1_j3 #branch to jump instr
                  xori         a6, s7, -219
sub_1_j3:         jalr         ra, s8, 664 #jump sub_1 -> sub_2
                  la           a6, region_1+883 #start load_store_instr_stream_0
                  lb           t0, -588(a6)
                  la           gp, region_1+1180 #start load_store_instr_stream_1
                  sb           t1, 742(a6)
                  lb           a0, 23(gp)
                  lhu          tp, -40(gp)
                  sb           a3, -556(a6)
                  sb           a5, -45(gp)
                  sb           a3, 794(a6)
                  sb           s6, -59(gp)
                  lbu          ra, 88(a6)
                  sb           sp, 31(gp)
                  lhu          ra, -589(a6)
                  lhu          s7, 949(a6)
                  lhu          a4, -46(gp)
                  lb           sp, -11(gp)
                  lbu          a4, -604(a6)
                  sb           a5, -39(gp) #end load_store_instr_stream_1
                  lbu          s6, -168(a6) #end load_store_instr_stream_0
                  la           a4, region_1+854 #start riscv_load_store_hazard_instr_stream_1
                  lb           s6, 8(a4)
                  lhu          s0, 8(a4)
                  sb           t5, 2(a4)
                  sh           s9, 2(a4)
                  lhu          t1, 4(a4)
                  lh           sp, 4(a4)
                  sb           a5, 9(a4)
                  lb           s11, 7(a4)
                  lbu          sp, 7(a4)
                  lbu          s5, 5(a4)
                  sll          sp, zero, s2
                  andi         s6, tp, -402
                  sb           a0, 16(a4)
                  lb           s6, 16(a4)
                  sh           s8, 16(a4)
                  xori         s8, a1, 754
                  lbu          sp, 16(a4) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+1016 #start load_store_instr_stream_0
                  lbu          t3, -2(tp)
                  la           t6, region_0+236 #start load_store_instr_stream_1
                  lbu          a6, 9(tp)
                  sh           a4, -24(t6)
                  sb           a6, 9(tp)
                  lhu          s11, -18(t6)
                  lhu          zero, -42(t6)
                  sb           t0, -34(t6)
                  lb           s9, 10(tp)
                  lb           s7, -14(tp)
                  sb           s11, -23(t6) #end load_store_instr_stream_1
                  lbu          a6, -5(tp) #end load_store_instr_stream_0
                  la           sp, region_1+1692 #start riscv_load_store_hazard_instr_stream_0
                  srli         s2, s7, 10
                  lbu          s5, 16(sp)
                  lh           tp, 16(sp)
                  lb           s9, 16(sp)
                  lhu          a5, 16(sp)
                  sb           a2, 16(sp)
                  lbu          t0, 16(sp)
                  slt          s3, s5, t0
                  lb           s11, 40(sp)
                  lh           s1, 40(sp)
                  sh           a7, 40(sp)
                  lbu          ra, 40(sp)
                  sll          a5, t5, s0
                  lh           t6, -52(sp)
                  lb           t6, -52(sp)
                  sh           a6, -52(sp)
                  addi         a0, a1, 651
                  lhu          s7, -52(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           ra, region_0+1801 #start riscv_load_store_rand_instr_stream_0
                  nop
                  srai         zero, s1, 7
                  add          gp, s7, s11
                  sb           t0, -715(ra)
                  sra          s2, s6, tp
                  lhu          t3, -681(ra)
                  srai         t0, a3, 18
                  slli         a4, a4, 22
                  srai         s4, t4, 11
                  or           s7, a1, t0
                  sh           t6, -1011(ra)
                  sll          tp, s7, t5
                  sub          s1, t4, s0
                  sb           s1, -1503(ra)
                  lbu          s7, -916(ra)
                  auipc        a1, 817043
                  add          s4, s10, a6
                  lw           a3, -1253(ra)
                  slt          s6, a5, a3
                  sll          a3, s8, zero
                  addi         a5, s8, -1811
                  slli         s1, s10, 29
                  and          a3, t0, gp
                  xori         s9, t3, 340
                  lh           s0, -1563(ra)
                  sltiu        s7, a5, 163
                  lb           s1, -1307(ra)
                  srai         gp, a7, 26
                  nop
                  slt          s11, t0, s3
                  srai         a4, s11, 31
                  srl          a3, t2, a6
                  sh           s10, -1141(ra)
                  slti         s9, s2, 1151
                  lhu          tp, -1341(ra) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+386 #start riscv_load_store_rand_instr_stream_1
                  lb           t1, -19(s7)
                  sll          a0, a3, s10
                  and          gp, s11, sp
                  lbu          a5, 237(s7)
                  lbu          a6, -127(s7)
                  lbu          tp, -20(s7)
                  xor          gp, s1, a1
                  srli         zero, s5, 31
                  lbu          s3, -47(s7)
                  xor          s5, s4, s0
                  lh           gp, 8(s7)
                  xor          zero, s2, ra
                  andi         sp, t1, -1688
                  srl          t6, a1, s3
                  lb           gp, -165(s7)
                  sll          s4, a7, s5
                  and          a1, t3, t0
                  sb           a6, 175(s7)
                  lh           a0, 168(s7)
                  nop
                  srli         a5, t1, 27
                  and          zero, t1, s1
                  sb           s4, 232(s7)
                  xor          a1, s3, sp
                  lb           t5, -72(s7)
                  lhu          t2, -228(s7)
                  lhu          t1, 164(s7)
                  sb           a4, -43(s7)
                  sb           t1, 141(s7)
                  add          s4, s5, t0
                  xor          tp, t0, a2
                  lh           t1, 196(s7)
                  sb           a2, -132(s7) #end riscv_load_store_rand_instr_stream_1
                  and          tp, s2, s4
                  nop
                  addi         a6, s9, -795
                  ori          s7, a1, -157
                  srli         a5, tp, 10
                  or           t5, ra, s5
                  slli         a1, a0, 28
                  andi         s5, tp, 1111
                  slli         s5, gp, 2
                  bgeu         a0, s7, 28f
                  or           sp, s4, a4
                  and          s7, zero, s3
                  lui          s2, 728153
                  bltu         a7, a5, 18f
                  or           t6, s3, a2
                  xori         a4, s6, 1272
                  srai         t6, s11, 29
                  sltu         s6, s0, s1
18:               slt          s10, zero, t4
                  andi         a3, a6, -1621
                  sltu         a1, a7, s0
                  sra          s7, s4, t5
                  slli         a4, tp, 7
                  sra          s3, s10, t3
                  auipc        s4, 974379
                  nop
                  sra          s7, sp, ra
                  bgeu         t4, t4, 45f
28:               bgeu         ra, a6, 31f
                  bge          a2, a7, 45f
                  sltiu        t1, s3, 729
31:               sll          t0, s1, t1
                  sra          a4, t0, t5
                  bne          a6, a7, 51f
                  sltu         a6, a3, s2
                  add          sp, a5, t6
                  slt          t3, s4, s6
                  sub          s3, a4, s0
                  auipc        sp, 8364
                  and          t5, a0, s9
                  auipc        s11, 694428
                  auipc        s7, 659550
                  sltiu        a5, t0, -98
                  sub          a0, a3, s8
                  sltiu        t3, a2, -510
45:               and          s8, s8, sp
                  bne          t5, s0, 53f
                  slli         a4, a2, 14
                  bltu         s0, s8, 61f
                  bne          t4, sp, 65f
                  lui          t6, 825614
51:               blt          a3, s4, 61f
                  sltiu        t6, tp, -964
53:               sub          gp, a5, a1
                  sll          s1, a7, t5
                  bltu         a0, sp, 74f
                  and          s4, t2, s11
                  srl          s10, s4, s0
                  slt          a3, s7, s2
                  and          s10, a5, s3
                  srai         t1, s8, 9
61:               sra          s6, t5, a7
                  or           t2, sp, s3
                  bge          s8, gp, 68f
                  sll          s9, s1, a4
65:               blt          t2, t2, 85f
                  or           t5, a2, a2
                  and          t6, s1, a4
68:               srli         a3, a2, 12
                  nop
                  srli         s10, a3, 30
                  ori          a5, s10, 1772
                  add          s9, a2, s7
                  sltiu        s8, s11, 1314
74:               slti         s9, s0, 1507
                  slli         t1, s2, 23
                  srl          t6, t5, s10
                  xor          a0, t3, s5
                  srl          s8, s10, ra
                  slt          zero, s8, t3
                  or           a3, s9, s11
                  bne          zero, ra, 92f
                  slli         a0, zero, 3
                  xori         zero, s8, 438
                  auipc        s3, 429038
85:               add          s2, s8, a7
                  addi         s1, t2, 1349
                  addi         s7, t4, -1284
                  sub          tp, tp, a5
                  slt          s6, s9, s9
                  slti         t2, a0, -911
                  auipc        tp, 712163
92:               xor          a0, a4, s1
                  bltu         t1, t5, 104f
                  auipc        s11, 41756
                  or           s8, a6, sp
                  or           t3, sp, s10
                  ori          s10, t2, -124
                  add          a3, gp, s11
                  nop
                  xori         t1, s0, 1592
                  srl          s6, t2, s2
                  slli         s9, a5, 22
                  slt          tp, s4, t0
104:              beq          a1, gp, 118f
                  bgeu         t2, ra, 107f
                  slli         zero, gp, 27
107:              andi         s9, s3, 1011
                  slt          s5, gp, s0
                  sra          s4, s1, tp
                  bltu         s10, s11, 115f
                  auipc        s1, 453346
                  slt          s0, s0, zero
                  slli         s8, s3, 2
                  bltu         t1, a2, 132f
115:              sltu         s8, s0, t6
                  sltiu        a5, s9, 1737
                  bge          s7, gp, 118f
118:              blt          a3, gp, 122f
                  bne          s8, a1, 128f
                  and          s9, s6, t3
                  sra          a1, t0, tp
122:              andi         s7, ra, -1497
                  bge          a5, a1, 127f
                  srl          t0, t0, a2
                  addi         t3, t5, 1921
                  ori          s5, s1, 459
127:              slti         s4, s7, 752
128:              and          s5, t2, zero
                  auipc        a3, 602386
                  bltu         s6, t2, 139f
                  slli         a0, a4, 31
132:              auipc        s11, 862000
                  srai         a6, a6, 29
                  slt          t6, a5, gp
                  bltu         zero, t4, 144f
                  sub          a4, s11, t1
                  sltiu        s7, s0, 1057
                  add          t1, ra, s0
139:              andi         t3, s2, -931
                  xori         s6, a3, -816
                  auipc        ra, 802936
                  add          sp, a4, s3
                  bgeu         s2, zero, 159f
144:              slli         tp, s4, 14
                  sll          a3, s10, s0
                  blt          s2, s3, 150f
                  and          s1, a7, tp
                  and          tp, t5, s4
                  beq          s10, s9, 152f
150:              srl          s9, s6, t4
                  andi         sp, s2, 995
152:              slti         s11, zero, -1813
                  beq          ra, s7, 165f
                  ori          s8, t5, 826
                  and          a5, t0, a2
                  andi         s5, s6, 1795
                  bge          s7, s8, 165f
                  lui          s9, 466430
159:              slli         s3, gp, 6
                  auipc        s8, 603352
                  srai         s1, s6, 0
                  xor          a5, a7, s3
                  sltu         s5, s9, s3
                  srli         s4, s4, 5
165:              add          t0, t5, s11
                  sll          sp, gp, t6
                  slli         t6, a4, 16
                  blt          s7, s1, 186f
                  sub          s2, a1, t4
                  sltu         gp, s2, gp
                  ori          a4, t2, 706
                  sltiu        t5, s4, -1436
                  srli         s5, a2, 20
                  or           a3, s4, s8
                  slli         a4, s1, 30
                  sra          t5, s1, gp
                  bne          gp, a4, 187f
                  add          a5, t3, t4
                  srli         s0, a0, 16
                  sll          a0, t3, gp
                  slli         t6, a6, 28
                  bgeu         s7, s3, 195f
                  bne          a6, s9, 194f
                  blt          t0, a6, 189f
                  xor          a0, t0, tp
186:              sll          s10, gp, t4
187:              xor          s6, t3, t6
                  sltu         s9, gp, t6
189:              srl          a4, t3, t3
                  srli         tp, t2, 19
                  andi         t3, s4, -63
                  blt          gp, a6, 203f
                  sll          s10, s11, ra
194:              sltu         tp, s3, tp
195:              lui          s4, 801984
                  bgeu         s9, s1, 203f
                  sll          s8, a7, ra
                  sub          t1, a1, t6
                  xori         s10, s9, -463
                  bge          s7, zero, 203f
                  bge          s7, s0, 203f
                  bltu         s5, s6, 203f
203:              slti         s0, s2, -550
                  lw           ra, 4(t4)
                  slli         zero, a4, 22
                  and          a1, s2, a4
                  slli         s7, t6, 0
                  or           a5, s11, gp
                  or           a3, t4, s2
                  xor          tp, s6, s0
                  nop
                  addi         t4, t4, 44
                  slli         t5, s2, 4
                  slti         tp, zero, -886
383:              addi x4, x1, 1
383:              jalr x4, x4, 0
sub_2:            addi         t6, s7, -1658
                  addi         t4, t4, -32
                  sltu         t1, s11, a6
                  and          s5, s10, a0
                  andi         s4, s1, 200
                  srl          zero, t6, t6
                  sw           ra, 4(t4)
                  xor          t3, zero, a6
                  srl          s4, s3, a5
                  sra          s8, t0, t2
                  la           sp, region_0+143 #start riscv_load_store_rand_instr_stream_0
                  lh           a4, -5(sp)
                  sra          t0, s5, a7
                  xor          ra, a4, t5
                  sb           tp, 8(sp)
                  slti         a6, a6, -1271
                  sh           a7, 13(sp)
                  sb           s9, -6(sp)
                  sb           t2, 8(sp)
                  lbu          t0, -7(sp)
                  sb           a0, 13(sp)
                  srl          s4, s0, a0
                  lbu          s1, 2(sp)
                  lbu          a6, 5(sp)
                  xor          s0, a2, a0
                  lbu          s9, 12(sp)
                  sb           a7, -10(sp)
                  addi         a6, a2, 980
                  or           s0, a3, t6
                  lbu          s1, -15(sp)
                  lbu          a5, -10(sp)
                  slli         ra, s6, 29
                  lbu          s11, -10(sp)
                  sra          s7, t2, s10
                  lb           zero, 10(sp)
                  or           gp, t5, t4
                  srai         s9, a2, 23
                  lbu          s9, -4(sp)
                  lbu          s2, 5(sp)
                  lbu          s9, 2(sp)
                  lw           gp, 9(sp)
                  lb           gp, 10(sp)
                  sb           gp, 14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_0+1523 #start riscv_load_store_rand_instr_stream_1
                  lui          s10, 69319
                  ori          t6, s6, -1405
                  nop
                  slt          s11, s8, a7
                  xori         s3, s7, 503
                  ori          gp, t2, -1132
                  sb           s0, 7(a4)
                  sb           a1, -13(a4)
                  lhu          s8, -9(a4)
                  ori          s5, t5, -459
                  srai         s0, a3, 16
                  lbu          t5, 10(a4)
                  add          a5, a4, ra
                  sh           s3, -1(a4)
                  lb           t6, -5(a4)
                  auipc        t3, 565559
                  lhu          a1, -7(a4)
                  sh           s2, -1(a4)
                  xor          a0, s1, ra
                  lb           t3, -12(a4)
                  lh           t3, -3(a4)
                  lb           s0, -16(a4)
                  lb           tp, -13(a4)
                  lb           a5, -16(a4)
                  andi         a5, a3, 1668
                  srli         a1, s7, 4
                  lb           t0, 4(a4)
                  lbu          t6, 0(a4)
                  sb           sp, 0(a4)
                  lb           s2, -16(a4)
                  ori          s0, a3, -1330
                  slti         ra, ra, -1574
                  sb           a6, -2(a4)
                  lb           gp, 4(a4)
                  sb           a7, -15(a4)
                  sb           a0, -3(a4) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+478 #start load_store_instr_stream_3
                  lb           tp, 35(s3)
                  la           a3, region_0+1315 #start load_store_instr_stream_2
                  lbu          a6, -107(a3)
                  la           t1, region_0+1660 #start load_store_instr_stream_1
                  lb           a5, -102(a3)
                  la           t0, region_0+1334 #start load_store_instr_stream_0
                  lbu          a4, -27(s3)
                  sb           t3, -18(t1)
                  lbu          s10, 49(t1)
                  lb           s10, -174(a3)
                  lbu          s5, 9(t0)
                  lbu          s7, -49(t1)
                  lb           s10, 188(a3)
                  sb           a2, -178(a3)
                  lhu          sp, 62(t1)
                  lb           s2, 47(s3)
                  sw           s3, -56(t1)
                  sb           gp, -52(t1)
                  lbu          s0, 1(t0)
                  sh           zero, -143(a3)
                  lh           a0, -30(t1)
                  lbu          s10, -89(a3)
                  lh           s11, 51(a3)
                  lh           a6, -64(s3)
                  lb           s7, -46(t1)
                  lbu          gp, 63(s3)
                  lb           s2, 9(t0)
                  sb           a6, 7(a3)
                  sw           s4, 58(s3) #end load_store_instr_stream_3
                  lbu          s9, 19(t1) #end load_store_instr_stream_1
                  lb           t3, -5(t0)
                  lbu          a1, -7(t0)
                  sh           gp, -203(a3) #end load_store_instr_stream_2
                  lb           t3, 1(t0) #end load_store_instr_stream_0
                  la           a5, region_1+1084 #start riscv_load_store_rand_instr_stream_2
                  slt          t0, t0, t6
                  lbu          s3, -1051(a5)
                  sb           sp, -27(a5)
                  srai         tp, s6, 6
                  lb           t6, -830(a5)
                  and          a6, a7, zero
                  lhu          tp, 890(a5)
                  add          a6, s10, a2
                  lb           a3, -690(a5)
                  nop
                  slti         t1, gp, -996
                  sb           t2, 824(a5)
                  xori         t1, a2, 408
                  sltiu        s3, s7, -1516
                  lb           s7, 257(a5)
                  lh           s0, 732(a5)
                  lbu          t5, -287(a5)
                  lbu          sp, 720(a5)
                  slli         zero, s11, 9
                  lbu          sp, -419(a5)
                  sb           t2, -557(a5)
                  lui          s3, 592593
                  and          t3, s1, s1
                  lbu          sp, 509(a5)
                  srl          t0, tp, a1
                  sh           gp, 450(a5)
                  slli         a1, s8, 24
                  sb           a1, -697(a5)
                  lbu          a6, -507(a5)
                  lb           s8, -455(a5)
                  slti         ra, t5, 1455
                  lb           t2, -9(a5)
                  sb           s10, -619(a5)
                  srli         tp, sp, 24
                  lbu          a6, -692(a5)
                  lbu          zero, -997(a5)
                  slli         a0, t2, 10
                  sltiu        s6, s10, -1470
                  lb           t2, 91(a5)
                  lbu          s9, -663(a5)
                  sw           a6, 616(a5)
                  sh           a2, -314(a5)
                  lbu          ra, -84(a5) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1157 #start load_store_instr_stream_0
                  sw           a5, 175(sp)
                  lbu          gp, 183(sp)
                  sb           s5, 206(sp)
                  la           s3, region_1+1877 #start load_store_instr_stream_1
                  lbu          t5, 69(sp)
                  lb           s4, -288(s3)
                  lh           a1, -133(sp)
                  lb           t0, -690(s3)
                  sw           s9, 99(sp)
                  sb           t1, -68(s3)
                  lh           a1, 15(sp)
                  lb           t6, 75(s3)
                  lb           s2, -1490(s3) #end load_store_instr_stream_1
                  lb           s0, -226(sp)
                  lb           t3, -221(sp) #end load_store_instr_stream_0
                  la           sp, region_0+1266 #start riscv_load_store_hazard_instr_stream_0
                  lw           a1, 10(sp)
                  sh           t0, 10(sp)
                  sb           ra, 10(sp)
                  sh           a6, 10(sp)
                  auipc        a6, 7443
                  add          s11, s2, a4
                  sltiu        t0, s9, -1220
                  addi         zero, a3, 1604
                  lb           s3, 10(sp)
                  lh           s2, 10(sp)
                  lb           s3, 25(sp)
                  lbu          s7, 25(sp)
                  lb           ra, 25(sp)
                  lui          zero, 906420
                  lbu          a5, 25(sp)
                  sb           tp, 25(sp)
                  sb           a4, 25(sp)
                  lbu          a0, 25(sp)
                  lb           s1, 25(sp)
                  sb           s8, 25(sp)
                  sb           s10, 25(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1965 #start riscv_load_store_hazard_instr_stream_1
                  sw           s9, -77(sp)
                  lui          s2, 55990
                  lbu          a1, -77(sp)
                  sw           a4, -77(sp)
                  sb           a6, -77(sp)
                  andi         t2, s3, 1719
                  sra          a5, a3, t1
                  sb           s4, -77(sp)
                  sb           s4, -77(sp)
                  lbu          s5, -77(sp)
                  slli         t1, t4, 14
                  add          s0, a4, s5
                  nop
                  sh           a7, -77(sp)
                  sw           tp, -77(sp)
                  lhu          t1, -77(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+1498 #start riscv_load_store_hazard_instr_stream_2
                  lw           s8, -1410(sp)
                  lw           s10, -1410(sp)
                  lhu          s0, -1410(sp)
                  sw           ra, -1410(sp)
                  sw           s9, -1410(sp)
                  sltiu        t0, a6, 1417
                  srl          s0, zero, a6
                  lh           s7, -1410(sp)
                  lui          s7, 765898
                  lh           ra, -1410(sp)
                  and          gp, s1, s2
                  slti         s2, a3, -1212
                  sh           a1, -1410(sp)
                  lh           tp, -1410(sp)
                  sh           gp, -1410(sp)
                  slti         s8, s9, 364
                  slti         tp, s11, -1690
                  lw           a1, -1410(sp)
                  sb           a4, -424(sp)
                  lh           a0, 126(sp)
                  sw           a5, 126(sp)
                  lbu          t2, 126(sp)
                  lb           t6, 126(sp)
                  lb           a3, 173(sp)
                  sb           a0, 173(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s3, region_1+1311 #start load_store_instr_stream_1
                  sb           s10, -28(s3)
                  la           t0, region_1+1479 #start load_store_instr_stream_0
                  sb           a4, 52(t0)
                  sw           s3, 61(s3)
                  lb           s2, -34(s3)
                  lh           a6, 15(t0)
                  sb           ra, 9(s3)
                  lb           a0, 20(t0)
                  sb           t6, -41(t0)
                  sb           a1, -48(s3)
                  lh           a5, 27(t0)
                  sb           ra, 61(s3) #end load_store_instr_stream_1
                  sb           t2, -6(t0) #end load_store_instr_stream_0
                  or           ra, a1, s1
                  bltu         a4, t1, 11f
                  beq          s0, tp, 3f
3:                beq          sp, s0, 4f
4:                andi         zero, s4, 986
                  bltu         s11, a7, 9f
                  slli         s4, s1, 4
                  bgeu         a0, t0, 13f
                  sll          a0, a3, s8
9:                addi         ra, gp, -585
                  sltu         s1, tp, tp
11:               xori         t5, s10, -54
                  srl          s6, s7, t1
13:               beq          a5, s4, 21f
                  slli         a4, a7, 13
                  add          tp, gp, a0
                  xori         s5, tp, 467
                  sltiu        s1, zero, -692
                  sra          t2, s3, a2
                  srli         s11, zero, 10
                  slli         s8, t3, 12
21:               and          s1, s10, zero
                  slli         s2, a7, 6
                  andi         t1, t6, -51
                  srli         t5, t2, 11
                  slt          t5, a3, a5
                  bltu         t0, s9, 45f
                  bltu         s11, a4, 35f
                  bge          a0, s4, 38f
                  slt          zero, ra, s9
                  xori         s7, s3, 1134
                  sub          a3, s10, zero
                  slt          s11, a0, s10
                  bltu         s9, a7, 34f
34:               srl          a5, a1, ra
35:               auipc        s11, 706842
                  sltiu        a0, s6, 449
                  ori          a1, a0, -1304
38:               slti         s7, s6, 954
                  nop
                  andi         a4, a4, -855
                  ori          tp, t0, -1391
                  srai         t0, t0, 17
                  lui          a6, 62573
                  xor          a3, s11, s11
45:               andi         a5, a2, -850
                  auipc        s2, 914146
                  sll          tp, ra, zero
                  srli         s9, s0, 6
                  lui          s1, 643115
                  add          zero, tp, s10
                  sra          a1, s1, s10
                  sll          gp, tp, s10
                  auipc        tp, 102761
                  srai         s0, ra, 22
                  and          s0, s8, a5
                  srli         tp, s7, 19
                  slti         a6, ra, -708
                  lui          s2, 804923
                  ori          a5, s8, 1749
                  srli         zero, t2, 4
                  srai         t3, t1, 19
                  or           s10, s1, t2
                  add          t3, gp, a2
                  beq          a5, s1, 71f
                  sub          s3, a3, s8
                  lui          s3, 862930
                  sra          a0, s11, t2
                  srli         tp, a3, 17
                  andi         s0, tp, -983
                  beq          a2, t5, 88f
71:               sub          t5, t3, a6
                  auipc        a4, 775248
                  andi         s9, a6, 72
                  bne          s8, s8, 78f
                  bge          t3, a4, 85f
                  auipc        s6, 814172
                  or           s0, a7, t1
78:               bge          a2, t5, 82f
                  add          a3, gp, ra
                  srai         t5, a3, 20
                  sll          t1, s9, s1
82:               ori          a3, s5, 779
                  bne          s3, t0, 89f
                  bge          s4, tp, 88f
85:               srai         s1, s1, 24
                  ori          t2, a0, -1144
                  sltiu        s2, a7, -383
88:               bltu         s7, ra, 96f
89:               andi         t2, s11, 1029
                  slli         t5, s3, 6
                  xor          gp, t6, s7
                  srl          s0, s5, ra
                  bne          a6, t2, 101f
                  blt          gp, a0, 113f
                  or           s5, t1, s3
96:               bgeu         s6, s8, 103f
                  add          zero, s0, a1
                  srl          a1, a7, s4
                  blt          t2, s0, 101f
                  beq          s0, s9, 112f
101:              slti         t3, a7, -878
                  beq          s10, a7, 112f
103:              sra          sp, t2, a1
                  ori          s4, a6, -1649
                  bltu         tp, a5, 125f
                  andi         s10, a3, 364
                  bne          a7, s8, 120f
                  and          sp, s5, a3
                  sltiu        s7, a6, 1449
                  or           zero, s11, t3
                  beq          a4, t0, 131f
112:              auipc        a1, 85973
113:              slli         t2, s1, 25
                  bltu         s11, t4, 123f
                  bge          t5, gp, 121f
                  andi         s9, sp, 223
                  auipc        a5, 168425
                  addi         t2, s9, 1211
                  lui          t5, 64332
120:              srli         s8, tp, 31
121:              bgeu         s5, a0, 137f
                  srli         gp, s10, 22
123:              lui          t0, 782415
                  sltiu        a1, t3, -1135
125:              addi         s10, t3, 670
                  slti         t3, t4, 1178
                  sra          s8, s4, tp
                  sra          s8, s8, s1
                  bge          t3, zero, 135f
                  sub          a6, a1, s4
131:              sll          t2, t1, s10
                  and          s9, a6, s6
                  slt          s11, gp, s11
                  auipc        s2, 917578
135:              or           t0, s11, a0
                  add          t1, t3, a1
137:              bne          ra, a2, 147f
                  bne          s3, s7, 139f
139:              sll          t5, a4, t4
                  and          tp, a5, a1
                  sra          a4, s2, a5
                  xori         t2, a4, 1086
                  slti         s3, sp, -597
                  srl          t1, a7, s10
                  bgeu         a3, s4, 158f
                  slli         s2, s5, 1
147:              sll          s1, tp, t5
                  sltu         s0, s2, s1
                  sub          s9, t2, a1
                  addi         s11, t4, 1276
                  sltiu        t1, t4, -1238
                  sra          s10, s0, a7
                  xor          a5, t2, t3
                  blt          s3, a3, 174f
                  bltu         t0, t2, 159f
                  auipc        t2, 357898
                  sll          t0, a2, a7
158:              srli         s1, tp, 12
159:              ori          t5, a5, -602
                  ori          a4, ra, -1236
                  sltiu        s10, a6, -720
                  xor          t6, s10, t4
                  or           t1, t0, t3
                  slti         zero, gp, 87
                  add          a4, t1, a3
                  bgeu         a0, t5, 184f
                  srai         a6, t6, 1
                  beq          a5, t0, 178f
                  add          s7, s11, s11
                  xor          s4, s2, s2
                  sra          s2, t1, ra
                  sltiu        s2, t1, -375
                  srl          t2, a1, s11
174:              xor          a6, s4, s6
                  add          a0, s0, t3
                  xori         s0, s4, 806
                  andi         tp, zero, 1104
178:              bgeu         s5, a4, 185f
                  addi         s0, s4, 1405
                  slti         t3, s2, -2000
                  slti         a6, s5, 468
                  auipc        a4, 254164
                  lui          a1, 868163
184:              ori          s11, t1, -77
185:              sltu         sp, tp, s11
                  srai         ra, tp, 17
                  sltu         s1, s11, t1
                  ori          s7, s7, 516
                  auipc        a0, 442796
                  and          sp, a3, tp
                  sltu         a3, t5, s4
                  sra          gp, a1, sp
                  xori         a3, s6, -1186
                  addi         a6, a3, -1686
                  sltu         tp, s3, t2
                  slli         t2, s0, 28
                  xor          s11, s11, a3
                  add          t6, a0, a6
                  or           s8, t0, zero
                  addi         a5, ra, -1723
                  slli         sp, t2, 7
                  blt          t0, t1, 222f
                  bne          a4, s2, 207f
                  andi         a5, s2, -725
                  sltu         s9, t1, a4
                  slt          t0, s9, t3
207:              beq          t1, t1, 211f
                  sll          s7, s1, s0
                  sub          t3, zero, a3
                  slt          t6, s3, s4
211:              nop
                  srli         s2, s7, 17
                  xori         a6, t1, -757
                  ori          t0, s0, 1092
                  xor          tp, t0, t4
                  lui          tp, 949330
                  srai         a6, t3, 17
                  slt          s6, gp, s2
                  sltu         s8, a2, s6
                  xori         t6, s1, 1372
                  or           tp, sp, a5
222:              slli         gp, s8, 0
                  and          t6, zero, s10
                  slli         ra, t1, 14
                  ori          t5, s0, -1255
                  andi         a5, a0, 204
                  bltu         t1, s11, 246f
                  bltu         s10, s9, 234f
                  auipc        s2, 815678
                  sra          s5, s4, a0
                  andi         s4, gp, 164
                  nop
                  slli         a1, a6, 8
234:              sub          gp, s4, s11
                  sltu         t6, a7, a6
                  srai         s2, a5, 20
                  sra          s5, ra, a0
                  bne          s8, sp, 246f
                  bge          t2, s3, 249f
                  andi         a4, s2, -398
                  xor          a5, a5, s9
                  auipc        s1, 412257
                  sltu         s10, a0, t3
                  slti         tp, s2, 719
                  beq          s3, t4, 261f
246:              ori          a4, a3, -1501
                  lui          tp, 476810
                  bge          s7, t3, 257f
249:              slt          t5, s2, a7
                  bge          a3, a1, 251f
251:              xor          t1, a4, s9
                  sub          a6, t4, t1
                  blt          a6, ra, 257f
                  lui          s6, 135404
                  srli         s7, s4, 3
                  beq          a2, t5, 263f
257:              srl          t1, t4, t5
                  slti         t3, a6, 1001
                  srai         s1, s7, 22
                  blt          s10, s5, 272f
261:              bge          a2, sp, 269f
                  or           a5, s0, a5
263:              beq          a2, s6, 265f
                  beq          s7, s6, 272f
265:              bne          s5, sp, 284f
                  blt          s2, s9, 276f
                  xori         t2, s4, 1987
                  sra          s9, a5, s7
269:              bge          s6, s6, 277f
                  beq          s0, t0, 276f
                  srl          s11, t2, s9
272:              sltu         s10, a6, s8
                  or           s8, s8, sp
                  sra          s8, zero, s1
                  xor          s4, sp, t6
276:              ori          t5, s5, 590
277:              add          ra, a1, gp
                  lui          t0, 384058
                  beq          t1, t3, 280f
280:              beq          t1, a1, 281f
281:              xori         s8, s2, 1477
                  slti         t0, s8, 1940
                  bltu         tp, zero, 291f
284:              slli         s7, s2, 8
                  srli         s2, s1, 19
                  sub          a5, s0, s0
                  auipc        s0, 462397
                  lui          a5, 730281
                  bge          s5, s6, 297f
                  xor          s8, s3, t3
291:              ori          a5, t1, -817
                  or           tp, s9, t5
                  ori          s4, t2, 1261
                  beq          a0, s0, 295f
295:              srl          a5, s10, s1
                  srai         s8, t2, 4
297:              slli         s1, gp, 21
                  addi         t5, t2, 572
                  xori         a5, s1, 88
                  sll          t0, t5, t0
                  lui          s4, 635216
                  or           t3, a7, t5
                  lw           ra, 4(t4)
                  add          a5, s9, a2
                  slli         a6, tp, 14
                  addi         t4, t4, 32
                  srli         s5, a7, 10
                  andi         s1, a1, 2028
                  srai         t2, a1, 31
                  sra          s8, ra, a4
                  slti         s2, a3, 1923
                  addi         s6, s0, -61
567:              addi x8, x1, 0
567:              jalr x8, x8, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x12, x29, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x2, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x2, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x2, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x2, x7, ecall_handler
                  li x7, 0x1
                  beq x2, x7, instr_fault_handler
                  li x7, 0x5
                  beq x2, x7, load_fault_handler
                  li x7, 0x7
                  beq x2, x7, store_fault_handler
                  li x7, 0xc
                  beq x2, x7, pt_fault_handler
                  li x7, 0xd
                  beq x2, x7, pt_fault_handler
                  li x7, 0xf
                  beq x2, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x29, x12, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
