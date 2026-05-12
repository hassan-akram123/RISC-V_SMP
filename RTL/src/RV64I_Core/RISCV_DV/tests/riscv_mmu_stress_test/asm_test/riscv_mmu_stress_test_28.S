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
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0xfde9648f
                  li x1, 0x1daea230
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf2547441
                  li x5, 0x0
                  li x6, 0x1a5bed93
                  li x7, 0x0
                  li x9, 0x2
                  li x10, 0x80000000
                  li x11, 0xd
                  li x12, 0xffc2bc99
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x17, 0xf720d579
                  li x18, 0xf49f9f58
                  li x19, 0xfb74504d
                  li x20, 0x1
                  li x21, 0x80000000
                  li x22, 0x2
                  li x23, 0x4
                  li x24, 0x4
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0xfbd147ee
                  li x29, 0x2
                  li x30, 0x847fec15
                  li x31, 0x0
                  la x8, user_stack_end
main:             la           s8, region_0+1234 #start load_store_instr_stream_1
                  la           a4, region_0+547 #start load_store_instr_stream_2
                  sh           s3, 18(s8)
                  la           sp, region_0+1886 #start load_store_instr_stream_0
                  sb           a4, -14(a4)
                  lhu          t5, 88(s8)
                  lbu          t3, -9(a4)
                  sb           s2, 67(s8)
                  lbu          s5, -11(sp)
                  lbu          t3, -13(sp)
                  lb           s5, -9(a4)
                  lb           s5, -225(s8)
                  lbu          s9, 1(a4)
                  lb           ra, 7(sp)
                  sb           zero, 19(s8)
                  lh           ra, 118(s8)
                  lbu          t1, 231(s8)
                  sb           s11, -6(a4)
                  sb           gp, 12(sp)
                  lh           t0, 11(a4)
                  sh           a6, -114(s8) #end load_store_instr_stream_1
                  sb           t5, -10(a4) #end load_store_instr_stream_2
                  lbu          t3, -4(sp) #end load_store_instr_stream_0
                  la           t4, region_0+1122 #start riscv_load_store_rand_instr_stream_0
                  lb           zero, -56(t4)
                  andi         t5, t4, 1005
                  lb           s11, -49(t4)
                  lh           sp, -52(t4)
                  lbu          s4, -8(t4)
                  sb           a0, 21(t4)
                  lbu          a3, 29(t4)
                  xor          t5, t2, zero
                  lbu          tp, 50(t4)
                  lh           t3, -54(t4)
                  slli         gp, a5, 9
                  sb           t3, -59(t4)
                  lbu          s3, 59(t4)
                  lh           a7, 2(t4)
                  lbu          t2, 39(t4)
                  sltu         t2, t6, tp
                  sltiu        s2, s2, -353
                  addi         s11, t2, 1425
                  sra          a5, s1, a6
                  lbu          s6, -45(t4)
                  slti         zero, s11, 1875
                  sh           t2, -30(t4)
                  sw           t2, 54(t4)
                  lb           t0, -25(t4)
                  lb           a1, 19(t4)
                  sb           a4, -46(t4)
                  auipc        t6, 237728
                  lb           zero, -59(t4)
                  lbu          s3, -5(t4)
                  xor          a0, zero, s4
                  srai         s11, a6, 23
                  sw           t1, -2(t4)
                  lbu          sp, -53(t4)
                  lbu          t5, -16(t4) #end riscv_load_store_rand_instr_stream_0
                  ori          a4, ra, -1664
                  sub          s2, a6, sp
                  and          a5, s6, s10
                  sltiu        t2, s0, 139
                  ori          s7, s8, 360
                  bgeu         t1, a5, 15f
                  bge          t0, t1, 8f
                  sltiu        s11, s7, 1533
8:                srai         a5, t1, 31
                  sra          t1, ra, s1
                  xor          t2, a3, a0
                  and          t0, tp, s8
                  auipc        gp, 130764
                  la           s3, region_1+855 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s9, 124(s3)
                  lbu          a3, 162(s3)
                  sb           t3, -166(s3)
                  sh           t5, -73(s3)
                  xor          t3, t0, s1
                  sb           s0, -195(s3)
                  sw           t4, -195(s3)
                  sltu         s9, ra, t6
                  lb           sp, 28(s3)
                  lb           a4, 28(s3)
                  lb           tp, 28(s3)
                  lui          a5, 49115
                  lbu          t5, 28(s3)
                  lb           t0, 244(s3)
                  lbu          s11, 32(s3)
                  lbu          t2, 59(s3)
                  lbu          a1, 240(s3)
                  lb           s6, 240(s3)
                  lb           tp, 240(s3)
                  sb           a1, 240(s3)
                  sb           gp, 240(s3)
                  lb           a0, -203(s3) #end riscv_load_store_hazard_instr_stream_0
                  xori         s2, t5, 387
                  nop
15:               nop
                  xori         s7, t3, -132
                  ori          sp, ra, 1043
                  sra          tp, t1, a0
                  xori         s4, s8, 543
                  xori         t6, s3, -1059
                  slti         a5, t3, -1536
                  la           a7, sub_1
                  xori         sp, s5, -69
                  xori         gp, s9, -631
                  addi         a7, a7, 360
                  srl          s10, t2, t3
main_j1:          jalr         t1, a7, -359 #jump main -> sub_1
                  bgeu         s5, s10, 37f
                  slt          a0, s3, a4
                  andi         gp, a6, -925
                  and          s10, a5, a4
                  sra          s10, s3, s1
                  auipc        a4, 325528
                  xori         s7, s6, 185
                  auipc        zero, 93959
                  sltu         a1, s5, a7
                  sra          s7, tp, tp
                  la           t3, sub_1
                  add          t6, s5, a3
                  addi         t3, t3, -768
                  blt          a2, a2, main_j2 #branch to jump instr
                  slti         t6, zero, 1234
                  auipc        s11, 695492
                  slt          s2, t3, s2
main_j2:          jalr         t1, t3, 768 #jump main -> sub_1
                  beq          gp, s6, 28f
28:               bgeu         a1, zero, 33f
                  sltiu        s6, t5, 1183
                  bne          a5, t3, 38f
                  bne          s11, a4, 37f
                  blt          t1, a7, 47f
33:               and          ra, s3, s8
                  add          s9, s5, s10
                  srai         t5, tp, 17
                  andi         s7, a5, -109
37:               srli         zero, a1, 4
38:               sub          a1, s9, s11
                  sltiu        a3, t3, -783
                  xori         t3, t6, 1069
                  bne          t5, a6, 56f
                  add          a5, s2, a0
                  or           s9, gp, t3
                  bltu         s0, s2, 59f
                  sll          t4, zero, a0
                  beq          t2, gp, 60f
47:               slt          a5, t0, s0
                  andi         t3, t6, 1214
                  bgeu         zero, s9, 50f
50:               sltiu        s7, t4, 371
                  srai         s8, ra, 7
                  srai         s9, a1, 5
                  srl          s5, t4, s6
                  sltu         s4, s9, t5
                  bge          s9, s4, 72f
56:               slt          t1, s9, a2
                  sltu         s7, sp, a2
                  and          t4, a5, s5
59:               bge          s5, zero, 65f
60:               nop
                  slli         sp, s1, 31
                  sll          a0, t0, t6
                  xor          s7, a0, t5
                  srai         s9, t3, 13
65:               slt          t0, sp, s11
                  sltiu        s11, t6, -879
                  bgeu         a4, t1, 82f
                  beq          a6, a0, 70f
                  ori          t2, t3, -1935
70:               lui          s9, 151640
                  sltu         s7, t5, s1
72:               lui          s11, 30421
                  bne          s9, t4, 83f
                  and          t6, s4, a0
                  xor          s11, t4, t3
                  slt          s4, t3, zero
                  sra          s7, s4, sp
                  bne          t4, s7, 94f
                  auipc        s2, 399611
                  ori          a0, t4, -1571
                  nop
82:               srl          s10, s0, a3
83:               sltiu        s11, gp, 1688
                  bge          s1, s0, 89f
                  nop
                  beq          t1, t2, 105f
                  lui          sp, 990877
                  andi         s6, t0, -1224
89:               srai         s4, a2, 27
                  lui          t4, 474007
                  add          s2, s8, t6
                  slt          s2, zero, a2
                  sll          zero, a7, s2
94:               bne          t2, ra, 111f
                  or           s4, a4, t3
                  sltiu        t5, t2, -615
                  or           t6, t3, gp
                  lui          t2, 899829
                  slt          s2, s7, a3
                  srai         s4, s4, 11
                  ori          t6, a6, 1188
                  sltiu        s7, s3, -1306
                  bge          gp, s1, 121f
                  sltiu        s4, t6, 1737
105:              slti         s8, a5, -776
                  xori         a5, sp, -959
                  slti         s4, a3, 262
                  sltiu        a7, t0, 1118
                  addi         s5, sp, 1297
                  and          t6, t4, s11
111:              srai         t1, a5, 14
                  andi         t5, s10, -388
                  lui          a7, 780825
                  sub          s8, t5, s0
                  sltiu        t4, a0, -542
                  slti         s7, s7, -1686
                  xor          s4, a1, s9
                  xor          s1, zero, sp
                  srai         t3, s3, 27
                  blt          s0, t5, 124f
121:              lui          t3, 907040
                  srai         s3, a4, 30
                  slti         tp, ra, 694
124:              sra          a7, s2, s11
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         s0, s0, -8
                  auipc        s8, 43329
                  sw           t1, 4(s0)
                  lui          s6, 239537
                  sra          s1, gp, t2
                  la           a5, region_0+425 #start riscv_load_store_hazard_instr_stream_3
                  lhu          a1, 15(a5)
                  lw           ra, 15(a5)
                  lw           s4, 15(a5)
                  lbu          s9, 15(a5)
                  sh           a1, 15(a5)
                  sb           sp, 15(a5)
                  lbu          s11, 15(a5)
                  lhu          s11, 15(a5)
                  lhu          s1, 15(a5)
                  lhu          t2, 15(a5)
                  sw           s7, 15(a5)
                  nop
                  lh           a7, 15(a5)
                  lb           tp, 15(a5)
                  sltiu        tp, s3, 1018
                  sb           ra, 15(a5)
                  sh           t2, 15(a5) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+80 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s11, -3(sp)
                  lb           t0, -13(sp)
                  sb           s3, 3(sp)
                  srli         ra, s10, 5
                  add          s9, s2, a6
                  lb           a3, -9(sp)
                  sb           s9, -9(sp)
                  sb           a6, -8(sp)
                  lh           a3, -8(sp)
                  sh           s7, -8(sp)
                  lh           t4, -8(sp)
                  ori          s7, s1, 441
                  lbu          t3, 13(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_1+1302 #start riscv_load_store_hazard_instr_stream_0
                  sltiu        s10, s8, -1049
                  lb           t5, -71(s8)
                  lb           tp, 15(s8)
                  lb           tp, 15(s8)
                  sll          ra, s7, s8
                  lb           a7, 111(s8)
                  nop
                  srli         s11, t0, 15
                  lb           s11, 228(s8)
                  nop
                  lh           a4, 206(s8)
                  lbu          t1, -151(s8)
                  lbu          zero, -151(s8)
                  sb           t1, -151(s8)
                  lh           s1, -208(s8)
                  sb           t2, -208(s8)
                  xori         s9, s4, -1825
                  sb           a7, 68(s8)
                  sb           a2, 93(s8)
                  lb           s6, 93(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_1+420 #start load_store_instr_stream_2
                  la           s3, region_1+67 #start load_store_instr_stream_1
                  la           s2, region_1+326 #start load_store_instr_stream_0
                  lhu          t5, 49(s3)
                  lbu          s1, -105(s4)
                  lh           a3, -176(s4)
                  lb           t3, 226(s3)
                  lb           ra, 91(s4)
                  lhu          ra, -13(s3)
                  lbu          s9, 212(s3)
                  sw           s10, 2(s2)
                  sb           s11, 205(s4)
                  lbu          s11, -43(s3)
                  lb           t5, -229(s4)
                  lhu          gp, 226(s4)
                  sb           t6, 238(s3)
                  lbu          a7, 48(s3)
                  sb           s3, -13(s2)
                  lh           a4, 143(s3)
                  lbu          s10, 13(s2)
                  lbu          a5, 10(s2)
                  sw           s4, 160(s4)
                  lhu          t2, 99(s3)
                  lb           s6, 47(s4)
                  lb           gp, -25(s4)
                  lb           s1, 6(s2)
                  lbu          t4, -15(s4) #end load_store_instr_stream_2
                  sb           t4, 212(s3) #end load_store_instr_stream_1
                  lb           s11, 7(s2) #end load_store_instr_stream_0
                  la           ra, region_1+1929 #start riscv_load_store_rand_instr_stream_0
                  sb           s8, -229(ra)
                  sra          a1, a2, sp
                  srli         t0, t6, 10
                  slli         s3, a1, 22
                  sra          t1, s1, a1
                  sb           gp, 45(ra)
                  sb           s10, -142(ra)
                  sb           a0, -250(ra)
                  lw           s2, -113(ra)
                  addi         s9, a1, -1617
                  sltiu        s7, s2, -1772
                  slti         s2, zero, 1710
                  lbu          a4, -60(ra)
                  slt          t3, s10, a3
                  sb           a0, -243(ra)
                  sh           t6, 67(ra)
                  add          s7, t3, s0
                  lb           tp, 13(ra)
                  auipc        t6, 1025225
                  sb           ra, -144(ra)
                  lb           a1, -183(ra)
                  or           t1, s10, s10
                  lb           a5, -247(ra)
                  lb           s3, -35(ra)
                  lb           a7, -104(ra)
                  sb           ra, -191(ra)
                  srai         a7, a5, 7
                  sra          a4, a3, s11
                  lh           t4, -215(ra)
                  lw           t6, -213(ra)
                  sub          t3, s0, tp
                  sb           s9, -139(ra)
                  lb           s8, 56(ra)
                  sll          s3, s5, s1
                  lh           t1, -185(ra)
                  sh           a4, -251(ra) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+1316 #start load_store_instr_stream_4
                  la           s3, region_0+1862 #start load_store_instr_stream_0
                  la           s9, region_0+1614 #start load_store_instr_stream_3
                  sh           s2, -10(s9)
                  la           tp, region_0+1303 #start load_store_instr_stream_2
                  sw           t4, 36(gp)
                  sb           a4, 1(s9)
                  la           s8, region_0+43 #start load_store_instr_stream_1
                  lw           s2, 1137(s8)
                  lbu          s11, 3(gp)
                  sb           a6, -16(s3)
                  lb           a7, 15(s3)
                  lw           s5, 6(s9)
                  sh           ra, -129(tp)
                  sb           a1, -1(s9)
                  lb           t3, 13(gp)
                  lhu          t2, 115(tp)
                  lh           ra, 1589(s8)
                  lbu          s11, -13(s9)
                  lhu          s2, 961(s8)
                  lb           ra, -3(s3)
                  lbu          t1, 173(tp)
                  lb           s6, 33(gp)
                  lbu          a5, 400(s8)
                  lbu          s10, -12(s9)
                  lw           s10, -127(tp)
                  lbu          s6, -141(tp)
                  sh           s5, 1679(s8)
                  sh           zero, 40(gp)
                  sb           zero, 1342(s8)
                  lb           t0, 134(s8)
                  sb           t2, 36(gp)
                  lb           s7, -131(tp)
                  lhu          s11, 6(s3)
                  lb           t2, 13(s9)
                  lhu          t5, -12(s9) #end load_store_instr_stream_3
                  sb           a1, -61(gp)
                  lb           a4, 164(tp)
                  lbu          t2, 1363(s8)
                  lb           a5, 1844(s8) #end load_store_instr_stream_1
                  sb           gp, 116(tp) #end load_store_instr_stream_2
                  lbu          s7, -7(gp) #end load_store_instr_stream_4
                  lbu          s4, -3(s3) #end load_store_instr_stream_0
                  la           s10, region_1+1644 #start load_store_instr_stream_0
                  lw           a7, -8(s10)
                  la           s9, region_1+825 #start load_store_instr_stream_4
                  la           s7, region_1+828 #start load_store_instr_stream_1
                  la           a3, region_1+961 #start load_store_instr_stream_2
                  lb           s1, 10(s10)
                  lbu          a4, 187(s7)
                  sb           a7, 794(s7)
                  lhu          a7, 41(a3)
                  sb           a1, -10(s10)
                  sw           t6, -49(s9)
                  lb           s2, 21(a3)
                  sb           s0, 463(s7)
                  lhu          s4, 33(s9)
                  lhu          a5, 520(s7)
                  lbu          s3, 16(s10)
                  la           sp, region_1+1767 #start load_store_instr_stream_3
                  lh           tp, -57(s9)
                  lb           s2, 669(s7)
                  lbu          t6, 6(sp)
                  lb           s3, -13(s9)
                  sh           s6, 0(s10)
                  lbu          ra, -12(sp)
                  lb           t1, -47(a3)
                  sb           sp, -14(a3)
                  lhu          a0, 514(s7)
                  lhu          t4, 1066(s7)
                  lhu          s11, -63(a3)
                  lh           gp, -61(s9)
                  lhu          tp, -8(s10)
                  sb           zero, 13(s10)
                  lb           s3, -12(sp)
                  lw           t5, -25(a3)
                  lbu          t3, 1123(s7)
                  lb           s1, -6(sp)
                  lb           t0, -6(s10)
                  sb           a5, 121(s7)
                  sb           a1, -12(sp) #end load_store_instr_stream_3
                  sb           s1, -5(s10)
                  lb           ra, 23(s9)
                  lb           t0, 18(s9) #end load_store_instr_stream_4
                  sh           s4, 186(s7) #end load_store_instr_stream_1
                  lbu          t5, 57(a3)
                  lbu          s2, 14(a3) #end load_store_instr_stream_2
                  sb           s2, -9(s10) #end load_store_instr_stream_0
                  la           s11, region_0+782 #start riscv_load_store_rand_instr_stream_1
                  sb           a1, -6(s11)
                  sb           gp, 4(s11)
                  sub          t2, s5, a2
                  lb           s1, 7(s11)
                  lui          a5, 112160
                  andi         tp, s11, -827
                  sb           s11, -16(s11)
                  lb           s3, -11(s11)
                  lh           t4, 8(s11)
                  or           tp, s0, t6
                  lbu          a0, -10(s11)
                  lb           a3, -7(s11)
                  sra          s5, gp, a2
                  lb           t4, -12(s11)
                  lb           s2, -7(s11)
                  lbu          t6, 13(s11)
                  lb           sp, -1(s11)
                  lbu          t4, 7(s11)
                  srli         s6, s2, 7
                  lh           s3, -12(s11)
                  lbu          s2, -12(s11)
                  sb           t1, -3(s11)
                  xor          s5, a0, s0
                  sw           s3, 10(s11)
                  sh           s6, 0(s11)
                  lb           s2, -14(s11)
                  lbu          t1, -7(s11)
                  lw           t2, -10(s11)
                  sra          s9, zero, zero
                  slti         t5, a7, 1616
                  sb           s1, 4(s11)
                  sb           a7, 12(s11)
                  ori          a0, a1, -885
                  slt          t2, s2, zero
                  lhu          t1, 4(s11)
                  sra          t2, s9, s0
                  sll          t0, a0, a6
                  srli         sp, t5, 10
                  xor          t6, s0, a3
                  lbu          t1, 15(s11)
                  lh           s6, 12(s11) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+497 #start riscv_load_store_rand_instr_stream_2
                  lbu          s10, -40(sp)
                  lb           a0, 181(sp)
                  sra          t3, s6, a2
                  add          s10, sp, a0
                  xori         a7, tp, 1485
                  sb           s10, 22(sp)
                  lh           t2, -127(sp)
                  lw           s8, -209(sp)
                  srli         a1, s3, 25
                  lb           a4, -98(sp)
                  and          a5, t3, s10
                  lui          t6, 978039
                  sh           s8, -177(sp)
                  andi         gp, s0, 1281
                  sw           a7, -161(sp)
                  sb           a2, 2(sp)
                  slt          s3, gp, t4
                  sh           s8, -161(sp)
                  sb           zero, 103(sp)
                  or           s3, s5, t1
                  lb           a1, -227(sp)
                  auipc        t5, 560075
                  add          s1, s7, t0
                  xor          s3, s5, t1
                  lbu          a1, 118(sp)
                  nop
                  slli         tp, s2, 12
                  sb           s10, 116(sp)
                  lbu          t1, -224(sp)
                  slt          a1, a5, s4
                  andi         a5, s6, 1636
                  sll          gp, s2, t4
                  sw           t5, 219(sp)
                  xor          s3, s8, s0
                  lb           s4, -204(sp)
                  andi         t3, s1, 1563
                  sltiu        t0, t2, -232
                  slli         t2, t2, 5
                  and          s8, t5, t1
                  lbu          s6, 10(sp)
                  slt          s7, s11, a7
                  srl          s6, t4, s5
                  ori          t5, a0, -1184
                  lbu          s2, 14(sp)
                  andi         s2, s10, 472
                  sb           s9, -84(sp)
                  sub          s11, gp, a4
                  xori         a0, a4, -149
                  lhu          s3, -213(sp)
                  xor          s9, a6, a2
                  sb           a7, 40(sp)
                  andi         s5, ra, -1031
                  lbu          t6, -249(sp)
                  lb           t0, 154(sp)
                  sb           s8, -153(sp)
                  sb           a0, 50(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_1+978 #start riscv_load_store_rand_instr_stream_3
                  lbu          a4, -361(a1)
                  lbu          sp, -501(a1)
                  lbu          t4, -647(a1)
                  lbu          t0, 567(a1)
                  lh           s2, 688(a1)
                  slti         s7, s11, -694
                  lb           a4, -555(a1)
                  lh           s4, 712(a1)
                  sltu         a0, a2, t2
                  srli         t4, s10, 2
                  and          zero, t0, s8
                  auipc        t2, 372341
                  add          s2, zero, s2
                  sb           s11, 668(a1)
                  nop
                  slt          s9, t1, s6
                  xori         s4, t0, 845
                  and          a0, a5, t4
                  sw           a3, -938(a1)
                  lbu          a0, -553(a1)
                  ori          s1, t6, 796
                  sb           a0, 767(a1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1655 #start riscv_load_store_hazard_instr_stream_2
                  lw           gp, -79(sp)
                  lw           a1, -79(sp)
                  lbu          a7, -236(sp)
                  xor          a3, t0, t3
                  sb           s10, -236(sp)
                  lbu          t1, -236(sp)
                  lb           s3, -236(sp)
                  sub          s6, s8, s11
                  lhu          s4, -207(sp)
                  lb           a1, -207(sp)
                  lh           zero, -207(sp)
                  lb           s1, -207(sp)
                  sw           gp, -207(sp)
                  sw           s9, -207(sp)
                  sb           t0, -207(sp)
                  srli         a3, s2, 19
                  lh           s1, -207(sp)
                  lb           t3, -207(sp)
                  lh           ra, -207(sp)
                  lh           a4, -207(sp) #end riscv_load_store_hazard_instr_stream_2
                  beq          gp, s6, 9f
                  srli         zero, s2, 9
                  ori          a4, s9, -1108
                  addi         tp, a2, -1068
                  bne          tp, a1, 13f
                  xori         s7, s10, -1302
                  andi         s3, tp, -1573
                  nop
                  slli         t4, s4, 1
9:                srai         s10, s7, 5
                  addi         a7, s10, -1480
                  slt          tp, s0, gp
                  sltu         s1, gp, s2
13:               bne          a4, a0, 25f
                  slt          t2, ra, s2
                  bgeu         s11, t3, 22f
                  sltu         a3, a2, s6
                  srli         gp, ra, 6
                  addi         sp, s9, 872
                  sub          s10, s6, a4
                  la           t4, region_1+918 #start load_store_instr_stream_1
                  la           t1, region_1+1205 #start load_store_instr_stream_2
                  lh           a7, 198(t4)
                  la           s2, region_1+1240 #start load_store_instr_stream_0
                  la           sp, region_1+1314 #start load_store_instr_stream_3
                  lbu          s4, -45(sp)
                  lb           a0, -881(t1)
                  lbu          t0, -1124(t1)
                  lb           t3, -71(t4)
                  lb           s7, 18(s2)
                  lbu          s4, 48(sp)
                  lb           a3, 674(t1)
                  lb           ra, -27(sp)
                  lbu          a4, 20(t4)
                  sb           s7, -23(sp)
                  sb           sp, -55(s2)
                  sh           ra, -110(t4)
                  sb           a6, 13(sp)
                  lhu          s3, 50(sp)
                  lw           a0, -186(t4)
                  lhu          s1, 8(sp)
                  lbu          s5, -61(sp)
                  sb           t0, -121(s2)
                  lb           s8, -135(t4)
                  sb           a3, 21(t4)
                  sb           t0, -150(s2)
                  sh           ra, 617(t1)
                  lbu          a5, 78(t4)
                  lbu          s1, 28(sp)
                  lw           t6, -118(t4)
                  lbu          s6, -36(sp) #end load_store_instr_stream_3
                  lhu          gp, -1025(t1) #end load_store_instr_stream_2
                  lb           a3, 66(s2)
                  lbu          s9, 45(t4) #end load_store_instr_stream_1
                  lw           s10, 8(s2) #end load_store_instr_stream_0
                  nop
                  srai         t6, a7, 14
22:               add          s10, a5, zero
                  addi         s3, s7, 708
                  slt          a0, sp, a1
25:               auipc        gp, 271832
                  xor          s1, s0, a3
                  nop
                  bne          a4, s7, 29f
29:               bltu         a3, a3, 32f
                  bgeu         t5, s10, 42f
                  srl          s4, a2, s1
32:               nop
                  or           gp, s7, s9
                  sub          t4, a4, s8
                  slt          t3, s11, t1
                  bge          t6, s6, 48f
                  sll          s11, t5, s4
                  bge          t4, s9, 48f
                  andi         a7, s2, 1468
                  bltu         zero, s7, 53f
                  add          s2, s9, a6
42:               lui          zero, 300732
                  srai         a5, a3, 22
                  or           a4, t6, t5
                  xori         t3, s5, -1974
                  sll          s2, s8, s4
                  slt          t3, a4, gp
48:               bgeu         gp, t0, 54f
                  srai         a1, s10, 18
                  xori         a7, a6, 185
                  add          a4, t4, s3
                  bne          s5, t5, 67f
53:               auipc        s5, 581638
54:               bge          tp, s5, 69f
                  slti         a1, zero, -455
                  lui          s4, 367227
                  or           t5, a0, gp
                  slli         t4, s11, 5
                  add          a7, a4, t1
                  andi         t1, a0, 1446
                  addi         tp, t1, 756
                  nop
                  xor          t0, s7, s11
                  sll          a1, t6, a1
                  slli         t6, a2, 4
                  bgeu         t1, a0, 85f
67:               bgeu         sp, s8, 80f
                  or           gp, s8, t1
69:               slli         t0, t3, 23
                  xor          a5, s7, s1
                  srli         t0, t0, 3
                  bltu         gp, s11, 82f
                  slti         a0, a3, -1901
                  nop
                  auipc        zero, 628168
                  sll          gp, s1, a1
                  xor          s9, a0, tp
                  lui          a5, 851535
                  sltu         t4, a0, s10
80:               xor          tp, a5, s11
                  auipc        s4, 173405
82:               sltiu        s9, t5, 2045
                  and          a4, tp, s9
                  srli         s4, sp, 29
85:               nop
                  sll          s1, a5, s1
                  sub          t4, s8, t2
                  sub          t1, a4, a1
                  xor          a5, s10, t2
                  sub          gp, tp, s1
                  and          t5, ra, tp
                  or           s5, s4, a5
                  blt          ra, a1, 108f
                  bne          zero, a7, 113f
                  sub          a0, a1, a2
                  andi         s10, s1, 1984
                  auipc        s5, 1021095
                  sub          a5, t2, a2
                  lui          t3, 398154
                  bge          s5, s10, 115f
                  auipc        ra, 903942
                  ori          a7, zero, 1921
                  andi         zero, t1, 2017
                  add          a0, s10, a3
                  srl          s11, sp, a4
                  xori         ra, s1, -1533
                  or           s3, t3, s3
108:              sltu         a0, a2, t5
                  add          t0, sp, t2
                  ori          s1, a6, -1974
                  beq          a4, t1, 113f
                  bge          t5, a4, 127f
113:              sltu         s4, s11, gp
                  bge          t6, a6, 116f
115:              srl          t1, s11, s7
116:              nop
                  sltiu        s8, zero, -1470
                  andi         sp, s11, 526
                  sltu         t1, s7, s2
                  ori          zero, a6, -433
                  xori         a3, t1, -1967
                  sltiu        zero, a6, -1748
                  andi         t1, s10, -748
                  and          tp, s8, s10
                  addi         t4, t4, 1348
                  srl          t1, s1, t5
127:              slli         s10, t1, 1
                  andi         sp, a5, -438
                  bltu         tp, a6, 141f
                  slt          t2, s3, s7
                  nop
                  slli         ra, ra, 2
                  add          s1, s7, a2
                  and          t5, s8, s9
                  andi         t5, a6, 983
                  xori         s8, a5, 632
                  slt          tp, s9, s9
                  bltu         s4, t3, 141f
                  srli         t5, a7, 18
                  blt          a4, s3, 146f
141:              slt          t5, s3, t4
                  sra          s10, zero, tp
                  srli         s10, t3, 11
                  or           s9, a3, t2
                  ori          tp, a6, -846
146:              bge          t3, a4, 150f
                  sltu         a3, s1, tp
                  sltiu        t2, s5, 743
                  slti         ra, s11, 1261
150:              lui          a7, 869994
                  and          a1, s3, s6
                  sra          sp, t4, a2
                  srl          s6, t2, s4
                  sltu         ra, a7, t4
                  sub          gp, s1, s4
                  auipc        sp, 390738
                  bltu         s4, a1, 177f
                  sltiu        a4, s2, 781
                  bge          t6, a4, 165f
                  ori          a7, a6, 1823
                  sra          tp, s6, s10
                  slti         s5, s3, -550
                  and          s11, gp, ra
                  sltiu        s7, s7, -1527
165:              sltu         s8, s0, zero
                  sll          s6, s2, ra
                  sub          tp, t3, a1
                  srai         t2, tp, 24
                  bne          ra, a6, 188f
                  blt          ra, s8, 185f
                  sub          ra, s4, a2
                  srl          zero, t6, s5
                  auipc        s5, 575143
                  sltiu        t0, a4, -60
                  srli         s9, t0, 16
                  lui          t2, 540462
177:              auipc        s11, 680619
                  xor          s11, sp, s9
                  beq          s0, s6, 182f
                  auipc        tp, 451074
                  bgeu         s11, a6, 196f
182:              add          s11, ra, s1
                  addi         s1, t1, -622
                  and          ra, s9, tp
185:              andi         s6, zero, -1144
                  auipc        t3, 977602
                  srli         t1, s4, 0
188:              lui          s7, 481263
                  sll          a7, t4, tp
                  auipc        t2, 578352
                  srl          ra, a6, tp
                  sra          zero, a0, t2
                  sra          a4, t2, s11
                  sll          s8, a5, t0
                  slti         tp, sp, -931
196:              bgeu         s0, t5, 209f
                  sll          t2, s5, t2
                  srli         s4, zero, 3
                  sub          t2, s5, s9
                  auipc        t2, 502513
                  srl          s10, t1, a2
                  sra          tp, t4, s5
                  auipc        s1, 177197
                  sra          s5, sp, s2
                  or           t6, a2, s10
                  xor          tp, s4, t4
                  sub          a0, ra, a7
                  beq          a6, s2, 215f
209:              add          a5, t1, s0
                  xori         s8, t2, 603
                  add          s11, s3, s3
                  and          s5, zero, tp
                  beq          t6, t4, 225f
                  sltiu        t5, s4, -5
215:              ori          t2, s10, -127
                  sll          t1, a4, t0
                  sltu         a7, t6, sp
                  and          sp, t3, a3
                  srli         t1, a1, 14
                  bgeu         t4, a1, 229f
                  sltu         tp, t3, a7
                  and          a4, t5, zero
                  xori         s3, s9, -15
                  bne          a0, zero, 244f
225:              sltiu        t1, t6, -571
                  bne          t6, a6, 241f
                  bge          t6, t0, 228f
228:              xori         t1, t0, 1615
229:              srli         a5, sp, 5
                  addi         t6, a3, 1927
                  ori          s11, s7, -1088
                  slti         s5, a5, -232
                  bne          a4, a0, 245f
                  add          a4, s8, s1
                  srai         s6, t0, 11
                  srli         a4, t5, 7
                  ori          s5, a0, 527
                  slli         s10, t1, 31
                  srli         s1, a3, 23
                  xori         s5, t2, 1358
241:              slli         t6, a0, 29
                  sll          s1, gp, t3
                  or           a3, tp, s4
244:              srl          s6, t3, t3
245:              lui          a5, 608307
                  xor          s4, ra, gp
                  auipc        a3, 450263
                  add          s10, t0, t3
                  beq          sp, s2, 264f
                  and          s9, a0, a6
                  slti         s4, a3, 288
                  bne          s8, s2, 267f
                  blt          a3, s6, 268f
                  bge          t6, s4, 256f
                  auipc        ra, 72162
256:              srai         t0, a6, 19
                  slt          s6, s3, s4
                  slti         s1, zero, 1651
                  blt          s4, a3, 271f
                  lui          s2, 500550
                  sra          t5, s6, s9
                  bge          t6, t3, 281f
                  andi         s1, s11, -1349
264:              and          t0, zero, gp
                  sltiu        tp, t2, -1855
                  bltu         t2, a4, 279f
267:              bge          t0, s6, 277f
268:              andi         t6, a6, -563
                  srli         t5, t1, 20
                  sll          tp, a4, a4
271:              lui          a5, 510996
                  andi         sp, a3, -995
                  sub          sp, t6, a6
                  bltu         s5, s11, 283f
                  addi         a1, s6, -199
                  lui          a0, 64260
277:              slt          s4, ra, ra
                  andi         s1, s11, 1786
279:              srli         gp, s10, 4
                  beq          s4, a5, 295f
281:              lui          s3, 477671
                  xor          t3, s6, a6
283:              auipc        s6, 1012134
                  slli         t0, a2, 29
                  sltiu        s6, s11, 1634
                  xor          t4, sp, t1
                  sub          gp, s6, t4
                  addi         t5, sp, -781
                  sub          zero, a6, a6
                  slti         t2, ra, -462
                  srai         s1, s9, 10
                  sltiu        s6, a6, 406
                  sltiu        s7, zero, 1345
                  bltu         t1, a5, 313f
295:              bne          a1, sp, 301f
                  sub          a1, t3, t1
                  bgeu         sp, s10, 316f
                  slli         t0, s6, 2
                  bltu         s5, sp, 303f
                  slti         s6, t6, -410
301:              add          ra, s2, a5
                  ori          t3, a4, -118
303:              add          tp, s2, s8
                  addi         a7, s3, 784
                  auipc        s8, 268282
                  bgeu         t2, s9, 312f
                  sub          t1, tp, t6
                  sltiu        s5, t4, -1375
                  sra          s10, s0, s0
                  slli         s2, t4, 19
                  srai         s2, a0, 5
312:              beq          zero, a7, 324f
313:              sub          t5, s3, a5
                  nop
                  sltiu        s10, a6, 1924
316:              sll          a5, t5, s6
                  auipc        gp, 428826
                  sltiu        t2, s4, 525
                  sltiu        s1, gp, -1824
                  addi         t3, zero, -1016
                  or           a4, gp, s5
                  bne          tp, a1, 332f
                  xor          tp, a2, a5
324:              xor          t5, s5, t6
                  and          zero, s7, s1
                  srai         t5, s9, 4
                  sltu         s8, t5, s2
                  xor          s11, tp, s1
                  sltu         ra, s9, a6
                  xori         tp, a3, -730
                  xori         s7, s10, 460
332:              bne          t5, ra, 335f
                  bltu         a6, sp, 339f
                  sltu         s9, gp, gp
335:              or           s7, t5, a7
                  andi         gp, s5, 1516
                  slli         a3, gp, 30
                  ori          gp, s5, -841
339:              sltu         tp, s2, s10
                  xor          t5, s6, s0
                  bne          ra, s3, 343f
                  slt          t4, s6, s8
343:              srl          s4, t0, t1
                  andi         s5, s4, 1964
                  sra          a3, s5, tp
                  andi         s2, s8, -19
                  bgeu         s0, zero, 356f
                  sltu         t3, a2, s2
                  nop
                  bge          t1, s8, 353f
                  sub          s2, a1, s9
                  xori         a3, s1, 1479
353:              auipc        s11, 343641
                  lui          zero, 757545
                  bgeu         tp, a2, 361f
356:              slli         tp, ra, 0
                  addi         s4, t3, 1359
                  bltu         a0, zero, 361f
                  sltu         t1, s5, a0
                  bgeu         t6, a3, 366f
361:              add          s9, a6, a2
                  srl          s2, a4, s10
                  srl          s3, a2, s5
                  add          gp, s10, s2
                  sub          t3, gp, t4
366:              xori         t4, s5, -1793
                  blt          a6, t4, 382f
                  slt          s5, a2, s8
                  lui          s10, 1000665
                  and          s8, a7, gp
                  srl          s1, s7, zero
                  sltiu        a4, s7, 1213
                  srl          ra, a1, t6
                  srl          t6, ra, s11
                  slli         s4, s9, 31
                  srai         s3, t3, 3
                  andi         s10, s11, 1991
                  lui          s2, 66975
                  nop
                  sll          a0, t4, s10
                  xor          tp, tp, a5
382:              sll          t6, t1, sp
                  bge          a3, t4, 398f
                  blt          s11, s7, 388f
                  sll          t4, a4, s9
                  or           a7, t5, s7
                  sub          s11, a6, t0
388:              lui          a4, 757249
                  sltiu        s7, tp, 841
                  ori          a5, s10, 1320
                  beq          a6, t2, 401f
                  bge          t1, a1, 401f
                  and          s3, t5, gp
                  bltu         a3, s8, 409f
                  sltu         t2, gp, a0
                  xor          a3, s3, s1
                  slt          s4, ra, s6
398:              sltu         t0, a1, gp
                  andi         a4, s6, 1141
                  addi         a3, s10, 509
401:              slt          zero, a7, s0
                  bne          t0, s4, 417f
                  xor          s3, a6, a2
                  beq          s7, s1, 424f
                  or           s7, ra, a6
                  bltu         t2, a5, 418f
                  xori         t2, t2, -606
                  slli         s9, sp, 17
409:              bgeu         s8, s7, 428f
                  beq          s3, a1, 429f
                  srai         s3, s3, 4
                  xor          ra, s0, t5
                  nop
                  xori         s7, s0, 1087
                  srli         a3, t6, 30
                  ori          a1, t5, -1592
417:              and          s10, s8, s3
418:              add          a5, s2, t5
                  lui          s4, 777924
                  bltu         t1, t1, 426f
                  srli         t0, s9, 25
                  and          s10, sp, s7
                  lui          gp, 359677
424:              slt          s5, a6, s0
                  beq          s6, sp, 437f
426:              andi         a0, s2, 611
                  auipc        a4, 325590
428:              and          tp, t6, zero
429:              slli         s7, t1, 25
                  xor          ra, t3, s0
                  nop
                  and          s9, s2, t0
                  andi         a1, a7, -515
                  sll          s11, sp, tp
                  add          a7, s4, a0
                  srl          t4, a2, sp
437:              and          s5, gp, ra
                  bge          t0, t4, 450f
                  or           t2, t0, t4
                  bltu         a6, tp, 455f
                  slti         s3, s10, -1982
                  addi         t2, t2, -807
                  xor          t3, s1, s6
                  xori         zero, a4, 695
                  sra          ra, s3, s7
                  ori          s1, a6, 579
                  sub          s10, a4, tp
                  add          t1, s8, s1
                  blt          s4, s11, 450f
450:              ori          s2, s9, -1608
                  addi         a7, a1, -1203
                  xori         s4, s0, -624
                  sra          s10, a4, a5
                  and          t5, a3, gp
455:              add          s11, sp, gp
                  or           t0, t1, tp
                  srli         s1, s0, 26
                  bge          s3, a0, 473f
                  xori         a1, s4, 1429
                  bne          t6, a2, 473f
                  srai         t5, t4, 14
                  ori          t6, s7, 796
                  srl          sp, s8, t4
                  blt          s4, s9, 477f
                  xor          t5, s7, s2
                  sra          s11, zero, tp
                  or           t0, s3, a5
                  bge          zero, t2, 475f
                  and          s9, t2, t5
                  add          gp, tp, t2
                  and          s5, s1, a5
                  sll          t4, a4, t0
473:              bgeu         s0, ra, 485f
                  sltu         t6, t2, t1
475:              andi         a5, s6, 398
                  bgeu         t2, a3, 478f
477:              slli         a0, a3, 28
478:              bne          s3, t3, 495f
                  auipc        t4, 223535
                  sub          s11, s7, t4
                  slti         a5, a5, -974
                  lui          s6, 92328
                  sltu         gp, a0, s8
                  blt          s7, s11, 494f
485:              beq          ra, t5, 487f
                  slli         s6, gp, 20
487:              add          s10, s7, t0
                  xor          s6, sp, a6
                  srai         s6, sp, 2
                  or           t6, a5, s8
                  bgeu         a4, s10, 494f
                  auipc        s1, 1043518
                  srai         t3, t3, 3
494:              xori         t4, a2, 804
495:              addi         t5, a7, -1330
                  or           s5, s0, t0
                  add          t2, a5, s9
                  sltu         gp, s7, a4
                  lw           t1, 4(s0)
                  addi         s0, s0, 8
                  slt          s8, gp, ra
892:              addi x15, x6, 1
892:              jalr x15, x15, 0
sub_1:            andi         a7, s0, -828
                  addi         ra, s9, 1785
                  srl          t0, s3, t1
                  slti         s7, a1, 1089
                  sll          s7, s2, a2
                  bge          s11, s1, sub_1_stack_p
sub_1_stack_p:    addi         s0, s0, -24
                  slti         t5, a3, 1440
                  sw           t1, 4(s0)
                  lui          a5, 727311
                  and          a1, s11, s8
                  or           a3, s10, s0
                  la           s7, sub_2
                  nop
                  addi         s7, s7, 464
                  xor          s6, s4, s0
                  slt          a4, s7, zero
                  xori         t1, a2, -1790
                  nop
                  and          zero, s5, s11
                  bgeu         t6, t4, sub_1_j3 #branch to jump instr
                  xor          s11, a6, s4
                  slti         sp, a0, 110
sub_1_j3:         jalr         t1, s7, -464 #jump sub_1 -> sub_2
                  la           s10, region_1+437 #start riscv_load_store_rand_instr_stream_1
                  slti         s8, s4, -1373
                  add          a3, s8, t0
                  sh           a5, -11(s10)
                  auipc        s2, 243706
                  lb           a1, -6(s10)
                  and          a7, s2, t4
                  slt          t6, s2, gp
                  addi         s8, s6, -1498
                  auipc        sp, 65629
                  nop
                  slt          t2, a6, t2
                  sh           t0, -13(s10)
                  slti         a1, t5, 1643
                  sltiu        t6, t1, 1529
                  andi         s7, s7, -1362
                  nop
                  srli         t6, s0, 27
                  slli         a5, s3, 24
                  sb           s9, 8(s10)
                  srli         t6, t3, 5
                  lh           a1, -13(s10)
                  srl          s1, a4, a1
                  srai         zero, s7, 3
                  lb           s1, 6(s10)
                  sb           s7, 6(s10)
                  nop
                  slli         s6, a4, 17
                  sltiu        s7, s4, 1890
                  lhu          a3, -3(s10)
                  slli         s1, a1, 14
                  nop
                  sb           s7, 0(s10)
                  sb           s9, -9(s10)
                  lui          ra, 473457
                  andi         t2, a5, 1490
                  lh           t5, 15(s10)
                  lhu          sp, 15(s10)
                  sb           t0, 16(s10) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1287 #start riscv_load_store_rand_instr_stream_0
                  xor          s2, zero, s2
                  ori          t3, a0, 1295
                  lb           s1, -41(sp)
                  srai         gp, a7, 11
                  sb           a3, 22(sp)
                  sh           zero, 5(sp)
                  lbu          s3, 40(sp)
                  auipc        s5, 689929
                  sltu         s6, a1, t3
                  srl          s7, s3, s9
                  srl          a0, gp, a2
                  lb           a1, -44(sp)
                  lb           s5, 2(sp)
                  srai         a4, s7, 11
                  srl          t0, s5, gp
                  auipc        t5, 975043
                  lb           a4, 10(sp)
                  lhu          s7, 41(sp)
                  add          a4, s6, t5
                  lhu          t6, 17(sp)
                  sra          zero, t5, a3
                  lhu          t1, 3(sp)
                  sb           t1, 23(sp)
                  lw           zero, -23(sp)
                  lui          t4, 572870
                  lb           s6, 52(sp)
                  sltiu        s4, tp, -1858
                  or           s1, s0, t6
                  addi         s10, s9, 189
                  lh           a7, -5(sp)
                  lb           s4, -8(sp)
                  lhu          s5, 53(sp)
                  sb           s8, 10(sp)
                  slt          t0, s11, s5
                  lb           a4, -10(sp)
                  sh           s0, 19(sp)
                  sb           s1, -30(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_1+1301 #start load_store_instr_stream_0
                  la           s3, region_1+314 #start load_store_instr_stream_1
                  lw           tp, -1(s4)
                  lhu          s9, 16(s3)
                  sb           s9, 2(s4)
                  lb           sp, -13(s3)
                  lb           sp, 1(s4)
                  lbu          tp, 54(s4)
                  lb           s1, 15(s3)
                  lh           s5, 5(s4)
                  lbu          tp, -7(s3)
                  lb           t1, -4(s3)
                  sh           t0, -8(s3)
                  lh           t0, -47(s4)
                  lb           t2, -6(s4)
                  lb           a7, -13(s3)
                  sb           s8, -3(s3) #end load_store_instr_stream_1
                  sb           a7, -12(s4)
                  lw           a1, -29(s4) #end load_store_instr_stream_0
                  la           s3, region_1+836 #start riscv_load_store_rand_instr_stream_2
                  lui          s1, 101072
                  sltu         t3, t6, t6
                  srl          a0, tp, t2
                  lb           a3, -139(s3)
                  sltu         s4, a6, sp
                  sh           t1, -10(s3)
                  lui          a3, 876014
                  xori         t3, s6, -1471
                  auipc        ra, 125424
                  lb           t4, 37(s3)
                  lbu          s11, 163(s3)
                  lh           a0, 50(s3)
                  lbu          zero, 21(s3)
                  sra          t4, s7, t3
                  lbu          s11, -63(s3)
                  sll          a1, a4, s1
                  sb           t1, 69(s3)
                  sb           ra, 77(s3)
                  sll          t2, t2, zero
                  lb           s8, 159(s3)
                  sb           s2, 206(s3)
                  lb           gp, 27(s3)
                  lui          a3, 548911
                  and          gp, sp, t3
                  lbu          a7, -111(s3)
                  sb           s10, -203(s3)
                  slli         s4, s6, 5
                  xor          s6, gp, s6
                  srli         s10, a7, 21
                  lb           s6, 113(s3)
                  srai         a3, s6, 5
                  andi         a4, s8, 1747
                  sltu         a3, s9, a7
                  xori         s9, s1, -1983
                  lhu          s7, 0(s3)
                  srai         t4, tp, 9
                  sll          gp, t6, a1
                  addi         s7, t5, -323
                  srai         s7, t4, 9
                  sb           t2, 235(s3)
                  lw           s1, -120(s3)
                  nop
                  sb           s4, -14(s3) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_1+1927 #start load_store_instr_stream_3
                  la           a4, region_1+506 #start load_store_instr_stream_2
                  lhu          a1, -537(s5)
                  sb           s3, -624(s5)
                  lhu          s6, -1497(s5)
                  la           sp, region_1+1468 #start load_store_instr_stream_4
                  lw           s9, 422(a4)
                  lbu          s1, -335(s5)
                  la           t2, region_1+901 #start load_store_instr_stream_1
                  lb           s9, 1127(a4)
                  lbu          s7, -1194(s5)
                  lb           s8, -552(s5)
                  sb           a6, 5(t2)
                  lb           a3, -144(sp)
                  sh           a4, 32(a4)
                  sb           t4, -609(s5)
                  sh           ra, 57(t2)
                  la           ra, region_1+450 #start load_store_instr_stream_0
                  lbu          s10, -7(sp)
                  sh           a5, 47(t2)
                  sb           a1, -6(t2)
                  lh           t3, 178(sp)
                  sh           a3, -781(s5)
                  lb           s9, -56(sp)
                  lbu          s10, -196(ra)
                  sb           s7, 1267(a4)
                  lh           s2, 45(t2)
                  sb           zero, 75(sp)
                  lh           s3, -4(sp)
                  sh           s1, 88(a4)
                  lb           s9, 16(t2)
                  lbu          s8, 1231(a4)
                  lbu          s7, -16(ra)
                  lb           s3, 14(t2)
                  lw           s9, -32(sp)
                  lb           t1, 137(sp)
                  lb           s7, 1485(a4) #end load_store_instr_stream_2
                  sb           t3, -530(s5) #end load_store_instr_stream_3
                  sh           t2, -208(ra)
                  lbu          s10, 41(t2)
                  lh           gp, -4(sp) #end load_store_instr_stream_4
                  sh           s11, 11(t2)
                  lbu          a3, -7(t2) #end load_store_instr_stream_1
                  lhu          a7, -42(ra)
                  sh           t3, 98(ra)
                  lb           s3, -115(ra) #end load_store_instr_stream_0
                  la           s9, region_0+1586 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a4, 51(s9)
                  lb           s1, 51(s9)
                  lb           s4, -176(s9)
                  lh           a5, -176(s9)
                  sh           t5, -176(s9)
                  addi         t2, s0, -1681
                  sw           s2, 246(s9)
                  lb           gp, 246(s9)
                  lhu          t1, 246(s9)
                  lb           a0, 246(s9)
                  sh           t1, 246(s9)
                  sb           gp, -119(s9)
                  sb           t1, -119(s9)
                  lbu          s3, -119(s9)
                  lbu          s6, -119(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_0+1405 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a5, 218(s8)
                  sra          s4, t3, s8
                  lbu          a1, 218(s8)
                  addi         t6, t0, 1810
                  sb           a7, 218(s8)
                  lbu          s2, 218(s8)
                  lbu          t3, 218(s8)
                  sra          s10, zero, a4
                  lhu          ra, -81(s8)
                  addi         a5, t5, -885
                  lh           zero, -81(s8)
                  lbu          a3, -81(s8)
                  add          a3, a5, s11
                  srli         s4, s3, 17
                  lui          t1, 89112
                  lbu          s3, 51(s8)
                  lb           s11, 51(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_0+867 #start load_store_instr_stream_0
                  la           s5, region_0+603 #start load_store_instr_stream_2
                  la           s9, region_0+1713 #start load_store_instr_stream_1
                  lb           a0, -9(s5)
                  lb           zero, -1(s5)
                  lh           s3, -15(s4)
                  sh           s7, -5(s5)
                  sb           s0, 14(s5)
                  lh           gp, -5(s4)
                  lhu          s7, -291(s9)
                  lb           s6, -1642(s9)
                  lbu          t0, -4(s5)
                  lbu          a5, -9(s4)
                  lb           s3, -1300(s9)
                  lbu          zero, -13(s4)
                  sb           s9, -2(s5)
                  lb           t1, -1206(s9)
                  sb           s3, 15(s5)
                  sb           a0, 9(s4)
                  sb           zero, -8(s4)
                  sw           a5, -401(s9)
                  lb           s10, -437(s9)
                  lb           sp, 15(s5)
                  sb           sp, 162(s9) #end load_store_instr_stream_1
                  sb           s10, -9(s5) #end load_store_instr_stream_2
                  lbu          gp, -16(s4) #end load_store_instr_stream_0
                  slt          t2, a6, a3
                  bge          s10, sp, 3f
                  la           ra, sub_2
                  xor          t4, a3, zero
                  and          a1, s1, a5
                  addi         ra, ra, 950
                  srai         t2, t6, 6
                  slt          s8, s2, s1
                  slli         sp, t0, 13
                  sra          t4, s2, s11
                  sub          a3, s4, s2
                  sub          t6, s11, a6
                  bne          s7, t6, sub_1_j4 #branch to jump instr
                  xor          s2, t3, a0
sub_1_j4:         jalr         t1, ra, -950 #jump sub_1 -> sub_2
                  bgeu         s9, s6, 13f
3:                and          ra, s9, t5
                  bgeu         t2, a1, 6f
                  srai         t2, a2, 15
6:                sub          gp, a1, a7
                  sub          a3, a3, s3
                  sltu         s3, tp, a5
                  sltiu        t6, s2, -938
                  beq          a4, s8, 25f
                  and          sp, a3, s11
                  lui          t0, 640566
13:               sltu         s1, t4, tp
                  or           a5, s10, a2
                  srai         s8, s2, 26
                  add          t3, a2, t3
                  xori         gp, sp, -1355
                  bge          t3, s3, 32f
                  sll          tp, tp, a6
                  addi         ra, a4, -1983
                  bge          s9, s10, 36f
                  add          s3, s8, a5
                  addi         s1, t4, -1185
                  slli         s2, tp, 3
25:               lui          s3, 103442
                  srai         a1, a7, 16
                  and          s6, zero, s9
                  sltu         t4, a1, tp
                  xor          s1, t2, t6
                  add          s6, zero, tp
                  bge          sp, s0, 48f
32:               sltiu        zero, s9, -538
                  slt          a0, s10, s3
                  addi         s5, sp, 224
                  addi         s7, t2, 1727
36:               or           a0, t1, a3
                  and          s11, a4, zero
                  sra          s5, s3, t2
                  addi         t1, t1, 1792
                  xor          s2, a0, a6
                  sltiu        zero, t2, 1640
                  slli         a7, a3, 5
                  slti         s5, sp, 1941
                  and          a7, a6, a5
                  srai         t2, s5, 5
                  bltu         t6, s6, 57f
                  srl          a3, s4, s9
48:               slli         s4, t4, 16
                  lui          s11, 723954
                  xori         s2, t3, 497
                  slli         s1, s2, 0
                  slti         s8, a7, -452
                  bgeu         s10, s2, 65f
                  slt          sp, gp, a7
                  or           t0, s1, a1
                  bge          s6, a5, 63f
57:               sub          s1, t6, s9
                  sltu         a5, s0, a0
                  srai         ra, s10, 15
                  ori          s7, t0, -1408
                  sll          s11, t5, gp
                  srai         a1, t6, 26
63:               sub          t6, t3, a6
                  andi         t1, t6, -1502
65:               bge          a0, s4, 83f
                  xor          t1, s2, a3
                  slti         t4, a7, 1702
                  sltiu        s8, s7, 468
                  blt          a4, s0, 88f
                  ori          t5, a6, 461
                  beq          a5, t4, 90f
                  srai         s7, ra, 26
                  or           t2, sp, a3
                  sll          t5, a0, a2
                  srai         a3, s4, 1
                  bge          s5, a0, 79f
                  srai         a3, a0, 10
                  nop
79:               bltu         a3, t2, 97f
                  lui          s3, 341652
                  sub          s9, s10, a2
                  slli         t1, s2, 31
83:               slli         s3, zero, 28
                  bltu         s5, s6, 88f
                  add          s5, a5, a7
                  bge          s10, t2, 98f
                  andi         t5, t2, -1793
88:               add          s1, sp, zero
                  add          a1, a6, s1
90:               ori          zero, s2, 1250
                  blt          s4, t1, 111f
                  ori          a4, t6, 508
                  srl          a4, s11, s8
                  or           sp, zero, t4
                  la           sp, region_1+370 #start riscv_load_store_hazard_instr_stream_2
                  sb           s10, 453(sp)
                  sb           s8, 1627(sp)
                  sb           a0, 1627(sp)
                  lb           ra, 1627(sp)
                  sb           t1, 1627(sp)
                  lw           s7, 1194(sp)
                  sb           t3, -229(sp)
                  lhu          s7, 684(sp)
                  addi         s9, s9, -1861
                  sb           t3, -295(sp)
                  lbu          s4, -295(sp)
                  sb           s4, 201(sp)
                  lbu          t5, -346(sp)
                  sltiu        t5, s9, -463
                  sb           s11, 575(sp)
                  sb           a3, 575(sp)
                  lbu          s11, 229(sp)
                  lbu          a0, 1102(sp)
                  lw           s5, 1102(sp)
                  auipc        a1, 301593
                  sh           s11, 1102(sp)
                  andi         s6, zero, -1606
                  lb           t5, 330(sp) #end riscv_load_store_hazard_instr_stream_2
                  srli         a0, ra, 16
                  or           s2, s3, sp
97:               bltu         s3, t2, 100f
98:               bne          t3, a5, 117f
                  sub          s3, a0, a0
100:              sltiu        a0, gp, 537
                  lui          s4, 810838
                  sub          t1, a6, s1
                  add          sp, s3, t2
                  ori          t5, s3, 1456
                  beq          s8, t1, 106f
106:              slli         s7, a6, 3
                  slli         s8, tp, 10
                  xori         t0, t4, 1171
                  srai         t4, s0, 4
                  lui          t5, 56680
111:              addi         a0, t5, 720
                  lui          a7, 720855
                  slli         s9, a7, 19
                  bgeu         s4, a5, 133f
                  srai         s9, a2, 29
                  andi         t4, a0, 1678
117:              and          s1, t3, a5
                  beq          zero, t2, 132f
                  and          s5, s2, tp
                  slti         s10, ra, 32
                  addi         t2, t3, 429
                  slt          s3, s8, sp
                  srl          t5, a5, sp
                  lui          s7, 812203
                  slt          s7, a3, t2
                  beq          s8, a2, 130f
                  sub          s2, s2, ra
                  ori          gp, t5, -1975
                  srl          tp, s3, t1
130:              xor          t0, tp, a4
                  add          s10, tp, t4
132:              srl          a1, s5, s7
133:              bltu         ra, tp, 134f
134:              nop
                  bgeu         t1, s6, 153f
                  addi         s5, s2, -394
                  sltiu        s8, t2, 1352
                  nop
                  slt          a7, s7, s5
                  slti         t0, t0, 1808
                  add          s6, s11, a4
                  or           t5, s0, a3
                  xor          sp, a4, s7
                  bge          sp, s7, 146f
                  nop
146:              sll          s6, s8, t4
                  slti         s6, tp, 202
                  lui          t4, 401009
                  blt          sp, gp, 163f
                  and          gp, a5, s1
                  bge          t5, t1, 154f
                  bne          s1, s6, 160f
153:              slt          s7, sp, s5
154:              sll          t6, s11, t1
                  add          a5, a7, t4
                  beq          s4, t3, 157f
157:              sll          t2, a6, t5
                  auipc        sp, 199965
                  sra          ra, a1, t3
160:              nop
                  slt          t1, s3, s9
                  sltu         s6, s4, zero
163:              add          s2, a5, s2
                  sra          s6, t4, t0
                  bge          zero, a6, 168f
                  sub          t0, s8, a6
                  srai         a4, gp, 6
168:              xor          a5, t3, a0
                  xor          t0, zero, s0
                  sra          t2, a5, a2
                  ori          s2, a4, -1796
                  and          t3, a1, s5
                  xori         a0, a5, -1924
                  srli         t0, t0, 27
                  slti         a3, t2, 1413
                  bgeu         s6, t5, 190f
                  sub          ra, s11, s2
                  addi         a7, s11, -2038
                  auipc        t2, 457843
                  xori         s6, s10, -535
                  auipc        a7, 403129
                  xori         s9, a0, -1251
                  bltu         s11, t0, 187f
                  nop
                  andi         tp, a3, -1059
                  blt          s6, ra, 205f
187:              srai         t1, t1, 30
                  add          t5, s1, a3
                  bgeu         t0, s6, 206f
190:              auipc        a0, 26682
                  lui          a3, 4746
                  slt          t1, s5, t1
                  bgeu         a5, zero, 201f
                  nop
                  addi         a4, s3, -263
                  bgeu         a0, s9, 198f
                  slti         s4, t0, -1824
198:              bge          s1, a4, 201f
                  bgeu         a5, s5, 211f
                  srli         t3, a2, 12
201:              bne          a7, s6, 212f
                  sltiu        s11, s8, 394
                  xor          zero, t6, a3
                  auipc        s11, 103232
205:              srli         zero, tp, 20
206:              addi         s5, zero, 961
                  and          t4, s0, t5
                  xor          t4, gp, s3
                  sltiu        s5, t3, -110
                  nop
211:              and          tp, s5, s9
212:              sll          s5, s1, s0
                  bgeu         s2, ra, 214f
214:              addi         s11, a3, 1624
                  addi         s3, s3, -1629
                  add          t3, zero, a1
                  beq          gp, t3, 219f
                  ori          gp, t2, 1569
219:              auipc        a4, 865588
                  blt          s0, s10, 224f
                  ori          t5, t3, 124
                  xori         s10, s3, -1873
                  xori         s10, zero, 1059
224:              srli         a0, tp, 7
                  sll          a5, sp, zero
                  blt          s11, s4, 244f
                  add          t0, s3, s2
                  slt          zero, tp, a3
                  auipc        t1, 421833
                  andi         a4, t6, 1314
                  blt          s8, t1, 246f
                  bge          ra, t1, 239f
                  slt          a7, s5, sp
                  add          s6, zero, s11
                  slli         ra, a4, 0
                  sltiu        s8, s10, 1372
                  xori         a7, t0, -609
                  or           s6, s0, s10
239:              srl          sp, t3, s9
                  ori          t4, t5, 1753
                  xori         s5, t6, -492
                  xori         a7, a6, -1801
                  ori          s9, s8, 117
244:              auipc        zero, 931228
                  and          gp, t6, zero
246:              sub          s1, s5, a3
                  srl          s6, tp, t1
                  sra          t0, s4, s4
                  addi         t0, a5, -636
                  sra          tp, s3, s9
                  sltiu        s1, s10, -1068
                  addi         a1, s4, 1699
                  nop
                  slli         s3, a1, 14
                  sra          a1, t4, a7
                  xor          t3, a1, a7
                  add          t0, a6, gp
                  sltiu        t2, s9, -926
                  bge          a4, s1, 277f
                  bge          tp, t2, 280f
                  srai         t2, a3, 8
                  auipc        t0, 201421
                  nop
                  slt          s8, s6, gp
                  blt          s5, t6, 276f
                  sll          a7, a4, ra
                  auipc        a7, 19101
                  srai         s11, t3, 8
                  ori          sp, tp, 1589
                  blt          s1, gp, 285f
                  and          a3, a5, t3
                  or           a7, s1, s3
                  beq          a1, s11, 276f
                  sltu         s9, a4, gp
                  srli         a4, a1, 4
276:              sub          s10, tp, gp
277:              lui          a0, 399112
                  srl          s7, gp, t1
                  sra          a3, a5, sp
280:              sra          gp, s0, s8
                  sltiu        s10, s0, -661
                  beq          s10, a7, 300f
                  srli         t6, zero, 12
                  slt          s5, a5, t0
285:              ori          t1, s1, -644
                  bltu         s9, t5, 305f
                  srli         s5, t2, 24
                  bge          s6, zero, 307f
                  srl          a3, s3, a0
                  slti         gp, t4, 1406
                  bne          tp, tp, 305f
                  sltu         s9, a5, a2
                  ori          s2, t5, 1629
                  add          a1, a5, a2
                  bne          ra, s6, 297f
                  sub          t2, s10, a2
297:              beq          a7, a5, 309f
                  slli         s6, s4, 1
                  sra          a4, s9, a7
300:              blt          t0, s7, 314f
                  bge          tp, zero, 320f
                  slli         a0, t3, 4
                  add          t3, a0, t3
                  bgeu         s1, t0, 308f
305:              beq          s4, s2, 308f
                  bgeu         s10, a0, 307f
307:              auipc        ra, 206538
308:              andi         s3, s11, -1828
309:              sra          s7, a0, t5
                  blt          t3, t0, 324f
                  srli         t2, s1, 8
                  auipc        t3, 150647
                  addi         a7, a4, 1422
314:              bne          s10, t6, 333f
                  xor          t5, a5, s2
                  slti         s9, t5, 917
                  andi         s9, t5, 554
                  bge          t5, ra, 319f
319:              slli         t1, a6, 24
320:              sll          a5, t1, t6
                  lui          s5, 748577
                  and          t1, s10, a7
                  slti         s8, t6, 833
324:              xor          t3, t1, zero
                  bne          s10, a6, 327f
                  slti         t0, s8, 1164
327:              or           s1, a5, s3
                  ori          s5, t4, 1049
                  sll          s5, a7, t1
                  ori          a3, a2, -75
                  auipc        t5, 750402
                  and          t4, s3, tp
333:              beq          t2, a6, 344f
                  sll          s1, s11, ra
                  addi         t4, a4, -398
                  slti         a3, s8, 150
                  ori          tp, s8, 251
                  blt          a2, s4, 350f
                  bne          t2, t2, 359f
                  slt          s7, s10, s5
                  sub          s4, t6, s9
                  bltu         t0, t6, 361f
                  sub          t0, t2, gp
344:              sltu         a5, sp, t0
                  sra          ra, s1, s3
                  add          t0, t4, t3
                  bne          s11, s5, 350f
                  sub          s11, a5, s6
                  slli         t6, tp, 13
350:              bltu         s1, sp, 365f
                  andi         a4, a1, -1533
                  xori         s3, a2, -9
                  ori          gp, a6, 1921
                  sltiu        s1, t4, -411
                  sll          s8, s1, a7
                  and          t2, t2, s6
                  andi         sp, a4, -256
                  bge          a5, s9, 376f
359:              slti         t5, s4, 1823
                  auipc        gp, 421206
361:              sltu         gp, s8, s9
                  srli         a0, a7, 24
                  srl          zero, s10, t6
                  sltu         a5, s3, s9
365:              sltiu        s9, a4, -871
                  add          zero, a0, gp
                  auipc        t5, 414943
                  andi         t2, t1, -1600
                  sltu         s2, gp, a6
                  xor          tp, t5, a2
                  sltu         s4, a7, s1
                  srli         s5, s9, 12
                  beq          a7, t5, 376f
                  srli         tp, gp, 17
                  or           t1, s4, s3
376:              sll          t6, a1, s11
                  srli         a3, s2, 15
                  slti         a7, gp, -841
                  slli         s9, a0, 26
                  sra          s6, s6, s8
                  sra          s10, a0, a5
                  slt          t4, s4, tp
                  or           tp, s8, t4
                  lw           t1, 4(s0)
                  addi         s0, s0, 24
                  slli         s7, s11, 26
                  xori         t2, t5, 1871
695:              addi x22, x6, 0
695:              jalr x22, x22, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x16, x8, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x15, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x15, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x15, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x15, x21, ecall_handler
                  li x21, 0x1
                  beq x15, x21, instr_fault_handler
                  li x21, 0x5
                  beq x15, x21, load_fault_handler
                  li x21, 0x7
                  beq x15, x21, store_fault_handler
                  li x21, 0xc
                  beq x15, x21, pt_fault_handler
                  li x21, 0xd
                  beq x15, x21, pt_fault_handler
                  li x21, 0xf
                  beq x15, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x8, x16, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
