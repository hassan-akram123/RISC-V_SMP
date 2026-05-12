.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x5, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0xa
                  li x2, 0x462bd9c4
                  li x3, 0x80000000
                  li x4, 0x3fd860e9
                  li x6, 0x80000000
                  li x7, 0xf
                  li x8, 0x3ee86ce9
                  li x9, 0xca78c957
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0xd1049a3
                  li x14, 0xf20ffea0
                  li x15, 0x5e2b0349
                  li x16, 0x6
                  li x17, 0x0
                  li x18, 0x3
                  li x19, 0x80000000
                  li x20, 0x54a278e5
                  li x21, 0x56d4fd2f
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xb5e91ea9
                  li x25, 0x3e814b7a
                  li x26, 0x80000000
                  li x27, 0x0
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x0
                  la x28, user_stack_end
main:             la           a1, region_1+341 #start load_store_instr_stream_2
                  sb           s10, 155(a1)
                  la           ra, region_1+1704 #start load_store_instr_stream_1
                  lbu          a3, -35(a1)
                  la           a6, region_1+108 #start load_store_instr_stream_0
                  lbu          s2, -253(a1)
                  lbu          a4, 10(ra)
                  lb           t6, 194(a1)
                  lb           a5, 45(ra)
                  lh           sp, -44(ra)
                  lb           t5, -71(a6)
                  lb           tp, -57(a6)
                  lhu          gp, 20(a6)
                  lh           t1, 42(a6)
                  lbu          s3, 114(a1)
                  lw           s9, 8(ra)
                  sb           a3, 126(a1)
                  lh           t2, 122(a6)
                  lhu          s0, 40(ra)
                  lhu          s0, -60(a6)
                  lb           a4, 43(ra)
                  lb           s6, 37(ra)
                  sh           sp, 215(a1)
                  lb           sp, -58(a6)
                  sb           t5, -80(a1)
                  lb           s6, -120(a1) #end load_store_instr_stream_2
                  lb           s5, 64(ra)
                  lbu          t5, 7(ra)
                  sb           a6, -35(ra) #end load_store_instr_stream_1
                  lb           s3, 87(a6) #end load_store_instr_stream_0
                  la           a4, region_1+273 #start riscv_load_store_rand_instr_stream_1
                  srl          a6, s7, s5
                  nop
                  sb           s3, -152(a4)
                  slt          s8, s5, s7
                  sll          gp, s4, a5
                  andi         tp, t2, 1158
                  lhu          t1, 129(a4)
                  lbu          a2, 162(a4)
                  sb           s8, -100(a4)
                  lb           t2, 253(a4)
                  lbu          a6, 154(a4)
                  srli         gp, ra, 4
                  srl          s5, s10, s5
                  sb           a0, -27(a4)
                  lb           a6, 2(a4)
                  sb           a2, 233(a4)
                  lh           s3, 95(a4)
                  lb           a5, 96(a4)
                  lbu          t2, 62(a4)
                  slt          a6, s1, zero
                  slli         a2, s1, 30
                  lb           t5, -252(a4)
                  slti         t4, t2, -119
                  lb           s1, 26(a4)
                  lh           s8, 205(a4)
                  ori          s1, s11, 967
                  lb           a7, 141(a4)
                  sb           s5, -66(a4)
                  lb           s7, -195(a4)
                  lb           ra, 90(a4)
                  lbu          s6, -122(a4)
                  lh           s0, 87(a4)
                  xori         a5, s10, 26
                  lh           gp, -83(a4)
                  lhu          zero, -69(a4)
                  sb           s7, -247(a4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+741 #start riscv_load_store_hazard_instr_stream_1
                  sb           t4, 125(sp)
                  lhu          s11, 247(sp)
                  sb           s3, 247(sp)
                  sb           a1, 247(sp)
                  lh           t4, 247(sp)
                  lh           a2, -211(sp)
                  auipc        a1, 90655
                  lh           s6, -211(sp)
                  lb           t4, 166(sp)
                  sb           s0, 166(sp)
                  lb           tp, -100(sp)
                  sb           s2, -100(sp)
                  lw           a7, 199(sp)
                  sh           t4, 199(sp)
                  sub          t2, t1, t1
                  srai         tp, t1, 31
                  lh           a2, 199(sp)
                  ori          a3, zero, -1181
                  sltu         a5, s1, s1
                  lhu          t6, 19(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+1404 #start load_store_instr_stream_2
                  la           sp, region_0+31 #start load_store_instr_stream_0
                  sb           s8, 1(tp)
                  sb           t0, 16(tp)
                  la           a7, region_0+385 #start load_store_instr_stream_1
                  la           a3, region_0+1287 #start load_store_instr_stream_4
                  la           a0, region_0+500 #start load_store_instr_stream_3
                  lh           t6, 8(a0)
                  lbu          ra, 416(a3)
                  lbu          ra, 232(sp)
                  lb           s6, 1(tp)
                  lbu          gp, -1078(a3)
                  lhu          t6, 10(tp)
                  lbu          t4, -8(a7)
                  sb           s9, 3(a7)
                  lb           s7, 146(sp)
                  sb           a4, -3(a0)
                  sw           s3, -9(a7)
                  sb           t0, -9(tp)
                  sb           t3, -4(a0)
                  lbu          t1, -812(a3)
                  sb           s0, 130(sp)
                  lb           s10, -127(a3)
                  lbu          s3, -6(a7)
                  lhu          t2, -9(a7)
                  lbu          t1, -11(a7)
                  sb           t1, 8(a7)
                  lb           zero, 1(tp)
                  lw           a1, -8(tp)
                  lbu          t4, 174(sp)
                  sb           s9, -3(a7)
                  lbu          s7, -10(a0)
                  lh           a4, -1261(a3)
                  lbu          s5, -758(a3) #end load_store_instr_stream_4
                  lhu          ra, 8(a0) #end load_store_instr_stream_3
                  lbu          s1, 110(sp)
                  sh           a1, -10(tp) #end load_store_instr_stream_2
                  lbu          s10, 132(sp)
                  lb           s2, 14(a7)
                  lb           a4, 46(sp)
                  lbu          s1, -8(a7) #end load_store_instr_stream_1
                  lhu          gp, 35(sp) #end load_store_instr_stream_0
                  la           s11, region_0+350 #start riscv_load_store_rand_instr_stream_0
                  slt          s6, s6, t3
                  lbu          t6, -4(s11)
                  lh           s7, -12(s11)
                  sb           t0, -11(s11)
                  sb           s7, 0(s11)
                  lw           zero, -2(s11)
                  sb           s5, 5(s11)
                  srli         sp, s2, 26
                  or           t4, a6, a0
                  srli         t5, a1, 8
                  lbu          ra, -15(s11)
                  lui          a7, 662233
                  sb           t2, 3(s11)
                  lbu          sp, -5(s11)
                  sb           sp, 7(s11)
                  lhu          a0, -14(s11)
                  addi         a4, zero, 1906
                  auipc        ra, 820335
                  sltiu        a4, t6, -698
                  ori          a2, ra, 796
                  sll          s5, s0, s2
                  sltu         t2, zero, a1
                  xori         t4, t4, -1928
                  lh           a7, -12(s11)
                  lb           a1, 5(s11)
                  lb           a4, -9(s11)
                  lb           s1, -3(s11)
                  sb           a2, 13(s11)
                  slli         a5, a0, 1
                  slt          a2, s1, t3
                  sh           t0, -12(s11)
                  nop
                  lhu          sp, 2(s11) #end riscv_load_store_rand_instr_stream_0
                  bne          t1, a5, 18f
                  srl          s3, t4, t4
                  bgeu         a6, ra, 13f
                  and          a1, s1, a4
                  bne          s2, t5, 11f
                  bge          a0, s9, 9f
                  sll          s5, s5, t5
                  bgeu         s5, s0, 17f
                  sra          s7, t5, t0
9:                srl          s7, a6, s7
                  sll          a1, s10, a6
11:               bne          t0, s8, 18f
                  blt          a2, a0, 16f
13:               sll          a5, s2, s10
                  sltu         t4, s5, t4
                  sltu         gp, a3, s2
16:               blt          s4, t6, 28f
17:               lui          tp, 417384
18:               or           s5, t4, a7
                  sub          a1, a6, s4
                  srl          s7, s11, t5
                  slti         ra, s9, 1785
                  srli         a7, a7, 6
                  sra          a4, a2, a1
                  xor          s9, tp, a1
                  nop
                  or           a7, a3, s11
                  srl          a4, s1, s3
28:               srli         sp, sp, 8
                  slli         a0, s7, 12
                  add          gp, s7, t5
                  sub          s8, a1, t1
                  lui          a7, 737718
                  xori         s9, s1, -518
                  add          t4, zero, s11
                  srli         a4, s8, 12
                  slt          a6, t0, s10
                  or           s9, s3, ra
                  la           s3, region_1+983 #start riscv_load_store_hazard_instr_stream_0
                  lw           s7, 33(s3)
                  lbu          s9, 44(s3)
                  sb           t1, 44(s3)
                  sltu         s0, s5, t0
                  sltu         ra, s8, a6
                  ori          s7, gp, -425
                  lb           s2, 44(s3)
                  srli         sp, a4, 19
                  lbu          a5, 44(s3)
                  lbu          s10, 44(s3)
                  sra          t4, s5, s10
                  lh           ra, 45(s3)
                  lhu          a1, 45(s3)
                  ori          s7, s5, 1196
                  sub          a5, t1, a3
                  sw           sp, 45(s3)
                  lh           s0, 45(s3)
                  lhu          s1, 45(s3)
                  sb           t3, 45(s3)
                  lh           s0, 45(s3)
                  sw           a4, 45(s3)
                  lb           a5, -60(s3) #end riscv_load_store_hazard_instr_stream_0
                  sll          zero, ra, a7
                  ori          t1, s9, -597
                  ori          t6, s4, -1285
                  xori         a5, a7, -486
                  bltu         ra, a1, 55f
                  beq          s9, a4, 49f
                  sltu         sp, s5, s6
                  slti         a1, t3, 1277
                  ori          zero, t0, -1661
                  slt          a5, t0, s10
                  sll          a7, a6, t3
49:               srl          gp, s11, a7
                  xori         s1, s0, 1952
                  bgeu         t6, s10, 52f
52:               lui          t1, 466285
                  and          s8, s5, s7
                  andi         s0, t3, -775
55:               srl          s10, gp, t0
                  slli         sp, t0, 21
                  sll          a4, s10, gp
                  sll          t5, a7, a5
                  lui          s7, 434045
                  sltiu        tp, tp, -664
                  sltiu        a4, a0, -641
                  srai         t2, t6, 6
                  bne          ra, s1, 69f
                  srli         a1, s8, 31
                  sltu         gp, t1, s0
                  nop
                  lui          s2, 528951
                  addi         s7, s7, -1908
69:               srl          gp, t2, s4
                  addi         a2, t4, 318
                  slli         s5, t1, 1
                  and          gp, a4, s5
                  srl          a1, s1, s3
                  sltiu        a3, s5, 937
                  slt          t6, s3, t2
                  bne          a4, a4, 87f
                  or           s10, zero, s9
                  ori          t4, a1, -1314
                  srai         s2, a1, 7
                  addi         a6, t4, 945
                  and          a6, t0, s0
                  srli         a6, a7, 24
                  slti         s0, s1, -1476
                  slli         a2, t6, 18
                  bgeu         s0, s2, 101f
                  sltiu        tp, s11, -2027
87:               srli         s2, zero, 21
                  xori         a4, a4, -236
                  sltu         s8, a2, s11
                  sub          t4, t1, zero
                  slt          s5, s2, s5
                  xor          t2, s2, s2
                  slt          s7, t4, t0
                  xor          s1, a4, a4
                  bgeu         s8, s2, 114f
                  slli         a1, s1, 19
                  la           a5, sub_1
                  sltu         t2, t3, a2
                  addi         a5, a5, 1010
                  ori          s8, s0, -734
                  and          t1, s5, s7
                  bne          gp, s4, main_j1 #branch to jump instr
                  or           a2, ra, tp
                  sra          s11, sp, s3
main_j1:          jalr         sp, a5, -1010 #jump main -> sub_1
                  xori         a6, ra, -740
                  srl          s1, s2, s7
                  xori         t4, t5, -1325
                  bltu         a4, t5, 105f
                  slt          a6, sp, a5
101:              xori         t1, t6, 287
                  blt          gp, a6, 105f
                  add          s9, t3, a6
                  sra          s10, t1, s11
105:              sub          a7, a6, s7
                  sub          a2, s8, zero
                  xori         zero, a6, 1510
                  srai         s1, s7, 14
                  ori          s0, t0, 424
                  addi         s8, t5, -1195
                  add          t1, a0, s3
                  srl          t5, t2, s6
                  beq          t5, s11, 130f
114:              xor          s10, a3, s10
                  ori          a2, t0, 1925
                  xor          a2, s9, t6
                  xori         t5, s4, -1306
                  srli         ra, a6, 30
                  blt          s3, s9, 128f
                  add          a5, s0, s10
                  or           t2, s7, a6
                  andi         a3, gp, -205
                  sll          a7, t5, t6
                  slli         a4, a7, 19
                  beq          a3, s10, 138f
                  add          s3, s3, a1
                  srai         s8, t0, 17
128:              auipc        s3, 397799
                  xori         s8, a4, 1836
130:              srli         zero, s8, 26
                  bltu         t0, s2, 147f
                  beq          gp, sp, 150f
                  ori          s11, gp, -302
                  sltu         s7, t4, s8
                  blt          s6, sp, 143f
                  srl          s1, s6, a7
                  srli         a0, a1, 24
138:              addi         s9, a5, 204
                  xor          s0, a4, a7
                  slli         a5, s4, 28
                  bgeu         a0, ra, 147f
                  sra          s5, zero, s1
143:              srai         t1, s1, 21
                  addi         a6, s2, 428
                  beq          a7, s8, 160f
                  srli         s9, a3, 28
147:              auipc        s1, 1016160
                  and          t6, s8, s6
                  blt          a7, t3, 163f
150:              blt          ra, s6, 166f
                  lui          s11, 741567
                  or           a6, a4, t4
                  beq          a5, s8, 173f
                  slli         s6, a5, 0
                  bne          t1, s0, 174f
                  bltu         zero, t6, 175f
                  srl          s7, t0, ra
                  srli         s11, t3, 26
                  slli         s9, a2, 31
160:              and          t2, tp, s6
                  and          t6, s9, t6
                  andi         s1, a1, 1377
163:              srli         gp, s7, 29
                  add          tp, s9, tp
                  srai         s2, a0, 13
166:              bge          t0, t0, 167f
167:              auipc        s3, 373405
                  lui          sp, 1043594
                  slt          s5, s5, s0
                  srai         a3, t0, 30
                  slt          a7, s1, s2
                  srai         ra, a3, 24
173:              xor          s2, t0, tp
174:              sub          t1, s8, t3
175:              sltu         a2, s5, t2
                  slti         s9, t1, -811
                  nop
                  bgeu         t0, s9, 197f
                  beq          a1, s2, 198f
                  bltu         a0, zero, 200f
                  nop
                  xori         t1, s7, -1155
                  bgeu         gp, a7, 201f
                  sltu         t2, a0, t3
                  beq          s3, s9, 191f
                  sll          s11, gp, s8
                  srl          s11, a7, ra
                  slti         a4, a4, -765
                  sltiu        a2, gp, 1754
                  slti         a7, s9, -995
191:              sltiu        s7, t4, -1354
                  xor          a4, t5, s0
                  beq          t6, t1, 207f
                  srli         a6, t6, 29
                  sll          s2, s7, s4
                  andi         a7, t3, -1863
197:              srli         ra, s6, 26
198:              sra          a7, tp, a5
                  auipc        s7, 741300
200:              auipc        a1, 612540
201:              sltiu        s1, s10, -303
                  auipc        sp, 740673
                  beq          a3, s8, 207f
                  xor          s11, s5, t4
                  srl          zero, s2, s8
                  xor          s2, zero, s3
207:              sra          s8, s5, a2
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         s3, a4, -1684
                  srai         a4, a1, 13
                  addi         t3, t3, -48
                  auipc        s9, 943903
                  addi         s5, s0, 743
                  sltu         ra, ra, s8
                  slli         t5, s3, 16
                  sw           sp, 4(t3)
                  or           tp, s8, s3
                  la           sp, region_1+655 #start riscv_load_store_hazard_instr_stream_1
                  sb           a1, 7(sp)
                  sb           ra, 7(sp)
                  lbu          gp, 42(sp)
                  sb           t6, 42(sp)
                  lb           zero, 42(sp)
                  lb           tp, 42(sp)
                  addi         a7, t0, -1420
                  sh           tp, -11(sp)
                  lh           gp, -11(sp)
                  lh           s6, -11(sp)
                  sb           t4, -26(sp)
                  sb           s10, -26(sp)
                  sb           tp, -26(sp)
                  sb           t2, -26(sp)
                  sb           s7, -26(sp)
                  lbu          a0, 24(sp)
                  lb           s11, 58(sp)
                  auipc        gp, 698673
                  sb           a2, 58(sp)
                  and          tp, s8, zero
                  lb           a6, 58(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t5, region_0+901 #start load_store_instr_stream_1
                  la           s11, region_0+1578 #start load_store_instr_stream_3
                  la           s10, region_0+544 #start load_store_instr_stream_0
                  sw           ra, 43(t5)
                  lb           s5, 205(s10)
                  sb           s8, -179(s10)
                  lbu          a6, -114(s11)
                  la           t2, region_0+669 #start load_store_instr_stream_2
                  lb           a1, -33(s11)
                  lbu          a4, 53(t5)
                  sb           a2, 52(t5)
                  sb           s3, -153(s10)
                  lbu          a4, -253(s11)
                  lbu          ra, -7(t5)
                  sh           s8, -182(s10)
                  sb           s5, -38(t2)
                  lb           s9, -139(s10)
                  lbu          sp, -197(s10)
                  lb           s5, -43(s11)
                  lw           s3, 11(t5)
                  sb           s3, -90(s11)
                  lh           s9, 86(s11)
                  lw           s3, -94(s11)
                  sh           a3, -202(s10)
                  lbu          s5, -28(t2)
                  lbu          a0, -14(t5)
                  sw           a6, 59(t5)
                  sb           t4, -29(t2)
                  lbu          a6, -139(s10)
                  lh           s3, -240(s11)
                  lbu          tp, -113(s11)
                  lb           s5, -136(s10)
                  sb           tp, -37(t2)
                  sb           s0, 26(t5)
                  lhu          ra, -41(t5) #end load_store_instr_stream_1
                  lbu          a7, -201(s11) #end load_store_instr_stream_3
                  sb           tp, -8(t2) #end load_store_instr_stream_2
                  sh           a5, 118(s10) #end load_store_instr_stream_0
                  la           s0, region_0+434 #start load_store_instr_stream_1
                  la           s10, region_0+1095 #start load_store_instr_stream_0
                  la           s11, region_0+509 #start load_store_instr_stream_2
                  la           a0, region_0+1540 #start load_store_instr_stream_3
                  lbu          s1, -15(s0)
                  lhu          s8, -10(s0)
                  sb           a0, 10(s10)
                  sb           s7, -34(s11)
                  la           sp, region_0+167 #start load_store_instr_stream_4
                  sb           s10, 13(s0)
                  sh           s1, 4(a0)
                  lw           t2, -19(sp)
                  lb           a2, -46(s11)
                  lw           t5, -16(a0)
                  lb           a1, 1(s0)
                  lbu          ra, -7(a0)
                  sb           a6, -48(sp)
                  sb           a6, -5(s0)
                  lbu          a4, -40(sp)
                  sw           s5, 8(a0)
                  lb           s6, 4(s11)
                  sh           s3, 8(a0)
                  lh           gp, 9(s10)
                  sb           a2, 5(a0)
                  lb           s2, -14(a0)
                  sh           s2, 25(sp)
                  sb           gp, -13(s0)
                  lb           s8, 34(sp)
                  sh           s8, 15(s10)
                  lb           s2, 5(s0)
                  lb           a7, 0(sp)
                  sb           a0, 12(s10)
                  sb           a5, -7(s0)
                  lh           s3, 21(s11)
                  lb           tp, -60(sp)
                  lbu          s3, 4(sp)
                  lbu          tp, 58(sp)
                  lb           t5, -22(s11)
                  lb           ra, 7(a0)
                  lh           s1, -4(s0)
                  lh           a5, -3(s11)
                  lhu          t6, -21(s11) #end load_store_instr_stream_2
                  sb           s7, -9(sp) #end load_store_instr_stream_4
                  lhu          a5, 0(s0) #end load_store_instr_stream_1
                  lb           a7, -15(a0) #end load_store_instr_stream_3
                  sb           s2, 14(s10) #end load_store_instr_stream_0
                  la           s6, region_0+782 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a7, -4(s6)
                  lh           a7, -4(s6)
                  add          a3, sp, tp
                  lbu          s0, -4(s6)
                  xor          s0, tp, s6
                  lb           a7, -4(s6)
                  lh           s5, -4(s6)
                  sh           s2, -4(s6)
                  lb           a3, -4(s6)
                  sltiu        a6, s9, -751
                  lb           zero, -4(s6)
                  lh           sp, -4(s6)
                  sh           s0, -4(s6)
                  srl          sp, zero, a4
                  lh           s9, -4(s6)
                  sb           ra, -4(s6)
                  lb           gp, -4(s6)
                  sb           gp, -4(s6)
                  lh           t5, -4(s6)
                  sltu         a7, a6, s5
                  sh           gp, -4(s6)
                  sh           zero, -4(s6)
                  lbu          a1, -4(s6)
                  lb           s7, -4(s6)
                  sh           t6, -4(s6) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_0+1127 #start riscv_load_store_rand_instr_stream_2
                  xori         a6, t6, 223
                  lbu          a2, 39(tp)
                  sb           s4, 24(tp)
                  add          zero, zero, s0
                  or           s10, tp, gp
                  sh           s6, -121(tp)
                  slli         s5, s7, 14
                  addi         t5, s4, -451
                  sra          s2, s6, zero
                  lhu          t2, 207(tp)
                  sb           t3, -632(tp)
                  slti         s8, s0, 318
                  lb           t5, -466(tp)
                  srli         t6, s10, 3
                  slti         t5, s8, -2014
                  lb           a4, 321(tp)
                  lb           a5, 269(tp)
                  sll          s7, a0, t5
                  lb           s5, -145(tp)
                  sll          s8, s3, s9
                  lbu          s10, 529(tp)
                  sb           a5, -998(tp)
                  and          t1, s8, a7
                  sltu         s6, ra, s4
                  sll          a7, t2, a1
                  lhu          a6, 769(tp)
                  sra          a1, a0, zero
                  lbu          s0, -688(tp)
                  or           s1, ra, s0
                  lhu          zero, 625(tp)
                  xor          s3, s5, a5
                  xori         sp, s5, 325
                  lbu          s6, -1094(tp)
                  lbu          a2, 492(tp)
                  lbu          t5, 286(tp)
                  srai         zero, s8, 0
                  lw           gp, -847(tp)
                  sltiu        t5, s0, -1909
                  or           s0, s1, tp
                  lbu          a5, 203(tp)
                  or           a0, s8, s9
                  srai         a5, s3, 8
                  sltiu        a7, s1, 1343
                  lbu          a2, 422(tp)
                  lbu          s10, -602(tp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+708 #start riscv_load_store_hazard_instr_stream_3
                  lbu          s9, -59(sp)
                  sh           a1, 18(sp)
                  sh           tp, 18(sp)
                  sh           t4, -54(sp)
                  lw           tp, 36(sp)
                  sw           t6, 36(sp)
                  sb           gp, -23(sp)
                  addi         a0, s2, 815
                  lb           a4, -23(sp)
                  sb           ra, -46(sp)
                  srl          t5, a0, t6
                  nop
                  sb           s4, 19(sp)
                  sub          t4, zero, a3
                  sb           t4, 19(sp)
                  lb           s5, 19(sp)
                  sll          s11, s8, a1
                  lbu          a2, 19(sp)
                  lbu          s5, -19(sp)
                  nop
                  lb           zero, 59(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+732 #start riscv_load_store_rand_instr_stream_1
                  andi         a6, s11, -1466
                  slt          s2, a1, a4
                  lbu          t5, 7(sp)
                  sb           s10, -13(sp)
                  lb           s6, 0(sp)
                  lbu          s0, -14(sp)
                  lbu          s0, -1(sp)
                  srai         a2, a7, 31
                  lbu          s2, -15(sp)
                  andi         t5, ra, 1483
                  nop
                  xori         s9, gp, 1524
                  slt          s10, s6, a1
                  sb           s1, -7(sp)
                  sb           ra, 7(sp)
                  sb           s8, 7(sp)
                  lbu          a3, -5(sp)
                  andi         ra, s1, 2041
                  andi         ra, t1, -891
                  sw           s4, -16(sp)
                  lbu          a5, -5(sp)
                  srli         tp, s0, 12
                  lb           t5, 1(sp)
                  lw           ra, 16(sp)
                  nop
                  add          gp, s11, t0
                  lbu          ra, 4(sp)
                  addi         tp, tp, 161
                  lbu          a4, 9(sp)
                  lh           s6, -14(sp)
                  lbu          s8, -3(sp)
                  or           a5, s7, s8
                  sb           t0, -7(sp)
                  sltiu        s10, a7, 843
                  lbu          s0, 11(sp)
                  nop
                  lbu          ra, 6(sp)
                  or           a6, s3, a2
                  sb           s10, 16(sp)
                  sw           a6, -16(sp)
                  lb           tp, 8(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+421 #start load_store_instr_stream_1
                  lb           s2, -6(t4)
                  sb           s4, -1(t4)
                  la           s0, region_1+407 #start load_store_instr_stream_0
                  lbu          tp, 0(t4)
                  lh           s5, 1349(s0)
                  lbu          t1, 1553(s0)
                  lbu          sp, -6(t4)
                  lb           a5, -13(t4)
                  sb           t1, 1088(s0)
                  sb           a7, 1568(s0)
                  sb           gp, 1446(s0)
                  sh           t6, -15(t4)
                  lb           s9, 8(t4)
                  lb           t6, -97(s0)
                  lhu          a4, 453(s0)
                  lw           s2, 15(t4)
                  sh           t5, 9(t4) #end load_store_instr_stream_1
                  lbu          s7, -40(s0) #end load_store_instr_stream_0
                  la           sp, region_1+396 #start riscv_load_store_rand_instr_stream_3
                  sub          a4, s4, s7
                  add          a2, s4, gp
                  sub          t6, s8, zero
                  lb           s2, -15(sp)
                  lbu          s1, -59(sp)
                  lbu          t2, -44(sp)
                  xori         s6, t2, -970
                  sh           t2, 12(sp)
                  srl          s9, s7, a7
                  xori         s5, a3, -1022
                  add          s1, t2, t0
                  addi         a5, a1, -21
                  sll          t1, zero, s7
                  sb           t0, 27(sp)
                  lb           t1, 41(sp)
                  sltu         t5, a7, a6
                  nop
                  lbu          a2, 58(sp)
                  sw           a7, 24(sp)
                  sb           s7, 13(sp)
                  xori         a3, t2, 1612
                  and          t4, a6, a1
                  lb           s3, -25(sp)
                  xor          zero, gp, t3
                  or           t5, s3, t4
                  sb           s5, 17(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+193 #start riscv_load_store_hazard_instr_stream_2
                  sb           s11, 1622(s9)
                  sb           a1, 1622(s9)
                  lb           s8, 1622(s9)
                  lbu          zero, 1622(s9)
                  lbu          a2, 1622(s9)
                  sb           s0, 1622(s9)
                  lw           sp, 391(s9)
                  slli         gp, a2, 14
                  lw           a1, 391(s9)
                  sw           tp, 391(s9)
                  sltiu        s3, t2, -533
                  lbu          s8, 518(s9)
                  lb           s11, -140(s9)
                  lb           a7, 1255(s9)
                  lh           sp, 1255(s9)
                  srli         a6, a5, 25
                  slt          ra, s6, sp
                  lw           a2, 1255(s9)
                  srli         tp, s11, 7
                  srli         a7, s11, 8
                  lhu          zero, 1255(s9)
                  lhu          t6, 1337(s9)
                  sh           t5, 1337(s9)
                  sh           a0, 1337(s9)
                  lui          t1, 918042
                  lbu          t6, 1337(s9) #end riscv_load_store_hazard_instr_stream_2
                  xori         s1, gp, -449
                  sub          t1, a5, s5
                  sltu         ra, a6, t1
                  xor          t2, tp, zero
                  lui          s5, 385128
                  nop
                  andi         s8, s11, -1638
                  sltu         a2, s1, s5
                  sll          ra, t2, s4
                  srl          a2, a1, a5
                  srai         t4, s0, 10
                  sltu         s11, tp, s1
                  bne          s5, a2, 15f
                  beq          s9, s8, 30f
                  srl          t2, t4, s0
15:               bgeu         s1, s0, 20f
                  sll          t2, t1, gp
                  xori         s9, s0, 347
                  sltu         s6, s0, t5
                  bne          t1, t2, 39f
20:               nop
                  ori          t5, t0, 2031
                  add          t6, zero, a1
                  xor          a3, s4, a0
                  bltu         a1, a6, 30f
                  srl          s8, a6, zero
                  slti         a7, s8, 217
                  sub          s7, s3, t5
                  addi         s10, t1, -1995
                  sub          s0, s2, t2
30:               slt          a3, a6, s8
                  bge          a5, s5, 45f
                  sub          t6, s10, a0
                  xori         a1, a4, 551
                  andi         s0, s3, 48
                  srai         s7, s7, 10
                  addi         ra, s1, -1205
                  slti         a4, a3, 1960
                  slt          t6, s10, s3
39:               add          a0, t1, s10
                  bltu         a4, s2, 41f
41:               beq          t1, a1, 55f
                  ori          a7, s0, -1712
                  beq          s6, a6, 44f
44:               bge          zero, t6, 59f
45:               and          t5, a7, s9
                  sltu         a5, s0, a3
                  bne          s8, s0, 49f
                  xor          t6, s0, s8
49:               xori         a7, s1, 1191
                  or           gp, t0, t5
                  sltu         a6, t0, zero
                  xor          tp, a3, zero
                  srl          a5, s6, gp
                  sll          s10, s10, s0
55:               sltiu        s1, ra, 1449
                  sub          a1, t6, a3
                  sra          sp, a4, s6
                  srli         t5, t1, 11
59:               slt          s0, s9, gp
                  slt          s6, t4, t1
                  addi         s5, t6, -1205
                  srli         s7, t0, 0
                  srli         t4, s3, 21
                  auipc        ra, 30052
                  bltu         a3, ra, 78f
                  ori          s8, zero, -308
                  lui          a2, 271039
                  ori          a3, a0, 171
                  beq          zero, sp, 89f
                  ori          a0, s5, -1171
                  and          gp, a7, t0
                  srai         a7, t4, 13
                  bgeu         s3, t3, 76f
                  bge          a4, t6, 78f
                  addi         s10, t1, 1249
76:               bltu         s0, s7, 85f
                  lui          a0, 33225
78:               xori         ra, a5, 1662
                  srai         s9, a6, 12
                  addi         s8, s2, 27
                  bne          t1, s1, 101f
                  ori          tp, t4, 226
                  xor          a5, t1, gp
                  nop
85:               bge          s10, s10, 89f
                  xori         s9, sp, 1532
                  beq          sp, a5, 106f
                  and          t5, a4, s7
89:               bgeu         s6, a2, 101f
                  auipc        a3, 81216
                  bge          s2, a7, 105f
                  bltu         t5, a6, 100f
                  xori         t5, tp, 490
                  bgeu         a7, t5, 107f
                  slli         a3, t4, 10
                  srli         a1, t6, 3
                  sra          tp, t1, a4
                  sltiu        t1, s0, 108
                  or           s1, s0, a3
100:              nop
101:              sll          a3, a5, t3
                  xori         zero, a0, 1384
                  slt          t1, a5, t4
                  lui          s5, 1047923
105:              bgeu         s5, t5, 110f
106:              slli         t2, zero, 16
107:              bgeu         s0, s0, 114f
                  srli         s11, t2, 27
                  srl          a3, s1, a7
110:              addi         a2, s9, -355
                  srai         t6, t0, 29
                  beq          a5, t1, 118f
                  bgeu         tp, zero, 123f
114:              auipc        a1, 643207
                  bne          sp, a7, 129f
                  nop
                  ori          s3, t3, -1633
118:              addi         zero, t0, 1225
                  bltu         a0, s3, 120f
120:              bgeu         gp, a2, 131f
                  slti         tp, s8, -635
                  sll          s0, a1, s11
123:              sra          sp, s6, s2
                  nop
                  srai         a6, ra, 17
                  xori         gp, a1, 263
                  bltu         zero, s9, 136f
                  sra          s7, tp, s3
129:              bge          a6, s4, 130f
130:              sltiu        s9, s11, -1338
131:              beq          s1, a3, 145f
                  sub          sp, s5, s3
                  srli         a3, s1, 11
                  sub          a5, ra, t1
                  srl          s9, a0, t3
136:              bltu         t2, s0, 149f
                  ori          t6, t1, 47
                  sub          s5, sp, sp
                  sll          s2, s7, t5
                  auipc        s6, 240097
                  lui          t5, 683795
                  ori          s2, gp, -1138
                  bge          s9, s1, 160f
                  srl          s7, tp, s8
145:              beq          t0, s3, 146f
146:              slti         a1, s9, 1971
                  add          t2, zero, s6
                  srli         t6, s7, 1
149:              srl          ra, t3, a6
                  auipc        tp, 560614
                  sltiu        a2, s0, 855
                  bgeu         s7, s7, 166f
                  xor          a6, s2, t0
                  or           t5, s6, s9
                  bge          a5, zero, 158f
                  sltu         a6, a3, a2
                  auipc        s10, 654253
158:              beq          s6, s8, 168f
                  sub          gp, s10, ra
160:              slli         s6, s3, 6
                  bne          a7, zero, 173f
                  slt          zero, tp, sp
                  ori          s11, a3, 562
                  sltu         a0, t5, ra
                  srai         t2, t4, 4
166:              or           t2, t5, s8
                  ori          a4, a0, 309
168:              slt          a5, s5, a3
                  slti         s9, a6, -1287
                  sltiu        t5, s11, -1344
                  bne          a4, s4, 185f
                  and          zero, t0, zero
173:              add          a5, tp, s9
                  srai         s0, zero, 19
                  and          sp, s6, s9
                  bgeu         t6, t2, 184f
                  srl          t6, tp, s10
                  bltu         s4, s9, 181f
                  blt          t1, t4, 183f
                  sll          t1, t4, t4
181:              sra          t6, a3, t1
                  xor          s3, s6, a6
183:              slti         s7, a0, 556
184:              sll          s1, tp, s8
185:              sll          a5, s5, s2
                  sra          s3, a1, t5
                  and          s0, gp, ra
                  blt          t4, s8, 208f
                  auipc        s0, 996437
                  slti         a2, s4, -12
                  andi         tp, s11, -462
                  bge          t2, s8, 207f
                  ori          s3, s5, -1271
                  ori          t5, a0, -1789
                  ori          a7, s11, 1951
                  sltiu        s1, a0, 1196
                  ori          zero, t2, 1669
                  sub          s6, s8, s0
                  srl          a5, t3, a7
                  bge          s8, a7, 206f
                  blt          a0, s6, 206f
                  srli         a3, a3, 14
                  sll          t6, s3, a4
                  add          s2, a5, gp
                  andi         s1, s3, 1522
206:              xori         a0, ra, -1335
207:              sltu         a6, a5, tp
208:              and          t6, t1, a1
                  bge          s1, t5, 211f
                  srai         a2, t1, 2
211:              and          t1, a5, t1
                  srli         t5, s5, 29
                  srli         t1, s4, 5
                  srl          s5, s9, s3
                  nop
                  nop
                  ori          gp, s0, -1309
                  sra          s9, a4, t0
                  beq          s7, s1, 230f
                  srli         a7, s3, 11
                  ori          s7, s0, -2041
                  xori         t4, s5, -1669
                  and          a6, a0, s2
                  nop
                  xor          s8, t1, s11
                  add          s3, tp, s1
                  xori         s8, s2, -206
                  sltiu        t2, t2, -1727
                  bltu         a1, a2, 233f
230:              slti         t5, a4, -1741
                  and          t6, t0, s3
                  sltu         tp, t3, s6
233:              slli         s0, t5, 12
                  nop
                  ori          a2, t5, -153
                  andi         t2, a7, -1235
                  bne          gp, gp, 250f
                  auipc        t2, 545515
                  slt          s6, t5, t1
                  sltiu        a0, t4, 1972
                  beq          a1, s3, 261f
                  la           s9, region_1+466 #start load_store_instr_stream_2
                  la           sp, region_1+1752 #start load_store_instr_stream_3
                  la           a7, region_1+1587 #start load_store_instr_stream_4
                  la           a2, region_1+910 #start load_store_instr_stream_1
                  sh           gp, 5(a7)
                  sb           sp, -122(sp)
                  lh           ra, -1(a7)
                  la           a5, region_1+865 #start load_store_instr_stream_0
                  sb           a3, 937(a2)
                  sb           s10, 1045(s9)
                  sb           t6, -419(a2)
                  lbu          t2, 2(a7)
                  sb           t1, 111(sp)
                  lhu          a6, 47(a5)
                  lbu          t5, 573(s9)
                  lb           a3, 637(a2)
                  sb           s7, -6(a7)
                  sb           a1, 858(a2)
                  lhu          t4, -5(a7)
                  sw           s11, 51(a5)
                  lbu          s6, 359(a2)
                  lbu          s11, 1416(s9)
                  sw           t4, -570(a2)
                  lb           t1, 959(a2)
                  lb           s5, -12(a7)
                  sh           s2, -198(sp)
                  lb           t1, 32(a5)
                  lbu          a3, 931(a2)
                  lbu          s1, -121(sp)
                  lhu          t4, -1(a7)
                  lbu          s0, 12(a5)
                  lw           zero, 122(a2)
                  lb           s1, -360(s9)
                  lbu          s6, 223(sp)
                  lbu          s6, 42(a5)
                  lbu          t4, -8(a7)
                  lb           s6, -255(sp)
                  sh           a4, 928(s9)
                  lbu          s6, 974(a2) #end load_store_instr_stream_1
                  lb           t5, -16(a7) #end load_store_instr_stream_4
                  sb           s0, -147(s9)
                  sw           ra, -128(sp) #end load_store_instr_stream_3
                  lb           t2, -206(s9) #end load_store_instr_stream_2
                  lbu          gp, -58(a5)
                  lbu          a1, 41(a5) #end load_store_instr_stream_0
                  slt          s6, sp, s10
                  or           s2, s3, s1
                  nop
                  add          sp, t4, s2
                  and          s0, a5, a5
                  sltiu        ra, s0, -1317
                  sra          t1, s3, s7
                  or           s11, ra, s2
250:              lui          ra, 466901
                  slli         s11, s7, 26
                  slti         t5, a2, 1350
                  sltiu        sp, a2, -1863
                  bge          s1, s4, 261f
                  srai         t2, tp, 15
                  sra          t4, s2, t0
                  xori         t5, a3, -581
                  addi         s2, a0, -614
                  xor          a5, s4, zero
                  slti         zero, t3, -283
261:              sra          a2, a0, s4
                  sltiu        a6, a0, -280
                  xori         t5, s11, -596
                  sll          zero, t4, zero
                  srli         zero, a0, 24
                  addi         a0, a5, -690
                  srl          a6, a3, t4
                  xor          a3, tp, s11
                  sltu         a6, a0, a3
                  add          ra, t6, t4
                  bltu         a7, t2, 272f
272:              andi         a7, a5, -1774
                  or           a1, s10, a4
                  srli         s0, a6, 23
                  bne          t2, a5, 280f
                  addi         s6, s1, 1136
                  sltiu        t1, s11, 960
                  andi         zero, a6, -1354
                  xor          t2, a7, s10
280:              sll          a2, s11, a1
                  slli         a3, s11, 25
                  bgeu         s10, s1, 288f
                  ori          s10, s5, -442
                  addi         s0, s11, 503
                  andi         t1, s0, 2037
                  srl          a1, ra, a3
                  ori          s3, s9, 2018
288:              or           s6, a0, tp
                  sub          t4, t1, s6
                  srl          a5, s1, a5
                  srli         s7, s8, 24
                  addi         s9, s2, 1872
                  and          a1, s10, a5
                  bge          s5, zero, 308f
                  slt          t5, s0, s3
                  sltiu        t1, s2, 746
                  srai         s3, s11, 13
                  srl          s1, s0, a6
                  blt          s10, ra, 318f
                  lui          t5, 317518
                  bltu         s11, gp, 321f
                  andi         a6, a5, -593
                  bltu         a0, sp, 315f
                  slti         s10, s8, -1015
                  or           s2, s4, s5
                  andi         s1, t3, -1580
                  beq          t6, t5, 320f
308:              sra          s10, s4, a7
                  sub          t4, s11, t1
                  and          s11, a1, s8
                  addi         s6, t5, 1931
                  sra          gp, a7, zero
                  beq          sp, sp, 322f
                  slli         s11, t1, 4
315:              sra          s11, sp, t1
                  bge          s3, a4, 317f
317:              sra          a7, s5, zero
318:              beq          sp, s4, 325f
                  bltu         t3, a5, 327f
320:              xori         tp, s2, 511
321:              bltu         gp, s2, 334f
322:              sltiu        a5, sp, 444
                  xor          tp, s1, s3
                  slti         t4, t6, -1839
325:              sltiu        a2, a3, -902
                  beq          gp, a2, 340f
327:              andi         a4, s6, -1555
                  bge          t3, t1, 348f
                  slli         a4, gp, 27
                  beq          t1, s6, 341f
                  xor          s0, zero, s6
                  add          a7, t3, gp
                  slli         s11, s9, 14
334:              bge          s9, a1, 351f
                  lui          s7, 206379
                  srai         s10, a5, 14
                  srai         s8, a2, 23
                  add          t6, a2, s0
                  andi         t1, s6, 414
340:              addi         a5, sp, -948
341:              bltu         t5, t5, 351f
                  nop
                  sll          s8, sp, s0
                  andi         s2, s7, 513
                  andi         a5, s2, -1848
                  beq          s0, t1, 350f
                  bgeu         a6, s8, 361f
348:              srl          a3, s7, t0
                  sll          s1, s2, a6
350:              ori          a1, t2, -912
351:              bltu         tp, a3, 354f
                  srl          t2, s5, t2
                  bltu         zero, t3, 359f
354:              auipc        ra, 1030543
                  or           a7, s0, t3
                  sltu         s5, t6, a5
                  lui          gp, 982810
                  lui          s10, 1001364
359:              andi         t2, t5, 1796
                  sll          s9, a4, s2
361:              slli         s9, t4, 10
                  beq          a5, t3, 367f
                  nop
                  bltu         s6, a7, 378f
                  bltu         tp, s7, 380f
                  sra          t4, s11, zero
367:              slt          ra, ra, s10
                  xor          a2, a3, a7
                  sltiu        t1, t5, 421
                  sra          a6, s11, a3
                  bge          t0, ra, 376f
                  srai         s1, a3, 10
                  auipc        s3, 898805
                  blt          s3, a0, 377f
                  bltu         tp, s3, 379f
376:              or           a0, s8, s9
377:              lui          tp, 994413
378:              xor          t4, a5, s9
379:              sub          t1, s7, s0
380:              srai         s7, s10, 19
                  sll          s9, s9, t3
                  add          t5, t0, a3
                  srai         ra, zero, 21
                  xori         a0, sp, -2046
                  sltiu        a1, s10, 1269
                  srl          a5, t3, a5
                  srl          s1, s2, s10
                  nop
                  srli         gp, a3, 29
                  sll          tp, s1, a6
                  bge          gp, a4, 411f
                  sll          a4, a5, s10
                  sltu         s3, s0, s2
                  sra          t2, a4, ra
                  bge          s8, sp, 415f
                  xori         tp, t2, 732
                  srli         t6, a2, 4
                  sra          s6, s0, a3
                  and          ra, ra, s7
                  beq          t2, a2, 414f
                  srai         a7, a4, 18
                  sll          s8, a0, s0
                  slt          a1, s11, s8
                  srli         a1, a0, 26
                  slti         s10, a5, 755
                  add          s5, a6, a3
                  sra          s10, s3, s3
                  andi         zero, s7, 1938
                  sll          tp, t6, s4
                  xori         s8, a7, 208
411:              sltu         s10, t3, t5
                  and          t2, t4, a4
                  xori         a7, zero, -2020
414:              xor          s8, a1, a0
415:              blt          s6, t3, 421f
                  sub          a7, gp, s6
                  la           s10, region_1+1087 #start riscv_load_store_rand_instr_stream_0
                  sb           s7, 13(s10)
                  add          a6, s10, s1
                  lh           t1, 9(s10)
                  slt          s8, t2, t5
                  auipc        t4, 635989
                  lhu          a0, -1(s10)
                  slti         a1, s4, -1489
                  slli         s0, s3, 1
                  slli         s8, s7, 12
                  xori         a2, tp, -1832
                  lhu          s2, -9(s10)
                  lw           ra, 9(s10)
                  slti         s0, a0, -806
                  sb           a6, -1(s10)
                  sll          a5, sp, t3
                  sb           s1, 4(s10)
                  auipc        s7, 252680
                  lbu          a4, -8(s10)
                  sb           a6, 13(s10)
                  slti         a2, t2, -1843
                  srai         a0, t1, 27
                  andi         s11, s7, -1329
                  and          gp, t5, a3
                  andi         s5, t4, -477
                  lbu          tp, 12(s10)
                  slti         s11, a2, 1577
                  lb           s1, -8(s10)
                  lb           t1, -7(s10)
                  sb           s7, 4(s10)
                  or           a2, s3, s7
                  lui          t6, 517152
                  lbu          t5, -10(s10)
                  srli         a3, a7, 14
                  srai         s2, s2, 20
                  nop
                  slli         ra, s5, 21
                  lui          a2, 646927
                  lui          a2, 744062
                  ori          s8, s10, -1958
                  lbu          zero, 13(s10)
                  lb           t1, -4(s10)
                  lbu          s1, -15(s10) #end riscv_load_store_rand_instr_stream_0
                  slt          t5, s0, a0
                  sltu         a0, s2, ra
                  sltu         s11, a1, s4
                  srai         zero, s10, 21
421:              slt          a5, s6, s5
                  sra          s1, a6, s1
                  sll          s10, gp, tp
                  ori          a7, s11, -776
                  lw           sp, 4(t3)
                  slti         t1, t3, -837
                  add          s11, s11, t1
                  slti         a7, ra, 1758
                  andi         ra, s1, 1699
                  addi         t3, t3, 48
                  or           s2, a1, s10
844:              addi x23, x2, 1
844:              jalr x23, x23, 0
sub_1:            sltu         a1, sp, a3
                  bgeu         s8, s2, sub_1_stack_p
                  add          a3, s10, t3
sub_1_stack_p:    addi         t3, t3, -32
                  add          s8, s5, s6
                  sw           sp, 4(t3)
                  auipc        a5, 187415
                  sub          s11, s2, a7
                  nop
                  nop
                  lui          a6, 628831
                  andi         s9, gp, -1714
                  sltu         a3, t4, t5
                  srl          a3, s7, t6
                  bgeu         s1, s3, sub_1_j3 #branch to jump instr
                  sub          s6, s7, t6
                  sra          a3, s4, s9
                  ori          a0, a3, 1247
sub_1_j3:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  la           s11, region_1+258 #start load_store_instr_stream_2
                  la           a5, region_1+561 #start load_store_instr_stream_4
                  lbu          t5, -2(s11)
                  la           s8, region_1+486 #start load_store_instr_stream_0
                  lb           s5, 15(a5)
                  la           a6, region_1+996 #start load_store_instr_stream_1
                  la           s3, region_1+1656 #start load_store_instr_stream_3
                  sh           zero, 86(s3)
                  sb           s5, 4(s11)
                  lb           t6, -3(a5)
                  lb           s6, -1(s11)
                  sh           s10, -15(a5)
                  sb           a2, -353(s3)
                  lbu          s7, 30(s8)
                  sh           gp, -2(s11)
                  sb           a3, -805(s3)
                  lb           s5, -6(a6)
                  lh           t4, -696(s3)
                  lbu          t5, -6(a6)
                  lb           s6, 197(s3)
                  lbu          a2, -47(s8)
                  lhu          a4, 0(s11)
                  lb           a0, -294(s3)
                  lb           s6, 6(a5)
                  sh           tp, 16(a6)
                  lb           s0, -273(s3)
                  sh           a5, 12(a6)
                  lbu          a0, -15(s11)
                  lhu          tp, 46(s8)
                  sb           a7, 5(a5) #end load_store_instr_stream_4
                  sb           a1, 199(s3)
                  lhu          s2, 10(s11)
                  lhu          tp, 6(a6)
                  lb           gp, -628(s3) #end load_store_instr_stream_3
                  lb           s1, 0(s11) #end load_store_instr_stream_2
                  sw           a6, -12(a6) #end load_store_instr_stream_1
                  lb           s1, 58(s8)
                  lw           a2, -26(s8) #end load_store_instr_stream_0
                  la           a7, region_1+212 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s8, 11(a7)
                  lbu          a5, 11(a7)
                  lb           gp, 11(a7)
                  sb           t3, 11(a7)
                  sb           tp, 1(a7)
                  lb           s1, -15(a7)
                  sb           zero, -15(a7)
                  lb           s2, -15(a7)
                  sll          t5, s2, a6
                  lhu          a2, -16(a7)
                  lb           a4, -16(a7)
                  sw           t2, -16(a7)
                  sra          t2, a6, zero
                  lw           s8, -16(a7)
                  lh           a4, -16(a7)
                  lbu          s2, 2(a7)
                  sb           a1, 2(a7)
                  lhu          sp, 2(a7)
                  lbu          a4, 2(a7)
                  lbu          s10, 2(a7)
                  lb           a2, -4(a7)
                  lhu          a3, -4(a7) #end riscv_load_store_hazard_instr_stream_1
                  la           s0, region_0+286 #start load_store_instr_stream_2
                  la           a7, region_0+1525 #start load_store_instr_stream_1
                  la           t2, region_0+1704 #start load_store_instr_stream_0
                  lb           t1, 390(a7)
                  lh           s8, -28(s0)
                  lh           a4, 8(t2)
                  sh           t4, -1091(a7)
                  sb           t0, -351(a7)
                  sw           s10, 8(t2)
                  lbu          s8, -19(s0)
                  lbu          a1, -364(a7)
                  sh           t2, 33(a7)
                  sb           s4, -25(s0)
                  lb           s6, 2(s0)
                  sh           a5, -2(t2)
                  lbu          gp, -817(a7)
                  sb           zero, -822(a7) #end load_store_instr_stream_1
                  sb           s5, -46(s0)
                  sb           sp, -14(s0) #end load_store_instr_stream_2
                  lb           s7, 3(t2)
                  lb           t6, -4(t2) #end load_store_instr_stream_0
                  la           a6, region_0+866 #start riscv_load_store_hazard_instr_stream_0
                  lb           tp, -39(a6)
                  xori         s10, t4, -304
                  sb           a5, 46(a6)
                  lb           t6, 25(a6)
                  sb           s4, -42(a6)
                  sh           a6, -42(a6)
                  sw           s4, -42(a6)
                  lb           s0, -37(a6)
                  lh           s0, 48(a6)
                  lh           s10, -42(a6)
                  lh           a2, -2(a6)
                  sb           s11, 20(a6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+481 #start riscv_load_store_rand_instr_stream_1
                  ori          s2, zero, 709
                  xori         s10, s10, -981
                  andi         zero, s3, -23
                  sub          a3, a0, s11
                  xor          zero, s9, t0
                  lhu          s7, 199(sp)
                  lbu          a1, 242(sp)
                  lh           t6, -51(sp)
                  ori          a1, zero, 141
                  auipc        a1, 728352
                  auipc        s7, 474785
                  and          a6, a6, s8
                  sltiu        t6, a2, -1939
                  sll          t5, a3, a2
                  lbu          ra, 20(sp)
                  sb           gp, -120(sp)
                  lb           a2, -243(sp)
                  auipc        t5, 603137
                  and          a0, gp, s4
                  slti         s5, s11, 1939
                  auipc        s3, 82850
                  sb           t4, -250(sp)
                  sh           t0, -145(sp)
                  sll          t4, s10, s5
                  sb           s11, 70(sp)
                  sw           s7, 27(sp)
                  sltu         t6, a2, s10
                  sll          ra, s10, a7
                  sb           sp, -112(sp)
                  and          gp, s3, a0
                  slt          a5, s2, s10
                  sh           a1, 17(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+901 #start riscv_load_store_hazard_instr_stream_2
                  slt          a3, s6, s2
                  xori         gp, a2, -1085
                  add          zero, t3, s1
                  lb           s9, 50(a7)
                  lbu          s0, -98(a7)
                  srl          s1, s2, s9
                  lbu          s7, -216(a7)
                  sb           t5, -216(a7)
                  lbu          t4, -216(a7)
                  addi         a4, t4, -1624
                  sb           t0, 133(a7)
                  xori         s10, t4, 245
                  sh           s0, 133(a7)
                  lb           a1, 107(a7)
                  sb           s1, 107(a7)
                  lhu          s6, 79(a7) #end riscv_load_store_hazard_instr_stream_2
                  la           ra, region_0+44 #start riscv_load_store_rand_instr_stream_2
                  lb           s8, 111(ra)
                  nop
                  add          t4, s4, a6
                  nop
                  lb           t6, 153(ra)
                  xor          a2, t5, sp
                  sub          s11, a7, ra
                  srli         gp, s0, 3
                  sltu         t1, zero, t1
                  srai         a4, s3, 1
                  lui          t1, 101480
                  or           gp, s2, s5
                  addi         t4, s1, -1825
                  srl          s9, t2, s1
                  srai         t5, a6, 9
                  sra          t6, s4, tp
                  lbu          a7, 45(ra)
                  lb           a3, 63(ra)
                  andi         t5, a2, -1436
                  slt          s11, s6, t3
                  srl          s6, a2, s6
                  lbu          a7, 111(ra)
                  lhu          t4, 160(ra)
                  slti         s3, t3, -16
                  nop
                  andi         gp, a5, -1724
                  lb           t1, 35(ra)
                  sb           s8, -22(ra)
                  andi         t1, sp, -1814
                  sh           s2, -34(ra)
                  lb           a7, 241(ra) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1765 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 4(sp)
                  lui          s10, 184444
                  slli         s9, zero, 27
                  lbu          zero, -4(sp)
                  lui          s9, 473532
                  lb           a4, -7(sp)
                  sub          a4, a5, s11
                  sb           a6, -16(sp)
                  lh           a6, 5(sp)
                  lbu          t1, 6(sp)
                  sb           s0, 16(sp)
                  sh           t2, -11(sp)
                  sb           t4, 2(sp)
                  lb           t5, 0(sp)
                  lw           s3, -5(sp)
                  srli         s6, t2, 2
                  lbu          zero, -1(sp)
                  and          tp, sp, tp
                  lb           t4, 0(sp)
                  lbu          a0, 4(sp)
                  xori         s9, s4, 333
                  sb           sp, -14(sp)
                  sra          a2, s2, tp
                  sh           sp, 15(sp)
                  lbu          s7, -8(sp)
                  lbu          t1, -4(sp)
                  sb           a7, 8(sp)
                  lhu          t5, 5(sp)
                  srl          a4, s9, t2
                  sub          t2, s11, gp
                  lhu          a3, 3(sp)
                  sb           tp, -1(sp)
                  lbu          s5, 6(sp)
                  sltu         s1, t0, a0
                  sb           s10, -3(sp)
                  auipc        a0, 432561
                  lhu          s9, 3(sp)
                  lh           a6, 3(sp)
                  srl          t5, gp, s8
                  nop
                  or           ra, a3, t4
                  sltiu        t4, a7, 894
                  sltu         s10, gp, t2
                  sltiu        a6, sp, 1730
                  lb           s9, 1(sp)
                  sh           s0, -15(sp)
                  sb           s4, -1(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+830 #start load_store_instr_stream_0
                  lb           a0, 9(s8)
                  la           s2, region_0+317 #start load_store_instr_stream_1
                  sw           t1, -10(s8)
                  lh           gp, 29(s2)
                  lbu          t4, 53(s2)
                  lb           zero, -4(s8)
                  sb           a1, 12(s2)
                  lb           a0, 13(s8)
                  lh           s0, -49(s2)
                  lbu          s7, 35(s2)
                  lh           tp, 37(s2)
                  lbu          zero, -7(s8)
                  lbu          s5, 10(s8)
                  sb           s11, -22(s2)
                  sh           sp, 8(s8)
                  sb           zero, 13(s8)
                  sb           t5, -40(s2)
                  sb           a2, -29(s2) #end load_store_instr_stream_1
                  lhu          zero, 8(s8) #end load_store_instr_stream_0
                  ori          s2, t2, 219
                  blt          a3, t6, 3f
                  xor          a6, zero, ra
3:                bne          s2, t6, 21f
                  slt          t2, s8, s8
                  xori         t6, s0, -1229
                  sltiu        s9, a5, -395
                  andi         tp, a5, 58
                  xor          a5, t6, zero
                  add          t1, s6, s9
                  or           s6, sp, a0
                  and          s5, zero, s4
                  beq          a1, a7, 21f
                  xori         a5, s4, -846
                  add          s0, s10, zero
                  beq          s0, sp, 35f
                  lui          sp, 615619
                  sub          t4, s9, s6
                  and          s5, a7, t2
                  and          a7, s5, s6
                  blt          s3, a1, 23f
21:               ori          sp, ra, 848
                  slti         ra, t0, -34
23:               sltu         a4, a7, ra
                  auipc        gp, 608120
                  sltiu        s3, sp, 1723
                  add          t6, t6, t5
                  xor          s5, s10, s3
                  addi         a5, a4, 1184
                  andi         a6, ra, 756
                  addi         t2, zero, 499
                  or           s5, zero, s8
                  slt          s6, t5, tp
                  bltu         a0, a7, 47f
                  xor          s6, s7, s2
35:               sltiu        a2, ra, -995
                  or           t6, a2, a6
                  bge          t6, s1, 47f
                  xor          a5, gp, s6
                  srai         s7, ra, 15
                  blt          s0, t3, 49f
                  sltiu        a5, a0, -2015
                  auipc        s8, 655261
                  sra          s5, s7, s3
                  addi         s9, t0, 379
                  srai         a4, a6, 31
                  sub          a1, s2, a3
47:               sltu         a6, s1, s6
                  srai         a2, ra, 13
49:               slti         t5, t2, -1391
                  add          t2, ra, zero
                  sll          sp, t6, t6
                  sra          t1, ra, a4
                  or           s0, s7, a5
                  xor          s2, s11, s4
                  slli         s1, t2, 8
                  ori          s7, s3, 1003
                  addi         s7, a1, 424
                  xor          s10, zero, zero
                  bne          gp, s2, 60f
60:               bltu         t0, t3, 72f
                  srai         s1, s3, 28
                  andi         a1, a4, -408
                  xori         s2, s1, -1825
                  slt          a4, zero, s3
                  andi         a1, a0, -796
                  sra          zero, s4, t0
                  srai         zero, a6, 13
                  slti         s6, s1, -1384
                  slt          s0, t5, gp
                  nop
                  srl          s7, a6, s11
72:               srai         a6, t5, 1
                  lui          t4, 774986
                  or           s10, a3, a6
                  sra          sp, s8, a7
                  bne          a7, ra, 80f
                  slt          a6, sp, t4
                  srai         a6, a6, 5
                  bne          a5, s10, 84f
80:               and          s6, sp, t2
                  bgeu         t2, t1, 97f
                  sltu         gp, a7, ra
                  nop
84:               sll          a0, s11, t6
                  sra          s10, t3, s4
                  auipc        t6, 400411
                  sll          zero, a0, a1
                  ori          sp, t4, -1951
                  xori         t4, s1, -548
                  blt          s6, t1, 106f
                  slli         zero, s6, 29
                  bne          s7, s8, 111f
                  bgeu         s5, a0, 105f
                  nop
                  srl          zero, s9, gp
                  slt          s10, t3, t0
97:               or           s2, s3, s9
                  srai         t4, a2, 21
                  sltu         s5, ra, zero
                  blt          s7, zero, 105f
                  addi         s3, tp, -972
                  bne          s1, a1, 120f
                  xor          s5, t4, gp
                  ori          s8, s7, -811
105:              srai         t6, t4, 23
106:              auipc        a6, 113178
                  addi         zero, s2, 268
                  sub          s2, a5, s9
                  sub          s0, s5, sp
                  slt          t6, a7, t3
111:              sll          a7, s8, zero
                  bltu         sp, t1, 127f
                  sra          gp, t2, s9
                  slt          sp, s9, s8
                  slti         t5, s0, -808
                  lui          s5, 395603
                  bgeu         a5, t1, 129f
                  srl          a4, t4, s2
                  andi         zero, t5, 1931
120:              slti         t4, t6, -485
                  bgeu         tp, s3, 123f
                  sll          t1, s11, s4
123:              sub          sp, t3, s11
                  and          s3, tp, t2
                  bltu         s8, s4, 131f
                  sltu         s5, t4, a5
127:              xor          ra, t2, s7
                  srai         s7, a4, 11
129:              sltu         t6, t1, a3
                  sub          sp, a4, a3
131:              nop
                  slt          s0, tp, zero
                  slli         gp, zero, 24
                  slli         t5, t0, 12
                  blt          t4, a4, 149f
                  bne          s0, a2, 144f
                  add          s2, tp, a5
                  and          zero, s11, t3
                  add          t2, s10, t1
                  beq          s1, a1, 152f
                  slt          a0, s7, a4
                  xor          a2, s1, a5
                  sll          sp, s4, sp
144:              beq          t2, s5, 160f
                  slli         s7, a1, 3
                  srli         s11, s6, 10
                  blt          t3, t1, 163f
                  add          a3, tp, ra
149:              ori          s10, t1, 219
                  bne          a5, t6, 168f
                  slt          sp, a1, s2
152:              slt          s0, s8, t6
                  auipc        zero, 222520
                  nop
                  bge          t6, a2, 156f
156:              ori          zero, zero, -2013
                  bne          s11, a7, 161f
                  nop
                  srl          s10, a7, s10
160:              add          a5, zero, tp
161:              srl          ra, s9, s9
                  xor          s10, t6, a4
163:              bgeu         a0, t1, 181f
                  xori         a5, t5, 1908
                  beq          gp, gp, 173f
                  bgeu         a5, t6, 182f
                  srai         a0, gp, 17
168:              bne          t6, t2, 178f
                  srai         s7, s9, 3
                  blt          a7, s2, 189f
                  add          s0, s5, ra
                  bne          s2, t1, 178f
173:              and          a4, s1, s2
                  and          s9, s4, t2
                  sltu         s8, a1, s10
                  or           t2, s1, s8
                  bltu         sp, s9, 192f
178:              and          s0, a6, s6
                  auipc        s9, 380437
                  addi         s2, a3, -56
181:              addi         s0, s7, 1243
182:              ori          t6, tp, 736
                  xor          s6, a1, a1
                  bltu         gp, t5, 185f
185:              slt          s2, a7, t2
                  bge          tp, a3, 200f
                  lui          s10, 57525
                  auipc        s1, 451211
                  auipc        a4, 141781
                  sll          s0, sp, s11
                  andi         t1, a7, -744
                  addi         a6, a0, 1898
                  addi         s10, s0, 1058
                  srai         a6, t1, 14
                  beq          t5, a1, sub_1_j2 #branch to jump instr
                  srli         a7, s7, 30
sub_1_j2:         jal          sp, sub_2 #jump sub_1 -> sub_2
189:              bgeu         s9, t1, 205f
                  slti         gp, t3, 559
                  sltu         t2, s4, s4
192:              or           a2, s2, t6
                  srl          gp, sp, s9
                  srai         s3, t5, 20
                  xori         a4, s1, 664
                  beq          a0, s5, 198f
                  sub          tp, a4, ra
198:              ori          a5, a2, 172
                  blt          tp, t3, 213f
200:              sub          s8, t5, tp
                  auipc        gp, 992252
                  sltiu        a4, s5, 1086
                  slti         tp, s5, 1578
                  ori          a6, tp, -1080
205:              slt          s5, t3, a7
                  addi         t2, ra, 727
                  xor          a1, s10, a7
                  srai         a5, s0, 4
                  slti         a7, s6, -1335
                  sub          ra, a3, s10
                  blt          s0, s6, 216f
                  bltu         sp, a5, 213f
213:              slt          s10, a1, t3
                  sra          s6, a7, a1
                  ori          s2, a1, 1236
216:              and          s3, t5, s0
                  add          tp, s6, s2
                  slli         a0, t1, 2
                  srai         a1, s10, 30
                  blt          sp, s1, 223f
                  sra          a4, t1, s7
                  xori         a5, a0, -610
223:              or           a3, sp, a6
                  ori          a0, a7, 267
                  bne          s2, a6, 230f
                  srli         gp, s2, 11
                  bne          s10, s1, 243f
                  bgeu         s3, s10, 240f
                  ori          s8, t6, -713
230:              slt          a3, s5, t1
                  bltu         a5, s0, 235f
                  blt          t4, s7, 244f
                  bge          zero, a0, 249f
                  slli         sp, t4, 3
235:              sltiu        a0, s11, -378
                  nop
                  bne          sp, a3, 249f
                  add          a3, a7, a7
                  lui          gp, 481260
240:              bgeu         s5, t0, 258f
                  add          sp, ra, t3
                  or           a7, a3, gp
243:              sltu         a2, a5, a4
244:              srli         t1, s0, 15
                  beq          s5, s9, 265f
                  xori         s3, s8, 699
                  slli         zero, s10, 23
                  sra          s0, s10, s3
249:              and          s2, zero, a3
                  sll          ra, a6, s9
                  sltiu        sp, a5, -1014
                  sltiu        a3, s7, 595
                  bltu         t4, t5, 271f
                  sub          s10, a1, s0
                  bgeu         t3, s2, 257f
                  beq          a2, s3, 268f
257:              beq          t0, s11, 266f
258:              blt          s4, s11, 267f
                  slli         tp, a1, 7
                  addi         sp, a3, 1178
                  lui          t2, 919504
                  ori          s2, t2, -1904
                  slt          a0, a4, a7
                  lui          t2, 60289
265:              add          s8, t5, a4
266:              lui          t6, 618710
267:              add          s10, a3, a3
268:              bge          s1, gp, 272f
                  bge          a1, s8, 275f
                  srl          s11, s6, a2
271:              nop
272:              andi         sp, s0, 142
                  beq          t2, a1, 277f
                  beq          s10, t2, 294f
275:              bne          s3, s3, 289f
                  xor          a1, sp, tp
277:              add          s8, s9, s6
                  beq          a1, t4, 288f
                  sra          a1, a0, a4
                  lui          gp, 498628
                  auipc        sp, 621970
                  srai         s5, s5, 0
                  bne          s1, t5, 285f
                  srai         s1, s11, 0
285:              ori          a2, gp, -1118
                  bne          s3, s9, 298f
                  bltu         s2, s10, 296f
288:              xori         t2, s1, 1763
289:              srl          a7, a3, t5
                  beq          s11, s8, 302f
                  bgeu         gp, s4, 307f
                  srli         a7, s6, 18
                  lui          zero, 214776
294:              auipc        a6, 843824
                  sltu         s0, s1, tp
296:              bgeu         a6, t5, 311f
                  srai         gp, t6, 20
298:              blt          s3, a5, 299f
299:              sll          t5, s3, a2
                  bge          a0, sp, 303f
                  sra          ra, s7, s3
302:              sltiu        s11, s6, -1357
303:              sra          t1, a3, a5
                  andi         a6, zero, 1139
                  bltu         s4, a0, 319f
                  nop
307:              slt          a7, tp, a3
                  beq          s2, s2, 326f
                  xori         t4, s4, -198
                  add          gp, s8, t3
311:              bne          s9, a6, 330f
                  srai         zero, gp, 29
                  slli         s3, t0, 7
                  sll          ra, s11, s3
                  blt          a5, s0, 320f
                  auipc        t5, 535792
                  andi         s0, s6, -89
                  ori          s1, s3, 896
319:              xori         s11, s1, 1686
320:              xori         t2, s4, -413
                  bltu         s5, gp, 325f
                  bgeu         a6, s6, 331f
                  and          t4, a6, s11
                  bne          tp, s3, 326f
325:              sltu         a4, t5, a4
326:              addi         a2, t0, 353
                  or           a6, s8, s3
                  or           a2, t0, s11
                  bltu         s0, s9, 345f
330:              bne          s10, t0, 348f
331:              sltu         s6, s11, gp
                  sltu         zero, s6, s2
                  xor          gp, a7, gp
                  slti         a7, a0, 1465
                  add          t6, t3, a5
                  blt          t3, ra, 337f
337:              srai         s3, a0, 28
                  srli         s2, s4, 1
                  bne          s7, t5, 347f
                  slt          a1, a1, t1
                  blt          s4, a7, 353f
                  slli         a6, a1, 24
                  xor          a0, t5, a1
                  xori         sp, t3, -1880
345:              slt          tp, s11, t3
                  slli         s9, s10, 16
347:              add          tp, zero, sp
348:              sra          a1, t2, a4
                  slli         s11, t6, 1
                  and          a4, a7, a6
                  beq          a2, ra, 367f
                  srl          gp, a6, a5
353:              nop
                  add          s5, t5, a3
                  sltiu        s1, zero, -1364
                  add          sp, ra, t4
                  srli         t4, s9, 21
                  auipc        s2, 269012
                  sra          a6, t5, s8
                  srl          t1, zero, s8
                  bgeu         a0, a5, 369f
                  add          a0, a3, zero
                  slli         s7, a6, 25
                  srai         a2, s5, 7
                  sltiu        a7, a5, 71
                  bltu         t0, s4, 369f
367:              slli         t6, a2, 9
                  sll          a3, s1, a3
369:              lui          s9, 320491
                  and          a3, s5, a6
                  lw           sp, 4(t3)
                  andi         s1, t6, -434
                  addi         a3, t5, -1624
                  addi         t3, t3, 32
                  add          t4, t6, s6
                  add          s5, s9, t1
650:              addi x19, x2, 0
650:              jalr x19, x19, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x5, x28, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x6, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x6, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x6, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x6, x21, ecall_handler
                  li x21, 0x1
                  beq x6, x21, instr_fault_handler
                  li x21, 0x5
                  beq x6, x21, load_fault_handler
                  li x21, 0x7
                  beq x6, x21, store_fault_handler
                  li x21, 0xc
                  beq x6, x21, pt_fault_handler
                  li x21, 0xd
                  beq x6, x21, pt_fault_handler
                  li x21, 0xf
                  beq x6, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

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
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x28, x5, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
