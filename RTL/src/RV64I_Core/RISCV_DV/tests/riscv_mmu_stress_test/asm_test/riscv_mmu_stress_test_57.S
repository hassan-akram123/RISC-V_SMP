.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xc5647913
                  li x2, 0xb
                  li x3, 0xfecec625
                  li x4, 0x285fee61
                  li x5, 0x7c11717
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xf5736886
                  li x9, 0xf6714209
                  li x11, 0x0
                  li x12, 0xc849505b
                  li x13, 0x0
                  li x14, 0xe26e69b7
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x72839769
                  li x18, 0xf0ffd740
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf8a4c254
                  li x24, 0x0
                  li x25, 0x0
                  li x27, 0x0
                  li x28, 0x8
                  li x29, 0xfb6ca9c5
                  li x30, 0x0
                  li x31, 0x80000000
                  la x10, user_stack_end
main:             la           t0, region_1+1500 #start riscv_load_store_hazard_instr_stream_3
                  lhu          sp, -30(t0)
                  lb           s8, -95(t0)
                  sb           s5, 141(t0)
                  lbu          s5, 139(t0)
                  lb           s1, 135(t0)
                  lb           s8, 135(t0)
                  lb           s9, 135(t0)
                  sw           t0, 252(t0)
                  lhu          t2, -198(t0)
                  lbu          ra, -74(t0)
                  lui          s2, 543685
                  lh           s0, -74(t0)
                  lb           t6, 163(t0)
                  lhu          s1, 0(t0)
                  lb           s5, -126(t0)
                  lbu          t6, 205(t0)
                  or           s4, a0, s6
                  sb           zero, -160(t0)
                  ori          sp, s3, 2005
                  lbu          gp, -186(t0)
                  sh           a5, -186(t0) #end riscv_load_store_hazard_instr_stream_3
                  la           tp, region_0+321 #start load_store_instr_stream_1
                  sw           a2, 39(tp)
                  la           s1, region_0+32 #start load_store_instr_stream_0
                  lhu          s4, 17(tp)
                  sb           t3, -11(s1)
                  lb           t4, -14(tp)
                  sb           a3, 52(s1)
                  lh           t5, -22(s1)
                  lb           a1, -19(s1)
                  lb           a1, -56(tp)
                  sb           t3, 52(tp)
                  lw           s5, 20(s1)
                  lw           s11, 8(s1)
                  lbu          t1, -6(tp) #end load_store_instr_stream_1
                  sb           t1, -15(s1) #end load_store_instr_stream_0
                  la           sp, region_0+22 #start riscv_load_store_hazard_instr_stream_0
                  lh           t4, 0(sp)
                  lhu          s2, 8(sp)
                  sb           s7, 8(sp)
                  lb           s3, 8(sp)
                  slti         t4, s8, 1883
                  and          zero, s8, s9
                  srli         a2, a5, 6
                  xori         t4, s2, -988
                  lb           a1, -5(sp)
                  add          s3, a0, s7
                  sb           a3, -1(sp)
                  srai         a6, zero, 7
                  sh           a1, 12(sp)
                  add          s4, t3, t1
                  lb           t2, -4(sp)
                  lb           a5, -15(sp)
                  sb           t6, 15(sp)
                  sh           s7, -12(sp)
                  sb           a3, -9(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t2, region_0+1022 #start load_store_instr_stream_3
                  sb           s7, -11(t2)
                  la           sp, region_0+918 #start load_store_instr_stream_1
                  sb           s2, 9(t2)
                  la           s1, region_0+1156 #start load_store_instr_stream_0
                  lbu          a7, -37(s1)
                  lbu          s3, -109(sp)
                  la           a4, region_0+816 #start load_store_instr_stream_2
                  lb           a7, 53(s1)
                  lh           s2, 14(s1)
                  lb           s3, 13(t2)
                  lb           t0, 5(t2)
                  lb           s2, -25(s1)
                  lbu          t0, 565(a4)
                  lbu          t5, -15(sp)
                  lb           a5, 912(a4)
                  lw           s9, -96(a4)
                  lbu          a1, -13(s1)
                  sb           a7, -57(s1)
                  lbu          s2, -3(t2)
                  sb           a0, 105(sp)
                  lhu          t0, 22(s1)
                  lb           a1, 240(a4)
                  lhu          a2, -20(a4)
                  lbu          s2, 338(a4)
                  lbu          t0, -3(t2)
                  sb           s2, 825(a4)
                  lbu          s7, -1(t2)
                  sb           a5, -43(s1)
                  lb           s4, 15(t2)
                  lh           a1, -80(sp)
                  lbu          s5, -567(a4)
                  lbu          tp, 155(sp)
                  sb           t6, -4(sp) #end load_store_instr_stream_1
                  lb           s11, -13(t2)
                  lbu          zero, 4(s1)
                  lbu          s4, 1(t2) #end load_store_instr_stream_3
                  sb           s6, 157(a4) #end load_store_instr_stream_2
                  sh           a5, 2(s1) #end load_store_instr_stream_0
                  la           t3, region_1+694 #start riscv_load_store_rand_instr_stream_5
                  or           s7, s7, a3
                  sw           s8, -238(t3)
                  sb           a7, -130(t3)
                  sra          t5, s9, a5
                  xor          s11, t4, t4
                  slt          s0, s4, s7
                  srl          s7, s11, a5
                  addi         t1, s7, 1991
                  lbu          tp, 113(t3)
                  and          t0, a0, t3
                  andi         a7, a2, 1627
                  sll          ra, t4, a5
                  sb           s6, -231(t3)
                  lbu          s2, -20(t3)
                  sb           a6, -195(t3)
                  sw           a1, -90(t3)
                  srl          t4, t0, s4
                  sb           t4, 118(t3)
                  slt          sp, s0, a7
                  sh           a1, 170(t3)
                  lhu          s2, 220(t3)
                  addi         t2, a0, 1486
                  sb           a1, 22(t3)
                  andi         sp, ra, -591
                  addi         a7, s10, -357
                  sra          t0, zero, zero
                  lb           s5, 241(t3)
                  lh           t2, -8(t3)
                  lbu          tp, -145(t3)
                  sb           a2, 71(t3)
                  lhu          t2, -108(t3)
                  andi         s2, s4, 179
                  sub          t4, s8, t0
                  lbu          a6, 44(t3)
                  andi         t5, s2, -527
                  lbu          t5, -251(t3)
                  sb           a2, 5(t3)
                  lbu          s7, -256(t3)
                  sra          tp, s8, gp
                  slti         s5, tp, 187
                  addi         ra, a3, -1372
                  lb           zero, -135(t3)
                  add          gp, a4, a3
                  lbu          s1, 95(t3)
                  sh           s1, 240(t3) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1865 #start riscv_load_store_rand_instr_stream_3
                  sb           ra, -1316(sp)
                  nop
                  lui          t4, 999470
                  andi         s8, a3, 1197
                  sw           sp, -1765(sp)
                  and          t6, t5, a1
                  add          s11, t1, s8
                  sb           a1, -246(sp)
                  lbu          t4, -260(sp)
                  lh           s2, -441(sp)
                  nop
                  ori          s3, t1, 633
                  lbu          s8, -165(sp)
                  sub          t2, s7, s6
                  lui          a7, 70915
                  sra          s7, s6, s8
                  lh           t0, -1715(sp)
                  add          s7, tp, a2
                  sb           s2, -1472(sp)
                  lbu          t4, -1258(sp)
                  lbu          ra, -1786(sp)
                  or           a7, gp, s0
                  lb           gp, -1271(sp)
                  lui          s4, 96331
                  andi         t0, s9, 1659
                  andi         s2, s10, -487
                  lbu          s1, -932(sp)
                  sltiu        ra, a0, 772
                  slt          s7, a0, tp
                  sb           a5, -1850(sp)
                  nop
                  sh           s2, -55(sp)
                  lb           t3, -1328(sp)
                  lhu          s6, 33(sp)
                  lbu          ra, -328(sp)
                  sltu         t0, a2, t0
                  sltu         a1, a4, tp
                  xor          s8, zero, sp
                  sb           zero, -431(sp)
                  slli         s1, a3, 7
                  add          s6, t2, s9
                  sll          s4, sp, s1
                  sltu         zero, s10, s2
                  sh           s8, -405(sp)
                  lb           t6, -572(sp)
                  sw           a7, -397(sp)
                  srli         tp, gp, 30
                  xor          a6, t1, t5
                  lui          t4, 329583
                  sb           s0, -47(sp)
                  lw           s0, 7(sp)
                  andi         a2, s7, 1343
                  lbu          a2, -703(sp) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_1+1347 #start load_store_instr_stream_0
                  sb           s10, -25(tp)
                  la           ra, region_1+1141 #start load_store_instr_stream_1
                  la           a2, region_1+1969 #start load_store_instr_stream_2
                  lb           t0, 51(tp)
                  lb           s7, 10(a2)
                  sb           t6, -187(tp)
                  lbu          s0, -16(a2)
                  lbu          s11, 159(tp)
                  lb           s3, 166(tp)
                  lhu          a5, -21(ra)
                  lhu          a1, 3(a2)
                  sb           a6, 146(tp)
                  lbu          sp, 34(ra)
                  lbu          sp, 29(ra)
                  lbu          t3, -194(tp)
                  lbu          s1, 4(a2)
                  lb           s11, 8(ra)
                  sh           sp, -225(tp)
                  sb           a4, -4(a2)
                  sb           a7, 36(ra) #end load_store_instr_stream_1
                  sh           a2, -13(a2) #end load_store_instr_stream_2
                  lb           t1, 28(tp) #end load_store_instr_stream_0
                  la           s8, region_1+1893 #start riscv_load_store_rand_instr_stream_4
                  addi         a7, a1, 722
                  sb           s11, 12(s8)
                  or           ra, s1, tp
                  lbu          a2, -16(s8)
                  lb           t3, -1(s8)
                  sh           t0, -7(s8)
                  lbu          s1, 4(s8)
                  lbu          s2, 2(s8)
                  sb           s7, -3(s8)
                  lb           a5, -16(s8)
                  lbu          a5, -15(s8)
                  sltiu        ra, zero, 939
                  xor          s2, s2, s4
                  and          a7, gp, zero
                  sw           t5, -5(s8)
                  sll          t3, s3, t5
                  slli         s7, s0, 16
                  lb           ra, -1(s8)
                  lbu          zero, 6(s8)
                  sltiu        a4, s1, 867
                  auipc        s5, 955489
                  addi         a2, a0, -569
                  srai         s0, t2, 21
                  ori          a1, t1, -1185
                  lw           a2, -5(s8)
                  lb           s0, 12(s8)
                  srl          a2, s6, a1
                  lb           a4, 16(s8)
                  andi         s7, s6, 479
                  and          t3, s1, sp
                  andi         s7, a0, 1315
                  lbu          a6, 11(s8)
                  slti         s7, t2, 909
                  lb           t5, -7(s8)
                  sb           s9, 1(s8)
                  nop
                  sltiu        s5, t3, -1920
                  xor          s5, ra, a2
                  sb           t3, -15(s8)
                  slti         zero, zero, -1555
                  lh           a7, 7(s8)
                  lui          a5, 598058
                  ori          s0, s3, 36
                  lb           a2, -16(s8) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1892 #start riscv_load_store_hazard_instr_stream_4
                  slli         a6, t0, 24
                  lbu          a6, -544(sp)
                  andi         s1, s10, 1219
                  lbu          t5, -544(sp)
                  addi         t3, a2, -1947
                  lb           s4, -544(sp)
                  lbu          t4, -544(sp)
                  sb           t4, -544(sp)
                  lb           s8, -544(sp)
                  lh           t6, -544(sp)
                  lbu          s0, -544(sp)
                  lbu          s6, -544(sp)
                  sll          a5, a3, a4
                  lhu          t4, -544(sp)
                  xori         s11, tp, -1224
                  lhu          ra, -544(sp)
                  lhu          t3, -544(sp)
                  slti         a4, s9, 1742
                  sw           t1, -544(sp)
                  lbu          s3, -544(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           t4, region_0+1915 #start load_store_instr_stream_1
                  la           s2, region_0+782 #start load_store_instr_stream_0
                  lhu          t0, -163(t4)
                  sb           s6, -207(t4)
                  lb           s3, 23(t4)
                  lhu          s8, -20(s2)
                  lb           s5, -20(t4)
                  lb           zero, 63(s2)
                  sb           gp, 4(s2)
                  sw           a3, -47(t4)
                  lbu          a6, -27(s2)
                  lbu          tp, 33(s2)
                  sh           a4, 54(s2)
                  lh           a7, -163(t4) #end load_store_instr_stream_1
                  lbu          t1, -44(s2)
                  sb           t5, -25(s2) #end load_store_instr_stream_0
                  la           t5, region_0+1931 #start riscv_load_store_rand_instr_stream_0
                  srl          s11, t4, a2
                  nop
                  lbu          t4, -113(t5)
                  andi         t6, ra, 794
                  sh           t0, -55(t5)
                  srli         a5, t0, 10
                  sw           a0, -119(t5)
                  lbu          s1, -89(t5)
                  and          s8, s5, s2
                  sub          t1, sp, a3
                  xori         s6, s3, -1144
                  xori         a2, t2, -340
                  slt          s0, s6, zero
                  lb           s7, -79(t5)
                  sltiu        t3, t1, -493
                  add          s0, t6, s9
                  sb           t6, 67(t5)
                  sltiu        ra, t5, -1829
                  lb           s11, -114(t5)
                  sltiu        s2, zero, -1971
                  slli         t1, s5, 11
                  sra          t3, t2, a1
                  sll          s6, t5, a5
                  lui          a1, 965370
                  lb           a4, -254(t5)
                  xor          s2, a0, s2
                  and          s4, t4, a4
                  sll          ra, a3, s0
                  srai         s9, s4, 13
                  srli         s3, a4, 3
                  lb           tp, -40(t5)
                  srli         s4, t6, 26
                  xori         a7, s8, 1235
                  lbu          a1, -248(t5)
                  lb           a2, -200(t5)
                  sb           a6, -152(t5)
                  lb           tp, -128(t5)
                  ori          a4, t4, 1109
                  slt          t1, s11, ra
                  lbu          a1, -78(t5)
                  nop
                  xori         s3, a2, 681
                  sb           s10, 36(t5) #end riscv_load_store_rand_instr_stream_0
                  la           s1, region_0+685 #start riscv_load_store_rand_instr_stream_1
                  sh           s7, 221(s1)
                  auipc        t0, 466191
                  slli         t3, s8, 25
                  sb           a6, -148(s1)
                  lb           a1, -160(s1)
                  lbu          t5, -18(s1)
                  lh           a4, 229(s1)
                  lh           a2, 191(s1)
                  lb           tp, -120(s1)
                  sb           gp, -79(s1)
                  lb           a6, 28(s1)
                  lb           t0, -192(s1)
                  or           s8, t6, a5
                  srli         t4, t5, 8
                  slti         s8, s3, -2039
                  slti         tp, t6, 1128
                  sb           s1, -135(s1)
                  slti         t1, sp, -1155
                  and          gp, s9, a7
                  sb           t6, -251(s1)
                  sra          t4, s3, ra
                  sb           a7, 72(s1)
                  srai         t0, t5, 23
                  sb           t4, 212(s1)
                  lw           a4, 19(s1)
                  sb           s8, -250(s1)
                  lb           s6, -122(s1)
                  srli         t2, a6, 9
                  lbu          s7, -250(s1)
                  sltu         t5, t5, s10
                  lb           s2, 47(s1)
                  xor          t3, a3, s8
                  lbu          tp, 94(s1)
                  sb           tp, 8(s1)
                  srli         s3, t1, 6
                  sb           t0, 158(s1)
                  xor          s8, zero, a7
                  xor          t2, t0, s8
                  sb           a7, 196(s1)
                  srai         t1, ra, 15
                  sll          a5, t5, s0
                  lb           t3, 239(s1)
                  lbu          t0, -38(s1)
                  lb           zero, 149(s1)
                  ori          ra, s1, 1339
                  sub          s2, ra, a4
                  lbu          zero, 218(s1)
                  sltu         s7, s10, t0
                  lhu          a2, 149(s1)
                  sll          a6, s8, s0
                  lh           s0, 207(s1)
                  slt          tp, s6, t5
                  sb           a7, -160(s1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+741 #start riscv_load_store_hazard_instr_stream_5
                  lbu          t0, 25(sp)
                  sltu         s7, zero, tp
                  lbu          ra, 2(sp)
                  sb           a6, 2(sp)
                  sb           t2, 2(sp)
                  lbu          t2, 2(sp)
                  sw           t0, 23(sp)
                  srl          tp, a4, a0
                  lb           a1, -25(sp)
                  lw           s3, -5(sp)
                  lhu          t1, -5(sp)
                  lh           s3, -5(sp)
                  sra          s0, s1, s4
                  slti         a6, a4, -453
                  sll          a1, t1, s9
                  sh           a0, -5(sp)
                  lbu          s3, -32(sp)
                  lb           tp, -32(sp)
                  lbu          t1, -32(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           s9, region_0+108 #start riscv_load_store_hazard_instr_stream_2
                  lb           t1, 1486(s9)
                  sb           a2, 1486(s9)
                  slt          s0, t4, a7
                  lh           a6, 1486(s9)
                  lh           t4, 1486(s9)
                  slli         s0, s0, 8
                  lhu          s3, 1486(s9)
                  sub          t0, a0, a0
                  lhu          a4, 1486(s9)
                  lbu          a4, 1486(s9)
                  sh           a3, 1486(s9)
                  lbu          zero, 1486(s9)
                  lhu          a6, 1486(s9)
                  lb           a6, 1486(s9)
                  lh           tp, 1486(s9)
                  lbu          s8, 1486(s9)
                  sb           a3, 1486(s9)
                  lb           s7, 1486(s9)
                  lhu          s3, 1486(s9)
                  sh           t5, 1486(s9)
                  sh           ra, 1486(s9)
                  lbu          s5, 212(s9) #end riscv_load_store_hazard_instr_stream_2
                  la           a2, region_1+850 #start load_store_instr_stream_3
                  la           s11, region_1+246 #start load_store_instr_stream_2
                  la           s0, region_1+559 #start load_store_instr_stream_1
                  la           s4, region_1+191 #start load_store_instr_stream_4
                  lhu          t1, -60(a2)
                  la           t5, region_1+1581 #start load_store_instr_stream_0
                  sh           a0, -24(a2)
                  lhu          a6, 568(s11)
                  sh           t1, 40(a2)
                  lw           t4, -41(t5)
                  lb           a5, 1423(s11)
                  lb           a6, 20(s4)
                  lbu          a4, 353(s0)
                  lb           s8, 1733(s11)
                  lh           a6, 1402(s11)
                  sb           s11, -46(t5)
                  lb           a7, 33(s4)
                  lhu          t6, -49(t5)
                  lbu          t0, 409(s11)
                  lbu          sp, -26(s4)
                  lhu          gp, 6(a2)
                  lb           a4, -42(t5)
                  lb           t6, -8(s4)
                  lh           a5, -37(t5)
                  lh           s6, 499(s0)
                  lb           sp, -18(s4)
                  lbu          a5, 1173(s0)
                  lb           s7, 903(s11) #end load_store_instr_stream_2
                  sb           s1, -64(a2) #end load_store_instr_stream_3
                  sb           a1, 50(s4)
                  lbu          s6, 26(t5)
                  lhu          a4, 49(t5)
                  lhu          s9, -35(t5)
                  lw           t0, -51(s4) #end load_store_instr_stream_4
                  lbu          a6, -254(s0)
                  sb           s8, 805(s0) #end load_store_instr_stream_1
                  lb           t3, -58(t5) #end load_store_instr_stream_0
                  la           s6, region_0+607 #start load_store_instr_stream_1
                  la           s3, region_0+1414 #start load_store_instr_stream_0
                  lb           t6, 114(s6)
                  lh           a6, -1046(s3)
                  lw           s11, -3(s6)
                  lbu          s4, -895(s3)
                  sb           t3, 89(s6)
                  lb           ra, -157(s6)
                  lbu          t5, -358(s3)
                  lb           s7, -459(s3)
                  lbu          s1, 162(s6)
                  sb           a3, -1282(s3)
                  lb           s2, -166(s6)
                  lb           t4, 220(s6) #end load_store_instr_stream_1
                  lb           s1, 221(s3)
                  sb           a7, -279(s3)
                  lbu          gp, -1089(s3)
                  lb           s0, -283(s3)
                  lb           sp, -1137(s3) #end load_store_instr_stream_0
                  la           gp, region_0+840 #start riscv_load_store_hazard_instr_stream_1
                  lbu          t6, -17(gp)
                  sb           s5, -17(gp)
                  slt          s6, ra, a5
                  lb           t4, -17(gp)
                  sw           sp, 60(gp)
                  sw           t2, 60(gp)
                  lbu          t1, 60(gp)
                  sb           t2, 60(gp)
                  sub          t1, a3, a5
                  sh           a1, 60(gp)
                  srl          tp, s8, t0
                  lh           zero, 60(gp)
                  sb           s0, -41(gp)
                  lbu          s5, -41(gp)
                  andi         t3, a0, 264
                  lb           t3, -41(gp)
                  sltu         t5, s9, s5
                  sub          tp, s2, a2
                  lbu          a4, -41(gp) #end riscv_load_store_hazard_instr_stream_1
                  bne          s9, s1, 14f
                  sltu         s2, s10, t1
                  blt          zero, a5, 6f
                  beq          s5, a2, 12f
                  xor          s11, ra, t4
                  srl          ra, a7, s3
6:                srai         t4, s3, 29
                  slt          sp, s4, s2
                  ori          a2, s8, -1260
                  srai         a5, sp, 13
                  add          ra, a5, a0
                  and          t3, t6, t6
12:               ori          a6, a2, -82
                  srl          sp, s8, t5
14:               and          t4, sp, s5
                  srl          a5, t0, a5
                  addi         s4, s10, -901
                  slti         a1, a2, 365
                  slli         ra, s1, 26
                  addi         a5, s10, 1184
                  or           t2, s4, t0
                  sll          a2, t3, t0
                  srli         t5, a7, 19
                  slt          t3, t5, sp
                  slli         t3, t1, 22
                  slli         s1, a4, 10
                  sra          s5, t3, a4
                  bltu         s5, a5, 47f
                  xori         s11, gp, 962
                  slli         s1, a2, 10
                  sub          s4, s5, a2
                  and          t2, s0, t5
                  add          a1, a1, a5
                  sltiu        s11, t4, 1276
                  srai         t1, sp, 12
                  bne          s8, a4, 44f
                  or           t1, a4, s5
                  srl          s4, a6, s2
                  srl          a7, gp, s9
                  bge          s1, t2, 44f
                  nop
                  bne          a2, t2, 57f
                  slli         s7, t0, 9
                  and          gp, sp, t0
44:               andi         s7, a4, 523
                  lui          t0, 973416
                  sub          sp, s8, t4
47:               beq          s5, s0, 54f
                  slli         tp, s0, 6
                  lui          a2, 907657
                  xor          gp, s4, t0
                  and          s11, s0, ra
                  slli         t1, a4, 9
                  sll          t0, tp, a1
54:               srli         s1, s0, 28
                  sltu         s5, a6, s1
                  blt          s10, t4, 67f
57:               andi         a4, s10, -452
                  bltu         ra, a2, 71f
                  xori         t4, a1, -1450
                  la           a1, sub_1
                  sra          s8, zero, s6
                  sub          a4, s8, a5
                  addi         a1, a1, 851
                  sltiu        a7, t5, 1314
                  slli         a6, t1, 11
                  xor          s4, a5, s7
                  slli         s4, s2, 2
                  sub          s2, s6, s11
                  sltiu        s6, s0, 1531
                  and          t0, s8, a5
                  sltiu        s11, a5, 465
main_j2:          jalr         s6, a1, -850 #jump main -> sub_1
                  sltiu        s8, s1, 1219
                  auipc        s11, 911778
                  add          ra, t6, a5
                  andi         t3, gp, -1486
                  sub          s11, t5, s0
                  sll          s0, a4, t6
                  bge          gp, a1, 77f
67:               slti         a4, t1, -740
                  srli         t0, tp, 17
                  srl          t0, tp, s11
                  xor          s2, s5, a5
71:               add          a1, sp, s10
                  bne          s10, s11, 76f
                  lui          ra, 492151
                  slli         s1, s7, 31
                  srai         s2, tp, 21
76:               slt          s1, a1, s6
77:               slli         a2, s8, 17
                  slti         a5, a5, -116
                  srli         a4, s9, 15
                  slti         t5, t5, 1298
                  addi         s9, t4, -674
                  add          a1, tp, gp
                  sra          ra, t2, ra
                  sub          s4, s5, a5
                  xor          sp, ra, s3
                  sltiu        sp, s1, -1930
                  slti         t4, zero, 80
                  sltu         ra, a2, s9
                  sll          s1, zero, zero
                  slli         a6, t5, 31
                  bltu         s9, s7, 93f
                  blt          s2, tp, 94f
93:               beq          t1, s10, 105f
94:               bne          t0, t5, 109f
                  ori          s5, a3, 1650
                  slli         gp, t2, 6
                  bne          a5, t6, 98f
98:               srai         s5, gp, 25
                  bltu         s5, s2, 111f
                  xori         t4, a2, 1336
                  srl          s5, a1, a1
                  beq          t1, zero, 113f
                  slt          sp, s6, t4
                  slti         t6, a3, 1808
105:              slti         t0, s10, 1538
                  bltu         s6, t5, 114f
                  or           ra, s11, tp
                  and          s2, zero, s4
109:              slti         s8, t6, -1237
                  addi         a4, a3, 268
111:              slli         ra, s4, 20
                  andi         s5, gp, 167
113:              andi         s6, s8, 1233
114:              andi         s2, a2, -61
                  auipc        s1, 244311
                  slti         t0, a2, -1414
                  add          s11, a5, s4
                  andi         s0, t2, -1775
                  or           s1, s5, a7
                  sll          a7, t1, t0
                  and          s4, s4, s10
                  addi         s5, s0, 804
                  sra          t6, a1, a6
                  beq          s8, s4, 128f
                  sll          s0, s9, a6
                  andi         t1, s8, 355
                  slti         t5, zero, 1515
128:              or           s5, s6, t4
                  sub          zero, s11, t1
                  bne          s3, s1, 145f
                  bge          a5, s11, 142f
                  nop
                  sub          t0, t5, zero
                  beq          s6, ra, 138f
                  lui          s5, 261166
                  bltu         a7, a7, 138f
                  sub          s0, t1, a4
138:              srai         s3, s4, 19
                  bltu         a3, t0, 154f
                  or           zero, t0, a2
                  bne          s10, t3, 145f
142:              srli         s0, gp, 11
                  sltu         t4, t5, a1
                  bne          gp, s10, 145f
145:              sltiu        a7, a2, 1054
                  sll          s2, s4, t6
                  xori         t5, s4, -1729
                  slti         a6, t1, 867
                  srai         t1, t2, 14
                  auipc        ra, 240365
                  xori         a6, t3, -888
                  or           t4, s5, a1
                  auipc        s3, 136944
154:              sub          t5, t4, s9
                  sra          s0, s3, a0
                  slli         s8, a6, 1
                  sub          s9, s11, a4
                  or           a4, a1, s7
                  sltiu        t1, t3, 508
                  sll          a6, t1, sp
                  srl          a4, s7, a3
                  ori          s5, a4, 1127
                  bge          s3, t2, 172f
                  addi         a4, a0, 804
                  or           s8, s1, s9
                  sll          s4, t1, a6
                  sltiu        t2, t4, 1119
                  sll          t6, t3, s10
                  slti         t0, s0, -609
                  auipc        a1, 601185
                  andi         a4, gp, 1584
172:              sub          a4, s4, s6
                  slti         tp, ra, 1736
                  blt          a1, t3, 182f
                  or           s3, s7, s11
                  slt          s3, t1, a2
                  bge          sp, a1, 193f
                  and          s1, zero, zero
                  addi         s7, s0, -1347
                  bltu         s3, a1, 184f
                  srai         t1, s4, 11
182:              lui          t4, 931990
                  or           s2, s6, s1
184:              andi         s11, s2, -1402
                  sltiu        a5, t5, 163
                  bne          a5, zero, 187f
187:              and          t2, s5, a7
                  and          s4, gp, s10
                  sra          s1, zero, s1
                  ori          s0, t6, 549
                  blt          tp, ra, 206f
                  srai         t3, s11, 25
193:              nop
                  lui          t6, 801688
                  or           t0, tp, s0
                  lui          a1, 140584
                  or           s5, t4, s6
                  slti         s7, a5, -318
                  sub          s7, t5, a1
                  slt          a5, t5, a5
                  beq          t1, s8, 203f
                  andi         s8, s5, -1270
203:              beq          a1, t2, 207f
                  blt          s5, a3, 208f
                  sll          s4, s0, ra
206:              sltu         s11, sp, tp
207:              sra          s1, t4, s2
208:              slt          t2, t2, a1
                  auipc        a6, 808467
                  add          t0, a3, zero
                  slli         t2, t2, 15
                  nop
                  nop
                  sra          s2, s2, a0
                  bge          s2, zero, 235f
                  sltu         a6, sp, a5
                  bge          sp, t5, 225f
                  auipc        t1, 132227
                  and          s6, gp, s6
                  auipc        a4, 267700
                  sltiu        a4, s3, 371
                  ori          a5, t2, -2037
                  srli         s5, s11, 12
                  srl          a6, sp, s9
225:              srai         s11, a3, 14
                  slt          s3, t3, t2
                  andi         s0, sp, 961
                  srli         s9, s2, 12
                  sll          t0, t6, a5
                  slt          t0, ra, s5
                  xor          a6, s0, a2
                  sltu         s6, a2, s3
                  xori         s6, t3, -1557
                  or           s0, t0, a1
235:              sub          t1, a3, t1
                  sltiu        s8, gp, 1796
                  srli         t3, s3, 20
                  srl          t1, t6, a2
                  lui          a5, 676273
                  sll          zero, ra, t2
                  auipc        ra, 979586
                  andi         t6, s3, 1581
                  addi         t0, a7, 539
                  xor          a6, gp, a6
                  sll          s1, a1, s10
                  sll          s3, s0, sp
                  bge          s7, a7, 262f
                  sltu         a5, s4, a2
                  blt          s10, s9, 258f
                  sll          a4, t2, a1
                  addi         a6, a4, -306
                  and          sp, a2, t1
                  bltu         zero, a0, 267f
                  sltiu        t4, t1, 854
                  nop
                  bne          a1, t1, 268f
                  add          s11, tp, s5
258:              lui          t5, 550785
                  bge          a3, s4, 270f
                  sltiu        t3, s4, -788
                  sra          s6, t1, t3
262:              or           t5, s5, sp
                  nop
                  auipc        a6, 974178
                  srl          zero, t1, s4
                  slti         ra, a4, 405
267:              andi         zero, t4, 710
268:              add          s1, s4, t6
                  slli         t2, s8, 13
270:              sltiu        t6, s0, 366
                  addi         s11, a4, 336
                  or           s6, s2, a0
                  add          gp, a0, s8
                  slt          sp, s3, a5
                  nop
                  sub          zero, t0, zero
                  sltu         a7, s10, tp
                  bltu         s8, ra, 289f
                  lui          s11, 325230
                  auipc        t4, 597558
                  auipc        a6, 401285
                  andi         a6, a5, -1226
                  slti         s3, s3, -1545
                  bge          t4, a1, 299f
                  srl          ra, t2, s2
                  bgeu         a7, a1, 294f
                  addi         s7, s7, -1105
                  slti         t2, t6, -170
289:              and          s9, s10, s9
                  auipc        t0, 37181
                  and          tp, s8, s2
                  auipc        a5, 338089
                  and          s7, a4, a0
294:              sltiu        a6, a6, 1417
                  sra          t6, ra, s3
                  lui          a1, 596745
                  srai         a1, tp, 22
                  slti         s11, tp, -1393
299:              bltu         t5, s11, 301f
                  sra          s4, s3, a1
301:              blt          sp, a0, 310f
                  bltu         t6, s3, 315f
                  slt          t0, gp, a4
                  xor          a7, s0, s5
                  bgeu         s6, sp, 312f
                  slli         tp, t5, 1
                  sll          gp, a0, s6
                  bne          s4, s1, 312f
                  blt          a6, s8, 310f
310:              bne          s5, a4, 319f
                  and          s11, a5, s3
312:              and          s11, s6, tp
                  xor          s9, s10, s6
                  andi         t1, s10, 1662
315:              beq          t2, t3, 317f
                  sub          s9, a4, s7
317:              slli         s1, t6, 1
                  slt          a4, gp, t1
319:              sltiu        s5, a4, -139
                  sra          ra, s6, s7
                  beq          s0, s2, 333f
                  srl          t4, a2, a0
                  bgeu         t4, t6, 327f
                  lui          s8, 131143
                  sra          t0, t2, t5
                  auipc        t0, 254102
327:              sra          a5, s11, s8
                  blt          t5, s10, 333f
                  or           t2, t4, t3
                  bgeu         tp, a2, 341f
                  sra          s1, s8, s0
                  sub          t1, t6, a6
333:              sub          t0, t6, s10
                  bne          a2, a2, 345f
                  beq          t4, s11, 349f
                  sltu         s4, s8, t2
                  srl          s6, s11, t5
                  add          s11, a1, a4
                  bltu         t3, a7, 343f
                  ori          s9, t4, -1971
341:              sra          s9, a6, t0
                  bne          a4, s3, 344f
343:              xori         t2, s7, 1695
344:              sub          t4, t4, a3
345:              lui          a1, 914035
                  bltu         s7, sp, 350f
                  sltiu        s0, s11, -2040
                  sub          a6, s10, zero
349:              and          s2, s0, s0
350:              xori         ra, t4, -1434
                  slt          t1, gp, s2
                  bne          sp, ra, 353f
353:              andi         t4, a5, 1084
                  sltiu        gp, a3, -1906
                  addi         t0, s7, -567
                  lui          tp, 941659
                  sltu         sp, s1, a2
                  auipc        ra, 882779
                  beq          a4, s8, 364f
                  and          ra, s11, a7
                  sra          zero, s7, t5
                  addi         s2, a3, 43
                  bge          s9, s8, 383f
364:              slti         a2, ra, -1193
                  xori         t3, s10, 1295
                  beq          a6, s9, 375f
                  sltu         s0, t1, s10
                  slli         zero, a7, 3
                  srl          s2, t3, s9
                  beq          tp, a1, 377f
                  bge          t1, a4, 373f
                  la           t4, region_0+825 #start riscv_load_store_rand_instr_stream_2
                  slli         s0, t5, 25
                  lw           a4, -1(t4)
                  nop
                  lbu          zero, 11(t4)
                  lb           t6, -12(t4)
                  slt          a4, sp, a5
                  slli         a6, s4, 13
                  lhu          t2, -11(t4)
                  lbu          s8, 2(t4)
                  lbu          t6, -8(t4)
                  srai         a7, s11, 30
                  lb           s11, -16(t4)
                  ori          t2, a4, 1381
                  lbu          tp, -15(t4)
                  lb           s4, -10(t4)
                  lui          s3, 881579
                  nop
                  xor          t5, s9, tp
                  sub          a2, s2, a1
                  sh           a0, 7(t4)
                  srai         t5, s0, 13
                  slli         s1, s7, 11
                  sll          a4, a4, t5
                  addi         t3, t2, -457
                  ori          a1, a7, -1694
                  lw           t2, -5(t4)
                  and          a2, a1, s0
                  srl          a2, t0, a7
                  sltu         a5, t5, s9
                  lbu          t6, -14(t4)
                  lb           s1, -14(t4)
                  lui          a2, 574673
                  nop
                  ori          a5, a7, 804
                  lb           a6, 15(t4)
                  srai         a1, t5, 1
                  lbu          a7, 16(t4) #end riscv_load_store_rand_instr_stream_2
                  srai         t3, s8, 19
373:              auipc        s3, 1002594
                  bltu         a2, s10, 385f
375:              andi         t5, a6, 266
                  sltu         s2, s5, a5
377:              sltu         t2, s7, zero
                  bltu         a5, s6, 387f
                  srli         zero, t2, 20
                  sltiu        a5, t3, 1251
                  bne          ra, sp, 385f
                  sll          sp, a4, a6
383:              slt          a4, s10, a4
                  nop
385:              xori         s2, a7, 1317
                  blt          s10, a7, 398f
387:              slt          a6, s4, t1
                  xor          ra, s5, s2
                  bne          s2, t4, 402f
                  auipc        s5, 637953
                  bne          ra, ra, 393f
                  sub          s1, tp, t4
393:              srli         t6, s2, 1
                  andi         s8, t6, 903
                  sra          tp, t5, t0
                  andi         gp, a5, 1608
                  auipc        t0, 898235
398:              xori         s11, ra, 1673
                  bgeu         a0, ra, 403f
                  addi         t5, s10, 1964
                  sltiu        t6, t0, -192
402:              sltiu        zero, s4, 1004
403:              auipc        t6, 325362
                  sltiu        t5, t3, -1202
                  sll          t2, gp, ra
                  bne          a0, t1, 417f
                  auipc        s2, 757472
                  lui          t0, 267313
                  xori         s2, s0, 372
                  andi         t4, s3, -1390
                  addi         s3, a0, 867
                  slti         a5, t2, -1756
                  xor          s6, s8, a1
                  add          t6, t4, t5
                  slti         a2, s1, 1908
                  sltu         a7, t3, a6
417:              bgeu         a1, s5, 433f
                  xori         a1, a3, 1763
                  slli         s1, s5, 3
                  andi         s9, tp, 1119
                  addi         a1, s6, 522
                  srli         t5, s9, 24
                  add          a6, ra, s5
                  or           s0, s5, t4
                  srl          a7, a1, a4
                  srl          s3, gp, t1
                  and          t2, gp, s1
                  addi         t2, a0, 712
                  srl          a7, a6, s9
                  add          s3, zero, a3
                  addi         s9, ra, 1328
                  slt          t0, t3, t0
433:              beq          s7, s5, 434f
434:              slli         t1, s10, 23
                  andi         s2, tp, -1620
                  sll          s11, a6, a4
                  beq          sp, s9, 445f
                  slt          a2, tp, a5
                  or           t1, t0, t4
                  lui          s0, 911387
                  xor          a4, s7, a6
                  bge          s4, t5, 457f
                  sra          t0, s0, a1
                  srli         t1, gp, 24
445:              srli         gp, s7, 9
                  slt          gp, s2, gp
                  ori          s7, s7, -1769
                  beq          s5, t0, 460f
                  slti         s0, t3, -1160
                  sltiu        a2, s4, -1790
                  bne          t4, t4, 462f
                  bge          t6, zero, 456f
                  xor          ra, s0, a3
                  sltiu        s3, tp, 1925
                  bne          s11, a7, 466f
456:              srl          a4, a1, s0
457:              srai         t0, t6, 0
                  sltu         t5, sp, a7
                  sltu         s6, a7, s0
460:              blt          s11, s7, 475f
                  slti         t2, a3, -1531
462:              sltu         a7, gp, t2
                  bltu         ra, s5, 472f
                  bgeu         zero, s2, 472f
                  andi         s1, a2, -1753
466:              sltu         s1, ra, s3
                  slli         zero, a3, 11
                  srli         s6, s5, 7
                  bne          t6, a6, 484f
                  lui          t5, 922187
                  slt          a2, tp, a0
472:              nop
                  srai         s9, gp, 10
                  blt          t1, t4, 485f
475:              addi         zero, s9, -218
                  bltu         gp, s9, 480f
                  bgeu         s9, a7, 488f
                  or           t2, t1, s4
                  auipc        t0, 693380
480:              bgeu         tp, t5, 481f
481:              bgeu         t2, a3, 482f
482:              slt          a6, t1, sp
                  srl          s7, a0, ra
484:              bgeu         t1, a6, 499f
485:              sltu         a5, a2, t6
                  auipc        s11, 46589
                  xori         a7, a5, 176
488:              andi         s4, sp, 1821
                  ori          a2, s7, -1929
                  sub          t0, a1, a7
                  srl          t2, t5, t0
                  xor          a5, t0, zero
                  andi         t0, t1, -65
                  sub          a2, s4, a7
                  xori         t6, s0, 1027
                  beq          t2, t3, 507f
                  srli         t0, t2, 20
                  xori         t4, sp, 129
499:              srl          t4, s11, s5
                  sltu         s0, s1, s10
                  slli         s11, a6, 9
                  xor          a1, a6, a7
                  andi         s7, s0, -1787
                  srai         a7, s2, 27
                  sub          a5, s4, a0
                  sltu         t4, zero, a7
507:              beq          zero, s2, 515f
                  sub          s7, ra, s8
                  sltu         a5, s1, t4
                  and          s8, s1, s6
                  srli         s7, s4, 29
                  slt          s11, t1, s6
                  slt          t3, s1, a2
                  sra          s4, a5, s1
515:              xori         s9, s3, 1122
                  lui          t1, 875469
                  sltiu        a7, t6, 1186
                  sltiu        s9, s0, 1789
                  srli         a5, s1, 29
                  add          gp, t1, tp
                  andi         s0, t4, -1033
                  sll          t4, s7, s11
                  slti         s1, a2, 1003
                  srl          t5, t4, s11
                  slt          s9, t4, s7
                  srai         s5, a3, 16
                  bltu         t3, a0, 536f
                  slli         a1, t3, 21
                  sltiu        gp, s1, 920
                  sub          zero, t1, s9
                  srl          s9, s11, s0
                  sltu         a2, sp, t3
                  sltu         a1, gp, s11
                  srai         s9, s6, 12
                  slt          s11, ra, s10
536:              srl          t3, t3, a5
                  xor          s2, s10, s9
                  and          t3, a6, t5
                  auipc        a6, 431419
                  slt          s0, s7, s1
                  sltu         s1, s10, s11
                  beq          a0, t5, 551f
                  bltu         s3, t3, 559f
                  srli         a1, tp, 18
                  sra          t3, a0, s11
                  ori          s5, t2, 1138
                  lui          t3, 7165
                  sltu         s4, s6, t0
                  andi         s7, tp, 114
                  nop
551:              add          s8, s7, a2
                  sub          a6, a6, a0
                  beq          s11, s2, 564f
                  beq          a7, gp, 559f
                  addi         ra, s4, 1677
                  slti         sp, t3, -300
                  srai         a1, t0, 4
                  sra          s11, t0, s5
559:              sltu         t0, t1, s8
                  bge          a2, a5, 564f
                  auipc        s2, 754643
                  addi         t2, t6, 1016
                  srai         s0, a1, 27
564:              bge          ra, a2, 584f
                  or           a7, s6, a0
                  slli         a2, zero, 14
                  addi         s4, s4, 801
                  bge          ra, a4, 580f
                  slti         s7, s9, -1224
                  or           t1, s6, a0
                  srl          zero, gp, a5
                  slt          a6, sp, a4
                  slti         t1, s3, 317
                  sll          s8, s8, s3
                  nop
                  bne          s6, sp, 580f
                  auipc        s3, 228857
                  bltu         sp, s0, 580f
                  srl          s3, a7, tp
580:              bltu         t5, s0, 582f
                  xori         a2, t2, 1125
582:              blt          s7, t1, 586f
                  sra          s2, t3, a4
584:              xori         t5, s5, -1315
                  srli         a5, s5, 4
586:              add          a6, s1, t5
                  xor          s4, s8, t6
                  bne          a6, a4, 597f
                  srli         t2, a7, 1
                  sub          ra, a1, s2
                  blt          ra, a7, 604f
                  bltu         gp, zero, 599f
                  beq          s5, s5, 608f
                  bge          a1, s7, 608f
                  blt          s7, t0, 597f
                  slti         s6, gp, 1878
597:              beq          s8, s3, 605f
                  slt          t0, gp, gp
599:              bne          gp, s8, 614f
                  slli         s8, t0, 23
                  bge          s4, s3, 605f
                  and          gp, a2, t4
                  bge          t0, s2, 615f
604:              and          t5, s0, s7
605:              add          s11, s2, s6
                  addi         ra, s2, 1007
                  auipc        t4, 900091
608:              or           gp, zero, a0
                  srl          t5, t5, s4
                  sltu         s7, t6, t2
                  la           t1, sub_1
                  nop
                  nop
                  srai         a7, ra, 31
                  addi         s4, s11, 24
                  addi         t1, t1, 427
                  slli         s0, t1, 17
main_j1:          jalr         s6, t1, -426 #jump main -> sub_1
                  sra          ra, a7, s10
                  srl          sp, s3, t3
                  srai         t6, s10, 15
                  sra          s5, zero, t4
614:              and          t6, t2, t1
615:              auipc        s0, 403479
                  sub          t1, t1, a2
                  beq          s5, t4, 631f
                  srl          s8, sp, sp
                  and          s8, a2, s4
                  or           t4, t5, a6
                  bltu         s4, s1, 623f
                  auipc        s0, 435404
623:              sub          s3, zero, s5
                  slt          a4, s6, s9
                  srl          a6, a4, s7
                  slti         s7, s8, 2036
                  xori         t3, s3, -707
                  srl          t0, ra, gp
                  srai         s11, s4, 27
                  bgeu         s7, a1, 631f
631:              sltu         s6, s4, a7
                  add          t2, s7, t2
                  or           a7, a7, s5
                  addi         s11, t5, 1714
                  slti         s11, t4, 838
                  blt          s3, s0, 644f
                  bgeu         a7, zero, 644f
                  sltu         s0, s1, s8
                  andi         ra, s4, -458
                  addi         s8, s6, -1898
                  srl          s1, t6, s4
                  xor          s7, s8, s2
                  srli         t4, ra, 30
644:              andi         a7, t0, 184
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            lui          t5, 371264
                  sra          t0, s0, s7
                  bgeu         t0, s3, sub_2_stack_p
                  add          a5, a6, a5
sub_2_stack_p:    addi         a0, a0, -24
                  sltiu        t6, s10, 1800
                  nop
                  ori          s0, sp, 1931
                  sw           s6, 4(a0)
                  andi         t3, s5, 780
                  bltu         t4, a7, 4f
                  sltu         s7, s4, a6
                  add          a4, s8, a7
                  blt          ra, s0, 5f
4:                bgeu         s7, zero, 8f
5:                bge          a4, s4, 15f
                  ori          s6, s10, 1273
                  sltiu        s6, a6, 742
8:                add          a5, t1, s6
                  sltu         s11, a4, a5
                  beq          s0, s5, 13f
                  bgeu         a0, t0, 29f
                  andi         s5, s0, 297
13:               blt          a7, t6, 17f
                  sltu         t6, t4, a6
15:               slt          s4, s11, a2
                  bge          t5, s8, 28f
17:               blt          a4, a0, 36f
                  sub          t6, s3, t0
                  slt          s4, ra, s10
                  ori          a4, s7, -1229
                  addi         gp, s5, -1411
                  beq          gp, t4, 39f
                  sub          s0, a0, t0
                  lui          t4, 328941
                  ori          ra, t2, -1979
                  sltu         a6, a6, a3
                  andi         s0, gp, 1546
28:               lui          t6, 987350
29:               bge          a4, s8, 38f
                  lui          a7, 587276
                  srl          s4, s1, t3
                  srl          s4, t3, sp
                  sub          t5, gp, a2
                  and          t2, t0, a5
                  andi         s0, s6, -906
36:               sltiu        a2, t6, 492
                  andi         t2, t3, 838
38:               add          tp, a4, zero
39:               sll          s6, gp, s9
                  srl          a6, t4, a4
                  slti         a4, zero, -502
                  lui          t0, 351387
                  slt          a4, s1, s4
                  nop
                  lw           s6, 4(a0)
                  xori         s4, t6, -1796
                  srli         zero, s10, 12
                  srl          s9, t3, a1
                  lui          s3, 710259
                  addi         a0, a0, 24
                  xori         zero, s9, -988
62:               addi x24, x22, 0
62:               jalr x24, x24, 0
sub_1:            slt          s0, s3, a3
                  addi         a0, a0, -44
                  auipc        a7, 113878
                  sw           s6, 4(a0)
                  slt          t5, s9, a4
                  addi         s2, gp, -1684
                  la           t6, sub_2
                  and          gp, s4, t6
                  addi         t6, t6, -755
                  lui          s5, 931692
                  slli         s6, sp, 7
                  slt          s0, gp, s1
                  srl          a7, s7, s4
                  add          s9, s6, s0
                  nop
                  sub          s9, s11, a2
                  sltu         zero, a1, a4
sub_1_j3:         jalr         s6, t6, 756 #jump sub_1 -> sub_2
                  la           tp, sub_2
                  or           ra, a4, sp
                  slti         s6, t3, 510
                  xor          t3, t6, ra
                  addi         tp, tp, -1017
                  addi         sp, s3, 841
                  sra          t3, a7, s8
                  blt          s9, s2, sub_1_j4 #branch to jump instr
                  sltu         s1, t3, s0
sub_1_j4:         jalr         s6, tp, 1017 #jump sub_1 -> sub_2
                  la           s11, region_1+1972 #start load_store_instr_stream_1
                  la           t5, region_1+1874 #start load_store_instr_stream_2
                  la           sp, region_1+160 #start load_store_instr_stream_0
                  lh           a2, 12(t5)
                  lbu          a1, 33(sp)
                  lh           s0, -12(t5)
                  lh           s6, 28(sp)
                  sw           t4, -44(sp)
                  lbu          a1, 45(sp)
                  sb           s11, 1(t5)
                  lbu          s4, -5(s11)
                  lbu          t3, -25(s11)
                  lbu          a7, -33(s11)
                  sb           a6, 24(sp)
                  sb           s10, -6(sp)
                  sb           a5, -46(sp)
                  sh           a6, 14(s11)
                  sb           t0, 17(sp)
                  sb           zero, 21(sp)
                  lbu          ra, 11(t5)
                  lbu          a1, 20(s11) #end load_store_instr_stream_1
                  lw           s8, 6(t5)
                  lb           s6, 7(t5) #end load_store_instr_stream_2
                  lb           t6, 57(sp) #end load_store_instr_stream_0
                  la           t6, region_0+1630 #start riscv_load_store_hazard_instr_stream_0
                  sb           s11, 75(t6)
                  lbu          t3, 75(t6)
                  sb           t4, 75(t6)
                  lbu          s8, 75(t6)
                  lb           sp, 75(t6)
                  auipc        t3, 183899
                  lbu          t3, 75(t6)
                  or           s1, s8, sp
                  xor          a5, s4, a0
                  lbu          t4, 131(t6)
                  lbu          s0, 131(t6)
                  lb           a7, 131(t6)
                  or           gp, t4, t1
                  lbu          s3, 131(t6)
                  sb           a4, 131(t6)
                  lbu          a6, 131(t6)
                  sh           s7, -94(t6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+219 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a6, s2, 1549
                  lhu          s7, -53(sp)
                  sll          s0, a7, s7
                  nop
                  sb           s1, -24(sp)
                  sb           s9, 18(sp)
                  and          t4, ra, s7
                  lbu          t5, -21(sp)
                  addi         t1, t4, 1090
                  lbu          gp, -14(sp)
                  lb           s8, 26(sp)
                  nop
                  slti         s6, a0, -149
                  andi         s9, a5, 1822
                  andi         s3, s9, 561
                  sb           s9, 18(sp)
                  lbu          s2, -36(sp)
                  srai         s3, s10, 19
                  lbu          t5, 56(sp)
                  nop
                  addi         t0, t0, -532
                  sra          s3, ra, t5
                  or           s8, s2, t5
                  sw           t0, 13(sp)
                  srli         t5, ra, 14
                  add          s9, a1, t1
                  lbu          s1, -61(sp)
                  sb           a7, 28(sp)
                  xori         t3, s11, -790
                  lhu          zero, -19(sp)
                  lbu          s11, 34(sp)
                  sb           s10, -9(sp)
                  ori          a4, s2, 471
                  sb           s4, 42(sp)
                  or           s0, s3, s5
                  nop
                  andi         t1, s2, 456
                  lbu          t6, -50(sp)
                  ori          t1, zero, 91
                  srl          a5, a1, t5
                  lhu          s1, 11(sp)
                  or           a7, s5, t1
                  lbu          zero, -18(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_0+1409 #start riscv_load_store_hazard_instr_stream_2
                  sh           zero, -5(s1)
                  lb           tp, -5(s1)
                  lh           a7, -5(s1)
                  sb           a6, -5(s1)
                  lhu          t0, -5(s1)
                  sb           a5, -5(s1)
                  sb           a2, -5(s1)
                  sh           s4, -5(s1)
                  lw           s3, -5(s1)
                  lbu          s2, -5(s1)
                  lhu          gp, -5(s1)
                  lb           s3, -5(s1)
                  lw           t5, -5(s1)
                  lh           s7, -5(s1)
                  lw           a4, -5(s1)
                  sll          a1, s4, a6
                  lb           tp, -5(s1) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1254 #start riscv_load_store_hazard_instr_stream_1
                  lb           t3, 25(sp)
                  lbu          a2, 63(sp)
                  lbu          t5, 63(sp)
                  sb           s8, 63(sp)
                  sb           a0, 63(sp)
                  xor          a7, t6, a1
                  slli         a7, a2, 11
                  lb           a1, -55(sp)
                  and          t4, t6, ra
                  auipc        t5, 460308
                  sb           a3, -19(sp)
                  sb           t1, -18(sp)
                  sll          s6, t4, a5
                  sh           s11, -18(sp)
                  sw           a0, -18(sp)
                  sw           a6, -18(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+129 #start riscv_load_store_rand_instr_stream_2
                  lbu          s2, 856(sp)
                  lbu          s5, 462(sp)
                  sb           t2, -56(sp)
                  auipc        s9, 61372
                  lbu          t3, 1034(sp)
                  slti         s1, t6, 463
                  sltu         t4, a3, a3
                  lb           t0, 626(sp)
                  sub          a6, s2, s5
                  lbu          t0, 240(sp)
                  sra          a1, a1, t2
                  lb           t5, 540(sp)
                  sh           s9, 1785(sp)
                  srli         t1, s8, 1
                  sub          s0, s1, t1
                  sb           a2, 1537(sp)
                  lb           t6, 60(sp)
                  lh           a4, 1179(sp)
                  lbu          s9, 494(sp)
                  addi         t6, zero, 526
                  lb           zero, 1678(sp)
                  lb           t0, 1322(sp)
                  lh           t4, 111(sp)
                  sltu         t3, t2, zero
                  lb           s9, 1558(sp)
                  lbu          s9, 1084(sp)
                  sb           t6, 1443(sp)
                  or           t4, a3, a7
                  ori          s8, sp, -13
                  sb           s5, 1778(sp)
                  sltiu        a1, s7, 235
                  add          a5, t4, s2
                  lui          t3, 878493
                  nop
                  sw           t1, 1111(sp)
                  srli         a7, s10, 1
                  sb           s0, 1487(sp)
                  lw           t1, 867(sp)
                  lh           a4, 1711(sp)
                  sltiu        t1, a5, -1364
                  lhu          s11, 955(sp)
                  addi         t6, a4, -1405
                  add          t0, s8, s9
                  srli         t4, a6, 0
                  nop
                  lb           tp, 1114(sp)
                  sb           s7, 1082(sp)
                  srai         t3, gp, 2
                  ori          a2, gp, -1139
                  lhu          t1, -41(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+1569 #start riscv_load_store_rand_instr_stream_0
                  and          s9, s5, s8
                  lb           t3, 3(s5)
                  sb           sp, 64(s5)
                  slt          s7, sp, t2
                  lb           t3, -34(s5)
                  lb           s4, -10(s5)
                  lb           s1, -26(s5)
                  srl          a6, a6, sp
                  srai         tp, gp, 9
                  sltu         s4, s0, gp
                  andi         a7, gp, -571
                  add          t0, ra, gp
                  sll          s0, tp, a3
                  slli         t2, a1, 25
                  add          tp, s10, a6
                  andi         zero, s2, 436
                  lhu          s2, 43(s5)
                  ori          a7, s5, -1916
                  sb           t3, -7(s5)
                  sll          a6, s3, tp
                  sb           t6, 11(s5)
                  sltu         ra, a1, ra
                  lbu          s4, 34(s5)
                  sb           t1, -52(s5)
                  sltiu        a1, s3, -1358
                  sll          s2, t1, t6
                  sub          a7, s1, t0
                  addi         t1, a3, 1594
                  sb           s9, 60(s5)
                  sb           t0, -11(s5)
                  sb           t2, 60(s5)
                  lb           a6, -37(s5)
                  lbu          s11, -64(s5)
                  lui          t6, 475605
                  and          s11, a7, ra
                  sub          a6, a3, a2
                  sb           s9, -46(s5)
                  add          t0, s9, a7
                  lbu          s1, 22(s5)
                  lbu          t6, 3(s5)
                  sub          s4, t5, s2
                  sub          s2, tp, a7
                  xor          a6, s6, sp
                  srai         a6, ra, 4
                  lw           a1, 55(s5)
                  sh           t3, -59(s5)
                  srl          s4, t4, a2
                  sb           s7, -60(s5)
                  lb           t0, -43(s5)
                  sub          sp, t4, s8
                  sb           s2, -12(s5)
                  sb           a5, 8(s5) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+760 #start load_store_instr_stream_1
                  la           t3, region_0+983 #start load_store_instr_stream_0
                  lbu          t6, 6(s7)
                  sb           a1, 6(t3)
                  la           gp, region_0+1361 #start load_store_instr_stream_2
                  la           s5, region_0+1359 #start load_store_instr_stream_3
                  sb           s10, 31(gp)
                  lb           s1, 6(s5)
                  lb           sp, -49(s7)
                  lb           a4, -31(s7)
                  lb           s9, 64(s5)
                  lhu          s2, -3(gp)
                  lbu          s6, -7(gp)
                  lbu          a5, 39(gp)
                  sw           t1, 5(t3)
                  lbu          s4, -25(s7)
                  sb           a4, 35(s5)
                  sb           t1, -30(gp)
                  sb           t4, 60(s5)
                  lhu          t2, 3(t3)
                  sb           t3, -36(s5)
                  lb           s3, 24(gp)
                  lb           t1, 10(s7)
                  lhu          s11, 40(s7)
                  sb           s8, -53(s7)
                  lbu          s6, 39(s5)
                  lbu          s0, -15(s7)
                  sb           zero, 10(t3)
                  lbu          t1, -6(t3)
                  sb           sp, 39(s5)
                  sh           s2, 59(s5)
                  lh           ra, 19(gp)
                  sh           s7, 19(gp)
                  lw           a7, -12(s7)
                  lb           s6, 2(t3)
                  lh           a7, -45(gp) #end load_store_instr_stream_2
                  lb           a7, -40(s5) #end load_store_instr_stream_3
                  lb           t0, 49(s7) #end load_store_instr_stream_1
                  sw           t4, -3(t3) #end load_store_instr_stream_0
                  la           t2, region_0+1440 #start load_store_instr_stream_0
                  la           a5, region_0+153 #start load_store_instr_stream_1
                  sb           t5, 1418(a5)
                  lw           zero, -144(t2)
                  sb           a3, 666(a5)
                  lb           s4, 302(a5)
                  sb           ra, -23(a5)
                  sb           t4, -148(t2)
                  lh           gp, 138(t2)
                  sb           a0, 1400(a5)
                  sb           t1, 189(t2)
                  lw           s8, 88(t2)
                  lh           ra, -184(t2)
                  lw           t1, 403(a5)
                  sb           gp, 244(a5)
                  lb           t3, -39(t2)
                  sb           s0, 1048(a5) #end load_store_instr_stream_1
                  lb           a1, 19(t2) #end load_store_instr_stream_0
                  and          a1, a0, sp
                  slli         s9, t4, 4
                  slli         s9, zero, 5
                  bge          t6, a4, 15f
                  sltiu        zero, ra, 83
                  sll          t4, t6, s2
                  andi         s1, gp, 1354
                  slli         s9, s6, 23
                  and          s9, s7, gp
                  nop
                  bge          a7, sp, 26f
                  srli         sp, sp, 2
                  nop
                  srl          gp, t4, t6
                  xor          t0, s3, s8
15:               slt          a1, s2, t6
                  srai         s5, s0, 7
                  ori          t1, t6, 73
                  addi         a7, a3, -1530
                  and          s5, s9, s2
                  sra          s3, s6, a2
                  xor          zero, t3, s10
                  auipc        t6, 733709
                  sub          s4, s5, s10
                  bgeu         ra, zero, 25f
25:               sll          s1, s10, t4
26:               addi         s0, s4, 2030
                  srai         s7, s9, 24
                  bne          a6, a7, 29f
29:               or           t3, tp, tp
                  sub          sp, a4, ra
                  xori         t5, s0, 1138
                  xor          t1, zero, s6
                  bge          a5, s6, 50f
                  xori         t2, s4, -130
                  ori          a4, sp, -1036
                  bge          a4, s8, 48f
                  lui          s9, 620141
                  blt          s7, s9, 54f
                  auipc        s11, 523880
                  slli         s3, s3, 1
                  add          s2, s0, s9
                  slti         gp, s4, -381
                  bgeu         t0, ra, 63f
                  sll          a4, sp, s5
                  sub          t5, t1, t5
                  beq          t5, a7, 64f
                  and          tp, t1, t3
48:               sltu         s3, s6, a1
                  andi         tp, a4, -1397
50:               sltu         s2, s7, s3
                  sub          a5, a7, s10
                  auipc        t0, 894867
                  bltu         t3, s5, 69f
54:               beq          ra, s9, 57f
                  addi         s4, t4, 1837
                  slt          s0, s6, a6
57:               bltu         t6, s3, 64f
                  addi         t1, sp, 50
                  sub          a4, t2, tp
                  or           s5, t1, s3
                  addi         t2, a0, 1576
                  bne          s6, s6, 81f
63:               srli         t3, s9, 31
64:               add          s1, t0, s10
                  auipc        a2, 844963
                  bne          a7, s4, 72f
                  auipc        s11, 350450
                  bge          s6, gp, 76f
69:               and          a1, a2, t4
                  slti         s7, a1, 1985
                  xori         t0, t1, -1700
72:               sll          t4, s9, a3
                  sll          t0, t2, a4
                  srai         t5, a3, 4
                  srl          zero, t6, a7
76:               sltu         s5, t5, s7
                  srli         s1, t3, 15
                  nop
                  add          t4, a2, a4
                  bltu         t1, a2, 94f
81:               bltu         a4, s6, 90f
                  and          a5, t3, t5
                  bgeu         a0, a4, 96f
                  sra          sp, s0, s1
                  sra          s2, tp, s1
                  addi         s6, t2, 271
                  slli         ra, a3, 22
                  srai         t5, s6, 21
                  and          a6, s11, s9
90:               or           t4, a4, s9
                  srai         s0, s3, 22
                  blt          t6, t2, 98f
                  ori          s1, s8, -1061
94:               bge          a7, a5, 95f
95:               and          zero, s6, ra
96:               sltiu        sp, s4, -394
                  xor          a1, a0, a0
98:               slti         s5, a6, 591
                  bge          t3, a6, 115f
                  sra          t4, s10, s5
                  xori         s7, a6, 70
                  nop
                  bge          s5, a5, 111f
                  srai         s1, a0, 0
                  andi         s9, zero, 1219
                  bltu         s7, s0, 117f
                  beq          s10, s11, 115f
                  srai         s8, s7, 21
                  xori         a7, gp, -235
                  andi         s8, t5, -1213
111:              ori          zero, s11, -412
                  slt          a2, s11, zero
                  nop
                  blt          s1, a4, 117f
115:              bltu         a2, s0, 119f
                  slti         a2, a5, -457
117:              sra          t5, s7, a7
                  bne          a3, s4, 123f
119:              blt          s7, t2, 123f
                  srli         t3, s11, 21
                  blt          t0, s10, 133f
                  slt          a2, s10, t0
123:              addi         s6, a2, 1220
                  sub          a6, t4, a3
                  addi         t2, a2, -967
                  sltu         a7, s10, s11
                  bgeu         s4, t4, 129f
                  srli         tp, s11, 16
129:              sltiu        t3, t0, 75
                  xori         t1, a2, -384
                  sub          t3, t2, s2
                  xori         tp, t3, 1484
133:              slt          s6, t6, s7
                  bltu         t5, tp, 150f
                  beq          a3, s2, 141f
                  sltiu        s2, t2, -1841
                  srli         a7, a7, 21
                  bgeu         a6, t5, 141f
                  slt          t2, s1, tp
                  bne          t2, s4, 148f
141:              bltu         sp, s1, 153f
                  ori          s2, t0, -1414
                  sltiu        t0, t3, 452
                  bgeu         tp, s10, 151f
                  slli         s1, t3, 27
                  bne          a5, t1, 158f
                  sra          s6, s5, zero
148:              ori          a1, t4, 1842
                  blt          s7, tp, 165f
150:              ori          s4, sp, -898
151:              bgeu         a7, t6, 167f
                  blt          t0, t2, 155f
153:              addi         t3, s7, -328
                  add          s2, s3, t4
155:              bgeu         t4, s10, 169f
                  slli         s8, s9, 29
                  srai         s2, tp, 5
158:              bgeu         s10, gp, 159f
159:              xori         t6, s3, 1765
                  srli         a5, s4, 24
                  srl          t5, zero, s11
                  slt          a2, s4, s6
                  srl          t0, t2, s8
                  srl          gp, s1, s8
165:              andi         t2, zero, 680
                  beq          s11, a0, 186f
167:              add          ra, a4, s11
                  beq          s9, s8, 172f
169:              xori         t3, s8, -606
                  sltiu        ra, t4, 275
                  nop
172:              slt          tp, s11, t0
                  ori          t4, a1, -795
                  slli         t0, t2, 18
                  and          s7, s0, s1
                  bge          a3, zero, 188f
                  bne          s0, sp, 195f
                  nop
                  andi         a5, t2, 852
                  slli         gp, t4, 23
                  sll          s4, s0, s1
                  beq          t5, t1, 199f
                  xori         s5, s1, -1772
                  sltu         gp, a0, t5
                  sra          t4, s0, s3
186:              lui          t5, 161200
                  blt          gp, a7, 188f
188:              ori          s9, t6, -1150
                  blt          ra, tp, 200f
                  xori         ra, t0, 917
                  sra          a2, sp, a1
                  and          t4, s5, s0
                  addi         a6, t4, 813
                  sub          a1, t0, sp
195:              sub          t5, t3, a6
                  or           t6, a3, t0
                  sltiu        s2, a3, -1291
                  addi         s4, s6, 456
199:              sltu         s11, a1, s6
200:              bge          t0, gp, 208f
                  srl          s5, s2, s0
                  sltu         t4, s4, s2
                  andi         gp, a3, 1701
                  slti         s4, s5, 293
                  andi         a1, tp, -2012
                  and          t0, a7, s5
                  blt          a0, s11, 211f
208:              srai         a1, zero, 14
                  srli         s2, t6, 4
                  sub          zero, a6, s11
211:              xor          s8, t0, tp
                  addi         s8, a0, 1359
                  slli         a6, a7, 5
                  and          a5, t6, s9
                  add          t0, gp, a2
                  slli         s8, s10, 28
                  add          s9, a0, gp
                  and          t1, sp, a0
                  slti         s9, s2, 1436
                  xori         s7, s6, 1236
                  ori          t0, t1, 360
                  srai         a4, s8, 15
                  lui          ra, 645993
                  bltu         s6, zero, 230f
                  ori          s7, a1, -1748
                  blt          s4, s2, 235f
                  or           a1, a5, t2
                  xori         t1, s10, 1805
                  bltu         s8, t6, 231f
230:              srl          s7, t2, a4
231:              srli         a2, s10, 12
                  nop
                  add          s9, s1, s6
                  andi         a4, t6, -1216
235:              bgeu         t4, s9, 243f
                  slt          sp, s11, s4
                  nop
                  lui          sp, 250147
                  slti         a6, a4, -634
                  or           t6, a5, s2
                  addi         s0, a3, 1951
                  or           t2, a7, t5
243:              srli         t3, s5, 23
                  sub          s5, s4, s8
                  beq          t0, t4, 264f
                  addi         t3, s5, -1920
                  bne          sp, s7, 260f
                  bne          s11, s1, 264f
                  srli         gp, s11, 2
                  sltiu        t5, s4, 971
                  lui          t0, 685877
                  and          s5, t5, zero
                  srli         t2, s4, 2
                  xor          t3, t4, a2
                  blt          a2, a5, 260f
                  addi         t4, a6, 1069
                  sll          a6, t2, t2
                  bltu         s9, s2, 259f
259:              addi         tp, s9, -922
260:              sub          s7, s7, s10
                  sltiu        sp, a2, -293
                  slt          tp, s6, s10
                  sll          s4, a7, t3
264:              or           a7, sp, a3
                  auipc        a1, 122505
                  xori         s8, zero, -566
                  blt          s1, s8, 275f
                  xori         t6, s1, -11
                  blt          t4, t5, 274f
                  addi         a5, a7, -1497
                  srli         s2, sp, 10
                  blt          t6, zero, 288f
                  xori         a2, t5, -904
274:              bge          s7, s0, 278f
275:              ori          a4, sp, -77
                  sub          zero, s10, s7
                  sltu         s8, a7, s8
278:              slt          t4, ra, t5
                  sra          t4, s9, t0
                  xori         s11, sp, -262
                  add          t2, zero, s9
                  andi         s11, s4, -1140
                  addi         s6, a1, 148
                  and          gp, a6, ra
                  andi         ra, t5, 786
                  srli         s2, s9, 13
                  sra          a4, s2, a4
288:              beq          s4, s0, 289f
289:              sub          s7, s11, t1
                  or           a5, t4, s8
                  xor          s7, s1, sp
                  sltu         a5, s8, s4
                  sltu         t0, a7, a0
                  nop
                  srli         a6, s0, 8
                  blt          s2, s3, 299f
                  nop
                  add          t6, s8, t4
299:              or           s11, a1, gp
                  xor          s5, s7, zero
                  srl          tp, a6, s2
                  and          t4, a1, a3
                  srli         a7, t0, 16
                  ori          a4, a6, 2013
                  srli         a1, a0, 25
                  beq          s2, s2, 312f
                  sltu         t6, s2, t4
                  add          s11, s3, a5
                  add          s4, s7, t1
                  blt          s2, s8, 312f
                  beq          a2, s4, 312f
312:              srl          s1, s5, a4
                  addi         zero, t1, 536
                  lw           s6, 4(a0)
                  sub          s2, t1, sp
                  auipc        a5, 864032
                  slti         t4, ra, 394
                  sra          t4, s0, a4
                  sll          tp, s4, a4
                  addi         a0, a0, 44
                  srai         s8, sp, 23
                  sltiu        s7, s4, 1540
                  ori          t3, sp, -1928
634:              addi x27, x22, 0
634:              jalr x27, x27, 0
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
.word 0x6de837ad, 0xd8681a8c, 0x2dbfd1a0, 0xa80c6666, 0xceb8f3f4, 0x21ca2472, 0xbf5422b4, 0x39f3b837
.word 0x69a7f7cb, 0xdbe38209, 0xdc4d826c, 0x9b52ab9a, 0xde6c4eb9, 0x87780654, 0x35187aa1, 0x955f4c8d
.word 0x16872dbc, 0xde3ff0cb, 0x2d4df5cd, 0xb911cd82, 0x87e66032, 0xb296dcfc, 0x4bfca168, 0x8cacc0a2
.word 0x310ee440, 0x19a24751, 0xd17de91f, 0x723bb1c6, 0x795c7929, 0x07e44d84, 0x31a2d590, 0x83dcd253
.word 0x23a18658, 0x3458a36a, 0xb9439319, 0x9649133a, 0x76e8558b, 0x93d73eb6, 0x7814b440, 0x547c54fb
.word 0xd843003a, 0xc45bbf92, 0x3401d2d4, 0x46b607ad, 0xf5454e38, 0xeea7e743, 0x5355103c, 0x3ce554d8
.word 0x665e33d2, 0x6d09b12e, 0xf6f237dc, 0x716ab4c0, 0x76e34d40, 0x11238ee3, 0xe798d48b, 0xf1105a11
.word 0x73b45391, 0xf9999df8, 0x3b831cca, 0x5d21935d, 0x33d4a77f, 0x1d7025f0, 0xaa54e01b, 0x84928d9c
.word 0x426106fe, 0xe68d3899, 0x4387109e, 0x43a6a4e7, 0x1bc4fec6, 0x9d22a50e, 0xc78f9a15, 0x3485ad1f
.word 0x793d02f6, 0x96827cd6, 0x5b218862, 0x68d0bea5, 0xd1d8d50f, 0x6f89fd92, 0xda7fa67b, 0x85c445c9
.word 0x93ac9d98, 0x4fbff011, 0x45eebb0e, 0xe6c89ef8, 0x8777746f, 0x1a66dbc6, 0x534120fe, 0xad486b89
.word 0xf6c3d8ca, 0xfe653d26, 0x4155c2e1, 0x44076cbd, 0x9ad7c97e, 0xf588f850, 0x86473a08, 0x125301d7
.word 0x448ab334, 0x4ff8eedc, 0x27eb2a2e, 0x764b4f67, 0x46c88709, 0x0929f338, 0x5b3b8cb8, 0x66a24785
.word 0x3f86af26, 0xc9c057cd, 0xc9e24927, 0x1ffe7526, 0xc0318f94, 0x96f81139, 0x5effd5bd, 0x6666c63e
.word 0x770338b4, 0xf4073780, 0x61d4dd6e, 0xe592964d, 0xbbf72c45, 0x4cfb597c, 0x1fe950d0, 0x8e4fe3b2
.word 0x34b68537, 0x15042487, 0x219f69ac, 0x25819116, 0x0e84d8ac, 0xd03338a1, 0x287e5da7, 0x8e566370
.word 0x88091112, 0x22606aef, 0xa997f9cf, 0x7f2a2f69, 0xddc56e11, 0xb0ee39f8, 0x79cdd128, 0x7e2100d6
.word 0xd6d56c53, 0x0bcc91c3, 0x5db7669b, 0x8a3f694c, 0x6ccff849, 0xf329dc6f, 0x4e0e7113, 0x66192738
.word 0x8641f2c9, 0x56fd1f74, 0x92662257, 0xc06c73e9, 0xc9d20be7, 0x9755c0c9, 0x13cbafca, 0x2d540cd4
.word 0x7e9c4222, 0xa81731cd, 0xa131bb30, 0x2dafefbf, 0xd344f10c, 0x9b52b65e, 0x85854627, 0xe175606c
.word 0xd2479390, 0x3bb1176f, 0xb4bd400a, 0x9c8b5176, 0x2bc27c06, 0x69ee56fc, 0x717697dc, 0xd5585060
.word 0x02350681, 0xca507ad7, 0x703296f5, 0x7dd64f66, 0xf6de6a8c, 0x3072176b, 0xc1dd71bc, 0x71660be0
.word 0xcf106a12, 0xf77e3c07, 0x621a00cd, 0xdd883fe4, 0xc94d8dea, 0xf3916d94, 0xb56a4570, 0x100ed0f3
.word 0x8157fdfe, 0x3f2e8b8d, 0xc66d54e7, 0xeefebaff, 0xa5953604, 0x4a41a0fa, 0xe1e04369, 0x86599140
.word 0x145e3291, 0x0c81c593, 0x575f7ad0, 0xe11cf561, 0xe5482367, 0xb1055e50, 0x37c936fb, 0x3c912307
.word 0x7b26b205, 0x64235b2f, 0x0fb8f105, 0xcae69226, 0x1ef54fa0, 0xcb0cf748, 0xfcda0875, 0x2a7304e7
.word 0x3949dc19, 0x52f0285d, 0xca058146, 0xa02143f9, 0x4a00a942, 0xbb7e110e, 0x13915e11, 0xf54da1fa
.word 0x11d3d693, 0x98aea2d5, 0xf873058c, 0x485286c5, 0xffbec7c5, 0x99baed52, 0x1947e5e3, 0x3f7f3b32
.word 0xb51b20c6, 0x45a440c7, 0x29c8792c, 0x8e746982, 0xd6f2801e, 0xae6eb5a5, 0xdb382079, 0x033b54e3
.word 0x5920e3be, 0xa0862d84, 0x54761137, 0xb0c6f411, 0xd1614468, 0x285d8f2c, 0x6971feb3, 0x7031bb36
.word 0xba547c1c, 0x45698ea1, 0x1a0450a4, 0x513b2dba, 0x826deb71, 0x58e5ef7b, 0xf39297c3, 0xdd5e91e7
.word 0x7642046b, 0x874781c4, 0xab97ab2b, 0x63a339e1, 0xf1684051, 0xe5d4e94d, 0x4b3ee570, 0x78c5b039
.word 0xa0035fcb, 0xaf6e445b, 0x320dc180, 0x59b1c7ed, 0xc8c1c66c, 0xde3e8284, 0x7f8158de, 0x6b19cc68
.word 0x5adabaed, 0x3e2c5f87, 0xa377b466, 0x58d6f73b, 0x27502f3c, 0xdbf2dac7, 0x2b1add14, 0xc457b83a
.word 0xfb16c570, 0x9bb33741, 0x7c2514d5, 0x6d425af6, 0x555646a0, 0xa30ed335, 0x149970f2, 0x767e8e08
.word 0xf3d1c7dc, 0x25f461a6, 0xf16ad5c0, 0xfd8fad9e, 0x7ba0efc6, 0x3b3b120d, 0xe0df1a07, 0x7627f340
.word 0x90a7eb89, 0xee0c85bd, 0x7572798a, 0xb6315257, 0x0365328a, 0x0256c30d, 0x1ba3a6cb, 0x2456c832
.word 0xadac8cb6, 0xcc97aac3, 0xadd2b578, 0x7db43666, 0xe629ce72, 0xa0def237, 0xc948191f, 0xaa2bdd44
.word 0xf7451dd9, 0x657d4623, 0xf63ffa64, 0x2c6ec757, 0xf9f24f34, 0x7da2def8, 0xe96f6845, 0x61d29be2
.word 0xc70b5aeb, 0xef4025a9, 0xbcb0d9f7, 0xa11662b2, 0xc968f28d, 0x37f548f9, 0x4a4188e3, 0x2d42a205
.word 0x8907a69d, 0xb4d43eab, 0xbcc92f06, 0x6c63aca4, 0x8155c916, 0x65f333f9, 0x393b5be2, 0x85cc0381
.word 0x10f8e8c7, 0x2291252a, 0x10e09371, 0x3a28bd35, 0x49b960ba, 0xb197ffba, 0xc38d8237, 0x28aee56b
.word 0xa365b148, 0xd963a707, 0x6aacdc0c, 0x5ca58cb0, 0x706a5b78, 0xefface73, 0x614399e8, 0x1d460c3d
.word 0x58925654, 0x4311922e, 0xcc957767, 0x217233ec, 0x2300c21b, 0xeafafa6f, 0xd7db3fbd, 0x68ce3926
.word 0x0e0042a5, 0x79c6987c, 0x0cde4fa5, 0xef5034c1, 0x090d484e, 0x9ff04971, 0x63a1adae, 0x55e48218
.word 0xa214af81, 0x1b99f492, 0xd2a4ba85, 0xcd3c3f3c, 0xe8dc5114, 0xa4173874, 0x5f7a179c, 0x66b0d619
.word 0xcdc121a5, 0x4f3ade46, 0xb00e0d80, 0x51ee7190, 0x6a2b6f92, 0xcedb2824, 0x0e52132b, 0xe168f91e
.word 0x24a4f01d, 0x271443ac, 0xd877576f, 0xbbd4ad2b, 0xb907d089, 0xe2fc5976, 0xf662ea13, 0x6c0b3655
.word 0x6c604bc4, 0xc8c89896, 0x7ee81e9b, 0x1b70faf7, 0x9a2d33ec, 0x4a0e30e1, 0xafa29be5, 0x0a4463c7
.word 0x2c50fc64, 0x8ec768c1, 0xdf5643b4, 0x1fad8a60, 0x14c3dcab, 0xfa2197af, 0x932ad6fb, 0xf9a74cfb
.word 0x5f83e831, 0x71f9b3bc, 0xc57d7647, 0x6c03aa75, 0x5e9c4a09, 0x51866ffb, 0x0c0d8b1d, 0x62c1cad5
.word 0x7284b50d, 0xf0ac64aa, 0x68603ba2, 0x78001260, 0xede07a60, 0x355e9a67, 0x573f90ff, 0x0942ef48
.word 0xd9b308dc, 0x759db2a5, 0x82f57497, 0x7da7aa2e, 0x83fc372d, 0xd2b8394e, 0xdf17ea23, 0x8ee9fcca
.word 0x998af719, 0xa06b32b9, 0x92c14a6c, 0x5d776269, 0x90d3d763, 0x5270bb1d, 0xe3447b78, 0xc4a939a7
.word 0x387ca8ce, 0x30811419, 0x78eb4c75, 0x283016cf, 0x040e63d1, 0x47deb49a, 0xaf7da998, 0xa829c875
.word 0xa6a7593e, 0x8ebfaa4d, 0xb8cf0dbf, 0x8cf356e0, 0xb2bde87d, 0x5afb5f56, 0x8d52567d, 0xa3b3f9b6
.word 0x3c7bc20c, 0x0afcefc7, 0xcdac4dea, 0x543de440, 0x68a0917d, 0x149c5459, 0xa5e44421, 0x7b167218
.word 0x2bd45e77, 0xc4afa535, 0x6ffa2c30, 0x1bf6689c, 0x5b46c7b6, 0x1f8300c3, 0x127650cf, 0x60548bdb
.word 0x04df3640, 0xa28d9f88, 0xf510cb19, 0xaef34263, 0x443ad73c, 0x7bb6163a, 0x2b8d5b6c, 0x9cd4161f
.word 0xa494e3f7, 0x1b152d9c, 0x36206bc9, 0xbd0f70d0, 0xae8cd945, 0x67ff7bf2, 0x6fb1e8a4, 0x423ff1d3
.word 0x4dd8e224, 0x608f9a85, 0xd30f42d7, 0x04fedfc7, 0x40c77665, 0x845d734a, 0xe06ccefe, 0x05919ea7
.word 0xce105975, 0xc3ef956b, 0xb1b0038a, 0xc2dee93c, 0xec431373, 0x91ac2310, 0x542e3d4b, 0x2954f9d6
.word 0x3bfc1fa6, 0xd4f07bf4, 0xd49900c8, 0xce4f8ee4
.section .region_1,"aw",@progbits;
region_1:
.word 0xdbb85bd8, 0x01903ca4, 0xa7bbbe18, 0x1eb64dba, 0xd4bf2791, 0xea86031a, 0x51b8e9dc, 0xe258ce6c
.word 0x9f878776, 0xb1877ed5, 0xfcee5fcc, 0x5ef55e89, 0x965b145f, 0x9d767372, 0xf11fa7f7, 0xc3c29b2b
.word 0x65d22e3d, 0xb09ab99f, 0x091b171c, 0xaddc0a37, 0x70f2c345, 0x8c58337c, 0x9d40991d, 0x2877bfee
.word 0x2fce99a9, 0x366f8424, 0x1e4febd8, 0xb28be4f5, 0xcf8578a9, 0x252988d9, 0xc3dfacc7, 0x9217537d
.word 0x3277e133, 0x62e93a0d, 0xb757f0ba, 0x5a626e97, 0x8a73bf3a, 0x58e7fc3b, 0x5c0a839b, 0x4fb79efc
.word 0x55fdddb1, 0xe12c1da9, 0x49fd5c2b, 0xe6b4999a, 0xc682bc42, 0xf98a0a15, 0x87bb0993, 0xbd58141a
.word 0xb4762e62, 0xf6811005, 0x7b2d629c, 0x34b1eb33, 0xfb4abd22, 0x39848837, 0x4463b48a, 0xe92779a0
.word 0x49f7224a, 0xc896a7f7, 0x5221ac31, 0x1f4905d5, 0x6974ba8f, 0xda7ff503, 0xa83bfdd5, 0x776853f8
.word 0x8d19a801, 0x3641b839, 0xdd51071c, 0x7e30203a, 0xc38a69de, 0x75e687f9, 0x304b1bb1, 0x8a950991
.word 0xc28c2fc4, 0x0243aed8, 0x96da2edc, 0xa1e27bb7, 0x9cd4fafd, 0xde3702af, 0x67631625, 0x8e2709da
.word 0x4ec044f8, 0x26a8d5fa, 0x7b9553a9, 0x4dfa01f0, 0x2d987f51, 0x972f06f2, 0xa95d45f1, 0x44a2c924
.word 0x9f77b8bd, 0x3b1e6e3f, 0xe39f12fc, 0x3c9686b9, 0xe8d464e9, 0x171a106f, 0x05700825, 0xf31cd106
.word 0x8d312e42, 0x74c7847d, 0x7a9326d0, 0x7223f505, 0xf609aacd, 0xd461ec00, 0x6db79e0e, 0xfaca8f5f
.word 0xde910806, 0xfa05ceef, 0xd7920298, 0xd49ca303, 0xdb698487, 0xeca365cc, 0x9a12803d, 0x306071bc
.word 0xf5da8940, 0xde8d06b2, 0x0b24028c, 0x8adfde8c, 0x787cd3b7, 0xbe2dbad2, 0x9979e675, 0x98becce7
.word 0x149c3f73, 0x97fdfd32, 0xdd4b3910, 0xf43e0101, 0xcdcfc981, 0x5b2c59cc, 0x7185321b, 0xcc40d88c
.word 0x58487df5, 0x29933686, 0xda5d1fe8, 0xa739e96e, 0xd3d3e825, 0x5d59e91f, 0x49f15cb5, 0x48fe42c0
.word 0xc87d6bad, 0xcbed48bc, 0xeac7e36d, 0x7c9a17e2, 0x63cd450c, 0x256f7acd, 0x6cfa36f9, 0x05b263fb
.word 0xf30bd0e5, 0xd522e6f4, 0xf9eccab4, 0x41bb2a78, 0x2825bb9f, 0xd5186a5b, 0xe86cede4, 0x12164885
.word 0xf140af53, 0xc894b886, 0x1fe5aa15, 0xa8f71a57, 0xc876f0ec, 0xa1c49983, 0xca030d10, 0x60a09715
.word 0xc424c7f3, 0x316aad40, 0x2fd12bd0, 0xdefb1c9c, 0x72939a71, 0xc98616e6, 0xcfb42c36, 0x4bc098c3
.word 0xefc53198, 0x6a3a7e78, 0x0738d1ed, 0xd47f4982, 0x8eb04e71, 0xc21cf904, 0x95a2d5bc, 0x80b2fb1f
.word 0x592b0354, 0x57b5e409, 0x96b37a18, 0xd632a12d, 0xa8fa16e7, 0x1bd67ea8, 0x766f5917, 0x905bbc57
.word 0x1546d4bb, 0xf523c840, 0xc7655090, 0xaea5125f, 0x211fe471, 0x772baecb, 0xae596e88, 0x1b769460
.word 0xd4c15535, 0xfa4e2f29, 0x16945805, 0xa4278413, 0x8c55e65d, 0xdff35d8a, 0x04aed537, 0x9e501b86
.word 0x0baa9818, 0x880469f1, 0xce1b418a, 0x119d8288, 0xeac87f31, 0x82187661, 0xd11603eb, 0x4c5de4b9
.word 0x54d64920, 0xdfdbc257, 0x46320eb9, 0x463d830a, 0x42272baf, 0x4acdd85d, 0x3558d894, 0xac95b5b7
.word 0x33fb22cc, 0xec28f8a6, 0x57f85c98, 0x9ecd1fda, 0xf423f93f, 0x00980133, 0xe0bf00f5, 0x1bf16222
.word 0x8c18077c, 0x7298a005, 0xfefb7a29, 0x4e34d331, 0x7dfb9d78, 0xf9428ca8, 0xaecbe96f, 0x54a6880b
.word 0xcb8d3ce8, 0x6e2c70dc, 0x32ef10c1, 0xb5078116, 0x61f88d64, 0x2e1e0f33, 0xb118cdfc, 0xd0d1bbd3
.word 0x1f149462, 0xdceebb3f, 0xf1316f78, 0xb57e60d1, 0x8a1889b4, 0x7b9604f0, 0x43d898ac, 0xb0acedef
.word 0x16ea49bf, 0x5291b421, 0x9c174579, 0xd13a29fb, 0x769ca9c3, 0x1e2ebfd2, 0xa0bdc485, 0x80896771
.word 0x2ec53dce, 0x20834dcf, 0x01ed7453, 0x1efc5058, 0x3fc8d38c, 0xffa0d4dd, 0xb6b87c7f, 0x568f345b
.word 0x4d161e0a, 0x51ca4a61, 0x2d628a34, 0x3625c7b3, 0x9669294c, 0xe45bc239, 0xaad96ca6, 0x3d8d89ff
.word 0xd3feebd9, 0x73fb7e09, 0xefeddc6b, 0x92eb3494, 0x8852127b, 0x5d0fdd2a, 0x3d124fed, 0x2440fc6a
.word 0xa526348c, 0xa657076f, 0x0130ae37, 0x647bcadb, 0x20af1e22, 0xeedc46f6, 0xaa701c91, 0xf09dd8de
.word 0xca9573ea, 0x768a7a17, 0xfb6f3fe6, 0x08c3ab8f, 0xfc50ce66, 0x06430ef3, 0xfeedce67, 0xf201eb8a
.word 0xd45b4c8e, 0x19511275, 0x3beeaa69, 0xf68a8b89, 0xdec20bfc, 0x4bd44ea4, 0x892d79cc, 0xbc82e52a
.word 0x18b3a773, 0xe47d858b, 0xc0c9a3b0, 0x74565358, 0x3b0be235, 0x66aa85e8, 0x7a293451, 0x72d22f09
.word 0x1c3d499f, 0xb4086db1, 0x38de4726, 0x3ad4e959, 0xb5eb86e6, 0xd2b39727, 0x482bcb03, 0x000cb20d
.word 0xe42e1fe2, 0x14ab3ba7, 0xefcf3464, 0x5653b78d, 0x766014a0, 0x3001936d, 0xdbf7313c, 0x8a10b16e
.word 0x6e4c02a9, 0x0c0623b4, 0x292f1630, 0xc304520f, 0x5ddf7359, 0xc8752824, 0x5d749d4a, 0x900bc860
.word 0xbbaca833, 0xc1163eda, 0x3a856ed6, 0xb5608778, 0x2d902ab0, 0xe17f954a, 0xca848def, 0x10b33979
.word 0xffb0dded, 0x7c0716f0, 0xef3d726f, 0x4beb2345, 0x34268e1f, 0x41f4bae1, 0x650bf4e6, 0xa3af4e09
.word 0x205fd9bd, 0xae4f639d, 0x93a21632, 0x2f885a36, 0x5988b31b, 0xc72c4637, 0x52f23030, 0x06d1c665
.word 0xb13d01da, 0xf1d85a1a, 0xc0bd6244, 0xb722b3c4, 0x78397f12, 0x8e884887, 0xca64475c, 0xd3469fe7
.word 0x7eb0436a, 0xadea228c, 0xae95cb55, 0x1239a622, 0x1a016855, 0x717a50b3, 0x275a8f94, 0xaf55c625
.word 0xc82fc05a, 0x7a6e1dc3, 0xe5531f9a, 0x430502f1, 0x020595b7, 0xcc92a162, 0x9ffc914b, 0x1756f3a9
.word 0xc16c0ca8, 0x0e3ead9b, 0x19568f58, 0x0064b1a9, 0x3e753900, 0xd7887f8d, 0x621735e6, 0x50e2b3eb
.word 0x2f1df5a7, 0x27ffbbc5, 0x05b6cec8, 0xc243cca8, 0x4bcca5a5, 0x6e57bdc2, 0xffedb34a, 0x824570f9
.word 0x096927ec, 0xcb55005f, 0x64b11f8c, 0xb9cfeb4e, 0x05806683, 0x6b463c29, 0xa7bff7a7, 0x9b633207
.word 0x697c3a7d, 0x56a6900a, 0x66f54d92, 0x57d90bb8, 0x5c8f34d2, 0xbe6e389d, 0xa212a11e, 0x377dfd6d
.word 0x4d3b4e74, 0x53371bbf, 0x38def833, 0x2da40b7b, 0x8582871c, 0x9cd5513b, 0xc1bd0ebf, 0xaf9b3447
.word 0x5a417aa9, 0x00666142, 0xc40a7d7c, 0xcdd160a7, 0xacd5be31, 0xc3fe21ab, 0x053c43c9, 0x06ec553f
.word 0x2715e8f4, 0xfad9988b, 0xf14d820c, 0x3f938956, 0xb4b19d7c, 0x1edc6e40, 0xde22457d, 0x565e137f
.word 0x9b23818e, 0xbfddd37f, 0x2b226116, 0x4c507467, 0x4fd5b90d, 0x64f44b6a, 0x77e77f0a, 0xb117b205
.word 0xcaf174c4, 0x137523ae, 0x56c3fe31, 0x7d8026a6, 0xa3bff7d5, 0xa4c3578d, 0xf8e0cd20, 0x1e74fa0b
.word 0xe41f8d67, 0x1599669e, 0x0351f2af, 0x6f10d3ee, 0x6d419d0d, 0x5e5f7a8c, 0xd1181dcf, 0xf5ae2121
.word 0xeae82ea3, 0x967feee9, 0x4b46b596, 0x292ea27d, 0xa5ba1f38, 0xf48a8aa7, 0xbe22411a, 0xfe7296a2
.word 0x9d88ddb8, 0x273e65dc, 0x6abf6c12, 0xe2dcd468, 0x8262a7e5, 0x9914ad01, 0x34513e18, 0x967c491c
.word 0x95950cef, 0xee46f66a, 0x742fe6b6, 0xdafd4dc1, 0x25bf6252, 0x401b4a09, 0xe23dce2e, 0x02f9029c
.word 0x07a51d69, 0xeaa91d81, 0x3c88896e, 0x5faf1246, 0xcaf7562f, 0x4d900ae7, 0xd6fff458, 0xd103e9c0
.word 0x27ebc8be, 0x732de81c, 0x80f7352c, 0xc854f3b3
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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x26, x10, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x9, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x9, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x9, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x9, x23, ecall_handler
                  li x23, 0x1
                  beq x9, x23, instr_fault_handler
                  li x23, 0x5
                  beq x9, x23, load_fault_handler
                  li x23, 0x7
                  beq x9, x23, store_fault_handler
                  li x23, 0xc
                  beq x9, x23, pt_fault_handler
                  li x23, 0xd
                  beq x9, x23, pt_fault_handler
                  li x23, 0xf
                  beq x9, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x10, x26, zero
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
                  add x10, x26, zero
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
                  add x10, x26, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x10, x26, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x10, x26, zero
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
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x10, x26, zero
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
