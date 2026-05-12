.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x2, 0x5fb8390c
                  li x3, 0x7
                  li x4, 0xfc57089a
                  li x5, 0x80000000
                  li x6, 0x328c9d08
                  li x7, 0x8
                  li x8, 0x0
                  li x9, 0xf685d3d7
                  li x10, 0xd3938e97
                  li x11, 0x80000000
                  li x13, 0xb006fd27
                  li x14, 0x80000000
                  li x15, 0xfbb3f471
                  li x16, 0x3fd7f80a
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xfc60e871
                  li x20, 0xf6a05bbc
                  li x21, 0xd
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x0
                  li x26, 0x476fc7b2
                  li x27, 0xf
                  li x28, 0x56bc0b2f
                  li x29, 0xf7dbdd15
                  li x30, 0x80000000
                  li x31, 0x2c845e85
                  la x25, user_stack_end
main:             la           s4, region_1+782 #start riscv_load_store_hazard_instr_stream_0
                  lh           s7, -246(s4)
                  lh           tp, -246(s4)
                  lh           t5, 244(s4)
                  srl          t6, sp, a3
                  sltiu        t5, ra, -2036
                  and          s11, t6, sp
                  and          tp, ra, s9
                  lhu          s8, 244(s4)
                  lbu          t1, 244(s4)
                  lbu          s7, 39(s4)
                  lhu          ra, 132(s4)
                  sb           s8, -119(s4)
                  sra          s0, zero, t5
                  lbu          t4, -119(s4)
                  lbu          t4, 253(s4)
                  lb           a4, 253(s4)
                  lhu          gp, 236(s4)
                  lbu          t0, 236(s4)
                  sb           a7, -146(s4)
                  lb           s3, 233(s4)
                  lb           s3, 233(s4)
                  lb           a3, -101(s4)
                  lb           a6, -28(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+468 #start riscv_load_store_rand_instr_stream_0
                  slli         s5, a6, 13
                  andi         s2, a0, 663
                  lw           a4, -4(sp)
                  lbu          t4, -187(sp)
                  sra          t1, a0, s2
                  lhu          t3, -122(sp)
                  sh           a5, 6(sp)
                  sltu         a0, t0, s10
                  lb           ra, -199(sp)
                  lb           s4, 231(sp)
                  nop
                  auipc        t4, 540712
                  xori         s1, t4, -1495
                  nop
                  lb           ra, 142(sp)
                  lb           s0, 62(sp)
                  sltu         s8, zero, t2
                  sh           t4, -144(sp)
                  sll          s10, t1, s0
                  sltiu        s0, a3, 931
                  lw           s11, 64(sp)
                  andi         a7, a6, 429
                  sb           t2, -151(sp)
                  and          t5, a2, a2
                  ori          t3, s5, 22
                  lhu          a7, -82(sp)
                  srai         s3, s8, 16
                  sll          t1, tp, t6
                  lui          s6, 630622
                  srl          s2, t5, t5
                  or           s3, tp, a4
                  auipc        tp, 358695
                  lbu          s5, 55(sp)
                  andi         s10, a0, -1739
                  lb           a0, 8(sp)
                  sub          tp, t4, t6
                  lbu          s5, 197(sp)
                  slt          s1, a7, a5
                  xor          a4, s9, sp
                  sub          a6, a0, s10
                  or           tp, a7, s1
                  sh           s3, -166(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1912 #start load_store_instr_stream_2
                  lb           s1, -51(t3)
                  la           a3, region_0+990 #start load_store_instr_stream_1
                  lbu          a4, -26(t3)
                  lb           s5, 12(a3)
                  sb           s9, -23(t3)
                  la           s8, region_0+1951 #start load_store_instr_stream_0
                  lbu          zero, 3(a3)
                  sb           s4, 24(s8)
                  lw           a6, -59(s8)
                  sb           s1, -7(a3)
                  sb           a7, -57(t3)
                  lbu          s10, -7(a3)
                  sb           s8, 39(t3)
                  lh           a0, -14(a3) #end load_store_instr_stream_1
                  sb           t1, -29(t3)
                  sb           t6, -142(s8)
                  lbu          zero, 29(t3)
                  lbu          s6, 21(t3)
                  lb           a7, -142(s8)
                  lbu          s7, -56(t3)
                  sw           sp, -44(t3) #end load_store_instr_stream_2
                  lbu          a7, -102(s8) #end load_store_instr_stream_0
                  sll          ra, t2, s7
                  and          zero, t4, s9
                  sltu         a6, s4, s7
                  xori         a6, s6, 1656
                  bge          s5, s7, 11f
                  ori          ra, t2, 808
                  xor          gp, gp, s4
                  sub          s0, zero, a7
                  bgeu         s4, a5, 22f
                  auipc        t3, 552070
                  addi         a3, a3, 1470
11:               bge          t5, s9, 30f
                  and          s2, s0, t6
                  sltiu        s4, a2, 2013
                  and          s0, a4, s2
                  add          a5, s10, t4
                  xori         s7, s2, -825
                  blt          s7, gp, 19f
                  srai         s1, s4, 1
19:               bne          a7, s7, 37f
                  sra          gp, a4, s8
                  sltiu        t0, a1, 450
22:               addi         t3, s2, 665
                  sltu         s1, t0, s6
                  addi         t4, t3, 1626
                  sltiu        t1, s0, 267
                  slti         a6, t4, -529
                  sra          t4, zero, gp
                  bgeu         zero, s1, 36f
                  bne          a1, a2, 36f
30:               sra          sp, tp, a5
                  slti         a4, gp, 1417
                  srli         sp, a3, 15
                  nop
                  slli         s7, s4, 25
                  bne          t6, a7, 55f
36:               bltu         s1, s7, 40f
37:               or           s6, t1, s2
                  ori          a4, t6, -220
                  beq          s2, gp, 43f
40:               sll          ra, a3, t4
                  lui          t5, 896762
                  and          t6, a1, a5
43:               lui          s7, 310942
                  nop
                  beq          s5, s4, 56f
                  xori         a4, t4, 38
                  sll          t6, t3, a6
                  auipc        a0, 599703
                  sra          a4, a0, t1
                  addi         a4, ra, -1359
                  slt          gp, a7, a2
                  xor          a5, a2, t1
                  xor          s6, a2, s3
                  ori          t0, t1, 1039
55:               slli         tp, a3, 1
                  sll          t6, a5, tp
                  la           t3, sub_1
                  addi         s5, a2, 1006
                  slli         sp, s10, 22
                  or           a4, t5, s3
                  and          t1, s0, t4
                  addi         s7, gp, 774
                  addi         t3, t3, 405
                  auipc        s11, 648118
                  bge          sp, a1, main_j1 #branch to jump instr
                  sll          s5, gp, t5
main_j1:          jalr         t1, t3, -404 #jump main -> sub_1
56:               bge          a7, s2, 72f
                  sra          tp, ra, t4
                  nop
                  slli         t3, a1, 0
                  blt          sp, s7, 61f
61:               srl          s0, t5, a6
                  addi         t6, t1, 638
                  bgeu         t4, t3, 67f
                  lui          a5, 876185
                  or           a7, t4, s3
                  bge          ra, t0, 84f
67:               bne          a7, zero, 83f
                  lui          a1, 115160
                  or           a1, t0, a7
                  slli         s3, s4, 14
                  srli         s8, s0, 10
72:               sub          a4, a7, t5
                  or           t5, s3, s8
                  nop
                  add          zero, t2, ra
                  auipc        a4, 110318
                  sub          t6, s5, a5
                  srl          a0, tp, t6
                  ori          a4, a1, -770
                  sltiu        a0, s9, 692
                  or           a5, s7, a1
                  addi         t6, tp, -1896
83:               blt          t5, s8, 92f
84:               or           a1, a5, t0
                  bne          a0, s3, 87f
                  bne          a3, t0, 92f
87:               slti         a7, a2, 978
                  bge          a6, a1, 89f
89:               or           s2, t0, t6
                  bge          s1, s10, 92f
                  srli         s7, s10, 11
92:               nop
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            add          tp, a5, a4
                  blt          s5, s11, sub_2_stack_p
sub_2_stack_p:    addi         s9, s9, -28
                  ori          t6, s11, -437
                  srl          a6, sp, s6
                  slli         a6, s0, 23
                  srai         s11, s7, 2
                  srai         sp, s2, 27
                  sw           t1, 4(s9)
                  add          ra, s5, t5
                  la           sp, region_0+123 #start riscv_load_store_rand_instr_stream_1
                  sub          s0, t0, zero
                  sb           gp, 927(sp)
                  lw           s4, -47(sp)
                  sb           s10, 1719(sp)
                  nop
                  sltu         s6, s11, a4
                  lbu          a6, -11(sp)
                  srli         s2, s0, 20
                  lb           tp, 700(sp)
                  sb           s9, 916(sp)
                  lb           tp, 1284(sp)
                  lw           tp, 809(sp)
                  sb           s11, 383(sp)
                  and          s1, tp, tp
                  sltu         a3, sp, s4
                  lb           a7, 1160(sp)
                  srai         a4, t4, 23
                  lbu          t3, 1707(sp)
                  sh           s7, 277(sp)
                  nop
                  lhu          s1, 1847(sp)
                  lhu          a4, 1731(sp)
                  andi         s10, s9, 368
                  add          a4, a1, t5
                  sb           s3, 978(sp)
                  sb           s1, 416(sp)
                  andi         s6, tp, -1936
                  sb           a5, -108(sp)
                  sra          s7, s4, t1
                  lw           s5, 581(sp)
                  sltiu        a7, tp, 398
                  or           a6, t6, t3
                  slt          s6, sp, a7
                  and          s1, t1, s10
                  lb           s3, 60(sp)
                  sra          t6, zero, a1
                  sb           s4, 32(sp)
                  srai         a5, zero, 23
                  lb           a4, 807(sp)
                  lui          s10, 703852
                  addi         a4, a0, 736
                  lh           s11, 901(sp)
                  sb           a0, 1801(sp)
                  sb           a5, 1290(sp)
                  sb           s6, 146(sp)
                  lhu          s5, 333(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t1, region_1+348 #start load_store_instr_stream_1
                  la           s6, region_1+1115 #start load_store_instr_stream_0
                  la           t6, region_1+941 #start load_store_instr_stream_3
                  lb           s4, 6(t1)
                  lb           a5, -16(s6)
                  la           t5, region_1+1328 #start load_store_instr_stream_2
                  sb           s10, 43(t1)
                  sb           s7, -6(s6)
                  lb           tp, 6(t5)
                  lb           s4, 32(t1)
                  lb           s3, 108(t6)
                  lb           s7, 169(t6)
                  lbu          s5, -60(t1)
                  sb           s11, 36(t6)
                  lw           s7, -16(t5)
                  sh           zero, -62(t1)
                  sb           gp, 6(s6)
                  sb           s9, -6(t5)
                  sb           tp, 23(t1)
                  lbu          sp, -30(t6)
                  lb           sp, -15(t5)
                  sb           a4, -10(s6)
                  sb           a0, -3(t5)
                  lb           a3, 0(s6)
                  sh           a7, 0(t5) #end load_store_instr_stream_2
                  lhu          s3, -62(t1)
                  sb           t2, 47(t1)
                  lhu          s8, 1(s6)
                  lbu          a4, -13(t1)
                  sb           a7, 20(t6)
                  sb           t1, 3(s6)
                  lbu          s0, 150(t6)
                  lb           s3, -61(t1) #end load_store_instr_stream_1
                  sw           s4, -193(t6)
                  lb           t0, 9(s6)
                  lb           s2, 16(s6)
                  lb           a3, 132(t6) #end load_store_instr_stream_3
                  sb           s4, 8(s6) #end load_store_instr_stream_0
                  la           s4, region_1+1438 #start load_store_instr_stream_4
                  la           t0, region_1+708 #start load_store_instr_stream_3
                  lh           s1, 52(s4)
                  la           ra, region_1+502 #start load_store_instr_stream_1
                  lb           tp, 50(s4)
                  sb           a6, 15(t0)
                  la           s3, region_1+851 #start load_store_instr_stream_2
                  la           t6, region_1+1101 #start load_store_instr_stream_0
                  sb           a1, 780(s3)
                  sb           t2, -5(s4)
                  lb           tp, 7(t0)
                  lbu          tp, -8(t0)
                  lb           s2, -58(ra)
                  lh           sp, 39(t6)
                  lw           t3, 239(t6)
                  lb           s6, -39(ra)
                  lbu          s11, 13(t0)
                  lbu          a1, -208(s3)
                  lhu          a4, -64(s4)
                  sb           t0, 55(ra)
                  lbu          a5, 986(s3)
                  lb           zero, -78(s3)
                  sb           s4, 5(ra)
                  lb           s0, 128(t6)
                  sb           t2, -50(s4)
                  sh           sp, 2(ra)
                  lw           s8, -42(ra)
                  sb           s7, -6(t6)
                  lb           a5, -3(t0)
                  lb           tp, -253(t6)
                  lh           t3, -133(t6)
                  lbu          a6, -39(s4)
                  lbu          a6, 22(ra)
                  lb           t4, 168(t6)
                  lhu          t1, -6(t0) #end load_store_instr_stream_3
                  sb           t4, 29(s4) #end load_store_instr_stream_4
                  lb           t3, 380(s3) #end load_store_instr_stream_2
                  lb           zero, 5(ra)
                  sb           zero, 51(ra) #end load_store_instr_stream_1
                  lb           a5, 4(t6) #end load_store_instr_stream_0
                  la           t0, region_0+1142 #start load_store_instr_stream_1
                  la           a6, region_0+359 #start load_store_instr_stream_0
                  lb           t5, -112(t0)
                  lb           sp, -844(t0)
                  lw           s4, 165(a6)
                  lbu          t6, -226(a6)
                  sw           a7, -95(a6)
                  lh           a5, 554(t0)
                  lhu          t3, -29(a6)
                  lb           ra, -451(t0)
                  sb           tp, -192(a6)
                  lb           s6, 105(t0) #end load_store_instr_stream_1
                  sb           a1, -161(a6)
                  lb           a1, -6(a6) #end load_store_instr_stream_0
                  la           a0, region_0+30 #start riscv_load_store_rand_instr_stream_0
                  sb           a6, 49(a0)
                  sb           s7, -23(a0)
                  slli         s4, t2, 13
                  slt          s11, s2, s4
                  srl          t6, s0, a1
                  sb           a7, -1(a0)
                  lh           a7, 28(a0)
                  xor          a5, s3, t0
                  auipc        t4, 3112
                  sltu         a1, s0, ra
                  sb           t0, -23(a0)
                  lbu          gp, 12(a0)
                  slt          s7, a2, s11
                  srl          a4, t0, zero
                  srl          t5, zero, t0
                  sh           ra, -12(a0)
                  xori         s11, a7, 1009
                  srli         s10, a3, 3
                  sltiu        gp, sp, 1482
                  sh           ra, 28(a0)
                  sb           zero, -29(a0)
                  addi         t5, ra, 1921
                  lbu          ra, 56(a0)
                  slt          s7, s2, a2
                  add          a7, s8, zero
                  lb           a7, 59(a0)
                  sw           t4, 62(a0) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1126 #start riscv_load_store_rand_instr_stream_2
                  slti         s1, tp, -1678
                  nop
                  sltiu        s10, ra, 1280
                  sb           t0, -53(s2)
                  add          s0, s11, a5
                  sll          t3, a5, a3
                  xori         tp, a6, -1451
                  srai         a6, t2, 8
                  nop
                  sb           zero, -59(s2)
                  sh           s0, 20(s2)
                  xori         s0, s3, -1380
                  sltiu        a6, a3, -1129
                  nop
                  lb           t3, -51(s2)
                  sw           s6, 2(s2)
                  sh           s1, -60(s2)
                  lui          a7, 367541
                  lh           s5, 28(s2)
                  srli         s0, t6, 2
                  xori         s4, s0, 1296
                  xori         s0, s11, 1594
                  sltu         t6, s11, s0
                  lbu          a5, 5(s2)
                  sltiu        s3, gp, -550
                  sra          a3, s9, t6
                  auipc        s5, 654525
                  slli         s8, s1, 14
                  sll          s8, a6, s3
                  sb           t3, 53(s2)
                  sub          t4, sp, s6
                  sb           s1, 35(s2)
                  lbu          a5, -13(s2)
                  lb           t4, -17(s2)
                  lb           sp, 57(s2)
                  sh           s8, -24(s2) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_0+92 #start load_store_instr_stream_1
                  la           t1, region_0+197 #start load_store_instr_stream_0
                  lbu          zero, 120(t1)
                  la           ra, region_0+812 #start load_store_instr_stream_2
                  lbu          s0, -91(t1)
                  lb           tp, -11(t0)
                  lhu          s10, -42(ra)
                  lb           sp, -129(ra)
                  lb           t6, 245(ra)
                  lb           s6, 5(t1)
                  lb           s4, 191(ra)
                  sb           a5, -71(t0)
                  lbu          a6, 218(t1)
                  sb           s8, -1(ra)
                  lb           s10, 1371(t0)
                  lbu          s5, 15(ra)
                  sb           t2, 156(ra)
                  sh           a5, 131(t1)
                  sb           s6, 495(t0)
                  lbu          t6, 1322(t0)
                  lb           s11, -68(t1)
                  lh           a5, -18(ra)
                  sb           a3, 333(t0)
                  lbu          a5, -42(t1)
                  lbu          s10, 133(ra)
                  sb           s2, -151(t1)
                  sh           s11, 1358(t0) #end load_store_instr_stream_1
                  lb           a7, -91(ra) #end load_store_instr_stream_2
                  sw           a3, -1(t1)
                  lh           s7, 221(t1) #end load_store_instr_stream_0
                  la           s1, region_1+237 #start riscv_load_store_hazard_instr_stream_2
                  lbu          t1, 614(s1)
                  lb           s4, 301(s1)
                  slt          a0, s2, a7
                  or           zero, s9, a0
                  srli         s10, s8, 27
                  lbu          s10, 767(s1)
                  sb           sp, 767(s1)
                  sb           a5, 1208(s1)
                  lb           t1, 1465(s1)
                  sb           s1, 1465(s1)
                  sh           s4, -197(s1)
                  lh           t1, -197(s1)
                  sra          t3, ra, a4
                  lb           s2, 643(s1)
                  sw           s4, 1439(s1)
                  lh           s8, 1439(s1)
                  lh           a6, -13(s1)
                  addi         s0, s11, -883
                  lhu          ra, -13(s1)
                  lhu          t4, -195(s1) #end riscv_load_store_hazard_instr_stream_2
                  la           s6, region_0+34 #start riscv_load_store_rand_instr_stream_3
                  lb           t1, 1063(s6)
                  or           a4, t4, a6
                  lb           s7, 723(s6)
                  or           a6, s8, s11
                  sltu         t1, s1, s1
                  srl          s10, s9, t0
                  srli         s4, a4, 2
                  xor          a6, t2, s1
                  sub          tp, a4, s5
                  lb           a7, 615(s6)
                  sub          tp, s8, tp
                  xor          zero, s1, t0
                  slt          s4, a2, gp
                  lhu          a5, 490(s6)
                  or           tp, s6, a0
                  lw           s4, 1606(s6)
                  and          tp, s7, s11
                  sb           t5, 1823(s6)
                  slli         s4, t6, 21
                  lbu          t3, 1893(s6)
                  auipc        s4, 49058
                  slti         s10, a3, -1308
                  srl          a6, t6, gp
                  lbu          gp, 116(s6)
                  lb           a4, 1636(s6)
                  sltu         t0, a2, tp
                  sra          ra, t3, a3
                  lui          a4, 396505
                  lui          t6, 170471
                  lb           t0, 1176(s6)
                  xori         t6, zero, 1716
                  sb           s5, 541(s6)
                  auipc        t5, 227273
                  xori         s3, t2, 625
                  ori          t4, s7, -780
                  sb           s7, 509(s6)
                  lbu          a3, 1575(s6)
                  sb           t1, 201(s6)
                  or           s10, s10, tp
                  lb           tp, 1939(s6)
                  sltiu        t1, a7, -1283
                  sb           a7, -1(s6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1522 #start riscv_load_store_hazard_instr_stream_1
                  lb           a4, -393(sp)
                  sb           s8, -393(sp)
                  lbu          ra, -393(sp)
                  srl          s5, t0, t5
                  lui          zero, 915579
                  sb           s7, -393(sp)
                  add          ra, a2, t5
                  sb           s2, -393(sp)
                  lbu          s10, -393(sp)
                  sb           tp, -393(sp)
                  sra          t4, a0, t1
                  sll          t6, s11, a2
                  lbu          gp, -393(sp)
                  or           s2, a3, a4
                  lbu          a3, -393(sp)
                  lbu          t4, -393(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s2, region_1+148 #start riscv_load_store_hazard_instr_stream_0
                  sll          a6, a5, t5
                  lb           zero, 61(s2)
                  lb           s1, 61(s2)
                  sb           tp, 61(s2)
                  lh           s6, -30(s2)
                  sb           s4, -30(s2)
                  sh           t2, -30(s2)
                  lh           s10, -30(s2)
                  lbu          s4, -30(s2)
                  sh           zero, -30(s2)
                  lbu          zero, -30(s2)
                  lb           t6, -30(s2)
                  add          sp, s1, t3
                  lb           t4, -30(s2) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_0+1149 #start riscv_load_store_hazard_instr_stream_3
                  lh           t4, -9(s5)
                  lhu          t3, -9(s5)
                  sh           t1, -9(s5)
                  lbu          t0, -9(s5)
                  slt          s3, s3, s8
                  sw           sp, -9(s5)
                  sh           a4, -9(s5)
                  sb           a3, -9(s5)
                  lw           t1, -9(s5)
                  lh           tp, -9(s5)
                  lh           s10, -9(s5)
                  lh           s0, -9(s5)
                  lw           a0, -9(s5)
                  sw           gp, -9(s5)
                  lh           a7, -9(s5)
                  lhu          a5, -9(s5)
                  lbu          a3, -9(s5)
                  lw           s7, -9(s5)
                  sw           sp, -9(s5)
                  lb           a5, -9(s5) #end riscv_load_store_hazard_instr_stream_3
                  srl          a7, a0, sp
                  sra          tp, t2, a7
                  sra          t3, t4, s0
                  add          t0, s0, s6
                  lui          t4, 217221
                  bltu         a7, a1, 24f
                  blt          s6, s0, 18f
                  beq          tp, t0, 12f
                  nop
                  bgeu         sp, s1, 23f
                  auipc        t4, 248975
                  bgeu         a2, a3, 25f
12:               sll          s10, a6, s10
                  addi         s4, t0, 1825
                  and          s5, s4, ra
                  bltu         s5, a0, 17f
                  or           ra, t3, ra
17:               xori         s0, s4, -1319
18:               srai         s7, t2, 20
                  bltu         s6, t6, 33f
                  bne          sp, sp, 34f
                  xori         a6, sp, 377
                  sub          ra, tp, a4
23:               or           a0, a2, t3
24:               srl          a7, a5, s0
25:               addi         s4, t2, 1383
                  sra          a4, a1, a2
                  sll          s4, a6, t6
                  bgeu         s2, a4, 36f
                  slti         a4, gp, -458
                  bge          tp, s4, 48f
                  nop
                  beq          sp, a1, 41f
33:               add          zero, a4, tp
34:               blt          s6, s6, 47f
                  sub          ra, s4, a0
36:               add          t3, s0, a4
                  srai         tp, a4, 7
                  slt          s7, a1, sp
                  sub          a3, s0, s2
                  slt          a7, s6, t0
41:               srli         t5, t2, 9
                  ori          t5, t2, 1026
                  sltu         a3, tp, s3
                  bltu         s2, a4, 47f
                  srl          s7, ra, s6
                  lui          s10, 980092
47:               slti         a1, gp, 759
48:               lui          zero, 90394
                  sub          zero, s10, gp
                  auipc        a5, 226316
                  sra          s7, s3, s2
                  slti         a1, zero, -236
                  bge          a6, s4, 56f
                  add          s8, a2, t3
                  slt          s6, a5, t1
56:               slti         s10, s4, 1673
                  add          t0, t2, a4
                  sra          a4, s8, s10
                  bge          a2, a0, 64f
                  addi         s11, t3, -1335
                  srli         a1, s11, 25
                  andi         a3, s5, -543
                  blt          s10, a0, 64f
64:               xor          s4, s4, a6
                  nop
                  or           t4, s5, t3
                  srai         a3, t6, 6
                  slli         s7, a1, 27
                  sll          s6, a0, s4
                  slti         s6, zero, 977
                  sll          s7, a7, a5
                  xor          s2, a5, t2
                  blt          zero, s5, 82f
                  add          t5, ra, a2
                  bne          s6, t0, 77f
                  or           a5, s11, t6
77:               blt          s0, t0, 95f
                  sltu         a5, t4, a5
                  xor          s8, t4, s10
                  xori         s2, s5, -1856
                  auipc        s11, 626492
82:               srai         t1, zero, 1
                  xori         s7, t3, 287
                  sltiu        s0, t5, 582
                  slt          t3, s9, s6
                  srai         s2, s2, 20
                  addi         s6, t6, 997
                  xori         s2, zero, -918
                  xori         zero, zero, 1192
                  and          t1, s7, a4
                  sll          s6, zero, tp
                  nop
                  andi         s1, t0, 318
                  bne          s4, s5, 101f
95:               sltiu        gp, a0, 1200
                  bltu         tp, t1, 115f
                  blt          t3, a1, 98f
98:               sltiu        s1, s4, -912
                  nop
                  andi         gp, a0, -1719
101:              bgeu         t6, t6, 103f
                  srli         ra, s6, 0
103:              sltiu        a7, a6, 956
                  srli         ra, tp, 9
                  bltu         t5, t1, 117f
                  blt          s1, a3, 113f
                  sltiu        a3, tp, 1535
                  srli         a5, a7, 6
                  bne          gp, a3, 127f
                  sll          t4, t4, a3
                  lui          s3, 341033
                  sub          a4, a6, s8
113:              srli         s1, s9, 27
                  bltu         t5, s3, 123f
115:              bltu         s5, s2, 131f
                  and          s11, s8, sp
117:              srai         a1, zero, 20
                  blt          s1, tp, 135f
                  xor          t3, a1, t0
                  srl          a0, s8, t3
                  lui          a0, 829342
                  slt          s10, s11, s6
123:              auipc        s1, 950503
                  slt          a6, s0, a7
                  sltiu        s3, a1, -1400
                  bgeu         s10, s7, 136f
127:              and          t4, s7, s11
                  beq          t6, t0, 142f
                  sra          s10, s4, gp
                  sltu         a7, s10, t2
131:              lui          t6, 498719
                  sra          s11, tp, s1
                  slti         s5, a4, -1557
                  slli         s7, a5, 4
135:              add          gp, t2, a4
136:              slti         t1, tp, 189
                  xori         s8, a3, -1597
                  sra          zero, t1, a6
                  sub          t5, s2, s3
                  sra          s4, s0, a7
                  nop
142:              nop
                  sltu         s6, t1, t4
                  blt          t1, t6, 147f
                  srai         ra, a3, 23
                  bgeu         s4, t6, 147f
147:              bge          tp, t0, 165f
                  xori         tp, t5, -1206
                  auipc        a0, 277439
                  srli         t0, t1, 8
                  srl          a6, s7, a4
                  or           a5, s9, a5
                  blt          a0, gp, 161f
                  nop
                  xori         a6, a3, -1436
                  bgeu         t4, a4, 175f
                  lui          s3, 169064
                  addi         a5, t5, -629
                  add          s3, s2, t6
                  srli         t6, tp, 6
161:              srl          s0, t5, a1
                  bltu         t4, t3, 167f
                  srai         a3, sp, 15
                  blt          a7, t5, 171f
165:              slti         s0, t5, -390
                  bne          s9, s4, 168f
167:              bne          s5, ra, 176f
168:              bge          a5, s10, 184f
                  xori         ra, s4, 533
                  slli         s10, gp, 25
171:              srl          s11, t5, t5
                  sub          sp, s6, a0
                  sub          s3, t0, t5
                  srl          a0, s8, s8
175:              srl          s6, tp, t6
176:              bne          t0, a1, 190f
                  xor          s1, s7, a7
                  and          a4, s9, s6
                  nop
                  sltiu        t1, sp, -1355
                  andi         t1, a7, 1700
                  add          s8, t0, t4
                  auipc        ra, 109380
184:              bgeu         sp, t3, 198f
                  addi         a3, ra, 1212
                  blt          a3, t6, 187f
187:              sll          a5, s9, a5
                  sltiu        ra, s5, -1421
                  bge          a4, t5, 192f
190:              bge          s3, s6, 202f
                  or           t5, tp, s0
192:              slli         s5, sp, 7
                  blt          t1, tp, 195f
                  or           t6, sp, t6
195:              andi         s0, a2, 437
                  bltu         s0, s7, 198f
                  andi         s1, a1, 878
198:              and          t5, t3, s7
                  bge          a3, s6, 217f
                  srai         t4, gp, 4
                  sltu         a3, t4, a3
202:              srl          a4, s0, s0
                  andi         gp, a5, 344
                  bltu         s11, t0, 218f
                  sltu         s11, s6, a2
                  blt          a7, s9, 213f
                  srli         t4, t4, 11
                  bne          tp, a4, 221f
                  nop
                  bne          t5, a6, 219f
                  blt          s2, t0, 220f
                  srai         sp, s5, 27
213:              srli         s0, s5, 27
                  bne          t6, s8, 224f
                  addi         t4, s0, 1750
                  bgeu         a2, s1, 228f
217:              beq          s10, s1, 222f
218:              srl          s7, s0, s1
219:              andi         ra, s0, 514
220:              bne          s8, t5, 238f
221:              slli         zero, sp, 19
222:              slt          s1, a4, s2
                  nop
224:              slt          a7, s11, s11
                  srl          a4, sp, s5
                  sra          s6, s2, s7
                  slli         s4, t3, 31
228:              srli         s5, s11, 31
                  andi         a7, s9, 1365
                  add          t1, a3, a6
                  add          t1, t0, t1
                  ori          a0, a3, -1980
                  bltu         a5, t2, 250f
                  ori          s5, s5, 116
                  sll          s0, a0, gp
                  slli         t0, s1, 6
                  beq          t1, a6, 256f
238:              lui          s8, 647700
                  auipc        zero, 873907
                  xor          t5, t6, zero
                  bge          a0, s11, 244f
                  bgeu         t3, t0, 259f
                  andi         a5, sp, -1276
244:              beq          a4, t0, 246f
                  sra          a4, zero, s2
246:              bge          gp, s2, 247f
247:              srl          a3, a7, ra
                  xor          s5, tp, t4
                  srli         a1, t3, 7
250:              xori         tp, s7, 1889
                  srl          s1, a4, t4
                  auipc        a5, 424084
                  or           t1, t5, a2
                  ori          t3, a2, -499
                  srli         gp, a2, 1
256:              bgeu         s11, a0, 264f
                  andi         t4, tp, 792
                  bltu         s10, sp, 260f
259:              slt          a1, s4, gp
260:              sll          t4, s5, s9
                  xor          sp, a4, a5
                  or           s7, t1, a0
                  bgeu         s0, s9, 277f
264:              ori          s10, a7, 255
                  andi         s0, a2, 331
                  and          s1, s8, a1
                  or           a5, s1, s9
                  srl          tp, s6, s6
                  sub          s1, ra, a6
                  sub          s11, t6, s9
                  sll          s6, t3, s4
                  andi         a0, a7, 539
                  andi         s0, t5, -322
                  nop
                  ori          s2, t5, 879
                  addi         a3, tp, -1479
277:              andi         s3, s2, -2030
                  sltiu        s1, tp, 1497
                  andi         gp, ra, 1132
                  sltiu        s11, s9, -1304
                  xor          s8, a3, s9
                  srl          a7, s10, s10
                  slli         s10, t1, 28
                  nop
                  srai         a4, ra, 9
                  bgeu         t5, s8, 304f
                  sub          a5, tp, s3
                  slli         s0, a1, 9
                  slti         t0, s11, -653
                  sll          s0, s0, s0
                  auipc        a7, 872835
                  andi         t6, s10, 1850
                  blt          s5, s9, 307f
                  auipc        ra, 24620
                  nop
                  add          a3, s4, t4
                  xor          a3, tp, a2
                  srl          s4, a4, s0
                  xor          s2, zero, t3
                  blt          ra, s6, 307f
                  ori          s4, a4, -768
                  addi         s8, zero, -1096
                  bgeu         s3, a5, 317f
304:              bltu         t2, s7, 316f
                  ori          s11, gp, -2048
                  sub          t1, s1, t6
307:              slli         a4, t1, 16
                  andi         s2, s11, 1302
                  addi         s4, s0, -2013
                  bgeu         t3, s10, 329f
                  sltu         s7, t5, s1
                  or           t0, a6, a1
                  sltu         s10, t5, a2
                  slt          a7, t2, s1
                  bne          s2, t5, 328f
316:              or           s8, s0, t1
317:              srai         s0, s8, 1
                  srli         zero, t1, 5
                  sub          zero, t2, s10
                  lui          t3, 586211
                  bgeu         s7, a1, 337f
                  slt          s2, s8, a4
                  beq          s7, a3, 326f
                  bgeu         s8, s11, 333f
                  srl          t6, gp, zero
326:              addi         s2, s2, -1670
                  bltu         sp, s5, 328f
328:              slt          s2, t4, s10
329:              nop
                  lui          ra, 307178
                  sra          ra, t1, s11
                  srai         t3, t2, 30
333:              srli         s1, a0, 31
                  sltu         a4, t1, s0
                  bne          s9, a7, 353f
                  sltu         a1, ra, a3
337:              add          a4, s10, s5
                  and          s8, s7, s0
                  sltu         t4, a4, tp
                  sub          s5, s9, s8
                  bgeu         s9, zero, 360f
                  lui          a0, 869429
                  srli         a3, s9, 30
                  auipc        t4, 662510
                  addi         s6, s5, -1498
                  srai         t5, t4, 28
                  slli         s5, a3, 8
                  slti         s5, s9, -1653
                  bne          t1, t6, 363f
                  slt          s1, s10, s2
                  bltu         s11, a2, 360f
                  sub          tp, t1, s9
353:              xor          t1, a4, a1
                  beq          s3, ra, 372f
                  blt          t1, s10, 367f
                  srli         t6, t0, 18
                  xor          s1, a0, t1
                  andi         s7, s9, 868
                  srli         s0, sp, 24
360:              srl          a0, a2, a1
                  srli         t6, a6, 31
                  beq          tp, s1, 367f
363:              xori         t4, s3, 283
                  bne          a1, s7, 369f
                  sub          s11, t2, t4
                  bltu         s11, t6, 373f
367:              bne          s7, s0, 369f
                  bgeu         s10, s4, 378f
369:              auipc        ra, 1034686
                  add          s5, s10, s5
                  sub          a0, a0, a6
372:              sltiu        s0, sp, -165
373:              sll          s2, a0, a4
                  sltu         t6, s8, t5
                  addi         s0, zero, -2012
                  bltu         t4, a3, 385f
                  bgeu         s8, a0, 394f
378:              nop
                  sub          a7, s4, t4
                  andi         a0, a1, 1204
                  slti         zero, gp, -575
                  bge          s2, s5, 394f
                  sra          s7, s0, s1
                  bltu         t6, a6, 385f
385:              slti         a3, s5, 1192
                  slt          s8, a1, a2
                  xor          s8, s11, s1
                  lui          sp, 557474
                  beq          a1, t4, 390f
390:              xori         a3, t2, 1079
                  sltu         a6, s5, a5
                  sub          zero, a5, t5
                  sll          t1, s7, t6
394:              sra          t5, t6, t4
                  bgeu         t4, t4, 414f
                  bne          s6, s5, 414f
                  srli         s1, a5, 16
                  slli         gp, a7, 10
                  add          a3, t1, zero
                  lui          t6, 1029565
                  srai         a1, a2, 2
                  blt          a2, s9, 414f
                  slt          s3, s10, s5
                  sltu         a1, s8, t2
                  or           s3, a6, ra
                  andi         a3, s9, -1851
                  slli         s0, s4, 6
                  nop
                  slli         gp, s3, 10
                  and          a6, s6, tp
                  srai         gp, s4, 16
                  slt          s2, t2, t4
                  slli         s1, s10, 1
414:              bgeu         a5, s5, 422f
                  sub          s2, s11, s8
                  xori         t3, zero, -1326
                  bne          s9, s9, 419f
                  bgeu         t4, s11, 427f
419:              auipc        s0, 985350
                  sra          t6, a0, s1
                  bne          a1, sp, 423f
422:              blt          a7, t6, 431f
423:              sll          s3, sp, s5
                  srai         s11, a6, 7
                  slt          s8, s11, zero
                  bltu         t4, s11, 431f
427:              blt          s2, a1, 431f
                  sub          s10, s1, s11
                  bne          s5, s7, 431f
                  add          s4, t0, sp
431:              xor          t4, a4, t0
                  xor          s11, s4, a4
                  slt          s6, t2, s4
                  srl          a4, t2, t5
                  lw           t1, 4(s9)
                  addi         s1, t3, 1878
                  addi         s9, s9, 28
                  nop
                  andi         gp, gp, -14
                  sra          sp, sp, a7
                  slti         s1, t5, -479
                  xori         tp, t6, -640
804:              addi x30, x6, 0
804:              jalr x30, x30, 0
sub_1:            sra          a0, a2, s11
                  blt          zero, a0, sub_1_stack_p
                  add          a5, s2, a5
sub_1_stack_p:    addi         s9, s9, -60
                  sw           t1, 4(s9)
                  slt          t0, s9, s1
                  la           s1, region_0+26 #start riscv_load_store_hazard_instr_stream_3
                  lb           a0, 49(s1)
                  sltu         gp, t6, s4
                  sw           t2, 2(s1)
                  lb           a3, 2(s1)
                  sb           s1, 2(s1)
                  lh           a3, 2(s1)
                  xori         a4, s11, 1334
                  lw           tp, 46(s1)
                  lb           a3, 5(s1)
                  sb           s10, 55(s1)
                  auipc        s6, 846655
                  lb           a0, 55(s1)
                  ori          a7, s0, -529
                  lbu          a5, 55(s1)
                  lb           s4, 55(s1)
                  lbu          tp, 31(s1)
                  sb           t4, 31(s1)
                  lbu          t0, 48(s1) #end riscv_load_store_hazard_instr_stream_3
                  la           s3, region_1+1257 #start load_store_instr_stream_1
                  la           sp, region_1+941 #start load_store_instr_stream_0
                  lh           a3, -13(s3)
                  sb           t2, 208(s3)
                  lhu          s2, -5(sp)
                  lb           t3, 62(sp)
                  lb           t3, -136(s3)
                  lbu          t4, -46(sp)
                  lb           s11, -63(sp)
                  sb           gp, -121(s3)
                  lh           s8, 31(sp)
                  lb           s1, 36(sp)
                  lb           s6, 226(s3)
                  sh           s9, -55(s3)
                  lbu          t6, 36(sp)
                  sb           a1, -175(s3)
                  lbu          s7, -30(s3)
                  lb           tp, 2(sp)
                  lbu          s7, 24(s3)
                  lh           s8, 171(s3) #end load_store_instr_stream_1
                  lbu          t3, -14(sp) #end load_store_instr_stream_0
                  la           t1, region_0+475 #start riscv_load_store_rand_instr_stream_3
                  xori         a7, a2, -1492
                  sh           s6, 1507(t1)
                  lbu          s11, 420(t1)
                  sra          a7, t3, gp
                  srli         t0, a6, 8
                  lbu          zero, 498(t1)
                  lbu          t6, 963(t1)
                  sb           s3, 898(t1)
                  lbu          s3, 247(t1)
                  lbu          s7, 1516(t1)
                  lbu          s1, -332(t1)
                  xor          a4, t1, a2
                  slli         s5, s7, 9
                  addi         s2, a5, 131
                  sb           t4, 41(t1)
                  sb           zero, 1521(t1)
                  sb           zero, 1048(t1)
                  srai         a0, ra, 11
                  ori          a6, s3, 1314
                  sb           t0, 364(t1)
                  and          s3, zero, sp
                  and          t3, s2, t2
                  ori          s6, a7, 1507
                  sub          a5, a0, s10
                  andi         a5, sp, 390
                  and          t0, a1, sp
                  srli         a1, t5, 20
                  lbu          s11, 1123(t1)
                  sb           s3, -219(t1)
                  sb           s11, 634(t1)
                  sltu         a0, s1, sp
                  sb           a4, 1010(t1)
                  sltiu        t0, a7, 1592
                  and          zero, sp, a1
                  xori         a4, s9, 1705
                  lbu          s2, 624(t1)
                  xori         a3, t6, -250
                  lbu          zero, -450(t1)
                  lb           a0, 960(t1)
                  lhu          a4, 1017(t1)
                  ori          t0, a0, 346
                  sb           a7, 1432(t1)
                  sh           a6, 409(t1)
                  and          s3, t6, t5
                  slt          s4, t3, a0
                  srli         s4, sp, 15
                  sw           s10, 1001(t1) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_0+781 #start riscv_load_store_hazard_instr_stream_2
                  sb           s11, 15(s4)
                  lb           t4, -7(s4)
                  lbu          t1, -7(s4)
                  lbu          ra, -7(s4)
                  sra          t5, s5, s5
                  add          s3, s6, ra
                  xor          a7, t2, a0
                  sb           s4, -7(s4)
                  lh           sp, -7(s4)
                  sh           t6, -7(s4)
                  lbu          s6, -7(s4)
                  sb           s8, 6(s4)
                  sb           t1, 6(s4)
                  lbu          a6, 6(s4)
                  lbu          s6, 10(s4) #end riscv_load_store_hazard_instr_stream_2
                  la           a7, region_1+986 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s4, 366(a7)
                  ori          s7, s1, -2014
                  lhu          s1, 366(a7)
                  lbu          a4, 67(a7)
                  sb           t6, 144(a7)
                  lb           t3, 144(a7)
                  lbu          a1, 277(a7)
                  lb           t5, -593(a7)
                  lhu          tp, -630(a7)
                  sb           s2, 275(a7)
                  lhu          s7, 824(a7)
                  lb           sp, 824(a7)
                  sh           t4, 824(a7)
                  lbu          s8, 824(a7)
                  sh           a4, 824(a7)
                  slti         a1, s6, 123
                  sra          t4, zero, s4
                  sh           t6, -134(a7)
                  sll          s11, t1, t2
                  lhu          t0, -134(a7)
                  lbu          a4, 981(a7)
                  sb           a1, 981(a7)
                  lbu          tp, -340(a7)
                  lbu          t0, 51(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_0+352 #start load_store_instr_stream_1
                  sb           s6, -33(t0)
                  la           a6, region_0+1289 #start load_store_instr_stream_0
                  lb           s1, 19(t0)
                  la           t1, region_0+838 #start load_store_instr_stream_2
                  sh           s1, -32(t0)
                  sb           a4, -22(t0)
                  la           a7, region_0+1760 #start load_store_instr_stream_3
                  sh           a7, 14(t1)
                  lb           t6, -163(a6)
                  sb           s0, -4(t1)
                  lhu          t4, 6(t0)
                  lb           gp, -183(a7)
                  lbu          a0, 106(a6)
                  sb           s10, -39(t0)
                  sb           t2, 4(t1)
                  lh           gp, 68(a7)
                  lb           a1, 252(a6)
                  sb           zero, -59(t0)
                  sh           a2, -102(a7)
                  lbu          s0, -5(t1)
                  sb           t6, -69(a7)
                  lh           s0, 229(a6)
                  lhu          zero, -10(t1)
                  lbu          s5, -1(t1)
                  lhu          s7, -64(t0)
                  sh           s8, -2(t1)
                  lb           s5, 184(a7) #end load_store_instr_stream_3
                  lb           a0, -61(t0) #end load_store_instr_stream_1
                  lhu          s5, -14(t1) #end load_store_instr_stream_2
                  lhu          t4, -205(a6) #end load_store_instr_stream_0
                  la           ra, region_0+292 #start riscv_load_store_rand_instr_stream_1
                  lbu          s0, 56(ra)
                  nop
                  xori         s10, s9, 936
                  srli         t0, s7, 30
                  xor          t5, s1, t6
                  srl          a5, a0, s8
                  xori         a0, t1, 772
                  sra          s5, s2, s4
                  srli         s3, s8, 17
                  lbu          t0, -156(ra)
                  add          s2, sp, t1
                  sb           s2, 355(ra)
                  sb           s0, 1658(ra)
                  xori         s1, s4, 79
                  xor          s8, s5, t4
                  ori          s6, s5, 1148
                  srai         a6, s9, 22
                  xori         tp, s9, -1026
                  and          sp, s4, a2
                  sb           tp, 231(ra)
                  slt          s5, a6, a1
                  or           tp, a2, s9
                  addi         a5, t0, -1349
                  or           s1, gp, s4
                  lbu          a0, 1269(ra)
                  slti         s1, s10, -315
                  ori          t5, s6, 1331
                  andi         a3, a0, -587
                  lbu          s1, 1699(ra)
                  add          s2, s6, s10
                  srai         t6, a5, 25
                  xori         s8, s6, 1205
                  sb           a7, 297(ra)
                  addi         s10, t4, 1791
                  sh           a4, 208(ra)
                  and          a5, t4, s0
                  auipc        zero, 679255
                  sb           a1, -58(ra)
                  lb           s6, 125(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+52 #start load_store_instr_stream_0
                  la           t6, region_1+101 #start load_store_instr_stream_3
                  la           a4, region_1+1298 #start load_store_instr_stream_1
                  la           t3, region_1+1198 #start load_store_instr_stream_2
                  lh           sp, 204(a4)
                  lbu          a5, -15(s1)
                  sw           s1, -4(s1)
                  sb           ra, 30(t6)
                  sb           s11, -57(a4)
                  lhu          sp, -4(a4)
                  lb           s8, -9(t3)
                  sb           s5, 50(t6)
                  sb           t0, -7(s1)
                  sb           s2, 5(t3)
                  lb           s11, 50(t6)
                  lbu          a0, 0(t6)
                  lbu          a6, 4(t3)
                  lbu          s3, -58(t6)
                  lb           t0, -235(a4)
                  lbu          s10, -9(t3)
                  lb           t1, 0(t3)
                  lbu          sp, 228(a4)
                  lb           a0, -12(t6)
                  lbu          s2, 0(t3)
                  sb           s1, -1(s1)
                  lh           s10, 200(a4)
                  lb           a3, -2(t3) #end load_store_instr_stream_2
                  sb           t1, -1(s1)
                  lbu          s5, -99(a4) #end load_store_instr_stream_1
                  sb           t0, -27(t6) #end load_store_instr_stream_3
                  lhu          a7, -14(s1) #end load_store_instr_stream_0
                  la           s1, region_1+1008 #start load_store_instr_stream_2
                  la           tp, region_1+1751 #start load_store_instr_stream_3
                  la           gp, region_1+438 #start load_store_instr_stream_0
                  lhu          s4, -15(tp)
                  la           s2, region_1+849 #start load_store_instr_stream_1
                  lbu          t4, -29(gp)
                  lb           a1, 4(s2)
                  lbu          a5, -14(s2)
                  sb           gp, -16(tp)
                  lb           sp, 16(tp)
                  lhu          zero, 0(s1)
                  lb           t4, -35(s1)
                  lbu          sp, -10(tp)
                  sw           s10, 1394(gp)
                  lb           a4, -10(tp)
                  sb           gp, -38(s1)
                  lh           a7, 13(s2)
                  lhu          a5, -7(s2)
                  lbu          s0, -3(tp)
                  sb           s8, -15(s1)
                  sb           s9, 1235(gp)
                  lbu          t4, -2(tp)
                  lbu          s3, -29(s1)
                  sb           zero, 864(gp)
                  lb           t6, 12(s2)
                  lbu          a3, -10(tp)
                  lh           a4, -38(s1)
                  sb           a6, 1517(gp)
                  lb           a4, 13(tp)
                  lbu          t3, -364(gp)
                  lhu          s10, -10(s1) #end load_store_instr_stream_2
                  lh           zero, -3(s2)
                  lh           a4, 534(gp)
                  lbu          s4, 14(tp) #end load_store_instr_stream_3
                  lw           a5, -9(s2) #end load_store_instr_stream_1
                  lb           a3, 1465(gp) #end load_store_instr_stream_0
                  la           a0, region_1+1968 #start riscv_load_store_hazard_instr_stream_1
                  sw           t5, -12(a0)
                  auipc        a3, 931411
                  lbu          s7, 1(a0)
                  lb           t1, 1(a0)
                  lhu          a3, 12(a0)
                  sb           s10, 12(a0)
                  sb           s1, 12(a0)
                  lw           t1, 12(a0)
                  xori         s6, s4, -822
                  lb           s4, -1(a0)
                  lb           a5, -1(a0)
                  sb           a1, -1(a0)
                  lb           s5, -1(a0)
                  lb           t0, -1(a0)
                  sb           a2, -1(a0)
                  lb           s7, -9(a0)
                  lb           a5, -9(a0)
                  sb           s4, -9(a0)
                  lbu          t4, -9(a0)
                  lb           t6, 2(a0)
                  lb           s10, 2(a0) #end riscv_load_store_hazard_instr_stream_1
                  slli         a4, a4, 5
                  sub          t1, s4, t4
                  srl          zero, t0, a0
                  xor          s1, sp, a2
                  bne          s3, a7, 18f
                  add          a4, s8, s7
                  bltu         t4, t4, 9f
                  slt          t0, t2, t0
                  nop
9:                slli         a1, a2, 1
                  srli         t0, s2, 10
                  slli         s6, s5, 25
                  sll          a7, t0, a5
                  addi         s3, t2, -281
                  sra          s8, a2, s11
                  xor          s2, s3, a0
                  nop
                  sltiu        s6, gp, 1321
18:               srl          t5, s2, a7
                  add          a6, zero, a0
                  slti         s0, a5, 1626
                  add          a5, s2, t4
                  bne          t5, t2, 36f
                  xori         a5, t2, -919
                  sltiu        s0, a4, 350
                  addi         s2, t2, -211
                  nop
                  srai         sp, t5, 6
                  auipc        t0, 534447
                  lui          s8, 628936
                  beq          tp, t4, 43f
                  and          s1, a4, sp
                  lui          zero, 378627
                  andi         t0, a2, 794
                  addi         t6, a7, 1926
                  srli         a5, a1, 6
36:               or           a4, gp, a6
                  lui          s10, 784877
                  srai         a0, t3, 27
                  slti         t3, s9, 242
                  nop
                  add          t6, a3, s10
                  bge          t4, s8, 54f
43:               bge          s3, sp, 53f
                  andi         a4, a4, 1070
                  sltiu        s11, t1, -1866
                  slti         s1, a7, -1442
                  blt          sp, s0, 66f
                  sll          s4, s10, t2
                  and          zero, a1, t1
                  nop
                  beq          s8, s7, 52f
52:               xor          a5, t5, s6
53:               auipc        t6, 115326
54:               sll          s11, s5, t4
                  bge          s5, gp, 64f
                  slli         t5, s2, 20
                  slli         t3, s0, 15
                  srl          s10, s11, s3
                  or           a1, tp, s3
                  andi         a6, sp, 1272
                  slli         gp, t5, 4
                  andi         s6, s5, -1392
                  srli         a3, a2, 20
64:               srl          s8, a2, s0
                  ori          s4, s7, 1095
66:               and          a1, gp, tp
                  xor          s4, t3, s8
                  xori         a3, a7, -2033
                  slli         s1, t3, 2
                  srai         t1, s10, 17
                  lui          gp, 93538
                  sra          a1, gp, zero
                  slt          s10, ra, s5
                  sll          t1, s9, a6
                  xor          t4, t2, a1
                  lui          t0, 1048492
                  sltu         t0, a2, t1
                  sll          gp, tp, t0
                  add          a6, t4, s5
                  nop
                  addi         a4, ra, -1597
                  bltu         t5, s5, 85f
                  srai         a3, gp, 17
                  sll          s8, gp, s0
85:               ori          s0, t6, 937
                  bltu         s9, zero, 106f
                  auipc        a6, 121831
                  sub          gp, s6, s3
                  slt          gp, sp, t3
                  sll          s1, a1, a3
                  srl          s0, a6, t2
                  srli         a5, gp, 26
                  lui          t6, 417672
                  xor          t1, s0, sp
                  bge          s11, a4, 101f
                  blt          s11, a2, 104f
                  auipc        a3, 58656
                  bgeu         t1, a7, 109f
                  sra          s8, s0, s7
                  srl          a6, t1, ra
101:              xori         s6, t6, -1516
                  ori          zero, s7, 961
                  ori          a6, tp, -335
104:              srli         a3, s11, 13
                  andi         a3, t5, 561
106:              srl          zero, a5, t6
                  srai         s7, t0, 19
                  sltu         s11, s7, s1
109:              xori         t6, gp, -1094
                  sra          t5, s7, zero
                  auipc        s11, 308140
                  add          s2, tp, t0
                  bgeu         s2, a6, 116f
                  srl          a3, a3, s4
                  auipc        a6, 768877
116:              bgeu         a3, t2, 121f
                  bltu         t0, tp, 125f
                  ori          s5, tp, 1331
                  bltu         s0, a4, 138f
                  andi         t5, a4, 626
121:              slt          a6, a5, a3
                  andi         s11, s11, 1085
                  xor          a3, t2, t4
                  sltu         s10, s4, s5
125:              sltu         a1, s9, s8
                  lui          a4, 38063
                  sltu         a5, s3, t4
                  add          s7, s9, a3
                  and          s6, s4, t4
                  sub          a1, s1, a4
                  or           t0, sp, a1
                  or           s7, t5, t0
                  add          s10, s5, t2
                  and          a1, tp, t0
                  sll          t3, a5, s1
                  sub          t4, zero, t3
                  xori         t0, s2, 426
138:              srai         s2, s10, 9
                  lui          s5, 1000891
                  bgeu         t4, gp, 155f
                  srli         a3, gp, 1
                  srai         s11, a0, 3
                  sltiu        t3, s0, 168
                  ori          t6, t1, 1889
                  and          a6, t5, s7
                  bltu         a7, s10, 159f
                  sltu         s7, a2, a0
                  bge          s11, a2, 152f
                  blt          s2, s5, 168f
                  bgeu         s6, s5, 156f
                  sltiu        s0, s5, -1916
152:              lui          t3, 607862
                  ori          zero, s8, 191
                  and          s11, s8, s1
155:              srl          s0, s8, t4
156:              slti         gp, s3, 456
                  sra          s3, a1, t6
                  add          gp, a5, t4
159:              sub          sp, s10, t2
                  addi         s7, t2, -265
                  auipc        tp, 443041
                  sra          s4, zero, t1
                  bge          s10, t4, 169f
                  or           a6, a6, s2
                  blt          t6, s9, 170f
                  ori          s5, a6, 1750
                  ori          s6, t2, -1292
168:              sub          t1, s5, t2
169:              bne          zero, s11, 183f
170:              blt          a1, a7, 178f
                  and          a5, s9, s0
                  slti         s7, t6, -368
                  blt          s7, ra, 192f
                  xor          t0, t2, s3
                  xori         s1, s2, 590
                  bltu         t0, s1, 189f
                  nop
178:              nop
                  add          s6, a1, s1
                  andi         s8, s10, 1107
                  lui          s10, 563669
                  srli         a4, t4, 20
183:              slli         s6, ra, 20
                  sltiu        t0, a7, -131
                  xor          s8, t6, a3
                  auipc        s5, 426835
                  addi         gp, s4, -501
                  ori          s8, s1, -890
189:              or           a6, tp, t3
                  bne          s3, t6, 196f
                  xori         tp, a1, 1207
192:              srai         s4, ra, 15
                  bgeu         t6, t1, 212f
                  bgeu         s3, s8, 202f
                  auipc        a6, 63947
196:              nop
                  bge          ra, s1, 208f
                  bge          s5, gp, 212f
                  bne          ra, a0, 207f
                  auipc        a0, 767005
                  sltu         s4, s6, t2
202:              add          a3, s10, s10
                  srli         a4, s7, 20
                  add          s0, t6, s2
                  srai         ra, s11, 16
                  bge          s7, a4, 212f
207:              xor          s6, tp, s4
208:              bge          tp, s9, 222f
                  srl          s0, s7, tp
                  srli         a1, t3, 27
                  srli         t0, s11, 16
212:              xori         s7, t2, 1158
                  sra          a1, ra, s7
                  bge          s2, tp, 227f
                  bltu         s3, s0, 223f
                  beq          t1, t1, 220f
                  bltu         s6, a6, 231f
                  sltiu        t1, s8, 1467
                  srai         sp, s8, 3
220:              sra          a5, s0, a3
                  and          s6, a1, a2
222:              blt          s4, s7, 231f
223:              sll          t1, s8, tp
                  blt          a1, a5, 237f
                  add          s7, s1, t2
                  bge          ra, a0, 229f
227:              bne          s6, a1, 230f
                  xor          s8, t3, a1
229:              auipc        gp, 350574
230:              bge          a2, a4, 249f
231:              sra          t3, sp, ra
                  sra          tp, tp, t5
                  andi         t3, t5, 1574
                  nop
                  srai         s5, t5, 16
                  sra          zero, t5, a2
237:              bltu         tp, t2, 250f
                  add          sp, s9, a4
                  blt          s2, s10, 254f
                  srli         s4, t3, 12
                  bgeu         t1, tp, 246f
                  addi         s7, zero, -83
                  slti         sp, a1, 1955
                  sra          s7, s7, t0
                  blt          t3, t2, 255f
246:              bltu         a6, a0, 265f
                  sll          tp, t1, a6
                  bltu         s6, t5, 249f
249:              and          s5, a6, a6
250:              ori          t1, s5, -1022
                  add          s6, a6, a7
                  lui          s6, 896693
                  srl          s1, a7, s7
254:              sltiu        s0, a3, -711
255:              bltu         s8, a1, 260f
                  xor          s5, a7, s7
                  auipc        zero, 473960
                  nop
                  sra          zero, s0, t2
260:              srli         t0, t4, 17
                  srai         s0, a3, 27
                  slt          s4, a2, s7
                  beq          t0, s1, 269f
                  or           s0, gp, a7
265:              xor          t6, s8, s11
                  bge          s1, ra, 278f
                  and          a4, s1, sp
                  blt          a0, a3, 287f
269:              sltu         gp, s4, s0
                  srli         s6, s8, 2
                  sub          t0, t4, tp
                  auipc        s6, 931151
                  bltu         s2, s7, 293f
                  srai         s4, t5, 1
                  ori          a6, a4, -1264
                  srl          s0, t2, ra
                  ori          s1, a5, -381
278:              srai         s2, a3, 25
                  addi         sp, s9, 2002
                  or           gp, t4, t4
                  sll          s6, a7, s11
                  add          s10, sp, s11
                  or           s0, t0, t2
                  bgeu         gp, t6, 287f
                  bltu         s9, a5, 291f
                  sra          t6, t1, ra
287:              sra          zero, t1, t5
                  sltu         s0, t0, ra
                  xor          zero, s2, tp
                  addi         t0, s6, -1819
291:              srli         a0, t2, 2
                  bne          a7, s4, 298f
293:              xor          a4, ra, t5
                  addi         s5, s11, 1523
                  sltiu        t6, s4, -1013
                  and          t3, a7, a7
                  lui          s6, 607102
298:              srai         tp, s4, 11
                  sltiu        s0, a0, -1674
                  slli         zero, t3, 18
                  slti         s11, a5, 1705
                  bgeu         s11, s7, 305f
                  slt          s7, s10, t1
                  add          s6, s6, t5
305:              slli         ra, t5, 21
                  sltu         s0, s1, s6
                  or           t0, s7, s7
                  lui          s0, 629261
                  nop
                  slli         a7, s9, 15
                  auipc        a4, 397028
                  slti         sp, t6, 1503
                  add          a1, s1, s9
                  xor          sp, s11, s0
                  nop
                  xori         a7, s5, 1405
                  xori         t1, zero, -204
                  xor          t3, s10, ra
                  ori          a1, s0, -1360
                  and          t1, a1, t2
                  addi         a1, s5, 1343
                  auipc        a4, 405194
                  sra          a0, s7, a6
                  slli         t3, s4, 13
                  nop
                  lui          a7, 150679
                  ori          s4, a4, -1847
                  nop
                  srli         a6, ra, 28
                  srl          tp, t2, a3
                  bge          s2, s0, 350f
                  ori          sp, s9, 596
                  srai         a7, s9, 25
                  slli         t0, t0, 19
                  slli         t5, a6, 4
                  add          sp, a1, gp
                  srl          zero, t0, s10
                  xor          s0, t0, s9
                  srl          t3, a0, s7
                  bltu         t1, a4, 359f
                  ori          s2, tp, 1800
                  bne          s4, t5, 356f
                  xor          s11, sp, s3
                  bge          s0, a0, 345f
345:              auipc        ra, 499799
                  slt          ra, t3, t6
                  sltu         s11, a7, a5
                  sub          s2, s7, t3
                  xor          a6, s8, a7
                  andi         t1, t2, 1974
                  sll          t3, t2, a1
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  slt          s6, s0, s9
                  slli         s0, s9, 8
                  srl          t4, gp, t3
                  auipc        s7, 738176
350:              xor          a1, s9, a3
                  slti         ra, a1, -1083
                  srli         a1, t0, 11
                  nop
                  auipc        s7, 438903
                  or           s7, a5, s10
356:              sll          t0, s1, s9
                  add          a5, a6, t4
                  xor          a6, s1, t1
359:              beq          s8, t2, 373f
                  srli         s2, ra, 2
                  and          t1, a7, t2
                  ori          a1, t6, 1850
                  sub          t5, ra, t1
                  sll          a6, s0, a0
                  and          s6, t2, s10
                  bne          t4, a3, 369f
                  bltu         s8, sp, 379f
                  ori          a7, s2, 1951
369:              ori          sp, s7, 1237
                  sll          a1, s10, tp
                  sltiu        t5, zero, 947
                  bgeu         a1, zero, 386f
373:              beq          s3, s11, 386f
                  lui          zero, 467482
                  xor          a7, a3, tp
                  sltiu        s1, a2, -184
                  bltu         s8, s6, 396f
                  bne          a1, s2, 383f
379:              bne          t0, s4, 383f
                  srl          s11, a5, s9
                  xori         t4, a6, -701
                  la           sp, region_0+788 #start riscv_load_store_rand_instr_stream_2
                  lb           s7, -2(sp)
                  andi         t4, s1, 485
                  lui          t1, 716181
                  ori          zero, s8, -1002
                  lb           gp, -1(sp)
                  lh           t0, 12(sp)
                  sb           s7, -9(sp)
                  sub          s10, a7, s7
                  xor          s8, a4, s8
                  andi         a0, a0, 1646
                  sb           s6, 11(sp)
                  xor          s6, a2, t4
                  auipc        s2, 1000622
                  lui          tp, 532895
                  addi         s5, a1, 1445
                  sb           s1, 15(sp)
                  nop
                  slt          s2, a7, s1
                  sltiu        s5, a7, 1728
                  lb           s10, -7(sp)
                  lbu          s4, -7(sp)
                  lb           a1, 10(sp)
                  sb           zero, -4(sp)
                  sb           s7, -5(sp)
                  ori          t5, s8, -863
                  andi         a7, s6, 1247
                  add          s2, a7, s5
                  srli         s8, a2, 31
                  slt          tp, s4, ra
                  sw           t5, 12(sp)
                  lb           s6, 15(sp)
                  srli         s6, s5, 11
                  sltu         s1, t4, a1
                  add          t1, t5, t2
                  lbu          s1, 9(sp)
                  lbu          a0, -4(sp)
                  sb           a0, 8(sp)
                  lbu          t6, -10(sp)
                  srai         t3, a4, 7
                  nop
                  lw           t4, -16(sp)
                  lhu          t6, 14(sp)
                  sub          t6, a5, s10
                  lbu          s5, -9(sp)
                  lh           tp, 6(sp)
                  lhu          s1, 2(sp)
                  lb           t5, 8(sp) #end riscv_load_store_rand_instr_stream_2
                  nop
383:              or           t0, a7, a0
                  sll          s6, ra, a6
                  lui          a0, 289312
386:              srai         s6, t5, 20
                  bge          s2, sp, 392f
                  or           s3, a3, sp
                  slli         s7, t0, 19
                  ori          s8, t2, -1066
                  addi         a3, t1, -1377
392:              blt          s11, a4, 398f
                  sll          t0, t4, s3
                  bltu         s7, s9, 402f
                  add          s10, a2, a3
396:              slti         a1, s1, -48
                  and          s4, a1, zero
398:              beq          a0, s0, 404f
                  slli         zero, zero, 30
                  andi         s2, s2, 565
                  lui          a6, 499383
402:              lui          a1, 619854
                  srli         s11, t3, 28
404:              bne          tp, s8, 407f
                  slt          s2, t1, a5
                  xori         a0, s8, 1212
407:              slt          t6, a7, s0
                  bgeu         a0, t0, 421f
                  srli         t4, a0, 8
                  addi         a0, t0, -1161
                  xor          s10, a1, zero
                  sltiu        s7, t3, 381
                  srli         a4, a6, 5
                  addi         a0, t0, 1641
                  sra          gp, a3, ra
                  xori         zero, s0, -1503
                  blt          a0, t2, 432f
                  addi         t0, s11, -556
                  sll          a0, s11, zero
                  bge          sp, gp, 433f
421:              sltu         a7, ra, zero
                  sub          a0, a1, t1
                  addi         t4, t1, -860
                  bgeu         t4, t0, 433f
                  srli         t1, s6, 11
                  and          a7, a4, gp
                  nop
                  sll          ra, s10, s5
                  sra          s10, s11, sp
                  xor          ra, tp, s0
                  srai         t6, t6, 27
                  la           s8, region_1+1219 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, 53(s8)
                  lbu          ra, -37(s8)
                  ori          a1, a7, 224
                  add          a4, s6, a7
                  sb           a6, -19(s8)
                  lb           a3, -12(s8)
                  sb           s2, 20(s8)
                  sb           t1, -13(s8)
                  lhu          a3, 3(s8)
                  or           a1, t6, gp
                  slt          zero, a5, t0
                  sltiu        t4, a1, -704
                  lb           s7, 50(s8)
                  srl          a0, a3, s8
                  sll          a3, s6, a7
                  lbu          s4, 12(s8)
                  add          s10, s0, s10
                  sb           tp, -20(s8)
                  slt          t1, a6, a7
                  lw           a0, 33(s8)
                  srli         a1, s11, 17
                  auipc        s2, 670098
                  sub          s10, s8, a6
                  sb           s1, 50(s8) #end riscv_load_store_rand_instr_stream_0
432:              srli         s1, tp, 2
433:              sub          sp, t0, a4
                  beq          s7, ra, 453f
                  slli         s4, a5, 10
                  sltiu        t1, t2, -1075
                  sub          s4, a5, s1
                  add          s8, ra, zero
                  sra          s4, a6, s7
                  xor          a7, a5, s11
                  srl          s11, t4, a1
                  sub          t4, a4, s4
                  slti         a4, s1, 1675
                  srai         t4, a6, 4
                  sll          a7, t1, a6
                  bgeu         t3, sp, 466f
                  bltu         a1, t6, 455f
                  bgeu         t2, t2, 459f
                  bltu         t5, t6, 457f
                  slli         ra, s6, 12
                  and          s6, zero, t3
                  and          a3, a1, t4
453:              srli         a4, a4, 25
                  sltiu        t6, t3, -281
455:              lui          s6, 800341
                  bgeu         a3, a1, 462f
457:              xori         a6, s4, 71
                  sltiu        a0, s0, 1552
459:              bgeu         s1, t1, 469f
                  slli         s7, s7, 3
                  bge          t3, t3, 467f
462:              slti         a3, s4, 1868
                  bgeu         s0, t4, 471f
                  add          s10, t6, tp
                  or           t6, a6, a6
466:              sltiu        gp, a0, -986
467:              auipc        s5, 441592
                  sltu         a6, t4, t2
469:              slt          a0, s11, sp
                  slt          a0, a3, s4
471:              addi         s10, ra, -1779
                  andi         t4, t3, -1405
                  srl          s4, a1, a7
                  add          t6, a1, gp
                  ori          s8, s2, 1841
                  lw           t1, 4(s9)
                  slt          s7, a4, sp
                  andi         s0, s5, -1514
                  slli         gp, tp, 5
                  addi         s9, s9, 60
                  sltiu        a3, a5, 1238
                  slt          tp, a2, s7
                  nop
859:              addi x5, x6, 0
859:              jalr x5, x5, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x12, x25, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x6, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x6, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x1
                  beq x6, x24, instr_fault_handler
                  li x24, 0x5
                  beq x6, x24, load_fault_handler
                  li x24, 0x7
                  beq x6, x24, store_fault_handler
                  li x24, 0xc
                  beq x6, x24, pt_fault_handler
                  li x24, 0xd
                  beq x6, x24, pt_fault_handler
                  li x24, 0xf
                  beq x6, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x25, x12, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
