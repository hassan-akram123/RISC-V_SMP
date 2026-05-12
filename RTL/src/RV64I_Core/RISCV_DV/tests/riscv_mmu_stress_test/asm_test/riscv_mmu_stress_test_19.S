.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xd88fb6ee
                  li x2, 0x3
                  li x3, 0x3
                  li x5, 0x3c7d31ee
                  li x7, 0x5
                  li x8, 0x0
                  li x9, 0x9
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x6f413223
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xd02a4eef
                  li x16, 0x74542a5c
                  li x17, 0xa
                  li x18, 0x192d8c97
                  li x19, 0xf544cae9
                  li x20, 0x2
                  li x21, 0x1
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x4
                  li x30, 0xf
                  li x31, 0x80000000
                  la x4, user_stack_end
main:             la           s11, region_0+1622 #start load_store_instr_stream_0
                  la           a3, region_0+1038 #start load_store_instr_stream_1
                  la           ra, region_0+564 #start load_store_instr_stream_2
                  lbu          a4, -27(ra)
                  sh           s1, -8(a3)
                  sb           ra, 115(s11)
                  lh           s1, -10(a3)
                  lbu          a2, -78(s11)
                  lhu          a7, 8(a3)
                  lw           a4, 70(s11)
                  sh           gp, 10(a3)
                  sb           t4, -8(a3)
                  lb           gp, 132(s11)
                  lw           s5, -228(ra)
                  sb           s11, 1(a3) #end load_store_instr_stream_1
                  sb           s8, -146(ra)
                  lbu          a0, -131(s11)
                  lbu          s4, 205(ra)
                  lh           t6, -192(s11)
                  sb           zero, -83(s11)
                  lbu          s6, 137(ra) #end load_store_instr_stream_2
                  sb           s10, 111(s11) #end load_store_instr_stream_0
                  la           s4, region_1+1200 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s11, 47(s4)
                  lb           t2, 47(s4)
                  lbu          ra, 47(s4)
                  add          t5, s10, s2
                  lbu          t5, 47(s4)
                  lbu          t3, 47(s4)
                  lbu          t6, 47(s4)
                  sltu         gp, a0, t5
                  lbu          zero, 47(s4)
                  lbu          t2, 47(s4)
                  lbu          a2, 47(s4)
                  sb           t3, 47(s4)
                  sb           a6, 47(s4)
                  lb           a5, 47(s4) #end riscv_load_store_hazard_instr_stream_2
                  la           s11, region_0+445 #start load_store_instr_stream_0
                  la           a2, region_0+144 #start load_store_instr_stream_2
                  la           s4, region_0+49 #start load_store_instr_stream_3
                  lbu          a6, -18(s4)
                  sb           t6, -123(a2)
                  sb           s3, -33(s4)
                  la           a4, region_0+1634 #start load_store_instr_stream_4
                  lh           t6, -49(s4)
                  lb           s6, 215(s11)
                  sw           s1, -37(s11)
                  lh           gp, 88(a4)
                  lh           sp, -224(a4)
                  la           t2, region_0+546 #start load_store_instr_stream_1
                  lh           s3, 45(s4)
                  lw           t0, -158(a4)
                  sb           s0, 29(t2)
                  lbu          sp, 199(a4)
                  lbu          ra, 166(a4)
                  lbu          s6, 6(s4)
                  sb           s3, -37(a2)
                  lb           s3, -110(s11)
                  lbu          a6, 120(a2)
                  sb           a2, -143(s11)
                  lbu          t5, 245(a4)
                  lh           s9, -20(t2)
                  lbu          s0, -219(a4)
                  lh           s7, -141(s11)
                  lbu          s1, -36(s4)
                  lbu          s8, -33(t2)
                  lbu          sp, 19(t2)
                  lbu          a6, 247(s11)
                  lb           a0, -63(t2)
                  lbu          a1, -40(s4)
                  lbu          zero, -188(a4)
                  sb           a4, -26(s4)
                  sb           t0, -131(a2)
                  sb           s4, 47(a4) #end load_store_instr_stream_4
                  lw           a6, 62(t2) #end load_store_instr_stream_1
                  sw           t5, -64(a2) #end load_store_instr_stream_2
                  sb           s3, 34(s4) #end load_store_instr_stream_3
                  sb           a6, -154(s11) #end load_store_instr_stream_0
                  la           s6, region_1+525 #start load_store_instr_stream_1
                  lh           zero, -5(s6)
                  la           t5, region_1+1731 #start load_store_instr_stream_0
                  lhu          t3, -21(t5)
                  lbu          a7, -54(t5)
                  lhu          s5, -7(t5)
                  sw           s9, -5(s6)
                  lb           s7, 38(t5)
                  lb           s3, 11(s6)
                  lh           s10, 13(s6)
                  lb           a4, 5(s6)
                  lbu          s3, -39(t5)
                  sb           t4, -12(s6)
                  lbu          gp, -48(t5)
                  sb           s3, 12(s6) #end load_store_instr_stream_1
                  lbu          a4, 11(t5)
                  sh           a0, 25(t5) #end load_store_instr_stream_0
                  la           a2, region_1+1367 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, -84(a2)
                  lb           s0, 7(a2)
                  sb           t3, 6(a2)
                  andi         a3, t2, -1752
                  ori          a4, a0, 1658
                  sra          s0, a4, a0
                  xori         t4, tp, -1711
                  srl          a0, t4, s3
                  lw           t5, 217(a2)
                  xori         s7, s2, -1602
                  sra          s10, t4, tp
                  srai         s0, a2, 19
                  sb           a6, -20(a2)
                  lhu          s9, 203(a2)
                  srl          a0, t0, s5
                  lbu          t0, -85(a2)
                  lb           t2, 184(a2)
                  lbu          s10, 50(a2)
                  slti         a0, t3, 1836
                  and          s5, s0, s1
                  sb           s2, -64(a2)
                  srl          a6, gp, t1
                  sltiu        s11, a6, 1043
                  and          s11, s2, s6
                  nop
                  addi         s3, a3, -1645
                  slti         s5, t2, -1933
                  srli         s11, a5, 30
                  and          a7, t0, s2
                  srli         a6, s0, 7
                  sub          gp, zero, a3
                  sb           s1, -122(a2)
                  lui          a3, 975222
                  nop
                  lbu          s5, -197(a2)
                  auipc        t0, 439757
                  sh           s2, 179(a2)
                  lb           a7, 44(a2)
                  lb           zero, -90(a2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+231 #start riscv_load_store_rand_instr_stream_0
                  srli         t6, t0, 29
                  sra          s11, s1, s7
                  sh           t2, -5(sp)
                  andi         t0, a7, 1474
                  slli         s9, s7, 0
                  auipc        t4, 710315
                  lbu          a1, -40(sp)
                  and          s4, s5, ra
                  sll          t5, t4, t4
                  lbu          a5, -58(sp)
                  sub          s11, a3, s9
                  sub          s7, s2, a2
                  sb           s6, -14(sp)
                  sb           s7, -6(sp)
                  xor          t2, s4, t5
                  or           t3, a3, s2
                  lui          t6, 206974
                  andi         zero, a4, 686
                  sb           a5, 56(sp)
                  sra          s5, s4, s1
                  lbu          a6, -44(sp)
                  sll          a1, s5, s1
                  slli         t2, s0, 11
                  ori          a3, sp, 1070
                  and          s6, s3, a0
                  lh           s3, -21(sp)
                  and          t4, t1, a4
                  lbu          a2, -44(sp)
                  srli         t4, s9, 11
                  lhu          s0, -5(sp)
                  sw           s4, 49(sp)
                  sltu         t0, s7, s8
                  or           a1, s0, zero
                  lhu          a5, 59(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_1+1030 #start riscv_load_store_rand_instr_stream_1
                  lbu          t2, 21(t6)
                  sb           a3, 23(t6)
                  lhu          s10, -56(t6)
                  ori          a5, tp, 995
                  lb           a0, -31(t6)
                  addi         s0, a3, 1167
                  lh           s6, 20(t6)
                  lb           a6, -37(t6)
                  sb           s7, 5(t6)
                  lb           a6, -35(t6)
                  lb           s0, 15(t6)
                  sh           a2, 6(t6)
                  addi         s7, s11, 1070
                  sb           s4, 60(t6)
                  lb           a2, -64(t6)
                  xor          zero, a1, a2
                  sw           a0, 10(t6)
                  sh           s7, 36(t6)
                  xori         s10, zero, -633
                  sub          a5, a0, gp
                  lui          ra, 101948
                  lh           t5, -30(t6)
                  lui          s0, 479667
                  xori         s11, s3, 1994
                  sb           s8, -17(t6)
                  sh           t2, 28(t6)
                  sb           s11, 60(t6)
                  ori          a6, t5, -1660
                  sub          a1, a4, a6
                  sltu         a4, t0, t5
                  add          s11, t1, s7
                  sb           a7, -11(t6)
                  and          zero, s2, s4
                  lui          t2, 621184
                  andi         t2, sp, -1998
                  lb           a1, 63(t6)
                  lb           a4, -13(t6)
                  srli         s11, s7, 23
                  auipc        a0, 872624
                  sb           a1, 52(t6)
                  lbu          a2, 13(t6)
                  lh           s7, 48(t6)
                  sh           a5, 32(t6) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+1076 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s10, 8(s5)
                  sltu         a0, t6, s2
                  lw           a1, 8(s5)
                  sb           t4, 8(s5)
                  lhu          t6, 8(s5)
                  or           a0, s7, a4
                  srli         s0, s5, 18
                  sw           a5, 8(s5)
                  sw           a7, 8(s5)
                  lhu          gp, 8(s5)
                  sltiu        t4, a5, 237
                  lw           s3, 8(s5)
                  lh           t4, 8(s5)
                  sltiu        zero, t3, -1210
                  lh           t5, 8(s5)
                  sh           s5, 8(s5)
                  xor          t4, t3, zero
                  lhu          a1, 8(s5)
                  lbu          s8, 8(s5)
                  sw           s5, 8(s5)
                  lbu          s11, 6(s5)
                  lhu          a3, 6(s5) #end riscv_load_store_hazard_instr_stream_0
                  la           a0, region_1+665 #start riscv_load_store_hazard_instr_stream_1
                  lb           t6, -472(a0)
                  sb           t4, 759(a0)
                  sh           ra, 185(a0)
                  lui          sp, 916358
                  lb           ra, 245(a0)
                  sh           a0, 245(a0)
                  auipc        s0, 193843
                  lbu          s11, 245(a0)
                  sh           s9, 629(a0)
                  sh           a0, 629(a0)
                  lui          zero, 1022207
                  lhu          t0, 1003(a0)
                  lb           s5, -609(a0)
                  and          s8, a7, t3
                  nop
                  lb           s9, -568(a0)
                  slli         a1, a7, 4
                  lbu          s0, -568(a0)
                  and          s3, s4, t1
                  lbu          s1, -568(a0)
                  lb           t4, -244(a0)
                  sb           s9, -40(a0)
                  lhu          a3, 1107(a0)
                  sb           a3, -330(a0) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_1+228 #start load_store_instr_stream_1
                  la           t6, region_1+785 #start load_store_instr_stream_0
                  lb           s8, 55(t6)
                  lbu          s1, 55(a0)
                  lbu          a6, 19(t6)
                  lb           a4, 39(t6)
                  sh           t1, -3(t6)
                  lb           a7, -225(a0)
                  sb           s2, -105(a0)
                  sh           t4, 55(t6)
                  lb           s5, -185(a0)
                  lhu          a2, 43(t6)
                  lb           sp, 254(a0)
                  lb           s4, 14(a0)
                  sb           a3, 53(t6)
                  lb           s8, -61(a0) #end load_store_instr_stream_1
                  lb           s0, 1(t6) #end load_store_instr_stream_0
                  la           ra, region_0+187 #start riscv_load_store_rand_instr_stream_3
                  sh           t1, 515(ra)
                  auipc        s1, 520830
                  lbu          s5, 1618(ra)
                  sw           s10, -175(ra)
                  lbu          s10, 489(ra)
                  nop
                  srli         zero, s4, 5
                  sb           t2, 1445(ra)
                  sw           a7, 1101(ra)
                  lhu          s8, 1405(ra)
                  sb           t1, 900(ra)
                  sh           s1, 163(ra)
                  ori          s4, t4, 1247
                  sb           ra, 27(ra)
                  lb           a0, 974(ra)
                  lb           t2, 225(ra)
                  sb           a0, 46(ra)
                  sltu         s10, t1, s9
                  ori          a7, s5, 66
                  lhu          t3, 765(ra)
                  slli         t5, s10, 24
                  lh           a5, 1513(ra)
                  lw           gp, 573(ra)
                  ori          s6, a2, -1049
                  lbu          a4, 152(ra)
                  lb           t0, 302(ra)
                  slti         a3, a3, -571
                  lb           s1, 457(ra)
                  lhu          s1, 1691(ra)
                  and          a2, s11, s7
                  andi         a4, s11, -41
                  sltiu        a7, s10, -213
                  srl          zero, s4, s5
                  srai         s7, s0, 24
                  lhu          s4, 1443(ra)
                  lb           s9, 937(ra)
                  xor          s1, zero, s4
                  srai         s1, s1, 13
                  addi         s3, t1, -149
                  lbu          a7, 206(ra)
                  sb           a1, 567(ra)
                  lb           t2, 852(ra)
                  sb           t5, 215(ra)
                  sltu         s11, s4, a4
                  sb           zero, 242(ra)
                  lb           a5, 143(ra)
                  srli         zero, s1, 18
                  sh           t0, 625(ra) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1326 #start riscv_load_store_hazard_instr_stream_3
                  nop
                  sh           t2, -50(sp)
                  lui          t6, 935978
                  andi         s6, a0, 1285
                  lbu          s7, 34(sp)
                  lw           a5, 34(sp)
                  sll          a1, s8, t5
                  xori         a6, s0, -1234
                  lbu          a6, -53(sp)
                  lb           a5, -53(sp)
                  lb           ra, -53(sp)
                  lbu          s8, -53(sp)
                  sb           a4, -53(sp)
                  lb           a2, -53(sp)
                  slt          a3, zero, s7
                  sb           s9, -53(sp)
                  sb           a1, -53(sp)
                  lb           a0, -53(sp)
                  lb           s4, 0(sp)
                  sb           a2, 14(sp)
                  lhu          a3, 14(sp)
                  nop
                  sb           a7, 14(sp) #end riscv_load_store_hazard_instr_stream_3
                  add          s9, s10, t4
                  or           ra, s9, s1
                  or           a5, tp, a0
                  auipc        t5, 1004832
                  xori         sp, gp, 1885
                  beq          a5, gp, 21f
                  slt          t6, s8, a3
                  xor          t0, s6, sp
                  nop
                  bltu         s1, t1, 26f
                  bltu         s3, s7, 16f
                  sub          a5, t0, zero
                  sra          s5, s2, s3
                  bltu         a3, a6, 18f
                  nop
                  blt          a3, zero, 24f
16:               sll          s6, s0, t1
                  add          s6, t2, a1
18:               srl          s11, a0, t2
                  sll          t0, s4, s10
                  and          s7, a3, a4
21:               srai         s5, tp, 9
                  slti         s6, s11, 1816
                  bltu         s9, t2, 35f
24:               srl          a2, a6, s0
                  slti         s6, a2, 1944
26:               sll          s0, t2, t2
                  beq          t3, a6, 33f
                  andi         s10, a7, -1566
                  srl          t4, ra, a3
                  srli         s0, ra, 25
                  beq          a0, t1, 34f
                  add          a3, s2, t0
33:               ori          t0, s2, 929
34:               sra          s11, a3, s0
35:               bgeu         t3, t6, 46f
                  srai         s11, tp, 14
                  srli         sp, t4, 4
                  slli         s3, t2, 5
                  blt          s4, tp, 49f
                  blt          ra, a3, 48f
                  sltu         s5, a4, s7
                  bltu         t2, gp, 45f
                  ori          s8, ra, 644
                  ori          s11, gp, -616
45:               sll          a0, s1, a2
46:               xor          gp, s9, s2
                  sra          a6, s7, s5
48:               nop
49:               bgeu         ra, s0, 53f
                  blt          s11, ra, 65f
                  lui          s6, 756557
                  auipc        s8, 652008
53:               srl          s11, s6, t2
                  srli         s10, s7, 22
                  xor          t6, a2, gp
                  andi         sp, t5, -998
                  xor          t3, s2, s7
                  auipc        s10, 246211
                  xor          zero, t2, t1
                  lui          s10, 1027595
                  srli         sp, s2, 8
                  slt          t0, t6, t1
                  bgeu         zero, a0, 70f
                  andi         s1, s0, -1002
65:               sltiu        sp, gp, 1800
                  ori          s1, a3, 1161
                  lui          ra, 416993
                  srli         s5, ra, 21
                  and          a7, tp, a4
70:               bne          ra, t2, 74f
                  srai         zero, t2, 17
                  beq          sp, gp, 79f
                  auipc        a0, 766578
74:               slti         a3, t6, -1778
                  sub          s5, a4, s11
                  ori          s11, a1, -1971
                  sll          ra, ra, t2
                  sltu         s5, s7, t0
79:               andi         gp, s6, -1421
                  bltu         s4, a3, 99f
                  or           t4, t5, a4
                  xori         s9, s8, -1679
                  bltu         a7, s8, 86f
                  bne          a6, s11, 95f
                  add          t0, a2, t0
86:               bltu         a4, tp, 91f
                  slli         a4, t4, 6
                  slt          s11, ra, s3
                  add          zero, s7, a0
                  slli         t3, t0, 8
91:               auipc        s10, 769627
                  srl          s3, t3, a7
                  sltu         t5, s5, gp
                  srl          a4, a0, a4
95:               slt          t5, s11, s5
                  andi         t5, s4, -1372
                  bgeu         s5, a1, 110f
                  bltu         a1, a1, 104f
99:               sra          s3, s11, s6
                  bge          a2, tp, 113f
                  andi         s5, s3, -1044
                  and          t4, s6, tp
                  bne          a6, ra, 110f
104:              beq          t3, s11, 105f
                  la           a2, region_1+1055 #start riscv_load_store_rand_instr_stream_4
                  lbu          a3, 48(a2)
                  lhu          t5, -53(a2)
                  lb           s0, -147(a2)
                  srai         a4, a2, 30
                  lbu          s3, -188(a2)
                  or           s10, s4, a6
                  lbu          t2, -130(a2)
                  srli         t0, t5, 0
                  sb           tp, -152(a2)
                  andi         s6, gp, 394
                  addi         s11, ra, 585
                  sb           s7, -71(a2)
                  or           s9, s4, s3
                  or           a4, s3, s9
                  lhu          s7, -183(a2)
                  slti         s6, ra, 1106
                  sub          a6, t3, t2
                  lhu          s4, 211(a2)
                  slti         s1, sp, -1433
                  sltiu        s10, s11, 1646
                  slti         s7, s3, 649
                  lui          sp, 860780
                  lb           a1, 51(a2) #end riscv_load_store_rand_instr_stream_4
105:              sll          s8, s9, t6
                  sltiu        a7, t4, 1683
                  beq          zero, s2, 113f
                  beq          t3, s11, 112f
                  slti         sp, s8, 2021
110:              blt          s10, t5, 113f
                  bne          s10, t6, 113f
112:              bne          t2, s2, 116f
113:              addi         s4, t5, -998
                  sll          t0, s9, t4
                  srli         s3, s6, 8
116:              sltiu        s0, zero, -1061
                  lui          t4, 535564
                  slt          s10, s1, sp
                  bge          zero, t3, 126f
                  sll          t0, a6, gp
                  srli         s4, a1, 20
                  sub          s10, t0, t5
                  blt          zero, s6, 129f
                  bne          s4, t1, 137f
                  sltu         s9, t5, a0
126:              and          s0, tp, a7
                  bltu         s9, t6, 142f
                  lui          gp, 493815
129:              beq          s0, s9, 136f
                  bne          t1, a6, 132f
                  srl          t4, s10, s8
132:              beq          a2, s4, 137f
                  add          a1, s0, s9
                  srl          a7, t6, a4
                  xor          a2, t0, s1
136:              auipc        s6, 178361
137:              sub          zero, t5, t6
                  bgeu         s8, a3, 145f
                  sltu         a5, a3, a2
                  srli         s9, s11, 6
                  sltiu        zero, s1, -1482
142:              sltiu        s5, tp, -1544
                  ori          zero, t5, 170
                  addi         s3, a5, -1090
145:              slli         s6, s10, 16
                  auipc        t0, 30308
                  sub          s5, t2, s7
                  bne          t6, s0, 151f
                  sub          sp, a3, t2
                  andi         a6, a6, -1901
151:              sub          a0, t6, s1
                  xori         t3, s5, 1156
                  sltiu        s8, s8, 402
                  sltu         t5, a5, ra
                  ori          a4, a0, -9
                  sra          a7, s8, t2
                  slti         s6, t0, -1137
                  auipc        gp, 1046785
                  bne          s5, ra, 163f
                  sub          ra, t6, a4
                  and          t5, a2, zero
                  lui          t6, 372785
163:              sub          s3, s1, s6
                  bne          s6, t3, 181f
                  and          a6, a1, s10
                  and          a0, t2, s11
                  bne          s6, a2, 173f
                  bne          a4, s4, 174f
                  addi         s8, s4, 1609
                  slt          t6, a2, s6
                  add          s9, s10, a7
                  nop
173:              xori         a6, a5, 1817
174:              and          s3, s2, t4
                  sltiu        s0, zero, -528
                  sltu         a6, s0, s1
                  or           zero, s9, a4
                  and          s10, t6, s11
                  auipc        t6, 702129
                  bne          t5, s1, 192f
181:              ori          t4, t1, 443
                  srl          t0, t5, t0
                  nop
                  srli         s1, s9, 19
                  slli         t6, gp, 12
                  auipc        t3, 64039
                  sltiu        sp, a4, -526
                  bgeu         t3, a3, 191f
                  nop
                  auipc        s3, 783793
191:              lui          s1, 258433
192:              auipc        s8, 250262
                  bge          a7, a1, 199f
                  xori         t4, a4, 1934
                  bge          s8, s0, 211f
                  srai         zero, t2, 12
                  bltu         tp, a4, 200f
                  sub          s1, s3, tp
199:              srli         s10, zero, 12
200:              sltu         gp, t5, zero
                  beq          s0, t3, 210f
                  beq          s2, a7, 212f
                  sltiu        a7, s8, -468
                  xori         s7, t0, -255
                  addi         s8, a4, -794
                  or           t3, s2, tp
                  srai         s5, s3, 21
                  lui          t3, 310111
                  bltu         t5, a6, 214f
210:              and          ra, s10, s1
211:              slli         a5, s1, 21
212:              sub          s3, s4, sp
                  sll          s5, t1, s6
214:              slti         s5, t0, -2041
                  add          t4, t4, s7
                  beq          tp, s2, 219f
                  slti         s5, a1, -110
                  or           s8, t2, s5
219:              srli         sp, s3, 8
                  ori          ra, s5, 1376
                  add          gp, s9, a3
                  sra          ra, s2, t1
                  sltu         s9, t3, t4
                  ori          t3, s8, -1749
                  sra          s6, t5, s0
                  addi         a5, t3, -142
                  srai         a2, t3, 24
                  nop
                  srli         s8, s8, 24
                  srai         a5, t2, 12
                  slt          t5, t1, a6
                  xori         s8, a3, -1927
                  bltu         a6, a1, 246f
                  xori         a0, s7, 927
                  bltu         t0, t0, 254f
                  auipc        a5, 348347
                  srl          s9, t3, a7
                  srl          a3, a6, gp
                  sra          a7, t6, t2
                  sub          a4, t2, a4
                  sltu         sp, s4, t2
                  auipc        zero, 206257
                  sll          sp, s8, t6
                  srai         s11, s4, 31
                  srli         t4, t1, 23
246:              blt          s9, ra, 257f
                  auipc        t0, 155703
                  bne          a6, a3, 252f
                  srli         s3, t0, 13
                  xori         s6, s11, 216
                  xori         a3, s6, -80
252:              andi         a1, a6, -133
                  sltiu        t3, s11, -621
254:              slli         s9, t0, 18
                  andi         a1, a3, 1363
                  srl          ra, ra, gp
257:              beq          t5, a1, 265f
                  bgeu         t6, a1, 259f
259:              bltu         t3, t1, 270f
                  beq          s1, s10, 277f
                  bltu         s7, t2, 267f
                  sra          s4, ra, a2
                  lui          a1, 618105
                  sll          t6, s0, tp
265:              andi         s11, s6, -587
                  addi         s7, t3, 820
267:              bgeu         t6, t2, 270f
                  slt          t4, sp, gp
                  bge          s11, gp, 274f
270:              addi         gp, t6, -1944
                  slli         gp, s10, 18
                  blt          s7, a3, 285f
                  addi         zero, s6, 334
274:              srai         t3, s11, 28
                  bge          a2, zero, 282f
                  bgeu         gp, t3, 285f
277:              slt          ra, a0, a2
                  xori         a0, t2, -916
                  la           s3, region_0+1690 #start load_store_instr_stream_0
                  lbu          s6, 221(s3)
                  la           s7, region_0+1600 #start load_store_instr_stream_1
                  sb           s11, -134(s3)
                  lb           sp, -419(s7)
                  sb           t6, -1085(s7)
                  sb           s7, -1399(s7)
                  sb           s9, -107(s3)
                  lhu          s11, 300(s7)
                  lhu          s0, -1444(s7)
                  sb           t4, -1613(s3)
                  lb           s1, -615(s3)
                  lb           s4, -425(s7) #end load_store_instr_stream_1
                  lbu          s11, -524(s3)
                  lhu          t4, -792(s3) #end load_store_instr_stream_0
                  andi         s6, s2, 1367
                  sltu         s4, ra, t1
                  slt          s9, a3, a5
282:              xor          ra, s3, sp
                  and          a7, a4, a5
                  slt          gp, s2, a3
285:              ori          a5, s9, 212
                  xori         s4, s7, -1874
                  sltu         a7, t5, s6
                  sltu         t5, a5, t5
                  xori         t2, s9, 1765
                  slti         t5, s0, -1269
                  sltu         s11, zero, tp
                  srai         t6, s4, 12
                  slt          gp, s0, s11
                  bgeu         a2, s10, 310f
                  nop
                  xor          a5, sp, a3
                  and          s10, t0, a2
                  auipc        t3, 493079
                  andi         s0, zero, -650
                  bltu         a4, t3, 306f
                  or           sp, s6, s6
                  blt          s1, s8, 305f
                  bne          s1, a5, 304f
304:              nop
305:              srli         s3, s4, 1
306:              srli         a5, t1, 5
                  slli         t6, s2, 25
                  sub          s9, gp, t4
                  sra          a3, gp, a4
310:              nop
                  slli         s1, a1, 6
                  bne          s4, t3, 319f
                  slli         s9, s2, 20
                  addi         gp, t5, 734
                  and          a6, s7, a3
                  auipc        t3, 855102
                  srai         zero, a0, 11
                  bge          s1, t6, 321f
319:              bgeu         a7, ra, 324f
                  slli         a0, s3, 4
                  add          a7, tp, a0
                  slli         a7, s0, 13
                  sll          s9, t1, a6
                  slti         t5, s8, 1233
                  la           ra, sub_1
                  slli         s0, a7, 4
                  addi         ra, ra, 336
                  andi         t4, s9, -273
                  xor          s6, s3, t3
main_j2:          jalr         s4, ra, -336 #jump main -> sub_1
                  srli         s11, s6, 27
321:              srl          a0, tp, tp
                  addi         a4, a1, 861
                  andi         s7, tp, 1986
324:              add          a7, s5, s9
                  slti         s7, t4, 558
                  slt          s4, ra, s7
                  xor          t4, a7, a1
                  bne          sp, s1, 332f
                  nop
                  sltiu        t0, s3, 1115
                  srli         t4, s5, 6
332:              auipc        s5, 185352
                  andi         ra, sp, 1953
                  xori         s11, s9, 1188
                  and          s10, t4, t4
                  xor          t5, a6, s0
                  sltu         s7, s0, a1
                  sub          ra, t6, t1
                  sltiu        s11, t4, 2016
                  or           a6, s9, a0
                  or           s9, gp, ra
                  srl          a6, s0, t4
                  and          s3, tp, a3
                  xori         a7, s3, -1236
                  sll          ra, s6, t3
                  slt          s9, s8, t5
                  lui          a0, 39036
                  sra          s9, t1, zero
                  slt          sp, a3, s6
                  nop
                  xor          s6, t6, s11
                  xori         s5, a0, 859
                  bgeu         s3, t0, 364f
                  addi         a7, a1, 113
                  and          s3, s2, s11
                  ori          s9, s11, 802
                  or           a6, s11, s1
                  sltiu        t3, s1, 1237
                  slt          t0, s0, s4
                  sll          s4, a5, s1
                  srai         a4, t6, 12
                  bne          s6, tp, 368f
                  sll          sp, a6, s7
364:              bge          a6, a2, 367f
                  srl          sp, t6, s5
                  sub          s0, t0, a6
367:              lui          s5, 449920
368:              slli         t2, t2, 2
                  and          t5, t5, gp
                  nop
                  or           a0, s1, gp
                  beq          s6, a5, 385f
                  sltiu        a0, gp, 129
                  addi         s9, s3, -1236
                  bge          t0, a6, 387f
                  slli         a4, s6, 13
                  sra          t3, s6, t1
                  blt          a3, a5, 382f
                  xor          s0, t2, ra
                  andi         a5, s11, -1083
                  slti         s11, a0, 1918
382:              andi         a2, t2, 882
                  andi         s8, t5, 51
                  srai         s0, s5, 26
385:              bltu         s8, t1, 395f
                  sra          s10, s5, a7
387:              slt          s8, s6, a6
                  nop
                  slli         s10, zero, 27
                  sra          s1, a3, a1
                  xori         s10, s3, -2008
                  nop
                  nop
                  and          s10, a1, s2
395:              bltu         t0, a7, 403f
                  srai         s11, gp, 15
                  slti         a2, s4, -1251
                  ori          s10, t4, 1392
                  la           s5, region_1+1864 #start riscv_load_store_hazard_instr_stream_4
                  sub          s8, s7, s11
                  lbu          t2, -163(s5)
                  lhu          t3, -18(s5)
                  lb           a2, -208(s5)
                  lw           t5, -208(s5)
                  lbu          t2, -196(s5)
                  srl          a6, tp, s5
                  slti         gp, t6, -1332
                  lh           t3, -196(s5)
                  sh           s9, -196(s5)
                  ori          s8, s1, 458
                  lb           s4, -196(s5)
                  lb           a5, -196(s5)
                  lh           t0, -196(s5)
                  lh           s0, -196(s5)
                  lhu          t3, -196(s5)
                  lhu          a2, -196(s5)
                  lw           a7, -196(s5)
                  lbu          a0, 83(s5)
                  lb           s9, -164(s5)
                  lhu          t3, -164(s5)
                  lb           s10, 11(s5)
                  sub          a4, t2, ra
                  sw           t4, -96(s5)
                  sh           sp, -194(s5) #end riscv_load_store_hazard_instr_stream_4
                  blt          s10, sp, 414f
                  sra          s0, s0, a7
                  sub          a7, s6, s7
                  srai         t2, s8, 21
403:              blt          a7, s7, 405f
                  or           a5, t6, t6
405:              bltu         s6, gp, 416f
                  sll          t3, a6, gp
                  add          t5, s9, s1
                  sra          s3, zero, s4
                  slt          s3, s5, t0
                  sltiu        t0, t6, 226
                  sub          s0, gp, zero
                  bne          s4, zero, 418f
                  slt          a2, a2, zero
414:              or           a6, s5, a6
                  bgeu         t0, s1, 434f
416:              xori         a4, sp, -48
                  add          a3, a1, t5
418:              nop
                  slti         a1, a1, 1630
                  or           sp, gp, s0
                  bne          zero, a5, 428f
                  bne          a1, tp, 426f
                  blt          s10, tp, 424f
424:              add          s4, s4, a7
                  slti         s6, s4, -27
426:              blt          tp, a7, 438f
                  slli         t6, a1, 5
428:              add          s3, t3, s2
                  bltu         a6, s0, 432f
                  sltu         a1, t5, a1
                  bne          sp, a4, 436f
432:              sltu         a4, tp, s11
                  slli         a3, s4, 21
434:              bge          a7, s5, 436f
                  bltu         s0, a6, 448f
436:              srl          s5, t4, sp
                  sltiu        a6, s2, -329
438:              auipc        t3, 830863
                  add          a4, a1, gp
                  blt          t0, a4, 446f
                  nop
                  sub          t3, gp, s9
                  nop
                  xor          a5, s1, s5
                  blt          s5, s9, 455f
446:              andi         a0, s7, -694
                  blt          s11, tp, 455f
448:              srli         s4, tp, 3
                  slt          a4, ra, s5
                  slt          s5, s0, a0
                  blt          s11, t6, 460f
                  nop
                  bgeu         sp, s7, 457f
                  xor          sp, t3, s2
455:              andi         a2, gp, 1669
                  lui          s8, 351227
457:              sll          s6, sp, a0
                  lui          s7, 90145
                  ori          a5, a5, 1251
460:              ori          s9, a6, 578
                  sll          s3, s8, a2
                  xor          t6, s3, a1
                  slt          t0, a7, a0
                  sltiu        a2, s0, -1526
                  srli         t0, s2, 11
                  bltu         a1, t5, 477f
                  lui          s3, 776889
                  sltiu        a2, s9, -253
                  sltiu        t4, a6, -17
                  srl          a5, s5, t2
                  sll          a2, t1, s8
                  srli         t2, s4, 20
                  addi         s3, a5, 924
                  sltiu        s5, t4, -279
                  sltu         t0, s0, s10
                  beq          s2, s3, 480f
477:              addi         s3, s0, -1758
                  bgeu         t5, tp, 483f
                  sltiu        s6, a6, 56
480:              bltu         s8, zero, 491f
                  slti         s11, t2, 409
                  sltiu        a6, t0, -1605
                  or           a7, t4, a0
                  xor          t2, s5, t4
                  la           t3, sub_1
                  addi         t3, t3, -662
                  srli         s1, t0, 9
                  sll          t0, a6, s5
                  ori          s11, a0, 1216
main_j1:          jalr         s4, t3, 662 #jump main -> sub_1
483:              sra          gp, a5, s4
                  nop
                  slti         a5, s11, 723
                  sll          s7, s2, t2
                  slt          a6, t5, t5
                  slt          t3, a1, a6
                  or           a2, gp, s10
                  sltiu        s9, t2, -576
491:              sub          a4, a0, s5
                  slti         gp, sp, 1497
                  bgeu         s6, t3, 508f
                  blt          a5, s2, 508f
                  sub          s0, s11, zero
                  sltu         zero, ra, s8
                  and          a6, t5, t0
                  and          a2, s6, s7
                  xor          s5, t3, a4
                  sltiu        a2, sp, 620
                  sra          t0, s0, tp
                  sltu         ra, t5, s8
                  ori          s11, t1, -605
                  slli         a2, s8, 27
                  slli         t3, t6, 4
                  lui          zero, 791869
                  slt          t3, zero, a0
508:              lui          a0, 353577
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         tp, tp, -56
                  srl          s0, a3, t2
                  sw           s4, 4(tp)
                  auipc        t4, 312030
                  nop
                  nop
                  add          zero, sp, s7
                  srl          s9, s4, a3
                  add          t2, s3, a6
                  slli         s3, s1, 21
                  slt          sp, gp, t4
                  la           t0, region_0+1667 #start load_store_instr_stream_2
                  la           a0, region_0+1295 #start load_store_instr_stream_0
                  la           a2, region_0+608 #start load_store_instr_stream_3
                  lb           t3, -14(t0)
                  la           a3, region_0+1342 #start load_store_instr_stream_1
                  sw           s0, 628(a2)
                  sb           t3, 7(a3)
                  sh           s3, 968(a2)
                  sb           a6, -6(t0)
                  lbu          s6, -142(a2)
                  sb           t6, -946(a0)
                  sb           s7, 0(a3)
                  lb           t2, 9(t0)
                  lbu          s6, 1010(a2)
                  lh           t4, 15(t0)
                  lbu          a7, 16(t0)
                  lh           s11, -241(a0)
                  lbu          s5, -13(a3)
                  lbu          s9, -114(a0)
                  lb           s4, 13(a3)
                  lb           s10, 376(a0)
                  lb           a6, -13(a3)
                  lbu          s4, 12(t0)
                  sb           sp, 581(a2)
                  lbu          ra, 698(a0)
                  lb           s1, 7(t0)
                  lbu          a5, -131(a2)
                  lw           s7, 172(a2)
                  sb           ra, -16(a3)
                  lbu          sp, 15(a3) #end load_store_instr_stream_1
                  lbu          gp, 999(a2) #end load_store_instr_stream_3
                  lhu          t4, -15(t0) #end load_store_instr_stream_2
                  lhu          ra, -49(a0) #end load_store_instr_stream_0
                  la           s1, region_0+874 #start load_store_instr_stream_1
                  la           s5, region_0+1654 #start load_store_instr_stream_2
                  la           s8, region_0+726 #start load_store_instr_stream_4
                  sb           ra, -844(s5)
                  la           s11, region_0+1036 #start load_store_instr_stream_3
                  sb           s2, 982(s8)
                  la           a7, region_0+1353 #start load_store_instr_stream_0
                  lb           ra, 36(a7)
                  lb           s6, -58(s5)
                  lbu          t0, 176(s8)
                  sb           t3, -34(a7)
                  lhu          t2, -528(s5)
                  lw           gp, -2(s1)
                  lh           a6, -36(s11)
                  lh           s7, -96(s5)
                  lh           s7, -41(a7)
                  sb           t4, -37(s11)
                  lw           a1, -61(a7)
                  sh           t2, 16(s1)
                  sb           a2, 1200(s8)
                  sh           s5, -30(s11)
                  sw           s8, -482(s5)
                  lw           s9, 386(s8)
                  sb           ra, 8(s1)
                  sb           s4, -18(s11)
                  sw           s3, -662(s5)
                  sh           s6, 49(a7)
                  lb           t3, -109(s5)
                  lb           s3, -4(s1)
                  sb           ra, -27(s11)
                  sb           ra, -1062(s5)
                  lbu          a6, -679(s8)
                  sb           gp, 19(s11) #end load_store_instr_stream_3
                  sh           s9, -31(a7)
                  sb           s3, 15(s1)
                  sb           sp, -64(a7)
                  lh           s6, 826(s8) #end load_store_instr_stream_4
                  sb           s10, -248(s5) #end load_store_instr_stream_2
                  sh           t5, 10(s1) #end load_store_instr_stream_1
                  lhu          t6, 27(a7) #end load_store_instr_stream_0
                  la           sp, region_0+1663 #start riscv_load_store_hazard_instr_stream_3
                  sb           a2, -40(sp)
                  sb           t2, -40(sp)
                  lb           a4, -20(sp)
                  lbu          s8, -20(sp)
                  lb           s8, -20(sp)
                  lbu          s4, -20(sp)
                  sb           s10, -20(sp)
                  lbu          a3, -20(sp)
                  lb           a7, -20(sp)
                  lbu          a4, -20(sp)
                  srai         zero, ra, 17
                  lbu          s5, -20(sp)
                  lbu          a0, -20(sp)
                  sb           s4, -20(sp)
                  lbu          a6, -20(sp)
                  sw           tp, -35(sp)
                  lhu          s0, -35(sp)
                  sb           s0, -35(sp)
                  lhu          s10, -35(sp)
                  lb           s7, 60(sp)
                  sb           a7, 60(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1988 #start riscv_load_store_hazard_instr_stream_2
                  lb           t5, -66(sp)
                  lb           s0, -66(sp)
                  lhu          s1, -66(sp)
                  sh           t1, -66(sp)
                  srai         t4, s5, 11
                  lbu          zero, -7(sp)
                  lbu          s10, -7(sp)
                  auipc        s6, 32419
                  sb           s9, -7(sp)
                  lbu          ra, -129(sp)
                  sb           zero, -79(sp)
                  slt          a3, sp, zero
                  addi         t2, a0, -126
                  srai         s9, s8, 12
                  slt          a3, zero, s0
                  and          a5, t4, a7
                  sh           s6, -142(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+336 #start riscv_load_store_rand_instr_stream_3
                  sb           t4, -215(sp)
                  lbu          t2, -163(sp)
                  nop
                  lbu          s7, -21(sp)
                  sra          t6, s10, s0
                  lb           a6, -233(sp)
                  lbu          a1, -159(sp)
                  lhu          s7, -140(sp)
                  addi         s7, s5, -1092
                  lbu          a0, 131(sp)
                  lb           t6, 91(sp)
                  nop
                  andi         a5, s3, 196
                  slt          s11, a5, a3
                  slt          ra, a6, s7
                  srl          a3, s5, gp
                  sb           a4, 234(sp)
                  lb           gp, -190(sp)
                  sb           t5, -39(sp)
                  lb           s3, -93(sp)
                  sb           t0, 13(sp)
                  and          a3, a3, a4
                  add          a2, a1, s3
                  sb           s8, -86(sp)
                  sw           s0, 40(sp)
                  addi         a7, a6, -1943
                  slli         t6, t3, 14
                  sb           a6, 112(sp)
                  lb           a0, -42(sp)
                  slti         t6, s8, -926
                  lhu          gp, 40(sp)
                  lhu          s7, -12(sp)
                  sh           gp, -118(sp)
                  sb           s2, -38(sp)
                  sh           s9, 218(sp)
                  sltiu        a2, a3, -88
                  lbu          a5, -123(sp)
                  ori          t6, zero, 1404
                  sub          t6, s11, gp
                  lh           a6, -144(sp)
                  sb           s8, -103(sp)
                  sltiu        t5, ra, -954
                  lw           a5, 160(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+287 #start riscv_load_store_hazard_instr_stream_1
                  auipc        a2, 621149
                  ori          t3, t1, -1311
                  sub          t4, s2, s7
                  lbu          s5, 9(a0)
                  lb           s0, -17(a0)
                  lb           zero, -17(a0)
                  sub          a2, ra, a6
                  lbu          s9, -52(a0)
                  sh           a7, 1(a0)
                  lbu          t0, -20(a0)
                  slt          s11, s2, s7
                  lb           a3, 27(a0)
                  andi         s0, tp, 519
                  sw           t4, 37(a0)
                  sh           s2, 19(a0)
                  sb           s11, 52(a0)
                  lb           s5, 52(a0)
                  sll          a4, s1, a3
                  lb           t4, 52(a0) #end riscv_load_store_hazard_instr_stream_1
                  la           a7, region_1+645 #start load_store_instr_stream_1
                  la           sp, region_1+1003 #start load_store_instr_stream_4
                  la           s4, region_1+1261 #start load_store_instr_stream_3
                  la           t6, region_1+1140 #start load_store_instr_stream_2
                  lbu          a1, 4(s4)
                  sw           a1, 13(sp)
                  la           t5, region_1+1580 #start load_store_instr_stream_0
                  lb           a0, 10(sp)
                  lhu          t2, -228(t6)
                  sb           s5, -39(t6)
                  sb           a3, -12(sp)
                  lbu          a6, 6(a7)
                  sb           a0, -6(sp)
                  sb           sp, -61(t6)
                  sb           t0, -13(sp)
                  lhu          s8, -12(t6)
                  lw           a1, -7(sp)
                  sb           s11, 8(a7)
                  sb           s5, 0(sp)
                  lbu          a2, -220(t6)
                  sh           ra, 2(t5)
                  lhu          a0, 5(s4)
                  lb           s5, -14(sp)
                  lbu          s3, -4(a7)
                  lbu          a2, 8(s4)
                  lbu          t2, 1(a7)
                  lbu          s6, 15(sp)
                  lb           a4, 3(t5)
                  lhu          s3, 5(sp) #end load_store_instr_stream_4
                  lbu          s9, -8(a7)
                  sh           t2, 98(t6)
                  lw           s3, 4(t5)
                  sb           s3, -9(t5)
                  lb           a6, -186(t6)
                  lb           s6, 1(t5)
                  lhu          s7, 5(s4)
                  sw           a5, 3(a7) #end load_store_instr_stream_1
                  lbu          t2, 9(s4) #end load_store_instr_stream_3
                  lbu          ra, 141(t6) #end load_store_instr_stream_2
                  lh           s0, -4(t5) #end load_store_instr_stream_0
                  la           sp, region_0+884 #start load_store_instr_stream_1
                  la           ra, region_0+933 #start load_store_instr_stream_2
                  lh           a4, -276(sp)
                  lb           a1, -10(ra)
                  lhu          s0, 642(sp)
                  sb           a7, 54(ra)
                  la           a5, region_0+1929 #start load_store_instr_stream_0
                  lb           gp, -38(ra)
                  sb           t2, 113(sp)
                  sb           t3, -728(sp)
                  lw           s0, -45(ra)
                  sh           sp, 39(ra)
                  sb           s6, 249(sp)
                  lb           s6, 8(ra)
                  lhu          s7, -3(a5)
                  lh           s1, 386(sp)
                  lbu          a6, -139(a5)
                  lhu          a3, -51(ra)
                  sb           s11, -87(a5)
                  sh           s11, -116(sp)
                  lb           a7, -778(sp)
                  sb           t4, -4(ra)
                  lb           s6, -275(sp)
                  lb           s4, -76(a5)
                  lbu          s0, 42(ra)
                  lhu          s9, -21(ra) #end load_store_instr_stream_2
                  sb           a0, 951(sp) #end load_store_instr_stream_1
                  lb           t2, -155(a5) #end load_store_instr_stream_0
                  la           ra, region_1+1020 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s0, -102(ra)
                  sh           s0, -102(ra)
                  lb           t3, -102(ra)
                  ori          a7, s3, -1512
                  lb           s7, -102(ra)
                  lb           s9, -102(ra)
                  sh           a4, -102(ra)
                  and          s6, s4, s10
                  nop
                  lbu          t5, -102(ra)
                  sh           s5, -102(ra)
                  lh           a4, 62(ra)
                  slti         s6, a1, -924
                  lbu          sp, 62(ra)
                  lh           t6, 62(ra)
                  slt          a0, t1, a5
                  lh           s8, -14(ra)
                  lw           a6, 228(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+625 #start riscv_load_store_rand_instr_stream_1
                  lhu          s6, 93(s8)
                  sb           t3, -59(s8)
                  lb           s1, 136(s8)
                  ori          s4, sp, -378
                  lhu          s7, 225(s8)
                  srli         a0, s10, 9
                  sub          a3, sp, ra
                  lh           s7, 119(s8)
                  lh           a4, -89(s8)
                  sb           t1, 194(s8)
                  sltu         t0, a6, a3
                  slti         a1, t3, 1466
                  lbu          t3, 119(s8)
                  srl          t5, a5, s5
                  srai         a5, t4, 15
                  xor          s9, t6, a1
                  lh           a7, 227(s8)
                  sra          t6, s1, a6
                  sh           s7, 3(s8)
                  lui          t6, 89518
                  srl          a5, s1, s5
                  slli         a6, a1, 1
                  add          a2, a6, s10
                  sh           t5, 241(s8)
                  sra          s10, s4, s11
                  sb           a6, 125(s8)
                  lui          t5, 614097
                  sub          t3, a1, s9
                  sh           s9, 9(s8)
                  lh           s3, -187(s8)
                  andi         s3, a3, -427
                  lbu          t4, -172(s8)
                  sltiu        sp, s11, -404
                  auipc        a7, 941187
                  sra          s0, sp, s1
                  xori         sp, s4, 501
                  and          s10, a6, s10
                  nop
                  lb           t2, 84(s8) #end riscv_load_store_rand_instr_stream_1
                  slli         s4, a0, 9
                  beq          t2, t6, 15f
                  xor          a3, t2, t4
                  slt          a6, s6, t4
                  slli         s9, tp, 21
                  addi         s4, s1, 177
                  bltu         gp, s0, 21f
                  xor          a2, a1, a0
                  slt          a7, sp, gp
                  srai         zero, t2, 12
                  xori         s0, s4, 2042
                  or           a7, a7, s6
                  sltu         s9, t3, s3
                  beq          a7, t3, 30f
                  and          a6, s0, s5
15:               sra          sp, t3, a1
                  bge          t2, s0, 27f
                  lui          s0, 611713
                  beq          a2, s4, 36f
                  sub          t3, a2, tp
                  slt          t4, s1, s10
21:               sltu         s9, s3, a7
                  slt          t2, s2, a4
                  xori         t5, a0, 758
                  or           s8, a1, ra
                  and          t6, sp, a3
                  slli         s6, a0, 9
27:               srai         a2, a6, 9
                  beq          a5, a6, 34f
                  srli         s7, ra, 3
30:               nop
                  add          s5, t1, t6
                  srli         sp, s11, 21
                  xor          s8, a2, tp
34:               slli         a5, s0, 15
                  nop
36:               add          s11, s6, a0
                  srai         a4, t6, 24
                  xor          s11, s5, ra
                  srai         gp, s10, 5
                  bgeu         s9, t5, 54f
                  xori         s5, s0, -1426
                  blt          a0, sp, 59f
                  slli         s5, t2, 30
                  srai         s8, s10, 0
                  slli         t5, gp, 0
                  ori          t3, ra, -1251
                  blt          a4, a1, 48f
48:               srli         s3, a4, 15
                  lui          a2, 92047
                  and          s11, t4, a5
                  slt          gp, gp, s8
                  bge          s9, s4, 60f
                  addi         a7, s2, 1571
54:               slli         s6, a7, 13
                  and          zero, s6, ra
                  blt          s11, a3, 69f
                  auipc        t0, 933873
                  bge          s4, a0, 75f
59:               lui          t3, 772209
60:               sra          s10, s9, a5
                  sub          t4, t1, t0
                  blt          s3, s10, 72f
                  xor          a2, t0, tp
                  and          t0, a2, a2
                  srl          s1, a0, s5
                  bltu         t3, s2, 83f
                  bne          sp, zero, 72f
                  bge          t5, a4, 85f
69:               slli         s6, s0, 11
                  add          t0, s2, a4
                  srai         s3, t3, 21
72:               blt          s2, t0, 75f
                  bge          s2, a2, 93f
                  sltu         s9, s9, s5
75:               xori         a2, s1, -322
                  blt          s10, t1, 92f
                  or           s8, a0, s9
                  slti         s7, t1, 1584
                  bne          s3, a4, 84f
                  srli         a7, a7, 22
                  srl          s7, a2, t2
                  or           sp, s8, t0
83:               add          a6, a4, a7
84:               or           s1, t1, a2
85:               lui          s11, 669408
                  srai         t0, ra, 25
                  xori         s7, s6, -340
                  sltu         sp, t3, gp
                  slli         s4, t2, 25
                  ori          a2, s9, -623
                  slli         a4, tp, 28
92:               addi         a0, t6, -761
93:               slli         s9, zero, 13
                  slt          s3, t5, t4
                  bne          s5, zero, 102f
                  auipc        a2, 142033
                  xor          a0, t4, s8
                  and          s4, t4, sp
                  bgeu         a2, t1, 113f
                  nop
                  and          s6, s9, s2
102:              slti         s3, s7, 448
                  lui          a4, 17992
                  bne          t1, t2, 114f
                  ori          ra, a1, -1230
                  or           a7, s10, s1
                  or           s3, t6, s4
                  sub          s10, a0, a2
                  xor          s1, t3, tp
                  add          a0, s8, a6
                  sub          t6, a1, gp
                  sltu         s8, s4, s5
113:              ori          s4, s6, -21
114:              and          a0, a4, gp
                  ori          s6, t0, -1473
                  sltiu        a1, a5, -1646
                  blt          s2, a2, 125f
                  bltu         t5, zero, 135f
                  bgeu         s5, a2, 131f
                  slti         t2, s3, -536
                  add          t5, t3, t1
                  xori         t4, a3, -668
                  and          a2, t0, s6
                  slli         sp, t2, 3
125:              bge          a6, tp, 137f
                  auipc        s3, 189536
                  bne          s4, s7, 133f
                  bltu         a4, t6, 144f
                  bgeu         a6, s9, 146f
                  ori          zero, s3, -2019
131:              beq          ra, t2, 136f
                  bne          a5, s6, 140f
133:              slli         gp, s5, 19
                  and          t6, a0, t2
135:              beq          a3, s3, 141f
136:              beq          s7, s1, 147f
137:              lui          s0, 217161
                  srl          s0, s6, a2
                  addi         a0, t2, -1351
140:              lui          a1, 555633
141:              sltu         s1, a3, a2
                  sltu         a1, t2, s7
                  srli         a0, s1, 9
144:              sra          a5, a2, s10
                  lui          a5, 477920
146:              add          a3, s2, a3
147:              lui          zero, 745704
                  slti         s9, s9, 236
                  bgeu         t5, s10, 163f
                  srli         a7, a3, 4
                  xor          a2, t5, a1
                  sra          a6, s11, a6
                  and          s11, ra, a2
                  sub          s0, s8, a3
                  add          t6, t6, zero
                  srli         a6, t1, 14
                  bge          s5, t0, 173f
                  bltu         sp, t2, 159f
159:              sltiu        s9, s9, -771
                  add          s5, t4, s6
                  slli         ra, s3, 29
                  or           a6, sp, t3
163:              and          sp, t4, s1
                  and          s9, t5, t6
                  xori         s6, s4, 556
                  addi         t3, a4, -1650
                  xor          a5, t2, t6
                  bgeu         tp, t0, 186f
                  blt          t5, s0, 186f
                  bltu         a1, s7, 185f
                  sub          s5, s8, zero
                  nop
173:              sltu         t0, a2, a5
                  bgeu         s8, a4, 191f
                  auipc        s4, 788520
                  and          s0, a2, t6
                  add          s11, gp, a7
                  sll          a4, t3, a3
                  srli         a0, a3, 27
                  xor          s5, t5, a4
                  blt          s5, t5, 198f
                  sll          t5, s7, t4
                  bne          tp, s6, 197f
                  xor          a5, s5, a6
185:              lui          t0, 105552
186:              sub          s6, t3, t4
                  ori          t5, s0, 1904
                  slt          t5, tp, s3
                  sll          a4, s0, s10
                  blt          s3, s0, 204f
191:              auipc        t5, 868495
                  sub          t3, s0, a2
                  lui          sp, 1017389
                  auipc        ra, 305167
                  slli         t6, s4, 31
                  sll          t4, sp, s6
197:              andi         t6, t6, 840
198:              ori          a4, s1, 1549
                  bgeu         s2, a3, 216f
                  auipc        a3, 501711
                  sltiu        a5, s7, 1618
                  auipc        s8, 1010179
                  bltu         s3, s5, 216f
204:              bltu         s10, a1, 210f
                  and          a6, t6, a0
                  lui          s9, 422683
                  add          a4, s9, t3
                  bgeu         t3, a4, 218f
                  ori          s11, s1, -1483
210:              xor          a7, s3, s2
                  auipc        a4, 918100
                  nop
                  add          a0, s5, t0
                  srai         t0, s9, 24
                  xor          s4, t0, ra
216:              srai         sp, zero, 27
                  slt          a5, t4, a0
218:              srai         gp, t0, 28
                  srai         s10, tp, 30
                  bne          a3, s7, 237f
                  sltu         a0, a2, s5
                  and          s9, a2, a5
                  sra          s6, s3, t2
                  or           s0, t6, zero
                  ori          ra, tp, -395
                  sltu         ra, t5, t5
                  bge          s10, a7, 243f
                  and          a5, t4, a5
                  nop
                  bgeu         t0, a6, 237f
                  andi         s1, s6, 1421
                  sra          t2, s0, s8
                  nop
                  blt          t3, t6, 246f
                  la           a6, region_0+285 #start riscv_load_store_rand_instr_stream_0
                  lhu          s10, -45(a6)
                  lb           a3, -30(a6)
                  lhu          t5, 7(a6)
                  sb           a0, 56(a6)
                  sltu         s9, s2, a2
                  sb           t2, 37(a6)
                  slli         a7, ra, 14
                  slti         t4, a4, 520
                  lbu          a0, 38(a6)
                  sll          s1, s7, a4
                  lbu          t3, 45(a6)
                  sb           a1, 56(a6)
                  sw           s4, -61(a6)
                  add          t4, s0, s6
                  add          a7, ra, sp
                  lh           s0, 29(a6)
                  lbu          zero, 52(a6)
                  sb           a6, -54(a6)
                  sll          a7, s1, a3
                  sb           t4, 52(a6)
                  sra          s3, s0, a5
                  lb           s0, 35(a6)
                  and          t4, tp, a1
                  slt          t4, a1, t5
                  lbu          s11, 31(a6)
                  srai         s6, zero, 8
                  lbu          s5, 14(a6)
                  lb           s3, 48(a6)
                  lhu          s9, 33(a6)
                  sb           t2, 22(a6)
                  lb           a5, -33(a6)
                  slti         a5, a2, 1554
                  lbu          t5, -24(a6)
                  sb           gp, -50(a6) #end riscv_load_store_rand_instr_stream_0
                  andi         a4, a6, 1051
                  add          s10, s8, s0
237:              bne          sp, s10, 247f
                  slli         s1, t6, 0
                  blt          s8, a2, 247f
                  slli         a2, s11, 2
                  lui          s7, 569694
                  and          a6, a3, s3
243:              bltu         a5, s3, 246f
                  sub          a3, s8, a5
                  sra          s9, sp, t1
246:              add          t3, ra, a7
247:              lui          t5, 153288
                  xori         t5, t2, -897
                  sltiu        zero, t2, -1825
                  auipc        sp, 235001
                  sub          sp, a0, a3
                  xori         s5, s3, -682
                  and          zero, a4, s4
                  slti         gp, gp, 1602
                  bge          a0, s11, 272f
                  slli         s5, sp, 20
                  or           s10, a1, s8
                  bgeu         t4, sp, 278f
                  slti         s4, tp, 1797
                  srli         t3, a1, 27
                  srli         a2, s0, 11
                  bgeu         s4, t0, 267f
                  bne          ra, sp, 275f
                  beq          t5, t0, 281f
                  add          t3, t4, t1
                  srl          a1, a4, s4
267:              lui          s7, 50334
                  srl          a6, sp, t4
                  xor          a6, t4, s11
                  bltu         zero, s3, 287f
                  andi         a7, s9, -699
272:              slli         ra, s11, 19
                  sra          a1, a1, a7
                  nop
275:              or           t2, zero, s3
                  sll          gp, a4, s1
                  beq          a3, s7, 293f
278:              slti         a3, a0, -1463
                  bge          a1, s11, 284f
                  slli         s9, s11, 21
281:              auipc        a0, 722219
                  la           s7, region_1+686 #start riscv_load_store_rand_instr_stream_2
                  slt          t3, t0, t5
                  sb           t6, -13(s7)
                  lw           s0, 58(s7)
                  lb           t3, 45(s7)
                  addi         s8, t3, -643
                  sb           t2, 8(s7)
                  sltiu        s0, zero, 1463
                  lb           gp, -59(s7)
                  sb           s6, -45(s7)
                  or           a5, s5, t4
                  srli         s6, t2, 29
                  lh           a1, -54(s7)
                  slli         s4, a1, 4
                  sltu         t5, ra, t4
                  slli         s3, t1, 4
                  sub          a6, s7, t3
                  lh           t5, 12(s7)
                  lb           s1, -57(s7)
                  lb           gp, 47(s7)
                  lb           s11, -1(s7)
                  lw           s0, 22(s7)
                  and          a5, t0, a6
                  lb           a6, -39(s7)
                  xori         a5, gp, -826
                  sh           s2, 16(s7)
                  sb           s7, 61(s7)
                  lb           a0, -28(s7)
                  lbu          t5, 13(s7)
                  sb           t4, 54(s7)
                  lb           t4, 50(s7)
                  lbu          zero, 27(s7)
                  sw           a3, 26(s7)
                  ori          a4, s10, -295
                  lb           s8, -23(s7)
                  sb           t5, -21(s7)
                  lbu          a1, -11(s7)
                  sll          t4, a5, a6
                  lbu          s10, -55(s7)
                  lb           a0, 61(s7)
                  andi         t2, a5, 682
                  auipc        s4, 760123
                  lui          s0, 60141
                  lb           a4, 11(s7)
                  lb           a7, -21(s7)
                  lbu          s1, 25(s7) #end riscv_load_store_rand_instr_stream_2
                  bge          a5, s11, 292f
                  slt          gp, t2, s11
284:              and          s7, t0, s5
                  and          a7, s2, a6
                  nop
287:              bltu         t1, s9, 304f
                  lui          t5, 860145
                  ori          a4, s6, 853
                  bgeu         t1, s2, 300f
                  auipc        a7, 599886
292:              blt          t0, a0, 309f
293:              bgeu         sp, s3, 298f
                  ori          sp, a4, 1677
                  andi         s10, t6, -1959
                  sra          a6, s5, gp
                  sra          a3, gp, s4
298:              slt          t6, t3, a6
                  bgeu         t3, s6, 306f
300:              sub          s6, a0, s2
                  beq          t5, tp, 318f
                  sltiu        s7, gp, 624
                  sltiu        zero, t5, 578
304:              and          s8, t5, s5
                  xor          a4, a1, s0
306:              slli         s3, ra, 1
                  and          sp, t6, tp
                  ori          sp, s7, 143
309:              srai         gp, a4, 18
                  sub          s7, a6, s5
                  xori         ra, s9, 1207
                  add          a7, ra, s4
                  lui          s6, 732352
                  sltiu        zero, a5, -1874
                  srl          a1, s3, a4
                  or           s3, s4, t3
                  blt          s4, s0, 331f
318:              xori         s4, s1, -213
                  add          s7, t0, s1
                  bltu         s1, sp, 332f
                  srai         t0, s3, 14
                  blt          s5, t6, 339f
                  lui          t5, 216080
                  add          s3, t0, s4
                  slli         s3, a1, 22
                  sra          s0, s5, t3
                  auipc        s10, 359432
                  srai         s7, a4, 17
                  srli         s6, sp, 24
                  andi         a3, s10, -509
331:              blt          a3, s4, 332f
332:              bgeu         t2, t5, 343f
                  sra          gp, a4, t5
                  lui          a3, 888130
                  xor          a0, t5, t3
                  xor          t6, t6, s5
                  bge          a2, a4, 343f
                  lui          a6, 937473
339:              xori         zero, t5, 1467
                  sll          a0, s5, s2
                  andi         zero, t0, -1105
                  srl          t3, s10, ra
343:              bge          s2, a3, 356f
                  andi         zero, t6, -1855
                  bgeu         t1, a2, 353f
                  sltiu        a4, a1, -132
                  sra          a6, s11, t1
                  blt          s7, ra, 368f
                  slli         s5, ra, 29
                  bltu         s2, a3, 362f
                  sll          a4, t0, s3
                  or           zero, s2, t3
353:              sub          ra, zero, zero
                  slli         s6, s10, 0
                  slti         s6, s8, 375
356:              sltu         s6, t6, zero
                  slli         s6, s3, 24
                  sltu         a5, t2, s10
                  lui          s11, 414864
                  slti         s10, s4, -869
                  addi         sp, a4, -328
362:              slti         s10, s5, -1319
                  auipc        s5, 635201
                  srli         a4, t1, 15
                  or           t0, s9, a7
                  bgeu         t5, t3, 372f
                  bltu         a2, s8, 382f
368:              slt          a6, a0, s7
                  beq          a3, t2, 386f
                  xor          sp, ra, s10
                  slli         a6, t0, 19
372:              slti         a2, s2, 860
                  sub          s10, s7, t1
                  ori          s3, s5, -1179
                  srli         s0, a0, 30
                  sltu         s9, s9, s11
                  sra          ra, tp, a3
                  slli         t0, s3, 10
                  slt          gp, a1, s11
                  bne          t2, s11, 388f
                  lui          t3, 477319
382:              addi         a2, t1, -399
                  xor          a4, sp, t0
                  beq          s0, s3, 398f
                  auipc        a7, 130586
386:              addi         s10, s4, -1745
                  srli         a2, a4, 8
388:              srli         s1, gp, 29
                  add          s0, s3, t6
                  bge          t3, s1, 408f
                  addi         s4, sp, 93
                  xor          s4, s6, zero
                  addi         a0, ra, -1825
                  and          s10, t2, ra
                  bne          s10, s9, 412f
                  nop
                  srl          t2, gp, a6
398:              bltu         s9, s5, 414f
                  and          a4, s6, sp
                  srai         s10, tp, 26
                  srai         t4, a6, 24
                  bgeu         s0, s8, 416f
                  sltu         a1, a4, t4
                  xori         a1, tp, 549
                  add          sp, s6, s0
                  lui          s5, 853345
                  srli         a7, s7, 3
408:              sub          t0, s8, s6
                  slli         a4, sp, 21
                  bgeu         t1, t5, 413f
                  sltiu        sp, s11, 1550
412:              ori          s3, sp, -1794
413:              beq          ra, t3, 429f
414:              xori         s11, s10, 768
                  srl          a6, a5, s8
416:              srl          gp, t0, t4
                  or           a3, s10, t3
                  xor          s10, s3, tp
                  slli         s9, a6, 24
                  srai         t0, s2, 2
                  blt          zero, s10, 427f
                  bne          a3, s6, 439f
                  and          t4, a4, sp
                  sltu         s7, a6, s10
                  sra          t6, s7, zero
                  bltu         a5, s8, 436f
427:              xori         a6, s2, 974
                  bltu         a2, s0, 438f
429:              nop
                  addi         a5, a4, 251
                  bge          s4, t3, 451f
                  xori         sp, s0, -1461
                  nop
                  andi         t0, gp, 138
                  slli         s8, s1, 28
436:              bltu         s4, s2, 450f
                  or           t0, a5, s2
438:              addi         ra, s4, -1785
439:              ori          t4, s3, 773
                  ori          ra, a0, 997
                  xori         a0, t3, 942
                  sll          a4, s5, a4
                  sra          t3, s3, t0
                  slli         s6, sp, 7
                  lui          ra, 442478
                  auipc        a3, 228026
                  sll          a0, a3, s2
                  ori          t5, t2, -1423
                  auipc        zero, 504417
450:              slt          s1, a5, t4
451:              srli         s4, s5, 8
                  andi         s6, t5, -502
                  xor          s8, t3, t5
                  or           s8, s1, t4
                  lui          sp, 472428
                  andi         s10, ra, 1664
                  srai         s4, a0, 14
                  bne          t2, s9, 472f
                  sll          a7, a5, t5
                  sltiu        t4, s8, -579
                  sltu         t5, a1, s6
                  slti         s4, ra, 1358
                  lui          s1, 607122
                  sra          a6, s3, s10
                  slti         s1, s5, 22
                  ori          s11, s11, -776
                  slli         t6, t5, 8
                  srl          s9, s6, a3
                  auipc        a5, 1037150
                  slt          s3, s7, s10
                  bgeu         a2, s8, 472f
472:              sll          s8, gp, t0
                  slt          a5, a2, t2
                  srl          t5, s9, a5
                  andi         t2, t0, 63
                  lw           s4, 4(tp)
                  addi         tp, tp, 56
                  auipc        t6, 487915
875:              addi x17, x20, 0
875:              jalr x17, x17, 0
sub_1:            slli         sp, a4, 8
                  srai         a1, t2, 2
                  blt          s11, t1, sub_1_stack_p
                  slti         gp, s1, -322
                  nop
sub_1_stack_p:    addi         tp, tp, -36
                  sw           s4, 4(tp)
                  sltiu        a5, s6, 763
                  sra          s6, a7, t3
                  add          a2, t6, sp
                  srl          a7, a0, a1
                  lui          t4, 403195
                  or           s3, ra, s3
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  slt          gp, t1, t3
                  or           t4, t0, a3
                  srl          s4, a1, a0
                  sltiu        ra, a2, -894
                  or           a3, ra, t3
sub_1_j4:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  sll          t4, s10, t3
                  auipc        t0, 657797
                  xor          s1, a3, s4
                  blt          t2, s3, 14f
                  bge          s9, t2, 15f
                  sll          a2, t6, sp
                  bne          s3, a7, 17f
                  bgeu         s1, s2, 9f
                  srl          a7, t4, a5
9:                addi         s7, tp, -287
                  sltiu        s6, a6, -171
                  sll          a3, a4, s5
                  lui          t4, 868973
                  xor          a7, sp, s11
14:               bgeu         a6, s1, 17f
15:               and          a3, s3, s5
                  andi         ra, a7, -834
17:               and          a6, t4, gp
                  slli         ra, a5, 13
                  slli         s0, t2, 13
                  lw           s4, 4(tp)
                  and          a3, a2, s1
                  ori          t3, t1, 1755
                  andi         a5, tp, -78
                  xori         t2, tp, -1794
                  auipc        t3, 569689
                  addi         tp, tp, 36
                  slti         a1, s4, -297
                  sltu         s3, s10, s3
                  or           t3, zero, s10
50:               addi x21, x20, 1
50:               jalr x21, x21, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x6, x4, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x28, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x28, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x28, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x28, x25, ecall_handler
                  li x25, 0x1
                  beq x28, x25, instr_fault_handler
                  li x25, 0x5
                  beq x28, x25, load_fault_handler
                  li x25, 0x7
                  beq x28, x25, store_fault_handler
                  li x25, 0xc
                  beq x28, x25, pt_fault_handler
                  li x25, 0xd
                  beq x28, x25, pt_fault_handler
                  li x25, 0xf
                  beq x28, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x4, x6, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
