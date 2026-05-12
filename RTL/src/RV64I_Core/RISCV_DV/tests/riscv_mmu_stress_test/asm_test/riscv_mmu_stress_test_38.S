.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xe
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xf3d4f758
                  li x4, 0x80000000
                  li x5, 0xf
                  li x6, 0x1d1d64f7
                  li x7, 0x4585fb4e
                  li x8, 0x80000000
                  li x9, 0x3
                  li x10, 0x80000000
                  li x11, 0xff90a313
                  li x12, 0xff21a104
                  li x13, 0xf7d3baf2
                  li x14, 0x0
                  li x15, 0x8
                  li x16, 0x80000000
                  li x17, 0x49acfa20
                  li x19, 0x94d3996c
                  li x20, 0x74676f97
                  li x21, 0x103a764d
                  li x23, 0x2
                  li x24, 0xf2658e4b
                  li x25, 0xfed97b29
                  li x26, 0xf485fa65
                  li x27, 0x4ba1fbef
                  li x28, 0x0
                  li x29, 0xa
                  li x30, 0xf8462a98
                  li x31, 0xf2e1a891
                  la x18, user_stack_end
main:             la           a2, region_1+1040 #start load_store_instr_stream_2
                  la           s4, region_1+756 #start load_store_instr_stream_4
                  sb           a3, -3(a2)
                  sb           t5, -195(s4)
                  la           a4, region_1+1061 #start load_store_instr_stream_1
                  la           t3, region_1+1107 #start load_store_instr_stream_0
                  lb           gp, 9(a4)
                  lbu          gp, -233(s4)
                  la           a5, region_1+1822 #start load_store_instr_stream_3
                  lb           t0, 170(s4)
                  lhu          s11, -13(a4)
                  sb           t5, -167(a5)
                  sb           a4, 52(t3)
                  lb           ra, 115(s4)
                  lh           a1, -20(a2)
                  lw           s8, -1011(t3)
                  lh           t6, -11(a4)
                  lb           a7, 410(t3)
                  sb           t2, 219(s4)
                  lhu          a1, 48(s4) #end load_store_instr_stream_4
                  lb           a6, -14(a4)
                  lb           s7, 2(a2)
                  sb           t6, -182(a5)
                  lh           t1, -539(t3)
                  lb           s1, -12(a4)
                  sb           t0, -52(a2)
                  lb           t1, -11(a5)
                  lh           s8, 170(a5)
                  sb           t5, -50(a5)
                  lw           tp, 709(t3)
                  sh           s9, 140(a5)
                  lbu          tp, 9(a4)
                  lhu          t1, 174(a5)
                  lb           t4, 24(t3)
                  sb           s3, 117(a5)
                  sb           zero, 16(a4)
                  lb           t5, 0(a4)
                  lhu          t5, -295(t3)
                  lb           a3, 2(a2)
                  sb           a5, -23(a5) #end load_store_instr_stream_3
                  sb           a6, 1(a4)
                  lb           a0, 61(a2)
                  lbu          s11, 10(a4) #end load_store_instr_stream_1
                  lbu          t5, 7(a2) #end load_store_instr_stream_2
                  sb           tp, -817(t3) #end load_store_instr_stream_0
                  la           a3, region_0+462 #start riscv_load_store_rand_instr_stream_1
                  or           a6, s2, s8
                  sb           sp, -63(a3)
                  lbu          zero, -16(a3)
                  sh           a7, 4(a3)
                  sh           s11, -40(a3)
                  sb           a5, -13(a3)
                  slt          gp, t4, s3
                  lbu          a1, -55(a3)
                  xor          t4, t6, s1
                  lb           zero, -35(a3)
                  xori         s7, t5, 39
                  sltiu        a0, t3, -315
                  xori         a4, s4, -1037
                  lhu          s10, -64(a3)
                  and          a1, s5, s10
                  auipc        s10, 166736
                  andi         a7, s10, -1431
                  lh           s4, 64(a3)
                  sra          t1, s0, s5
                  lui          s3, 528658
                  ori          t1, s9, -1605
                  lh           s3, -56(a3)
                  lhu          gp, 64(a3)
                  srai         s1, a6, 5
                  lh           s5, 22(a3)
                  srl          s11, a7, sp
                  lb           t3, -1(a3)
                  lb           a5, -59(a3)
                  sub          gp, tp, a3
                  sb           t6, 28(a3)
                  nop
                  lbu          t2, 64(a3)
                  nop
                  srli         s4, s8, 19
                  and          s11, a6, s5
                  addi         s10, a0, -1339
                  lh           t5, -48(a3)
                  addi         s3, s2, 1602
                  sll          ra, s6, t6
                  xori         zero, s7, -23
                  lbu          t3, 25(a3)
                  sb           s9, 63(a3)
                  sltu         t3, tp, sp
                  lb           t1, -19(a3)
                  lhu          s10, 52(a3)
                  andi         s8, t0, -130
                  lb           t3, -27(a3)
                  sb           ra, -55(a3) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+137 #start riscv_load_store_hazard_instr_stream_0
                  lhu          t1, 1045(s11)
                  lh           tp, 1045(s11)
                  lb           t3, 250(s11)
                  sb           t3, 250(s11)
                  lbu          t2, 250(s11)
                  sb           gp, 1186(s11)
                  and          zero, a4, ra
                  sb           s3, 1186(s11)
                  lb           s0, 1186(s11)
                  lb           ra, 1665(s11)
                  lbu          t4, 1665(s11)
                  and          s9, s11, s4
                  sltiu        t6, s2, 1697
                  lhu          ra, 1665(s11)
                  lb           s5, 710(s11)
                  sb           a1, 1522(s11)
                  slli         t2, s0, 28
                  lbu          t4, 1522(s11)
                  sb           s5, 1522(s11)
                  lbu          tp, 797(s11) #end riscv_load_store_hazard_instr_stream_0
                  la           s7, region_0+360 #start riscv_load_store_rand_instr_stream_0
                  sltiu        zero, s2, 1641
                  srai         t5, s8, 2
                  lbu          a2, 50(s7)
                  sb           a3, -31(s7)
                  lbu          s8, 15(s7)
                  sub          s3, gp, s8
                  sb           a3, 61(s7)
                  lb           gp, 29(s7)
                  sra          t6, s11, s2
                  sll          s4, a1, s10
                  lbu          a4, 1(s7)
                  sb           s6, 50(s7)
                  sltu         ra, t2, s6
                  sb           a5, 41(s7)
                  lb           a7, -41(s7)
                  sb           s6, -15(s7)
                  add          s11, t1, s5
                  ori          a6, s10, 250
                  sb           tp, 56(s7)
                  lui          t2, 143217
                  sb           ra, -39(s7)
                  lhu          a6, 34(s7)
                  sb           s5, 16(s7)
                  sb           a4, 63(s7)
                  lbu          s4, 38(s7)
                  sb           s11, 12(s7)
                  xor          a2, ra, a3
                  lb           a5, -35(s7)
                  lb           a4, 61(s7)
                  slli         s0, s1, 20
                  lbu          gp, -57(s7)
                  sb           t0, -15(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+1578 #start load_store_instr_stream_2
                  la           gp, region_1+1715 #start load_store_instr_stream_0
                  la           a1, region_1+335 #start load_store_instr_stream_1
                  la           a6, region_1+207 #start load_store_instr_stream_4
                  sb           s11, -1201(s8)
                  lh           t5, -280(s8)
                  sh           a5, -33(gp)
                  sb           t2, -18(a6)
                  la           a5, region_1+1498 #start load_store_instr_stream_3
                  lbu          s7, 212(a6)
                  sb           s3, -125(s8)
                  sw           a7, -130(a5)
                  lbu          s4, -669(s8)
                  lb           a4, -83(a5)
                  lb           s0, -40(gp)
                  lb           a3, 93(a5)
                  sw           s7, 82(s8)
                  lb           t6, -39(a1)
                  lw           s0, -43(gp)
                  lb           t1, -22(gp)
                  lbu          t6, 36(a1)
                  sb           a0, 42(a1)
                  lbu          t3, 60(gp)
                  sb           tp, 34(a1)
                  lbu          ra, -1494(s8)
                  lbu          t3, 4(a6)
                  sb           s7, 4(gp)
                  lbu          t0, -29(a6)
                  sb           a5, 249(a5)
                  lb           t2, -861(s8)
                  lb           a2, 60(gp)
                  lbu          a0, -1140(s8)
                  lb           a0, 185(a5) #end load_store_instr_stream_3
                  lbu          s11, -44(a1)
                  sw           s7, -378(s8)
                  sb           s0, 175(a6)
                  lbu          zero, -24(s8) #end load_store_instr_stream_2
                  sh           tp, -177(a6) #end load_store_instr_stream_4
                  sb           a6, -10(a1)
                  lbu          a4, -10(gp)
                  sb           zero, -33(a1) #end load_store_instr_stream_1
                  lhu          s4, 3(gp)
                  lb           t4, 19(gp) #end load_store_instr_stream_0
                  la           s0, region_0+1153 #start riscv_load_store_hazard_instr_stream_1
                  lh           s8, 123(s0)
                  sw           t5, 123(s0)
                  srai         a1, s9, 6
                  sw           s7, 123(s0)
                  lbu          a0, 123(s0)
                  sb           s9, -996(s0)
                  srli         t3, ra, 5
                  lbu          tp, -996(s0)
                  sh           s6, 465(s0)
                  sh           s7, 465(s0)
                  sb           a6, -719(s0)
                  lh           s1, -719(s0)
                  lbu          a4, -719(s0)
                  lbu          t5, -719(s0)
                  lh           t6, -719(s0)
                  lbu          s4, -719(s0)
                  lb           gp, -719(s0)
                  slli         a3, s1, 31
                  lh           a2, -719(s0)
                  sb           s8, -719(s0)
                  lbu          s8, -719(s0) #end riscv_load_store_hazard_instr_stream_1
                  andi         t0, a2, -131
                  sra          t6, t5, s5
                  slt          a7, s3, s10
                  bne          s1, a4, 4f
4:                lui          t3, 423205
                  ori          a6, t2, -957
                  lui          s3, 215906
                  slt          a2, t4, sp
                  sra          a7, a3, t6
                  or           t6, sp, s5
                  slli         s1, sp, 17
                  bge          t5, a2, 25f
                  srli         s9, s8, 6
                  xor          a3, s10, tp
                  bltu         s2, ra, 27f
                  bne          a4, gp, 22f
                  sltiu        s9, t4, -1882
                  bltu         s3, s5, 23f
                  and          s10, s9, t0
                  srli         s8, t0, 26
                  auipc        a6, 629105
                  andi         t4, t1, 1984
22:               srai         t5, s1, 1
23:               srli         t0, gp, 7
                  xori         a1, s5, -1551
25:               srli         ra, a1, 30
                  sltu         gp, s8, s9
27:               add          a0, a4, t1
                  addi         a3, s6, -97
                  addi         s5, a7, 979
                  bge          gp, s2, 46f
                  andi         t5, s10, -1670
                  sltiu        s0, s6, -1864
                  slti         t5, a1, 1426
                  or           s3, gp, a2
                  andi         zero, t3, -957
                  ori          gp, t6, 1920
                  blt          s2, a0, 38f
38:               beq          s8, s1, 43f
                  xori         s1, s11, -1233
                  and          s9, zero, s10
                  bge          gp, s2, 57f
                  blt          s4, t2, 60f
43:               bltu         s8, a1, 54f
                  bge          a2, t4, 56f
                  slt          s7, s6, a1
46:               xor          t3, s9, a3
                  bge          a0, t2, 61f
                  nop
                  beq          t3, t6, 67f
                  addi         t0, t4, 729
                  auipc        t4, 132959
                  la           s0, sub_1
                  add          a5, a5, gp
                  addi         s0, s0, 764
                  sra          t0, s6, a4
                  sra          gp, a5, tp
                  nop
main_j2:          jalr         tp, s0, -764 #jump main -> sub_1
                  bne          ra, s1, 71f
                  sltu         s11, tp, a7
                  srli         s9, t6, 15
54:               and          t6, a7, a4
                  bltu         zero, s3, 56f
56:               blt          s1, t5, 58f
57:               bltu         a4, gp, 58f
58:               ori          a4, zero, 863
                  bgeu         a6, t5, 71f
60:               bltu         t1, s5, 61f
61:               nop
                  srli         s3, a3, 20
                  xor          t5, a5, t5
                  sub          t3, s7, gp
                  bge          a0, a1, 69f
                  add          t4, t5, ra
67:               sll          a4, t2, s1
                  srl          a5, s8, s0
69:               bltu         t2, s6, 82f
                  auipc        a2, 389731
71:               or           s9, a7, s8
                  xori         s9, a2, -1538
                  bge          s8, s7, 87f
                  sll          s11, a3, s7
                  blt          a4, s9, 90f
                  srli         a1, t4, 2
                  bge          s4, t3, 79f
                  blt          t6, s7, 92f
79:               andi         a4, t0, 1804
                  slli         t4, s7, 16
                  sll          t6, sp, t5
                  la           a5, sub_2
                  sra          s9, s6, a2
                  nop
                  sll          s8, s0, a3
                  addi         a5, a5, -818
                  or           s9, sp, a3
                  bne          t4, s0, main_j1 #branch to jump instr
                  auipc        a1, 581508
main_j1:          jalr         tp, a5, 818 #jump main -> sub_2
                  lui          a1, 364373
82:               auipc        a4, 1000161
                  ori          s3, t0, 1565
                  srl          t3, s2, a3
                  add          s11, s10, t6
                  sra          s0, a1, s10
87:               addi         t4, a0, -1931
                  auipc        s8, 246243
                  or           a5, t2, a5
90:               sub          a2, gp, a4
                  bge          s11, a5, 110f
92:               sltu         a7, t1, t0
                  auipc        s10, 595819
                  bne          s0, s8, 97f
                  auipc        a2, 795138
                  sltu         t3, s6, s4
97:               nop
                  or           s8, tp, a5
                  srai         a5, t4, 16
                  sltiu        t5, t4, 1872
                  slt          t0, t4, sp
                  bne          s10, t2, 103f
103:              sltu         t0, ra, a3
                  slt          s11, a0, t4
                  or           s7, a7, t5
                  blt          sp, tp, 126f
                  add          s1, t0, s7
                  xor          s4, a1, s11
                  sltu         s4, s1, t4
110:              auipc        s4, 194051
                  andi         t1, t0, -1516
                  slti         a2, s1, 970
                  sub          s4, t3, ra
                  auipc        tp, 101168
                  bltu         s8, ra, 116f
116:              bltu         a6, a1, 119f
                  sltiu        t2, s8, 694
                  xor          gp, a4, a5
119:              sll          a2, a0, t4
                  bltu         ra, t0, 131f
                  slli         a3, a5, 1
                  bne          s4, s9, 138f
                  srl          s4, a5, s1
                  srai         s9, a6, 7
                  xor          gp, s0, a2
126:              andi         s5, tp, -13
                  sll          s10, s4, a5
                  addi         s0, s8, 1172
                  slt          a2, t1, s10
                  beq          t2, zero, 135f
131:              bgeu         sp, a0, 145f
                  srai         zero, s0, 20
                  addi         a5, t1, 756
                  slli         t5, s7, 3
135:              auipc        ra, 1011500
                  and          a2, a0, t4
                  srli         a3, t1, 14
138:              lui          s8, 899119
                  bne          t5, sp, 140f
140:              xori         t1, a6, -201
                  bgeu         a2, zero, 142f
142:              and          s5, s11, a3
                  sll          s7, t0, a2
                  bge          a3, a6, 157f
145:              and          a2, s2, s4
                  bltu         a7, t1, 158f
                  srai         s0, tp, 12
                  andi         t4, zero, -1292
                  bne          s2, a4, 162f
                  blt          t2, s7, 168f
                  bltu         t6, a7, 165f
                  bltu         s1, a1, 170f
                  nop
                  or           a7, a0, s0
                  slli         a6, a5, 4
                  bge          zero, a2, 175f
157:              sltiu        s5, s10, -717
158:              beq          t3, t3, 160f
                  and          t0, gp, s2
160:              and          s4, zero, a1
                  ori          a0, zero, 29
162:              bgeu         ra, a6, 182f
                  slti         a0, ra, -1435
                  sltiu        t1, a7, 665
165:              sra          t2, s3, s8
                  ori          s9, a1, 1261
                  srli         t1, s11, 21
168:              srai         s8, s7, 27
                  and          s5, a1, t4
170:              srli         a6, s8, 22
                  blt          s11, t1, 177f
                  bge          s0, tp, 179f
                  lui          tp, 766474
                  sub          t3, s10, a2
175:              sub          t0, t1, t5
                  sra          s1, t5, s11
177:              sub          t0, a2, s6
                  xor          a5, a4, s4
179:              bltu         s3, a3, 193f
                  sltu         s4, a0, tp
                  sll          s3, ra, s9
182:              slti         ra, s3, -1147
                  bgeu         s2, ra, 187f
                  srai         s11, t0, 26
                  lui          s3, 456229
                  xori         s1, a4, 817
187:              lui          ra, 463505
                  bltu         t3, a4, 189f
189:              xori         a3, a7, 5
                  slti         t4, t4, -1197
                  auipc        s7, 459916
                  slt          s7, a5, a4
193:              auipc        s4, 513539
                  or           s8, a5, t6
                  lui          t2, 189269
                  and          s1, a1, s4
                  sra          t4, s0, t3
                  sltu         s4, tp, t0
                  sltiu        s4, s6, -149
                  xor          s5, a4, s11
                  sltu         a6, t4, s7
                  sub          t0, a4, s1
                  andi         a0, s7, -1143
                  slli         t2, t1, 21
                  sltu         s11, tp, t3
                  addi         s11, t2, -1733
                  and          s3, a0, s3
                  srai         tp, a4, 28
                  add          s11, a7, tp
                  srli         a7, t2, 5
                  bgeu         a2, t4, 213f
                  nop
213:              addi         a5, t5, -1645
                  add          a5, a6, s7
                  bge          tp, a3, 216f
216:              ori          t3, zero, 469
                  bne          s11, t0, 237f
                  blt          s11, s4, 234f
                  bge          s10, sp, 220f
220:              beq          a0, t2, 235f
                  and          t4, t4, s2
                  sltiu        s5, t0, -1654
                  srl          a6, s8, s4
                  sub          s5, t4, t5
                  auipc        t5, 124128
                  nop
                  and          s3, t6, gp
                  ori          t2, zero, -1858
                  bge          t5, s3, 243f
                  sltu         a3, sp, s9
                  slt          t2, a3, a1
                  slti         t3, tp, 377
                  andi         s9, a6, 556
234:              slt          s7, a6, a7
235:              and          t2, s9, t3
                  srli         a5, t4, 24
237:              srai         ra, a6, 21
                  add          a4, tp, gp
                  slli         s1, s8, 16
                  and          s4, t5, t6
                  sra          a4, a1, s3
                  srai         t6, s9, 6
243:              sll          s5, t4, s2
                  slt          s1, t6, zero
                  slt          t1, s5, s0
                  auipc        t0, 877428
                  sll          a5, t3, s7
                  blt          s6, a7, 260f
                  srli         s7, a3, 15
                  slli         a7, s4, 15
                  beq          ra, a4, 252f
252:              slti         a0, a7, 1843
                  add          ra, a4, t4
                  xori         s4, t6, -834
                  nop
                  sll          a5, t4, t5
                  and          s11, a5, a0
                  blt          s4, s9, 259f
259:              bltu         s3, t4, 271f
260:              bne          t0, a5, 272f
                  blt          ra, t3, 262f
262:              lui          s1, 793319
                  xori         ra, t3, -192
                  auipc        s0, 741940
                  sub          a3, zero, t6
                  auipc        tp, 117658
                  sltu         s0, t5, t5
                  add          a0, s5, t5
                  sltu         t2, zero, s3
                  sra          a6, t5, t0
271:              srl          a7, s9, t5
272:              andi         a7, sp, -787
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            add          s5, a2, s11
                  blt          s10, t6, sub_2_stack_p
sub_2_stack_p:    addi         s2, s2, -8
                  lui          a4, 794372
                  srli         s10, a2, 13
                  ori          t4, s0, 1662
                  sra          t6, a3, a5
                  slli         a2, t1, 0
                  sw           tp, 4(s2)
                  auipc        s4, 9939
                  la           s11, region_1+857 #start riscv_load_store_hazard_instr_stream_2
                  lbu          zero, 170(s11)
                  lbu          s4, 170(s11)
                  lbu          s3, 170(s11)
                  lb           t3, 170(s11)
                  sb           a3, 170(s11)
                  ori          t0, a1, -98
                  sb           a3, 170(s11)
                  lui          t1, 721878
                  lbu          a4, 170(s11)
                  add          t5, s8, t4
                  sb           s7, 170(s11)
                  lbu          s1, 170(s11)
                  lbu          a1, 170(s11)
                  sb           s11, 170(s11)
                  lbu          gp, 170(s11)
                  sb           a7, 170(s11) #end riscv_load_store_hazard_instr_stream_2
                  la           t3, region_0+1012 #start riscv_load_store_rand_instr_stream_4
                  sb           a3, 119(t3)
                  sb           s10, -221(t3)
                  srai         s4, a5, 9
                  sw           ra, 204(t3)
                  lh           s10, 112(t3)
                  sub          s3, a7, t3
                  lbu          gp, 207(t3)
                  lb           s5, 175(t3)
                  sh           t3, -192(t3)
                  srli         s4, gp, 0
                  and          t4, t4, a7
                  lhu          s0, -6(t3)
                  sh           ra, 196(t3)
                  srli         t4, t6, 15
                  and          a2, s11, s4
                  ori          s3, s4, 444
                  lb           s11, 151(t3)
                  lbu          a4, -141(t3)
                  add          a4, s1, t1
                  slti         s5, s10, -336
                  sra          s8, s7, ra
                  nop
                  ori          a5, t2, -379
                  xori         s0, s0, -1192
                  auipc        a6, 892279
                  lbu          t4, 221(t3)
                  and          gp, s9, s10
                  add          a3, t5, a7
                  lbu          tp, 181(t3)
                  lbu          s5, -132(t3)
                  sb           s11, 225(t3)
                  srai         s5, s4, 17
                  lb           s11, -25(t3) #end riscv_load_store_rand_instr_stream_4
                  la           a4, region_1+243 #start riscv_load_store_hazard_instr_stream_3
                  srl          gp, a3, a3
                  sb           s7, 230(a4)
                  lbu          s0, 230(a4)
                  lbu          s0, 230(a4)
                  sb           a7, 230(a4)
                  lbu          s5, 230(a4)
                  sltu         tp, a3, t2
                  lb           s3, 230(a4)
                  sb           s10, 230(a4)
                  lbu          s8, 230(a4)
                  lbu          t0, 230(a4)
                  sb           t4, 230(a4)
                  srl          a1, t6, s1
                  sb           a6, 230(a4)
                  lb           zero, -79(a4)
                  lw           s5, -79(a4)
                  lhu          s3, -79(a4)
                  lw           s0, -79(a4)
                  lhu          a5, -79(a4)
                  sb           s11, -136(a4)
                  lb           a7, -102(a4)
                  slt          t1, a7, s3
                  sub          s0, t5, ra
                  lb           t1, 7(a4) #end riscv_load_store_hazard_instr_stream_3
                  la           a3, region_1+1992 #start riscv_load_store_hazard_instr_stream_6
                  srl          a2, t0, a3
                  srai         gp, s0, 16
                  lb           s7, -166(a3)
                  lhu          zero, -166(a3)
                  lb           a2, -166(a3)
                  sb           s6, -166(a3)
                  lh           s3, -166(a3)
                  lb           t1, -166(a3)
                  lbu          ra, -166(a3)
                  lh           s9, -166(a3)
                  lb           a5, -166(a3)
                  slt          zero, s4, a5
                  lbu          a7, -166(a3)
                  lb           t1, -166(a3)
                  lhu          a7, -166(a3)
                  lhu          s7, -166(a3)
                  sb           s4, -166(a3)
                  and          s10, t1, a1
                  sb           zero, -166(a3) #end riscv_load_store_hazard_instr_stream_6
                  la           s7, region_0+1611 #start load_store_instr_stream_1
                  la           t1, region_0+175 #start load_store_instr_stream_3
                  sh           a0, 43(t1)
                  sb           s3, -196(s7)
                  lb           s11, 25(t1)
                  la           t5, region_0+372 #start load_store_instr_stream_2
                  la           a6, region_0+1678 #start load_store_instr_stream_0
                  sb           a3, 0(a6)
                  lb           a5, 7(a6)
                  lb           a4, 8(t1)
                  sb           s8, 30(t1)
                  lbu          a2, 9(a6)
                  lh           t2, 4(a6)
                  sh           s4, -29(t1)
                  sh           s3, -187(s7)
                  lhu          s9, 14(t5)
                  lbu          t2, -11(t5)
                  sw           zero, 117(s7)
                  lh           s8, -6(t5)
                  sb           s5, -76(s7)
                  lbu          a0, -58(t1)
                  lbu          a7, -3(a6)
                  lb           gp, -11(t5)
                  sh           s11, -10(a6)
                  lb           s5, -3(a6)
                  lb           s9, 46(t1)
                  sh           gp, -14(t5) #end load_store_instr_stream_2
                  lhu          ra, -12(a6)
                  lb           s11, 59(t1) #end load_store_instr_stream_3
                  sb           s7, -27(s7) #end load_store_instr_stream_1
                  sb           s2, 5(a6) #end load_store_instr_stream_0
                  la           a0, region_1+1018 #start riscv_load_store_hazard_instr_stream_0
                  sra          a6, s11, ra
                  srl          t1, t5, ra
                  lh           t3, -14(a0)
                  sw           s5, -14(a0)
                  lhu          s0, -16(a0)
                  lh           s0, -16(a0)
                  sh           s4, -16(a0)
                  lw           t6, 2(a0)
                  sb           s0, 2(a0)
                  lw           s3, 2(a0)
                  sb           t1, 2(a0)
                  lh           a3, 2(a0)
                  sb           a2, 2(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_1+1572 #start riscv_load_store_hazard_instr_stream_5
                  lbu          t6, -31(a7)
                  lbu          s4, -137(a7)
                  nop
                  lb           s3, -137(a7)
                  lb           t6, -137(a7)
                  lbu          t3, 6(a7)
                  addi         t3, t4, 1678
                  sb           t3, -39(a7)
                  sb           t6, -188(a7)
                  sb           zero, 247(a7)
                  sb           a0, -187(a7)
                  sb           s9, -187(a7)
                  lbu          s4, -172(a7)
                  lbu          s0, 37(a7)
                  lw           t6, 144(a7)
                  lbu          t2, 144(a7)
                  lb           t3, -130(a7)
                  sb           s10, -236(a7)
                  sb           a0, -231(a7) #end riscv_load_store_hazard_instr_stream_5
                  la           a0, region_0+911 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t2, tp, -576
                  lbu          s5, 7(a0)
                  sw           s7, 45(a0)
                  sll          a3, t6, s2
                  srai         tp, s7, 23
                  or           t3, a7, s1
                  addi         s8, t2, 144
                  lbu          t2, -41(a0)
                  sub          s5, s6, gp
                  sltiu        t2, s8, 1426
                  sltiu        a6, a5, 469
                  xor          s10, a3, gp
                  lbu          s11, -54(a0)
                  lbu          a3, 46(a0)
                  sra          t5, s0, a6
                  slti         a1, s9, -1540
                  slli         tp, s3, 1
                  sltu         zero, sp, t4
                  xori         a6, s3, 978
                  sltiu        s4, s10, -417
                  addi         t5, s5, 1167
                  lbu          a7, 28(a0)
                  sub          t5, s4, zero
                  lb           a6, -55(a0)
                  lh           a5, 1(a0)
                  sltu         tp, a2, t1
                  ori          s10, s9, 902
                  sb           t6, -6(a0)
                  lbu          s0, 19(a0)
                  lb           s1, 2(a0)
                  slt          t5, t1, a2
                  xori         s3, t0, -1498
                  srai         ra, s1, 3
                  sh           s0, -15(a0) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+579 #start load_store_instr_stream_1
                  la           t0, region_1+1990 #start load_store_instr_stream_0
                  sb           s2, 12(a7)
                  la           s0, region_1+932 #start load_store_instr_stream_2
                  sb           s1, -221(t0)
                  la           s9, region_1+50 #start load_store_instr_stream_3
                  sb           s9, -31(s9)
                  lb           t4, 37(s0)
                  lbu          t3, 2(a7)
                  lbu          a6, 7(s0)
                  lbu          a3, -47(s9)
                  sb           t2, -64(t0)
                  lhu          a0, 1(a7)
                  sb           a6, 43(s9)
                  lh           zero, -42(s0)
                  lbu          a1, 8(s9)
                  lb           s7, 10(a7)
                  lb           s11, -95(t0)
                  sb           t6, -15(a7)
                  lbu          s11, 4(t0)
                  lb           s3, -19(s0)
                  sb           s5, 10(a7)
                  lb           t2, -9(a7)
                  sb           t2, -27(s9)
                  lhu          t1, -2(s0)
                  lb           s10, -8(a7)
                  lh           a2, 18(s0)
                  sb           ra, 46(s0)
                  sh           zero, 15(a7)
                  lhu          t2, -216(t0)
                  lb           a3, 15(a7) #end load_store_instr_stream_1
                  sb           t0, 53(s0)
                  sw           t0, -26(s9) #end load_store_instr_stream_3
                  sw           sp, -24(s0) #end load_store_instr_stream_2
                  lbu          ra, -234(t0) #end load_store_instr_stream_0
                  la           t1, region_1+1032 #start riscv_load_store_rand_instr_stream_2
                  sb           s3, -3(t1)
                  andi         ra, a4, 200
                  sra          tp, t3, s3
                  sb           t2, -15(t1)
                  sltu         a1, a4, s2
                  sll          zero, zero, s9
                  lh           s7, 8(t1)
                  lb           s4, 9(t1)
                  andi         s0, a4, 1416
                  lhu          s10, 10(t1)
                  sltiu        t5, s7, 942
                  sb           s10, 3(t1)
                  xori         s7, gp, -1618
                  sb           sp, 3(t1)
                  nop
                  xor          a2, a5, s7
                  andi         s5, tp, 16
                  lbu          s1, 11(t1)
                  sh           s5, 2(t1)
                  lbu          s11, -1(t1)
                  andi         t4, s7, -1369
                  sb           s8, -5(t1)
                  lw           ra, 4(t1)
                  lhu          s5, -2(t1)
                  nop
                  srl          s10, s1, gp
                  lw           a1, -12(t1)
                  xor          s9, s1, s8
                  xori         t2, s6, 980
                  srai         s8, s1, 5
                  lh           s9, 2(t1)
                  sll          a2, a5, t0
                  lui          s5, 92226
                  sh           a5, -12(t1) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+548 #start riscv_load_store_hazard_instr_stream_4
                  lbu          s11, 54(s0)
                  xor          a0, gp, ra
                  lui          s5, 566309
                  sb           t5, 14(s0)
                  lb           s9, -108(s0)
                  sb           t5, 16(s0)
                  lbu          t0, -225(s0)
                  srai         a0, s7, 5
                  sh           s4, 0(s0)
                  sra          s4, a4, a2
                  lb           a1, 25(s0)
                  lb           s3, -175(s0)
                  sb           a1, -99(s0)
                  sub          s9, s3, gp
                  sltu         t0, tp, s1
                  lbu          s3, 193(s0)
                  lbu          a5, 1(s0)
                  lb           s4, 1(s0)
                  sb           zero, 181(s0)
                  sb           t5, 75(s0)
                  lb           s11, 227(s0)
                  lb           ra, 227(s0)
                  sw           s11, -96(s0)
                  sb           t3, 151(s0)
                  lbu          t0, -251(s0)
                  lb           s1, -251(s0) #end riscv_load_store_hazard_instr_stream_4
                  la           a1, region_0+1462 #start riscv_load_store_rand_instr_stream_0
                  sra          s9, s0, zero
                  lb           s8, -584(a1)
                  sb           a3, -768(a1)
                  sll          t0, gp, a5
                  lh           gp, -930(a1)
                  lb           t6, -644(a1)
                  xor          s7, gp, s11
                  lb           a2, -839(a1)
                  lh           zero, 486(a1)
                  sra          s8, s3, s3
                  srli         s0, s9, 13
                  andi         s5, s2, 240
                  nop
                  srl          t5, t3, s8
                  lhu          t6, -774(a1)
                  sh           a7, 530(a1)
                  lbu          gp, -921(a1)
                  lbu          a7, -1257(a1)
                  lb           a3, 398(a1)
                  sb           gp, -1383(a1)
                  slti         t1, t3, -137
                  slti         gp, s3, 1631
                  sltu         s0, zero, a0
                  nop
                  srai         s3, sp, 8
                  xor          a5, t6, tp
                  add          s3, t0, a6
                  sra          t3, t1, s11
                  lbu          s8, -1352(a1)
                  sltiu        a3, a7, -1149
                  nop
                  lb           t3, -1105(a1)
                  sb           tp, 133(a1)
                  sh           a0, 526(a1) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_1+1557 #start riscv_load_store_rand_instr_stream_6
                  lw           s4, -1(a3)
                  sra          a5, s11, s4
                  srl          s4, s4, s10
                  sltu         a4, ra, s7
                  slt          t6, t0, t1
                  and          s4, t0, s0
                  lbu          zero, -8(a3)
                  sll          s7, t2, a5
                  nop
                  xor          s11, s6, t1
                  ori          t2, a1, -934
                  sh           t3, -11(a3)
                  sll          s11, s6, t1
                  lb           s10, 16(a3)
                  lb           a1, 1(a3)
                  sll          s5, tp, s8
                  lbu          s9, -12(a3)
                  lbu          zero, 13(a3)
                  lui          t3, 984950
                  andi         s7, s0, 49
                  sltiu        t5, s7, 363
                  lb           s0, -14(a3)
                  lbu          s10, -9(a3)
                  srl          s5, a3, a6
                  slli         s3, t2, 27
                  srl          zero, a5, s8
                  lhu          gp, 3(a3)
                  add          zero, sp, gp
                  lbu          tp, 13(a3)
                  auipc        s7, 972897
                  or           a7, sp, ra
                  slli         s3, t1, 10
                  sll          s3, s5, sp
                  sltu         s4, sp, a0
                  slti         s7, a3, 1806
                  xori         a7, ra, -1096
                  lb           t5, -4(a3) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_1+1178 #start riscv_load_store_rand_instr_stream_3
                  xori         t1, a5, -1384
                  addi         gp, t1, -243
                  ori          s4, t0, 1242
                  lb           t4, -125(a1)
                  lh           s9, -122(a1)
                  sltiu        a0, s7, -1995
                  add          t4, a7, s2
                  and          zero, t3, s5
                  nop
                  lh           a6, -252(a1)
                  and          t2, s1, s1
                  xori         a7, s5, -1800
                  xori         a6, s9, 1629
                  nop
                  lhu          zero, -90(a1)
                  lui          s10, 266552
                  addi         a4, t3, 1684
                  srai         s9, s5, 21
                  slli         t3, s8, 13
                  andi         a5, a3, 1353
                  lb           s3, -191(a1)
                  sltiu        a0, s3, -1101
                  slli         ra, a6, 15
                  lbu          s8, -112(a1)
                  lbu          s4, -157(a1)
                  sub          t0, a2, a4
                  sb           s2, 93(a1)
                  sb           t1, -90(a1)
                  xori         a0, s1, 1734
                  addi         tp, t2, -1013
                  lui          a2, 1844
                  add          a6, s6, tp
                  or           t2, a5, a4
                  sub          s9, tp, s6
                  lbu          s3, 42(a1)
                  or           a5, t3, s6
                  lbu          s8, 86(a1)
                  and          a3, t4, s5
                  lb           s3, 255(a1)
                  sra          a0, a0, a3
                  lbu          a0, -253(a1) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+1992 #start load_store_instr_stream_3
                  la           s7, region_0+778 #start load_store_instr_stream_1
                  la           a4, region_0+53 #start load_store_instr_stream_2
                  la           s10, region_0+1011 #start load_store_instr_stream_0
                  sb           s7, -379(s10)
                  lb           t5, -9(a4)
                  sb           s2, 227(s7)
                  lbu          s8, -82(s7)
                  lhu          t0, -14(tp)
                  lh           a5, -13(s10)
                  sb           s7, 223(s7)
                  sb           s1, -7(a4)
                  sb           t0, -338(s10)
                  sb           a1, 11(a4)
                  lbu          a1, -364(s10)
                  sb           s5, -4(a4)
                  lbu          gp, 175(s7)
                  lh           gp, 3(a4)
                  sb           t4, 1(tp)
                  sb           s1, -286(s10)
                  sb           t3, -7(tp)
                  lbu          zero, 3(tp)
                  lbu          t3, -88(s7)
                  lb           a7, -14(tp)
                  sw           zero, -631(s10)
                  lb           s5, 457(s10)
                  sh           s5, -14(tp)
                  sb           a6, -237(s10)
                  lh           s9, 4(tp)
                  sb           a5, -8(a4)
                  lbu          a1, -251(s7)
                  lbu          gp, 0(tp) #end load_store_instr_stream_3
                  sb           s6, 9(a4) #end load_store_instr_stream_2
                  sb           t1, -121(s7) #end load_store_instr_stream_1
                  lw           s1, -127(s10)
                  lbu          s5, 626(s10) #end load_store_instr_stream_0
                  la           s11, region_0+1545 #start load_store_instr_stream_2
                  sb           s5, -541(s11)
                  la           t0, region_0+1866 #start load_store_instr_stream_3
                  la           t6, region_0+1999 #start load_store_instr_stream_1
                  lb           t5, -250(s11)
                  lbu          a3, -8(t6)
                  lb           s10, 10(t0)
                  sh           s10, -839(s11)
                  sb           s11, -1(t0)
                  la           t3, region_0+1968 #start load_store_instr_stream_0
                  lh           ra, -32(t0)
                  sh           t4, -5(t6)
                  lb           a2, 0(t6)
                  sw           s8, 8(t3)
                  lbu          ra, 34(t0)
                  lb           a3, 444(s11)
                  lh           s7, -2(t3)
                  lbu          gp, -8(t6)
                  lbu          t5, 9(t3)
                  lbu          s7, 82(s11)
                  lb           a1, -4(t6)
                  lhu          a5, 50(t0)
                  sb           zero, 6(t3)
                  lb           t4, 0(t6)
                  lb           s8, 0(t6)
                  lbu          tp, 13(s11)
                  lbu          s4, -11(t0) #end load_store_instr_stream_3
                  lbu          a3, -1516(s11)
                  lbu          gp, -1(t3)
                  sb           s4, -1150(s11)
                  lb           tp, -5(t6)
                  sh           sp, 8(t3)
                  lb           s4, -1208(s11) #end load_store_instr_stream_2
                  lb           s8, -9(t6)
                  sb           t3, -14(t3)
                  sh           a3, -13(t6) #end load_store_instr_stream_1
                  sb           s4, -10(t3) #end load_store_instr_stream_0
                  la           a3, region_0+1425 #start load_store_instr_stream_3
                  la           s7, region_0+683 #start load_store_instr_stream_1
                  la           s3, region_0+487 #start load_store_instr_stream_2
                  sb           a1, 83(s3)
                  lbu          a2, 1164(s7)
                  la           a6, region_0+1044 #start load_store_instr_stream_0
                  sb           s5, 32(a3)
                  lbu          ra, -46(s3)
                  lbu          s5, -106(s3)
                  lb           t0, 4(a3)
                  lhu          s9, -41(s3)
                  lh           a0, 17(s7)
                  lb           a5, 85(s3)
                  lb           a5, -78(a3)
                  lbu          t5, -220(a3)
                  sb           a0, -186(s7)
                  lbu          a2, -114(a3)
                  lbu          t0, 244(a3)
                  lb           t2, -295(s7)
                  sh           t2, 33(s3)
                  lbu          s1, -168(s7)
                  sb           s1, -180(s3)
                  lb           s11, -235(a6)
                  sb           tp, 111(a6)
                  sh           a4, 227(s7)
                  sb           a0, 8(a3)
                  lb           t5, 210(s3)
                  lbu          s10, 193(a6)
                  lbu          s5, -143(a6)
                  lhu          a0, -153(s7)
                  lb           a5, 705(s7)
                  lbu          s9, 137(a6)
                  sb           s0, 132(a3)
                  lbu          a4, 523(s7)
                  lh           t5, 1063(s7) #end load_store_instr_stream_1
                  sb           s10, 171(a3)
                  lbu          zero, -194(s3) #end load_store_instr_stream_2
                  lb           a2, -78(a3) #end load_store_instr_stream_3
                  lb           s5, 149(a6) #end load_store_instr_stream_0
                  la           t0, region_1+161 #start riscv_load_store_hazard_instr_stream_1
                  lbu          t1, -30(t0)
                  lbu          ra, -30(t0)
                  and          t4, a5, t0
                  lb           s10, -16(t0)
                  slt          t4, t2, tp
                  lbu          t4, -16(t0)
                  auipc        s1, 815607
                  sb           s3, -12(t0)
                  sw           sp, 43(t0)
                  lbu          t2, 43(t0)
                  lw           s10, 43(t0)
                  lb           t5, 57(t0)
                  sb           a0, 54(t0)
                  sra          t2, s5, sp
                  ori          gp, t4, 1885
                  sb           t4, 54(t0)
                  lbu          s8, 54(t0) #end riscv_load_store_hazard_instr_stream_1
                  srli         a2, s11, 7
                  sub          a1, t4, s8
                  srai         a0, a6, 10
                  bltu         a5, s9, 21f
                  nop
                  slti         gp, t0, -863
                  srl          t0, t0, s7
                  ori          t0, s1, -340
                  slti         s8, a2, -137
                  xori         t0, tp, -1588
                  or           s1, s5, s5
                  slti         a0, t2, 1829
                  nop
                  bgeu         s7, ra, 27f
                  slti         a3, t2, 544
                  srl          t0, sp, s4
                  xori         s0, s1, -1202
                  srai         a3, t5, 15
                  sll          t0, s9, a7
                  bgeu         s8, tp, 32f
                  slti         ra, s6, 1820
21:               bge          s2, s5, 23f
                  slt          t1, a5, a4
23:               ori          tp, a4, -1148
                  sra          s8, t4, t3
                  add          s7, t4, s0
                  slti         a3, ra, -87
27:               srai         s3, s1, 3
                  sll          s10, zero, s8
                  xor          s7, t6, t0
                  la           t3, region_1+655 #start riscv_load_store_rand_instr_stream_5
                  sb           zero, -154(t3)
                  lh           t1, 247(t3)
                  xori         t5, s7, -1015
                  sra          a2, gp, s6
                  lb           zero, -139(t3)
                  addi         a0, a3, -1797
                  add          s9, t0, ra
                  lb           s11, -183(t3)
                  xori         t4, s7, -12
                  auipc        a5, 64110
                  sb           sp, 224(t3)
                  lhu          ra, 187(t3)
                  srli         a2, a3, 11
                  srai         s3, a7, 29
                  sll          t6, a5, s10
                  sra          s0, zero, t1
                  slli         s3, a5, 16
                  xor          t2, s10, a4
                  srli         s0, s10, 8
                  xor          a3, t0, a2
                  lbu          a7, -146(t3)
                  sltiu        s0, s8, -878
                  lb           s8, 206(t3)
                  slti         t4, a2, 125
                  slti         a1, s11, 1172
                  sb           s6, 200(t3)
                  lbu          a5, -88(t3)
                  sb           s10, 116(t3)
                  lh           a6, -115(t3)
                  andi         s9, a4, -52
                  lbu          zero, -158(t3)
                  sb           a2, -72(t3)
                  lbu          s10, -242(t3)
                  add          s1, t0, s1
                  add          s8, s2, s11
                  sll          t1, s9, t6
                  sb           s6, 176(t3)
                  srl          s1, tp, t5
                  or           s11, t1, a1
                  sh           a2, 127(t3)
                  lb           zero, -145(t3)
                  slt          zero, s8, sp
                  sb           t0, -247(t3)
                  lbu          s10, -3(t3)
                  sb           tp, 0(t3)
                  sll          gp, a7, s5
                  sra          a7, s7, s6
                  sb           gp, -178(t3)
                  lbu          zero, 8(t3)
                  lhu          s7, -205(t3)
                  auipc        s7, 301438
                  sb           s8, -152(t3)
                  sll          s5, s1, s4
                  lbu          t0, 104(t3)
                  sh           a6, 107(t3) #end riscv_load_store_rand_instr_stream_5
                  slti         s8, t2, 1341
                  or           s8, gp, s8
32:               xori         a6, s11, 971
                  bne          t0, a2, 39f
                  addi         a4, tp, -1454
                  andi         a1, gp, 1930
                  srai         s0, a6, 12
                  srli         s3, a5, 20
                  sub          t2, t0, t0
39:               xor          a4, gp, gp
                  bgeu         a4, s4, 50f
                  xor          a4, t6, s7
                  sra          a7, a2, t6
                  xori         s11, t4, -1225
                  nop
                  xori         s8, ra, 115
                  or           s9, s4, t1
                  nop
                  bne          a3, s9, 57f
                  nop
50:               sltu         zero, s4, s0
                  auipc        t1, 822394
                  andi         s3, t6, -1043
                  beq          s10, t0, 56f
                  nop
                  nop
56:               xor          ra, a3, t0
57:               blt          t6, a0, 66f
                  andi         gp, s6, -1014
                  addi         t1, t0, 1007
                  srl          a4, s6, a4
                  bne          a3, a6, 72f
                  sub          s4, s10, ra
                  slti         s4, s4, 1470
                  add          ra, t3, a4
                  andi         s7, t4, 236
66:               sub          a6, s8, t3
                  xor          a0, sp, t5
                  srl          t3, s7, gp
                  slt          t0, a5, s0
                  addi         s11, ra, 1877
                  andi         a3, t3, 486
72:               srl          s7, zero, s7
                  bne          tp, gp, 86f
                  or           t6, s1, sp
                  and          a2, t5, a6
                  bge          t3, s5, 83f
                  srli         s10, s4, 30
                  sub          a2, a2, t5
                  bltu         zero, a4, 97f
                  lui          t1, 542129
                  sra          s5, s6, ra
                  bgeu         zero, zero, 90f
83:               andi         s1, a6, 1957
                  sra          a5, s1, a2
                  xor          zero, s7, s9
86:               srl          t5, ra, s9
                  beq          a2, s7, 105f
                  beq          s4, ra, 103f
                  add          ra, a0, a1
90:               srli         s1, a2, 3
                  srl          t3, s3, s7
                  lui          a5, 412440
                  lui          zero, 990565
                  srl          a1, sp, t1
                  bne          t5, s6, 103f
                  addi         a3, s6, -468
97:               sltiu        t2, s9, -921
                  blt          s11, t3, 112f
                  bltu         s3, t0, 109f
                  sltu         t6, a1, s10
                  slti         t1, t2, -1806
                  bne          t4, s5, 109f
103:              bgeu         s6, s11, 106f
                  sub          a4, t6, t5
105:              nop
106:              slti         a5, t1, -1353
                  srai         a3, s7, 1
                  auipc        t5, 1035876
109:              srl          s5, a6, s2
                  slti         a0, s4, -1361
                  beq          gp, gp, 130f
112:              bltu         s3, zero, 121f
                  xori         s7, gp, -298
                  nop
                  or           a2, t0, a5
                  addi         t2, s4, -1462
                  bne          t2, t5, 121f
                  srli         t1, zero, 30
                  sra          t5, t2, a6
                  sltu         zero, a6, s11
121:              slti         a2, s3, 1705
                  bgeu         s3, t4, 134f
                  add          t2, a3, s2
                  srl          s9, a4, s9
                  bltu         t5, t4, 141f
                  andi         a7, t2, -1510
                  blt          t5, a1, 143f
                  bgeu         s8, s6, 145f
                  andi         t5, a3, 169
130:              xor          t0, s5, t3
                  slt          s1, s10, a7
                  sltiu        s8, t3, 1653
                  slti         s7, a3, 1893
134:              bgeu         t0, s6, 152f
                  xor          t0, t4, a1
                  bgeu         a5, a6, 156f
                  andi         a3, t6, 1416
                  slti         s10, tp, 1219
                  or           s5, s0, gp
                  sll          s8, s1, t0
141:              add          t5, tp, s7
                  xor          t5, a7, s9
143:              sll          s8, s10, t0
                  sub          a2, s3, s6
145:              addi         a2, s1, -1364
                  sra          zero, s9, t6
                  andi         s4, gp, -1783
                  lui          s8, 958285
                  bgeu         t5, s4, 159f
                  bge          s6, s7, 168f
                  or           gp, sp, t1
152:              blt          s9, a2, 166f
                  or           s1, a6, s4
                  sltu         s9, t2, a3
                  andi         s8, tp, 1747
156:              bltu         s8, gp, 159f
                  beq          a0, t4, 173f
                  sltiu        s11, zero, 1932
159:              bltu         t4, t5, 179f
                  bge          s5, a3, 167f
                  sltu         s0, s9, a1
                  xori         zero, t2, -935
                  srli         zero, tp, 6
                  sll          s8, s1, s2
                  blt          a4, t1, 174f
166:              srl          ra, sp, s0
167:              sra          t6, a2, s4
168:              add          s3, t2, s6
                  blt          t4, s11, 178f
                  andi         t1, s6, 882
                  bltu         s10, a4, 188f
                  srli         a1, a1, 22
173:              or           s11, a4, s8
174:              xor          s3, a3, sp
                  srai         t3, a7, 10
                  sltiu        tp, s8, 1083
                  sll          s1, a0, s11
178:              auipc        tp, 254516
179:              sll          ra, s7, t1
                  beq          s9, t4, 192f
                  addi         t5, gp, 1197
                  srai         s10, a7, 26
                  blt          a4, s1, 189f
                  and          s4, s10, t0
                  ori          t0, s9, 1199
                  srli         s1, zero, 15
                  sltiu        a4, t5, -1882
188:              bgeu         a2, zero, 191f
189:              xor          a4, s7, t3
                  and          a4, a0, a3
191:              slli         a1, s11, 4
192:              slt          s3, gp, a3
                  and          s1, s1, t0
                  xor          s0, tp, t0
                  srai         tp, a5, 6
                  lui          s11, 69925
                  bge          t1, a6, 215f
                  bge          a1, s1, 206f
                  slti         t1, zero, -185
                  sub          t1, gp, s0
                  xori         s0, s6, -1641
                  xor          s11, s10, a2
                  slli         s0, s8, 16
                  bge          s2, t5, 222f
                  nop
206:              xori         a7, t1, 1142
                  addi         t0, zero, -103
                  andi         a2, t5, -1063
                  bltu         s11, s8, 222f
                  srli         s1, gp, 31
                  sltu         t2, t5, t0
                  ori          a3, t6, 297
                  addi         a6, gp, -405
                  slt          s4, s5, s3
215:              add          s11, s2, t4
                  auipc        t0, 474912
                  addi         s10, s6, 1277
                  sub          t3, ra, a5
                  bltu         s4, s9, 230f
                  xor          s1, t2, a4
                  xori         a5, sp, -688
222:              bgeu         t6, t3, 241f
                  lui          s3, 730876
                  or           t2, s7, s10
                  slli         a3, s10, 21
                  addi         s8, s11, 1145
                  sub          s5, a2, s3
                  andi         s8, a7, 598
                  srai         t6, s11, 19
230:              nop
                  and          a1, sp, s0
                  andi         s7, t2, 1713
                  addi         a6, gp, 1703
                  auipc        t2, 846545
                  auipc        ra, 335090
                  srli         s0, sp, 16
                  slt          s9, a4, a6
                  bgeu         zero, a4, 242f
                  bgeu         t2, a5, 254f
                  or           a4, s6, s2
241:              sltu         s3, a7, t1
242:              blt          ra, s1, 251f
                  xor          s10, a5, zero
                  add          s1, a1, a7
                  srli         gp, ra, 1
                  nop
                  or           a0, sp, s4
                  slt          a6, zero, a5
                  or           s1, a6, s1
                  slt          s3, s8, t1
251:              beq          a4, s5, 261f
                  bltu         zero, a1, 268f
                  or           t4, s4, sp
254:              and          a4, ra, t2
                  slli         s8, a6, 12
                  slli         t3, a3, 17
                  xor          t2, tp, s2
                  blt          t6, s7, 265f
                  blt          s0, s11, 267f
                  andi         s4, s10, 1271
261:              xori         t1, s11, -720
                  nop
                  sltu         s5, t0, a6
                  lui          s5, 790661
265:              ori          ra, a6, 1918
                  and          t4, zero, s2
267:              srl          s7, sp, s8
268:              sll          s8, s4, a2
                  ori          s0, a1, 5
                  srli         s1, t3, 28
                  sltiu        s7, a4, -453
                  srai         t2, s7, 29
                  slti         s5, t0, -1823
                  slli         a6, t3, 4
                  sltu         ra, t6, t3
                  add          s8, t0, s2
                  sra          a0, s1, a6
                  srl          zero, zero, s1
                  slt          a7, a1, a0
                  slli         s5, t5, 9
                  bne          a4, a1, 295f
                  bge          s3, t1, 284f
                  ori          t5, a2, 789
284:              blt          s5, s11, 297f
                  srai         t4, a5, 10
                  sltiu        t3, s10, 1509
                  sra          a6, a4, t5
                  add          ra, a3, t5
                  slt          t0, s9, t6
                  srli         gp, s2, 7
                  slli         s9, a1, 2
                  slti         t5, s9, -594
                  blt          t3, t0, 311f
                  srli         a6, s0, 5
295:              srl          t2, zero, a1
                  or           a2, t3, s7
297:              or           a0, a4, s8
                  nop
                  blt          sp, s2, 310f
                  lui          s4, 67347
                  sub          s7, t1, s6
                  sltiu        a1, a1, -1690
                  sltu         s11, s0, s10
                  slti         s3, gp, 1926
                  slt          t6, s8, t5
                  xor          t0, a0, a2
                  srli         a1, sp, 29
                  bltu         a5, t6, 315f
                  sra          s3, t0, a3
310:              bgeu         a5, gp, 322f
311:              sll          a7, s4, ra
                  sll          s3, s6, gp
                  ori          ra, s9, -73
                  bltu         s2, s8, 332f
315:              bltu         tp, t4, 319f
                  lui          t3, 252375
                  lui          s1, 972942
                  lui          gp, 485855
319:              auipc        tp, 649410
                  andi         s0, zero, -1927
                  xori         t0, ra, -1135
322:              slt          t4, sp, a1
                  xori         a3, a3, 989
                  bltu         s0, a6, 342f
                  slti         a6, a3, 283
                  sra          s8, t0, gp
                  slti         t0, t2, 103
                  nop
                  xor          a5, s9, t1
                  nop
                  add          a6, t3, zero
332:              slt          s5, a2, s4
                  xori         a7, t1, 263
                  and          s3, s8, a4
                  xori         t3, t1, 1431
                  blt          s2, t1, 354f
                  bge          t6, t1, 354f
                  srl          s0, s9, ra
                  or           a3, s2, s8
                  addi         ra, t6, 1355
                  bne          a4, a1, 357f
342:              sra          s11, t1, s1
                  xor          s8, t2, tp
                  bltu         t0, ra, 364f
                  bge          a7, a2, 347f
                  srai         t3, s4, 0
347:              srli         a4, gp, 5
                  srai         s0, a7, 20
                  slt          t3, t3, s11
                  and          s5, tp, s4
                  bltu         s2, a4, 364f
                  beq          zero, s5, 361f
                  add          t5, s7, t6
354:              xor          t3, s10, t4
                  sra          t6, s6, s0
                  xori         s9, s10, 378
357:              bne          s5, a4, 371f
                  sra          t4, s9, a6
                  srli         s11, t5, 2
                  bne          t4, s11, 378f
361:              or           a5, s2, t6
                  slti         s0, t0, -2002
                  sra          tp, s10, s7
364:              lui          a2, 972955
                  beq          s11, t2, 384f
                  add          a2, a6, a6
                  or           t3, s7, t5
                  srai         s3, s9, 17
                  nop
                  bne          t6, t5, 380f
371:              beq          a3, ra, 378f
                  bge          s1, a1, 387f
                  nop
                  andi         s9, s11, 1571
                  addi         a5, s7, 474
                  auipc        s10, 523953
                  addi         gp, a3, 1432
378:              slt          a5, a7, s8
                  lui          gp, 730045
380:              bne          sp, s9, 383f
                  bne          s8, t1, 391f
                  slt          ra, s9, s10
383:              sra          t0, t5, s10
384:              beq          s9, zero, 392f
                  xori         s0, s5, 862
                  slti         zero, s2, -1182
387:              bne          s2, s7, 401f
                  nop
                  srl          s11, s3, s9
                  sll          s8, tp, t1
391:              auipc        gp, 359516
392:              lui          s4, 842873
                  sltiu        t5, a4, -211
                  slli         tp, a4, 14
                  nop
                  lui          a1, 474556
                  nop
                  bne          s5, a1, 406f
                  slli         a5, s9, 12
                  bge          s1, a3, 416f
                  la           t6, region_1+374 #start load_store_instr_stream_1
                  la           t1, region_1+76 #start load_store_instr_stream_0
                  la           a2, region_1+629 #start load_store_instr_stream_3
                  la           a3, region_1+1862 #start load_store_instr_stream_2
                  lb           s11, -35(a2)
                  lbu          a5, 16(t6)
                  sb           t4, 61(a2)
                  sb           t5, -8(t6)
                  lbu          t2, -2(t1)
                  lb           a0, -62(a2)
                  lb           s0, 61(t6)
                  lb           a1, -104(a3)
                  sb           t5, -3(t1)
                  lbu          s5, -35(t6)
                  lbu          t3, 54(a2)
                  lbu          t3, 40(t6)
                  lb           tp, 8(t1)
                  lbu          a4, -199(a3)
                  sb           t3, 11(t6)
                  lhu          a4, 48(t6)
                  sb           t1, 15(a2)
                  lhu          a0, -220(a3)
                  sh           t5, -76(a3)
                  lb           s7, -51(a3)
                  sb           s0, 10(t1)
                  lb           tp, 3(t6)
                  sb           a6, -34(a2)
                  lbu          a7, -3(t1)
                  lb           gp, 21(t6) #end load_store_instr_stream_1
                  sb           t2, 51(a2)
                  lb           a6, -5(t1)
                  lb           s11, -16(a2)
                  sw           a1, -8(t1)
                  sw           t3, -218(a3) #end load_store_instr_stream_2
                  lb           s9, 47(a2) #end load_store_instr_stream_3
                  lh           t2, 6(t1) #end load_store_instr_stream_0
401:              bge          s7, a6, 410f
                  auipc        a2, 242686
                  xor          t3, a0, a3
                  auipc        s0, 109259
                  addi         a5, sp, -327
406:              and          a2, tp, tp
                  xori         s9, s0, -1084
                  auipc        t3, 550639
                  srai         a2, a5, 1
410:              bgeu         t6, t1, 416f
                  sltu         t2, t1, s1
                  auipc        s9, 117705
                  sll          s9, a7, s0
                  ori          ra, s7, -1863
                  sub          zero, t0, s2
416:              bge          a6, a3, 425f
                  srli         s4, a0, 11
                  xori         a4, a0, 1767
                  andi         t0, zero, -1882
                  sltiu        a3, s9, -793
                  ori          a6, s8, 324
                  sltiu        a6, t0, -1145
                  sltu         t2, a3, t2
                  sll          s3, a7, a7
425:              beq          t3, t3, 438f
                  srai         t0, a0, 3
                  sub          t5, a5, tp
                  bge          a7, tp, 431f
                  srai         a0, s4, 4
                  addi         t5, tp, -1826
431:              srli         s9, t3, 2
                  sll          t0, a1, a7
                  auipc        t5, 71479
                  add          t6, s1, s6
                  blt          zero, gp, 453f
                  srai         t5, s2, 13
                  and          a7, a6, gp
438:              srl          s8, s9, gp
                  bne          zero, s6, 448f
                  slti         ra, t3, -1073
                  xor          s11, a4, a7
                  sub          a1, a2, s2
                  xori         a5, a4, 212
                  nop
                  bge          s9, s7, 455f
                  addi         s0, s0, 1231
                  ori          s5, s9, 1209
448:              xori         t0, t1, -1872
                  xor          s5, a1, t1
                  add          t5, s10, s1
                  or           a1, s6, a0
                  and          t1, ra, s5
453:              bltu         a7, tp, 456f
                  sub          t1, s3, sp
455:              slli         s4, t1, 7
456:              sltu         s1, sp, s9
                  slli         a1, a3, 14
                  and          t3, s4, s1
                  sltu         s3, t6, s1
                  la           s10, region_1+1082 #start load_store_instr_stream_2
                  sh           s6, -14(s10)
                  la           a6, region_1+1966 #start load_store_instr_stream_1
                  la           ra, region_1+1214 #start load_store_instr_stream_0
                  lbu          s0, -84(a6)
                  lbu          a4, -6(s10)
                  lbu          a3, -141(a6)
                  sb           s3, -93(ra)
                  sw           gp, 702(ra)
                  lb           t4, 12(s10)
                  lbu          t6, -181(a6)
                  lh           tp, 416(ra)
                  lbu          s9, 29(a6)
                  lb           t4, -113(a6)
                  sb           a4, 385(ra)
                  sb           s7, -78(a6)
                  lh           gp, -14(s10)
                  lbu          s8, 29(a6)
                  sw           a2, -58(a6) #end load_store_instr_stream_1
                  sw           ra, 14(s10) #end load_store_instr_stream_2
                  lbu          s5, 284(ra) #end load_store_instr_stream_0
                  auipc        t1, 309349
                  add          gp, a3, t0
                  andi         s1, s9, 156
                  srl          t0, zero, sp
                  beq          sp, s6, 482f
                  andi         t4, a6, -551
                  bne          a7, s8, 473f
                  bne          t4, t2, 483f
                  bgeu         a5, t0, 472f
                  add          t2, a6, t2
                  add          s4, s7, a3
                  srli         t6, t6, 23
472:              sra          tp, s5, s1
473:              beq          s11, t1, 479f
                  andi         s9, t0, 136
                  xori         gp, a0, 828
                  addi         t3, s7, -1426
                  or           a1, s11, a1
                  srl          s4, t2, s1
479:              sub          t3, sp, s3
                  and          a5, s7, a3
                  ori          t3, s1, 1705
482:              blt          s3, a7, 494f
483:              slt          s8, a6, s0
                  xor          s1, s7, a1
                  addi         a3, t6, 764
                  and          s1, zero, s10
                  slt          ra, a1, a6
                  srl          a2, sp, s6
                  slli         a1, t1, 7
                  addi         t0, t0, -1011
                  sltu         s1, t6, a0
                  sltiu        s11, a0, 1908
                  sltu         a7, zero, ra
494:              addi         s9, zero, -1227
                  sub          a0, zero, t5
                  xori         a6, a7, 1056
                  srl          a4, tp, a7
                  beq          a2, t1, 507f
                  sub          a3, s10, s2
                  sra          a6, a7, a2
                  or           s8, gp, a4
                  bge          t5, tp, 518f
                  and          a3, s6, s11
                  addi         t1, t5, -1544
                  xor          a4, s3, a6
                  slli         a2, s10, 20
507:              slli         t4, s9, 10
                  slli         t5, s8, 28
                  sll          s5, ra, s11
                  srai         zero, t1, 8
                  add          a0, s10, a4
                  sltiu        tp, t1, 1628
                  andi         a7, a4, -1745
                  srl          a6, a2, s2
                  blt          a7, s1, 526f
                  bge          s3, ra, 518f
                  sltiu        a6, s8, -997
518:              slt          zero, a7, t4
                  xor          t6, t6, t4
                  xor          gp, gp, s11
                  nop
                  lui          s3, 768996
                  auipc        ra, 878113
                  xor          zero, t1, zero
                  slt          s10, a6, t3
526:              srli         s9, a5, 0
                  auipc        s1, 449042
                  sub          gp, a6, a3
                  andi         s7, a6, -1847
                  xori         ra, s2, -1454
                  lui          t6, 650628
                  addi         a7, t3, 925
                  bge          t5, t6, 546f
                  bge          sp, t6, 551f
                  bltu         sp, a3, 548f
                  andi         t1, s0, 497
                  srl          a5, a2, a4
                  xor          a7, gp, s11
                  srai         s3, t6, 30
                  auipc        t6, 834651
                  sll          s7, t5, s10
                  srai         s4, s2, 23
                  lui          s5, 183543
                  addi         gp, a7, 1916
                  lui          s10, 1011635
546:              lui          s3, 348158
                  slti         s7, a7, 552
548:              xor          a0, sp, ra
                  andi         ra, s1, 91
                  slli         t4, a0, 17
551:              and          t3, t0, t2
                  beq          a1, sp, 567f
                  bge          a5, t3, 561f
                  or           t1, a3, s0
                  sll          s1, s0, s8
                  bne          a6, t3, 575f
                  blt          s2, t6, 567f
                  lui          gp, 211295
                  beq          a6, a0, 562f
                  blt          s0, t1, 574f
561:              addi         s1, t2, -1640
562:              bgeu         t2, a6, 580f
                  sll          a2, a2, t6
                  addi         a7, sp, -1859
                  xori         a0, t5, 1019
                  xori         a7, a1, -1505
567:              and          a0, tp, s0
                  lui          a4, 727747
                  bne          s10, a6, 576f
                  bltu         t2, t1, 578f
                  slti         t2, s6, -615
                  slt          ra, t0, s4
                  ori          s8, s2, 1339
574:              nop
575:              bge          a2, tp, 589f
576:              srl          a1, s8, s0
                  andi         s0, s5, -1237
578:              bltu         a0, s8, 587f
                  srai         a1, s7, 27
580:              lui          a4, 3932
                  bgeu         a6, s3, 599f
                  addi         s0, a0, 121
                  bne          s2, t1, 603f
                  ori          s1, s9, -782
                  slti         a1, tp, 678
                  xor          s5, s3, a1
587:              sltiu        t4, sp, 924
                  or           s5, s7, t1
589:              sll          a1, a3, t1
                  xori         a7, zero, 1931
                  beq          s9, t1, 603f
                  srl          gp, t6, a0
                  or           t0, s7, a6
                  beq          a4, s5, 604f
                  slti         zero, s7, -365
                  xor          t6, sp, a7
                  bltu         t4, tp, 615f
                  bgeu         t5, s5, 606f
599:              srl          s5, s9, s4
                  sub          a1, sp, gp
                  and          a5, ra, s4
                  lui          a3, 541764
603:              add          a4, a4, s10
604:              xori         a6, s1, -61
                  auipc        s9, 124129
606:              or           s4, t1, s10
                  srai         a4, s0, 27
                  slt          t5, t1, s4
                  ori          s1, t0, 1055
                  bge          s3, a6, 623f
                  xor          s8, ra, zero
                  or           s8, a5, a2
                  add          t2, tp, a2
                  xori         s7, zero, -1426
615:              bgeu         a2, t2, 633f
                  nop
                  sub          s7, s9, s5
                  and          a3, s2, s5
                  nop
                  and          t1, sp, s11
                  addi         s4, a2, -29
                  bltu         s2, s5, 624f
623:              slt          ra, a0, t4
624:              or           s7, a4, zero
                  add          a4, t5, t2
                  andi         s11, a7, -388
                  addi         a0, s5, 579
                  bge          s9, s7, 641f
                  xor          t2, a7, sp
                  and          tp, t1, ra
                  xori         a4, a5, 810
                  blt          zero, t2, 641f
633:              add          a2, gp, s7
                  add          a5, t0, a6
                  andi         a7, t5, -960
                  ori          a4, s8, -344
                  srl          s11, s10, s8
                  auipc        a5, 969643
                  sll          s4, t2, s11
                  sub          a6, s9, s5
641:              andi         a1, s1, 1165
                  slt          a3, t1, t2
                  lui          s4, 423658
                  srl          a1, a2, s0
                  xor          tp, s4, t5
                  srl          ra, ra, s7
                  srli         s0, a6, 22
                  srai         s9, s10, 29
                  lui          t4, 1009437
                  auipc        a2, 558845
                  beq          t1, s4, 658f
                  andi         t2, gp, 1579
                  xor          t3, zero, zero
                  slli         zero, s10, 31
                  slli         s4, s10, 14
                  add          a5, s2, ra
                  ori          gp, t4, -258
658:              andi         a4, gp, -1391
                  bgeu         a2, a6, 662f
                  blt          t2, a2, 668f
                  sub          a3, s7, a6
662:              bltu         gp, t3, 679f
                  bge          s2, s4, 669f
                  slti         s7, s3, 148
                  bgeu         t1, s9, 669f
                  bge          s4, s10, 669f
                  bge          s11, s3, 676f
668:              beq          t6, t1, 679f
669:              srli         s10, gp, 29
                  sub          s8, s2, s0
                  slt          s7, s11, zero
                  and          s9, s9, s3
                  addi         s0, a7, -472
                  bne          s8, ra, 684f
                  sub          t6, t0, gp
676:              and          a3, s1, s3
                  bge          s1, a1, 697f
                  xori         s1, s5, -707
679:              add          s3, a3, sp
                  xor          gp, a6, s2
                  add          s0, tp, a1
                  xor          s9, s1, a5
                  bne          zero, zero, 698f
684:              slti         s10, gp, 1941
                  bne          t2, t5, 699f
                  nop
                  bltu         a0, s10, 699f
                  sll          a3, ra, a1
                  slli         s5, s11, 4
                  sub          a2, tp, t5
                  bltu         t4, a4, 699f
                  xori         s9, t2, 1666
                  add          s3, s3, t5
                  add          a7, zero, t3
                  srli         s9, a4, 30
                  slli         t4, s8, 4
697:              xor          a7, tp, s6
698:              blt          a5, s10, 699f
699:              addi         s11, s5, 1951
                  lw           tp, 4(s2)
                  sltiu        t1, s2, -395
                  addi         s2, s2, 8
                  or           s4, t2, s0
                  add          a3, gp, s2
                  slli         s9, t2, 11
                  nop
                  and          s3, a6, a4
                  sltu         a4, t3, zero
1370:             addi x7, x4, 1
1370:             jalr x7, x7, 0
sub_1:            addi         s2, s2, -52
                  ori          s5, zero, -1357
                  slti         a7, s8, 1234
                  sltiu        s11, t2, 1209
                  sw           tp, 4(s2)
                  srli         t2, s11, 23
                  and          ra, s4, a5
                  sub          t6, tp, t0
                  ori          a7, gp, -23
                  slt          a4, s4, a6
                  bltu         s11, t3, 14f
                  lui          zero, 497615
                  or           t1, a7, s7
                  bltu         s4, a2, 9f
                  beq          a1, a3, 12f
9:                lui          s7, 841545
                  sltu         s9, s7, s3
                  add          a4, a4, t3
12:               bne          s10, a1, 16f
                  sra          tp, a6, s4
14:               slli         tp, sp, 27
                  lui          s3, 335520
16:               bltu         s4, a2, 25f
                  sltu         s5, ra, gp
                  andi         t2, a3, 1618
                  lui          s10, 880243
                  and          s9, s3, a5
                  ori          s7, t5, -1023
                  slti         s8, zero, 1351
                  andi         s7, sp, 1938
                  slti         t0, a6, 1066
25:               sltu         t2, t1, a1
                  lw           tp, 4(s2)
                  add          a6, a0, s9
                  addi         a6, s2, 1711
                  addi         s2, s2, 52
                  or           t1, s4, t3
37:               addi x15, x4, 0
37:               jalr x15, x15, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x22, x18, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x31, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x31, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x31, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x31, x29, ecall_handler
                  li x29, 0x1
                  beq x31, x29, instr_fault_handler
                  li x29, 0x5
                  beq x31, x29, load_fault_handler
                  li x29, 0x7
                  beq x31, x29, store_fault_handler
                  li x29, 0xc
                  beq x31, x29, pt_fault_handler
                  li x29, 0xd
                  beq x31, x29, pt_fault_handler
                  li x29, 0xf
                  beq x31, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x18, x22, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
