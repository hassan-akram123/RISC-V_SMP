.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
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
                  li x0, 0x0
                  li x1, 0xf16dfed5
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xa74b7bc5
                  li x5, 0xf45c0a33
                  li x6, 0x0
                  li x7, 0x38046904
                  li x8, 0x0
                  li x9, 0xfeee2e1b
                  li x10, 0xf06e16b6
                  li x11, 0x6bb47f35
                  li x13, 0x976a0cb9
                  li x14, 0xf28f3aa6
                  li x15, 0x0
                  li x17, 0x438b05a6
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xfdfa7465
                  li x21, 0x80000000
                  li x22, 0xf4f2dea4
                  li x23, 0x80000000
                  li x24, 0xfa643f07
                  li x25, 0x0
                  li x26, 0xffe84a09
                  li x27, 0x5
                  li x28, 0x3
                  li x29, 0xf59b282c
                  li x30, 0x30cf3934
                  li x31, 0xf2842281
                  la x12, user_stack_end
main:             and          s8, t5, sp
                  la           t4, sub_2
                  srli         tp, a5, 21
                  addi         t4, t4, 709
                  nop
                  srai         s6, t5, 0
                  beq          s10, s1, main_j2 #branch to jump instr
                  xori         a0, t5, 1876
                  nop
main_j2:          jalr         ra, t4, -708 #jump main -> sub_2
                  la           sp, region_0+1027 #start riscv_load_store_hazard_instr_stream_1
                  sub          a7, s5, t6
                  lb           s3, 54(sp)
                  sb           t3, 104(sp)
                  sb           a1, 104(sp)
                  sll          a7, t0, a7
                  lbu          a0, 104(sp)
                  lb           a3, -128(sp)
                  lb           t2, 154(sp)
                  sb           a1, -55(sp)
                  slli         a7, s5, 1
                  andi         s3, s3, -1117
                  sw           s0, 253(sp)
                  lbu          s5, -168(sp)
                  xor          a1, t1, t1
                  nop
                  lb           s3, -114(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+272 #start load_store_instr_stream_3
                  la           a0, region_0+1605 #start load_store_instr_stream_0
                  la           ra, region_0+605 #start load_store_instr_stream_2
                  sb           t1, -28(a0)
                  lb           s0, -15(ra)
                  lb           t6, 16(tp)
                  lbu          s5, 0(tp)
                  lb           t5, 13(ra)
                  sb           sp, 150(a0)
                  lbu          zero, -8(ra)
                  la           s3, region_0+811 #start load_store_instr_stream_1
                  lb           t1, 12(s3)
                  lbu          s8, 197(a0)
                  lhu          s9, 13(s3)
                  sh           a4, 6(tp)
                  lb           s5, -2(ra)
                  lbu          t2, 5(ra)
                  sb           t1, -7(s3)
                  sb           t0, 14(tp)
                  lhu          a1, 23(a0)
                  sb           s7, -1(ra) #end load_store_instr_stream_2
                  sb           s11, 6(tp)
                  sb           t2, 7(s3)
                  sh           s11, 9(s3)
                  lb           s5, -7(tp)
                  sb           s5, 242(a0)
                  lbu          zero, -2(tp)
                  lb           t6, 6(s3)
                  lb           t2, 11(tp)
                  lbu          a1, 10(s3) #end load_store_instr_stream_1
                  lbu          s10, 222(a0)
                  lh           a4, -6(tp)
                  sb           a7, -106(a0)
                  lb           gp, -25(a0)
                  lbu          s5, -3(tp) #end load_store_instr_stream_3
                  lbu          t0, 133(a0)
                  lh           t4, -165(a0) #end load_store_instr_stream_0
                  la           s6, region_0+257 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, 13(s6)
                  lhu          sp, 37(s6)
                  lb           s2, -50(s6)
                  lbu          ra, -36(s6)
                  sb           s10, 58(s6)
                  sb           s7, 48(s6)
                  lb           a0, -46(s6)
                  sw           ra, -17(s6)
                  sw           s7, -17(s6)
                  and          sp, a2, a4
                  sb           a0, 26(s6)
                  sb           t4, 26(s6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+469 #start riscv_load_store_rand_instr_stream_0
                  or           zero, t2, zero
                  srli         zero, s3, 21
                  or           s1, a5, s7
                  lhu          s10, -13(sp)
                  sb           s10, 13(sp)
                  srli         s1, t0, 7
                  sra          a7, t4, s5
                  sltiu        a0, s9, -481
                  lw           a0, -9(sp)
                  slti         s5, zero, -607
                  add          s3, s1, s1
                  sb           s6, 1(sp)
                  lb           t6, -3(sp)
                  lb           t2, -12(sp)
                  lbu          t4, 8(sp)
                  sb           a6, 10(sp)
                  sb           a4, -5(sp)
                  sh           t6, 15(sp)
                  auipc        s7, 824822
                  slt          zero, a7, a3
                  sh           a6, -15(sp)
                  lbu          a3, 12(sp)
                  srl          s6, s2, s9
                  lbu          s2, 3(sp)
                  lui          s3, 719632
                  sll          t3, s4, t6
                  lbu          a4, 3(sp)
                  sub          t2, a2, a3
                  or           t4, s3, gp
                  lui          t3, 750022
                  xor          s5, a5, t0
                  lh           a1, -11(sp)
                  lbu          t2, -6(sp)
                  srli         s8, tp, 16
                  or           s8, s3, s10
                  sb           s0, -16(sp)
                  lb           a7, 0(sp)
                  and          t3, a4, s0
                  sb           t4, -3(sp)
                  lbu          t4, 5(sp)
                  lhu          tp, -7(sp)
                  lbu          ra, 4(sp)
                  and          t0, t3, t5
                  sb           gp, 8(sp)
                  sra          t0, t1, s5
                  lb           a1, -12(sp)
                  lhu          gp, 9(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+1342 #start load_store_instr_stream_3
                  sh           tp, 224(a7)
                  la           s8, region_1+1971 #start load_store_instr_stream_2
                  lbu          a3, -1216(s8)
                  lbu          t1, -704(s8)
                  la           t5, region_1+956 #start load_store_instr_stream_1
                  sb           t5, -1042(s8)
                  lh           t1, 178(t5)
                  sb           s1, -129(a7)
                  lb           a5, 110(a7)
                  la           t4, region_1+976 #start load_store_instr_stream_0
                  lhu          s0, -30(t4)
                  sw           a6, -472(t5)
                  lb           t6, 144(a7)
                  sw           t1, -252(t5)
                  lb           a0, 7(t4)
                  lb           s6, -1132(s8)
                  lb           s10, -99(a7)
                  lb           t6, 125(a7)
                  lb           t2, -754(s8)
                  sb           sp, -27(t4)
                  lb           a3, 127(a7)
                  sw           s8, -28(t5)
                  lbu          s10, -1808(s8)
                  lbu          s10, -815(t5)
                  lhu          s10, 806(t5)
                  lbu          s9, -121(a7)
                  sh           a4, 188(a7)
                  sb           t6, 158(a7) #end load_store_instr_stream_3
                  lb           s10, 51(t4)
                  sb           s4, -1474(s8)
                  lbu          a3, -249(t5)
                  lbu          t2, -20(t4)
                  lbu          s5, -1970(s8) #end load_store_instr_stream_2
                  lh           s10, -200(t5) #end load_store_instr_stream_1
                  sb           s0, -50(t4) #end load_store_instr_stream_0
                  bge          a6, t0, 13f
                  slt          s7, s8, a7
                  bge          t4, t3, 17f
                  xor          t1, a5, tp
                  sub          s3, s10, s9
                  addi         a5, s9, -963
                  slt          a5, s9, s9
                  srai         t1, s1, 4
                  bgeu         s10, s9, 20f
                  andi         s10, a1, 430
                  sll          s2, t6, s1
                  bgeu         s6, s5, 28f
                  sltu         t4, s6, s7
13:               auipc        s5, 382032
                  andi         gp, a0, 892
                  slli         s3, a1, 22
                  addi         gp, ra, 304
17:               lui          tp, 753122
                  sra          s6, a4, s6
                  andi         t4, sp, -1084
20:               addi         a1, t0, -2048
                  add          s2, a1, t3
                  beq          s7, s11, 38f
                  bne          s8, s1, 41f
                  sll          a5, gp, a5
                  andi         t6, s9, 1239
                  bge          ra, a5, 45f
                  srai         gp, a3, 30
28:               bge          sp, t0, 46f
                  sltiu        s0, a2, -1257
                  addi         s5, t1, -1680
                  xori         a3, s5, -686
                  slli         a1, t0, 24
                  xor          a1, a2, s11
                  blt          s4, s11, 40f
                  bne          tp, a1, 40f
                  nop
                  addi         t3, s8, 524
38:               sub          t1, s9, t2
                  blt          s1, s10, 42f
40:               slli         gp, a1, 18
41:               sub          s4, t1, sp
42:               sll          gp, s1, a7
                  srai         t2, sp, 30
                  sltu         s5, s11, s7
45:               ori          a0, s3, -1041
46:               srli         s2, t4, 11
                  sltiu        s2, a1, 1364
                  auipc        t2, 479122
                  srl          sp, t1, ra
                  slt          zero, a5, s8
                  sra          a0, s5, t3
                  nop
                  beq          gp, t3, 65f
                  addi         a1, t4, -116
                  nop
                  auipc        a3, 348423
                  slt          s8, a7, s0
                  andi         a4, a0, 4
                  add          t3, tp, a6
                  srai         a4, s3, 0
                  bltu         s0, ra, 64f
                  srai         s2, t1, 31
                  auipc        t1, 861038
64:               xori         s1, t6, 297
65:               bge          s7, ra, 82f
                  sltiu        a0, a4, 868
                  auipc        s0, 756389
                  slt          gp, a5, s10
                  auipc        s5, 160039
                  sub          a3, s6, t5
                  xor          s10, s5, s3
                  and          t1, s2, a4
                  ori          tp, a3, -1465
                  srl          s9, zero, s3
                  slt          a1, s5, s8
                  ori          sp, a4, 1709
                  add          s10, t4, t0
                  bne          t3, s0, 79f
79:               auipc        s7, 445239
                  bgeu         s8, s3, 100f
                  add          s10, s8, t4
82:               blt          s1, s9, 89f
                  sltu         s6, t2, s6
                  xor          s10, s3, ra
                  slli         s9, a7, 3
                  sltiu        a7, s9, -1410
                  auipc        sp, 280657
                  slti         a5, gp, -754
89:               and          t6, s3, a3
                  bge          t6, s8, 103f
                  bgeu         s4, a5, 107f
                  slli         t6, t5, 24
                  bgeu         t1, s2, 111f
                  bgeu         tp, a3, 102f
                  xori         s1, t0, -316
                  sra          s8, a7, t5
                  bne          a3, s8, 110f
                  bltu         tp, s10, 117f
                  sra          s1, s5, ra
100:              addi         s2, a1, -1484
                  sltu         t4, s6, s5
102:              nop
103:              slli         a3, a3, 0
                  slli         s3, a4, 14
                  auipc        a7, 723026
                  la           s4, sub_1
                  addi         s4, s4, 853
                  andi         t6, tp, 675
                  add          s7, t6, t2
                  addi         s7, a7, -1667
main_j1:          jalr         ra, s4, -853 #jump main -> sub_1
                  add          gp, t5, a5
                  sub          a5, s5, a2
                  addi         zero, ra, -1820
107:              bge          s4, t1, 116f
                  srl          t6, t6, s4
                  xori         zero, a1, -1327
110:              blt          a2, s8, 112f
111:              slt          t2, a6, s4
112:              lui          s5, 986312
                  ori          a0, t5, 970
                  and          t1, s7, a2
                  bne          a3, s8, 124f
116:              bge          t0, s2, 135f
117:              sltiu        s7, gp, 716
                  addi         s9, ra, 379
                  sll          s3, sp, t3
                  srl          s10, s8, s11
                  addi         a4, a2, -1071
                  or           ra, ra, sp
                  la           sp, region_1+1611 #start riscv_load_store_rand_instr_stream_1
                  xor          t5, s8, s9
                  nop
                  sh           s11, -309(sp)
                  lbu          s8, -152(sp)
                  and          s0, s7, t0
                  lbu          s4, 97(sp)
                  lh           s10, -497(sp)
                  lbu          s4, -1140(sp)
                  lh           t2, -557(sp)
                  add          s8, s2, a0
                  sb           a2, -31(sp)
                  sll          t1, ra, tp
                  lh           s2, -1305(sp)
                  add          a0, t0, sp
                  or           s5, s5, sp
                  lbu          tp, 286(sp)
                  sb           sp, 47(sp)
                  lh           t0, -1599(sp)
                  sb           t6, -1596(sp)
                  slti         s7, a6, -641
                  sltiu        a0, s2, -1625
                  lbu          tp, -524(sp)
                  sb           s2, -252(sp)
                  lbu          gp, -670(sp)
                  lbu          gp, -186(sp)
                  add          a5, t6, a0
                  sltu         a0, s8, s11
                  sltu         s10, s8, s8
                  sh           tp, -389(sp)
                  add          s8, s0, t4
                  sb           tp, -883(sp)
                  sub          tp, s9, a4
                  srli         gp, t6, 14
                  srli         gp, a2, 12
                  lbu          a1, -237(sp)
                  sb           s4, -235(sp)
                  sra          s0, s8, s1
                  lh           s1, -857(sp)
                  sb           a6, -122(sp)
                  lbu          t6, -796(sp)
                  slli         s4, a1, 2
                  sll          s10, zero, sp
                  ori          a0, s4, 563
                  srl          gp, a2, t6
                  lh           ra, 211(sp)
                  sltu         s8, gp, s5
                  srl          a1, a7, a2
                  lui          tp, 303679
                  lw           t6, -887(sp)
                  sh           s1, 343(sp) #end riscv_load_store_rand_instr_stream_1
                  nop
124:              xor          ra, s1, t1
                  srai         a3, a3, 8
                  sltiu        gp, s8, 690
                  blt          s7, s4, 138f
                  and          t4, tp, ra
                  sra          zero, s5, s6
                  slli         t2, t3, 20
                  nop
                  srl          sp, t1, tp
                  blt          t5, s5, 150f
                  sltiu        t1, s8, 155
135:              bne          t6, t0, 143f
                  srl          s8, s8, gp
                  lui          s5, 607882
138:              andi         tp, a6, -1226
                  beq          tp, a6, 140f
140:              ori          ra, a2, 1588
                  xori         sp, s1, 313
                  or           ra, s2, s5
143:              sll          tp, s11, t0
                  bgeu         tp, t5, 157f
                  sltu         a3, a0, s9
                  srl          t2, gp, a0
                  srai         a1, s11, 4
                  sltiu        s10, s2, -1195
                  and          t4, s1, s3
150:              slt          a3, a0, t5
                  slli         a7, s5, 29
                  bgeu         s1, t3, 158f
                  xori         s1, s8, 1100
                  bgeu         sp, t3, 170f
                  slt          t5, s1, s11
                  and          a0, a1, tp
157:              sltu         a3, a1, t3
158:              bgeu         s6, a5, 177f
                  sltiu        s3, a6, 229
                  xori         zero, tp, 1296
                  srli         a4, t3, 21
                  blt          t2, a2, 177f
                  bltu         s8, t4, 172f
                  srl          s4, t1, t6
                  bltu         t2, a1, 183f
                  nop
                  slli         s7, t0, 29
                  or           a7, t1, a5
                  beq          a0, a5, 171f
170:              auipc        s9, 86547
171:              auipc        s1, 648928
172:              srai         s2, zero, 2
                  sra          t3, a2, a5
                  auipc        t3, 802632
                  addi         a1, t3, 1083
                  bge          t0, tp, 184f
177:              slt          s2, s8, a4
                  bge          t5, a7, 196f
                  and          s9, tp, t0
                  slt          s4, a6, s2
                  sra          a5, sp, gp
                  slt          s3, s3, t1
183:              bltu         s0, a3, 199f
184:              add          t2, tp, a6
                  lui          s4, 540103
                  slt          a0, sp, s8
                  xori         t2, s9, 127
                  nop
                  sub          sp, s10, s2
                  srl          ra, a3, a3
                  srai         a0, t6, 29
                  sra          s1, tp, s10
                  sra          s5, s2, a6
                  bge          tp, s10, 202f
                  bne          s3, a6, 207f
196:              srli         t6, a0, 22
                  sll          s2, a5, s11
                  xori         s9, s5, 945
199:              sltiu        a7, a5, 1329
                  or           zero, s11, t5
                  slti         s0, ra, -1601
202:              auipc        s5, 906729
                  ori          zero, t5, -509
                  lui          t0, 427055
                  srli         t3, a7, 18
                  srl          zero, a6, s11
207:              lui          a0, 321064
                  sltu         t2, s7, gp
                  ori          t6, sp, -1035
                  bltu         s6, a5, 222f
                  and          a5, t3, zero
                  sll          t4, a7, t0
                  xori         a1, a0, -1957
                  addi         s3, t5, -1892
                  andi         t3, s3, -739
                  ori          ra, s10, 846
                  sub          t4, t6, s5
                  bgeu         s9, s0, 221f
                  slli         a3, s7, 15
                  srai         a4, s10, 8
221:              sub          s1, a3, s9
222:              bne          zero, a0, 227f
                  and          t4, a5, s9
                  sltu         zero, s5, s8
                  and          a7, t4, gp
                  bge          a7, s8, 245f
227:              sltiu        s6, s1, 1599
                  auipc        t2, 831561
                  lui          zero, 106228
                  nop
                  beq          a0, s3, 250f
                  add          a0, ra, s5
                  sll          t6, a0, a5
                  xor          tp, s5, s10
                  slli         t0, zero, 12
                  xori         s4, t6, 546
                  and          s4, a1, t1
                  srli         t5, a3, 22
                  and          t5, a3, a4
                  addi         t0, s0, -1988
                  bgeu         zero, t4, 254f
                  and          s9, s10, ra
                  andi         s7, s10, -577
                  xori         gp, a4, 776
245:              or           s2, a4, s2
                  sll          s3, gp, s0
                  andi         t0, s0, 123
                  xori         s7, a1, -1030
                  bne          a3, t3, 255f
250:              slti         s7, a0, -1319
                  add          t3, t0, s0
                  srli         s8, t3, 4
                  srli         t3, a7, 8
254:              slli         t5, sp, 12
255:              sltu         a0, s5, a2
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         t5, t3, 587
                  sltu         a0, t1, t1
                  slli         s0, s11, 24
                  nop
                  srai         t2, gp, 9
                  sltiu        s8, s9, -1134
                  addi         a2, a2, -16
                  sltu         sp, s6, t1
                  sw           ra, 4(a2)
                  add          s3, t1, s5
                  la           tp, region_0+164 #start load_store_instr_stream_0
                  lw           t4, -8(tp)
                  lbu          sp, 44(tp)
                  la           s0, region_0+717 #start load_store_instr_stream_1
                  sb           s1, -16(tp)
                  sb           sp, -30(s0)
                  lw           t5, 179(s0)
                  sh           a7, 14(tp)
                  lbu          a7, -105(s0)
                  lbu          t3, 56(tp)
                  lb           t4, -6(s0)
                  sh           tp, -24(tp)
                  sw           a1, 107(s0)
                  lbu          s4, -37(tp)
                  sb           zero, 16(tp)
                  lb           t0, 35(tp)
                  sh           ra, 103(s0) #end load_store_instr_stream_1
                  sb           t1, 57(tp) #end load_store_instr_stream_0
                  la           s9, region_1+186 #start riscv_load_store_hazard_instr_stream_3
                  lh           s5, 28(s9)
                  lb           s10, 28(s9)
                  xor          gp, s0, t1
                  lbu          s2, 28(s9)
                  sb           t4, 28(s9)
                  lb           a7, 28(s9)
                  lbu          t6, 28(s9)
                  sb           t0, 28(s9)
                  lh           a1, 28(s9)
                  sll          a4, t3, a4
                  srai         s2, a0, 20
                  sb           zero, -39(s9)
                  lbu          t0, -39(s9)
                  sb           s9, -39(s9)
                  sb           s0, -39(s9)
                  slli         t4, s3, 4
                  srai         t5, a5, 30
                  lbu          t2, -39(s9)
                  add          tp, ra, s6
                  sb           s6, -39(s9) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1503 #start riscv_load_store_hazard_instr_stream_0
                  srl          gp, s0, a4
                  lbu          t6, -416(sp)
                  lb           a1, -416(sp)
                  lb           t0, -416(sp)
                  slli         s10, a5, 3
                  sb           s6, -416(sp)
                  sltiu        zero, a0, -436
                  lbu          ra, -416(sp)
                  sll          a7, a1, ra
                  lbu          s10, -600(sp)
                  sb           gp, -600(sp)
                  lbu          ra, -600(sp)
                  lb           a1, -600(sp)
                  lbu          s9, -469(sp)
                  lh           s9, -469(sp)
                  sh           t3, -469(sp)
                  lbu          s8, -469(sp)
                  lh           gp, -469(sp)
                  lb           t3, -469(sp)
                  lb           t6, -469(sp)
                  sub          s3, t6, s7
                  lh           tp, -469(sp)
                  auipc        s10, 725735
                  lh           s4, -1089(sp)
                  lh           t5, -1089(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_1+1137 #start riscv_load_store_rand_instr_stream_1
                  ori          a3, a3, -1599
                  nop
                  slt          s0, t2, t2
                  lb           a1, 7(s5)
                  sw           a3, 7(s5)
                  lb           t5, 13(s5)
                  lhu          a0, 3(s5)
                  lbu          s3, 12(s5)
                  srai         gp, t1, 30
                  nop
                  sltu         t5, t4, t1
                  sub          s3, t1, a6
                  lbu          s3, -10(s5)
                  sw           a1, 11(s5)
                  sh           t0, -5(s5)
                  addi         s7, a6, -1562
                  sll          t6, t1, s2
                  xor          t0, t6, s4
                  lhu          a3, -5(s5)
                  lb           ra, -4(s5)
                  sll          a1, a3, t2
                  sb           s0, 1(s5)
                  lhu          ra, -13(s5)
                  sub          s6, ra, s1
                  lh           s4, -7(s5)
                  srai         a1, sp, 12
                  lbu          tp, -3(s5)
                  sb           t5, 1(s5)
                  sb           s7, -11(s5)
                  lbu          a7, -7(s5)
                  slt          s6, a6, s2
                  ori          s7, a4, -1497
                  sb           gp, 12(s5)
                  lbu          t4, 6(s5)
                  lbu          a0, 6(s5)
                  andi         s0, s3, 1222
                  lbu          s9, -6(s5)
                  slt          s9, s9, a5
                  sh           t2, -7(s5)
                  sb           tp, -2(s5)
                  lui          s6, 273221
                  lbu          s1, -1(s5)
                  sw           s7, -9(s5)
                  lh           s8, 5(s5)
                  slt          tp, t4, t0
                  sb           a4, 2(s5)
                  lbu          s0, -12(s5)
                  lb           s1, 14(s5) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+859 #start load_store_instr_stream_3
                  la           gp, region_1+1385 #start load_store_instr_stream_1
                  la           t5, region_1+271 #start load_store_instr_stream_2
                  lbu          s1, 14(s5)
                  lb           s2, -436(gp)
                  sb           gp, 102(t5)
                  lb           t2, 11(s5)
                  lbu          s7, -408(gp)
                  la           a7, region_1+952 #start load_store_instr_stream_0
                  sb           ra, -1124(gp)
                  lbu          t6, -3(s5)
                  lhu          s10, 9(t5)
                  lb           t2, -103(t5)
                  lh           s0, 53(t5)
                  lb           a1, -519(a7)
                  sb           s2, -1323(gp)
                  sb           sp, -64(t5)
                  lhu          t3, 13(s5)
                  lh           t0, 193(t5)
                  sb           zero, -524(a7)
                  lh           s10, -161(gp)
                  lb           a5, -1298(gp)
                  sb           s7, -42(t5)
                  lbu          a1, 683(a7)
                  lb           a0, 468(gp) #end load_store_instr_stream_1
                  sh           t5, 41(t5)
                  lh           sp, 444(a7)
                  lb           s0, 2(s5) #end load_store_instr_stream_3
                  lbu          s8, -166(t5) #end load_store_instr_stream_2
                  lb           t2, 985(a7) #end load_store_instr_stream_0
                  la           sp, region_1+1291 #start riscv_load_store_hazard_instr_stream_1
                  lh           t5, 7(sp)
                  sb           a2, 7(sp)
                  sh           tp, 7(sp)
                  add          t5, t4, s7
                  addi         a0, a5, -307
                  sb           s2, -16(sp)
                  xor          a5, s11, a1
                  lbu          gp, -16(sp)
                  sb           a7, -16(sp)
                  lb           tp, -16(sp)
                  lb           a1, 9(sp)
                  lbu          s3, 9(sp)
                  lbu          s5, 9(sp)
                  lb           s1, 9(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a1, region_1+910 #start load_store_instr_stream_4
                  la           a7, region_1+351 #start load_store_instr_stream_1
                  la           s2, region_1+424 #start load_store_instr_stream_3
                  sb           t0, -16(a7)
                  lh           t5, -198(s2)
                  lb           s4, 28(a7)
                  la           t1, region_1+1282 #start load_store_instr_stream_2
                  lhu          s6, 18(s2)
                  la           t3, region_1+408 #start load_store_instr_stream_0
                  lbu          s5, 20(a1)
                  sb           s2, 237(s2)
                  lb           zero, 5(a7)
                  lbu          s6, 370(t3)
                  lb           s1, 203(t1)
                  lb           tp, -60(a7)
                  sb           a3, -45(s2)
                  lh           s0, 62(t1)
                  lb           s1, -133(s2)
                  lb           t4, -150(t1)
                  lh           a0, 10(a1)
                  lbu          t2, 1040(t3)
                  lb           s10, 585(t3)
                  lb           t6, 0(a7)
                  sw           s3, 20(s2)
                  lbu          gp, -25(a1)
                  sb           t5, -36(a1)
                  lh           t5, 106(t1)
                  sb           tp, 64(t3)
                  sw           s5, -174(t1) #end load_store_instr_stream_2
                  sb           a7, -89(s2)
                  sb           s9, -62(a1)
                  lhu          a5, -142(s2)
                  lb           s8, 58(a7) #end load_store_instr_stream_1
                  lb           a3, -13(s2) #end load_store_instr_stream_3
                  sw           s6, 14(a1) #end load_store_instr_stream_4
                  lh           a0, 310(t3)
                  sb           a2, -313(t3) #end load_store_instr_stream_0
                  la           sp, region_0+1146 #start load_store_instr_stream_1
                  la           s7, region_0+1429 #start load_store_instr_stream_0
                  sh           a4, -56(sp)
                  lbu          t5, 34(s7)
                  lb           s8, 13(sp)
                  lw           t1, -1269(s7)
                  lh           t3, -36(sp)
                  lb           gp, 51(sp)
                  sb           a2, 310(s7)
                  lhu          zero, -42(sp)
                  lhu          a4, -1267(s7)
                  lb           a3, 50(sp)
                  lb           zero, 258(s7)
                  lbu          s0, 17(sp) #end load_store_instr_stream_1
                  lb           t1, 130(s7) #end load_store_instr_stream_0
                  la           sp, region_0+1579 #start riscv_load_store_rand_instr_stream_2
                  srai         zero, tp, 4
                  lb           s0, -108(sp)
                  lb           a3, -188(sp)
                  lbu          s7, -54(sp)
                  lb           ra, -214(sp)
                  sltiu        s7, sp, -843
                  lb           s7, -155(sp)
                  sra          s4, a0, ra
                  lbu          tp, 110(sp)
                  sltiu        a3, a4, 1742
                  sb           s0, -1(sp)
                  srai         s5, s7, 25
                  lh           a4, -117(sp)
                  lbu          s5, -112(sp)
                  lb           a1, 243(sp)
                  lb           s1, -213(sp)
                  auipc        s10, 749832
                  lb           s4, 166(sp)
                  sra          ra, a3, a3
                  sb           tp, 209(sp)
                  lbu          s8, 210(sp)
                  lbu          a7, 134(sp)
                  auipc        t0, 753435
                  sh           s10, 149(sp)
                  slt          s4, s11, s1
                  sb           s1, -251(sp)
                  lbu          s6, 215(sp)
                  sb           a2, -5(sp)
                  sh           zero, 35(sp)
                  lbu          t1, -24(sp)
                  and          s1, t3, s4
                  sltiu        s4, tp, -1528
                  sltiu        a4, sp, 649
                  lbu          ra, -223(sp)
                  lui          a5, 918994
                  sb           gp, -146(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1246 #start riscv_load_store_rand_instr_stream_3
                  srl          s2, s3, a6
                  sb           a0, -146(sp)
                  slti         t3, a5, -793
                  sh           s4, -34(sp)
                  lb           s9, 39(sp)
                  sb           t6, -159(sp)
                  slli         a3, s1, 1
                  sb           sp, 124(sp)
                  add          a3, zero, ra
                  and          t4, a1, t4
                  sb           s1, -18(sp)
                  sh           t4, -12(sp)
                  lbu          s5, 205(sp)
                  srai         s7, a6, 25
                  add          t4, sp, s4
                  add          ra, s8, t2
                  sltu         s5, zero, s0
                  ori          ra, tp, 1876
                  lbu          s3, 221(sp)
                  slti         t3, s8, 1412
                  slli         a4, t6, 8
                  sb           s6, 51(sp)
                  srai         t5, t4, 15
                  lb           t5, 77(sp)
                  sh           s7, 212(sp)
                  sltu         s7, gp, s6
                  srli         a1, s6, 18
                  lbu          a4, 3(sp)
                  sb           s2, 109(sp)
                  sb           s11, -170(sp)
                  lb           s9, 50(sp)
                  or           a5, a2, a1
                  lb           s2, 148(sp)
                  sltiu        t3, s8, 19
                  sh           a0, 82(sp)
                  sb           a6, 18(sp)
                  lh           s2, 240(sp)
                  lb           t5, 59(sp)
                  lhu          a0, -152(sp)
                  sh           a0, 138(sp)
                  lbu          s0, 215(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_1+303 #start riscv_load_store_rand_instr_stream_0
                  sb           ra, -212(s1)
                  lbu          s4, -208(s1)
                  lb           s2, 178(s1)
                  sh           s2, 255(s1)
                  lbu          s2, -229(s1)
                  sb           s11, 141(s1)
                  and          gp, t6, a5
                  sltu         t4, ra, zero
                  sb           t0, 164(s1)
                  srai         gp, a0, 14
                  lbu          a4, 199(s1)
                  xor          a3, a0, s0
                  lb           a1, -198(s1)
                  sb           a3, 220(s1)
                  lhu          gp, -197(s1)
                  or           s5, s10, s4
                  nop
                  sra          t4, gp, s0
                  andi         t4, t4, -13
                  lui          tp, 885003
                  srli         s9, t1, 18
                  sb           a2, -82(s1)
                  lb           t1, -222(s1)
                  sra          a1, ra, a3
                  lb           a1, -160(s1) #end riscv_load_store_rand_instr_stream_0
                  lui          a3, 500730
                  bltu         s9, a2, 8f
                  sltu         t6, a6, s1
                  xori         a4, gp, 1494
                  or           gp, ra, a0
                  bne          s2, s8, 8f
                  srl          s2, t5, s10
                  add          t6, a0, a1
8:                andi         s5, t2, -524
                  lui          s7, 493639
                  bgeu         s11, gp, 11f
11:               srai         t4, a7, 21
                  auipc        t1, 295570
                  auipc        a4, 784694
                  srli         s4, t1, 16
                  and          t2, s3, zero
                  andi         s1, s5, 850
                  sltu         t2, t4, a4
                  srli         s6, s11, 0
                  sra          s7, s10, s7
                  slti         a0, s5, -1184
                  slti         s5, t1, -1229
                  nop
                  lui          ra, 1026926
                  srli         a5, s10, 0
                  slt          s7, t0, s8
                  srl          s3, ra, a0
                  xor          sp, tp, a5
                  srli         s10, t4, 5
                  xori         s9, a0, -1051
                  srl          s5, a6, s0
                  srli         sp, s11, 22
                  lui          a3, 869525
                  addi         ra, a4, -351
                  sltiu        s3, s8, 1654
                  auipc        s5, 907484
                  bgeu         s11, t5, 40f
                  sltu         s6, tp, s3
                  lui          sp, 174687
                  andi         s4, zero, 1625
40:               bltu         s5, a4, 49f
                  xori         t4, a4, -1984
                  add          t4, a2, a6
                  ori          tp, s5, -528
                  add          s1, t3, a5
                  nop
                  bltu         t0, s2, 65f
                  slti         s4, s9, 976
                  xor          s10, s7, a1
49:               bne          t4, t1, 56f
                  or           s2, gp, s3
                  blt          zero, s1, 71f
                  andi         t6, s1, 1352
                  and          t4, a3, s4
                  bge          s10, t0, 68f
                  auipc        a1, 955383
56:               or           s7, t5, t6
                  xori         s3, t6, 18
                  nop
                  srl          t4, s7, s0
                  andi         t5, s7, 1830
                  sra          s10, s3, a7
                  srai         s1, s4, 22
                  andi         t5, t2, -1156
                  blt          s11, a1, 76f
65:               slli         t0, a0, 7
                  bltu         t0, t5, 68f
                  add          s10, ra, s9
68:               srai         s0, s5, 22
                  bge          s8, a2, 77f
                  nop
71:               srl          s10, s6, s10
                  sltu         s5, t6, t1
                  slti         s5, t0, 656
                  bne          s8, s4, 89f
                  andi         s1, s6, -275
76:               sll          s0, s4, t4
77:               andi         t5, a7, -110
                  srl          s10, s3, a4
                  bgeu         ra, gp, 82f
                  bge          t3, a2, 83f
                  xori         gp, a5, 1045
82:               sra          s6, ra, sp
83:               ori          s6, s10, 2014
                  beq          a0, zero, 86f
                  blt          sp, a6, 94f
86:               nop
                  bge          a1, a4, 103f
                  sub          s2, a4, a1
89:               srai         s3, sp, 28
                  blt          s9, s1, 95f
                  sra          s10, sp, s10
                  lui          a0, 182163
                  beq          s9, ra, 103f
94:               slti         a7, t2, -516
95:               blt          t2, t5, 104f
                  sub          s4, s0, s0
                  sra          a5, s11, sp
                  sub          t1, s10, t0
                  slli         a3, s4, 22
                  slli         t6, a2, 24
                  sltu         a7, s11, a2
                  or           s2, t4, s6
103:              add          s8, ra, s11
104:              xori         s1, a0, 941
                  slti         a4, s4, -138
                  xor          t3, a5, t1
                  sltu         t6, s4, s8
                  bltu         t1, s0, 123f
                  xor          ra, a6, ra
                  lui          t5, 973653
                  sra          s3, s7, t3
                  or           a7, s7, a4
                  sra          s7, s10, a6
                  lui          t5, 1045127
                  sra          t3, a5, s2
                  or           a7, a4, a1
                  slt          a3, t2, s5
                  bne          t2, s5, 127f
                  sltiu        a5, s11, 1794
                  sra          a4, s4, sp
                  and          t4, tp, tp
                  sra          a5, s6, s4
123:              auipc        a3, 299786
                  ori          tp, s7, -1265
                  or           s5, t3, s0
                  bgeu         zero, t6, 132f
127:              sub          a4, tp, s3
                  nop
                  ori          a0, s6, -304
                  lui          s10, 322529
                  sub          s7, tp, t3
132:              addi         s4, s7, 1137
                  bltu         a0, t5, 152f
                  sltu         s10, a0, a5
                  srl          t4, s0, ra
                  bge          a1, a3, 155f
                  sltu         t1, t0, s3
                  srl          s1, s10, gp
                  xori         s2, s0, -547
                  nop
                  sra          t2, a5, t3
                  srai         s1, gp, 9
                  sll          t1, t1, zero
                  slt          zero, ra, t3
                  blt          a2, t4, 146f
146:              slli         a7, s7, 9
                  slt          s8, s0, a1
                  srai         t2, s11, 1
                  slli         s3, s2, 12
                  xori         s1, a5, 93
                  slti         s2, s2, 828
152:              beq          ra, s6, 159f
                  sub          s6, s1, a2
                  andi         a5, s6, 302
155:              nop
                  sltu         t6, t2, s11
                  lui          gp, 889594
                  srl          s1, t6, s1
159:              addi         t6, s7, 1195
                  blt          ra, t5, 163f
                  blt          s3, a6, 169f
                  or           t6, s8, a5
163:              bltu         s11, s2, 172f
                  bltu         s5, a6, 176f
                  bge          a6, s6, 185f
                  or           a4, gp, a0
                  srli         s0, a0, 17
                  slli         a3, s2, 23
169:              andi         t6, t2, 1345
                  addi         t3, s7, 1794
                  bltu         a0, t6, 176f
172:              sll          s9, a1, a5
                  srl          s8, s4, s1
                  srai         s9, s4, 1
                  sltu         t2, ra, s5
176:              bge          t6, s7, 186f
                  srl          s3, s8, t1
                  or           s3, gp, a1
                  or           s5, t4, a2
                  add          t6, t6, s4
                  srl          s7, gp, s4
                  sra          s9, s9, t4
                  sra          t4, t3, t1
                  slli         s4, zero, 28
185:              and          a3, s5, s10
186:              xor          ra, s3, a4
                  addi         s9, t5, -93
                  bltu         a2, t6, 197f
                  and          t5, t3, s10
                  srli         a7, s8, 20
                  slti         s10, s2, 44
                  xor          a3, s10, a0
                  sra          gp, s7, s7
                  bltu         s3, s6, 202f
                  sll          s3, s11, a1
                  and          t0, a3, t6
197:              sll          a7, zero, s8
                  bne          a7, a3, 207f
                  sll          ra, s0, s8
                  slli         t2, a5, 9
                  sub          s10, s5, a6
202:              addi         s6, s7, -467
                  blt          gp, a7, 218f
                  slli         t0, s11, 30
                  bne          t0, s8, 211f
                  sll          s9, a0, s6
207:              or           s7, s8, s11
                  blt          a4, s2, 211f
                  auipc        t5, 649845
                  bgeu         s10, t1, 217f
211:              bge          t3, t0, 215f
                  and          t6, s7, s0
                  andi         tp, t2, 829
                  nop
215:              bgeu         s2, s11, 234f
                  xor          tp, s11, t1
217:              nop
218:              blt          s1, tp, 233f
                  bne          gp, t4, 238f
                  xori         t3, s1, 24
                  bge          sp, s6, 230f
                  bge          s11, s9, 225f
                  blt          s7, s10, 224f
224:              slli         a4, a0, 31
225:              slli         s0, s5, 25
                  sra          s4, s11, t5
                  slti         t2, s11, 242
                  slti         s6, zero, 1539
                  nop
230:              auipc        s5, 406895
                  slli         s10, a4, 11
                  ori          a7, a0, 1434
233:              or           gp, t2, s2
234:              andi         s2, t6, 692
                  slt          t3, a7, a4
                  ori          t0, sp, -997
                  slti         ra, s9, -595
238:              addi         t1, t2, -293
                  srai         gp, s2, 25
                  slt          s10, a4, t0
                  sltu         gp, t5, gp
                  sra          t5, s9, a6
                  srl          t4, s7, s3
                  sll          a1, t6, s1
                  and          s3, a4, a1
                  xor          s9, s9, s11
                  sra          s0, a3, t2
                  lui          s0, 690926
                  bne          t3, s1, 252f
                  bge          s5, s7, 252f
                  bgeu         a2, t1, 265f
252:              bne          t5, s2, 259f
                  blt          a3, gp, 254f
254:              srli         a1, t2, 17
                  bltu         a1, t3, 262f
                  srli         tp, t4, 16
                  lui          s8, 125543
                  nop
259:              ori          s7, sp, 1283
                  sll          zero, t6, s3
                  sll          a0, gp, tp
262:              srli         a7, t6, 9
                  addi         s3, gp, -1664
                  slt          ra, s1, tp
265:              or           t0, s4, a2
                  slt          s1, s4, s9
                  nop
                  lui          s0, 789696
                  xori         t2, t3, -1504
                  slt          t1, t2, a1
                  beq          s1, a1, 287f
                  srai         a5, t6, 30
                  bge          ra, a6, 276f
                  ori          zero, s4, -1432
                  slt          s0, t2, a0
276:              sra          s4, t2, ra
                  sub          gp, s9, sp
                  slti         s8, s5, 776
                  sll          a7, s5, a5
                  bge          a4, a2, 299f
                  xor          t5, s7, s4
                  sltiu        s2, s3, -597
                  sltu         s10, t6, a1
                  bne          t2, t5, 286f
                  bgeu         zero, a0, 293f
286:              xor          t2, ra, a6
287:              srl          ra, t4, s8
                  sub          t1, a2, s4
                  add          a0, t2, s2
                  slti         s5, s10, 1348
                  beq          s2, s7, 293f
                  srli         a4, ra, 18
293:              bne          s5, a3, 296f
                  slti         a3, s6, -1462
                  blt          sp, s11, 298f
296:              bne          s0, s11, 304f
                  srl          s7, s6, a3
298:              sltu         s0, t6, tp
299:              slti         a4, s5, 1192
                  auipc        sp, 110968
                  nop
                  beq          t2, a1, 314f
                  srai         s10, a4, 12
304:              auipc        t5, 554400
                  bne          tp, t6, 324f
                  slti         sp, t3, -1316
                  sll          t2, a7, t4
                  bge          s7, tp, 323f
                  xor          t5, zero, s1
                  or           s5, s6, s2
                  auipc        t5, 280510
                  auipc        t0, 185714
                  bne          t2, a7, 322f
314:              sra          s5, s1, t3
                  srai         gp, t5, 30
                  xor          a3, t3, s7
                  srl          s6, s8, a5
                  ori          t1, sp, -1854
                  slti         a1, t3, 480
                  srli         t6, t3, 0
                  srl          sp, tp, a6
322:              slli         s8, t3, 28
323:              beq          t5, zero, 332f
324:              bgeu         s1, ra, 343f
                  ori          sp, t2, -1508
                  beq          s7, s2, 327f
327:              slli         s7, a5, 29
                  srai         s2, s4, 2
                  or           s5, s7, t2
                  auipc        t1, 952903
                  lui          t0, 302998
332:              srl          a1, a4, t0
                  bgeu         a5, s11, 349f
                  xor          s3, s2, s4
                  and          s10, t1, zero
                  blt          a0, gp, 351f
                  sltiu        sp, a5, -252
                  srai         s8, t6, 15
                  bltu         a4, t0, 358f
                  slti         t1, t3, -610
                  andi         t1, a6, 1359
                  slti         s7, s10, 765
343:              auipc        s4, 993770
                  bgeu         t0, s0, 351f
                  bltu         t5, s11, 351f
                  lui          s0, 1030306
                  bge          a5, a0, 357f
                  bge          s11, s6, 350f
349:              and          s9, a0, s8
350:              slt          a3, t5, ra
351:              sltiu        s0, s8, -1016
                  add          s10, t5, zero
                  bgeu         gp, s5, 354f
354:              slt          t4, s4, s4
                  sra          t3, s2, s9
                  bge          a3, s7, 365f
357:              nop
358:              srl          s4, s6, t6
                  sltu         s6, s6, s10
                  sll          t0, t3, a4
                  slti         a5, s9, -818
                  srli         a3, t5, 5
                  srl          a4, t1, t3
                  sltiu        s7, t0, 8
365:              slli         s4, s4, 13
                  srli         s7, s9, 16
                  slt          a7, s10, s2
                  sltu         tp, sp, a6
                  blt          t4, sp, 389f
                  bltu         gp, t3, 377f
                  add          s8, a3, a5
                  or           s2, s2, t3
                  andi         s0, a7, -938
                  blt          s3, gp, 378f
                  andi         gp, s10, 1839
                  srai         s10, s8, 31
377:              sltu         t6, s2, t4
378:              and          s10, s6, t3
                  ori          a7, a3, 1656
                  sll          a4, t6, s6
                  bge          s2, a6, 386f
                  slti         a5, s4, 1984
                  xori         a1, t3, -360
                  bltu         t5, s6, 392f
                  ori          a5, a0, 511
386:              lui          ra, 1016500
                  sltu         t4, s5, a2
                  sra          t6, ra, tp
389:              srl          a4, t3, a1
                  xor          gp, t2, s7
                  ori          a0, t6, 130
392:              slti         t2, t4, -1213
                  srai         s2, a4, 9
                  andi         s2, t2, -1460
                  srai         s3, sp, 19
                  srli         t6, a0, 27
                  srl          t4, a7, a6
                  slli         sp, t5, 14
                  addi         a7, sp, -1972
                  sltu         s0, s9, s5
                  bltu         t2, s0, 408f
                  sub          s6, s7, sp
                  sub          t4, a7, t4
                  auipc        sp, 938801
                  auipc        s1, 945034
                  add          s4, sp, t1
                  srl          s7, zero, zero
408:              ori          s5, s2, -115
                  addi         s1, zero, -480
                  sll          ra, s3, sp
                  bgeu         s5, s1, 420f
                  beq          s1, s6, 415f
                  sra          s0, s3, s0
                  nop
415:              xor          t3, t3, s10
                  sltu         s3, t1, a5
                  sll          t0, t4, t1
                  srli         s0, s0, 25
                  srli         s4, a5, 16
420:              xor          s1, tp, s10
                  srli         s7, gp, 2
                  xori         s0, s1, -574
                  sltiu        t1, sp, 1882
                  bgeu         a0, a7, 438f
                  sra          s2, s11, ra
                  xori         gp, s1, 1659
                  xor          s10, s2, a6
                  or           t6, t6, t4
                  sub          t1, t1, t6
                  bltu         s11, t1, 433f
                  bltu         sp, gp, 435f
                  bgeu         t0, s8, 435f
433:              sra          a5, s1, t2
                  bgeu         t4, s3, 446f
435:              slt          t3, t4, s6
                  xor          s7, s10, a0
                  xor          s9, a3, s3
438:              andi         t4, a0, 938
                  srli         s8, s9, 9
                  auipc        s3, 255999
                  la           sp, region_0+226 #start riscv_load_store_hazard_instr_stream_2
                  lb           t5, 33(sp)
                  lb           t4, 33(sp)
                  lhu          t3, -36(sp)
                  lb           s7, -36(sp)
                  lbu          t0, -36(sp)
                  lbu          s3, 35(sp)
                  lb           t3, 35(sp)
                  lb           s10, 59(sp)
                  lbu          s2, 48(sp)
                  lbu          t3, 48(sp)
                  sb           s2, 48(sp)
                  lb           s6, -32(sp)
                  lbu          t0, -32(sp)
                  sb           zero, -32(sp)
                  lh           t3, -32(sp)
                  addi         s9, a6, -1773
                  sh           s2, -32(sp)
                  lhu          t6, -32(sp) #end riscv_load_store_hazard_instr_stream_2
                  add          a7, t0, s9
                  sltiu        tp, t3, 953
                  addi         t3, s2, -1797
                  bne          s11, s4, 446f
                  ori          s8, tp, -837
446:              ori          s10, t0, 749
                  lw           ra, 4(a2)
                  addi         a2, a2, 16
                  sltu         t1, s4, t4
                  slt          s3, s10, a0
                  nop
                  sll          s8, gp, t6
                  addi         sp, t4, 644
                  slti         t6, t6, 1774
                  sra          s7, s7, s9
                  auipc        t3, 1047869
                  auipc        t4, 607743
803:              addi x4, x1, 1
803:              jalr x4, x4, 0
sub_1:            bltu         zero, a0, sub_1_stack_p
                  slli         t0, t6, 17
sub_1_stack_p:    addi         a2, a2, -12
                  srl          a5, a7, s11
                  sw           ra, 4(a2)
                  and          t0, t3, t2
                  la           sp, region_1+35 #start riscv_load_store_rand_instr_stream_0
                  ori          t0, s7, 1360
                  lh           t6, 43(sp)
                  lbu          a7, 1176(sp)
                  sltiu        s4, s1, -320
                  sra          s3, t4, gp
                  sb           a3, 651(sp)
                  sub          s3, s11, sp
                  sb           s8, 860(sp)
                  slti         zero, sp, -210
                  or           t0, s3, zero
                  sh           s10, 1907(sp)
                  sb           a6, 599(sp)
                  lb           zero, 236(sp)
                  lbu          zero, 490(sp)
                  lb           a7, 642(sp)
                  add          a7, s7, t0
                  lbu          t4, 1470(sp)
                  slli         s7, s9, 9
                  lbu          a7, 174(sp)
                  sb           t6, 864(sp)
                  slt          a5, a1, tp
                  xori         tp, s5, -1490
                  lb           gp, 1133(sp)
                  and          ra, s9, t6
                  lbu          a1, 663(sp)
                  sll          s1, t3, ra
                  auipc        t2, 387937
                  slti         s5, a0, 1888
                  lbu          a5, 16(sp)
                  sra          s2, a0, t4
                  lhu          a4, 841(sp)
                  sub          a3, t4, s11
                  sra          a7, zero, a1
                  nop
                  lb           a3, 166(sp)
                  sll          t4, t6, s4
                  sh           tp, 965(sp)
                  lbu          s1, 151(sp)
                  sb           t5, 160(sp)
                  or           t0, a5, t5
                  sub          a7, t4, zero
                  lbu          zero, 1048(sp)
                  srli         ra, t6, 15
                  sh           zero, 1751(sp)
                  addi         s5, t5, 976
                  addi         t0, t4, 820
                  srl          a0, ra, a5
                  sw           t5, 645(sp)
                  lw           t0, 1925(sp)
                  lw           a4, 589(sp)
                  and          gp, s8, s7
                  lb           s1, 1546(sp)
                  srli         a1, s8, 23
                  sb           tp, 1050(sp)
                  lhu          a0, 303(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+1716 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s5, -16(t5)
                  andi         s10, t4, -1412
                  sb           ra, -15(t5)
                  lbu          a5, -15(t5)
                  sb           t2, 3(t5)
                  lb           a3, 3(t5)
                  xori         t4, a5, -1718
                  lbu          a5, 3(t5)
                  slti         s10, a6, -1615
                  xori         a0, s10, 1513
                  lw           s1, -12(t5)
                  ori          s5, ra, -1575
                  sb           s2, -7(t5)
                  srl          a0, s1, sp
                  sb           a5, -7(t5)
                  lhu          s3, -16(t5)
                  ori          t2, t1, -703
                  lbu          s10, 16(t5) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+269 #start riscv_load_store_hazard_instr_stream_0
                  sll          s9, s11, s2
                  lhu          s10, 13(tp)
                  lh           s4, 13(tp)
                  sb           s6, 13(tp)
                  lb           s5, 13(tp)
                  xori         a0, tp, -58
                  xor          a4, s9, s0
                  lhu          a0, 13(tp)
                  lb           t2, 13(tp)
                  lb           s1, 13(tp)
                  srli         s2, s6, 12
                  lb           t5, 13(tp)
                  lb           t4, 5(tp)
                  lh           a0, 5(tp)
                  sra          s3, a4, a4
                  lui          s8, 1035434
                  sh           s5, 5(tp)
                  lh           t3, 5(tp)
                  sub          s1, s9, a2
                  lbu          t0, -1(tp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_0+1574 #start riscv_load_store_rand_instr_stream_1
                  lbu          s1, -27(s3)
                  srli         t5, s6, 20
                  lbu          t3, -40(s3)
                  and          s0, s10, s2
                  lhu          s6, -20(s3)
                  lhu          zero, 20(s3)
                  add          a4, s0, t3
                  sb           s9, -14(s3)
                  nop
                  lh           a0, 14(s3)
                  sb           s0, -61(s3)
                  or           s10, a4, s9
                  sb           tp, -33(s3)
                  ori          t2, s5, -1371
                  lbu          a0, 11(s3)
                  lbu          s5, 56(s3)
                  sll          a7, sp, a3
                  sra          s5, gp, a1
                  sra          a1, s7, s7
                  sb           s2, 59(s3)
                  addi         a5, s1, 765
                  lh           t5, 26(s3)
                  slti         s4, a4, -971
                  sb           t0, -15(s3)
                  sltiu        ra, t1, 1522
                  lhu          s8, 44(s3)
                  sb           s11, 45(s3)
                  lhu          s6, 42(s3)
                  sb           s3, -47(s3)
                  addi         t6, s7, -1443
                  andi         a7, t4, -120
                  sltiu        s8, ra, 1889
                  lbu          t4, -31(s3)
                  lw           zero, -38(s3)
                  sw           sp, 2(s3)
                  sltiu        a7, s0, -952
                  lbu          t4, 31(s3)
                  xori         a1, s0, 1508
                  slti         t0, ra, 257
                  sb           a0, -30(s3)
                  addi         s6, a4, 874
                  lbu          t3, 40(s3)
                  sra          a3, tp, a6
                  sltu         a1, a1, a0
                  lb           s2, -3(s3) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_0+1614 #start load_store_instr_stream_2
                  la           gp, region_0+1348 #start load_store_instr_stream_4
                  sb           s0, 11(s9)
                  la           a4, region_0+921 #start load_store_instr_stream_1
                  lb           t2, -217(a4)
                  sb           t2, 15(gp)
                  la           s5, region_0+1181 #start load_store_instr_stream_0
                  lbu          t1, 9(s9)
                  lbu          sp, -959(s5)
                  sb           a7, 235(s5)
                  sw           sp, 6(s9)
                  sb           s11, 4(s9)
                  lbu          s8, 238(a4)
                  lbu          t1, 17(gp)
                  lh           s10, -81(a4)
                  lbu          zero, -49(a4)
                  sb           sp, 64(s9)
                  la           tp, region_0+69 #start load_store_instr_stream_3
                  sb           s2, -864(s5)
                  lbu          zero, 196(a4)
                  lbu          s8, -48(tp)
                  lh           t3, -22(gp)
                  lhu          a1, 58(gp)
                  lh           t1, -1(tp)
                  lh           t3, -55(tp)
                  sh           s7, 36(gp)
                  lbu          s1, -19(gp)
                  lbu          a3, 29(s9)
                  lb           ra, 35(s9)
                  lb           s0, -31(gp)
                  lb           a7, -30(gp)
                  lb           s0, 58(a4)
                  lbu          t4, -29(a4)
                  lbu          t0, 26(tp)
                  sb           s5, 29(s9)
                  lb           t2, 34(tp)
                  sw           a5, 55(tp) #end load_store_instr_stream_3
                  lbu          t5, -17(gp)
                  lbu          s1, -608(s5)
                  lbu          s2, -1067(s5)
                  lb           ra, -98(a4)
                  sb           t0, 53(s9)
                  sw           s2, -65(a4)
                  lb           s3, -46(gp) #end load_store_instr_stream_4
                  lb           s6, -230(a4) #end load_store_instr_stream_1
                  sb           tp, -61(s9) #end load_store_instr_stream_2
                  lbu          t3, 5(s5)
                  sh           a3, 155(s5) #end load_store_instr_stream_0
                  blt          ra, t5, 13f
                  sub          t2, t5, a5
                  addi         ra, a5, -1228
                  andi         s4, t6, -1850
                  xori         a1, a4, 254
                  andi         a5, t4, 371
                  or           t0, t6, a2
                  auipc        gp, 400475
                  nop
                  slti         s3, sp, -1179
                  auipc        a0, 760593
                  blt          a0, s7, 14f
                  nop
13:               slti         a4, ra, 1597
14:               xor          a7, a0, s1
                  auipc        a1, 760786
                  xori         s10, s3, 973
                  andi         t3, s2, -1247
                  addi         ra, t3, -1919
                  la           t2, region_1+867 #start load_store_instr_stream_0
                  la           s9, region_1+125 #start load_store_instr_stream_1
                  lb           s4, -675(t2)
                  lb           a5, 367(t2)
                  lbu          zero, 63(s9)
                  lbu          t4, -809(t2)
                  sw           s0, -799(t2)
                  lbu          t3, 164(t2)
                  sb           a6, 4(s9)
                  lb           a4, 1119(t2)
                  sb           s11, 60(s9)
                  lbu          s2, 360(t2)
                  sb           s9, 48(s9)
                  lw           ra, -731(t2)
                  lb           s1, -31(s9) #end load_store_instr_stream_1
                  lh           zero, 447(t2) #end load_store_instr_stream_0
                  nop
                  sra          s8, s0, t1
                  xori         s4, a3, -1560
                  or           gp, s1, ra
                  srl          s2, s3, a7
                  addi         s7, t2, 759
                  lui          s5, 277028
                  andi         s10, t2, 1577
                  auipc        t5, 613924
                  xori         s4, sp, -1273
                  andi         s5, s9, -1765
                  add          zero, t3, zero
                  beq          t2, t5, 34f
                  auipc        t1, 714992
                  slli         zero, a7, 10
34:               slli         s1, s0, 13
                  or           a1, t3, s9
                  slli         t4, tp, 6
                  sltiu        s4, t4, -1681
                  srl          s10, s10, t6
                  xori         s10, t1, -1371
                  bgeu         s6, a0, 55f
                  slti         s4, t1, 1386
                  srl          a0, s4, a1
                  sltu         a1, a4, t3
                  ori          a0, a7, -1907
                  add          t4, a7, a4
                  srl          s7, t5, s11
                  bgeu         t1, s1, 54f
                  srai         s5, a2, 4
                  bne          s0, a6, 56f
                  slli         t1, a5, 26
                  srl          s9, s3, gp
                  slli         a7, t3, 25
                  sll          a1, s9, t0
54:               bne          s11, a0, 71f
55:               slti         tp, sp, 1749
56:               addi         t2, t5, -366
                  srli         s7, a5, 18
                  slt          a4, s9, s10
                  ori          ra, s8, 623
                  slt          a4, t6, t6
                  andi         s8, a4, 583
                  srai         t1, s5, 28
                  bne          a6, t5, 75f
                  bltu         a7, tp, 74f
                  sltiu        gp, s7, 783
                  slli         a4, gp, 24
                  bge          t4, s11, 85f
                  ori          t4, t6, 112
                  slti         t1, a7, -1156
                  sub          s4, s0, a6
71:               blt          t3, t5, 89f
                  lui          s3, 524572
                  slti         s0, s3, -1244
74:               slli         s1, s3, 11
75:               and          t5, s0, s4
                  sltu         s8, s8, a0
                  xori         s8, a0, 1474
                  xori         a1, t3, -517
                  sltu         a3, s3, t2
                  slt          s9, s3, s9
                  add          s7, t2, s10
                  add          t6, t0, t1
                  sltu         sp, s10, s7
                  srl          t6, s2, t0
85:               bltu         a3, a5, 98f
                  srl          s3, s0, gp
                  srai         t4, a4, 26
                  sltu         s0, s0, a3
89:               sra          a1, a6, s4
                  blt          t3, a6, 107f
                  addi         a3, t2, -815
                  andi         a4, zero, 121
                  sra          s9, zero, t0
                  addi         s1, t4, 1798
                  ori          s1, s6, -986
                  addi         s0, s3, -1103
                  slli         a1, s6, 10
98:               beq          t4, s6, 110f
                  sra          a4, s0, a0
                  sra          t2, t5, s6
                  beq          t2, s10, 115f
                  and          t3, ra, t1
                  srl          a5, zero, a4
                  sll          s4, t2, s2
                  bge          ra, t6, 114f
                  bne          a1, s2, 122f
107:              sub          a4, s5, s2
                  sll          s2, s3, s0
                  beq          s9, tp, 128f
110:              srai         s8, s5, 11
                  and          sp, s3, s4
                  sub          s4, s4, s1
                  or           s1, t2, tp
114:              bge          tp, a1, 118f
115:              addi         t0, s7, -461
                  srl          gp, t2, s3
                  sltu         t5, s6, s1
118:              xori         s7, ra, 1089
                  sll          a4, t1, a7
                  srai         s2, a5, 8
                  or           t1, a3, t4
122:              bne          a5, s2, 142f
                  blt          a0, s11, 135f
                  xor          tp, s6, a4
                  add          t0, a6, t3
                  sltiu        s0, a2, 691
                  slli         t5, a6, 14
128:              lui          sp, 623611
                  sub          t0, s3, a2
                  sll          a0, tp, gp
                  beq          s11, tp, 146f
                  sra          s5, t1, s4
                  slt          t1, ra, s10
                  nop
135:              srai         t3, ra, 16
                  sll          ra, s8, a2
                  addi         s2, s5, -797
                  addi         s8, s8, -945
                  slli         a5, s5, 19
                  slti         a4, a5, -1126
                  blt          t5, ra, 143f
142:              auipc        s4, 941392
143:              auipc        ra, 857687
                  ori          s8, s7, -1569
                  add          ra, s10, gp
146:              slli         a5, s11, 8
                  slti         t4, s3, -1820
                  srl          s7, s8, s3
                  slli         sp, s3, 30
                  and          a3, t5, t2
                  xori         t5, a7, 1820
                  andi         s0, s4, 879
                  bgeu         a1, a1, 159f
                  sra          s9, t5, a5
                  sra          gp, s1, tp
                  andi         t1, s7, 419
                  xor          s7, t2, a2
                  slti         t5, t5, 78
159:              slli         t1, a6, 14
                  addi         ra, a4, -974
                  bgeu         t0, s5, 165f
                  xori         s9, a2, 468
                  srai         t5, a0, 4
                  bgeu         t5, s4, 182f
165:              addi         tp, s10, -1624
                  sltiu        t1, a5, -326
                  slli         a3, s10, 19
                  lui          s8, 906272
                  xor          s9, t1, t0
                  add          t5, a0, s11
                  bltu         s3, s3, 177f
                  and          t3, s1, sp
                  xor          a7, s3, tp
                  or           t5, t2, t6
                  xor          s5, a2, a3
                  bne          s2, t2, 196f
177:              andi         s4, t6, -878
                  auipc        a5, 62469
                  ori          a4, s2, 250
                  nop
                  srl          a1, t0, s10
182:              auipc        t6, 337574
                  ori          t3, ra, 713
                  beq          a2, a6, 192f
                  sra          sp, t4, a6
                  auipc        s5, 988214
                  and          a0, a1, t4
                  andi         s4, s5, 39
                  ori          s1, s7, 1735
                  addi         ra, zero, -1491
                  blt          a7, s6, 199f
192:              slt          s7, a1, t1
                  auipc        a3, 955605
                  srli         a1, s6, 9
                  sub          a7, t2, s5
196:              sub          t5, t0, s11
                  srl          t4, s7, t6
                  auipc        s10, 654458
199:              add          s10, t4, t0
                  lui          a4, 940854
                  lui          s0, 586375
                  beq          a0, zero, 214f
                  slti         s7, s4, -596
                  sra          t1, a3, sp
                  andi         t6, s1, 372
                  blt          a3, a6, 210f
                  xor          a1, a2, tp
                  addi         a0, sp, -213
                  and          s2, t4, a5
210:              bgeu         s1, s1, 219f
                  lui          s10, 91257
                  bge          a0, t1, 227f
                  bltu         ra, t4, 216f
214:              slli         t1, a1, 21
                  bgeu         s4, s6, 221f
216:              auipc        a1, 523532
                  sll          a3, gp, s5
                  sub          t3, zero, s11
219:              srl          tp, ra, s0
                  slti         tp, a7, 387
221:              andi         t3, a5, -54
                  slti         tp, s4, 1233
                  bgeu         ra, t2, 230f
                  slt          s3, s9, zero
                  srli         a5, a5, 30
                  bltu         t0, t2, 244f
227:              sll          s0, t1, ra
                  beq          gp, s1, 248f
                  addi         s8, gp, -1446
230:              bge          t5, t1, 237f
                  lui          s9, 44320
                  bne          a3, zero, 235f
                  nop
                  bgeu         sp, t4, 238f
235:              slli         t2, a6, 17
                  srai         t2, a0, 4
237:              sra          s5, t1, s2
238:              blt          s9, s5, 250f
                  bne          t2, t5, 254f
                  ori          s6, s7, -703
                  sll          a3, s11, a1
                  nop
                  bge          gp, gp, 245f
244:              xor          s10, t4, t5
245:              xor          t0, tp, s11
                  sltiu        zero, zero, 556
                  srai         s9, ra, 6
248:              andi         t0, s8, 1281
                  and          sp, ra, s8
250:              bgeu         s4, s8, 268f
                  ori          s3, ra, -596
                  xori         s2, a3, 990
                  andi         a1, a6, 617
254:              auipc        gp, 736058
                  srai         t5, t2, 22
                  bne          a0, s2, 264f
                  or           t1, s9, s3
                  bne          t0, tp, 271f
                  blt          a4, a3, 275f
                  auipc        tp, 299899
                  srai         s8, s9, 28
                  bgeu         s0, sp, 282f
                  bne          a5, a1, 275f
264:              xor          t2, sp, s3
                  auipc        s10, 262612
                  sll          s2, a2, s7
                  slli         t6, s8, 5
268:              add          t1, a6, a7
                  xor          s9, t4, s5
                  and          t5, s6, t6
271:              slt          s5, s2, t3
                  sub          t1, s9, a3
                  bge          a0, gp, 279f
                  bge          ra, s11, 284f
275:              bge          a0, s9, 289f
                  slti         s9, t1, 806
                  lui          a1, 223889
                  sra          t6, sp, s9
279:              or           t1, tp, t6
                  ori          a1, s4, -1633
                  srl          s3, s6, gp
282:              blt          t5, s1, 296f
                  slli         s10, t1, 27
284:              beq          s5, s10, 292f
                  sltiu        s7, s5, -336
                  ori          t4, a7, -1823
                  slli         s2, gp, 0
                  beq          s9, t1, 296f
289:              bgeu         gp, t4, 296f
                  blt          a7, s9, 296f
                  sub          t5, t4, s10
292:              auipc        s10, 384929
                  sra          s3, t1, s2
                  nop
                  bltu         a1, s6, 296f
296:              sub          s6, s5, a2
                  srl          s7, s3, s1
                  lw           ra, 4(a2)
                  addi         a2, a2, 12
                  addi         s2, s0, -401
                  srli         s8, s5, 3
                  slti         t1, s5, 1736
                  slli         gp, sp, 21
                  and          zero, s1, ra
517:              addi x5, x1, 1
517:              jalr x5, x5, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x16, x12, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x28, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x28, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x28, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x28, x15, ecall_handler
                  li x15, 0x1
                  beq x28, x15, instr_fault_handler
                  li x15, 0x5
                  beq x28, x15, load_fault_handler
                  li x15, 0x7
                  beq x28, x15, store_fault_handler
                  li x15, 0xc
                  beq x28, x15, pt_fault_handler
                  li x15, 0xd
                  beq x28, x15, pt_fault_handler
                  li x15, 0xf
                  beq x28, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x12, x16, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
