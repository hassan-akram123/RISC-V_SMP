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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
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
                  li x0, 0xf88857b9
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0xd
                  li x4, 0x0
                  li x5, 0x1
                  li x6, 0x1
                  li x7, 0x0
                  li x8, 0x1
                  li x9, 0x80000000
                  li x10, 0xc
                  li x11, 0xd
                  li x12, 0x3
                  li x13, 0xfee6e626
                  li x14, 0xb
                  li x15, 0x4e6fffff
                  li x18, 0xf
                  li x19, 0xfc015772
                  li x20, 0x9e606ef6
                  li x21, 0x2
                  li x22, 0x0
                  li x23, 0x4c614f15
                  li x24, 0xf0cbc7ff
                  li x25, 0x0
                  li x26, 0xf
                  li x27, 0x510114c0
                  li x28, 0x0
                  li x29, 0x6
                  li x30, 0x0
                  li x31, 0x80000000
                  la x16, user_stack_end
main:             la           a5, region_0+508 #start load_store_instr_stream_1
                  la           gp, region_0+892 #start load_store_instr_stream_0
                  lhu          t6, 496(gp)
                  lb           tp, 826(gp)
                  lb           t6, -12(a5)
                  sb           a0, -7(a5)
                  sh           a3, -16(a5)
                  sb           t1, -697(gp)
                  lb           ra, -1(a5)
                  lbu          a1, 291(gp)
                  lb           a2, 3(a5)
                  lhu          s7, -16(gp)
                  sb           s4, 13(a5)
                  lh           s1, -2(a5)
                  lb           t4, 0(a5) #end load_store_instr_stream_1
                  lbu          tp, -678(gp)
                  lb           t6, 33(gp) #end load_store_instr_stream_0
                  la           t4, region_0+1476 #start riscv_load_store_rand_instr_stream_0
                  addi         a2, zero, 856
                  srai         s7, s4, 18
                  sra          t6, s4, s3
                  lb           s5, 3(t4)
                  lh           t6, -8(t4)
                  lbu          s11, 2(t4)
                  lhu          t2, -10(t4)
                  lbu          a5, -7(t4)
                  lbu          t3, -13(t4)
                  addi         a0, t4, 406
                  srl          s9, s1, s0
                  sltu         a1, zero, zero
                  srai         t6, gp, 4
                  sb           a2, -3(t4)
                  lhu          t6, 0(t4)
                  lbu          s1, 15(t4)
                  sb           ra, -7(t4)
                  sub          t5, a3, zero
                  lbu          a2, 5(t4)
                  sltiu        s0, s0, -64
                  srai         s0, t3, 17
                  sh           t5, 8(t4)
                  nop
                  lw           a2, -16(t4)
                  sltu         a2, a5, s5
                  lb           a1, 6(t4)
                  sb           t3, -1(t4)
                  lh           s3, -8(t4)
                  lb           s3, 3(t4)
                  lw           sp, 8(t4)
                  lbu          s1, 0(t4)
                  add          s11, s2, t1
                  sb           a5, 14(t4)
                  slti         a5, s4, -50
                  xori         sp, s3, 571
                  addi         t5, s7, 276
                  sltiu        ra, s1, 855
                  add          s10, s3, a4
                  lbu          tp, 3(t4)
                  srai         sp, s7, 15
                  sltu         s5, a0, t4
                  lbu          t0, -13(t4)
                  sb           a4, 9(t4)
                  sh           s11, 6(t4)
                  lb           gp, -15(t4)
                  lb           s4, 6(t4)
                  auipc        s4, 657863
                  sb           s2, 5(t4)
                  sltu         s11, s11, t1
                  lb           a3, 2(t4)
                  lh           s3, -14(t4)
                  lb           s5, -2(t4) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_0+1441 #start load_store_instr_stream_2
                  lbu          t4, 6(a2)
                  la           a0, region_0+1472 #start load_store_instr_stream_1
                  la           s7, region_0+1957 #start load_store_instr_stream_0
                  sb           t0, -5(a2)
                  lh           s10, -6(a0)
                  lb           gp, 6(s7)
                  lb           s6, 15(a0)
                  lh           a5, -7(s7)
                  lbu          tp, 3(a0)
                  lh           t5, -13(a2)
                  sb           a1, 4(a2)
                  sw           t0, -4(a0)
                  lh           a3, 5(s7)
                  lb           s10, -9(a0)
                  sh           gp, 1(s7)
                  sw           a7, 4(a0)
                  sb           s1, -7(a2)
                  lhu          t3, 5(a2)
                  lbu          t4, 7(s7)
                  lbu          t5, 1(a0)
                  sb           s3, -8(s7)
                  lhu          s4, -10(a0)
                  sh           s1, 13(s7)
                  lh           s1, -8(a0)
                  lbu          s9, -15(a2)
                  lbu          sp, 12(a0) #end load_store_instr_stream_1
                  lhu          ra, 15(a2) #end load_store_instr_stream_2
                  lb           t3, 3(s7) #end load_store_instr_stream_0
                  la           sp, region_1+1884 #start riscv_load_store_rand_instr_stream_2
                  lb           t5, -5(sp)
                  sb           tp, 61(sp)
                  auipc        s6, 131328
                  andi         s9, a0, 1089
                  sb           t1, -39(sp)
                  slti         a5, a1, 1183
                  lbu          a3, -16(sp)
                  ori          s11, s4, -875
                  sb           s8, -7(sp)
                  sltiu        t5, a7, -1483
                  sltu         t2, sp, s1
                  lbu          t0, -54(sp)
                  lw           t3, 16(sp)
                  lb           a3, -17(sp)
                  sra          s11, s6, a6
                  srli         t6, s9, 13
                  lbu          s7, 22(sp)
                  sub          t4, t1, s3
                  lui          t4, 82350
                  sltu         t5, s2, a0
                  sb           a0, -41(sp)
                  sltiu        s4, s1, 406
                  sltu         gp, s10, s11
                  andi         t2, a2, -1675
                  add          t5, tp, a3
                  srai         s1, a3, 23
                  auipc        s10, 595896
                  andi         a5, tp, -1913
                  srli         t5, s2, 3
                  srl          t2, s5, s1
                  lh           s7, 8(sp)
                  lbu          t0, 47(sp)
                  lbu          s6, -47(sp)
                  sub          s6, a6, s1
                  sb           s11, 48(sp)
                  auipc        s11, 288973
                  sltiu        a3, a0, 1727
                  sltiu        t1, s4, -1023
                  lbu          a3, -49(sp)
                  sltu         a5, a1, s7
                  xori         s7, t6, 944
                  and          t5, s4, a6
                  sub          t3, s9, s2
                  srl          s1, s11, s10
                  srli         t6, s5, 19
                  lb           tp, -50(sp)
                  lbu          a2, 26(sp)
                  lb           s7, 17(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_0+445 #start load_store_instr_stream_0
                  sh           tp, -63(s10)
                  la           a4, region_0+398 #start load_store_instr_stream_3
                  sb           t0, 49(s10)
                  la           a0, region_0+377 #start load_store_instr_stream_2
                  lb           s0, 34(a4)
                  lh           ra, -184(a4)
                  lb           t6, 60(s10)
                  lbu          a5, 143(a4)
                  lbu          t2, -45(s10)
                  lb           s0, 16(a0)
                  lhu          gp, 52(a4)
                  la           s6, region_0+1708 #start load_store_instr_stream_1
                  lhu          s3, -39(s10)
                  lb           a5, -15(s6)
                  sb           s8, -235(a4)
                  lw           s5, -246(a4)
                  sh           a7, 16(s6)
                  lh           t2, -1(a0)
                  lb           gp, 13(s10)
                  lb           a5, 6(a0)
                  lbu          a3, -255(a4)
                  sb           t0, -21(s10)
                  lb           a3, -167(a4)
                  sb           a1, -48(s10)
                  sb           s0, -10(a0)
                  sb           t2, -231(a4)
                  lh           a3, -4(s6)
                  sb           a1, 3(s6)
                  lb           s3, -9(a0) #end load_store_instr_stream_2
                  lhu          s0, -198(a4) #end load_store_instr_stream_3
                  lhu          t2, 14(s6)
                  sh           sp, -10(s6)
                  lbu          t4, 18(s10)
                  sb           t2, -1(s6)
                  lbu          s7, 1(s6) #end load_store_instr_stream_1
                  lbu          s9, -56(s10) #end load_store_instr_stream_0
                  la           t3, region_1+764 #start riscv_load_store_hazard_instr_stream_2
                  sh           s10, -764(t3)
                  lb           s3, -251(t3)
                  lbu          a4, 745(t3)
                  lbu          t4, 651(t3)
                  srl          s1, a0, s0
                  lb           t0, 651(t3)
                  lbu          s6, 843(t3)
                  lb           t1, 907(t3)
                  lhu          s5, -174(t3)
                  lbu          s4, 841(t3)
                  andi         a1, s9, 1071
                  lb           a0, 841(t3)
                  sh           ra, 344(t3)
                  sb           s9, 556(t3)
                  lhu          a4, 556(t3)
                  sb           ra, 1185(t3)
                  lb           a1, -689(t3)
                  lbu          a4, -151(t3)
                  lhu          t6, -200(t3)
                  lh           t5, 142(t3)
                  lb           a5, -349(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           s5, region_0+213 #start load_store_instr_stream_2
                  la           a0, region_0+1221 #start load_store_instr_stream_3
                  la           gp, region_0+166 #start load_store_instr_stream_0
                  lb           t6, 16(s5)
                  sb           s11, 320(a0)
                  la           s9, region_0+56 #start load_store_instr_stream_1
                  lbu          s10, 15(s5)
                  la           t3, region_0+594 #start load_store_instr_stream_4
                  sh           a2, -11(s5)
                  lb           a5, 251(t3)
                  lbu          s0, -13(s9)
                  lb           a1, -14(s5)
                  lb           zero, 14(s9)
                  sb           t1, 16(s9)
                  lbu          s4, 143(a0)
                  lbu          a5, -97(t3)
                  sb           s1, -9(gp)
                  lw           a4, 126(t3)
                  lb           ra, -4(s9)
                  lw           s0, -849(a0)
                  lb           s7, 3(t3)
                  lbu          t4, -11(gp)
                  lb           t4, -7(gp)
                  lbu          a4, 143(t3)
                  lhu          t6, -16(s9)
                  sh           t3, -6(s9)
                  lh           zero, 13(s5)
                  lhu          a4, 6(gp)
                  lhu          t2, 737(a0)
                  lb           t4, -6(s5)
                  lb           s1, 15(s9)
                  sw           a0, 4(s9) #end load_store_instr_stream_1
                  lh           a5, 1(s5)
                  sb           t4, -4(gp)
                  sb           s10, 12(s5)
                  lb           t6, 196(a0) #end load_store_instr_stream_3
                  lbu          ra, -3(gp)
                  sb           s2, 160(t3)
                  lb           t2, 16(s5)
                  sh           s7, 114(t3) #end load_store_instr_stream_4
                  lb           s11, 6(s5) #end load_store_instr_stream_2
                  lb           s10, -12(gp) #end load_store_instr_stream_0
                  la           t0, region_1+1528 #start riscv_load_store_hazard_instr_stream_1
                  nop
                  lb           a0, -1(t0)
                  lbu          s7, 4(t0)
                  lhu          sp, 16(t0)
                  srl          t2, s11, s11
                  lb           t1, 16(t0)
                  lbu          s8, -9(t0)
                  lb           zero, -11(t0)
                  xori         s11, s7, 419
                  addi         t3, zero, -1197
                  sltiu        t1, s3, -219
                  lbu          t4, 9(t0)
                  lw           sp, 16(t0)
                  lw           a4, 16(t0)
                  lb           t5, 1(t0)
                  lbu          s3, 1(t0)
                  lbu          s4, 1(t0)
                  ori          t3, s3, 1985
                  sltu         s10, a4, s1
                  lb           t3, 3(t0)
                  lbu          ra, 3(t0)
                  sh           s6, 14(t0)
                  lbu          t4, -14(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_0+1119 #start riscv_load_store_hazard_instr_stream_3
                  lbu          a0, 169(gp)
                  lb           t6, -130(gp)
                  lb           s8, -130(gp)
                  lbu          a5, -130(gp)
                  lw           sp, 73(gp)
                  sb           s2, 73(gp)
                  sb           t3, 73(gp)
                  sh           s5, -35(gp)
                  sb           s0, -35(gp)
                  lw           t4, -35(gp)
                  lw           a5, -35(gp)
                  lh           t0, -23(gp)
                  sb           a7, 243(gp)
                  lhu          a5, 243(gp)
                  lh           s6, 243(gp)
                  lb           t4, -226(gp)
                  lb           t6, -226(gp)
                  sub          zero, t2, a7
                  sb           a1, -226(gp)
                  sb           s6, 102(gp) #end riscv_load_store_hazard_instr_stream_3
                  la           t0, region_1+108 #start riscv_load_store_rand_instr_stream_1
                  sb           sp, 340(t0)
                  sb           a5, 1262(t0)
                  or           s10, s8, a4
                  lh           t2, 72(t0)
                  sw           s1, 1224(t0)
                  xor          s9, a3, t5
                  lb           t6, 1083(t0)
                  sll          tp, s7, s11
                  add          a4, a7, a4
                  add          t3, a7, a7
                  xori         t4, s8, -1801
                  lbu          s4, 1367(t0)
                  sb           s9, 1760(t0)
                  lbu          s10, 609(t0)
                  srl          s8, zero, s3
                  sh           a0, 1056(t0)
                  lbu          zero, 1447(t0)
                  lb           t3, 473(t0)
                  lh           ra, 1838(t0)
                  sb           tp, 945(t0)
                  sra          t4, s1, a0
                  lb           ra, 1459(t0)
                  and          gp, a1, zero
                  lb           a0, 485(t0)
                  lw           s4, 664(t0)
                  sb           t3, 1366(t0)
                  slli         t2, s9, 15
                  lbu          t2, 1353(t0)
                  sll          t4, s2, t1
                  slt          t5, a4, ra
                  lb           a1, 291(t0)
                  lbu          s7, 927(t0)
                  slli         s7, s7, 26
                  lbu          s1, 1273(t0)
                  sub          s3, s5, t5
                  lb           tp, 1194(t0)
                  lh           s8, 1532(t0)
                  sb           s11, 1302(t0)
                  lh           t4, 606(t0)
                  lhu          t3, 354(t0)
                  sb           t6, 1073(t0) #end riscv_load_store_rand_instr_stream_1
                  sra          s0, s5, a3
                  and          sp, t2, a2
                  sltu         ra, s2, t4
                  bge          t4, a3, 12f
                  slli         s4, a4, 24
                  bltu         a6, tp, 25f
                  sll          sp, s6, a4
                  sll          s9, s0, t3
                  or           s7, a6, s8
                  srl          a4, a3, a5
                  slti         tp, s5, 415
                  sltu         ra, s0, a2
12:               nop
                  ori          t1, t1, -1545
                  srli         s9, t2, 12
                  sltu         t0, gp, a7
                  auipc        t5, 304192
                  blt          t1, a0, 29f
                  slt          gp, s9, t5
                  blt          zero, a0, 22f
                  lui          s6, 42810
                  sub          s6, sp, a6
22:               slti         a1, a5, 177
                  sltu         t4, s0, s3
                  bgeu         sp, a7, 26f
25:               slt          s1, t0, sp
26:               add          zero, t6, a1
                  srli         t1, gp, 26
                  ori          gp, s7, 1824
29:               srai         a2, t0, 31
                  bltu         s2, a3, 44f
                  blt          sp, a5, 36f
                  sra          s5, ra, ra
                  bge          s3, s3, 37f
                  auipc        s0, 942153
                  sltu         s4, s7, t4
36:               bge          a3, t5, 53f
37:               srl          a5, t6, s6
                  sltu         s9, s9, a1
                  srl          s10, t1, a0
                  ori          t6, t3, 721
                  andi         s6, sp, 438
                  srl          t3, s8, t2
                  beq          a3, t6, 52f
44:               xori         t3, s6, 695
                  ori          s10, a4, 662
                  srli         s10, s7, 13
                  srli         s11, a4, 14
                  bgeu         sp, t5, 62f
                  auipc        a4, 362487
                  slti         s5, a2, 826
                  ori          s6, s4, -1865
52:               srli         s3, a6, 28
53:               auipc        tp, 487558
                  bge          t2, t0, 60f
                  addi         t2, a4, -997
                  addi         s5, a5, -572
                  nop
                  or           s1, a2, s3
                  sll          zero, t1, a2
60:               bge          t0, a5, 68f
                  sub          zero, a2, ra
62:               blt          s1, a6, 71f
                  sub          s6, t2, a2
                  beq          s9, t3, 70f
                  bne          a4, s5, 75f
                  sltu         zero, s1, a2
                  bne          tp, s6, 78f
68:               add          s11, ra, s4
                  srl          s10, s2, s10
70:               addi         t5, a5, -372
71:               ori          a1, s8, 915
                  srl          s7, s8, s8
                  add          a3, sp, t3
                  slli         s4, a7, 17
75:               and          s7, s6, s7
                  slt          zero, s2, t6
                  addi         s1, s11, 65
78:               xor          zero, ra, s3
                  slt          t1, s10, a0
                  srli         t6, t2, 11
                  andi         s0, a1, 1068
                  slli         a0, s3, 2
                  slt          t4, a5, s11
                  bgeu         t2, t4, 97f
                  sub          zero, s11, t0
                  srai         s6, a3, 17
                  lui          s0, 334230
                  xor          a0, a3, t3
                  xor          sp, a6, s2
                  sub          a3, sp, s9
                  and          t2, sp, s10
                  addi         t2, sp, 63
                  add          s6, s5, a2
                  ori          t5, s0, 410
                  sltu         tp, t0, a6
                  slti         s0, tp, -736
97:               sub          a0, t6, s7
                  lui          zero, 773609
                  nop
                  bge          t3, a7, 111f
                  auipc        t4, 21364
                  xor          tp, s11, t3
                  ori          a4, s1, -1468
                  nop
                  srl          a2, a1, s9
                  andi         a3, t3, -1970
                  slti         s11, gp, 512
                  sltu         s4, a6, s9
                  xor          a1, a2, a0
                  slti         s0, a3, 142
111:              blt          ra, s7, 118f
                  bltu         a1, s3, 126f
                  slt          s6, a2, t0
                  srli         a4, s10, 19
                  srl          t3, s1, a4
                  beq          gp, t5, 117f
117:              sll          tp, gp, tp
118:              bltu         a1, t5, 125f
                  ori          ra, t4, -1828
                  beq          s7, s4, 127f
                  bltu         t3, a0, 122f
122:              auipc        ra, 994485
                  sub          s0, a5, s10
                  blt          s4, t5, 137f
125:              bgeu         ra, ra, 140f
126:              sll          s0, a0, s5
127:              xor          t5, s4, a0
                  xor          s9, s4, a4
                  sltiu        gp, a1, 2039
                  bge          gp, s8, 145f
                  slli         s0, t3, 25
                  addi         t5, s3, 1174
                  srli         a1, a7, 17
                  sub          t0, t5, s10
                  bltu         t3, gp, 137f
                  bgeu         zero, a0, 142f
137:              bne          sp, a1, 152f
                  bne          t4, t2, 143f
                  auipc        a3, 771856
140:              addi         t0, t2, -882
                  lui          s3, 45768
142:              srai         a4, t2, 7
143:              bgeu         s9, t5, 150f
                  blt          a7, a7, 148f
145:              blt          s11, a5, 158f
                  auipc        a0, 125815
                  sll          t6, t6, s11
148:              srl          a0, s7, a1
                  or           a4, s4, zero
150:              ori          a0, t5, 1996
                  or           t5, s1, s8
152:              bgeu         s1, ra, 166f
                  bgeu         s10, s9, 162f
                  slli         s11, s9, 25
                  xori         s5, s0, 1718
                  ori          a4, sp, -682
                  auipc        t5, 506490
158:              slli         a1, s6, 11
                  srl          s7, t0, a2
                  sra          s0, tp, tp
                  bne          s1, t1, 170f
162:              sltu         a2, a2, tp
                  slt          t4, s4, t5
                  bltu         s0, a2, 178f
                  sra          t4, t4, a2
166:              xor          t1, sp, s2
                  blt          a7, t0, 169f
                  la           sp, region_1+486 #start riscv_load_store_rand_instr_stream_3
                  add          s3, s11, s3
                  lbu          s9, -256(sp)
                  ori          s8, a1, -649
                  lbu          t1, 50(sp)
                  sh           t4, 218(sp)
                  ori          s9, tp, -1711
                  sw           a7, -142(sp)
                  ori          a5, a4, 1707
                  slli         zero, ra, 17
                  sltu         tp, t3, a7
                  srai         tp, a1, 6
                  and          s8, s3, a4
                  sb           sp, -153(sp)
                  sb           a3, 219(sp)
                  xor          s3, s1, ra
                  sb           s4, -177(sp)
                  lb           zero, -51(sp)
                  sb           s6, -32(sp)
                  sb           s1, -56(sp)
                  auipc        ra, 856680
                  sh           a0, -136(sp)
                  sltu         t6, a6, a1
                  srl          ra, t3, s4
                  lbu          a0, 19(sp)
                  lui          s3, 242356
                  slli         s9, ra, 1
                  lbu          gp, 88(sp)
                  sb           t2, 54(sp)
                  sra          s10, t4, a6
                  auipc        s9, 269808
                  sra          t0, gp, s5
                  lw           t5, -222(sp)
                  sb           t2, 65(sp)
                  sltiu        s4, sp, 1364
                  sub          s6, s7, s2
                  sra          s10, a7, s9
                  sh           zero, 236(sp)
                  lbu          s10, -8(sp)
                  srli         s10, s7, 9
                  lh           tp, 102(sp)
                  sh           a4, 140(sp) #end riscv_load_store_rand_instr_stream_3
                  nop
169:              addi         a2, zero, 1641
170:              sub          a2, s10, gp
                  or           s5, t4, sp
                  sltu         a1, a2, a0
                  blt          a4, s2, 179f
                  srl          a3, a1, a1
                  sub          ra, t3, a5
                  andi         tp, t4, 1832
                  add          s10, s11, a3
178:              add          a4, a4, a2
179:              bne          s1, s1, 194f
                  andi         s10, t5, -535
                  andi         s5, a0, 306
                  bgeu         a2, sp, 193f
                  sra          s7, s0, a4
                  sub          t3, s9, s1
                  addi         s8, zero, -634
                  sltiu        sp, s3, -357
                  sltu         s8, a5, s5
                  slli         s1, tp, 27
                  sub          zero, a5, s5
                  sltiu        s3, t1, 1921
                  slli         s7, s5, 14
                  srli         gp, sp, 22
193:              nop
194:              sll          a4, t3, a3
                  or           t6, tp, a4
                  andi         s7, zero, 336
                  xori         a4, a0, -1350
                  andi         t0, ra, 662
                  nop
                  or           sp, sp, s10
                  nop
                  ori          t5, gp, -1717
                  addi         ra, s2, -698
                  auipc        a3, 506605
                  andi         sp, ra, 1548
                  srli         t5, gp, 8
                  blt          zero, zero, 210f
                  srai         s5, s1, 4
                  bge          s8, zero, 226f
210:              xor          a0, ra, s8
                  slt          s1, a5, sp
                  xori         s11, a4, 1836
                  lui          a4, 1017056
                  addi         s11, s8, 1626
                  bne          s7, a2, 235f
                  bgeu         s1, a6, 228f
                  auipc        a4, 11559
                  auipc        s11, 49312
                  slti         a4, ra, 1777
                  ori          t1, tp, 1073
                  or           t5, a4, s4
                  srli         t5, s8, 5
                  bgeu         tp, s9, 224f
224:              ori          a3, s0, 926
                  and          t1, tp, a1
226:              addi         s10, s6, -1047
                  xori         s8, a4, 913
228:              beq          a4, s0, 234f
                  sra          s7, t1, a3
                  sll          s5, s5, a6
                  slt          a5, a6, s10
                  bgeu         a2, s10, 238f
                  xori         t2, zero, 1638
234:              auipc        a0, 432087
235:              sra          ra, tp, s2
                  sltu         a5, t5, gp
                  auipc        a1, 521403
238:              xori         sp, s1, -471
                  auipc        t3, 865958
                  sub          ra, a7, t5
                  xor          sp, t4, s5
                  or           s8, s7, a7
                  slt          a4, s7, s0
                  sub          t2, s10, a2
                  srl          gp, t4, t2
                  sub          t2, gp, a6
                  and          a5, zero, a3
                  slli         a5, a4, 21
                  xori         a3, sp, -1518
                  sltu         s8, a1, t4
                  addi         a1, t2, 456
                  addi         s6, a3, -1526
                  sll          s3, a0, s6
                  slt          s7, t1, s7
                  xori         tp, s8, 616
                  addi         zero, a1, 1062
                  or           t1, s2, t6
                  srl          t0, t4, t6
                  addi         s10, s9, 362
                  add          t6, a0, s9
                  bltu         s11, s0, 275f
                  and          a2, t3, ra
                  bltu         gp, s5, 273f
                  sll          t3, s8, gp
                  ori          s11, t5, 838
                  nop
                  bge          s6, s9, 268f
268:              slti         a4, t3, 48
                  lui          s10, 636362
                  sltiu        zero, t1, 166
                  srl          zero, t2, s8
                  sltiu        t0, a1, -1142
273:              xor          zero, t4, a4
                  blt          s10, t4, 283f
275:              slti         a5, a4, 1809
                  sltiu        a5, t3, -866
                  sltu         s9, a1, a4
                  bne          ra, t4, 280f
                  or           a4, s9, a7
280:              slti         s10, a4, -1298
                  add          t1, s9, s2
                  slti         t2, t1, -1108
283:              add          s0, t1, ra
                  blt          s9, s4, 295f
                  sub          t5, tp, t4
                  ori          tp, s3, 1277
                  bne          zero, s4, 294f
                  srai         s8, a6, 11
                  or           a3, s8, a1
                  sll          t5, a6, a4
                  slt          s8, t1, t3
                  auipc        ra, 114247
                  sra          s6, s6, s3
294:              beq          t5, tp, 302f
295:              bltu         t0, tp, 308f
                  auipc        t6, 855080
                  srl          tp, s8, gp
                  sll          s11, a2, s2
                  beq          a4, a6, 306f
                  ori          t4, a5, 856
                  sltiu        t6, t1, 195
302:              slti         t6, s4, -1842
                  bltu         zero, s10, 308f
                  sltiu        a3, t4, -1266
                  sll          s4, a3, sp
306:              or           s1, t0, t5
                  sltiu        t6, tp, -750
308:              slli         s8, t3, 8
                  xori         tp, t0, 1523
                  auipc        a5, 507863
                  srl          t6, a7, s6
                  srl          zero, s11, a1
                  nop
                  beq          t6, t3, 329f
                  sra          a4, s0, zero
                  add          t5, s10, t5
                  sll          s10, s0, a6
                  slt          a3, ra, a7
                  andi         s11, t5, 613
                  slt          tp, a6, zero
                  slli         s0, s10, 19
                  or           s6, a1, t2
                  ori          zero, ra, -126
                  srli         gp, s10, 8
                  ori          s6, a7, -1280
                  la           a5, sub_1
                  add          t1, s3, s10
                  srli         a4, tp, 17
                  addi         a5, a5, -1009
                  or           a2, a2, a5
                  andi         s3, t3, -1399
main_j1:          jalr         s0, a5, 1010 #jump main -> sub_1
                  sra          a3, t5, t5
                  sra          s7, t5, a7
                  bge          t4, s3, 339f
                  xori         s6, a0, 588
329:              slli         s4, s5, 18
                  or           s7, t6, a7
                  bltu         t2, a4, 332f
332:              lui          t1, 911943
                  or           s0, s7, a1
                  lui          a3, 631260
                  and          s10, t0, s5
                  xor          s0, gp, sp
                  andi         t5, s9, 162
                  srl          s9, s8, ra
339:              sltu         a0, s11, s6
                  beq          t6, s3, 342f
                  sltiu        a2, t2, 762
342:              beq          s0, sp, 355f
                  srli         s8, tp, 8
                  ori          zero, s1, -1095
                  sltu         t4, s6, t6
                  addi         a2, s4, -896
                  xori         a2, s1, 1322
                  blt          s7, ra, 354f
                  srli         ra, t0, 9
                  srl          s5, a1, t5
                  addi         t2, a4, -657
                  srl          s0, sp, a0
                  slt          t0, s1, s1
354:              add          s3, zero, s11
355:              sra          s3, s0, s7
                  and          t4, a3, t6
                  bgeu         a0, s2, 371f
                  add          t6, gp, t2
                  lui          s3, 690610
                  and          a0, s2, s5
                  srai         t6, s4, 6
                  and          ra, t2, s7
                  srli         s8, t3, 19
                  blt          ra, s11, 373f
                  sub          ra, t4, a6
                  sltu         s5, sp, a0
                  xor          t0, zero, s2
                  bge          s9, a6, 370f
                  bge          tp, a6, 384f
370:              ori          zero, s1, -362
371:              srli         s1, tp, 1
                  srli         s6, gp, 9
373:              xor          t2, s7, gp
                  sltiu        gp, s2, 1811
                  srai         t0, a4, 4
                  slti         s4, t3, -1700
                  beq          t6, s1, 384f
                  srl          t4, s4, s8
                  addi         t6, s11, 1905
                  nop
                  add          t2, t5, s1
                  sra          t3, s7, a6
                  beq          s5, a6, 384f
384:              sra          zero, s9, t4
                  sub          s5, a0, a1
                  bgeu         s6, s4, 403f
                  addi         a5, t6, 825
                  bltu         s10, a2, 402f
                  or           t1, a0, a7
                  andi         tp, zero, -1762
                  sltu         t0, t2, zero
                  ori          a0, a4, 1235
                  blt          s7, a0, 397f
                  slti         a0, sp, -1116
                  srli         a4, t0, 17
                  srai         t3, a7, 30
397:              and          s9, s11, s4
                  sltiu        ra, a1, 374
                  bgeu         t2, t5, 408f
                  slt          a5, s0, s11
                  or           s4, t1, a5
402:              add          t2, a0, a5
403:              srl          s11, s3, s3
                  xor          t5, tp, tp
                  la           t0, region_0+1768 #start riscv_load_store_hazard_instr_stream_0
                  lb           s3, -672(t0)
                  and          tp, a2, a4
                  sltu         sp, t5, s9
                  sb           tp, -672(t0)
                  lbu          s3, -1511(t0)
                  lhu          s10, -1412(t0)
                  lbu          ra, -270(t0)
                  sh           a2, -270(t0)
                  sh           a6, -82(t0)
                  srai         s10, gp, 0
                  lbu          s4, 209(t0)
                  lbu          a2, -1117(t0)
                  add          s6, a0, s5
                  slti         t6, t5, -87
                  sltiu        t6, a2, 1693
                  lh           s0, -1284(t0) #end riscv_load_store_hazard_instr_stream_0
                  ori          s8, s6, -249
                  sltiu        t1, a5, -2048
                  blt          s5, t5, 418f
408:              slli         s10, a4, 4
                  beq          gp, s9, 416f
                  slti         s7, s9, 831
                  blt          t5, zero, 417f
                  slti         s4, t5, 1810
                  and          s11, s7, sp
                  lui          t3, 140959
                  andi         a1, a4, -887
416:              sll          a2, s7, a4
417:              srl          zero, a1, s7
418:              sltiu        sp, s6, -1779
                  sltiu        a4, a4, -343
                  srai         a5, s3, 14
                  andi         tp, s11, -931
                  and          s11, s2, a2
                  srl          t1, t2, ra
                  sltiu        ra, tp, -287
                  ori          s11, a4, -1069
                  ori          a5, a0, -208
                  slli         t6, a1, 0
                  addi         gp, s7, -204
                  bge          s4, s9, 432f
                  and          ra, tp, t2
                  sra          t3, s10, tp
432:              sra          t5, a1, s2
                  sra          s6, t1, sp
                  and          t5, a4, t4
                  sub          a5, tp, a5
                  add          s11, a3, s4
                  slti         ra, t5, 957
                  slli         t2, sp, 11
                  srli         t4, s3, 19
                  sltu         t2, a4, s10
                  ori          a5, t1, 1555
                  sltiu        t3, a3, 2005
                  lui          t2, 672053
                  bltu         s4, a3, 450f
                  or           t4, s8, s6
                  sltiu        zero, ra, 825
                  sltu         gp, s10, gp
                  nop
                  srl          t4, s10, a0
450:              auipc        t1, 312671
                  nop
                  srai         s5, s6, 14
                  blt          t3, a5, 467f
                  ori          t1, a2, -335
                  srl          tp, a0, s8
                  bgeu         zero, s9, 476f
                  slti         s9, t5, 1530
                  and          s10, t4, a1
                  bne          a5, t3, 470f
                  bne          t1, t3, 473f
                  sub          t5, t1, t6
                  or           s10, s2, t6
                  sra          ra, s2, a5
                  bltu         t2, a7, 474f
                  ori          t2, a5, -1159
                  andi         t3, t4, -770
467:              lui          t0, 917753
                  xor          s6, t2, gp
                  la           t0, sub_1
                  lui          s7, 845825
                  srli         t5, a1, 27
                  sra          tp, a5, s0
                  addi         t0, t0, 761
                  auipc        t6, 674783
                  or           gp, s7, a6
                  nop
                  xor          a3, gp, t2
main_j2:          jalr         s0, t0, -760 #jump main -> sub_1
                  beq          s3, t5, 477f
                  bltu         s6, t4, 476f
470:              sra          a3, a4, a6
                  ori          t0, s6, 1111
                  or           sp, a0, zero
473:              slti         t1, ra, -375
474:              nop
                  slti         t6, a2, 2036
476:              sltiu        sp, s8, 1538
477:              and          t3, t5, t1
                  blt          s4, t0, 486f
                  bltu         t3, gp, 485f
                  or           s3, t0, zero
                  xori         a4, s6, 292
                  slli         a2, a7, 15
                  slli         a2, s4, 26
                  auipc        a1, 474356
485:              slli         t5, s6, 18
486:              sll          a5, t1, s0
                  bge          zero, tp, 493f
                  or           s0, tp, a6
                  sll          t5, a1, a1
                  slli         s7, a3, 14
                  bge          s6, s0, 493f
                  bltu         a4, t6, 493f
493:              srl          s9, zero, ra
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            blt          a4, a3, sub_2_stack_p
sub_2_stack_p:    addi         a6, a6, -36
                  sra          gp, a5, s1
                  srli         t5, sp, 30
                  xor          s10, s10, zero
                  slti         t3, a6, -1479
                  sltu         t1, t3, a6
                  slli         a1, s4, 28
                  sll          s5, s3, a6
                  sltiu        a1, a6, 417
                  slli         t2, s6, 27
                  sw           s0, 4(a6)
                  nop
                  la           s0, region_0+650 #start riscv_load_store_hazard_instr_stream_0
                  sb           gp, 41(s0)
                  nop
                  sb           s5, 41(s0)
                  lb           s9, 170(s0)
                  sb           s2, 170(s0)
                  or           s11, s3, s11
                  lw           s11, 170(s0)
                  lw           s6, 170(s0)
                  nop
                  lh           s6, 170(s0)
                  sb           s6, -27(s0)
                  lbu          a3, -43(s0)
                  srai         t4, a5, 3
                  srai         s9, s7, 1
                  lbu          s4, -43(s0)
                  lbu          s7, -43(s0)
                  lb           a2, -43(s0)
                  lbu          s7, -43(s0) #end riscv_load_store_hazard_instr_stream_0
                  la           t2, region_0+1480 #start load_store_instr_stream_4
                  la           a4, region_0+937 #start load_store_instr_stream_0
                  la           ra, region_0+777 #start load_store_instr_stream_2
                  la           s5, region_0+1658 #start load_store_instr_stream_3
                  lw           a0, 15(a4)
                  lb           a5, -1080(s5)
                  lb           s4, -236(ra)
                  lbu          s6, -1391(t2)
                  lbu          a2, -206(ra)
                  lh           s3, -992(s5)
                  lb           tp, -385(s5)
                  la           t0, region_0+78 #start load_store_instr_stream_1
                  sb           s0, -12(a4)
                  sw           a7, 7(a4)
                  sh           a5, -147(ra)
                  sb           zero, -1277(s5)
                  lbu          a0, -53(t2)
                  lbu          a5, 20(t0)
                  lbu          s11, -13(t0)
                  sb           sp, -279(s5)
                  lbu          a5, 3(t0)
                  sb           s3, -1206(t2)
                  sb           a4, -1477(t2)
                  sw           a6, 294(s5)
                  sb           a4, 228(ra)
                  sh           s6, 20(t0)
                  sb           t6, -786(s5)
                  sb           s11, -16(a4)
                  sb           s1, 40(t0)
                  lb           s4, 6(a4)
                  sb           s7, 33(t0)
                  lbu          a1, -20(t0)
                  lbu          t3, -16(t0)
                  lb           sp, -533(t2)
                  sb           a0, 4(a4)
                  lb           gp, -579(t2)
                  lb           s7, -10(a4)
                  sb           s5, 144(ra) #end load_store_instr_stream_2
                  lh           a5, -358(t2)
                  lbu          s8, 25(t0)
                  sb           a0, -642(t2) #end load_store_instr_stream_4
                  lbu          s8, -983(s5) #end load_store_instr_stream_3
                  lw           s7, 11(a4)
                  lb           sp, 13(a4)
                  lbu          s8, 26(t0) #end load_store_instr_stream_1
                  lbu          a5, 1(a4) #end load_store_instr_stream_0
                  la           sp, region_0+55 #start riscv_load_store_rand_instr_stream_0
                  lh           a0, 93(sp)
                  sb           ra, 82(sp)
                  sll          s0, t6, s11
                  ori          s10, s3, 555
                  lh           s9, 113(sp)
                  sb           t5, 250(sp)
                  lh           zero, -37(sp)
                  lb           gp, 144(sp)
                  slt          a0, s2, t1
                  sb           s0, 75(sp)
                  xor          ra, t2, ra
                  lw           s0, 37(sp)
                  lhu          t3, 189(sp)
                  sb           a3, 47(sp)
                  sw           a7, 149(sp)
                  sltiu        s8, t1, -976
                  sltiu        t0, s8, -1532
                  lb           t5, 228(sp)
                  sltu         t6, s8, s0
                  slli         ra, tp, 4
                  lbu          a1, 71(sp)
                  nop
                  nop
                  lb           s8, 92(sp)
                  lbu          a3, 152(sp)
                  sb           s0, 44(sp)
                  lbu          t6, -40(sp) #end riscv_load_store_rand_instr_stream_0
                  slt          s3, gp, t2
                  xor          s8, s2, s9
                  or           t5, tp, ra
                  sltu         s10, s2, s6
                  andi         a1, ra, 257
                  auipc        a0, 137376
                  slli         sp, s4, 14
                  or           t3, s7, a5
                  slli         s4, t5, 21
                  xor          a0, s0, s0
                  lui          s1, 462373
                  xori         a1, gp, -130
                  addi         s10, s2, 1343
                  blt          zero, t1, 15f
                  srai         s6, sp, 20
15:               srli         gp, s4, 5
                  bgeu         t1, s10, 17f
17:               sltiu        t6, t1, -1122
                  bge          s3, t0, 31f
                  bge          s8, t1, 20f
20:               bltu         s4, t4, 32f
                  slti         s6, a7, 102
                  lui          s9, 488354
                  bgeu         a5, a7, 30f
                  slti         a1, tp, -1830
                  srli         t2, t1, 20
                  slli         t2, t3, 30
                  addi         s11, t5, -1731
                  bltu         s3, a0, 43f
                  srli         s9, a4, 20
30:               bltu         s11, a6, 32f
31:               bgeu         a5, ra, 49f
32:               bne          sp, t0, 40f
                  sra          a2, a0, t3
                  nop
                  lui          a5, 169414
                  bltu         t5, s8, 54f
                  sub          a1, a4, s5
                  sltiu        s10, t3, -1190
                  blt          a5, sp, 44f
40:               xor          a3, sp, t6
                  bge          a2, s6, 42f
42:               bne          s7, ra, 56f
43:               bltu         tp, ra, 55f
44:               auipc        a0, 108532
                  and          gp, t3, a6
                  or           ra, a0, a7
                  beq          a0, s5, 59f
                  xor          a5, t3, s0
49:               sltu         t2, a1, ra
                  nop
                  srli         a2, ra, 4
                  xori         zero, gp, -477
                  bne          t4, s6, 62f
54:               beq          t6, a2, 57f
55:               bne          s4, t0, 68f
56:               and          a5, s6, a5
57:               bge          ra, s2, 59f
                  lui          s5, 10572
59:               and          s11, a1, s6
                  xori         t2, a1, 389
                  srl          t2, s8, t6
62:               and          t1, gp, sp
                  nop
                  sltu         t1, a7, s11
                  slti         tp, ra, 1991
                  bltu         s4, s6, 86f
                  nop
68:               srai         s1, a1, 23
                  ori          a2, gp, 916
                  srli         t2, t6, 10
                  nop
                  xori         s7, s11, 681
                  add          s11, tp, a1
                  bne          t6, a5, 86f
                  sll          t3, t5, t3
                  bge          a2, a2, 82f
                  sra          tp, sp, s11
                  lui          s11, 928528
                  xor          s9, s0, a0
                  xori         s9, t1, -1606
                  bltu         s4, a5, 99f
82:               sra          a3, s1, t2
                  slti         s7, s3, -262
                  sltu         t6, s2, a4
                  srai         a2, t3, 27
86:               sra          s3, t6, sp
                  slt          t2, t1, a2
                  sub          a2, t2, a5
                  ori          a0, s6, -306
                  sra          s3, ra, t2
                  and          t1, t3, t4
                  bltu         a0, s4, 106f
                  slt          s0, s0, t0
                  sll          sp, t0, a2
                  and          s6, s0, t3
                  slti         t5, s5, -662
                  srl          t6, s2, tp
                  andi         t0, s0, -1297
99:               bge          s10, a1, 109f
                  slli         s5, s4, 26
                  andi         a5, s6, -1395
                  lui          s3, 664845
                  sub          t2, s2, s5
                  srl          s4, a4, t5
                  xor          s1, gp, a1
106:              or           s9, a7, t2
                  andi         s4, t1, -978
                  nop
109:              sub          s11, s3, s4
                  sltu         gp, s6, s9
                  xor          s6, s9, s9
                  srai         s9, t1, 31
                  bge          s10, t5, 118f
                  sub          s11, a1, a0
                  srli         tp, a4, 18
                  addi         s7, zero, -604
                  bltu         sp, sp, 121f
118:              srl          s8, t4, s8
                  bne          s9, a5, 126f
                  ori          s6, a4, -1048
121:              srai         t6, ra, 4
                  sltu         a5, t5, t4
                  sltu         t5, s1, sp
                  bgeu         t3, s5, 136f
                  sltiu        s3, tp, -1778
126:              xori         t5, tp, -115
                  sltu         s7, a3, a7
                  add          s9, a1, t2
                  xori         t2, zero, -971
                  blt          tp, s8, 131f
131:              blt          a1, s8, 148f
                  bge          s11, s5, 144f
                  bgeu         a5, s9, 135f
                  bne          s3, s2, 147f
135:              xori         t5, t3, -1686
136:              beq          t0, sp, 138f
                  blt          ra, t6, 148f
138:              addi         t4, tp, -447
                  nop
                  xor          s1, t4, t5
                  sra          s5, a5, gp
                  xori         s6, gp, -342
                  srl          a2, a1, s10
144:              lui          t4, 903815
                  sltiu        s1, a5, -384
                  bltu         s8, s9, 148f
147:              sra          zero, a2, s1
148:              lui          t1, 422332
                  auipc        a4, 780019
                  and          t4, sp, gp
                  srai         t2, a0, 2
                  or           tp, s7, sp
                  sub          s1, a0, s8
                  or           ra, s5, s6
                  slt          s7, s9, s11
                  lw           s0, 4(a6)
                  xor          sp, s8, a0
                  srl          t1, gp, a0
                  addi         a6, a6, 36
                  srl          s10, s3, a1
267:              addi x28, x8, 0
267:              jalr x28, x28, 0
sub_1:            blt          a6, s5, sub_1_stack_p
                  sltu         t3, t4, a0
                  slli         s5, s5, 25
                  addi         t4, s10, -710
                  ori          a4, t0, -571
sub_1_stack_p:    addi         a6, a6, -44
                  sw           s0, 4(a6)
                  sll          s7, t6, a7
                  or           a4, t6, zero
                  la           ra, sub_2
                  sra          s8, s10, ra
                  addi         ra, ra, 787
                  nop
                  sub          s1, s11, s7
                  srai         s4, sp, 8
                  ori          a1, t5, -975
sub_1_j3:         jalr         s0, ra, -786 #jump sub_1 -> sub_2
                  srai         a1, ra, 16
                  xor          zero, a4, t3
                  sll          a1, gp, t1
                  xori         s0, a5, -558
                  lui          zero, 494473
                  and          s6, t2, a1
                  andi         a3, s3, 748
                  bgeu         ra, sp, sub_1_j4 #branch to jump instr
                  srl          ra, s2, t1
                  ori          s0, s10, -1125
                  slti         s5, s4, -1823
sub_1_j4:         jal          s0, sub_2 #jump sub_1 -> sub_2
                  la           a1, region_0+1860 #start load_store_instr_stream_1
                  la           s9, region_0+1158 #start load_store_instr_stream_2
                  lbu          s4, 231(s9)
                  lb           s3, -15(a1)
                  la           a3, region_0+1410 #start load_store_instr_stream_0
                  la           t0, region_0+1801 #start load_store_instr_stream_3
                  lb           t5, -5(a1)
                  lw           t2, 10(a3)
                  sh           s3, -16(a1)
                  lhu          t3, 90(s9)
                  lb           s5, 24(s9)
                  sw           t1, -13(t0)
                  lb           tp, -9(a1)
                  lh           t6, 0(a3)
                  lhu          t4, 12(a1)
                  sw           ra, -9(t0)
                  lb           t5, -201(s9)
                  lbu          a4, 9(s9)
                  lhu          t6, 150(s9)
                  sb           t6, -5(a3)
                  sb           t6, -9(a1)
                  lb           gp, 11(a1)
                  sb           t4, -10(t0)
                  lb           t3, -123(s9)
                  lhu          s8, 14(a1)
                  lbu          s0, 15(a3)
                  sb           s10, -7(t0)
                  sb           a2, 15(a1) #end load_store_instr_stream_1
                  lb           t2, 49(s9) #end load_store_instr_stream_2
                  lbu          t6, -7(t0) #end load_store_instr_stream_3
                  sb           gp, 13(a3) #end load_store_instr_stream_0
                  la           ra, region_1+75 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s0, 1728(ra)
                  sb           a5, 1728(ra)
                  sb           a3, 1728(ra)
                  nop
                  slt          t6, ra, sp
                  sb           a7, 1728(ra)
                  add          a3, a0, tp
                  lb           a0, 1728(ra)
                  lh           s4, 1197(ra)
                  sh           tp, 1659(ra)
                  and          a0, sp, s2
                  lb           s7, 348(ra)
                  sb           s11, 348(ra)
                  sb           a6, 49(ra)
                  nop
                  sb           t5, 1724(ra)
                  sb           a0, 1724(ra)
                  sub          t4, a4, s11
                  lbu          s4, 1724(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           s7, region_0+838 #start riscv_load_store_rand_instr_stream_1
                  sw           a7, 530(s7)
                  auipc        s3, 399754
                  slti         s10, a5, -1795
                  lbu          s1, 1003(s7)
                  sb           t3, 420(s7)
                  addi         s1, s4, 1460
                  sub          t5, s11, s11
                  sb           a2, -391(s7)
                  lbu          s3, 96(s7)
                  lbu          sp, 71(s7)
                  sb           s6, 30(s7)
                  nop
                  sll          a2, t3, t5
                  sb           s10, -395(s7)
                  slt          a4, s4, a3
                  sh           t2, 520(s7)
                  lw           s1, 598(s7)
                  lbu          a3, -405(s7)
                  sltiu        s1, t0, 1865
                  lbu          s6, 276(s7)
                  sb           a0, 405(s7)
                  lbu          a2, 547(s7)
                  ori          gp, a7, 236
                  lhu          t5, 780(s7)
                  lb           s8, 36(s7)
                  lb           a0, 843(s7)
                  add          a3, tp, t5
                  sb           zero, 1085(s7)
                  lbu          t1, 555(s7)
                  lbu          s4, -735(s7)
                  sb           a4, -274(s7)
                  sb           a4, -53(s7)
                  lbu          zero, -122(s7) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+733 #start load_store_instr_stream_0
                  la           t6, region_0+271 #start load_store_instr_stream_1
                  sh           a7, 471(a3)
                  sh           t2, 301(t6)
                  lhu          a0, 453(a3)
                  lb           s4, -178(t6)
                  sw           t5, 1125(t6)
                  lb           t2, 312(t6)
                  lb           a2, 340(a3)
                  lbu          ra, 798(t6) #end load_store_instr_stream_1
                  sb           s0, -228(a3)
                  lbu          t2, 128(a3)
                  lb           t0, 726(a3) #end load_store_instr_stream_0
                  la           sp, region_0+280 #start riscv_load_store_rand_instr_stream_2
                  sltu         ra, sp, a2
                  slt          t2, s5, tp
                  lhu          tp, 114(sp)
                  lh           a1, 10(sp)
                  lb           a4, 59(sp)
                  srai         ra, t6, 21
                  sra          a5, sp, s2
                  lb           a1, 101(sp)
                  lb           t1, -51(sp)
                  ori          t2, t6, 284
                  lbu          a1, 225(sp)
                  srl          a2, a3, a5
                  lw           s1, -4(sp)
                  lbu          tp, -167(sp)
                  sb           zero, -92(sp)
                  srai         s3, a4, 24
                  lb           s4, -59(sp)
                  srli         tp, ra, 12
                  sb           t5, -211(sp)
                  lbu          t3, 159(sp)
                  ori          gp, s4, 92
                  lb           t2, 120(sp)
                  lhu          s5, 248(sp)
                  srai         t0, a6, 28
                  slli         t0, a0, 30
                  xor          t0, a3, s5
                  sb           ra, -89(sp)
                  lb           t3, -108(sp)
                  sb           a2, 9(sp)
                  sb           a4, 54(sp)
                  lui          s5, 623275
                  sb           s0, 67(sp)
                  sb           a3, -47(sp)
                  sra          s8, a0, a6
                  sb           a2, -156(sp)
                  lhu          s10, -238(sp)
                  sb           t2, 119(sp)
                  lui          t6, 372362
                  lbu          s5, -135(sp)
                  sb           s7, -131(sp)
                  lui          ra, 70559
                  srli         t6, a2, 23
                  lbu          s4, -48(sp)
                  sltu         t6, tp, s4
                  srli         s3, s9, 1
                  xor          s8, t4, s0
                  or           s0, s11, s2
                  lbu          ra, 189(sp)
                  sltu         t5, s5, t3
                  sb           s0, -37(sp)
                  lbu          t6, -123(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1471 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s3, a4, 1796
                  srli         s1, s10, 17
                  lb           s5, 55(sp)
                  lh           a3, -43(sp)
                  sb           a4, -42(sp)
                  sw           gp, -39(sp)
                  lhu          tp, -45(sp)
                  lw           t3, 1(sp)
                  xor          t1, a4, a2
                  srl          s1, s6, s11
                  or           a1, s1, s5
                  lbu          s10, -34(sp)
                  and          t1, t4, s10
                  xor          s8, zero, s10
                  lbu          t6, 49(sp)
                  srl          a4, t4, s7
                  lbu          a0, 64(sp)
                  lbu          a0, -12(sp)
                  sb           s7, 56(sp)
                  sb           a3, -17(sp)
                  or           s7, s1, zero
                  srl          s10, t3, t0
                  lbu          ra, 59(sp)
                  lb           gp, 6(sp)
                  sra          t6, a4, s2
                  xori         a5, a0, -1043
                  addi         t2, s5, -584
                  lw           a4, 13(sp)
                  xor          a1, s4, a2
                  sll          t4, s11, tp
                  lhu          a2, -53(sp)
                  lbu          tp, 12(sp)
                  xori         ra, tp, -539
                  lw           a4, 29(sp)
                  sb           t2, 40(sp)
                  or           a2, a2, a5
                  lhu          zero, 11(sp)
                  lb           t2, -26(sp)
                  auipc        t0, 87106
                  lh           a0, -29(sp)
                  sb           t5, 24(sp)
                  sltiu        t2, s11, -1664
                  sltiu        ra, s2, -649
                  sh           t0, 49(sp)
                  sb           s5, 62(sp) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+1245 #start load_store_instr_stream_1
                  la           a5, region_1+192 #start load_store_instr_stream_0
                  lb           s8, -15(a5)
                  la           t6, region_1+892 #start load_store_instr_stream_3
                  sb           s6, 108(t6)
                  lbu          s4, -6(a5)
                  sb           t1, 10(gp)
                  la           a3, region_1+267 #start load_store_instr_stream_2
                  sb           s9, 232(a3)
                  sb           zero, 9(a5)
                  la           s6, region_1+696 #start load_store_instr_stream_4
                  sb           a1, 9(gp)
                  lb           ra, -11(s6)
                  lb           a0, 100(t6)
                  sb           a1, 2(gp)
                  sb           a2, -8(gp)
                  sb           s1, 15(s6)
                  sb           s10, -245(t6)
                  lb           t3, -8(a5)
                  lb           a2, -39(t6)
                  lb           s11, -3(s6)
                  lw           t0, -199(a3)
                  lb           s5, -3(s6)
                  sb           ra, 216(t6)
                  lbu          s5, -144(a3)
                  sh           s6, 230(t6)
                  sh           tp, 7(gp)
                  sb           s8, 1(s6)
                  lbu          s0, 14(a5)
                  lhu          s3, -197(a3)
                  lb           s5, -5(s6)
                  lb           zero, -102(t6)
                  lbu          a4, 0(a5)
                  sb           tp, -7(s6)
                  lb           a2, 4(gp)
                  lbu          s0, 121(a3)
                  sb           s2, -15(gp)
                  lbu          tp, 229(t6)
                  lh           t1, -16(s6)
                  sw           s10, -95(a3) #end load_store_instr_stream_2
                  sb           t6, 3(s6) #end load_store_instr_stream_4
                  lbu          a0, 4(gp) #end load_store_instr_stream_1
                  lbu          s9, 253(t6) #end load_store_instr_stream_3
                  lh           s1, -4(a5) #end load_store_instr_stream_0
                  la           t2, region_1+34 #start riscv_load_store_hazard_instr_stream_2
                  lw           a3, 94(t2)
                  lw           s7, 94(t2)
                  lw           zero, 94(t2)
                  sll          t3, s2, a2
                  lh           a4, 94(t2)
                  lb           t3, 94(t2)
                  lh           a3, 94(t2)
                  lh           tp, 94(t2)
                  lbu          a2, 94(t2)
                  lh           t3, 116(t2)
                  sh           s9, 116(t2)
                  srl          a3, s8, a5
                  lbu          s0, 116(t2)
                  srli         t1, t6, 3
                  sb           ra, 116(t2) #end riscv_load_store_hazard_instr_stream_2
                  la           s6, region_0+359 #start riscv_load_store_hazard_instr_stream_1
                  lw           s11, 25(s6)
                  add          a2, s4, a5
                  lhu          gp, 25(s6)
                  lw           a5, 25(s6)
                  xor          zero, s4, t1
                  andi         s11, t1, -831
                  lbu          ra, 166(s6)
                  lbu          t3, 166(s6)
                  lb           a1, 166(s6)
                  sb           a5, 166(s6)
                  lbu          ra, 156(s6)
                  lb           tp, 156(s6)
                  sb           s7, 156(s6)
                  lb           a0, 156(s6) #end riscv_load_store_hazard_instr_stream_1
                  auipc        zero, 312947
                  sltiu        sp, t5, -1477
                  slti         tp, tp, -57
                  sltu         s4, t0, tp
                  ori          t3, a7, 249
                  ori          zero, t5, 1720
                  bgeu         s7, a5, 8f
                  srl          s1, gp, a6
8:                blt          a7, s11, 16f
                  add          s8, s6, a7
                  slt          s1, s0, a6
                  bne          s6, s3, 28f
                  auipc        t2, 763194
                  auipc        ra, 147003
                  xor          a0, ra, t5
                  and          a0, a0, s4
16:               xori         ra, s5, 2005
                  bgeu         s6, s6, 24f
                  blt          s4, s6, 23f
                  xori         zero, s3, 438
                  sll          t6, tp, s3
                  xori         a1, ra, 1666
                  slli         t4, zero, 2
23:               sltiu        zero, s9, -441
24:               sub          s7, t6, s9
                  sltiu        t1, a6, -736
                  xori         a4, a4, 1745
                  sltiu        s4, t0, 1552
28:               auipc        t5, 236527
                  sltiu        sp, s0, 1944
                  srl          s5, t1, s11
                  bltu         a7, t5, 41f
                  bge          s4, t5, 37f
                  blt          ra, s2, 35f
                  bltu         ra, a6, 35f
35:               lui          a5, 530524
                  srl          s8, s6, t5
37:               xori         t0, zero, -127
                  srl          t0, t3, a0
                  xor          sp, a7, zero
                  bge          s7, s1, 58f
41:               xori         t6, zero, 938
                  srli         s7, ra, 4
                  bne          t4, sp, 45f
                  auipc        s9, 113855
45:               and          s11, s3, a5
                  beq          s8, a7, 61f
                  auipc        a3, 864519
                  srl          zero, t6, s4
                  srl          s6, s0, s3
                  ori          t6, a5, -1793
                  or           s5, a5, a2
                  slt          a2, a3, t6
                  sltiu        s7, a1, -1583
                  or           a0, t4, t1
                  auipc        a4, 400020
                  auipc        s0, 26097
                  addi         s11, t1, -1674
58:               beq          ra, zero, 73f
                  lui          t3, 687876
                  add          s10, t3, a5
61:               xor          s1, a3, a7
                  bge          t6, gp, 66f
                  sltiu        s6, s8, -504
                  sll          t6, t1, sp
                  bge          s7, s3, 66f
66:               srl          s1, a3, a7
                  addi         s11, s2, 176
                  srl          sp, a0, a4
                  sub          a0, t5, t3
                  and          a4, a6, ra
                  xor          s1, s7, s4
                  or           s8, s5, a2
73:               sub          a1, t5, a3
                  sltiu        s4, s6, -1195
                  nop
                  andi         s5, a3, -1010
                  slti         s8, tp, -600
                  srai         s6, tp, 19
                  ori          gp, ra, 1861
                  lui          a1, 1032270
                  srli         s10, a0, 7
                  sub          ra, a3, t5
                  sra          t1, a2, t1
                  andi         s10, s10, -166
                  xor          sp, s9, t6
                  beq          a2, a6, 103f
                  sltu         a4, tp, a7
                  bge          s7, a0, 102f
                  or           a1, s8, sp
                  addi         s9, s4, -1710
                  sra          a4, s6, s8
                  ori          s8, t3, 1046
                  srli         s5, s0, 28
                  sra          a1, a6, sp
                  sra          a2, a0, a4
                  beq          zero, tp, 114f
                  beq          s8, t3, 98f
98:               sub          s5, s5, a0
                  addi         s3, t3, 1784
                  sub          s11, a3, tp
                  nop
102:              auipc        s10, 608280
103:              andi         s6, t3, 1854
                  sub          a0, s11, a5
                  and          s1, zero, s0
                  and          t3, a5, s3
                  srai         a1, tp, 31
                  bgeu         a2, tp, 118f
                  add          t2, a7, t0
                  or           s9, s9, t4
                  slli         a4, s8, 14
                  slli         tp, s0, 23
                  ori          t3, s11, 1983
114:              sra          t3, s8, a2
                  sltu         t4, a2, s1
                  xori         t5, s4, -133
                  or           s6, s6, s1
118:              srl          t3, s3, tp
                  sll          s6, s7, s2
                  bge          s3, s10, 140f
                  xor          a0, s0, s7
                  xori         gp, sp, -577
                  bge          t6, t1, 129f
                  beq          s10, zero, 133f
                  or           t5, a4, t1
                  and          a3, a5, s4
                  andi         a2, t4, -134
                  beq          sp, s7, 142f
129:              slti         a1, t3, 1663
                  sub          s5, t1, t4
                  bge          s5, t0, 144f
                  srl          zero, a3, s7
133:              sub          s0, a2, s0
                  blt          s3, gp, 137f
                  sltu         t2, t3, a5
                  sltu         t2, s0, a2
137:              bne          s3, t5, 148f
                  bne          s1, gp, 157f
                  andi         s10, t4, -1938
140:              slti         s7, s6, -536
                  bgeu         s5, a6, 160f
142:              srl          tp, gp, t6
                  slli         a3, s3, 5
144:              srai         a0, s2, 27
                  blt          t6, t0, 154f
                  and          t4, a2, a1
                  andi         t5, a0, -876
148:              add          s8, a3, a1
                  bltu         sp, s5, 153f
                  addi         s6, s7, -563
                  sra          t6, a7, t1
                  ori          s5, a5, -568
153:              sltu         s11, a2, zero
154:              sll          s4, s4, a4
                  addi         t1, s3, -81
                  addi         s4, t6, 1536
157:              beq          a6, t2, 174f
                  auipc        zero, 695925
                  slti         t5, a1, -2027
160:              ori          a1, t6, -1006
                  lui          s1, 163870
                  slt          a3, t3, s6
                  bgeu         s5, a2, 166f
                  and          s4, s6, s9
                  blt          s11, a0, 180f
166:              slli         s4, ra, 6
                  bge          s10, zero, 187f
                  andi         s6, t4, 230
                  xori         a1, ra, -2037
                  beq          t2, tp, 189f
                  andi         t0, t3, -1017
                  srli         a1, s8, 26
                  nop
174:              slti         a2, s11, 1595
                  beq          s6, gp, 181f
                  bne          t5, a1, 191f
                  srai         a5, t1, 14
                  blt          s3, t2, 188f
                  ori          sp, s0, 1058
180:              auipc        t6, 173255
181:              srl          a0, s4, a3
                  slt          t5, t1, s8
                  and          s6, s10, ra
                  sub          a3, a5, gp
                  srl          a3, a3, t1
                  bltu         a6, s10, 193f
187:              bge          sp, s7, 206f
188:              ori          t4, ra, 838
189:              blt          s5, t6, 198f
                  or           a4, sp, a1
191:              sltiu        t3, t3, -1128
                  sltiu        tp, t5, -1780
193:              ori          sp, t0, -26
                  srai         s11, s5, 16
                  sll          s4, a1, t1
                  auipc        a3, 806464
                  bge          a1, t2, 199f
198:              add          t2, a7, t4
199:              ori          a1, a1, -1345
                  xori         s10, a7, 1973
                  nop
                  nop
                  or           ra, s5, t2
                  sub          s11, s10, a6
                  xor          a4, s4, s2
206:              xori         sp, s11, 1645
                  beq          s9, s3, 215f
                  sub          s0, a1, s3
                  blt          gp, s0, 218f
                  srli         s0, s6, 10
                  addi         s7, s3, -1848
                  and          t6, gp, s0
                  sra          t6, t1, s6
                  andi         s9, s0, -780
215:              bgeu         s2, a1, 220f
                  slt          s0, s0, a0
                  bge          s10, s2, 228f
218:              sra          t1, gp, t6
                  xor          s0, a7, a0
220:              lui          s4, 590883
                  sra          a1, s2, t3
                  srl          t5, s7, a3
                  xori         t3, ra, -1179
                  slt          s6, s9, gp
                  slli         s6, s6, 30
                  xor          a0, t5, a2
                  bgeu         s1, a0, 228f
228:              slti         s4, s11, -405
                  sltu         ra, t0, t3
                  xori         t0, t0, -1568
                  add          tp, s2, t2
                  srai         zero, s4, 13
                  bgeu         a5, gp, 235f
                  auipc        zero, 637221
235:              bltu         s2, s7, 236f
236:              slti         t5, s5, 956
                  ori          t0, a4, 1576
                  sltu         t5, sp, s4
                  and          t4, t4, t2
                  sltiu        ra, t6, 403
                  slt          s11, a7, s3
                  nop
                  lui          t3, 292527
                  beq          s10, a7, 258f
                  sub          s8, s10, tp
                  sltiu        t5, t6, -846
                  slli         t6, s11, 1
                  nop
                  or           s1, s8, t5
                  sra          a4, a4, t5
                  and          s10, tp, t0
                  auipc        t4, 90106
                  bne          s8, s9, 271f
                  or           s6, s5, a6
                  srl          s10, a7, t3
                  auipc        a1, 66239
                  nop
258:              andi         sp, a6, 2044
                  blt          t4, s5, 273f
                  xori         s7, s10, -714
                  lui          t6, 935968
                  ori          t2, sp, 1535
                  bge          t5, t0, 280f
                  srai         s7, t2, 8
                  lui          s1, 668797
                  srai         s4, t0, 7
                  add          gp, t0, a0
                  addi         a5, t4, -769
                  nop
                  xori         t4, s3, 1896
271:              sra          zero, a0, a6
                  sltu         sp, a7, a1
273:              addi         t5, s6, 1283
                  srli         a4, a4, 10
                  bne          a5, s4, 293f
                  bltu         a6, s8, 281f
                  auipc        sp, 408504
                  and          tp, s8, s6
                  and          sp, s9, s3
280:              srl          s4, s11, gp
281:              srl          s1, t4, s5
                  xor          s4, zero, a1
                  slti         t0, s10, -1410
                  srai         tp, ra, 18
                  slli         s3, s8, 19
                  xor          t6, s6, s10
                  sltu         s5, t6, s8
                  nop
                  xori         a5, s9, 1780
                  sub          s7, s5, s2
                  sltiu        t3, sp, -408
                  slti         t0, a1, -160
293:              or           t5, s0, s1
                  srli         ra, t5, 7
                  sltu         t5, t5, s7
                  slti         s11, s1, -1822
                  auipc        t2, 539427
                  slti         sp, a7, 1439
                  ori          s3, s4, -596
                  sll          s5, t6, a0
                  or           sp, s5, a3
                  slti         t0, zero, -1213
                  add          s6, a1, tp
                  sltu         s6, t2, zero
                  bge          s2, a6, 318f
                  bltu         t1, tp, 316f
                  sra          a1, gp, a1
                  bne          t0, s11, 309f
309:              beq          s6, t6, 311f
                  slt          t5, s1, a2
311:              bltu         sp, t0, 317f
                  slli         a3, s6, 17
                  blt          t2, t2, 315f
                  sra          t6, t3, a4
315:              srai         t6, s4, 4
316:              nop
317:              sll          s4, a6, t2
318:              lui          s7, 513402
                  ori          t6, t2, -1383
                  slti         t2, s7, 553
                  add          s3, a4, a0
                  ori          a2, zero, -1127
                  slt          t1, t1, t6
                  addi         s1, s5, 1544
                  or           a5, s8, a3
                  sra          s11, s6, s3
                  bgeu         sp, gp, 329f
                  bltu         t1, s10, 329f
329:              srl          s8, sp, t3
                  addi         gp, s5, -973
                  srai         t3, s1, 15
                  or           s1, ra, gp
                  slti         sp, s8, -259
                  sub          ra, a2, s3
                  xor          t2, gp, ra
                  sub          zero, s1, a7
                  sra          s7, s4, s1
                  add          s3, t3, sp
                  sub          s4, a2, a6
                  bltu         a3, sp, 355f
                  blt          s8, a3, 356f
                  sub          a4, a3, a2
                  slti         t4, t4, -2017
                  add          a2, s0, s8
                  srli         t1, s6, 31
                  xori         s4, s3, 269
                  slli         ra, s11, 21
                  lui          s4, 648706
                  sra          s10, t1, s8
                  srli         a2, t3, 16
                  srl          a0, tp, s0
                  bge          sp, sp, 356f
                  sra          s11, a3, a2
                  sll          tp, a7, a1
355:              slti         ra, a6, -622
356:              xor          s8, a5, t2
                  lw           s0, 4(a6)
                  add          a4, gp, s1
                  xori         s1, a4, -197
                  addi         a6, a6, 44
                  and          a5, a4, ra
662:              addi x24, x8, 0
662:              jalr x24, x24, 0
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
mmode_intr_vector_1:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x17, x16, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x2, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x2, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x2, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x2, x5, ecall_handler
                  li x5, 0x1
                  beq x2, x5, instr_fault_handler
                  li x5, 0x5
                  beq x2, x5, load_fault_handler
                  li x5, 0x7
                  beq x2, x5, store_fault_handler
                  li x5, 0xc
                  beq x2, x5, pt_fault_handler
                  li x5, 0xd
                  beq x2, x5, pt_fault_handler
                  li x5, 0xf
                  beq x2, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x16, x17, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
