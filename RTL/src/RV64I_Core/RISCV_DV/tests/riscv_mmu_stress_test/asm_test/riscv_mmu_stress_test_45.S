.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xf3028045
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0xf5deecff
                  li x7, 0x0
                  li x8, 0xb
                  li x9, 0xf2796e35
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xf70fbda0
                  li x13, 0x7
                  li x14, 0xa
                  li x15, 0x0
                  li x16, 0xfb3b067d
                  li x17, 0x0
                  li x18, 0x7963f2ca
                  li x19, 0x80000000
                  li x20, 0x5d66567
                  li x21, 0xb
                  li x22, 0xcc070c7b
                  li x23, 0xf24e813d
                  li x24, 0xa
                  li x25, 0xb
                  li x26, 0x3
                  li x28, 0x25724943
                  li x29, 0x0
                  li x31, 0x6696b0b0
                  la x30, user_stack_end
main:             la           t1, region_1+1258 #start riscv_load_store_hazard_instr_stream_3
                  lw           s5, -366(t1)
                  sh           s8, -366(t1)
                  lb           gp, -366(t1)
                  lb           t4, -366(t1)
                  lw           a3, -366(t1)
                  lw           gp, -366(t1)
                  lhu          s7, -366(t1)
                  lbu          s4, -366(t1)
                  sh           s0, -366(t1)
                  lbu          s9, -90(t1)
                  sb           a0, -90(t1)
                  lh           a3, 318(t1)
                  srai         t6, zero, 7
                  sh           a5, 318(t1)
                  sh           s9, 318(t1)
                  sb           a7, 318(t1)
                  sh           s11, 318(t1)
                  lbu          a3, 318(t1)
                  lhu          s7, 318(t1) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+460 #start riscv_load_store_hazard_instr_stream_5
                  lbu          t6, -353(sp)
                  xor          s4, s4, t4
                  sb           s8, -353(sp)
                  lbu          s7, -353(sp)
                  lbu          t1, -353(sp)
                  sltu         a1, s9, a0
                  sb           a6, -353(sp)
                  sra          t6, s8, a5
                  lbu          s3, -353(sp)
                  lb           a5, -353(sp)
                  lh           s8, 62(sp)
                  lbu          s1, 659(sp)
                  sh           s6, -184(sp)
                  or           a7, a6, t3
                  slti         a1, a1, -1945
                  sh           s11, -138(sp)
                  lb           a4, 302(sp)
                  sh           t3, -148(sp)
                  sh           s3, -148(sp)
                  sh           ra, -384(sp)
                  sb           a4, -384(sp)
                  sh           t5, 902(sp)
                  addi         zero, s6, -466
                  lb           s2, 1413(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           s4, region_1+352 #start riscv_load_store_rand_instr_stream_1
                  xor          s1, t0, a0
                  sb           t6, -48(s4)
                  slti         a1, s6, 50
                  sll          s8, s4, a4
                  andi         s0, a0, -1052
                  sh           zero, -38(s4)
                  ori          t1, tp, -1243
                  lhu          t6, 22(s4)
                  srl          s6, s10, a1
                  lbu          s9, 3(s4)
                  srai         s9, gp, 5
                  lhu          a5, -18(s4)
                  lbu          a7, -29(s4)
                  lbu          a5, -53(s4)
                  sh           sp, 52(s4)
                  auipc        s0, 202588
                  lb           gp, 43(s4)
                  addi         gp, s2, -1308
                  lb           s10, 35(s4)
                  sb           t2, -64(s4)
                  lhu          s1, -38(s4)
                  lbu          s9, 61(s4)
                  xor          s7, a6, t0
                  xori         a6, a0, -343
                  srli         sp, t3, 0
                  sb           s11, -51(s4)
                  nop
                  andi         a5, a1, 851
                  or           s10, s10, s2
                  nop
                  ori          a6, t5, -263
                  lhu          zero, 56(s4)
                  sltu         tp, ra, t2
                  lb           s3, 22(s4)
                  slti         t4, t4, -1858
                  and          t1, s2, s1
                  srl          tp, a0, s9
                  xori         s5, s0, -1952
                  lhu          s6, -18(s4)
                  sb           s11, 37(s4)
                  lbu          t1, -17(s4)
                  ori          zero, t2, 106
                  lb           a5, 44(s4)
                  slt          t4, a6, t3
                  lw           s10, -4(s4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1338 #start riscv_load_store_rand_instr_stream_5
                  srli         a6, s1, 8
                  lui          gp, 932898
                  lbu          s0, 165(sp)
                  lbu          s2, 200(sp)
                  sh           a4, -416(sp)
                  lbu          t0, -225(sp)
                  sll          s1, a0, t1
                  lb           ra, 487(sp)
                  sh           s4, -986(sp)
                  lbu          s0, 105(sp)
                  ori          s4, t1, 774
                  slli         zero, s0, 4
                  sb           a7, -181(sp)
                  sltiu        s4, s4, 13
                  sh           a1, -476(sp)
                  and          s6, gp, a5
                  lbu          a3, -583(sp)
                  and          s4, s1, s3
                  sw           t3, -1130(sp)
                  sub          s3, s4, a6
                  lb           s8, -708(sp)
                  xori         s2, t2, 339
                  lb           t1, 598(sp)
                  lb           zero, 415(sp)
                  lbu          s5, 287(sp)
                  lbu          s6, -543(sp)
                  xori         zero, t4, 259
                  lb           t1, -1029(sp)
                  lbu          t0, -403(sp)
                  lb           s5, -208(sp)
                  xor          s0, t5, t6
                  srli         a5, s2, 6
                  xor          s6, zero, s3
                  ori          s7, a4, 694
                  lh           s10, 32(sp)
                  lb           t4, 20(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_1+451 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s4, -40(s5)
                  sll          s4, s5, s6
                  lb           a5, -40(s5)
                  lb           s6, 22(s5)
                  lw           a5, 49(s5)
                  lh           s8, 49(s5)
                  lb           ra, -26(s5)
                  slti         a1, s5, 801
                  lbu          a3, -37(s5)
                  lui          a5, 995231
                  lh           s10, -37(s5)
                  sw           t5, -3(s5)
                  lb           zero, -3(s5)
                  lui          s7, 21721
                  lb           sp, -3(s5)
                  lb           tp, -3(s5)
                  sll          s1, t3, ra
                  sra          s0, a0, s5
                  lh           a3, 51(s5)
                  lbu          a4, 30(s5)
                  lw           a1, 53(s5)
                  lbu          s3, -24(s5)
                  lb           s6, -24(s5)
                  lbu          s8, -24(s5)
                  sb           ra, -34(s5)
                  lb           a7, -34(s5) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_0+1387 #start load_store_instr_stream_2
                  la           sp, region_0+428 #start load_store_instr_stream_0
                  la           a7, region_0+690 #start load_store_instr_stream_4
                  la           t0, region_0+1850 #start load_store_instr_stream_1
                  sb           a6, 7(t0)
                  lw           s0, 12(sp)
                  sw           s8, 253(a1)
                  lb           s1, 13(t0)
                  sb           a1, 144(a1)
                  lh           s0, -141(a1)
                  lbu          s10, 57(a7)
                  lb           s1, 59(a7)
                  sh           t1, -8(t0)
                  lhu          tp, -79(a1)
                  sb           tp, 1(sp)
                  la           s4, region_0+1506 #start load_store_instr_stream_3
                  sb           t4, 101(a7)
                  lb           s5, 6(s4)
                  sw           s9, -191(a1)
                  lbu          s10, -92(a1)
                  sb           a3, -5(s4)
                  lb           a6, 106(a7)
                  lbu          a5, 13(sp)
                  sw           zero, 6(t0)
                  sb           sp, 11(sp)
                  sb           t4, 15(s4)
                  lb           s10, 9(sp)
                  lbu          s8, -192(a7)
                  lbu          s1, 36(a7)
                  sb           s8, -244(a7)
                  lb           t4, -8(s4)
                  sb           s6, 180(a7)
                  sb           t4, -85(a1)
                  lb           tp, 11(s4)
                  sb           zero, -2(sp)
                  lb           s10, 10(sp)
                  lb           zero, -8(t0)
                  lbu          gp, 203(a7)
                  sh           s9, 14(sp)
                  sb           tp, 3(s4)
                  lb           s9, 9(t0)
                  sb           t5, -6(t0)
                  lhu          s10, 0(sp)
                  sb           s8, -241(a1)
                  lbu          s3, -120(a7) #end load_store_instr_stream_4
                  lbu          t2, -177(a1)
                  lb           s3, -13(t0) #end load_store_instr_stream_1
                  lh           s5, -7(a1) #end load_store_instr_stream_2
                  sb           a5, 9(s4) #end load_store_instr_stream_3
                  sb           s6, -2(sp) #end load_store_instr_stream_0
                  la           sp, region_0+1331 #start riscv_load_store_rand_instr_stream_6
                  lbu          s0, -164(sp)
                  slli         a2, a3, 15
                  slli         s1, gp, 10
                  slt          s5, a2, s7
                  sb           t0, -82(sp)
                  srai         t3, s7, 20
                  lb           t4, -100(sp)
                  srai         s0, s11, 13
                  xori         a6, s6, 1135
                  ori          t2, s4, 983
                  lbu          t1, 244(sp)
                  lb           a2, 48(sp)
                  sb           s4, 148(sp)
                  sb           t1, 128(sp)
                  lbu          s2, -162(sp)
                  lhu          s1, 165(sp)
                  sra          s5, s8, a6
                  sltiu        zero, a0, -1140
                  sll          a4, a3, zero
                  lb           s0, -193(sp)
                  lhu          a3, 121(sp)
                  lb           s5, -216(sp)
                  xori         a6, s3, -843
                  sra          s1, a0, zero
                  slli         s0, s11, 18
                  lhu          t0, 155(sp)
                  srli         gp, a3, 20
                  sra          t1, a5, s4
                  lb           s2, -139(sp)
                  lb           zero, -18(sp)
                  slt          s3, zero, a2
                  lb           s4, 112(sp)
                  lbu          a1, 172(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+992 #start riscv_load_store_hazard_instr_stream_0
                  lb           s7, 51(sp)
                  sb           s10, 51(sp)
                  lb           a1, 51(sp)
                  lbu          gp, 51(sp)
                  sb           a4, 51(sp)
                  lbu          t1, 51(sp)
                  lbu          s3, 51(sp)
                  sb           tp, 51(sp)
                  lb           s7, 51(sp)
                  lb           t1, 51(sp)
                  sb           t4, 51(sp)
                  sb           s8, 9(sp)
                  srai         s9, s6, 6
                  lbu          t6, 9(sp)
                  sb           sp, 9(sp)
                  lbu          s7, 9(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t6, region_0+1288 #start riscv_load_store_hazard_instr_stream_1
                  lb           gp, 492(t6)
                  slti         t0, zero, -2021
                  lbu          a1, -949(t6)
                  sb           t6, -911(t6)
                  sltu         a3, gp, t6
                  xor          a5, a2, a2
                  lbu          t4, -911(t6)
                  lbu          s10, -479(t6)
                  lb           s2, -479(t6)
                  lb           a5, -479(t6)
                  lb           s8, -479(t6)
                  sra          sp, t2, s0
                  xori         s6, s4, 1800
                  lbu          a2, -15(t6)
                  slli         t3, s1, 4
                  lbu          sp, -15(t6)
                  or           s4, zero, t3
                  lb           a5, 563(t6)
                  lb           s10, -237(t6) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+288 #start riscv_load_store_rand_instr_stream_3
                  slti         tp, t2, 1468
                  sb           a4, -143(sp)
                  lb           a1, -171(sp)
                  lbu          a4, 63(sp)
                  lb           s10, 125(sp)
                  srl          a7, t2, t4
                  slti         ra, t3, -29
                  auipc        zero, 907927
                  lhu          zero, -24(sp)
                  lh           s10, -162(sp)
                  lui          t2, 966342
                  lbu          a5, 67(sp)
                  lb           s7, 176(sp)
                  nop
                  xori         a6, a4, -1507
                  lb           t4, 251(sp)
                  sb           s2, -13(sp)
                  srai         a5, s6, 13
                  sb           s1, 82(sp)
                  sh           tp, 192(sp)
                  sb           s8, 71(sp)
                  lb           zero, 234(sp)
                  lbu          t1, 183(sp)
                  xor          zero, a4, s0
                  add          s8, a4, s0
                  lw           a3, -136(sp)
                  sb           t2, 117(sp)
                  sh           t0, 140(sp)
                  lbu          s3, -190(sp)
                  slt          s2, t4, t0
                  sltiu        s10, a4, 1092
                  lw           a6, 132(sp)
                  lw           a2, 92(sp)
                  nop
                  sb           t4, 93(sp)
                  sltu         s9, a6, s7
                  sra          a6, a4, s6
                  sb           s1, -125(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+1454 #start riscv_load_store_hazard_instr_stream_6
                  and          a6, t4, a2
                  lw           s10, -18(s6)
                  xori         s2, a6, -2
                  sh           a7, -18(s6)
                  lh           tp, 92(s6)
                  lbu          s7, 43(s6)
                  lbu          gp, -185(s6)
                  lbu          a5, -185(s6)
                  xori         t6, a2, 1052
                  andi         gp, s1, 1469
                  lb           s9, -185(s6)
                  sltiu        a5, a6, 9
                  and          s0, s3, s10
                  sh           gp, -142(s6)
                  sb           t3, -142(s6)
                  lw           gp, -142(s6)
                  sra          t3, a1, s5
                  lb           s10, -142(s6) #end riscv_load_store_hazard_instr_stream_6
                  la           s8, region_0+1798 #start load_store_instr_stream_2
                  la           a5, region_0+434 #start load_store_instr_stream_1
                  lbu          zero, 57(s8)
                  lbu          s7, -37(s8)
                  sh           s11, 660(a5)
                  la           t0, region_0+739 #start load_store_instr_stream_0
                  lbu          a7, 57(s8)
                  lbu          t2, 37(a5)
                  lb           t1, 51(s8)
                  la           s1, region_0+1787 #start load_store_instr_stream_4
                  sb           zero, 545(a5)
                  la           s9, region_0+1506 #start load_store_instr_stream_3
                  sb           s2, -11(s8)
                  lb           a4, 20(s8)
                  lb           a2, 24(s8)
                  lb           s2, -53(t0)
                  lb           a2, -42(s9)
                  lw           s5, -298(a5)
                  lb           t2, 710(a5)
                  lh           t6, -28(s9)
                  lbu          ra, 62(t0)
                  lhu          t1, 61(s1)
                  lb           ra, 879(a5)
                  sb           a3, 47(s9)
                  lb           s4, -931(s1)
                  sb           a3, -4(s9)
                  lbu          s4, -84(s1)
                  sb           t5, 24(s8)
                  sh           s4, 31(t0)
                  lb           gp, -174(a5)
                  sb           t1, -1171(s1)
                  lbu          t4, -215(a5) #end load_store_instr_stream_1
                  lb           a7, -281(s1)
                  lb           t3, -745(s1)
                  lb           t6, 32(s8) #end load_store_instr_stream_2
                  lb           a7, -1661(s1)
                  lbu          zero, 52(t0)
                  lbu          a1, -19(t0)
                  lb           zero, 28(s9) #end load_store_instr_stream_3
                  lb           a4, 16(s1) #end load_store_instr_stream_4
                  lb           a3, 46(t0) #end load_store_instr_stream_0
                  la           t1, region_1+1220 #start riscv_load_store_rand_instr_stream_4
                  xori         s7, t2, -721
                  lh           s2, 66(t1)
                  sltu         s1, t4, a4
                  slti         t3, a0, -242
                  addi         a7, t6, 1332
                  srai         a3, a2, 14
                  sra          s9, a4, s9
                  or           s0, t3, t2
                  lhu          ra, 246(t1)
                  or           gp, s9, s10
                  xor          s8, s0, a2
                  lb           a1, -227(t1)
                  add          t0, s6, s1
                  slli         tp, s10, 30
                  sltiu        s1, s6, 466
                  lbu          a6, 77(t1)
                  sltu         s9, s6, a5
                  lh           a1, 22(t1)
                  nop
                  sltiu        zero, t5, 535
                  lbu          s5, 50(t1)
                  sw           a0, -100(t1)
                  xori         a6, t6, -835
                  sb           t1, -71(t1)
                  sll          s4, ra, t4
                  xor          s0, s3, s5
                  srai         t4, ra, 11
                  srli         a2, a7, 26
                  addi         s6, s9, 855
                  sw           s10, -72(t1)
                  ori          s10, s11, -1187
                  lbu          t6, 129(t1)
                  xor          a5, t2, a6
                  andi         zero, a2, 400
                  srai         gp, s11, 3
                  lb           s6, -231(t1)
                  and          t0, t0, t6
                  ori          gp, a2, 837
                  lb           a7, -83(t1)
                  slli         s8, a5, 29
                  add          a2, t3, ra
                  lbu          s3, -28(t1) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_1+1715 #start riscv_load_store_rand_instr_stream_2
                  lhu          a5, 3(a7)
                  lb           t6, 49(a7)
                  ori          s2, s6, 51
                  lbu          zero, -22(a7)
                  sra          s4, t5, t5
                  ori          s7, gp, 1193
                  sltu         s6, a6, a2
                  slt          s8, zero, t5
                  lb           s5, -44(a7)
                  lbu          a3, -49(a7)
                  sll          a1, s9, s1
                  lb           t1, 8(a7)
                  auipc        t3, 654542
                  sh           s0, 47(a7)
                  lhu          s7, 53(a7)
                  lb           s0, 12(a7)
                  sh           t0, 43(a7)
                  lb           s0, 33(a7)
                  sub          s5, tp, s5
                  slt          a4, t1, s6
                  sw           s0, -43(a7)
                  lb           t1, -34(a7)
                  lh           s2, 5(a7)
                  sb           s7, -17(a7)
                  lb           s10, -17(a7)
                  or           s4, a1, zero
                  sb           s10, 56(a7)
                  lb           s0, -62(a7)
                  sb           t4, 21(a7)
                  sh           a4, -29(a7)
                  sb           s0, 61(a7) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_0+518 #start riscv_load_store_hazard_instr_stream_4
                  add          gp, t3, a2
                  lhu          s7, -476(t0)
                  lb           t6, -476(t0)
                  sra          s6, a6, a2
                  lb           s4, -476(t0)
                  lhu          s7, -476(t0)
                  lhu          a4, -476(t0)
                  sb           s11, -476(t0)
                  sb           s10, -476(t0)
                  sb           ra, -476(t0)
                  sh           a6, -476(t0)
                  sb           a3, -476(t0)
                  sltiu        ra, s5, -905
                  sh           a3, -476(t0)
                  lh           t6, -476(t0)
                  lh           s0, -476(t0)
                  sub          s9, s6, gp
                  lb           s10, -476(t0) #end riscv_load_store_hazard_instr_stream_4
                  la           s10, region_1+690 #start load_store_instr_stream_2
                  la           gp, region_1+1361 #start load_store_instr_stream_1
                  la           a2, region_1+530 #start load_store_instr_stream_0
                  lb           s0, 392(s10)
                  lbu          t0, -215(s10)
                  la           a6, region_1+1467 #start load_store_instr_stream_3
                  sh           s5, -33(a6)
                  lhu          t2, -957(gp)
                  lb           zero, -1142(gp)
                  lb           t0, -200(a6)
                  lb           s3, -48(a2)
                  lb           a5, -460(gp)
                  lhu          t1, -260(s10)
                  lbu          a4, -615(gp)
                  lh           t6, -145(a6)
                  lb           t0, -213(a2)
                  sb           s10, -1159(gp)
                  lh           sp, -90(a2)
                  lh           s2, -209(a6)
                  sb           a4, -209(a2)
                  lb           t4, 188(gp)
                  sh           s8, 188(s10)
                  sb           s11, 110(gp)
                  sb           s0, -177(a2)
                  lbu          ra, 706(s10)
                  lbu          s5, -630(gp)
                  lb           a7, 203(a6)
                  lh           s2, 39(a6)
                  lhu          s4, -207(a6)
                  lb           s7, -20(a6)
                  lb           a1, 242(a2)
                  lbu          a3, 243(s10)
                  lb           tp, 11(a6)
                  sb           t4, -75(a2)
                  lhu          a3, -113(a6) #end load_store_instr_stream_3
                  sw           s7, 139(gp) #end load_store_instr_stream_1
                  sb           s3, 397(s10) #end load_store_instr_stream_2
                  lhu          s2, 180(a2)
                  sb           s0, 248(a2)
                  sb           a0, 133(a2) #end load_store_instr_stream_0
                  la           s10, region_1+1913 #start riscv_load_store_rand_instr_stream_0
                  sh           a6, -643(s10)
                  lbu          t0, -1414(s10)
                  lb           gp, -900(s10)
                  srl          s4, s2, s11
                  slt          s8, s9, sp
                  slli         sp, t1, 26
                  xori         a6, a1, -1444
                  lbu          t2, -798(s10)
                  and          tp, gp, a0
                  lbu          s7, -1122(s10)
                  auipc        s1, 376393
                  lui          s5, 377172
                  or           s2, s8, a0
                  sw           s5, -1129(s10)
                  lbu          a5, -228(s10)
                  sltiu        a5, s10, -1083
                  lbu          s2, -1303(s10)
                  auipc        s6, 567679
                  sh           t2, -1883(s10)
                  sb           t5, -258(s10)
                  lb           tp, -526(s10)
                  lhu          s1, -981(s10)
                  lb           t0, -1720(s10)
                  and          zero, t0, t4
                  slt          s8, t2, s11
                  lui          t3, 45856
                  srli         s7, sp, 18
                  srli         a7, s0, 21
                  sb           a1, -392(s10)
                  lbu          a5, -684(s10)
                  srl          gp, a3, s4
                  sh           s5, -785(s10)
                  slti         tp, s10, 1205
                  lb           t2, -1856(s10)
                  sll          a5, gp, s11
                  lbu          t6, -1794(s10)
                  lbu          s2, -66(s10)
                  sb           s9, -1700(s10)
                  sltu         a7, t1, zero
                  lbu          s0, -1386(s10)
                  lbu          a2, -566(s10)
                  lb           ra, -1135(s10)
                  sltiu        t2, a7, 1107
                  srli         zero, a0, 1
                  lb           s2, -976(s10)
                  lbu          tp, -1006(s10)
                  lb           s6, -1352(s10)
                  lhu          s6, -929(s10) #end riscv_load_store_rand_instr_stream_0
                  slli         ra, ra, 26
                  xori         a1, a6, 1503
                  or           zero, t1, s5
                  sll          a5, a3, t3
                  lui          sp, 54360
                  blt          a4, a0, 9f
                  srl          t2, gp, a4
                  auipc        s3, 175201
                  ori          s4, s2, -909
9:                bgeu         s10, t1, 11f
                  bgeu         t3, a7, 11f
11:               nop
                  blt          a3, s8, 21f
                  auipc        s8, 503993
                  sra          s1, a3, t6
                  bgeu         a2, t5, 24f
                  bge          t5, s3, 24f
                  slti         t4, s7, -621
                  slti         s8, a7, -910
                  lui          s10, 453301
                  ori          gp, s2, -1006
21:               blt          zero, a3, 38f
                  beq          s3, s0, 35f
                  lui          a3, 514489
24:               andi         s7, s8, 781
                  bne          a1, t5, 27f
                  sltiu        s6, t6, 1505
27:               add          gp, s5, t3
                  srai         tp, t3, 18
                  bgeu         gp, a4, 33f
                  srl          t3, s5, t4
                  slt          s7, a4, sp
                  bne          a0, a0, 38f
33:               srli         sp, a2, 11
                  and          t4, tp, s6
35:               srl          s3, t2, t5
                  slti         t0, s1, -135
                  sra          s1, t2, s10
38:               bge          t3, s8, 39f
39:               slli         sp, s2, 26
                  add          a3, s3, s8
                  sub          zero, a2, tp
                  bne          s8, s7, 51f
                  bltu         a7, t1, 58f
                  or           a2, ra, s0
                  addi         s6, a5, -348
                  slli         s6, s0, 1
                  sltu         s6, s2, a1
                  beq          sp, s4, 66f
                  slli         t4, a4, 4
                  ori          s3, a1, -866
51:               slti         a4, a4, -1265
                  add          s1, t1, s11
                  srl          t1, a0, s10
                  or           s2, a2, s5
                  addi         s2, t0, 1190
                  addi         s2, a6, -1778
                  blt          a6, s2, 69f
58:               bne          s1, t1, 77f
                  addi         s6, s10, -856
                  auipc        s3, 385262
                  bltu         s5, s11, 65f
                  slli         t2, s8, 16
                  la           a1, region_0+1783 #start load_store_instr_stream_2
                  lbu          s6, -241(a1)
                  la           sp, region_0+1886 #start load_store_instr_stream_1
                  lbu          t3, -423(sp)
                  lb           s2, 96(a1)
                  sb           zero, 23(a1)
                  la           t1, region_0+1369 #start load_store_instr_stream_0
                  sh           s9, 19(t1)
                  lh           s4, -21(a1)
                  sh           a2, -73(a1)
                  lb           s5, -3(t1)
                  lbu          a3, 56(a1)
                  lb           tp, -1604(sp)
                  lbu          s1, -282(sp)
                  lb           s0, 204(a1)
                  lb           t3, -174(a1)
                  lbu          a4, -48(a1)
                  sb           a2, -22(t1)
                  lhu          s4, -1050(sp)
                  lb           t6, 53(a1) #end load_store_instr_stream_2
                  lb           t0, -647(sp) #end load_store_instr_stream_1
                  sb           s7, -7(t1)
                  sb           s9, -64(t1) #end load_store_instr_stream_0
                  and          s6, s1, sp
                  srli         s0, sp, 16
65:               add          t6, a5, s6
66:               sub          s7, t6, a6
                  beq          s6, s0, 76f
                  bne          sp, s6, 82f
69:               nop
                  sltu         tp, s1, s11
                  ori          tp, a4, 19
                  beq          a3, s1, 92f
                  sltiu        tp, s2, -688
                  andi         sp, a3, -1092
                  auipc        a2, 87972
76:               slt          zero, s11, s5
77:               blt          s0, a5, 86f
                  beq          t0, gp, 87f
                  sll          s5, t5, ra
                  sll          s3, a0, s1
                  slli         s10, a6, 8
82:               slti         a2, a2, 1929
                  sltiu        s9, sp, -1145
                  and          s4, s3, s9
                  srai         s4, a5, 4
86:               slt          a4, a5, a0
87:               lui          s1, 915759
                  bgeu         s3, a3, 103f
                  xori         sp, s9, -982
                  bge          s10, s5, 97f
                  beq          gp, t1, 108f
92:               bltu         t6, s4, 99f
                  slli         s8, a1, 5
                  bne          s8, t3, 113f
                  srai         s8, tp, 31
                  bne          zero, zero, 106f
97:               andi         a7, s8, -97
                  sltu         t6, t3, gp
99:               sub          s4, s11, a3
                  ori          tp, s5, -1811
                  or           t0, gp, ra
                  addi         s0, gp, -2018
103:              sltiu        tp, s11, -46
                  srli         s4, a6, 17
                  addi         s8, s5, -1679
106:              beq          tp, s0, 120f
                  sll          a4, gp, s1
108:              srli         gp, a4, 29
                  bge          s6, ra, 124f
                  addi         a6, t6, 267
                  slli         s7, s6, 12
                  auipc        s7, 688120
113:              bge          sp, a7, 115f
                  sub          t3, ra, s9
115:              srl          a1, t3, s1
                  sltiu        t4, a6, 1185
                  or           s7, t2, zero
                  slti         t4, a3, -926
                  srl          a3, s9, gp
120:              sll          a3, a4, s0
                  andi         a6, t3, 1482
                  andi         s10, s7, -1092
                  ori          a1, t2, 1904
124:              andi         s10, s7, -1875
                  beq          t6, s0, 138f
                  addi         t2, s0, 1763
                  ori          a6, a7, 363
                  ori          a3, a5, -1155
                  xori         s0, s3, -1434
                  add          s4, s11, a7
                  sltiu        s9, s4, -1207
                  srl          s8, s0, a6
                  auipc        a4, 222295
                  slli         t0, s1, 21
                  la           a3, sub_1
                  sra          t0, s1, a2
                  sra          s1, t2, s9
                  nop
                  addi         a3, a3, -178
                  sub          s8, s7, s8
                  srli         s0, a3, 2
                  slti         s4, s3, 919
                  lui          s4, 288205
main_j1:          jalr         ra, a3, 178 #jump main -> sub_1
                  xor          s7, s7, a3
                  bge          s1, s7, 148f
                  slti         s5, s10, -27
138:              slli         gp, a3, 16
                  beq          sp, a1, 143f
                  xori         s0, t3, -197
                  beq          s4, s6, 150f
                  ori          t3, a4, -1940
143:              blt          a5, ra, 153f
                  slt          zero, s10, a5
                  srli         s3, s10, 13
                  slt          s1, a6, s10
                  bge          ra, t5, 155f
148:              nop
                  addi         s4, gp, -399
150:              srli         a1, t1, 10
                  addi         a4, a5, -295
                  bge          s3, ra, 161f
153:              sltiu        s2, s10, 211
                  or           t6, t0, s11
155:              addi         tp, a5, -1163
                  slli         a4, zero, 3
                  andi         s3, t5, 1746
                  sll          a5, gp, s11
                  sll          a2, s5, t4
                  addi         t0, a3, -1113
161:              srai         a2, s1, 27
                  sll          s5, s5, a5
                  slli         s10, s3, 15
                  slti         s1, gp, 1721
                  lui          s0, 760065
                  nop
                  bne          a4, t4, 181f
                  srli         a3, gp, 8
                  sltiu        a4, tp, -1156
                  slti         s1, a3, 1711
                  bltu         s1, a2, 175f
                  addi         s9, gp, -562
                  bgeu         t0, a4, 192f
                  slli         t2, tp, 2
175:              slli         t3, tp, 21
                  or           s6, s8, a7
                  xor          s10, a1, t4
                  xori         s7, s7, 1949
                  srl          s3, sp, t3
                  bne          a5, sp, 189f
181:              addi         s6, s3, 950
                  auipc        s7, 899394
                  srl          s7, t0, s8
                  srai         t6, sp, 29
                  auipc        s5, 216502
                  blt          s3, a2, 204f
                  auipc        sp, 980382
                  slt          s8, a6, s0
189:              andi         s10, a6, -54
                  lui          s8, 535628
                  slli         sp, a0, 8
192:              sub          s3, zero, a0
                  sra          s3, t2, t6
                  slli         t3, a2, 5
                  sll          s10, tp, s1
                  andi         s9, s1, -1418
                  srl          s5, t3, s0
                  bltu         s9, s6, 212f
                  and          s5, a7, a3
                  ori          a3, s2, 1954
                  sra          s6, a4, a5
                  add          t2, s3, s4
                  blt          s7, t4, 218f
204:              bne          a1, gp, 224f
                  blt          a0, s6, 222f
                  srli         a3, a7, 22
                  sra          s8, s2, s3
                  srli         zero, s3, 22
                  xori         sp, a6, 988
                  auipc        t0, 928620
                  sltu         s1, a2, a6
212:              slt          a4, t2, t1
                  or           t2, s5, t3
                  sub          a4, a4, gp
                  and          a6, a7, t0
                  sltu         a7, gp, t2
                  sll          a3, s2, s6
218:              sub          s5, zero, a5
                  slti         gp, a0, 268
                  sra          a2, a1, tp
                  addi         s9, t6, 40
222:              andi         t6, s8, 652
                  add          s5, s10, gp
224:              beq          a2, s2, 225f
225:              or           t4, s2, sp
                  ori          sp, s0, 227
                  slt          t2, t4, t2
                  srl          zero, t5, a5
                  bltu         t1, s1, 238f
                  slti         t3, a6, 1080
                  andi         ra, s4, -1951
                  bge          a6, s5, 239f
                  srai         gp, zero, 23
                  sra          s2, a3, s0
                  xor          s8, s6, a0
                  and          a7, zero, s1
                  addi         t4, t1, -1517
238:              sltu         a5, t6, a7
239:              nop
                  nop
                  sltu         s6, t1, s5
                  slti         t3, s3, -1389
                  beq          t6, t5, 252f
                  auipc        t4, 926383
                  xor          s9, s6, a1
                  bne          a3, a4, 248f
                  nop
248:              beq          s1, a6, 255f
                  xori         s6, s1, 922
                  slli         s6, gp, 18
                  slti         s10, sp, 1777
252:              auipc        t4, 28042
                  or           s6, t1, sp
                  bltu         s3, a6, 258f
255:              srli         a6, s5, 0
                  xori         s8, a1, 615
                  srl          a3, a4, a0
258:              srl          s2, t4, s4
                  andi         a1, s6, 353
                  xori         s2, s8, 961
                  srl          s5, s11, s4
                  slti         s9, a1, -1726
                  sra          s1, s4, t0
                  lui          a7, 381414
                  addi         t3, s8, 79
                  addi         a6, t0, -343
                  lui          a1, 493849
                  add          t2, t5, s9
                  addi         t2, s4, -902
                  xor          t6, s4, s0
                  sltu         a3, t1, gp
                  sll          sp, a5, a4
                  and          a6, s3, s0
                  bltu         s3, a1, 280f
                  bltu         a1, a0, 294f
                  blt          zero, s9, 293f
                  srli         zero, s10, 11
                  bgeu         a7, t2, 287f
                  blt          zero, s3, 280f
280:              sll          tp, s6, s4
                  blt          a7, zero, 283f
                  sra          zero, s5, a7
283:              sub          a1, a3, s5
                  sltu         ra, s11, a2
                  beq          s8, t4, 292f
                  auipc        sp, 114252
287:              srli         s1, zero, 11
                  sub          a4, t4, a1
                  or           a7, t1, tp
                  ori          s4, t1, 1477
                  bltu         t6, s2, 305f
292:              sltu         s7, zero, t6
293:              bge          t5, s1, 295f
294:              and          tp, gp, s2
295:              sltu         s8, t6, s7
                  bgeu         t0, t0, 308f
                  sltiu        s8, a3, -14
                  add          t2, s11, a5
                  sub          s1, s5, s0
                  blt          a1, s2, 304f
                  sra          a2, t2, s7
                  beq          s3, s11, 311f
                  srli         t6, s10, 18
304:              bne          s0, s7, 321f
305:              bge          zero, s3, 325f
                  bltu         zero, zero, 314f
                  srai         t4, a6, 24
308:              lui          a2, 786317
                  beq          a5, s10, 324f
                  lui          t6, 79586
311:              slli         s10, a6, 23
                  xori         s1, t6, -1608
                  la           t2, region_0+766 #start load_store_instr_stream_2
                  la           a5, region_0+998 #start load_store_instr_stream_1
                  sb           s9, -31(a5)
                  la           tp, region_0+1310 #start load_store_instr_stream_4
                  lhu          s6, -656(t2)
                  la           a7, region_0+1021 #start load_store_instr_stream_0
                  sb           t1, -61(tp)
                  lb           s10, -42(a5)
                  lb           a3, 16(a7)
                  lbu          a6, -193(tp)
                  lb           s4, 151(tp)
                  lbu          a6, -25(a5)
                  sw           t1, -674(t2)
                  la           s3, region_0+307 #start load_store_instr_stream_3
                  sh           a7, 11(a7)
                  lbu          s4, 45(tp)
                  sb           t2, -61(s3)
                  lbu          gp, -114(s3)
                  lb           t1, 1222(t2)
                  lbu          a1, 43(a5)
                  lbu          s5, -142(s3)
                  lh           t1, -304(t2)
                  sw           a4, -42(tp)
                  lb           s2, -654(t2)
                  lb           ra, 2(a7)
                  lb           t3, 205(tp)
                  lb           a3, 219(s3)
                  sb           zero, 733(t2)
                  sb           t2, 104(s3)
                  lbu          gp, -239(t2)
                  lbu          ra, -131(tp) #end load_store_instr_stream_4
                  lbu          s10, -63(a5)
                  lw           gp, 1190(t2)
                  lb           s10, 177(s3)
                  lb           s8, 1053(t2)
                  lbu          a3, 47(a5)
                  lbu          s8, -31(t2) #end load_store_instr_stream_2
                  lbu          zero, 0(a7)
                  lbu          s10, 30(a5) #end load_store_instr_stream_1
                  lb           a2, 226(s3) #end load_store_instr_stream_3
                  sw           a0, -1(a7) #end load_store_instr_stream_0
                  xor          t2, a4, s7
314:              xori         gp, t0, 877
                  sra          s5, s5, s10
                  srl          s7, a3, t2
                  xor          s5, t1, s5
                  bne          sp, a2, 331f
                  sra          t4, t1, a3
                  bltu         s1, a0, 329f
321:              sltu         a2, a0, t1
                  srli         t1, a0, 30
                  xori         t4, t3, -320
324:              ori          s7, s5, -1055
325:              slti         t4, tp, -155
                  slli         s4, s10, 4
                  and          t3, s6, zero
                  ori          a7, sp, -557
329:              addi         s2, a3, -1119
                  and          ra, s11, s1
331:              sub          s9, t4, s5
                  srli         t1, a0, 1
                  or           t1, a6, zero
                  slli         a5, s11, 1
                  bltu         t5, s4, 344f
                  beq          ra, tp, 354f
                  nop
                  bge          t5, tp, 357f
                  addi         s7, t4, 1810
                  bne          s4, s8, 357f
                  beq          a6, a5, 351f
                  bltu         s10, gp, 349f
                  andi         s8, s9, -708
344:              ori          t2, t1, 1140
                  blt          a1, s4, 349f
                  and          a4, t0, s8
                  srl          zero, s4, s9
                  lui          t6, 371818
349:              srl          zero, s4, s4
                  sll          ra, t1, sp
351:              addi         t0, s3, 1532
                  ori          tp, a6, 646
                  bne          a5, t3, 362f
354:              sltiu        s5, t4, 360
                  ori          s1, a1, 178
                  sltiu        t1, zero, -463
357:              add          s6, t6, s0
                  andi         a7, a6, 1575
                  srl          s9, s1, s10
                  bgeu         ra, tp, 366f
                  andi         s2, zero, 1419
362:              auipc        t1, 442311
                  addi         s8, tp, 151
                  bgeu         s4, a7, 383f
                  sra          a2, s6, s7
366:              or           s6, s1, tp
                  add          s3, a2, t5
                  add          a4, s2, s1
                  addi         s5, s10, 1404
                  auipc        s5, 403426
                  bltu         s0, sp, 380f
                  beq          ra, s7, 376f
                  bgeu         a5, s1, 382f
                  xor          a6, a0, s0
                  and          t0, t3, a4
376:              or           s4, s2, s1
                  blt          a0, a4, 392f
                  sub          s4, gp, t6
                  auipc        a1, 786850
380:              slli         s8, t0, 2
                  sltu         ra, s11, t3
382:              srli         s0, a1, 17
383:              sra          a1, s9, zero
                  slti         s3, a0, -1738
                  or           s4, t0, t2
                  xor          a3, gp, t6
                  bne          t0, a0, 401f
                  bltu         t2, a7, 389f
389:              bltu         t4, s2, 390f
390:              beq          sp, zero, 408f
                  bne          a0, s10, 404f
392:              and          a5, a4, t3
                  bgeu         s10, s7, 403f
                  ori          ra, a7, 732
                  srli         s6, s7, 6
                  nop
                  addi         s5, s5, -96
                  bgeu         t5, tp, 417f
                  add          a1, t3, s7
                  ori          a5, s1, -37
401:              sll          a1, s3, s0
                  bge          a1, zero, 406f
403:              bge          s3, a4, 404f
404:              slti         gp, t0, 1871
                  srai         tp, s5, 28
406:              xori         zero, s10, -331
                  slt          s9, a5, tp
408:              addi         gp, t5, 164
                  blt          s8, t1, 418f
                  srai         t4, s4, 17
                  beq          s8, zero, 430f
                  srai         a1, a2, 5
                  slt          s0, s3, t5
                  andi         t3, a5, -1908
                  blt          t3, a4, 432f
                  bltu         s0, tp, 436f
417:              auipc        s9, 663538
418:              srl          s3, s1, s1
                  slti         t0, t0, -566
                  andi         a5, s5, -256
                  sltu         zero, s7, a7
                  bge          a7, ra, 426f
                  slti         a6, s10, -685
                  and          a4, s1, a2
                  bne          a4, a7, 437f
426:              auipc        t0, 624717
                  xori         s5, s11, -1810
                  andi         a5, t5, -16
                  ori          s9, ra, 1252
430:              xor          t0, t6, s4
                  addi         sp, s4, 1626
432:              beq          a7, s9, 433f
433:              and          a7, s5, a7
                  bgeu         t6, a0, 441f
                  or           s5, a7, t5
436:              sub          a4, ra, sp
437:              addi         a1, a6, -1305
                  ori          t6, s1, -677
                  bltu         s8, s2, 454f
                  addi         a6, a1, 290
441:              beq          t0, sp, 449f
                  beq          s2, t0, 456f
                  ori          t3, ra, -612
                  sra          t0, ra, ra
                  srl          a2, sp, s1
                  sra          zero, tp, s8
                  or           tp, s2, s9
                  slt          s4, t3, zero
449:              srl          s9, s6, s9
                  lui          a6, 658120
                  bge          s10, s4, 460f
                  sltu         a5, a3, t1
                  bgeu         a0, s1, 468f
454:              xori         zero, a7, -1813
                  beq          a3, gp, 462f
456:              slli         t4, sp, 3
                  sltiu        ra, a7, 552
                  bge          a6, a3, 464f
                  sll          s0, a3, s1
460:              srai         t3, a6, 14
                  bne          s1, s4, 463f
462:              xor          s8, s5, s0
463:              sltiu        t6, t1, 1605
464:              beq          a7, a6, 473f
                  srl          a4, s5, t1
                  bne          t0, a5, 475f
                  xori         s4, a5, -1755
468:              lui          t0, 944744
                  srai         a6, s7, 14
                  nop
                  slli         s7, sp, 10
                  sub          t0, a1, a2
473:              or           t6, s5, t3
                  andi         s4, s10, -131
475:              srl          s6, t6, a7
                  sltu         a6, sp, s2
                  bge          gp, a1, 491f
                  or           sp, a4, a4
                  srai         a6, a7, 6
                  sll          t4, t3, zero
                  sltiu        s3, t3, -1213
                  slli         s6, t1, 30
                  bltu         t0, zero, 492f
                  xor          t3, a4, t5
                  or           a2, t0, a6
                  bgeu         s5, t3, 503f
                  nop
                  srai         s8, s7, 2
                  srli         s10, t5, 12
                  ori          s3, s6, 1460
491:              slli         a7, s7, 24
492:              sra          s2, a6, s1
                  add          zero, a4, gp
                  addi         gp, zero, 1589
                  xori         s8, tp, 1493
                  add          a4, s2, t4
                  ori          t6, t1, 921
                  beq          a2, a7, 502f
                  xor          a1, s11, s2
                  ori          t1, a6, 205
                  slt          a4, s2, tp
502:              slt          a5, s11, ra
503:              and          a5, t3, a7
                  srli         a7, a5, 14
                  xori         a6, s4, -2035
                  slli         t2, t0, 26
                  sub          s10, s0, a2
                  slli         a6, t6, 23
                  srli         a5, a7, 15
                  lui          s2, 925883
                  slt          a3, a1, tp
                  bltu         s6, tp, 514f
                  add          t0, t3, ra
514:              ori          a1, t2, 650
                  lui          a7, 413169
                  sra          s3, s6, s8
                  addi         zero, tp, 1199
                  srli         s5, a2, 5
                  nop
                  beq          s4, a7, 529f
                  add          t3, s9, t2
                  addi         a1, s5, 242
                  srli         a5, gp, 10
                  sltu         s7, s4, s7
                  bne          sp, t0, 526f
526:              auipc        ra, 639215
                  sltiu        t0, t1, 979
                  sll          a3, sp, s5
529:              ori          a6, t0, 1665
                  auipc        a3, 391810
                  and          s10, s7, a1
                  beq          s6, s8, 536f
                  sra          a4, a5, s4
                  slt          s0, ra, a3
                  ori          s10, s8, 2023
536:              sltiu        s1, t2, -1894
                  add          t2, sp, sp
                  ori          t1, a2, 161
                  add          t2, ra, t2
                  blt          a0, s4, 542f
                  and          a6, s7, s2
542:              beq          s8, t5, 556f
                  srl          a3, gp, a3
                  add          s2, t5, a5
                  and          a3, t4, s7
                  xor          a7, a3, t0
                  srai         a6, sp, 9
                  slt          t6, s1, a0
                  sra          a6, a7, s10
                  slti         a1, a2, -1264
                  sltu         s9, a3, tp
                  sltu         s5, s1, s8
                  addi         zero, ra, -1903
                  nop
                  sub          ra, t3, s1
556:              auipc        a5, 120384
                  and          a4, s3, t6
                  bltu         t3, s0, 571f
                  beq          a0, t5, 579f
                  add          t0, t5, s1
                  bne          s6, s4, 578f
                  blt          a3, t3, 564f
                  sub          s6, s3, t4
564:              slti         a7, a1, 606
                  ori          t1, s9, -955
                  addi         t6, t4, -1674
                  sltiu        s10, gp, 1277
                  lui          t0, 562486
                  sub          ra, s4, t3
                  sltiu        a5, s3, 650
571:              add          tp, s6, a6
                  auipc        a2, 755807
                  la           a3, region_1+1054 #start load_store_instr_stream_0
                  lhu          t2, -8(a3)
                  lbu          t6, -2(a3)
                  la           s6, region_1+1637 #start load_store_instr_stream_1
                  sh           a7, -12(a3)
                  lhu          s1, -31(s6)
                  lw           ra, 2(a3)
                  lb           a1, 29(s6)
                  lb           s9, 8(s6)
                  sh           s8, -21(s6)
                  lh           s3, 39(s6)
                  sb           a6, 13(a3)
                  lb           s8, -15(a3)
                  lbu          t3, -10(a3)
                  lb           s8, -45(s6)
                  lb           s9, -9(a3)
                  lb           a4, -3(s6)
                  lbu          zero, 36(s6) #end load_store_instr_stream_1
                  sb           s0, 5(a3) #end load_store_instr_stream_0
                  slt          s1, s4, a6
                  xor          t3, a0, t4
                  xor          t0, s4, s7
                  add          a1, t6, ra
                  bne          tp, a5, 596f
578:              slli         a6, gp, 27
579:              bne          a7, s9, 588f
                  sltu         s10, a6, t3
                  sub          ra, a2, s4
                  sra          a6, t4, a7
                  sltiu        s7, s8, 1159
                  slli         sp, a1, 10
                  add          t1, a6, t5
                  nop
                  bne          s3, t2, 604f
588:              lui          t2, 817576
                  and          a6, s10, zero
                  sub          s4, t5, s9
                  nop
                  and          t3, t4, t4
                  andi         a5, t6, 809
                  and          a4, s8, s3
                  bgeu         t3, a5, 599f
596:              lui          t4, 1009269
                  add          t2, s6, s9
                  sll          s5, s2, a7
599:              slti         sp, a2, -505
                  beq          s11, t2, 614f
                  blt          s10, a3, 608f
                  sltu         t3, s7, a1
                  sra          a3, a1, a0
604:              bltu         t6, a6, 622f
                  slt          s8, a0, s5
                  ori          tp, s7, 1578
                  sub          a2, a0, a7
608:              nop
                  and          t6, s4, s4
                  xor          s2, s11, a3
                  blt          a2, s4, 620f
                  or           sp, a5, sp
                  sltiu        s2, s11, -1485
614:              sra          t2, s6, a7
                  or           a7, t0, s9
                  bne          a5, a5, 626f
                  srli         s3, tp, 23
                  slli         tp, s9, 2
                  la           s5, region_1+1516 #start load_store_instr_stream_1
                  la           s3, region_1+1738 #start load_store_instr_stream_0
                  la           s2, region_1+1783 #start load_store_instr_stream_2
                  sb           t4, 55(s5)
                  lhu          tp, -4(s3)
                  sb           a7, -62(s2)
                  sb           sp, -5(s5)
                  lhu          a3, 89(s2)
                  lb           tp, -6(s3)
                  lb           s8, -78(s2)
                  lbu          s4, 176(s2)
                  sb           t6, 35(s5)
                  sb           s11, 13(s3)
                  sb           a2, 100(s2)
                  lb           t0, -53(s5)
                  sb           t5, -10(s3)
                  sb           a5, 3(s3)
                  lbu          t4, 114(s2)
                  lb           ra, -242(s2) #end load_store_instr_stream_2
                  sb           s7, 31(s5)
                  sb           a2, -13(s3)
                  lbu          t2, 15(s3)
                  lb           s1, -15(s5)
                  sb           s7, 15(s3)
                  lb           a5, -46(s5) #end load_store_instr_stream_1
                  lbu          s6, -4(s3) #end load_store_instr_stream_0
                  and          t6, t2, s10
620:              sub          a5, a7, s11
                  srli         t0, gp, 30
622:              srai         s9, zero, 7
                  add          a3, s8, t6
                  sra          s8, s0, a0
                  sltiu        a1, s9, 1136
626:              srli         s5, a7, 0
                  slli         t0, s4, 22
                  or           t6, t0, t3
                  bltu         s4, t6, 630f
630:              blt          s11, a2, 638f
                  sub          a3, a4, s9
                  or           a7, t2, a2
                  sltu         s6, a2, s7
                  bne          s7, t3, 649f
                  sra          a5, s4, t3
                  blt          zero, gp, 645f
                  srli         s0, sp, 20
638:              sltiu        s4, a6, -2022
                  bltu         t1, t2, 654f
                  and          zero, ra, t6
                  and          a7, a3, a5
                  srl          s3, a2, a4
                  auipc        tp, 744315
                  auipc        a3, 306973
645:              srai         gp, s8, 22
                  slli         t4, a0, 23
                  auipc        gp, 952704
                  blt          t0, sp, 657f
649:              xori         sp, s3, -693
                  bge          s4, s7, 657f
                  sra          s6, s0, s4
                  addi         a1, s1, -1235
                  slti         a4, t0, 2037
654:              bgeu         a6, s1, 663f
                  bltu         s10, ra, 674f
                  bge          a6, s10, 660f
657:              bgeu         s9, sp, 666f
                  bne          sp, sp, 670f
                  srli         a3, a3, 2
660:              bne          tp, s11, 666f
                  lui          s9, 314883
                  xor          t1, t6, s2
663:              auipc        gp, 366138
                  slti         s10, t3, -78
                  beq          t5, s2, 682f
666:              auipc        a5, 75977
                  slt          a2, t3, s11
                  bgeu         s1, ra, 669f
669:              sll          s7, s9, s2
670:              sra          s4, t6, t4
                  slt          s2, tp, t5
                  bgeu         a2, a1, 681f
                  addi         tp, t0, -1819
674:              bltu         a7, s9, 683f
                  slt          tp, s0, a1
                  sltu         a6, tp, s2
                  xori         a4, t6, -768
                  and          s4, s1, a1
                  addi         a6, t5, 1274
                  xori         s9, t5, -233
681:              add          s8, a2, t4
682:              sra          gp, a4, s11
683:              sltiu        gp, tp, -336
                  srai         t0, a7, 3
                  addi         t0, t3, 144
                  nop
                  srl          s5, sp, s4
                  sll          t4, a6, s0
                  sll          s2, a1, s8
                  or           s6, t1, a7
                  xori         s10, s11, -1167
                  bne          s11, tp, 693f
693:              and          a4, s11, s0
                  sltiu        a7, a6, 624
                  sra          t4, gp, t6
                  srai         t4, s2, 27
                  addi         t4, s11, -305
                  bltu         a4, s11, 713f
                  sub          s3, a3, gp
                  sll          s2, a2, t1
                  beq          t1, s11, 720f
                  slti         a6, a3, -1547
                  or           t6, s3, a2
                  addi         a1, s6, 78
                  sub          s9, s4, t0
                  andi         tp, sp, 260
                  slli         tp, t2, 12
                  addi         t6, a3, 277
                  add          s0, ra, s11
                  sra          t4, s2, tp
                  slt          s6, a0, s11
                  sra          s8, s6, sp
713:              beq          s4, s6, 720f
                  auipc        a6, 48958
                  add          s6, sp, ra
                  sub          a2, s9, s6
                  bltu         s4, s0, 729f
                  bltu         a3, s11, 733f
                  or           t0, t6, s4
720:              xor          t0, t4, s2
                  and          s7, s10, a0
                  xori         a5, gp, -409
                  bgeu         s0, a1, 740f
                  sltu         a3, zero, a1
                  slli         a4, s7, 11
                  beq          s2, a5, 728f
                  add          s1, s8, t6
728:              lui          ra, 30589
729:              or           zero, a2, s8
                  blt          t0, s11, 739f
                  and          t3, t2, a7
                  srai         s2, s3, 2
733:              xor          a3, s7, t0
                  sltiu        t3, tp, 1274
                  blt          gp, s8, 741f
                  slti         s6, a5, 1660
                  beq          a0, t2, 741f
                  bne          t1, a7, 741f
739:              xor          s4, s8, s4
740:              lui          s10, 89993
741:              slli         s1, a1, 18
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        t0, t2, -775
                  sltu         s10, gp, s10
                  bge          s9, s3, sub_2_stack_p
sub_2_stack_p:    addi         t5, t5, -48
                  srai         s9, s5, 18
                  xor          a3, t3, s6
                  srai         a3, ra, 2
                  srli         a4, t6, 3
                  lui          t3, 354450
                  sw           ra, 4(t5)
                  sll          s9, t4, t0
                  sll          s6, s0, s1
                  addi         zero, s2, 670
                  addi         s7, a1, -888
                  sll          t6, s7, s8
                  bltu         t0, s11, 5f
5:                sltu         t0, t2, s10
                  ori          t3, t2, 78
                  sll          s10, s6, tp
                  lui          a5, 253690
                  xori         s8, a6, 1676
                  slt          s2, t1, a7
                  lui          ra, 144459
                  add          a7, s3, a7
                  bge          s10, s1, 21f
                  nop
                  sub          a5, s10, t1
                  lui          s3, 1013168
                  srli         s7, s10, 15
                  sll          s9, t6, a6
                  xor          a3, t2, a6
                  sll          sp, t6, ra
21:               and          a6, ra, t3
                  xori         t1, zero, -1715
                  nop
                  srai         t0, t1, 26
                  add          sp, a5, s9
                  add          s4, ra, s0
                  nop
                  bgeu         s11, a6, 35f
                  srl          a6, s9, s6
                  add          s7, tp, t0
                  slt          a3, s0, t6
                  sltu         zero, t4, ra
                  bltu         ra, s4, 40f
                  slli         s3, t4, 6
35:               sll          s2, zero, t5
                  sra          t6, a3, s2
                  lui          t2, 116167
                  addi         s0, t2, -49
                  or           t0, a3, s11
40:               xori         t0, a3, 1168
                  auipc        s8, 614648
                  srl          a6, t0, gp
                  auipc        s5, 777476
                  sub          s3, t1, s10
                  sltiu        s0, t5, 372
                  srl          s8, s10, t4
                  bge          tp, a1, 66f
                  xor          t2, t2, a7
                  bgeu         s0, a4, 68f
                  srl          s10, a5, a7
                  bge          s4, s9, 71f
                  bltu         t3, s7, 69f
                  and          t4, a7, s11
                  lui          s8, 895905
                  nop
                  nop
                  lui          ra, 705976
                  nop
                  sltiu        t6, tp, 552
                  or           a6, t2, a3
                  or           t6, s7, t4
                  andi         zero, t4, 952
                  ori          a1, s4, -1652
                  slt          t2, t0, s7
                  bge          s4, s10, 70f
66:               auipc        s1, 184350
                  bne          s1, ra, 73f
68:               addi         s0, a6, -1675
69:               xori         s7, s6, -421
70:               bltu         t6, sp, 72f
71:               bltu         s3, a5, 77f
72:               sub          s6, s0, sp
73:               sub          ra, s2, a2
                  beq          gp, s2, 77f
                  add          s4, s8, sp
                  xor          s8, s5, ra
77:               slli         s4, a3, 27
                  nop
                  slli         a5, ra, 6
                  ori          t4, tp, -1251
                  slti         t0, zero, 675
                  slli         t2, a3, 6
                  xori         zero, zero, -299
                  srai         t2, t1, 26
                  nop
                  slti         sp, s1, 314
                  xor          ra, a3, s9
                  bltu         t2, s11, 90f
                  or           s4, s11, a4
90:               addi         s3, gp, -11
                  srli         a6, s10, 2
                  sltu         t3, a5, a5
                  add          a3, t5, sp
                  srl          a2, a7, a0
                  lw           ra, 4(t5)
                  ori          s10, a6, 1161
                  addi         t5, t5, 48
                  sub          a2, s7, t3
110:              addi x9, x1, 1
110:              jalr x9, x9, 0
sub_1:            sltu         t4, a5, t5
                  sltiu        a4, t6, -1720
                  or           t0, t4, a2
                  bne          s3, s3, sub_1_stack_p
                  auipc        sp, 249769
sub_1_stack_p:    addi         t5, t5, -28
                  srli         sp, a3, 23
                  sw           ra, 4(t5)
                  ori          a4, a4, 1410
                  and          a6, s11, t2
                  slti         tp, a1, -825
                  andi         s0, sp, -1079
                  sub          gp, s8, s7
                  sra          a7, gp, a4
                  auipc        s10, 1020485
                  or           s0, a3, a1
                  bgeu         s1, s7, sub_1_j2 #branch to jump instr
                  addi         s8, s5, 472
                  slt          a1, s2, s5
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srli         a4, s3, 9
                  bgeu         a6, a3, sub_1_j3 #branch to jump instr
                  srai         t4, s0, 0
                  sub          ra, s5, t2
                  auipc        a2, 928950
                  srli         s10, s9, 12
                  nop
                  andi         s1, tp, -647
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           sp, region_0+1629 #start riscv_load_store_hazard_instr_stream_0
                  add          s0, s4, s7
                  sh           zero, 17(sp)
                  sltiu        t0, s0, -493
                  auipc        s6, 582951
                  sh           a2, 17(sp)
                  lh           a4, 17(sp)
                  lb           a3, 17(sp)
                  lh           s2, 17(sp)
                  sb           s11, 17(sp)
                  lbu          s4, 17(sp)
                  andi         gp, a6, -1678
                  sh           t1, 17(sp)
                  lhu          zero, 17(sp)
                  lhu          gp, 17(sp)
                  sh           sp, 17(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a4, region_0+1008 #start load_store_instr_stream_1
                  la           a3, region_0+1407 #start load_store_instr_stream_2
                  lb           s10, 153(a4)
                  lw           a1, 524(a4)
                  sb           t1, -753(a4)
                  la           s5, region_0+1326 #start load_store_instr_stream_0
                  lbu          a1, -805(a4)
                  sb           s3, -16(a3)
                  sh           t6, 382(a4)
                  lb           a5, -893(a4)
                  lbu          s7, -1287(s5)
                  sb           tp, -669(s5)
                  sb           s8, -15(a3)
                  sb           t6, 199(a4)
                  sh           a7, 1(a3)
                  lh           s4, 540(s5)
                  lhu          s0, 592(a4)
                  lbu          tp, 672(a4)
                  lb           t1, 4(a3)
                  sb           s5, -480(s5)
                  sb           t6, 197(a4) #end load_store_instr_stream_1
                  lbu          a6, -11(a3) #end load_store_instr_stream_2
                  lb           s3, -528(s5) #end load_store_instr_stream_0
                  la           t1, region_0+681 #start riscv_load_store_rand_instr_stream_0
                  lb           s7, -121(t1)
                  auipc        s0, 550381
                  lbu          t2, 14(t1)
                  sltu         t0, sp, s5
                  lw           ra, -157(t1)
                  slli         a5, a7, 2
                  xori         gp, a6, -1421
                  lb           t0, -1(t1)
                  lhu          zero, -79(t1)
                  lb           gp, -197(t1)
                  sb           s0, -161(t1)
                  ori          s4, a5, 213
                  lb           t2, 31(t1)
                  lb           a1, 62(t1)
                  slli         a5, t6, 17
                  lbu          a4, 110(t1)
                  xori         s6, a4, 836
                  slt          a6, s5, sp
                  sh           a1, 213(t1)
                  lb           a3, -54(t1)
                  lb           sp, 135(t1)
                  srai         s10, a3, 15
                  sltu         s0, s10, s5
                  lb           s8, -137(t1)
                  sh           s0, 165(t1)
                  lhu          a6, 245(t1)
                  auipc        a1, 794362
                  sub          s9, t1, s0
                  lh           s7, 129(t1)
                  lbu          ra, 62(t1)
                  lb           a4, -134(t1)
                  srai         t6, a6, 20
                  sw           a2, 167(t1)
                  andi         t2, s7, -1843
                  srl          t2, t6, sp
                  srl          s7, s4, s7
                  lbu          s9, 228(t1)
                  ori          s7, s2, 1002
                  lb           zero, 64(t1)
                  lb           s7, -108(t1)
                  lh           t6, 183(t1)
                  sb           tp, 99(t1)
                  lb           gp, 249(t1)
                  lw           s8, 167(t1)
                  sb           a0, 146(t1) #end riscv_load_store_rand_instr_stream_0
                  add          s1, zero, s10
                  or           a1, t5, s8
                  add          s10, s2, s11
                  slli         s9, tp, 8
                  nop
                  bne          s2, s11, 21f
                  ori          s4, a0, 173
                  beq          sp, s1, 15f
                  auipc        tp, 622478
                  or           s7, a6, a1
                  add          t1, a3, s11
                  sub          zero, sp, s1
                  andi         s5, s4, -1299
                  sltiu        t0, a0, 1392
                  xori         gp, t1, 1128
15:               addi         a7, t1, 970
                  sltiu        s9, zero, 85
                  beq          s4, t3, 31f
                  sltu         s3, t6, t1
                  sub          a4, a1, s2
                  xor          s7, a4, t2
21:               add          gp, s5, t0
                  nop
                  bltu         a0, s9, 35f
                  bne          s3, tp, 26f
                  sltiu        zero, s2, -1323
26:               auipc        s6, 1034629
                  blt          s11, a5, 29f
                  sll          a3, t0, t0
29:               nop
                  bge          s0, s1, 40f
31:               bge          s1, t4, 49f
                  xor          zero, t0, a0
                  slti         s7, zero, -1562
                  and          s10, s6, a7
35:               xor          a2, tp, s9
                  slli         s4, a2, 1
                  and          a7, s9, s2
                  srai         tp, s11, 4
                  sub          t6, ra, s4
40:               bge          s7, s9, 54f
                  lui          s2, 970304
                  xori         a3, s3, 1872
                  srai         a2, s3, 25
                  srai         s7, a3, 25
                  slli         s8, s10, 7
                  slli         zero, t6, 3
                  sub          s9, t5, a1
                  blt          s7, a0, 62f
49:               blt          s9, s6, 54f
                  bltu         gp, s7, 54f
                  bge          s0, s0, 64f
                  blt          s3, t6, 61f
                  sltu         ra, a7, sp
54:               slt          a6, s1, a5
                  ori          sp, s3, 119
                  add          s7, a2, s10
                  slti         t1, s10, -885
                  auipc        a4, 249780
                  lui          gp, 243809
                  and          a1, s0, s9
61:               auipc        s1, 626428
62:               xor          s5, s8, t0
                  auipc        a7, 894943
64:               and          t1, tp, t6
                  sub          s8, t4, s11
                  srai         s10, s8, 31
                  lui          gp, 522853
                  sra          t1, s8, a0
                  bltu         s2, t5, 77f
                  ori          s4, t1, 1950
                  srl          a1, s4, t4
                  and          s4, t5, a1
                  beq          a2, ra, 92f
                  srl          t0, a7, s2
                  beq          s4, a0, 79f
                  sltu         a6, a0, s1
77:               sltiu        a7, ra, 1540
                  bltu         a2, t6, 88f
79:               srl          a2, s6, t1
                  sll          t1, t3, t5
                  srl          t1, a4, s11
                  sltu         s7, t0, s5
                  sub          a5, a0, t3
                  bgeu         s8, s0, 85f
85:               slli         s3, s5, 24
                  ori          a4, s4, 346
                  addi         a7, s2, 180
88:               nop
                  srai         s3, s5, 10
                  xori         s1, s0, 241
                  slt          s1, a0, s4
92:               sra          zero, a1, t3
                  nop
                  sll          s2, s11, a2
                  slti         t4, a0, -1027
                  bgeu         a5, zero, 105f
                  addi         s2, s0, -1508
                  ori          sp, s11, -418
                  slt          t3, a3, a1
                  sltu         gp, s8, a5
                  bge          s9, a2, 121f
                  sll          s0, s1, s1
                  and          s0, s7, s11
                  blt          a4, a3, 124f
105:              bgeu         s9, zero, 122f
                  slt          a7, a6, s2
                  nop
                  bgeu         s8, s11, 125f
                  add          a7, t2, s11
                  andi         t3, a2, 2012
                  auipc        t0, 119427
                  andi         a7, gp, -772
                  xor          s7, t2, a6
                  add          gp, zero, s11
                  lui          a4, 318501
                  srli         t2, t4, 15
                  andi         s4, t5, -1503
                  and          a4, t3, s5
                  slti         s3, ra, 1102
                  srl          a5, t4, a1
121:              srai         s7, s7, 29
122:              xor          s3, a0, a2
                  bltu         s6, a3, 138f
124:              srai         s0, a3, 30
125:              bgeu         zero, s3, 130f
                  auipc        s8, 460315
                  sltiu        a7, s6, -928
                  bltu         s0, s1, 136f
                  sub          s4, a3, a4
130:              bgeu         t6, a2, 143f
                  bgeu         a5, s3, 148f
                  sra          s4, t3, s6
                  sltiu        s7, t1, -757
                  sub          a4, a1, gp
                  or           gp, zero, s8
136:              add          s0, s10, a2
                  bgeu         t6, t0, 145f
138:              andi         s4, s4, -1871
                  slt          zero, s2, s11
                  srl          t1, t6, s10
                  sra          t2, s11, zero
                  bne          t5, a2, 143f
143:              nop
                  bltu         s1, t1, 162f
145:              blt          a4, a5, 154f
                  sub          s2, zero, t1
                  sltu         s0, s2, a6
148:              bne          a0, t6, 164f
                  add          a5, s5, t0
                  sltu         a2, s9, a3
                  lui          a4, 386590
                  sra          a3, sp, gp
                  slt          a4, a0, s1
154:              sltiu        s5, t6, -1188
                  xor          s6, tp, s10
                  auipc        zero, 875030
                  blt          gp, s7, 166f
                  ori          a3, s5, -1023
                  sra          a3, a3, s9
                  andi         s9, a1, 572
                  slti         a2, s11, 983
162:              slli         t3, s5, 16
                  sll          t1, t0, a0
164:              auipc        s2, 251083
                  andi         a6, s8, 1536
166:              ori          s7, s8, -1073
                  lw           ra, 4(t5)
                  or           s3, t2, ra
                  ori          s3, s6, -459
                  addi         t5, t5, 28
                  lui          t6, 794992
286:              addi x29, x1, 1
286:              jalr x29, x29, 0
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
.word 0xfbcbcbc4, 0x0dddd8d8, 0x92188ef5, 0x55ab9c6c, 0xcafba48b, 0x334184cf, 0x3c7d62c7, 0x7d651242
.word 0x0124de9a, 0x0b67c0aa, 0x939b6901, 0x2a698b37, 0x8c1f9a4d, 0x664d95d9, 0x793adc73, 0xc3ef3d25
.word 0x2bfb059b, 0x52030158, 0xa3d1ced5, 0x466c2e50, 0x2e5bf4da, 0x4a1bdcac, 0x62957ba0, 0xddbc28f4
.word 0xb50a3ea0, 0x2391eb93, 0x0e5d1d0c, 0xb2b3d594, 0x2f0c2116, 0x9158753f, 0x2181cf00, 0xff1ece05
.word 0xe3b6a0f6, 0xfb346b4e, 0x9a0f7833, 0xcb950022, 0x50ec66f9, 0x7690b97c, 0xfbd2791f, 0x4949779e
.word 0x2833ba2e, 0x6dadcdac, 0x50925b1f, 0x8514215d, 0x8b90fd38, 0x642453f8, 0xa492f334, 0x26acacc1
.word 0xd832e032, 0xacc226ac, 0x7aa48188, 0x880780bb, 0xd898cf1d, 0xc30b4571, 0x53825d33, 0x39dfe2b2
.word 0x810c9c33, 0xb10c0893, 0x91618718, 0xec914d21, 0x7dc628d3, 0x5cce659a, 0x6f1becd6, 0xd96741c3
.word 0xf3ce5c10, 0xb31e664f, 0x44671a07, 0x21834e91, 0xaf6401d9, 0x2791bf21, 0x4f44bc39, 0x4eb1a5c9
.word 0x40ca3dc3, 0xf5ebc3bd, 0x77d3c3a0, 0x7df77571, 0x29703bc6, 0x821a9c81, 0x9eefe861, 0x03e0f93b
.word 0x6f9651ff, 0x1ce4c9d5, 0xc9b80b66, 0x53bdb5a2, 0x7eaa9020, 0x58e33340, 0xfed0c25c, 0x7193bb62
.word 0xe27acf1b, 0xb62bbe26, 0x1a71ee3a, 0x32a8beef, 0x24ec9c94, 0x968c4817, 0x4291174f, 0x6ec05cf1
.word 0x871afa13, 0xd13f2b71, 0x66c54cc7, 0x2e690a9a, 0xc6c2faa7, 0x414e3ddb, 0x625c0836, 0x80c369c9
.word 0x5d819e37, 0x130622ec, 0xc99914c6, 0xf1058b26, 0xc75fc0cc, 0x6f461088, 0xf7dabce1, 0x961dc383
.word 0x544e0cd5, 0x2f366e8f, 0x44d24710, 0x16a6214e, 0xaf3f725c, 0x83127491, 0xd3ca5818, 0xdbc2b053
.word 0xfcbfafc1, 0xf28d9a7b, 0x243f152c, 0xdb497326, 0x38d6c3a0, 0x12eb58ca, 0x46e6d8b1, 0x4d185bff
.word 0xfeda9084, 0x09fdfe1a, 0xabccd5e1, 0x5b0fdfb6, 0x5adf0904, 0xcc675381, 0x6b21ca26, 0xb09031ef
.word 0x03fa9028, 0x36585dc4, 0x9cca8926, 0xb4d85294, 0x53f9eb74, 0x2a91d406, 0xe6bc47e7, 0x42ce37d0
.word 0x1203f6da, 0x6cdf337c, 0x416e943e, 0xbc556c1f, 0x23e82895, 0xa246865b, 0xebf26f35, 0x53fd6cbe
.word 0x907b84e0, 0x0f909757, 0xf7a2d3ec, 0xa7f481fb, 0xb4351b5e, 0xb8fcb0c5, 0x82d43aae, 0x26f731ea
.word 0xc8e40350, 0x20dbae98, 0x34b40912, 0x797ad597, 0x10814fdb, 0xe24ed1c0, 0x6978653b, 0x185c6328
.word 0xf8e81389, 0x05787e61, 0x0f8baea8, 0xb593f776, 0xa8f9507a, 0x7cfc6be2, 0x9e868c20, 0x5d9952e3
.word 0x6ff00f50, 0x873a6b81, 0xc80c6eb1, 0x40083133, 0x079843f3, 0xa761a1ed, 0x8acab959, 0x9c9e1001
.word 0x01dda7e8, 0x927af7c9, 0x7489b430, 0x80e1e404, 0x4319903c, 0x96346042, 0xa1b05f95, 0x42ed9fde
.word 0x442328d0, 0x7d431c2b, 0x2e2e3435, 0x165b242f, 0xbafdd99a, 0x99dd5c3f, 0x50698b56, 0xcbcc04a9
.word 0xc4302bf7, 0x07d4ab17, 0x506973f1, 0x645b88c0, 0xf4759815, 0x6488cd67, 0xbfd59598, 0xe3484c6d
.word 0x374d7d86, 0x0f437ff2, 0x6e95e647, 0x485fcf5e, 0x78e5391c, 0xfa91c142, 0x771c8829, 0x23cde9dc
.word 0x0bd57b04, 0x4d46fba2, 0x9047de30, 0xc1948e18, 0x7dd24c09, 0x800bf979, 0xae154923, 0x17a4b167
.word 0xb5277570, 0x9b25f795, 0x1bd4c3b9, 0x02c02f6e, 0x6930d13d, 0xfb875a5c, 0xdea50ffd, 0xd054dee7
.word 0xd0a07268, 0xeccb4dd4, 0x394c1c9e, 0x7b58bedb, 0x08dd8b05, 0xf37c61d8, 0xf65c4976, 0x11496c59
.word 0xb1d436dc, 0x3397099c, 0xbb942792, 0x98a36b67, 0x7deb4c40, 0xdddbfff3, 0xd7b04833, 0x7fe8ac4a
.word 0x29a25bed, 0xb8ad75cd, 0x3b1b9849, 0x3b01ecdf, 0x6037b7b1, 0xb493365e, 0x0ae29f4b, 0x2aeb38f3
.word 0x11dc0c45, 0x8f8e30a1, 0xf88869b4, 0xf3a6792f, 0xdacdeabc, 0x2919e7a0, 0x13821276, 0xcbf9a20a
.word 0x6b0f0039, 0x39aa07ea, 0x0e4b0612, 0xaa74d5ae, 0xe63f63d9, 0xe9ae10c4, 0x2e55dd06, 0x0c956174
.word 0x5e522997, 0x641eb8ef, 0x2cbab0b7, 0x40b44af8, 0x3acf9700, 0xaa68e755, 0xc90918ec, 0x73a573f6
.word 0x124f7290, 0x9bcfc7f7, 0x080c20a6, 0x917ea2d3, 0xa4372bab, 0x8de8c130, 0xfc56c783, 0x3b184db7
.word 0x7c6a1650, 0x35914376, 0xae7dae0f, 0xd371dbe4, 0x110d310a, 0xd646f3fa, 0x9c0c34b8, 0x1bfda4e2
.word 0xd832e283, 0x7182f12b, 0xf1f9c006, 0x27724a90, 0x55cf7576, 0x523819b7, 0xf1ad569a, 0x7342db12
.word 0x405879a5, 0x9cb7c04b, 0xfd944e25, 0xac0ca6c2, 0x75661f54, 0xdd8013fe, 0x7f646391, 0xda7460f0
.word 0x4f369a34, 0x8b7b234d, 0x0d5ae42c, 0x99014097, 0xe833159d, 0xe223cabe, 0x90d64127, 0xf9e0647e
.word 0xcac321ad, 0xb5118e4c, 0xc8f3ef93, 0xe760b0fa, 0x0d23a56a, 0x40503b79, 0x7e874a79, 0x7bf4df4b
.word 0x76bc518f, 0x41edcfc6, 0xd006bd36, 0xb8218721, 0xdea0dc99, 0x5958d155, 0x1f3d3aaf, 0xecc29825
.word 0x06d7e6c5, 0x6367af2f, 0x562238b6, 0x9752aea6, 0x8530b139, 0xe55bcd7e, 0x10137d05, 0xcb08510a
.word 0x432b39fc, 0xb5a39df9, 0x43a3f587, 0x7e6ef25b, 0xf4ae564b, 0xe2085ebd, 0x67b0bcbf, 0xc85c9d5d
.word 0x259ef306, 0xcfb58a61, 0x425c4ee1, 0xd286ab64, 0xca1574b7, 0x2a200531, 0x68f32914, 0xfb57c468
.word 0x2831d990, 0x69483577, 0xcb406138, 0xa98a4352, 0xda74c5c0, 0x7df89c1e, 0xceba55e4, 0x4883fa74
.word 0x73e68c4e, 0x16d69e7f, 0x0431547d, 0x6ccafc83, 0xbda02564, 0x0540432a, 0x74e395bc, 0x481292f8
.word 0xf7d69301, 0x9f3851b1, 0x0c203da1, 0x203310dd, 0xe6c0ca5b, 0xa361df20, 0x8ab08151, 0x080cf0ac
.word 0xd175d42b, 0x4fbfcebf, 0x00736123, 0xa6dbcf7d, 0x8d02db2f, 0x9bcd7013, 0x981e610c, 0x427564ad
.word 0x978c20d1, 0x05809bdd, 0x0a02b077, 0x72cbd4d6, 0xd8da3e92, 0x9e491af2, 0x59162ba9, 0x241f1c13
.word 0xe948fe30, 0xf70e233e, 0x83aca15c, 0x1c4f2fcb, 0xaaf03332, 0x4b5b1446, 0x5654de59, 0xbbc3e808
.word 0xd9f2634f, 0x431217f3, 0x92c0e07d, 0x3e85033f, 0xfc3d0145, 0x00399e02, 0xbf55d7b8, 0x37c8b9f6
.word 0x450097bd, 0x30ccab72, 0x705dd3e6, 0xb819c955, 0xee73a84c, 0x098556f2, 0xc26cb26c, 0x65d3eb74
.word 0x6abd617d, 0xcc7aadfd, 0x9817f641, 0x356730e3, 0x4de90e1e, 0xb050301a, 0xc46678b4, 0x62b751a6
.word 0xb77ef2ef, 0xcac47c1f, 0x1944803e, 0x7469ed42, 0x703b5f97, 0xa7ef3f4d, 0x321de7b3, 0x0231a8ef
.word 0xf9a308db, 0x5db25067, 0xc12f0058, 0xb1cc0505, 0xb46017e9, 0xbd8b14fa, 0x4501afd8, 0x3f267676
.word 0x0847b7f2, 0x95ffcc72, 0xb0cb2303, 0x997afdc3, 0x062796f7, 0xe920f174, 0xb4a5a2e5, 0xa440f0c7
.word 0x53a19576, 0xbda54e13, 0xc6ac5d6c, 0x20463d66, 0xf4ae2888, 0xf8fca5a5, 0x85df6cf9, 0x1361fc0c
.word 0x7d0b2469, 0x9e1f04e7, 0x9e95d276, 0xd008a48e, 0x6fcc539b, 0x9a51fd95, 0x72de9499, 0x350efec9
.word 0x3f6963d6, 0xb13f3fd9, 0x6007d195, 0xe5e3bf07, 0x21ee9722, 0x5d59d06c, 0xb1722081, 0x08ae7f78
.word 0x0ddfe323, 0xeb0515c6, 0x6787f488, 0x26ed08b5, 0x3e185944, 0x8fbe0417, 0x9230e994, 0x3e13843e
.word 0x1e5d55a4, 0x35080cfe, 0xbd6137b3, 0xfee0b8ee, 0x65887537, 0x54e3f300, 0x260449cd, 0xf08d4abf
.word 0xf548e116, 0x0ed6096f, 0xde891148, 0x49c57745
.section .region_1,"aw",@progbits;
region_1:
.word 0xe107a45a, 0x0010071e, 0x61cdd31e, 0x96a7a909, 0x55b46840, 0x3f1a4d53, 0xcee7ce4c, 0x31df2c57
.word 0x6d64f130, 0x1862d71f, 0x37635fdc, 0x3fc4a0da, 0x96a7db7f, 0xaf9266ff, 0xce3be6cd, 0xc5c2516b
.word 0x3b915cee, 0xc11af425, 0x51f40e3b, 0xb632521c, 0xe39231e8, 0x2c5735f7, 0xbec5a420, 0x1e0ad5c5
.word 0x89c64bf2, 0x710c0f2f, 0x5fd60281, 0x19ae54ba, 0xd8b3bbcb, 0x01df858e, 0x5b6c3356, 0x2e725326
.word 0xa1f63500, 0x881bccd5, 0x7d4396ca, 0x90992401, 0x06f338ac, 0xa1e45ad5, 0xbdd975a3, 0x1a261274
.word 0x6e4b1034, 0xb19a80ab, 0x28e3e891, 0x8cc16ba2, 0x175e6f03, 0xc94f9c45, 0x26204885, 0x862f05b9
.word 0xb45f0073, 0x2a6c4f70, 0xf1031105, 0x38cc7b44, 0x7a7b3ae3, 0x8f1974ff, 0x212a7f53, 0xde0e8c94
.word 0xef30de92, 0xa4dfaf33, 0x5031ab4a, 0x5d9b525f, 0x39f12eb4, 0x85107a20, 0xed2a86ed, 0x636b4585
.word 0x0de00914, 0xc26ac053, 0xaf78be52, 0x74c4176b, 0x820dacf8, 0x71277929, 0x1f592f31, 0x75d3dc56
.word 0x73be34dd, 0x2d289750, 0x199fbe1c, 0x396abe28, 0xa637ac54, 0x130626c9, 0xc27ca238, 0xd9206565
.word 0xb898ef1c, 0x50d9d156, 0x16ca0e89, 0x6aa61e02, 0xc76c02a6, 0x802fabcf, 0x4f943d45, 0x7c03ed3b
.word 0xf3781756, 0x11a66a28, 0x2bbb6567, 0x19e413d7, 0x7f7d7e42, 0xed20cf94, 0xb8f7a1b0, 0x526baf31
.word 0x27c2047d, 0xa6acc468, 0xa2ae0e13, 0xeb3baa67, 0xa9e6b61a, 0x09d3c3bf, 0xac290e95, 0x445281bd
.word 0x471d3701, 0xa1c92479, 0x8bcacd86, 0xb3c598b0, 0xa93ade3c, 0x85441586, 0x8beb1c2f, 0xa18c4466
.word 0x17db288f, 0x52816661, 0xad1363f7, 0x0a97beeb, 0x80ab7f15, 0x05ed95e4, 0x1b1a98d9, 0xad8c7935
.word 0x35605135, 0x54eeffba, 0x7d2ae46f, 0x536dd18e, 0x1b3f1887, 0x7cb3fcd4, 0xe25ec458, 0x5e02e755
.word 0x88fdc922, 0x1ca30393, 0x1f6d3256, 0x4cacde7f, 0xc1e320ab, 0x630b036f, 0x1b09cfb5, 0x52f32cf5
.word 0xfe19ba2c, 0x0ae713c0, 0x560b42b5, 0x14976a86, 0x008114a4, 0xe82fe54f, 0x5f4581f7, 0x956e65ce
.word 0xaee7a134, 0x9265e999, 0xb792853f, 0xce95b841, 0xd3f4b307, 0x31a75a37, 0xd360ced2, 0xcbba0861
.word 0xca10a947, 0x73490a18, 0xcd28cf45, 0x566d8be1, 0xd6016bc7, 0x8706c50d, 0x0d15065f, 0xebd95a56
.word 0x24aaaea0, 0x9ff5a3ef, 0xad96e459, 0xce71b6e8, 0x3487d533, 0x3c2fd93a, 0x99b8463d, 0x6ac28f75
.word 0xd574d510, 0x271bec53, 0xf6ca049c, 0x06d91462, 0x53740e04, 0x95c572fc, 0xeb320e6c, 0x92b4b35a
.word 0x0fda9a89, 0x863f8ee3, 0xc55e3b9b, 0xac6bce58, 0xec9b5492, 0x6245aba3, 0xfd369dcc, 0x6b2e0a38
.word 0x08111a8c, 0xb18a1cf3, 0x0cc3c160, 0x285ea66c, 0x417dad50, 0x07602f61, 0xb0450658, 0x6fc8e36c
.word 0x9b9d7924, 0x3929284e, 0xa1668d41, 0xeaf07746, 0x7d607633, 0x052db896, 0x83e6e4ab, 0xd6ec4559
.word 0x3909cc13, 0xe1eb8f7b, 0xd16ea9d1, 0x8859b015, 0x69acdf46, 0x84744c2d, 0x72514094, 0xe1eb6f1a
.word 0xf9420866, 0xd42014a4, 0x75e7a335, 0x4d98197d, 0xe4415234, 0x92cc0383, 0xba0c443c, 0x3e2ca68d
.word 0x16908423, 0x4c168c11, 0x02779d26, 0x25193e57, 0x49affb21, 0xaeca7533, 0x2265193c, 0x1c8566ea
.word 0x36b82e06, 0x7b27aaa4, 0x15976107, 0x8adaa3d3, 0x4d5509ae, 0x0d3b0672, 0xea7d2c32, 0xe8f2f252
.word 0x01f9c9ac, 0xa995dcd8, 0xc4da55c3, 0xf901b56e, 0x1a227589, 0xd98c5d0c, 0xeea2039e, 0xff1f8b04
.word 0xd10f5afd, 0x8a9249bd, 0xb9d169d2, 0xa79e4d58, 0xbbaccbb7, 0x58d119cc, 0xe2dfe3bf, 0x85e30857
.word 0x0da5b2fb, 0x9e142133, 0x9108e1d9, 0x8e89cd3b, 0x836ee90a, 0x11ae366f, 0xb51c0b0b, 0x2f9b7457
.word 0x844f8bba, 0x2c69d18d, 0x5ccb79de, 0xfe24f63b, 0xb66bb539, 0x88abb372, 0x3f1d613f, 0x893b3ed2
.word 0xe8e4e27b, 0x550f8828, 0xdf2b27fd, 0xd9b5e3eb, 0x91d61ce4, 0x91a4cbed, 0x71984f53, 0xc6714315
.word 0xd0629ee2, 0x38aa6e43, 0x5c4ff288, 0x86fdb535, 0x9501f824, 0x233968a9, 0xe31df9d7, 0x27c5093c
.word 0x66261f68, 0x9eacc4bc, 0xa88caf3c, 0x334ce125, 0x8e6964a7, 0x74ccece3, 0xabb5e369, 0x2e6a548d
.word 0xad836a39, 0xd8a2fee5, 0x5255b583, 0xba8114c0, 0xeec71c12, 0x4ed22fc6, 0x7cf67499, 0xbbb13456
.word 0x88473361, 0x1543ae40, 0xb3a0f06c, 0x5230dd62, 0x38016ceb, 0x3eee2017, 0x0137795e, 0x7cc7875d
.word 0xafbff351, 0xc9e3b4c7, 0x0873d05f, 0xc1c472dd, 0x73939a0d, 0x38a0052e, 0xf9551346, 0xc72885f3
.word 0xc7b22c64, 0x4e2fcebf, 0xf47a7679, 0x7a5e095c, 0x4ffa3007, 0xe1de0b5b, 0x0b37604f, 0x7fc08a2a
.word 0x726bf50f, 0xbc3eefac, 0xaab4a89d, 0x8eb1e230, 0xba6a6395, 0x3a5f3096, 0xea2725a1, 0xde93f409
.word 0x6d1b9c81, 0xdf8ca443, 0xcd03cfd3, 0xbcf735f9, 0xfb9d73ae, 0xd19e8733, 0x67e398e4, 0x0613bc0b
.word 0x2a3c2b70, 0xfbe72f52, 0x915ef119, 0x22c78fba, 0x376c6b4c, 0xdb4cf328, 0x21d6cc73, 0xb4964cc6
.word 0x3c72590f, 0x55b6ea40, 0xf76cd7d9, 0xaaba1d92, 0x810b3015, 0x1ded4c08, 0x4c927d62, 0x0e47869a
.word 0x2343af66, 0xc07ebe95, 0x8de16d7b, 0x80289df9, 0x3a694c2b, 0x34d45991, 0xe6a7c389, 0x44b08432
.word 0xb4e0b8bf, 0xa2ccc204, 0xa61b69df, 0x646fc5b6, 0x11de4fb8, 0xcfb871d0, 0x852b6ec3, 0xc412b8d3
.word 0xa75755e4, 0x573968d3, 0xbf42443a, 0x348c5849, 0xc80578e2, 0xe636ffa2, 0x4874e696, 0x647e49d3
.word 0x0e2697d7, 0x815de31d, 0xf7fffd6f, 0x126af019, 0x0cece741, 0x13fcc9dd, 0x39a9bd4f, 0xe1202785
.word 0xf7b6afe3, 0xf81e1bde, 0x1943d72c, 0xf4e21c7b, 0x2465b95b, 0x6f089d5b, 0xad86ed14, 0x40fb664c
.word 0x45084c57, 0x3e06740b, 0x65aeddb1, 0x1dac9de9, 0xf0e7375e, 0x2e2fccc0, 0xdcda6e81, 0x454c0982
.word 0x4bd9a57b, 0x8233fb12, 0xcdb3158f, 0x4232820c, 0x6ade9443, 0x13b8cb16, 0x63ba84d2, 0x2efcbe05
.word 0x24efbf30, 0x2ec12f8d, 0x317d6972, 0xaf785a72, 0x7fde4c40, 0xdae7a3f6, 0x0b1bc771, 0x0d107d3f
.word 0x0dc671cf, 0x8ae5baf9, 0x0b2b30f7, 0xf299a672, 0x3888b6ee, 0xb3018aab, 0xbc54893f, 0xd0551e37
.word 0xa63b0175, 0xcdde97d4, 0xc633c1e9, 0x18e7084b, 0x147839b6, 0x68b08f9f, 0xa1554acd, 0x162db14d
.word 0x90419ebb, 0x3dd94208, 0xff62e467, 0x45318025, 0x10b64626, 0xd2e56c7b, 0x7cb772e2, 0x2262126e
.word 0xed8cf717, 0x53c3fd6f, 0x73c2df62, 0x8bce628c, 0x53df5a0d, 0xe543da8c, 0xecb64a65, 0x43bcb62c
.word 0x1deb18c5, 0x2e3ca5c8, 0x48bc5a06, 0xd455b983, 0xbbc4c861, 0xa2965bf3, 0xffd7677b, 0xe8c7dc65
.word 0x7924c033, 0xedf05da2, 0x180eb144, 0x8afe7d8b, 0x6942b0ac, 0x478fac54, 0xf421f855, 0x2ee3e595
.word 0x361b0971, 0x2b90b436, 0x431eb58a, 0x1fe61502, 0x0a277148, 0x31d2d91b, 0xd9db1efa, 0xcc5aacd1
.word 0x6d219f22, 0x9083465b, 0xc06ade9b, 0x2b5c4aa2, 0x64ecc89b, 0x6aabc8e3, 0x3519498f, 0x5499b0c3
.word 0x82cb6532, 0x4a76b777, 0xc64e8e4d, 0x6ee34d29, 0x6a166a95, 0x52f51dfc, 0x8ece9f5d, 0xf49181d1
.word 0x79f0c1cc, 0x9752cf3a, 0x68288d0e, 0x4c7c3d1a, 0x3358fced, 0x90f83ed7, 0x34438780, 0x1a860e77
.word 0x8ce193fe, 0x066f5ed1, 0x10b25d86, 0xf706d34b
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x27, x30, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x19, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x19, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x19, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x19, x8, ecall_handler
                  li x8, 0x1
                  beq x19, x8, instr_fault_handler
                  li x8, 0x5
                  beq x19, x8, load_fault_handler
                  li x8, 0x7
                  beq x19, x8, store_fault_handler
                  li x8, 0xc
                  beq x19, x8, pt_fault_handler
                  li x8, 0xd
                  beq x19, x8, pt_fault_handler
                  li x8, 0xf
                  beq x19, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
