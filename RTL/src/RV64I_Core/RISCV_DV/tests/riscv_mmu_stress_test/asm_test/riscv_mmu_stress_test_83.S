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
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x5f3b8eba
                  li x5, 0x0
                  li x6, 0x190f407e
                  li x7, 0x3
                  li x8, 0x80000000
                  li x9, 0x847e6f08
                  li x10, 0xf8f93e4b
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x0
                  li x17, 0xf6d40bb1
                  li x18, 0xa
                  li x19, 0xf6488a26
                  li x20, 0x9
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0xf420961f
                  li x26, 0x2
                  li x27, 0x3b4a9943
                  li x28, 0x2f8736b8
                  li x29, 0xf936bb54
                  li x30, 0x80000000
                  li x31, 0xf1f0625e
                  la x21, user_stack_end
main:             la           a5, region_0+602 #start riscv_load_store_rand_instr_stream_1
                  slli         sp, s6, 21
                  lb           t4, 0(a5)
                  srli         s4, a0, 15
                  srl          ra, a3, sp
                  sltiu        s7, t6, -652
                  slt          s10, a5, s5
                  slti         t2, zero, -1234
                  lui          t1, 19479
                  lbu          sp, 4(a5)
                  or           sp, tp, s6
                  lhu          s8, -10(a5)
                  sub          gp, s2, t2
                  srai         t5, t5, 30
                  nop
                  xori         s9, ra, -981
                  sh           s6, -16(a5)
                  srl          t4, a2, s4
                  sltiu        s2, t0, -974
                  lui          a0, 716649
                  lbu          sp, 6(a5)
                  xor          t3, a7, s9
                  lb           sp, 10(a5)
                  xori         s4, zero, 1994
                  sb           a4, 0(a5)
                  auipc        a4, 861420
                  sh           a0, -14(a5)
                  nop
                  lbu          s4, 1(a5)
                  addi         gp, s4, 1594
                  nop
                  addi         t1, t4, -27
                  sb           zero, -12(a5)
                  sb           ra, -10(a5)
                  srl          t4, sp, t4
                  lui          gp, 372806
                  sb           t1, 11(a5)
                  slt          t0, zero, t3
                  sb           a0, -14(a5)
                  sltu         s0, t2, s6
                  sb           a0, -15(a5)
                  xor          s0, s3, t5
                  lbu          a4, 9(a5)
                  srli         s4, t6, 26
                  srli         s9, s5, 25
                  sb           a0, 10(a5) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_1+1313 #start load_store_instr_stream_1
                  la           t1, region_1+1424 #start load_store_instr_stream_0
                  lbu          s9, 16(s4)
                  lb           t6, 33(t1)
                  sw           a2, 36(t1)
                  lbu          s6, -37(t1)
                  sb           s5, -10(s4)
                  lbu          gp, 6(s4)
                  sb           s10, 12(s4)
                  lb           s3, -14(s4)
                  lbu          s9, 37(t1)
                  lh           t4, 9(s4)
                  lb           t6, -35(t1)
                  lbu          a2, 10(s4) #end load_store_instr_stream_1
                  sb           s10, -51(t1) #end load_store_instr_stream_0
                  la           s0, region_0+745 #start load_store_instr_stream_0
                  la           s6, region_0+634 #start load_store_instr_stream_2
                  la           s4, region_0+735 #start load_store_instr_stream_3
                  lhu          gp, 21(s0)
                  la           a2, region_0+1627 #start load_store_instr_stream_1
                  lh           a5, 0(s6)
                  lb           s3, -173(s4)
                  lb           s9, -5(s0)
                  lh           zero, 41(s4)
                  lbu          gp, 246(s4)
                  lbu          s9, -16(s6)
                  lh           t2, 113(s4)
                  lh           zero, 8(s6)
                  lb           s11, 16(a2)
                  lb           t1, 62(s4)
                  sb           s9, 2(a2)
                  lbu          gp, -12(s0)
                  sb           t2, -12(s0)
                  lh           s1, -6(s6)
                  lhu          a3, 2(s6)
                  lb           ra, -10(a2)
                  lb           t6, -4(a2)
                  lb           s8, -182(s4)
                  lbu          t5, -3(s6)
                  lbu          s2, 184(s4)
                  lw           zero, 2(s6)
                  sw           a1, -3(a2)
                  sb           a6, 5(s6)
                  sb           a2, -14(a2) #end load_store_instr_stream_1
                  sb           s4, 103(s4) #end load_store_instr_stream_3
                  sh           a5, -6(s6) #end load_store_instr_stream_2
                  sb           a5, 64(s0) #end load_store_instr_stream_0
                  la           sp, region_1+799 #start riscv_load_store_rand_instr_stream_0
                  addi         a3, a0, 1567
                  lb           t0, 11(sp)
                  lhu          s10, -1(sp)
                  sb           zero, 10(sp)
                  nop
                  lbu          s11, -16(sp)
                  sh           s6, 13(sp)
                  sub          gp, a6, t4
                  sb           s11, 14(sp)
                  or           s1, s7, s8
                  slli         gp, t1, 24
                  andi         t5, s3, -1595
                  slli         a5, a7, 24
                  sra          t1, t5, a7
                  lw           ra, 13(sp)
                  sb           s10, -8(sp)
                  sltiu        t0, s4, 1855
                  add          a5, a3, s1
                  auipc        t2, 81771
                  sb           t0, -12(sp)
                  srli         a4, t6, 22
                  lb           s4, -6(sp)
                  srl          ra, s11, s4
                  lui          t2, 525997
                  andi         t5, a5, -82
                  sb           s9, 8(sp)
                  lbu          a0, -15(sp)
                  sub          a2, a7, t2
                  srli         a3, s11, 17
                  slli         s3, s1, 29
                  lb           a5, 14(sp)
                  lb           s6, -5(sp)
                  lbu          s3, 14(sp)
                  slt          s7, a6, t6
                  srl          s1, s8, t3
                  lb           t2, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+174 #start riscv_load_store_hazard_instr_stream_0
                  sb           s3, 107(s3)
                  lb           s8, 107(s3)
                  sb           t5, 107(s3)
                  lbu          t6, 107(s3)
                  lbu          s11, 107(s3)
                  lb           t4, 107(s3)
                  sb           a4, 107(s3)
                  sb           s10, 107(s3)
                  lb           s1, -159(s3)
                  sb           s5, -159(s3)
                  lbu          t4, -159(s3)
                  lb           s1, -159(s3)
                  sra          t1, s7, a2
                  srli         a1, s8, 12
                  slli         sp, s1, 4
                  lb           s8, -159(s3)
                  lb           a4, -159(s3)
                  srai         gp, t6, 28
                  sb           s1, -159(s3)
                  lbu          tp, -159(s3) #end riscv_load_store_hazard_instr_stream_0
                  la           s9, region_1+1117 #start riscv_load_store_hazard_instr_stream_1
                  sb           a5, 52(s9)
                  lhu          t2, 63(s9)
                  lb           a2, -32(s9)
                  lbu          a5, -34(s9)
                  lbu          s7, -34(s9)
                  lbu          t0, -34(s9)
                  addi         t4, t1, -867
                  lb           t1, -34(s9)
                  lbu          t4, -34(s9)
                  lb           t4, 36(s9)
                  lb           a1, 48(s9)
                  addi         s10, gp, -2042
                  sb           s8, -61(s9)
                  lb           s8, -1(s9)
                  xori         a5, s7, 360
                  andi         a1, s11, -24
                  lb           a2, -8(s9)
                  sb           gp, 37(s9)
                  lbu          ra, -2(s9)
                  sb           t6, -33(s9)
                  sll          s2, t0, t2
                  lbu          s4, -18(s9)
                  lbu          s0, -18(s9)
                  lbu          a5, -48(s9)
                  lbu          gp, -28(s9) #end riscv_load_store_hazard_instr_stream_1
                  slli         s6, s10, 27
                  and          t6, tp, s2
                  sll          a3, t6, sp
                  bge          s7, s0, 22f
                  slli         gp, s3, 13
                  srli         s7, a7, 0
                  sltiu        t0, zero, -673
                  sll          t2, a4, s0
                  slt          s0, sp, t0
                  bltu         t0, gp, 23f
                  addi         t2, a3, -1371
                  sub          t1, tp, s4
                  slt          t5, tp, s10
                  srli         t0, s11, 9
                  andi         a3, sp, 940
                  la           s4, sub_1
                  addi         s4, s4, -840
                  and          a4, a7, a4
                  blt          a2, a1, main_j1 #branch to jump instr
                  nop
                  sub          a3, a1, gp
                  xori         a5, t5, 828
                  sll          t4, t3, a2
                  slti         tp, t0, -1404
main_j1:          jalr         sp, s4, 841 #jump main -> sub_1
                  bge          a7, a6, 20f
                  auipc        ra, 217631
                  add          t3, t4, s1
                  and          a4, ra, zero
                  bge          a1, t6, 37f
                  andi         t2, a1, -901
20:               andi         s8, a6, 1777
                  bgeu         a1, s2, 39f
22:               nop
23:               sll          a5, s5, s2
                  sll          t0, t6, a3
                  srai         s4, t3, 1
                  beq          a4, s10, 30f
                  xori         s10, zero, 1267
                  and          s3, sp, sp
                  slt          s4, s4, s5
30:               sub          s7, ra, s0
                  slti         t5, s0, -1467
                  or           s10, s10, s4
                  slti         a1, s6, 1029
                  lui          t1, 947590
                  bge          t6, t4, 49f
                  add          t2, s0, s6
37:               beq          a0, sp, 45f
                  blt          zero, a0, 43f
39:               addi         s11, t5, -1114
                  nop
                  beq          s0, t2, 53f
                  beq          s4, zero, 46f
43:               nop
                  bltu         sp, s10, 53f
45:               sra          t4, a6, zero
46:               sltiu        s9, s3, -381
                  addi         a5, tp, -165
                  auipc        s10, 577573
49:               ori          s3, a6, 1987
                  beq          s6, t4, 65f
                  sll          s0, a5, a5
                  addi         s0, s8, 382
53:               bltu         t4, s11, 59f
                  blt          gp, t3, 67f
                  sub          t6, zero, sp
                  xor          s1, s10, t2
                  sub          t5, t4, s11
                  sll          a0, a0, s8
59:               blt          t2, a7, 73f
                  nop
                  sra          t1, t0, a4
                  addi         t3, a6, 1087
                  slt          t2, a1, s6
                  bgeu         t3, tp, 68f
65:               srli         a5, t2, 4
                  sll          s4, s0, sp
67:               slt          ra, a4, t1
68:               blt          s6, t0, 86f
                  bge          t5, t6, 89f
                  sra          a0, sp, s5
                  and          a3, s1, t5
                  bne          s6, t1, 82f
73:               bne          s10, a1, 89f
                  or           s9, gp, t3
                  sll          a5, t3, t4
                  sltiu        ra, s8, 1174
                  nop
                  sll          a4, s6, s0
                  srli         a4, zero, 22
                  andi         s7, s11, 287
                  ori          a3, s0, -290
82:               blt          a1, s0, 97f
                  sra          s8, s0, a7
                  sltiu        s3, a5, -1625
                  bge          t3, s8, 87f
86:               or           zero, a3, t3
87:               and          s2, s1, s9
                  lui          a5, 583716
89:               slli         a3, ra, 26
                  srli         t0, a6, 8
                  nop
                  slti         s4, t1, 209
                  sll          a0, t2, a2
                  beq          t2, s7, 99f
                  add          t6, s8, s11
                  bge          s1, a2, 105f
97:               add          s3, s3, t3
                  bne          zero, a6, 112f
99:               xori         t0, sp, 678
                  and          s1, s5, t2
                  beq          s10, s2, 103f
                  srl          s10, tp, s2
103:              slt          t4, s7, t0
                  auipc        s1, 140983
105:              bne          s3, s3, 109f
                  xor          a5, a0, t3
                  add          a0, a2, a2
                  sll          s4, tp, s8
109:              slti         tp, t6, -1752
                  bgeu         s8, a4, 122f
                  xor          tp, t5, s4
112:              slt          gp, t4, s6
                  srli         t0, gp, 6
                  slt          t0, ra, s0
                  slli         a3, gp, 6
                  add          s1, ra, s6
                  sltu         a5, t5, s7
                  ori          t2, s9, 1765
                  srl          t0, s6, tp
                  srli         s11, a6, 27
                  sll          tp, t3, t6
122:              addi         t3, ra, -266
                  sll          t0, t4, t1
                  slti         t5, s2, -2013
                  bge          s9, s9, 126f
126:              slti         s3, s2, 455
                  slti         t6, s0, -232
                  nop
                  bgeu         t1, s5, 149f
                  andi         s6, s8, 1367
                  sltiu        gp, gp, -1843
                  sltu         s0, a4, zero
                  sub          t3, s7, s4
                  auipc        a0, 878017
                  nop
                  and          s2, s0, s9
                  bltu         tp, s11, 155f
                  auipc        a4, 611047
                  beq          s11, a3, 151f
                  nop
                  srli         s8, s9, 20
                  bge          a4, s8, 151f
                  nop
                  sltiu        a5, a7, -940
                  sub          a3, a2, ra
                  bltu         t6, t2, 151f
                  sltiu        zero, s10, 251
                  auipc        s9, 686824
149:              sltu         t0, s4, s11
                  slti         a5, a4, 949
151:              sll          a3, a0, s10
                  sub          s11, s10, s2
                  bltu         a3, s7, 154f
154:              slli         a5, a5, 10
155:              srl          gp, a2, ra
                  sra          s10, t2, a2
                  bgeu         s8, s9, 171f
                  addi         tp, a0, -332
                  srai         s4, s3, 8
                  andi         gp, s8, 1166
                  slli         a0, s5, 27
                  slt          s7, gp, a5
                  xori         t2, s5, 747
                  sltiu        s1, s7, -351
                  slli         t6, s3, 12
                  nop
                  xori         s11, tp, -799
                  la           a0, sub_1
                  srli         t3, t3, 14
                  sltu         a2, t3, s10
                  srl          zero, t1, t1
                  addi         a0, a0, -400
                  sltu         t6, s9, s2
                  bge          t2, s5, main_j2 #branch to jump instr
                  sltu         t3, s7, a3
                  slli         t1, a1, 25
main_j2:          jalr         sp, a0, 400 #jump main -> sub_1
                  ori          a1, a4, -361
                  add          a4, gp, gp
                  bge          a3, t5, 174f
171:              bltu         a1, t3, 175f
                  sltu         t1, gp, s11
                  beq          s0, t5, 177f
174:              srl          sp, a3, gp
175:              bltu         t0, s11, 194f
                  auipc        a4, 830836
177:              sra          a5, t3, t1
                  andi         s8, s9, -1872
                  srli         t3, a4, 25
                  xor          a2, a6, s11
                  sltu         s7, gp, s0
                  bge          t1, t4, 184f
                  sra          s10, t0, a0
184:              sub          a3, a6, a3
                  and          s6, s2, a4
                  srai         a0, s1, 28
                  sltiu        s8, t0, 302
                  sra          a5, a3, t3
                  add          t4, s11, s3
                  sll          s8, t6, ra
                  sra          t1, t4, t0
                  sltu         s11, s2, zero
                  add          s3, a3, t6
194:              srl          a2, t5, t6
                  sll          a5, a0, gp
                  addi         t3, s4, 1256
                  xor          t1, s8, a3
                  bne          a1, t0, 216f
                  srai         gp, tp, 5
                  srl          a4, zero, t1
                  bltu         sp, a6, 220f
                  srl          t4, a1, a7
                  slti         ra, a3, 1410
                  slt          a4, s5, s2
                  bne          a0, t3, 210f
                  srai         s6, s2, 22
                  or           zero, a6, a0
                  srai         t6, a5, 31
                  slli         t2, s3, 4
210:              srli         a4, t4, 1
                  slti         a3, s0, 763
                  sltu         s2, t2, a4
                  lui          t1, 596956
                  addi         s4, s6, -1657
                  srli         s9, s7, 3
216:              sltiu        a1, a7, -327
                  or           s9, s11, s7
                  xor          t5, t4, s10
                  sltu         s4, s10, a6
220:              sltu         s11, s9, s6
                  andi         sp, s1, -74
                  ori          t6, s3, 1525
                  auipc        a2, 819423
                  and          t2, s8, a2
                  sll          a4, sp, gp
                  sltiu        a5, s11, 1998
                  nop
                  bne          a6, t6, 230f
                  sltiu        s2, s0, -1839
230:              addi         s9, s8, 44
                  xor          s8, t2, a4
                  bne          a6, s1, 247f
                  andi         sp, t6, 964
                  sub          gp, zero, s7
                  andi         t0, s9, -768
                  and          a5, t2, ra
                  nop
                  lui          s7, 125555
                  sltu         t1, a2, s4
                  sra          s7, a5, s0
                  sltu         a5, s0, tp
                  beq          t5, s7, 248f
                  sub          s3, a4, tp
                  and          t4, s4, a1
                  xori         t6, s11, -845
                  ori          s8, zero, -859
247:              bltu         a3, s2, 248f
248:              addi         sp, a3, 260
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s5, s5, -32
                  lui          s10, 126062
                  sra          a4, a7, t6
                  and          a0, t6, sp
                  sw           sp, 4(s5)
                  and          t5, sp, t3
                  slli         t2, s3, 24
                  andi         s6, t3, 1995
                  addi         s3, s1, 677
                  xori         s0, zero, 1746
                  sra          tp, t6, t3
                  lui          t3, 768134
                  and          t1, gp, ra
                  andi         t1, sp, 187
                  sub          s8, t0, s5
                  ori          s1, t2, -331
                  srl          s7, s6, s7
                  sltiu        a0, ra, 510
                  srli         s0, a3, 27
                  srli         s8, s2, 31
sub_1_j3:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  la           gp, region_1+600 #start riscv_load_store_hazard_instr_stream_5
                  or           s4, a0, a4
                  slti         s3, s7, -1838
                  sltu         a2, tp, a0
                  lhu          t4, 14(gp)
                  lhu          s2, 14(gp)
                  lbu          s11, 14(gp)
                  lb           a1, 14(gp)
                  sb           sp, 14(gp)
                  sb           t0, 14(gp)
                  or           t2, t1, s8
                  lbu          s9, 14(gp)
                  sltu         t6, a2, a6
                  lhu          s10, 14(gp)
                  and          t1, s4, a4
                  lhu          a3, 14(gp)
                  lbu          t3, 14(gp) #end riscv_load_store_hazard_instr_stream_5
                  la           t5, region_0+1699 #start load_store_instr_stream_1
                  sb           s8, -164(t5)
                  la           a1, region_0+126 #start load_store_instr_stream_3
                  la           gp, region_0+728 #start load_store_instr_stream_0
                  lbu          sp, 409(a1)
                  lb           zero, 796(gp)
                  la           t2, region_0+1766 #start load_store_instr_stream_2
                  lb           s0, 1547(a1)
                  sb           s11, -77(t5)
                  sb           t3, 1437(a1)
                  sb           s3, 37(t2)
                  lh           sp, 1472(a1)
                  sb           t1, 180(t5)
                  lb           a5, -177(gp)
                  sb           gp, 1242(a1)
                  lbu          a0, 18(t5)
                  sb           s8, 5(t2)
                  lbu          s6, 34(t2)
                  lhu          a2, 960(a1)
                  sh           s2, 185(t5)
                  lbu          s0, 272(a1) #end load_store_instr_stream_3
                  lbu          s9, -3(t2)
                  lh           t1, 52(t2)
                  sh           s5, 590(gp)
                  lb           s1, 202(gp)
                  lbu          s2, 36(t2)
                  sb           s6, 627(gp)
                  lb           s4, 63(t2) #end load_store_instr_stream_2
                  lb           s1, -317(gp)
                  lw           a3, -59(t5) #end load_store_instr_stream_1
                  lw           sp, 720(gp) #end load_store_instr_stream_0
                  la           tp, region_0+416 #start load_store_instr_stream_0
                  la           s2, region_0+1639 #start load_store_instr_stream_4
                  la           s9, region_0+849 #start load_store_instr_stream_1
                  sh           a5, 47(s2)
                  sb           a6, -32(s9)
                  sb           s6, -251(tp)
                  sh           s1, 59(s9)
                  lb           gp, 166(s2)
                  lhu          a5, -20(tp)
                  la           t5, region_0+1404 #start load_store_instr_stream_2
                  la           s10, region_0+970 #start load_store_instr_stream_3
                  lb           t6, 0(s9)
                  sh           ra, -239(s2)
                  sb           a3, -39(s9)
                  sw           a5, 17(s2)
                  lb           a3, 433(s10)
                  lbu          gp, -197(s2)
                  lbu          s11, -101(tp)
                  sb           t5, 13(t5)
                  lb           s8, -619(s10)
                  lbu          s1, 40(s2)
                  sb           t0, -116(s10)
                  lbu          zero, 115(s10)
                  sb           s11, 175(tp)
                  sh           s2, -4(t5)
                  lbu          a2, -114(s2)
                  lb           a5, 44(s9)
                  lb           s6, 407(s10)
                  lhu          zero, 15(s2)
                  sb           s9, 5(t5)
                  lw           t4, -29(s9)
                  lhu          s0, 45(s9)
                  sb           tp, 272(s10)
                  sh           a5, 196(s10)
                  lhu          a1, -16(t5)
                  sb           sp, 129(tp)
                  lb           t3, -21(s9)
                  lh           a5, 178(tp)
                  sb           s9, 14(t5)
                  lbu          a5, -252(s2)
                  lh           a5, -68(tp)
                  sb           s3, -42(s9) #end load_store_instr_stream_1
                  lb           a2, 7(t5)
                  lbu          t4, 820(s10)
                  sb           a2, 667(s10) #end load_store_instr_stream_3
                  lbu          t1, -10(t5) #end load_store_instr_stream_2
                  sb           tp, 103(s2) #end load_store_instr_stream_4
                  sb           t1, -201(tp) #end load_store_instr_stream_0
                  la           a4, region_1+1246 #start riscv_load_store_hazard_instr_stream_3
                  sb           s3, 13(a4)
                  sb           ra, -15(a4)
                  lb           s11, 11(a4)
                  lbu          s6, 9(a4)
                  sb           gp, -4(a4)
                  sb           s0, -4(a4)
                  sll          s1, s10, s9
                  lbu          t0, -6(a4)
                  lhu          a0, 10(a4)
                  sw           ra, 10(a4)
                  sh           a3, 16(a4)
                  or           t0, s11, t0
                  lhu          ra, 8(a4)
                  lw           a1, 2(a4)
                  sw           s7, 2(a4)
                  lb           ra, 2(a4)
                  lhu          s10, 14(a4)
                  lbu          t1, -1(a4)
                  lbu          s11, -1(a4) #end riscv_load_store_hazard_instr_stream_3
                  la           t2, region_1+1078 #start riscv_load_store_rand_instr_stream_3
                  lbu          t5, -56(t2)
                  sh           a5, 8(t2)
                  lb           gp, 155(t2)
                  sub          t4, t5, tp
                  ori          s10, t1, 410
                  lbu          s6, -42(t2)
                  sb           t5, -232(t2)
                  and          s11, a5, a7
                  srli         t4, s6, 18
                  lb           s11, -93(t2)
                  sra          a3, a7, gp
                  slli         s4, a0, 22
                  sh           t3, 74(t2)
                  lbu          s9, 181(t2)
                  srli         s1, s6, 28
                  lh           s3, -78(t2)
                  sb           ra, -78(t2)
                  sh           s6, -48(t2)
                  srai         s8, s6, 18
                  lbu          gp, -244(t2)
                  sw           tp, 210(t2)
                  slt          s11, t1, t0
                  addi         tp, zero, -54
                  lb           t5, 47(t2)
                  srl          s10, s0, s8
                  ori          s8, s2, -1532
                  ori          a5, a5, 363
                  srai         a5, a6, 21
                  lhu          t3, 102(t2)
                  lh           tp, -224(t2)
                  sw           s6, -34(t2)
                  lbu          t6, 59(t2)
                  add          s11, s3, s7
                  lb           t3, 92(t2)
                  lbu          s11, 222(t2)
                  lb           s4, 115(t2)
                  sw           s8, 182(t2)
                  sb           s10, -227(t2)
                  sh           s7, -100(t2) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+1253 #start load_store_instr_stream_0
                  la           t2, region_0+1739 #start load_store_instr_stream_2
                  sb           a3, -478(t2)
                  la           s6, region_0+874 #start load_store_instr_stream_1
                  sb           a4, 38(t2)
                  la           a4, region_0+548 #start load_store_instr_stream_4
                  lb           s10, -7(s6)
                  lbu          gp, -48(a4)
                  lbu          tp, -12(a0)
                  lb           s9, 11(s6)
                  sw           zero, -12(a4)
                  la           sp, region_0+64 #start load_store_instr_stream_3
                  sb           s3, 29(a4)
                  lb           s8, -8(s6)
                  lhu          a1, -54(a4)
                  sh           s4, 1510(sp)
                  sb           a1, -12(a0)
                  lb           s7, -9(s6)
                  sh           s10, 1560(sp)
                  sb           s8, 569(sp)
                  lw           zero, 11(a0)
                  lhu          s4, 5(a0)
                  sh           s0, -1137(t2)
                  sh           s7, 552(sp)
                  lbu          t5, -59(a4)
                  sh           s6, -62(a4)
                  lbu          a1, 3(s6)
                  sb           a3, -668(t2)
                  lbu          t1, 54(sp)
                  sb           zero, 1223(sp)
                  sb           s7, 0(a0)
                  lbu          s0, 1889(sp)
                  lb           s4, -964(t2)
                  lh           t5, -853(t2)
                  lb           s0, -9(s6)
                  lhu          s1, 13(a0)
                  lh           s3, 42(a4)
                  lbu          a1, -1280(t2) #end load_store_instr_stream_2
                  lh           s3, 1232(sp)
                  lbu          a5, -8(a4)
                  lbu          s11, 631(sp) #end load_store_instr_stream_3
                  sb           s11, -41(a4) #end load_store_instr_stream_4
                  sw           t6, 10(s6) #end load_store_instr_stream_1
                  lhu          a5, -7(a0)
                  lhu          gp, -11(a0) #end load_store_instr_stream_0
                  la           sp, region_0+1967 #start load_store_instr_stream_1
                  la           a1, region_0+1252 #start load_store_instr_stream_2
                  lbu          s8, 23(a1)
                  sw           a7, -71(sp)
                  lb           ra, -69(a1)
                  la           s9, region_0+1751 #start load_store_instr_stream_0
                  lb           zero, -65(sp)
                  lh           zero, -1(s9)
                  lbu          s4, -116(a1)
                  lhu          zero, -159(sp)
                  sb           s3, -10(s9)
                  lb           gp, 228(a1)
                  lbu          a4, -8(s9)
                  sb           a1, -122(a1)
                  sb           a7, -10(s9)
                  sb           s3, 115(a1)
                  lbu          s3, -8(s9)
                  sb           t4, 190(a1)
                  sh           zero, -101(sp)
                  lbu          s2, -133(sp) #end load_store_instr_stream_1
                  lb           a2, -31(a1)
                  lbu          t2, 145(a1) #end load_store_instr_stream_2
                  lb           t5, -14(s9)
                  lb           tp, 6(s9) #end load_store_instr_stream_0
                  la           sp, region_0+146 #start load_store_instr_stream_3
                  lb           ra, -15(sp)
                  la           a5, region_0+1300 #start load_store_instr_stream_4
                  la           s1, region_0+598 #start load_store_instr_stream_2
                  lhu          a3, 8(sp)
                  lb           t2, -11(sp)
                  lh           t3, 68(a5)
                  lb           t3, -387(s1)
                  lbu          t5, -241(a5)
                  la           a1, region_0+441 #start load_store_instr_stream_0
                  sb           a4, 183(a1)
                  la           t6, region_0+677 #start load_store_instr_stream_1
                  lbu          t2, 16(sp)
                  lh           t0, -161(a1)
                  lbu          s9, 11(sp)
                  sh           s7, 5(a1)
                  lb           t4, -141(a5)
                  sb           s0, -150(a1)
                  sb           s3, 2(a5)
                  lbu          s7, 1236(t6)
                  lb           t1, 1312(t6)
                  lb           s9, -87(a5)
                  lb           a3, -247(a5)
                  lb           t3, 1010(s1)
                  lb           gp, -124(a1)
                  lw           a4, -188(a5)
                  lbu          s7, 620(t6)
                  lbu          s10, 232(a1)
                  lb           s2, -221(s1)
                  sb           a2, 238(a1)
                  lb           gp, -223(a1)
                  lh           s4, 604(s1)
                  lbu          t3, -451(s1)
                  sb           s0, 863(s1)
                  sb           s8, -73(a5)
                  lw           s0, -56(a5)
                  sh           s5, 1113(t6)
                  sb           s7, 0(a1)
                  lb           zero, 1175(s1)
                  lhu          a0, 42(a5) #end load_store_instr_stream_4
                  lbu          a3, 4(sp) #end load_store_instr_stream_3
                  lhu          s3, 513(t6)
                  lbu          ra, 352(t6) #end load_store_instr_stream_1
                  sb           s10, -165(s1) #end load_store_instr_stream_2
                  lbu          s0, -68(a1) #end load_store_instr_stream_0
                  la           s3, region_0+32 #start riscv_load_store_rand_instr_stream_1
                  sll          t4, s11, s5
                  slli         s4, s5, 5
                  slt          sp, s10, t2
                  sb           a3, 3(s3)
                  lb           t2, 10(s3)
                  addi         s1, a7, -822
                  sh           s8, 6(s3)
                  lbu          a0, 3(s3)
                  lbu          s0, 23(s3)
                  lb           t4, -3(s3)
                  xor          s2, s2, t4
                  sltiu        s4, t2, -228
                  srli         s0, s8, 18
                  addi         a4, s9, -1252
                  andi         s1, s2, -260
                  xor          s10, t5, t3
                  auipc        ra, 209395
                  slti         s0, t4, 322
                  lbu          a0, 57(s3)
                  lb           t0, 61(s3)
                  xori         ra, a7, -364
                  sh           a0, 50(s3)
                  lb           zero, 47(s3)
                  add          s11, t6, s3
                  or           s7, tp, zero
                  lbu          s11, 37(s3)
                  sh           s0, 2(s3)
                  lh           s0, 62(s3)
                  auipc        s7, 688335
                  lbu          t5, 1(s3)
                  sh           t6, -20(s3)
                  auipc        t1, 293234
                  sltiu        sp, a1, 1451
                  sra          a4, s11, a2
                  sltiu        s4, s11, 1912
                  lhu          t2, 44(s3)
                  sltiu        a2, ra, -714
                  sw           s3, -8(s3)
                  lhu          t3, 48(s3)
                  lbu          t4, 33(s3)
                  andi         s6, t1, -642
                  lhu          s8, 46(s3)
                  sltiu        s4, s2, 1043
                  lui          t0, 769888
                  and          a5, ra, s5
                  lh           s0, -6(s3)
                  lb           s7, 45(s3)
                  lhu          gp, 10(s3)
                  srli         a0, a1, 24
                  sb           a3, -5(s3)
                  andi         gp, gp, 653
                  xori         t3, a7, -570
                  sh           t2, 54(s3)
                  or           a0, s10, a4
                  lb           zero, 61(s3) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+1522 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s7, -6(a1)
                  lb           a4, -9(a1)
                  lbu          a3, -9(a1)
                  lb           zero, -11(a1)
                  sb           s5, -11(a1)
                  sb           s8, -9(a1)
                  lbu          s9, -9(a1)
                  lbu          a3, -9(a1)
                  lbu          zero, -11(a1)
                  or           s1, zero, t1
                  sb           s9, -11(a1)
                  srl          a5, tp, t2
                  sb           s7, -11(a1)
                  lbu          s11, -11(a1) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1525 #start riscv_load_store_hazard_instr_stream_1
                  sb           sp, -830(sp)
                  sb           s11, -830(sp)
                  lb           tp, -830(sp)
                  lb           tp, -830(sp)
                  lb           t2, -830(sp)
                  sb           t3, -830(sp)
                  sb           a3, -830(sp)
                  lb           a5, -830(sp)
                  sb           s2, -830(sp)
                  lb           a4, -830(sp)
                  add          s3, s5, t4
                  lb           t5, -719(sp)
                  lbu          s1, -719(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t2, region_0+1003 #start riscv_load_store_rand_instr_stream_4
                  add          s2, s11, a7
                  or           a5, t2, s7
                  sll          a3, tp, t5
                  sb           a0, -62(t2)
                  lhu          t4, -9(t2)
                  lbu          s6, 10(t2)
                  sltiu        s1, s6, -1956
                  sb           s9, 48(t2)
                  sra          ra, t0, s0
                  andi         s9, s8, -1936
                  lbu          a0, -29(t2)
                  and          s11, t1, a6
                  lh           a2, -9(t2)
                  sub          ra, gp, a0
                  xori         s8, s4, 1756
                  lbu          s1, 36(t2)
                  srl          t4, a7, s0
                  lb           sp, 47(t2)
                  lhu          a5, 25(t2)
                  sltiu        s8, sp, 1981
                  and          a2, s3, t2
                  slti         s6, t4, -731
                  sb           s6, -61(t2)
                  auipc        a5, 92285
                  sra          t3, tp, tp
                  ori          zero, t2, -1763
                  sltu         s6, a5, s10
                  lb           t6, -6(t2)
                  xor          t6, ra, t3
                  sb           a4, 44(t2)
                  slti         s1, s10, -862
                  add          s10, sp, s4
                  andi         a1, s4, 862
                  sub          zero, s10, a6
                  lbu          s10, 2(t2)
                  ori          a0, t3, -120
                  sltu         t4, s1, t3
                  xor          t3, a6, s2
                  xori         ra, s1, 118
                  srai         s7, zero, 13
                  lb           zero, 2(t2)
                  add          t0, s9, t4
                  lui          s1, 271972
                  lb           tp, -4(t2) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1974 #start riscv_load_store_rand_instr_stream_2
                  ori          t0, t2, -312
                  and          s10, t0, s10
                  sltu         t2, gp, s9
                  srl          s11, s11, a6
                  auipc        ra, 833272
                  lui          s6, 93442
                  srli         zero, t4, 28
                  lbu          a4, -1688(sp)
                  add          gp, t2, gp
                  srai         s6, a0, 26
                  lh           a5, -126(sp)
                  ori          s8, s0, 262
                  slti         tp, s11, 1648
                  lh           s11, -558(sp)
                  and          s0, a3, a7
                  ori          a2, zero, 1827
                  lb           t4, -1223(sp)
                  lbu          s10, -9(sp)
                  lb           a2, -1489(sp)
                  ori          t5, gp, -144
                  sltu         s1, gp, s0
                  xori         t1, t3, 1573
                  lb           t5, -1222(sp)
                  sb           s0, -993(sp)
                  auipc        t3, 914149
                  srli         t1, t0, 3
                  sb           sp, -99(sp)
                  sb           s8, -1803(sp)
                  srai         s9, t5, 14
                  lbu          s6, -1915(sp)
                  nop
                  add          gp, t1, s5
                  sb           s2, -871(sp)
                  add          t0, s3, s10
                  sltiu        t0, a7, -225
                  sll          s9, a1, s5
                  lb           ra, -684(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_1+1117 #start riscv_load_store_rand_instr_stream_0
                  lhu          t5, -717(a4)
                  lbu          s2, 796(a4)
                  lb           a5, 170(a4)
                  lui          s0, 811761
                  sb           s10, 508(a4)
                  lh           t5, -1069(a4)
                  lb           t3, -250(a4)
                  andi         s10, t3, -2038
                  sh           tp, -19(a4)
                  lhu          a3, -583(a4)
                  srl          zero, s7, s10
                  sll          zero, ra, t3
                  lbu          s1, -488(a4)
                  sll          ra, s3, tp
                  sb           t5, -275(a4)
                  slti         zero, ra, -417
                  lb           s11, 364(a4)
                  slt          s10, t6, a4
                  lbu          t1, 522(a4)
                  sb           t2, 332(a4)
                  srli         s6, t6, 9
                  lb           s1, 66(a4)
                  sra          a2, gp, s7
                  sb           s5, -842(a4)
                  lw           t6, 347(a4)
                  sltu         t2, s5, s1
                  lbu          s10, 122(a4)
                  lhu          s6, 699(a4)
                  lbu          sp, -935(a4)
                  lbu          a0, -82(a4)
                  sw           t4, 751(a4)
                  lh           s7, -449(a4)
                  lb           tp, -512(a4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+969 #start riscv_load_store_hazard_instr_stream_0
                  sb           s3, -34(sp)
                  lbu          a1, -34(sp)
                  sb           t6, 34(sp)
                  lb           t5, 34(sp)
                  sb           a1, 34(sp)
                  add          a2, a4, zero
                  lb           t5, 3(sp)
                  lb           s3, 3(sp)
                  sb           s9, 1(sp)
                  lhu          a1, 1(sp)
                  sll          t5, t2, t6
                  lh           s11, 1(sp)
                  lbu          t2, 1(sp)
                  lb           a0, 1(sp)
                  lb           t5, 1(sp)
                  lhu          s10, 1(sp)
                  sh           s4, 43(sp)
                  sw           t3, 43(sp)
                  lb           s3, 43(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1582 #start riscv_load_store_rand_instr_stream_6
                  nop
                  and          t0, s3, sp
                  lb           s9, 59(sp)
                  xor          a5, t3, zero
                  lhu          s1, 22(sp)
                  andi         t2, t1, 1129
                  srl          a1, gp, a4
                  xori         s1, t3, -1762
                  add          s9, s5, t2
                  sll          a3, s11, sp
                  sra          a2, t4, s8
                  nop
                  slli         a3, s8, 9
                  lb           ra, 53(sp)
                  sltiu        t6, t2, 1878
                  slti         zero, t0, 1125
                  xori         a5, t2, -823
                  sub          ra, s11, a1
                  sb           ra, -15(sp)
                  ori          s2, s9, -223
                  slli         s4, t0, 26
                  xori         a4, s9, 266
                  add          s1, t4, zero
                  add          s1, a5, t3
                  srli         t2, a7, 2
                  lui          tp, 3235
                  lbu          t3, -27(sp)
                  lbu          zero, -51(sp)
                  sltiu        a3, t2, -1133
                  sltiu        tp, a1, 449
                  ori          a4, ra, -398
                  lbu          t1, -14(sp)
                  auipc        t3, 729512
                  nop
                  lb           t2, -45(sp)
                  xor          zero, tp, sp
                  lb           ra, 12(sp)
                  xor          t1, s6, t0
                  lb           t5, -57(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t1, region_1+1934 #start load_store_instr_stream_2
                  sb           s1, -8(t1)
                  la           s8, region_1+1381 #start load_store_instr_stream_1
                  sb           gp, -5(t1)
                  lbu          t5, 9(t1)
                  la           a0, region_1+1134 #start load_store_instr_stream_0
                  lb           t6, 15(t1)
                  lh           s6, 7(s8)
                  la           s0, region_1+1757 #start load_store_instr_stream_3
                  sb           s2, -15(a0)
                  sh           s2, 261(s8)
                  lbu          s3, 8(s0)
                  lb           s6, 6(a0)
                  sb           s5, -9(t1)
                  lhu          s6, 15(s0)
                  lbu          tp, -11(t1)
                  lbu          gp, 10(s0)
                  lb           t2, 9(t1) #end load_store_instr_stream_2
                  sb           gp, -1(a0)
                  lbu          a3, -926(s8)
                  lbu          a2, 15(a0)
                  lbu          s6, -1323(s8)
                  lbu          a1, -1287(s8) #end load_store_instr_stream_1
                  sb           a5, 1(s0)
                  sb           s5, -11(s0) #end load_store_instr_stream_3
                  sb           t0, 3(a0) #end load_store_instr_stream_0
                  la           sp, region_1+1843 #start riscv_load_store_hazard_instr_stream_6
                  lh           a3, 3(sp)
                  sb           t4, -16(sp)
                  sb           a6, -16(sp)
                  sb           s1, 3(sp)
                  andi         s11, s2, -1208
                  lb           a4, 11(sp)
                  sll          a3, t3, a0
                  lw           gp, 5(sp)
                  nop
                  sw           s0, 5(sp)
                  slli         gp, s11, 6
                  lbu          t3, 1(sp)
                  lb           s3, 14(sp)
                  lbu          a5, 14(sp)
                  sb           t6, 12(sp)
                  lb           s2, 12(sp)
                  sb           t0, 12(sp)
                  lb           s7, 13(sp)
                  addi         gp, a1, -1964
                  lw           s4, 13(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_1+937 #start riscv_load_store_rand_instr_stream_5
                  sh           t3, -13(sp)
                  lhu          s2, -13(sp)
                  sb           ra, -2(sp)
                  slti         t1, t2, 987
                  lh           s6, -11(sp)
                  ori          tp, s5, 397
                  srl          t0, tp, gp
                  ori          gp, a2, 905
                  slli         s9, a2, 17
                  xori         t3, s1, -1145
                  srai         zero, s9, 10
                  xor          ra, a3, ra
                  sub          a3, ra, t5
                  lb           a4, -6(sp)
                  addi         tp, a4, -693
                  addi         t4, a7, -1532
                  andi         s11, a4, 490
                  slli         s7, ra, 12
                  lui          s11, 738431
                  lh           t4, -7(sp)
                  addi         t0, a2, 1968
                  ori          s6, gp, 1888
                  lb           t3, 10(sp)
                  nop
                  srli         s2, a4, 5
                  ori          ra, gp, -166
                  sw           a1, -1(sp)
                  lbu          t5, -6(sp)
                  xori         s8, t2, 1351
                  lbu          s1, -8(sp)
                  srl          s1, t6, t1
                  lhu          s11, -15(sp)
                  andi         t4, s7, 1431
                  sltiu        t1, s2, -1082
                  nop
                  xor          s9, t6, a2
                  ori          a3, s9, 942
                  sh           ra, 15(sp)
                  add          ra, s3, tp
                  lui          s9, 788423
                  lh           s0, 5(sp)
                  lb           s11, 6(sp)
                  sw           s11, -1(sp)
                  lui          s2, 80995
                  sh           tp, -7(sp)
                  sub          t4, s1, a2
                  lb           t1, 9(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t0, region_1+713 #start riscv_load_store_hazard_instr_stream_4
                  sb           s5, 34(t0)
                  lb           s11, 34(t0)
                  sra          a2, t3, s2
                  lb           t5, 34(t0)
                  lbu          t2, 34(t0)
                  sb           zero, 34(t0)
                  lb           s1, 34(t0)
                  srli         s2, t5, 10
                  lbu          s11, 34(t0)
                  srl          t1, s4, s10
                  sb           s6, 34(t0)
                  lbu          zero, 34(t0)
                  lb           s11, 34(t0)
                  lb           a0, 34(t0)
                  addi         t3, s11, -440
                  lbu          ra, 34(t0)
                  sb           s9, 34(t0)
                  sb           a4, 34(t0)
                  lb           ra, 34(t0) #end riscv_load_store_hazard_instr_stream_4
                  nop
                  sltiu        s8, tp, 2023
                  srli         gp, a3, 17
                  lui          s10, 30842
                  and          t2, s0, ra
                  ori          s1, s0, 709
                  xor          t2, s11, t6
                  bgeu         ra, a6, 11f
                  bge          zero, t2, 17f
                  addi         a5, a3, -464
                  slt          gp, a6, s5
11:               srli         t2, zero, 24
                  and          t1, s11, a2
                  and          a5, a0, s8
                  sub          s10, a3, a7
                  bge          t3, a0, 19f
                  or           a3, t5, s11
17:               xori         s4, a1, 1295
                  bltu         t5, s3, 22f
19:               xori         s7, sp, -24
                  slti         gp, t0, -1770
                  bge          s0, ra, 28f
22:               bge          a6, s10, 38f
                  sltiu        a3, t0, -1641
                  auipc        t5, 121330
                  lui          t4, 151882
                  bgeu         t1, a5, 27f
27:               andi         a3, a0, 1265
28:               sltu         s2, tp, sp
                  bltu         s0, a5, 42f
                  blt          s10, zero, 37f
                  sub          s8, zero, s2
                  bltu         s5, s11, 37f
                  lui          sp, 277431
                  bge          a2, s10, 39f
                  srli         s1, a6, 30
                  addi         t0, s9, -167
37:               and          s4, s2, s7
38:               bltu         s6, s2, 58f
39:               srai         s10, s3, 4
                  beq          gp, a2, 52f
                  andi         s1, s11, -1642
42:               srl          a1, s10, a6
                  slt          s2, t5, s2
                  srai         s8, s6, 19
                  bge          a3, a1, 62f
                  bge          gp, a5, 58f
                  blt          s3, a5, 56f
                  or           s4, t4, a0
                  slt          t6, a5, a5
                  blt          ra, t4, 61f
                  bgeu         a3, t4, 66f
52:               beq          a3, s4, 67f
                  or           s9, a2, gp
                  srai         t1, t4, 24
                  slli         zero, s4, 19
56:               bne          s8, a5, 69f
                  slli         a1, s2, 5
58:               bltu         a6, s1, 63f
                  xori         s11, s3, -2027
                  sra          gp, s10, s5
61:               blt          gp, s1, 63f
62:               srl          zero, s4, s9
63:               sll          t4, s8, sp
                  bgeu         a2, s6, 73f
                  slt          s4, a4, ra
66:               bge          a1, sp, 84f
67:               bge          a4, a5, 87f
                  srli         s2, s3, 9
69:               andi         s1, t0, -668
                  srai         sp, t0, 13
                  sub          t4, s0, t6
                  ori          s8, s0, -1109
73:               srl          a5, s3, s11
                  blt          s2, ra, 80f
                  sra          a4, a5, t0
                  xor          s7, s11, s1
                  xori         gp, s1, 1409
                  srli         t5, s0, 29
                  slt          s4, s7, a2
80:               slli         a0, a0, 21
                  srai         s11, s5, 1
                  xori         gp, t4, -1150
                  blt          s7, s3, 96f
84:               sra          t2, s0, tp
                  srli         t6, a2, 27
                  beq          t3, zero, 99f
87:               slli         s1, gp, 23
                  bltu         s9, zero, 92f
                  ori          s1, s5, 400
                  sll          a3, ra, a2
                  sub          t3, ra, t1
92:               nop
                  bge          ra, s0, 113f
                  bltu         s2, s3, 114f
                  nop
96:               sra          t0, t6, t3
                  and          sp, a5, t4
                  sll          sp, a5, ra
99:               slti         s8, a1, 801
                  srli         zero, t6, 19
                  bge          s1, s11, 105f
                  sltu         t1, s1, gp
                  beq          s3, t2, 112f
                  sub          a4, s8, a6
105:              slt          a2, a1, s5
                  srl          s6, s3, s10
                  bge          s3, a5, 111f
                  blt          s7, t5, 115f
                  slti         s9, a6, 97
                  slti         ra, a5, -958
111:              sll          s8, s8, a2
112:              blt          s9, tp, 113f
113:              xori         t1, s10, 1421
114:              slti         a1, t1, 728
115:              srai         t6, a5, 25
                  sub          gp, s6, t6
                  bgeu         t3, s2, 122f
                  srl          s8, a3, s4
                  slt          a3, a6, s4
                  sltiu        zero, a2, -1111
                  srai         t4, s6, 1
122:              bgeu         a3, s1, 129f
                  sltiu        a0, s3, 1926
                  bgeu         s3, s1, 130f
                  srli         t2, t4, 17
                  or           s1, zero, a0
                  sll          s7, s3, s8
                  lui          a4, 260297
129:              xor          s6, t4, t2
130:              slt          a1, gp, s3
                  bgeu         s5, t2, 143f
                  slli         t1, t1, 19
                  lui          a5, 229865
                  srl          sp, ra, t3
                  lui          t2, 795429
                  sub          a4, a4, t3
                  slti         s10, a1, -1269
                  addi         s4, s9, 1509
                  auipc        s8, 905117
                  bltu         t0, s5, 155f
                  xor          a0, s4, t4
                  bge          t5, s9, 155f
143:              sub          a5, ra, s10
                  srl          tp, t3, s10
                  and          s3, sp, a7
                  xor          t5, gp, t1
                  sra          sp, t1, s5
                  blt          a7, a5, 166f
                  lui          a3, 604365
                  sltu         a2, t4, s11
                  srai         s2, a4, 27
                  bne          s1, t0, 156f
                  or           a0, s6, zero
                  andi         s9, s2, -1432
155:              andi         s8, a1, 40
156:              beq          a6, t0, 161f
                  add          a0, s10, s7
                  slt          t5, s3, s8
                  andi         t6, s6, -691
                  slti         t5, s2, -1789
161:              ori          a4, s6, -2032
                  bge          s1, t5, 167f
                  add          s7, a4, t5
                  ori          a0, s11, -736
                  slti         s6, a4, 479
166:              add          s3, t4, a1
167:              or           ra, t3, s10
                  slli         s7, a7, 4
                  beq          t2, s2, 178f
                  sub          s0, gp, a4
                  xori         s11, s9, -26
                  sra          t6, a1, a0
                  and          t3, a7, a0
                  slt          t6, s9, gp
                  bge          s0, s6, 188f
                  and          s4, a7, t6
                  ori          s10, s8, -84
178:              srl          s9, s10, gp
                  bltu         a7, s1, 199f
                  bltu         t4, s4, 195f
                  nop
                  add          sp, s0, gp
                  xor          t3, s10, a3
                  and          t4, s9, s11
                  sra          s0, a6, tp
                  srli         a0, s6, 3
                  nop
188:              sra          a2, t1, s2
                  srai         a5, t0, 22
                  auipc        a5, 706827
                  ori          s4, s10, -414
                  srai         t5, a7, 31
                  auipc        t5, 487429
                  bge          s11, sp, 214f
195:              bne          a4, a7, 204f
                  sll          s4, a2, a7
                  blt          t5, a4, 213f
                  bge          s10, s1, 211f
199:              slt          t5, t1, t1
                  sltu         t2, gp, s2
                  and          t5, a2, s11
                  xor          a1, a2, t4
                  srl          t1, s5, tp
204:              sltiu        a5, ra, -1669
                  sll          t5, s6, s5
                  addi         s0, s11, -1878
                  beq          s8, s8, 209f
                  blt          s0, s5, 220f
209:              xor          s6, a6, a4
                  bge          s11, sp, 214f
211:              auipc        s0, 267726
                  bltu         t5, t2, 225f
213:              srli         a1, t0, 16
214:              srli         s6, ra, 8
                  bge          s5, a1, 232f
                  beq          t1, s3, 227f
                  nop
                  beq          a5, t1, 229f
                  andi         a3, tp, 1765
220:              xori         t6, t0, 522
                  xori         t3, a7, -861
                  bltu         t3, ra, 237f
                  add          s11, s2, t5
                  slt          a3, a4, ra
225:              sra          t5, a0, a6
                  addi         s3, t3, -493
227:              sltu         sp, s4, a2
                  xori         gp, a3, -1925
229:              ori          t0, s9, 999
                  sll          a4, s6, sp
                  addi         a3, s5, -665
232:              sll          t2, s5, t3
                  beq          zero, gp, 250f
                  and          zero, zero, s4
                  beq          s6, sp, 237f
                  xori         s1, a7, -288
237:              blt          a5, s9, 241f
                  lui          sp, 308862
                  srl          t1, a4, s1
                  auipc        t0, 637877
241:              beq          s0, s6, 261f
                  bge          a1, a1, 255f
                  sub          gp, s8, ra
                  bgeu         s2, s3, 248f
                  slt          t6, s0, t1
                  auipc        ra, 236557
                  sub          sp, gp, t5
248:              srli         t1, a0, 20
                  sltu         t4, a5, s0
250:              srl          t4, a1, s4
                  srl          a5, a7, a5
                  slt          zero, a2, zero
                  sltu         a5, s7, a6
                  bgeu         tp, s5, 274f
255:              addi         s2, s1, -435
                  bge          gp, a0, 268f
                  sltiu        zero, a5, 442
                  blt          t6, t0, 259f
259:              bltu         s0, s4, 272f
                  bge          a4, s11, 273f
261:              bne          s4, s1, 281f
                  and          t4, s1, s1
                  sra          t5, a7, s3
                  sra          t0, tp, t3
                  auipc        s6, 1031576
                  sub          s9, a5, s10
                  add          a2, s8, t3
268:              sltu         a2, s11, s10
                  beq          s9, zero, 276f
                  bltu         s4, s2, 279f
                  and          s3, s10, s3
272:              ori          gp, t3, 1749
273:              and          a1, s5, a3
274:              slt          t6, zero, t2
                  or           tp, s7, sp
276:              sll          s8, s3, t5
                  bge          a0, tp, 290f
                  slti         t6, s4, -595
279:              bge          sp, s1, 284f
                  ori          s0, a7, -1052
281:              ori          a5, t2, 1000
                  add          s0, s5, a5
                  srai         s7, a6, 24
284:              bge          s3, a7, 291f
                  or           t5, s2, tp
                  sra          s1, s1, gp
                  srli         t0, s5, 27
                  bgeu         s8, a3, 293f
                  bge          sp, s8, 307f
290:              bne          gp, zero, 302f
291:              srli         t6, t6, 0
                  sub          s0, s11, s8
293:              andi         a0, sp, -1907
                  and          s0, ra, s4
                  ori          a3, t5, -151
                  lui          t6, 161976
                  add          a5, s11, a7
                  lui          t1, 629935
                  sltu         ra, gp, zero
                  add          s4, t3, t3
                  or           a3, a6, tp
302:              srl          sp, tp, s5
                  bltu         s0, tp, 312f
                  sll          t0, t6, tp
                  srai         a3, s9, 3
                  srli         s8, t1, 18
307:              slt          s0, t2, s1
                  slli         t6, t1, 1
                  addi         gp, sp, -1637
                  and          s0, s4, t5
                  bgeu         s7, a0, 320f
312:              blt          t2, a4, 316f
                  slti         gp, a1, -649
                  beq          s10, a3, 318f
                  slli         s4, tp, 24
316:              and          a2, a3, s11
                  xor          s6, zero, t1
318:              slti         t2, s3, 730
                  slti         s7, s9, -393
320:              xori         ra, s9, -818
                  add          a3, tp, zero
                  and          a0, s8, a2
                  sub          s6, s7, a6
                  beq          t1, a3, 329f
                  srai         s9, s8, 23
                  slt          s10, t5, a6
                  add          ra, t2, sp
                  beq          gp, t4, 344f
329:              xori         t1, t5, 906
                  slli         sp, zero, 28
                  ori          ra, a0, -1917
                  and          s10, ra, tp
                  sltiu        s7, gp, 1796
                  xor          zero, s4, s0
                  and          ra, t4, s2
                  srai         a2, s5, 10
                  or           s10, s7, a5
                  bgeu         s9, tp, 344f
                  auipc        t5, 829781
                  beq          s7, gp, 355f
                  srli         t2, a3, 21
                  sra          t0, a5, gp
                  nop
344:              sltiu        gp, t0, 1345
                  sll          tp, s1, s1
                  addi         gp, t0, -667
                  beq          s10, s6, 351f
                  andi         gp, gp, -1944
                  bltu         s3, ra, 369f
                  nop
351:              auipc        s11, 910136
                  sltu         s11, t6, s0
                  or           s3, s0, ra
                  slti         s10, s3, -1694
355:              addi         zero, s0, 1546
                  lui          gp, 509142
                  nop
                  xor          tp, t4, t2
                  sub          t4, a2, a3
                  xor          s0, sp, a4
                  lui          s0, 842916
                  bltu         gp, a1, 374f
                  sll          sp, gp, t3
                  slti         a5, t2, 867
                  bgeu         s0, a6, 378f
                  sltu         t6, t4, a6
                  slli         t5, s11, 27
                  bltu         s6, ra, 385f
369:              auipc        t3, 875018
                  bne          a2, gp, 390f
                  add          a2, t0, a1
                  and          s10, tp, a0
                  auipc        t6, 789981
374:              add          s6, t5, s9
                  or           sp, t4, a0
                  beq          t4, t1, 378f
                  beq          a2, a7, 381f
378:              bgeu         a5, s0, 385f
                  xor          t5, s11, s2
                  andi         a2, gp, -1047
381:              sra          sp, zero, ra
                  bge          s5, s10, 398f
                  srl          t1, t6, a6
                  sltiu        ra, s1, -104
385:              slli         t2, t3, 10
                  slti         zero, t4, -635
                  or           s8, s2, s10
                  sll          t4, t0, s0
                  nop
390:              bne          s5, t5, 394f
                  sub          t1, s6, sp
                  bne          t3, a1, 401f
                  auipc        s3, 654616
394:              xori         tp, a0, 1036
                  add          a5, t2, s4
                  srl          s2, t3, t6
                  andi         s8, ra, 1782
398:              bltu         s4, a0, 403f
                  addi         s7, a7, -625
                  or           s0, s8, s10
401:              sltiu        sp, zero, -1828
                  lui          a2, 294676
403:              sll          a5, ra, t6
                  bgeu         a1, tp, 409f
                  add          tp, t1, sp
                  add          s10, a0, s7
                  lui          ra, 56084
                  slli         t4, s5, 28
409:              addi         zero, a2, -1520
                  or           a5, sp, ra
                  andi         a1, ra, -792
                  bgeu         gp, a6, 430f
                  xor          s10, t4, t4
                  bge          s1, t5, 421f
                  ori          t0, s11, -1192
                  sll          t5, s2, a3
                  sll          t6, s4, a7
                  bge          s1, s5, 433f
                  and          s1, ra, a2
                  bne          ra, a6, 431f
421:              and          a4, t1, gp
                  sltiu        t3, gp, 2017
                  blt          a4, t0, 432f
                  or           a1, s9, s8
                  bltu         s6, sp, 434f
                  bgeu         s9, s4, 427f
427:              beq          a5, t4, 440f
                  srli         s1, t3, 15
                  blt          zero, t4, 434f
430:              slti         tp, a4, -689
431:              beq          a5, t5, 446f
432:              xori         a4, s6, -107
433:              srai         t0, s4, 11
434:              slt          tp, a3, s3
                  nop
                  sub          tp, s9, t1
                  andi         t0, a3, 540
                  addi         s1, s2, -1983
                  bltu         t2, a2, 451f
440:              slt          a1, s4, a7
                  sra          t0, a1, s2
                  auipc        sp, 319433
                  srl          s10, ra, a7
                  nop
                  slti         gp, s9, 1461
446:              bltu         a3, s10, 466f
                  andi         a3, t1, 682
                  blt          t4, gp, 454f
                  auipc        t0, 565457
                  slt          t6, sp, t4
451:              bge          t2, s0, 464f
                  add          s10, s9, ra
                  sltiu        a2, s11, -877
454:              nop
                  slli         ra, t5, 11
                  blt          s7, sp, 469f
                  xori         s2, a6, 1864
                  slt          s10, t4, s1
                  sra          a3, a7, t6
                  auipc        s3, 730248
                  beq          t0, s0, 465f
                  xori         sp, a6, -410
                  add          t2, a3, t5
464:              auipc        a2, 950671
465:              sll          s4, s8, s1
466:              bne          s9, a4, 471f
                  srai         a2, gp, 29
                  ori          a0, s11, 982
469:              srai         t3, t0, 12
                  bltu         a4, tp, 475f
471:              addi         sp, a2, -1563
                  srli         a4, a7, 31
                  sub          s0, t5, t5
                  lui          a2, 364358
475:              auipc        s7, 381251
                  slt          t0, s8, s7
                  blt          gp, s11, 486f
                  ori          a3, s5, -1235
                  sra          gp, s7, t1
                  srl          a2, a3, t5
                  srl          a0, s6, s0
                  sltu         t0, s7, s6
                  and          gp, s8, t5
                  srli         s9, s5, 3
                  srl          t3, s8, t3
                  xor          sp, t1, tp
                  sub          a4, a6, a2
                  sra          t6, s10, s0
                  srli         t6, s6, 17
                  sra          t5, s9, s6
sub_1_j4:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  addi         t6, a2, -644
                  auipc        t2, 539543
                  beq          t2, a7, 497f
                  auipc        gp, 922057
486:              sll          s9, s5, gp
                  bge          gp, a4, 504f
                  beq          a1, a4, 497f
                  add          sp, t0, s11
                  blt          a5, t5, 510f
                  slli         t3, sp, 6
                  slt          t6, s6, s4
                  slli         a4, s8, 29
                  sra          s0, zero, s9
                  sltiu        s2, s8, -2019
                  bgeu         s1, t0, 511f
497:              xor          s11, tp, a5
                  srli         a1, s9, 4
                  beq          s2, t3, 503f
                  sra          t5, a2, s6
                  andi         s6, s1, 1746
                  sll          ra, t3, a4
503:              sltiu        gp, a6, 439
504:              blt          a0, s6, 517f
                  xor          s2, t1, s1
                  slti         s9, zero, -1541
                  sub          s7, t0, a1
                  sltu         a5, t0, a0
                  auipc        s8, 87345
510:              srl          s11, a0, t4
511:              sra          a5, ra, s5
                  sra          s8, s2, s11
                  nop
                  slli         a2, sp, 22
                  sltu         s7, sp, s7
                  nop
517:              bge          s5, s1, 521f
                  sltiu        s7, t1, -1259
                  blt          s4, s11, 537f
                  andi         s10, s3, 1011
521:              srl          a2, a2, t3
                  and          a0, s6, t1
                  srl          a0, a2, t2
                  slt          a5, s11, a6
                  andi         a3, t3, -378
                  srl          tp, a2, a1
                  sll          s4, s3, s7
                  add          t6, tp, a7
                  bne          t5, s6, 535f
                  slti         s4, a5, -875
                  slli         s3, t6, 31
                  srai         t4, tp, 7
                  bne          a6, s7, 535f
                  auipc        s7, 843005
535:              bltu         s11, s3, 542f
                  slt          t6, s2, a7
537:              or           sp, ra, s10
                  addi         gp, s6, 415
                  bltu         a5, s6, 554f
                  nop
                  sub          t3, t1, s11
542:              ori          a1, a1, -109
                  add          s8, s2, ra
                  sltiu        s1, t4, -1477
                  slt          s11, s1, t3
                  nop
                  andi         zero, gp, -705
                  or           gp, s10, a5
                  lui          a5, 361964
                  slti         a1, a6, 2032
                  beq          s8, s7, 567f
                  srli         t0, s4, 1
                  srai         s11, s0, 15
554:              lui          s10, 431350
                  beq          s11, s5, 575f
                  sltu         a5, a7, ra
                  beq          tp, s4, 568f
                  blt          s9, zero, 578f
                  xor          t1, s1, s4
                  blt          s0, t3, 565f
                  bltu         t3, a6, 565f
                  xori         a3, a6, 1888
                  or           t1, ra, a0
                  beq          tp, s3, 576f
565:              srai         sp, s11, 15
                  slli         t3, s1, 28
567:              andi         t5, s7, 1263
568:              sll          ra, a5, gp
                  slti         a5, s7, -303
                  slt          t3, s5, zero
                  xori         s4, a7, -789
                  andi         s9, s4, -1530
                  bge          s3, s10, 582f
                  bltu         s2, s8, 581f
575:              slli         s9, s3, 19
                  la           s3, region_1+1801 #start load_store_instr_stream_1
                  lhu          s10, 37(s3)
                  la           s8, region_1+415 #start load_store_instr_stream_0
                  lhu          a3, -3(s8)
                  lh           gp, 3(s3)
                  lw           a1, -3(s8)
                  sb           s3, -5(s3)
                  lbu          s1, 13(s3)
                  sb           a0, -8(s8)
                  lbu          s0, 16(s8)
                  sb           a6, -32(s3)
                  lhu          s9, -49(s3)
                  lb           a1, 20(s3)
                  lbu          a1, -12(s8)
                  lb           t6, -6(s8)
                  lbu          t4, -20(s3)
                  lhu          a0, -15(s3) #end load_store_instr_stream_1
                  lbu          s6, 0(s8) #end load_store_instr_stream_0
576:              auipc        a3, 456067
                  sltu         s3, s11, t0
578:              sub          sp, a4, s2
                  lui          s10, 207743
                  andi         gp, a5, -502
581:              srai         a2, tp, 14
582:              bne          s3, s8, 583f
583:              nop
                  nop
                  sll          s0, t6, s7
                  sltu         s7, t4, s1
                  and          a4, s1, t6
                  bge          ra, s7, 592f
                  slti         s3, s2, 1960
                  bge          a1, a7, 603f
                  bgeu         a3, a3, 604f
592:              lui          a0, 438899
                  srai         s10, a5, 8
                  add          a4, ra, t5
                  bge          a2, s0, 607f
                  xori         ra, a3, 728
                  or           s0, a4, a5
                  blt          s9, s6, 607f
                  or           gp, s11, t3
                  nop
                  lui          s9, 687139
                  slti         s9, s3, -1650
603:              xor          s8, s5, s6
604:              auipc        sp, 356819
                  srai         s0, s0, 31
                  srl          ra, s10, a5
607:              nop
                  sll          t3, s2, a2
                  ori          ra, a6, 1483
                  beq          zero, s5, 626f
                  bne          s2, a5, 623f
                  srai         t0, s10, 20
                  bge          s11, a7, 633f
                  xor          s4, t2, gp
                  addi         t5, sp, 1229
                  beq          a1, a1, 622f
                  xor          t5, t4, zero
                  sub          s9, a1, a1
                  bltu         s9, a0, 623f
                  bltu         s1, a0, 624f
                  slti         t4, s6, -835
622:              auipc        t3, 630610
623:              sub          s4, s6, a3
624:              slli         sp, gp, 19
                  auipc        t5, 703138
626:              bltu         t5, s8, 639f
                  srli         a0, zero, 31
                  andi         a1, s5, 1428
                  beq          sp, a3, 647f
                  srai         s9, s5, 7
                  ori          a3, s2, -434
                  auipc        s3, 283225
633:              bge          s2, sp, 646f
                  nop
                  bge          s11, t2, 639f
                  srai         sp, a1, 27
                  sltiu        t4, s6, 557
                  andi         a4, t2, -1956
639:              srl          a2, sp, t5
                  sub          a1, s2, t6
                  sub          s0, a4, s11
                  blt          a1, a7, 651f
                  auipc        a4, 531969
                  srl          gp, a5, t0
                  bne          t4, a1, 652f
646:              andi         t1, a0, -1809
647:              sltiu        a1, a4, 414
                  slti         s9, zero, -249
                  sltu         sp, a7, s10
                  nop
651:              bge          s10, a6, 656f
652:              add          gp, t6, tp
                  sltiu        a5, s9, -1281
                  sll          s4, a0, s2
                  bge          a0, a6, 675f
656:              bge          sp, t6, 673f
                  sra          s9, s8, a6
                  blt          s0, a4, 671f
                  addi         t4, s8, -297
                  slli         s4, s6, 6
                  or           s0, a0, s10
                  slli         s10, s3, 20
                  sltu         sp, s6, s5
                  lui          s2, 397961
                  bgeu         s6, sp, 678f
                  slt          t1, s2, s0
                  srai         sp, gp, 21
                  sub          t3, a4, s5
                  slli         s10, s2, 12
                  sltu         sp, s0, a3
671:              xori         a4, a4, -1477
                  xori         a2, s2, -29
673:              xori         s0, s2, -1606
                  srl          t6, s4, t3
675:              xor          s9, tp, s10
                  lui          a5, 732198
                  srl          a0, t4, t3
678:              addi         t0, a6, 1349
                  sub          s3, a6, a6
                  slti         s3, s0, -118
                  srli         a1, a5, 1
                  bgeu         ra, s2, 687f
                  blt          a3, a4, 688f
                  sra          zero, s3, gp
                  sltiu        a2, a2, -1344
                  srli         a3, t3, 5
687:              srli         a3, s4, 16
688:              sltu         sp, a4, a7
                  xori         t5, a5, -221
                  lui          s11, 523770
                  sub          tp, a6, s3
                  and          s0, s6, t3
                  sra          s8, s2, sp
                  bltu         zero, t3, 696f
                  add          zero, s0, ra
696:              sub          a0, a7, tp
                  auipc        a4, 40248
                  srli         a4, s2, 3
                  sltu         a4, a7, s10
                  add          s8, t3, s2
                  sltu         s2, s9, s8
                  blt          a4, zero, 706f
                  srai         t1, s4, 15
                  add          t6, s7, t1
                  lui          a2, 783546
706:              sub          t2, s0, tp
                  sltiu        zero, ra, 1436
                  xor          t4, a2, a3
                  slt          t2, zero, s5
                  ori          s7, s3, 1136
                  lui          s2, 12526
                  lw           sp, 4(s5)
                  xori         s9, zero, -1787
                  addi         s5, s5, 32
                  sltiu        t2, a4, 519
1412:             addi x26, x2, 0
1412:             jalr x26, x26, 0
sub_2:            bge          s3, t6, sub_2_stack_p
                  and          ra, s0, tp
sub_2_stack_p:    addi         s5, s5, -48
                  sltu         ra, s4, s8
                  add          a5, t3, a3
                  sra          t3, t1, s9
                  slti         t1, s7, 247
                  sw           sp, 4(s5)
                  srl          ra, a6, s8
                  sub          tp, a0, a4
                  add          a1, a7, s9
                  srl          t2, tp, s0
                  bne          a6, s6, 10f
                  sra          t3, t3, s7
                  and          s1, t2, s9
                  bltu         gp, s1, 8f
                  slt          t1, a7, s0
8:                sll          gp, a7, s7
                  srai         s6, s8, 7
10:               bgeu         gp, a5, 18f
                  srl          s4, s1, a0
                  nop
                  addi         a5, gp, 606
                  blt          tp, t0, 26f
                  bltu         s3, t0, 28f
                  addi         t4, t6, -1774
                  slti         s2, t2, 1275
18:               ori          a1, t3, 1394
                  lui          tp, 545812
                  xori         gp, t5, 1526
                  and          s4, t5, s2
                  nop
                  blt          t4, s8, 42f
                  sltiu        s11, s8, 1731
                  bge          s0, a1, 39f
26:               sub          t3, a2, a2
                  auipc        a2, 310605
28:               srl          ra, s8, a1
                  or           s2, s7, s8
                  or           s3, a1, a6
                  bgeu         a4, a7, 40f
                  add          s0, s10, s10
                  lui          s8, 349717
                  bne          s6, s10, 41f
                  sll          tp, a0, t5
                  sra          ra, gp, t2
                  slti         a4, sp, 438
                  or           tp, a4, s7
39:               sltiu        a4, s1, 289
40:               sltiu        s10, s1, 841
41:               add          tp, ra, a4
42:               sll          t3, ra, s3
                  lw           sp, 4(s5)
                  slti         zero, s8, -1673
                  addi         s2, s9, -1662
                  addi         s5, s5, 48
                  nop
57:               addi x9, x2, 0
57:               jalr x9, x9, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x16, x21, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x29, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x29, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x29, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x29, x13, ecall_handler
                  li x13, 0x1
                  beq x29, x13, instr_fault_handler
                  li x13, 0x5
                  beq x29, x13, load_fault_handler
                  li x13, 0x7
                  beq x29, x13, store_fault_handler
                  li x13, 0xc
                  beq x29, x13, pt_fault_handler
                  li x13, 0xd
                  beq x29, x13, pt_fault_handler
                  li x13, 0xf
                  beq x29, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x21, x16, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
