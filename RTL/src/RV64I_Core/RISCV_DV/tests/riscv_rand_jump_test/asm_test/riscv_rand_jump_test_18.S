.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x9951aa3
                  li x3, 0x0
                  li x4, 0xfb4916f7
                  li x5, 0xa
                  li x6, 0xf5f42c7a
                  li x7, 0x8a3fb43c
                  li x8, 0xf6424f9b
                  li x9, 0x80000000
                  li x12, 0x0
                  li x13, 0x8
                  li x14, 0x80000000
                  li x15, 0xf9813f7f
                  li x16, 0xf74e69d1
                  li x17, 0x80000000
                  li x18, 0xf76ecfb5
                  li x19, 0x1
                  li x20, 0x8
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xf70c6299
                  li x25, 0xfc28fa17
                  li x26, 0xb
                  li x27, 0xfa1fe183
                  li x28, 0xf82850f2
                  li x29, 0x80000000
                  li x30, 0xeba55cb7
                  li x31, 0xc
                  la x11, user_stack_end
main:             srl          t1, s3, a6
                  sub          t3, a5, t0
                  sra          t5, s0, s0
                  srl          s9, s8, gp
                  slt          s2, s8, zero
                  add          t1, gp, t3
                  sltiu        t0, zero, 1300
                  addi         t1, a3, -1334
                  lui          t4, 774968
                  srl          ra, gp, s4
                  srli         s6, zero, 29
                  xori         a6, s1, -1290
                  and          t1, t1, s9
                  slli         s10, s1, 16
                  bne          s10, a4, 20f
                  sll          s7, ra, t0
                  andi         s1, a7, -1453
                  sltu         a3, s4, a5
                  and          tp, t3, t3
                  slti         s11, s6, 1232
20:               xori         s0, t0, 1359
                  xori         a2, t3, -1093
                  xor          s6, s5, a2
                  or           s8, s2, s10
                  lui          s7, 578044
                  beq          s4, s5, 34f
                  add          t2, a2, s11
                  bltu         a4, tp, 36f
                  xor          t1, s1, s1
                  blt          t0, s11, 30f
30:               and          s1, t0, a2
                  sub          s0, tp, ra
                  srl          s11, t2, a1
                  srl          a5, s6, s8
34:               xori         a5, s9, 1399
                  auipc        a7, 232272
36:               bgeu         sp, a7, 50f
                  srai         t1, a2, 9
                  sltiu        t4, s6, 1512
                  nop
                  sll          a5, t0, s10
                  slt          t3, t2, s8
                  lui          gp, 12881
                  xor          ra, s3, sp
                  blt          a7, s7, 47f
                  sub          sp, a1, a3
                  blt          s4, s3, 60f
47:               bltu         zero, t5, 54f
                  beq          s0, s9, 54f
                  sra          a4, s5, s1
50:               sll          a2, t2, a4
                  andi         t0, t5, 1057
                  beq          a4, t5, 59f
                  sltiu        zero, s11, -1757
54:               lui          t2, 739191
                  slli         s1, a7, 19
                  bltu         zero, gp, 74f
                  nop
                  nop
59:               xori         s8, t1, -1115
60:               sub          s7, s2, s7
                  slt          s7, a0, sp
                  add          a4, t0, tp
                  and          t5, s4, t6
                  srai         s2, s2, 27
                  add          t3, zero, s3
                  addi         s4, t0, -948
                  nop
                  sltu         s2, s0, t5
                  and          s11, sp, a0
                  andi         t5, a1, -1319
                  or           a2, s0, s0
                  bne          a7, a0, 89f
                  blt          tp, t0, 87f
74:               srl          zero, s9, s5
                  sub          ra, zero, s1
                  sub          a7, s6, tp
                  blt          a6, a6, 91f
                  or           a6, t5, s6
                  slli         gp, a5, 24
                  srli         t0, a3, 31
                  sltiu        t0, s1, 1857
                  slli         a3, s8, 16
                  bgeu         a6, a0, 88f
                  blt          t4, s1, 103f
                  bltu         s4, s2, 101f
                  nop
87:               xori         a4, t2, 1743
88:               slti         s10, t1, -148
89:               slti         s9, a3, 93
                  auipc        gp, 994189
91:               xor          a2, a6, ra
                  blt          t3, zero, 111f
                  or           a6, a2, s11
                  srl          s2, ra, t0
                  sub          s10, s0, a3
                  srli         s9, a7, 28
                  la           t2, sub_1
                  auipc        t1, 341936
                  sll          s10, s1, t6
                  srl          a5, tp, sp
                  addi         t2, t2, -484
                  add          s8, a2, zero
                  add          a4, a0, s11
                  srl          s6, s1, a6
                  addi         a2, a3, 459
                  blt          a7, a4, main_j1 #branch to jump instr
                  or           a2, s2, s11
main_j1:          jalr         a7, t2, 484 #jump main -> sub_1
                  bltu         s7, tp, 110f
                  xor          zero, s7, a4
                  bge          ra, t6, 115f
                  bge          tp, t6, 109f
                  bne          s3, t0, 113f
                  xor          t5, s7, a3
101:              nop
                  slli         t2, ra, 2
103:              nop
                  or           a6, a7, a1
                  andi         a2, a3, -807
                  xor          a7, a0, t2
                  sltiu        s8, a3, 1268
                  or           s11, a4, t1
109:              or           a4, a1, t6
110:              sra          a5, t4, t1
111:              bgeu         a1, tp, 121f
                  srai         a6, s7, 7
113:              sltiu        s5, t0, -1098
                  srl          t2, a1, s4
115:              sub          a5, t3, s9
                  blt          t5, a5, 121f
                  slt          a6, a6, a0
                  nop
                  sll          s4, t1, ra
                  andi         t6, t5, -1970
121:              bne          a0, t1, 137f
                  lui          s7, 380640
                  slt          gp, s7, zero
                  sltu         t0, t0, gp
                  bge          s0, s10, 143f
                  bgeu         t3, t3, 142f
                  sltu         s1, s11, t1
                  bgeu         a0, a3, 132f
                  and          t5, s2, s2
                  srli         t3, s3, 13
                  lui          t4, 1017695
132:              blt          s5, s7, 147f
                  slt          a4, s11, t0
                  sltiu        a5, a0, 896
                  blt          s7, tp, 155f
                  srl          t4, s9, t5
137:              sll          gp, a1, s1
                  slt          sp, a1, t4
                  sltu         t5, a0, t3
                  slti         s10, s1, -730
                  bgeu         a3, a1, 158f
142:              bne          a0, a6, 160f
143:              bltu         a4, t1, 152f
                  srli         a7, t1, 0
                  add          a6, t5, tp
                  add          t3, a4, zero
147:              addi         a3, s6, -552
                  sll          sp, tp, a1
                  or           t0, gp, s0
                  auipc        a3, 183277
                  sltiu        tp, t3, -747
152:              sll          s7, t4, s3
                  bne          s4, s5, 167f
                  srli         s7, s10, 12
155:              bne          s8, a4, 174f
                  andi         a3, a6, 627
                  beq          a6, a3, 162f
158:              beq          s3, zero, 168f
                  lui          s6, 39153
160:              srl          zero, s3, s3
                  slti         s7, a7, -1479
                  la           s9, region_0+1359 #start riscv_load_store_rand_instr_stream_0
                  andi         s7, a1, 634
                  andi         t1, s7, -775
                  lb           tp, 46(s9)
                  xori         s10, t4, -707
                  sltu         s2, s3, tp
                  sb           sp, -24(s9)
                  sra          zero, a4, a5
                  add          t2, a7, s0
                  xor          t4, t6, t5
                  sb           s0, -57(s9)
                  addi         s7, a7, -955
                  addi         a5, s6, 1542
                  lbu          a6, -22(s9)
                  srli         t4, s3, 11
                  xor          a2, s5, gp
                  lb           s4, 20(s9)
                  ori          s4, a4, -1781
                  sltiu        s2, s6, -116
                  sltiu        s7, s3, 1622
                  andi         a3, s8, 903
                  lb           t4, 30(s9)
                  sb           a0, -51(s9)
                  lbu          a6, -24(s9)
                  slt          s5, s2, a2
                  lui          tp, 765626
                  lb           a6, 24(s9)
                  sb           t2, 60(s9)
                  sltu         s1, a3, s11
                  slli         ra, a2, 29
                  xori         a4, s6, -1046
                  lbu          a7, -46(s9) #end riscv_load_store_rand_instr_stream_0
162:              sra          a3, sp, s7
                  sll          a4, t4, a3
                  sltiu        t1, a5, -490
                  beq          zero, s6, 170f
                  ori          s5, a3, -1349
167:              ori          t5, s5, 1152
168:              slli         a7, gp, 19
                  bltu         a5, s3, 178f
170:              bgeu         a4, ra, 188f
                  bltu         s5, t1, 187f
                  bge          s0, s10, 187f
                  xor          sp, sp, t3
174:              bge          a7, a1, 180f
                  bgeu         s2, t3, 181f
                  srai         s11, a0, 12
                  nop
178:              add          s0, s9, a2
                  slti         sp, a5, -283
180:              auipc        s8, 1012400
181:              xor          t3, t6, s9
                  addi         tp, gp, -2007
                  sra          s10, a1, a4
                  bltu         t1, s7, 193f
                  sltu         ra, s4, s10
                  sll          t1, s5, t1
187:              lui          s4, 379345
188:              sltiu        t3, s1, 433
                  lui          tp, 931339
                  and          s0, gp, t5
                  or           a6, t1, t5
                  srai         s7, a5, 24
193:              xor          t1, a0, a3
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         a1, a1, -16
                  and          t3, s5, tp
                  sltiu        gp, t4, -1232
                  slt          s11, t0, s1
                  slli         t4, tp, 4
                  srli         t6, s7, 16
                  sw           a7, 4(a1)
                  addi         t0, a1, -273
                  xor          a5, s2, a2
                  slt          zero, t2, t2
                  srai         a6, a0, 17
                  bne          zero, a4, 16f
                  beq          s1, s2, 9f
                  sub          t3, a6, s4
                  bne          t6, s8, 8f
                  and          zero, s2, a0
8:                sra          a2, s2, tp
9:                and          s8, tp, s8
                  sltu         a2, t4, t4
                  sll          a3, gp, sp
                  bgeu         s8, s6, 22f
                  sll          a5, s10, ra
                  lui          s9, 999502
                  slti         t0, t4, -220
16:               xor          s9, a4, s4
                  xori         s0, sp, -298
                  slti         sp, s8, -1917
                  ori          s6, a5, -1246
                  sll          zero, s7, t6
                  xori         s8, t5, 1965
22:               beq          a7, s1, 33f
                  sra          a2, s11, t2
                  sra          t6, t2, a7
                  addi         tp, t1, -1040
                  add          a4, s3, s11
                  and          s7, t4, s5
                  slt          t4, s2, t1
                  bltu         s6, s8, 33f
                  blt          a7, a2, 33f
                  srl          gp, t0, a4
                  and          t5, s0, s1
33:               sltiu        ra, a4, -1873
                  sub          t3, sp, s7
                  ori          s5, a6, -898
                  addi         zero, t5, 53
                  andi         t6, t5, -993
                  add          ra, zero, t4
                  lw           a7, 4(a1)
                  sll          s8, s6, t2
                  addi         a1, a1, 16
                  srli         s8, s0, 21
                  slli         tp, t4, 1
                  xor          s10, t5, tp
53:               addi x13, x17, 1
53:               jalr x13, x13, 0
sub_2:            bgeu         a0, s3, sub_2_stack_p
                  auipc        a4, 1007775
                  xori         ra, a3, -94
                  auipc        a2, 720962
                  auipc        tp, 953596
                  sub          s5, s3, s8
sub_2_stack_p:    addi         a1, a1, -56
                  sw           a7, 4(a1)
                  slli         s10, t3, 12
                  or           t4, a3, s11
                  la           s4, region_1+1716 #start riscv_load_store_rand_instr_stream_6
                  lbu          a2, -45(s4)
                  sh           a4, 34(s4)
                  sb           s4, -35(s4)
                  sltiu        t3, a6, -1718
                  lh           sp, 34(s4)
                  sltiu        a5, a1, 1659
                  lbu          a7, -50(s4)
                  lbu          s11, -37(s4)
                  lbu          a2, 3(s4)
                  lb           zero, 59(s4)
                  lbu          s1, -55(s4)
                  andi         t6, s3, 82
                  slti         ra, s5, 1921
                  sb           s0, -9(s4)
                  lb           a6, -31(s4)
                  slti         t2, s8, 298
                  ori          a2, ra, 1509
                  sb           s11, 11(s4)
                  sb           sp, -15(s4)
                  sb           s10, 17(s4)
                  andi         s9, s3, 1128
                  nop
                  sh           s0, 44(s4)
                  lb           s6, 47(s4)
                  srli         t5, sp, 12
                  auipc        zero, 444241
                  lbu          s10, 61(s4)
                  lbu          s11, -7(s4)
                  nop
                  lh           s2, -12(s4)
                  sh           s1, -22(s4)
                  lbu          s5, 33(s4)
                  slti         t3, t2, 1793
                  srl          a6, a1, s8
                  lb           zero, -43(s4)
                  srl          s1, s4, a4
                  sub          t4, s10, s4
                  lbu          t5, 40(s4)
                  lb           gp, 30(s4)
                  ori          s10, s6, -128
                  slti         s7, s1, 1991
                  sb           a5, 0(s4)
                  or           ra, s4, s3
                  sb           ra, -22(s4)
                  slt          gp, t1, a5
                  sra          s7, s9, gp
                  lbu          s5, 39(s4) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+215 #start riscv_load_store_rand_instr_stream_0
                  lhu          s0, -5(sp)
                  srli         tp, s10, 5
                  addi         a6, t6, -1615
                  sb           zero, -12(sp)
                  lb           t6, -14(sp)
                  sra          t3, a2, gp
                  lb           s6, -12(sp)
                  lh           a6, 15(sp)
                  sll          t5, t3, sp
                  or           gp, s9, a2
                  addi         t5, s9, 466
                  nop
                  srai         a3, tp, 22
                  lb           s2, 16(sp)
                  sb           a3, 4(sp)
                  nop
                  sltu         t2, ra, a6
                  slt          a2, a6, t4
                  lbu          t1, 1(sp)
                  sub          zero, s8, s3
                  sb           s3, 6(sp)
                  nop
                  lb           a6, -3(sp)
                  lb           gp, -15(sp)
                  xori         a2, s7, 1012
                  sub          gp, t0, t6
                  sra          zero, t5, s8
                  andi         s9, s11, 145
                  lbu          s11, -15(sp)
                  slli         a5, t4, 3
                  xori         a5, s11, -1601
                  lbu          s10, 8(sp)
                  slt          a2, t6, t6
                  nop
                  sb           a1, -1(sp)
                  xori         s1, s9, -628
                  srai         t4, s7, 30
                  sb           a1, -8(sp)
                  sra          a4, a2, sp
                  and          s9, t4, t3
                  lbu          t1, 4(sp)
                  slt          s8, a1, t4
                  lui          s6, 437415
                  lb           gp, 6(sp)
                  lb           gp, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1402 #start riscv_load_store_rand_instr_stream_2
                  xori         s11, a5, -1034
                  sll          s4, s3, a6
                  srl          zero, a4, zero
                  sh           s7, -404(sp)
                  lb           s2, -16(sp)
                  lbu          t6, 48(sp)
                  sra          a7, t6, a4
                  slt          s0, t0, s8
                  lbu          s10, 19(sp)
                  sb           s0, -1176(sp)
                  auipc        s1, 224366
                  nop
                  auipc        s10, 123563
                  auipc        ra, 782662
                  sll          s11, s10, t3
                  auipc        a2, 677078
                  lui          zero, 785344
                  sb           a2, -1129(sp)
                  lui          a7, 493090
                  sltu         tp, sp, s0
                  slli         t1, s2, 8
                  sb           a0, -1354(sp)
                  xori         s6, s0, 121
                  nop
                  sb           t0, -401(sp)
                  lb           s0, -1097(sp)
                  sb           tp, -303(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_1+1974 #start riscv_load_store_rand_instr_stream_5
                  xori         zero, s11, 381
                  lb           s4, -175(t0)
                  srli         a3, a2, 1
                  add          s7, a6, a7
                  andi         zero, a3, -717
                  slti         s1, s0, 301
                  lbu          s8, -106(t0)
                  lhu          a7, -226(t0)
                  sub          sp, s9, t0
                  sll          a5, s11, t0
                  lb           t5, -147(t0)
                  lbu          s5, 10(t0)
                  sll          t3, t5, t3
                  slli         s1, s4, 12
                  xori         s7, a2, 993
                  lbu          s10, -108(t0)
                  lhu          a6, -184(t0)
                  sra          a2, a1, t6
                  sltiu        a6, a0, 1469
                  sll          t3, t2, ra
                  sll          ra, a1, s9
                  slti         a5, t5, -772
                  lhu          tp, -220(t0)
                  lbu          a2, -220(t0)
                  xor          tp, s10, a1
                  lui          t5, 72654
                  srl          a3, s7, zero
                  sb           zero, -169(t0)
                  srli         a3, ra, 3
                  or           a4, s9, t4
                  sll          a6, t5, a2
                  sub          s0, s3, s1
                  sb           s8, -220(t0)
                  sll          a6, t2, t4
                  sb           s0, -143(t0)
                  lbu          a7, -7(t0)
                  auipc        t5, 367457
                  lb           t6, -5(t0)
                  sub          s9, t1, ra
                  sh           t3, -66(t0) #end riscv_load_store_rand_instr_stream_5
                  la           s10, region_0+631 #start riscv_load_store_rand_instr_stream_1
                  slti         t5, ra, 1910
                  slti         a7, t3, -417
                  nop
                  lw           t0, 285(s10)
                  sw           s6, 1345(s10)
                  lbu          t1, -536(s10)
                  sra          t5, sp, sp
                  sb           s3, -50(s10)
                  sh           t1, 157(s10)
                  lbu          a2, 1004(s10)
                  sra          a5, s8, sp
                  lw           t3, -211(s10)
                  sltiu        tp, s7, -262
                  lbu          s4, 184(s10)
                  sb           s3, -556(s10)
                  add          t0, s3, a5
                  slli         s8, a2, 26
                  sub          t6, t4, s2
                  andi         t2, zero, -1575
                  sltu         t3, s4, a5
                  xori         s11, s0, 196
                  lbu          t0, 438(s10)
                  sltiu        t3, t4, -758
                  andi         t6, s10, 700
                  sltu         s4, a2, t3
                  sb           s6, 294(s10) #end riscv_load_store_rand_instr_stream_1
                  beq          s0, s3, 20f
                  srai         s4, ra, 5
                  auipc        s8, 524477
                  blt          t4, t3, 15f
                  andi         t4, s9, 675
                  add          s10, a2, a2
                  slt          s9, s3, s6
                  lui          a2, 1006845
                  and          t5, tp, s7
                  sra          s5, a2, t5
                  sub          ra, a5, s11
                  la           a4, region_0+810 #start riscv_load_store_rand_instr_stream_7
                  slli         t2, s3, 17
                  or           a6, a3, t2
                  sub          s4, s9, s10
                  srli         s4, a6, 20
                  or           s4, s8, s10
                  lui          a3, 436312
                  lh           sp, -12(a4)
                  lb           a2, -59(a4)
                  nop
                  and          t5, zero, s8
                  srl          t3, t3, zero
                  and          t2, s5, ra
                  sub          t3, s2, s1
                  or           gp, a1, s1
                  sra          a6, s11, a0
                  sra          a2, a3, t6
                  sra          zero, t0, a4
                  lh           s10, -12(a4)
                  sb           t2, 19(a4)
                  xori         s5, s3, -15
                  auipc        a3, 261548
                  add          gp, s6, t5
                  lui          a5, 826619
                  lui          a6, 716682
                  sb           s11, -34(a4)
                  srli         sp, a7, 9
                  lbu          a7, 13(a4)
                  nop
                  auipc        t6, 493620
                  sb           t3, -47(a4)
                  and          s10, t6, t5
                  sub          gp, s2, s6
                  srl          ra, s7, a5
                  lbu          s0, 41(a4)
                  srli         t0, a7, 17
                  sltiu        t1, t0, -1514
                  lb           s6, 15(a4)
                  slti         t3, s8, 498
                  srai         t2, s5, 19
                  lhu          s0, -22(a4) #end riscv_load_store_rand_instr_stream_7
                  or           a2, t1, s7
                  andi         zero, s4, 1683
                  nop
                  sll          a3, a2, t3
15:               nop
                  sub          a3, a0, s3
                  bltu         a6, tp, 28f
                  sra          t0, t0, t4
                  bne          t3, s10, 30f
20:               slti         t5, sp, 1063
                  lui          a5, 934000
                  auipc        s9, 909643
                  slt          gp, s8, a2
                  slti         s2, s5, -1830
                  lui          s2, 156925
                  sltu         a5, s10, a3
                  beq          a2, s0, 42f
28:               blt          t0, s10, 44f
                  ori          t1, s7, -1362
30:               xori         s9, a1, 1127
                  lui          zero, 1036298
                  auipc        t1, 86637
                  xori         s5, s2, 1865
                  bge          s0, a6, 49f
                  bne          t2, zero, 43f
                  srai         s11, s9, 23
                  sub          s10, a5, t5
                  srai         tp, zero, 25
                  and          t5, s8, a0
                  sll          t6, s0, t4
                  sll          a4, zero, a6
42:               and          s2, s6, s4
43:               auipc        a2, 522859
44:               slt          s2, s4, t2
                  auipc        t0, 682580
                  nop
                  bgeu         a0, zero, 65f
                  add          t4, tp, s8
49:               bgeu         s8, sp, 69f
                  bgeu         zero, a0, 64f
                  nop
                  lui          a2, 542347
                  and          s4, tp, zero
                  srai         t4, s0, 31
                  bgeu         a0, t0, 57f
                  slti         ra, a0, 1011
57:               lui          t2, 997091
                  srli         s10, ra, 30
                  addi         s2, t5, 1784
                  lui          ra, 864513
                  lui          t3, 499555
                  add          t6, tp, a6
                  beq          a1, s1, 79f
64:               andi         tp, t4, 1786
65:               sltu         a3, t5, s8
                  add          tp, t3, t3
                  addi         ra, gp, 1195
                  ori          s4, a7, 667
69:               bgeu         s6, t5, 75f
                  nop
                  xori         s6, t6, 1481
                  sltu         a6, a5, tp
                  andi         a5, a4, 197
                  addi         s4, s0, -389
75:               nop
                  sltiu        zero, t0, 1038
                  addi         a7, zero, 59
                  bltu         t5, t3, 83f
79:               srl          s4, a2, t0
                  sra          gp, s11, a7
                  sltu         s9, zero, t0
                  sub          s6, t3, a0
83:               srl          s0, s8, s0
                  sll          t0, s7, a7
                  xori         s2, s3, 149
                  bne          s3, a2, 105f
                  srli         s5, t0, 30
                  bge          a7, t5, 108f
                  bge          t5, t4, 103f
                  sra          a4, s9, a4
                  sltiu        a4, a3, 790
                  sltu         s4, tp, tp
                  srai         s10, s1, 6
                  or           t6, zero, s4
                  xori         t4, t1, -1273
                  slti         a2, a1, 2045
                  sll          ra, s8, zero
                  add          s0, s3, t3
                  addi         s6, s6, -1595
                  or           s11, s5, sp
                  bge          a5, t3, 121f
                  slti         s0, sp, -1510
103:              lui          s5, 706681
                  srli         t1, t5, 5
105:              auipc        s10, 577001
                  lui          t2, 902361
                  sub          t2, t4, a6
108:              slti         t3, t6, -1435
                  ori          a7, a3, -1645
                  srl          t0, s8, t6
                  slti         gp, a6, 910
                  bgeu         s2, t6, 126f
                  bge          a3, a4, 119f
                  xori         s11, s2, -772
                  bge          a6, s6, 128f
                  add          a6, s6, s4
                  add          s6, a7, s2
                  andi         zero, a4, -608
119:              bltu         t4, s5, 130f
                  nop
121:              srli         t5, t1, 6
                  srai         s0, t0, 24
                  sub          sp, s2, s4
                  nop
                  sltu         s6, a7, s9
126:              blt          s11, t4, 139f
                  srai         s2, gp, 24
128:              nop
                  ori          tp, s10, -324
130:              and          a2, sp, t5
                  xori         a7, a5, 584
                  addi         a7, t4, -1042
                  slli         s7, s11, 20
                  slli         s1, t3, 0
                  slli         t6, s0, 21
                  bgeu         zero, s5, 147f
                  auipc        s9, 902511
                  slt          gp, s5, ra
139:              slt          t5, s1, ra
                  bge          t4, s2, 153f
                  bgeu         a7, ra, 154f
                  auipc        s6, 785096
                  slti         a4, a1, -1164
                  bltu         s7, t2, 153f
                  srli         a2, t4, 2
                  sll          a7, s10, tp
147:              sub          ra, t4, t2
                  sub          zero, tp, a2
                  srli         a6, s7, 19
                  slti         t0, a7, 572
                  add          s11, gp, s4
                  bltu         s5, gp, 155f
153:              andi         a3, s8, 927
154:              add          s9, t1, tp
155:              srl          ra, t2, s8
                  and          s5, t5, s2
                  auipc        s4, 33325
                  xori         s6, a7, -453
                  blt          s3, t1, 162f
                  srli         s9, s9, 29
                  andi         s1, t3, 1200
162:              auipc        zero, 919862
                  or           t5, t1, tp
                  bge          t5, s8, 175f
                  add          s6, tp, s1
                  sra          a6, s10, s11
                  srl          s0, s7, s7
                  add          gp, ra, s8
                  bge          ra, zero, 180f
                  bge          s2, s11, 190f
                  sub          s10, s11, s3
                  xori         s2, a5, -704
                  and          s7, s9, tp
                  slti         t5, a5, -1694
175:              xori         zero, s1, -317
                  xori         s0, tp, 1879
                  srli         sp, t0, 22
                  xori         sp, a2, 793
                  and          t2, s0, t5
180:              sra          t1, t1, zero
                  or           t3, a0, a4
                  ori          a4, t6, -982
                  xori         s0, s6, 1267
                  xori         a4, s1, -32
                  nop
                  slt          a4, a3, s10
                  slt          tp, t3, s0
                  or           ra, s6, sp
                  sltu         t6, a6, s2
190:              xor          gp, a6, s6
                  sll          a2, a4, s6
                  bne          s9, a4, 211f
                  add          t2, ra, gp
                  sll          s4, a1, a4
                  sra          t1, a6, t1
                  and          t3, s0, t3
                  bgeu         ra, a3, 212f
                  nop
                  and          tp, s7, s8
                  beq          a0, a3, 206f
                  sub          a4, t4, t3
                  sra          a2, s0, t5
                  ori          t2, t6, 318
                  andi         s11, s9, -680
                  sra          s7, s6, t0
206:              sltu         t6, t0, s10
                  bne          a1, s6, 210f
                  sub          sp, a7, t5
                  sub          t1, s3, a6
210:              srai         s0, a7, 6
211:              srl          s10, sp, a5
212:              beq          t2, ra, 214f
                  add          t0, s11, s3
214:              srl          s10, s11, s5
                  auipc        sp, 838249
                  slli         s2, s11, 1
                  bne          s11, sp, 231f
                  slti         zero, s10, 2028
                  and          t3, t0, a3
                  xor          s5, s11, a3
                  bne          t4, gp, 227f
                  bgeu         s5, s5, 236f
                  or           s9, s1, a5
                  or           t6, t4, a5
                  srl          a2, ra, sp
                  lui          s10, 904136
227:              blt          s3, a2, 236f
                  lui          s1, 761258
                  slli         a6, a5, 22
                  xor          a3, s0, a5
231:              bgeu         t1, s2, 245f
                  or           s5, s1, t5
                  addi         s5, a7, -2040
                  auipc        ra, 405032
                  slli         t5, s2, 2
236:              and          s11, a7, tp
                  add          a5, s7, s0
                  sltiu        a4, a4, 1170
                  sub          t6, s7, s3
                  xori         s10, t3, -1842
                  addi         s5, t1, -527
                  slt          s8, t2, t5
                  srli         s5, s8, 27
                  xori         t0, a5, -282
245:              sltiu        s9, a4, -1424
                  nop
                  lui          t4, 790455
                  srli         ra, s11, 5
                  andi         a6, t5, 1593
                  and          t2, a7, sp
                  add          s6, a5, ra
                  srli         s7, sp, 30
                  nop
                  bgeu         a6, a1, 262f
                  xor          a2, tp, s5
                  ori          ra, a5, 1514
                  bltu         s1, a0, 270f
                  sltiu        t1, t6, -1996
                  sll          a5, s4, t1
                  beq          zero, s10, 265f
                  slli         t2, t0, 28
262:              sll          a4, s1, s5
                  nop
                  and          a6, s7, s5
265:              sub          s4, s2, s0
                  add          ra, gp, s0
                  srai         t3, ra, 15
                  la           t2, region_1+318 #start riscv_load_store_rand_instr_stream_4
                  lbu          s0, 814(t2)
                  slt          a6, a1, s2
                  lbu          s8, 878(t2)
                  lb           a6, 12(t2)
                  sb           s6, 1555(t2)
                  srli         s2, t4, 4
                  or           t3, t0, s8
                  xor          s5, a6, a3
                  srl          s10, s11, a7
                  lh           a5, 28(t2)
                  slti         s5, t4, -178
                  srai         a6, s6, 26
                  nop
                  lbu          t3, -199(t2)
                  xor          s0, s2, t1
                  lbu          a5, 419(t2)
                  lbu          t4, 390(t2)
                  sltu         t6, a6, gp
                  add          s10, s5, s0
                  nop
                  or           a2, s5, t1
                  sb           a5, 1652(t2)
                  lb           s7, 243(t2)
                  sra          a3, a4, a6
                  slli         t6, t0, 22
                  sw           s5, 26(t2)
                  lh           s0, 780(t2) #end riscv_load_store_rand_instr_stream_4
                  xori         s8, t0, 733
                  sltiu        t6, a5, -1043
270:              bgeu         s6, t1, 283f
                  slli         t0, s2, 1
                  srai         a3, a6, 4
                  or           t3, s4, s0
                  slti         t2, a2, -468
                  beq          a5, s9, 286f
                  andi         a3, s1, 892
                  srli         s6, s0, 12
                  blt          t1, s4, 298f
                  srai         a7, a5, 30
                  xor          s10, s7, a4
                  la           sp, region_0+1200 #start riscv_load_store_rand_instr_stream_3
                  srai         t4, t4, 20
                  sb           tp, -235(sp)
                  slli         a5, s7, 30
                  sb           a6, 677(sp)
                  lbu          s9, -831(sp)
                  lbu          t1, 253(sp)
                  sb           s9, -884(sp)
                  sltu         s10, tp, a5
                  sll          s5, s5, s0
                  srai         s11, a1, 4
                  slt          s10, s10, s7
                  addi         a2, a4, -450
                  sb           zero, -318(sp)
                  sb           s10, -793(sp)
                  sltu         t1, a0, s8
                  srai         a2, a6, 22
                  auipc        a2, 376567
                  sb           t0, -910(sp)
                  sltu         s0, tp, a2
                  sh           t3, 106(sp)
                  sra          s0, a6, t2
                  add          s2, a4, sp
                  addi         s8, s3, -193
                  sra          s2, a1, s5
                  and          a4, ra, zero
                  lh           a7, -796(sp)
                  nop
                  sb           s7, 208(sp)
                  lh           a6, -508(sp)
                  ori          s4, a6, -1148
                  sh           s10, -430(sp)
                  srli         t4, s5, 15
                  add          t4, s11, s1
                  lhu          ra, -654(sp)
                  sb           s5, 497(sp)
                  sltu         s6, s4, a4
                  xor          s10, s9, s7
                  srli         s4, s7, 19
                  srl          a5, a2, s3
                  lb           s9, 463(sp) #end riscv_load_store_rand_instr_stream_3
                  and          ra, s10, sp
                  add          s0, a1, s3
283:              slti         t5, t0, 816
                  sra          s8, a1, s10
                  bge          a0, a5, 303f
286:              slt          a3, zero, a1
                  sll          a2, s3, a4
                  or           s1, a0, zero
                  add          tp, s6, t5
                  beq          sp, t2, 302f
                  addi         s5, t3, -1044
                  srli         a4, sp, 9
                  beq          a2, s6, 296f
                  or           t0, t1, s11
                  add          t0, t4, a1
296:              sll          t3, s6, gp
                  or           s1, a7, s9
298:              sll          a6, t5, s2
                  srl          sp, s0, s8
                  auipc        tp, 530295
                  add          sp, a5, a1
302:              xor          t2, s5, a4
303:              xori         sp, t3, -1347
                  bltu         zero, a5, 324f
                  bgeu         s0, tp, 321f
                  or           sp, s6, s4
                  and          t1, t1, t6
                  sltu         s0, t5, s0
                  lui          a3, 979783
                  bgeu         a6, sp, 326f
                  bge          s11, s7, 331f
                  bgeu         ra, s11, 325f
                  slti         s1, ra, -1494
                  xor          sp, a2, ra
                  auipc        zero, 985704
                  slti         s5, t0, 469
                  lui          ra, 398174
                  nop
                  blt          t4, ra, 332f
                  beq          t5, zero, 335f
321:              sra          s10, a6, s4
                  nop
                  srli         a7, a5, 3
324:              srli         s9, zero, 1
325:              srl          s5, a4, s8
326:              slt          t5, a4, s10
                  auipc        s4, 921754
                  addi         s2, s9, -638
                  bltu         ra, s10, 340f
                  srl          a2, t3, t2
331:              sub          ra, a4, s4
332:              add          s10, s2, a5
                  or           s4, s7, a7
                  addi         t1, tp, -1721
335:              bltu         a3, s8, 337f
                  xor          t5, zero, t2
337:              or           t6, t4, sp
                  nop
                  srli         tp, t2, 2
340:              sll          s9, s3, a3
                  xori         s4, zero, -1390
                  blt          a2, a1, 353f
                  xor          s10, a5, zero
                  sltiu        zero, s8, -274
                  add          t6, t3, s0
                  bgeu         a3, t3, 360f
                  sll          t3, a0, a4
                  bltu         s6, s11, 353f
                  blt          a3, t3, 364f
                  add          a5, s7, zero
                  sub          t6, s1, t3
                  xor          a7, t5, a5
353:              add          tp, t6, s2
                  sub          s10, tp, s10
                  sra          gp, a3, a1
                  slli         s8, a7, 11
                  nop
                  xori         s1, t0, -807
                  slli         a6, s11, 21
360:              add          s11, s7, a6
                  or           s8, t2, t1
                  srli         s5, ra, 8
                  and          s2, t0, zero
364:              sra          s5, a5, s8
                  sll          s6, a2, s6
                  slli         t4, s5, 23
                  bgeu         t4, s11, 379f
                  bltu         s9, s8, 388f
                  add          ra, t0, a6
                  or           t1, s11, ra
                  auipc        sp, 123035
                  addi         t6, a3, -670
                  sub          ra, a2, s0
                  xor          t2, t5, s4
                  add          s1, t4, t6
                  auipc        s2, 781837
                  bgeu         s7, a4, 388f
                  sltu         t6, zero, a0
379:              srl          a6, sp, s4
                  sub          s6, s3, t6
                  beq          t5, sp, 384f
                  xori         s10, t1, -1098
                  ori          a3, s11, -1924
384:              xori         s5, s4, -438
                  bltu         s5, a0, 401f
                  sltiu        t4, a6, 1909
                  sra          a5, a6, s7
388:              blt          s10, s3, 402f
                  xori         t2, s3, 1584
                  lui          t1, 53897
                  xori         a3, t2, 1159
                  slt          t3, s10, zero
                  bgeu         s0, t1, 413f
                  sltu         s6, a3, s3
                  nop
                  and          s10, a0, tp
                  sltiu        a5, t4, 1367
                  beq          a3, a5, 414f
                  slli         tp, a7, 19
                  bgeu         s2, a7, 411f
401:              srai         s6, s8, 23
402:              sll          a6, t6, t6
                  add          t3, tp, t6
                  srai         zero, a5, 6
                  srai         s5, s9, 6
                  auipc        s10, 284218
                  andi         s8, s8, 1745
                  bge          s7, s3, 411f
                  bge          tp, a4, 422f
                  srl          t4, s5, t1
411:              sltu         t0, ra, s10
                  sltiu        t2, a7, 1340
413:              sra          s7, tp, sp
414:              bgeu         s0, a2, 433f
                  auipc        gp, 325891
                  add          s8, t5, s0
                  and          a5, s10, a2
                  bgeu         t4, a2, 438f
                  bgeu         zero, a4, 434f
                  blt          zero, t6, 434f
                  sltiu        tp, s5, -1183
422:              bltu         s6, t6, 428f
                  bltu         t5, s2, 436f
                  or           s10, t5, s9
                  slt          s5, s6, s7
                  addi         sp, tp, 1088
                  sll          s5, t4, t5
428:              and          s6, a6, t4
                  auipc        sp, 319333
                  xori         a7, a7, 313
                  addi         a4, s2, 1104
                  sub          s5, a3, a3
433:              sll          s7, a3, s1
434:              blt          zero, gp, 454f
                  add          s6, a6, s8
436:              srli         s1, sp, 24
                  beq          t3, s8, 455f
438:              andi         t3, s10, -111
                  srl          t4, a6, tp
                  slli         s6, a4, 22
                  slli         s7, t0, 8
                  sra          s5, gp, s0
                  andi         s5, t5, 312
                  slt          s0, t0, a6
                  xori         t3, s6, -1309
                  slti         ra, s2, -1200
                  bge          a4, t5, 460f
                  auipc        t1, 522020
                  srai         sp, s6, 31
                  sra          s6, s1, t6
                  xori         s11, ra, 903
                  ori          s2, t5, -1271
                  bgeu         a7, a6, 464f
454:              bltu         t1, a6, 460f
455:              bne          t1, s1, 463f
                  xor          s11, sp, t3
                  auipc        s10, 688028
                  bltu         s10, s2, 471f
                  add          a2, ra, t1
460:              srl          s10, gp, s5
                  lui          zero, 1023514
                  sra          s8, s5, s9
463:              add          a2, tp, t5
464:              beq          t2, t1, 473f
                  andi         s8, s7, 997
                  or           sp, zero, a3
                  sll          t0, t3, a7
                  beq          s4, a5, 482f
                  beq          s1, a6, 482f
                  srli         s5, t6, 5
471:              addi         a3, t6, 1276
                  sra          a7, s5, s11
473:              nop
                  nop
                  bge          s5, a6, 490f
                  bltu         s6, ra, 489f
                  sltiu        s1, t1, -1602
                  ori          s11, a2, 141
                  add          sp, s1, t6
                  andi         tp, a2, -305
                  andi         a4, s2, -1958
482:              slti         s1, t0, 1607
                  lui          t1, 443563
                  add          s9, s9, ra
                  srai         ra, a3, 17
                  srli         s0, a1, 16
                  add          s11, s5, s6
                  blt          gp, a2, 504f
489:              xori         t0, s10, 1387
490:              slli         s9, s8, 28
                  sltu         a5, s5, a0
                  add          gp, ra, s8
                  bltu         s7, s1, 504f
                  sub          s10, a3, s10
                  sltiu        s9, tp, 1203
                  srl          s2, s9, s7
                  nop
                  slti         gp, t5, -706
                  srli         a5, s9, 20
                  sltu         a4, s7, a2
                  srli         t2, t4, 16
                  addi         s7, s0, -1831
                  addi         s2, a6, -1996
504:              slli         t1, s1, 30
                  srai         t6, a2, 14
                  srai         t2, s9, 29
                  srli         s7, t6, 31
                  sll          ra, s8, s3
                  xori         a3, a7, -10
                  bltu         tp, t1, 513f
                  addi         t4, t3, -169
                  add          t6, s0, zero
513:              bltu         s0, s4, 524f
                  auipc        gp, 195236
                  sub          s8, a2, s8
                  addi         s2, t3, -1064
                  srl          s9, t4, s10
                  addi         s7, a2, 931
                  slt          a4, zero, s0
                  ori          s8, sp, -447
                  slli         t5, tp, 14
                  bge          t5, t6, 525f
                  bltu         t4, a5, 536f
524:              slti         a7, a5, 1151
525:              srl          s7, t0, s4
                  blt          s5, t6, 532f
                  andi         s10, s3, 1773
                  srl          s2, s7, sp
                  slli         t1, s11, 22
                  srai         t6, a0, 1
                  srl          a5, a6, t2
532:              bge          s7, t4, 537f
                  xori         s5, sp, -1599
                  srli         s7, a1, 17
                  srli         t4, s10, 30
536:              and          a4, s5, t5
537:              xor          s11, t3, t4
                  bltu         a6, s6, 557f
                  add          zero, s10, tp
                  and          s0, s5, zero
                  beq          a6, zero, 556f
                  sll          sp, s6, t0
                  or           s7, t5, s9
                  andi         s10, s1, 1810
                  sub          s4, t1, s11
                  sub          s6, s8, t5
                  sll          s10, s10, s4
                  xor          s10, a2, s6
                  blt          zero, s2, 557f
                  blt          s11, s6, 570f
                  lui          s1, 417192
                  xori         t5, s3, -1190
                  sub          t3, tp, a1
                  and          t1, a6, t6
                  ori          gp, a1, -1499
556:              slti         s6, a2, -1195
557:              bne          t0, s5, 563f
                  srai         a3, gp, 11
                  beq          a2, s1, 571f
                  beq          tp, t0, 562f
                  bge          t3, s7, 572f
562:              beq          a7, s4, 582f
563:              auipc        sp, 383053
                  bltu         a6, gp, 575f
                  bgeu         zero, a4, 585f
                  ori          gp, t3, 798
                  add          t4, a5, t0
                  sll          a5, t6, zero
                  beq          s8, a4, 583f
570:              auipc        a2, 165707
571:              srli         zero, s1, 28
572:              auipc        a4, 530340
                  sra          s0, s5, ra
                  bge          gp, s9, 590f
575:              sll          t2, s2, t4
                  slli         zero, s3, 16
                  or           t0, s0, zero
                  sub          a2, a6, s3
                  beq          ra, s2, 597f
                  slli         t1, a7, 22
                  beq          s1, s8, 590f
582:              addi         s0, a6, -311
583:              sltiu        t4, s8, 964
                  nop
585:              sub          s9, s11, a6
                  sll          ra, s7, t0
                  auipc        t6, 627839
                  add          s7, s0, a1
                  addi         a3, a0, -309
590:              xori         s7, a3, 239
                  add          s10, t0, a5
                  sra          a5, s0, s3
                  xori         a7, s4, 1560
                  or           s5, zero, s7
                  sltu         t3, a0, s6
                  bgeu         s11, s4, 616f
597:              nop
                  blt          a7, a6, 611f
                  sltiu        s2, s5, 1895
                  auipc        t4, 366455
                  sll          s7, t5, a0
                  beq          a2, a5, 616f
                  addi         s11, s6, 1900
                  slti         tp, gp, 251
                  xori         t5, tp, 736
                  srl          a3, s6, s5
                  auipc        t5, 960518
                  bltu         s7, t1, 624f
                  addi         ra, t2, 1828
                  srli         s10, s8, 28
611:              bge          a4, a2, 625f
                  srl          s2, s0, a4
                  srli         a2, zero, 27
                  blt          s1, t1, 622f
                  lui          a7, 729934
616:              or           s2, a7, a3
                  sra          ra, s2, t0
                  blt          a6, s10, 621f
                  slti         a3, s9, -389
                  ori          t2, a0, -1990
621:              srl          a7, a5, sp
622:              ori          s9, t6, 859
                  slli         t1, ra, 30
624:              addi         t4, s3, 1951
625:              lui          t1, 387398
                  sra          s1, s11, a7
                  beq          s5, s6, 640f
                  nop
                  sub          t5, t4, s3
                  and          zero, a6, t3
                  srai         s11, a7, 30
                  blt          t2, s2, 638f
                  blt          s0, gp, 646f
                  nop
                  srl          s0, s11, s6
                  srli         t1, gp, 22
                  sra          s7, t1, s5
638:              sra          s6, t5, s1
                  srli         t5, s7, 2
640:              xori         a2, a2, -505
                  or           a6, s2, t5
                  nop
                  bge          a6, a2, 657f
                  sll          a7, t3, gp
                  sll          a5, a1, zero
646:              bltu         s8, a2, 661f
                  sll          t6, t6, s3
                  and          a6, t4, s6
                  nop
                  bne          s9, s1, 652f
                  sltiu        a7, t0, -1702
652:              and          s8, s10, t3
                  addi         s4, s1, -189
                  bgeu         t0, t5, 660f
                  lui          t5, 401559
                  sra          a5, t0, s4
657:              srai         a7, a6, 9
                  xor          s1, tp, t2
                  bgeu         s3, a2, 679f
660:              bltu         s3, s0, 673f
661:              bltu         t5, s4, 673f
                  beq          s0, t4, 673f
                  sltu         t6, t1, t2
                  srli         t3, ra, 16
                  beq          s6, a6, 685f
                  nop
                  auipc        s10, 706820
                  auipc        s9, 243414
                  andi         a5, t0, 1646
                  auipc        gp, 43700
                  slli         s1, s7, 13
                  slt          s5, a1, s9
673:              auipc        a5, 418620
                  lui          t1, 769041
                  nop
                  slli         s10, s5, 30
                  sub          t1, s5, t3
                  slt          s5, sp, s8
679:              srli         s11, ra, 12
                  nop
                  bgeu         s6, s11, 686f
                  slt          t1, a0, t0
                  and          ra, a3, zero
                  slli         t1, a7, 2
685:              sra          a4, t6, ra
686:              slti         a5, zero, 1869
                  srli         t6, t1, 21
                  bne          s1, a0, 704f
                  sltiu        tp, s3, -1677
                  sltiu        a6, a2, -1028
                  addi         t5, t1, 1818
                  srl          a7, tp, s5
                  srl          s11, s4, a7
                  srai         s8, a5, 7
                  sltu         t6, t4, s3
                  bge          s4, s9, 711f
                  sra          sp, a5, t4
                  xor          a7, gp, t2
                  srl          s2, s2, s6
                  and          t5, s0, sp
                  beq          s9, s5, 714f
                  nop
                  sltu         s2, sp, a1
704:              beq          t1, s6, 718f
                  srl          s2, gp, tp
                  and          zero, s11, a1
                  sltiu        s11, s11, -427
                  srli         a2, s9, 26
                  and          a6, s0, a0
                  or           a2, s0, ra
711:              ori          a7, s7, -1356
                  and          t3, s4, s5
                  lui          a5, 576977
714:              slli         s8, a3, 26
                  ori          s8, t4, -106
                  addi         s9, t1, 478
                  lui          ra, 818315
718:              addi         s5, sp, 490
                  slti         a3, s2, 2047
                  slt          s11, a6, t2
                  srl          a2, s3, a3
                  andi         t4, a4, 633
                  slt          t5, s2, a6
                  slt          s5, tp, s10
                  or           t0, tp, s11
                  nop
                  xori         gp, a3, -1094
                  beq          s10, a3, 739f
                  slti         a4, a6, -2006
                  beq          a0, t0, 733f
                  srl          s8, s8, s7
                  slli         a6, s10, 29
733:              bgeu         s11, s3, 744f
                  ori          s11, a5, -407
                  lui          t6, 103104
                  blt          t5, s6, 747f
                  lui          s11, 576395
                  lui          s7, 491819
739:              blt          a2, a5, 748f
                  sub          s0, a7, t2
                  sltu         zero, sp, s2
                  sll          a3, s11, s10
                  slli         s11, s3, 7
744:              andi         a7, zero, -1916
                  sub          tp, s1, t4
                  srli         s11, s6, 31
747:              xor          t1, s9, t2
748:              sra          t4, s0, s3
                  srl          s2, s0, gp
                  bge          s4, a6, 768f
                  srli         t3, s2, 18
                  slli         s2, s8, 21
                  bge          s10, s9, 772f
                  sltu         t2, t3, a6
                  nop
                  srai         gp, s11, 14
                  srai         a7, t0, 19
                  auipc        s8, 53896
                  beq          s2, a5, 779f
                  bge          a7, t3, 780f
                  slli         t5, tp, 14
                  bltu         s11, t1, 765f
                  beq          t1, sp, 778f
                  addi         t6, s10, -22
765:              auipc        tp, 361010
                  and          t2, s9, a0
                  beq          gp, ra, 770f
768:              bne          a0, s9, 779f
                  auipc        t3, 405001
770:              add          s5, s3, t5
                  sll          s5, zero, s11
772:              slti         a7, tp, -1763
                  sll          a3, t3, s3
                  srl          s10, ra, a3
                  auipc        a6, 673475
                  sub          s7, s1, ra
                  srli         t4, s8, 21
778:              srl          t4, s7, t6
779:              slli         zero, a5, 26
780:              or           t1, tp, s5
                  lui          s2, 215692
                  xori         s1, s10, -1858
                  xor          t4, t1, a0
                  slt          a7, tp, gp
                  slt          t6, s11, a1
                  srai         t6, t4, 15
                  lui          s2, 811500
                  bltu         a7, gp, 799f
                  sub          t4, s8, t5
                  sll          s1, a6, s3
                  slli         ra, t2, 12
                  blt          a3, a1, 806f
                  or           a4, a7, t0
                  slti         s2, s1, 476
                  bge          t0, s11, 809f
                  sub          s5, s11, s2
                  srai         tp, sp, 23
                  lui          t4, 152442
799:              beq          a0, s8, 801f
                  blt          s7, s10, 813f
801:              lui          a3, 431084
                  beq          a0, t6, 818f
                  beq          a7, s1, 812f
                  srli         s10, s8, 12
                  slli         t2, s9, 23
806:              slt          s10, s5, s1
                  add          s6, s1, s3
                  lui          t1, 968717
809:              sltu         s7, t1, a7
                  beq          ra, s7, 816f
                  beq          t4, sp, 831f
812:              or           s5, t1, ra
813:              bgeu         a6, s6, 833f
                  addi         s0, tp, 131
                  nop
816:              srli         t3, t0, 19
                  slti         t2, t3, 139
818:              bgeu         s11, a6, 831f
                  auipc        s9, 855033
                  beq          a5, s0, 840f
                  or           s4, a3, t6
                  add          a3, sp, s5
                  sltu         s4, tp, sp
                  xori         s4, s2, 1131
                  slti         t0, sp, 1096
                  or           s9, s8, zero
                  slti         s0, t4, 931
                  sltu         s10, s10, s8
                  auipc        ra, 804482
                  slt          t4, s6, sp
831:              srli         t1, a7, 26
                  or           a3, a2, gp
833:              slt          a6, gp, t5
                  xori         t3, a3, -610
                  slt          s1, t3, t5
                  bltu         s0, a5, 841f
                  nop
                  sltiu        t2, a0, 1103
                  srai         a5, zero, 16
840:              bne          s7, a5, 855f
841:              sll          t4, a6, s1
                  slli         s0, s11, 8
                  bltu         a1, a0, 856f
                  bltu         s4, sp, 864f
                  bgeu         a5, s0, 853f
                  srli         ra, t6, 23
                  srai         s0, t0, 0
                  bge          s3, s11, 861f
                  sra          a6, tp, s8
                  sra          s10, s4, zero
                  andi         a6, s2, 1024
                  srl          sp, sp, a1
853:              srl          s4, s2, a0
                  sltu         a4, s8, t4
855:              andi         a7, s4, 240
856:              ori          s1, s5, 1643
                  blt          a2, s4, 873f
                  sltiu        ra, s3, 1738
                  srl          gp, zero, s5
                  sub          s11, sp, ra
861:              blt          a6, t1, 873f
                  add          zero, s4, s10
                  srli         t4, s2, 21
864:              bgeu         s2, s4, 875f
                  sltiu        a3, a2, 724
                  bgeu         gp, a4, 877f
                  sll          t4, s4, s0
                  addi         s0, s5, 1177
                  srl          t0, s7, s6
                  xor          a7, t0, a6
                  slt          t0, zero, t6
                  srli         t1, a1, 28
873:              and          gp, a0, sp
                  andi         s2, s2, 781
875:              lui          t4, 113706
                  blt          a0, a3, 895f
877:              and          s10, t5, a3
                  andi         t6, a0, -1119
                  sltiu        s8, a3, 1573
                  auipc        s10, 649245
                  sra          a3, t2, s1
                  lui          s1, 956537
                  srai         a4, ra, 13
                  bge          sp, t2, 902f
                  auipc        a6, 139460
                  or           gp, s6, s2
                  xor          gp, s11, s11
                  bne          s0, a5, 902f
                  addi         s4, tp, 1865
                  beq          s6, s1, 896f
                  xor          s0, s11, t6
                  slli         a4, s4, 17
                  beq          s0, a6, 907f
                  sra          ra, sp, t1
895:              srl          a7, zero, t0
896:              bltu         t2, t4, 916f
                  lui          s1, 239367
                  bne          sp, a3, 911f
                  lui          s0, 35966
                  and          s5, ra, t2
                  bgeu         a1, a0, 909f
902:              auipc        s0, 851999
                  auipc        a4, 562305
                  slti         a3, sp, 70
                  slti         zero, s4, 243
                  sltu         s1, zero, s1
907:              slt          s8, a0, a4
                  srli         t4, a3, 31
909:              nop
                  xor          t4, gp, gp
911:              srai         t6, s11, 25
                  sub          t2, a1, t2
                  addi         a2, zero, 1143
                  sltu         s0, gp, a1
                  xor          s0, s5, s2
916:              bge          zero, gp, 931f
                  bne          gp, s2, 920f
                  auipc        s2, 795033
                  auipc        t4, 922877
920:              sll          t3, a4, zero
                  sra          s9, a0, s6
                  and          sp, a3, a0
                  srai         t3, ra, 3
                  or           t4, t6, s8
                  sltiu        zero, s3, -1156
                  lui          s11, 461113
                  xori         a6, a4, -803
                  bltu         s7, sp, 941f
                  bge          a3, zero, 942f
                  sltiu        tp, s9, 383
931:              andi         s8, s9, -550
                  bltu         a4, s7, 938f
                  and          s4, a0, s0
                  lui          t5, 341107
                  bne          s9, t5, 938f
                  srai         s7, s9, 17
                  and          s9, s10, t4
938:              blt          s9, t2, 949f
                  ori          s4, t2, -1449
                  addi         t4, t4, -644
941:              blt          a0, a0, 952f
942:              add          zero, s5, s2
                  slli         s7, t0, 22
                  bgeu         t3, s8, 950f
                  add          a3, a4, s7
                  sltu         t5, s6, t1
                  lui          a7, 141137
                  blt          a3, sp, 964f
949:              ori          s0, gp, 1524
950:              srl          s9, t2, s10
                  nop
952:              sltiu        zero, sp, 800
                  sra          t0, s9, s8
                  blt          a4, s4, 974f
                  srai         s6, s2, 24
                  srai         s10, t5, 26
                  blt          s11, a3, 973f
                  srai         t2, t2, 3
                  auipc        t6, 322604
                  sra          a3, a7, s3
                  slli         s11, s5, 25
                  auipc        s11, 809422
                  sltiu        s7, t4, -397
964:              beq          a4, a2, 979f
                  beq          s3, a3, 985f
                  bne          t2, tp, 968f
                  andi         a6, a0, -923
968:              auipc        a3, 689229
                  bgeu         t5, a7, 982f
                  slti         t6, s11, 78
                  bltu         a2, a3, 980f
                  srl          t1, t4, a7
973:              bgeu         ra, a4, 984f
974:              slli         s7, s5, 30
                  nop
                  ori          s9, a4, 918
                  or           t2, s0, a3
                  slli         s7, t5, 11
979:              slli         t4, t3, 24
980:              bltu         a6, a3, 1000f
                  nop
982:              ori          a3, s0, 1624
                  bne          t2, t6, 1002f
984:              sll          t3, a5, s7
985:              bgeu         s7, t1, 999f
                  xor          s7, t5, a3
                  add          a6, s10, s9
                  bge          sp, a3, 1002f
                  or           s2, a3, s1
                  xori         s5, gp, -285
                  add          s9, s6, t2
                  slli         sp, a4, 9
                  slti         s8, t5, -242
                  addi         s2, t2, 681
                  bltu         s9, s1, 1007f
                  srai         s7, s6, 9
                  and          tp, a1, s0
                  sub          s10, s0, a3
999:              addi         a5, s0, -672
                  sll          s8, t1, s6
                  and          a6, a4, s1
                  la           s5, sub_3
                  auipc        s10, 921094
                  add          a3, s3, gp
                  or           tp, s2, t4
                  xor          ra, s3, s1
                  or           t0, t6, s2
                  or           s4, s1, s2
                  addi         s5, s5, 717
                  slt          tp, s9, t1
                  blt          a4, t6, sub_2_j4 #branch to jump instr
                  srai         a3, s8, 27
sub_2_j4:         jalr         a7, s5, -717 #jump sub_2 -> sub_3
1000:             add          zero, sp, gp
                  sub          a6, s10, s2
1002:             ori          a3, t5, -279
                  sltu         s9, a4, a7
                  sll          t6, s1, a2
                  sltu         s9, s8, s6
                  xori         ra, s7, -1775
1007:             addi         s9, t3, 502
                  ori          t3, t5, -377
                  nop
                  auipc        a3, 178854
                  sra          t1, t1, s2
                  srl          t6, s4, a2
                  nop
                  bge          s1, sp, 1019f
                  srli         s7, s8, 11
                  andi         sp, t3, 431
                  sltiu        t3, a1, -105
                  and          t2, s3, a2
1019:             slti         t6, a0, -172
                  bge          a7, t1, 1031f
                  andi         s4, t0, -357
                  sll          t1, tp, a2
                  and          s0, t1, t5
                  srli         a2, a0, 20
                  srli         s6, t6, 7
                  ori          zero, t4, 447
                  sltiu        t1, a6, 182
                  bge          s8, a7, 1046f
                  sll          t5, a6, a5
                  add          s10, gp, t6
1031:             addi         t1, t4, -1997
                  or           tp, a1, t2
                  srl          tp, a6, s0
                  slli         s0, t3, 16
                  srai         t2, zero, 9
                  bgeu         t2, a3, 1049f
                  slti         a5, ra, 1072
                  sltu         sp, s9, s4
                  bge          a6, s2, 1047f
                  or           a5, s11, a3
                  ori          t0, a5, 1600
                  lui          s4, 23698
                  xori         s2, t6, 450
                  add          tp, t5, s8
                  sra          a2, t3, t2
1046:             or           s5, t6, a6
1047:             or           t2, tp, a6
                  andi         ra, a3, 824
1049:             nop
                  srai         ra, s8, 11
                  bge          s11, s7, 1062f
                  bgeu         t3, s6, 1067f
                  or           s11, a3, s9
                  sltiu        ra, a7, -2028
                  srai         s0, t0, 29
                  sub          s6, s6, s3
                  nop
                  sltu         t5, a2, s11
                  nop
                  and          t0, s9, a3
                  xor          a3, t4, s7
1062:             srli         t6, s11, 7
                  srai         s8, a3, 15
                  srl          a6, t4, s11
                  slli         s0, s10, 19
                  and          a2, t5, gp
1067:             sltiu        a3, t0, -1718
                  bltu         tp, t5, 1071f
                  sll          t6, s10, a3
                  xor          a2, s0, s5
1071:             bge          t6, s7, 1084f
                  srli         s8, a1, 4
                  blt          s2, t2, 1093f
                  sll          t4, t3, t3
                  xor          a3, a7, t5
                  blt          a5, t6, 1092f
                  bgeu         a1, t3, 1091f
                  bltu         s10, t2, 1093f
                  slli         zero, s11, 22
                  xori         s0, zero, 1095
                  bgeu         zero, s4, 1087f
                  sra          zero, s3, t0
                  srl          t6, a5, ra
1084:             bgeu         t3, tp, 1093f
                  addi         tp, a2, -1923
                  bgeu         s8, s10, 1093f
1087:             lui          zero, 189054
                  slti         s7, s1, 1633
                  addi         s2, sp, 1659
                  lui          a3, 318451
1091:             srai         s10, a4, 23
1092:             ori          s9, s2, 1173
1093:             slt          ra, t6, ra
                  lw           a7, 4(a1)
                  slli         zero, s0, 31
                  addi         a1, a1, 56
                  slt          a4, t5, s8
                  and          t3, a6, t2
                  auipc        s8, 217094
                  srli         ra, s6, 11
                  srl          s4, a3, a3
                  lui          s0, 666720
1427:             addi x17, x17, 1
1427:             jalr x17, x17, 0
sub_10:           beq          sp, ra, sub_10_stack_p
                  slli         ra, s7, 29
sub_10_stack_p:   addi         a1, a1, -24
                  sw           a7, 4(a1)
                  srai         a2, s0, 18
                  sltiu        s8, t1, 474
                  sltiu        t3, zero, 1944
                  sll          ra, t0, s3
                  bltu         t5, t1, 4f
                  beq          s1, a3, 7f
4:                bgeu         s7, t2, 8f
                  blt          t6, s5, 14f
                  lui          zero, 730596
7:                srl          t1, s3, s9
8:                nop
                  sub          a7, s0, tp
                  sub          s0, s5, a5
                  sltu         t1, t5, s9
                  sll          s10, ra, a2
                  blt          a1, ra, 14f
14:               sra          t5, zero, sp
                  add          t3, s2, t5
                  lw           a7, 4(a1)
                  srli         a3, t1, 6
                  nop
                  auipc        s7, 7522
                  slli         t3, t0, 23
                  and          zero, a1, sp
                  addi         a1, a1, 24
                  xor          zero, a4, a6
                  slli         sp, a6, 13
                  xor          s1, a5, t1
32:               addi x7, x17, 0
32:               jalr x7, x7, 0
sub_7:            lui          tp, 724680
                  bge          s4, s6, sub_7_stack_p
                  auipc        s9, 562110
                  xori         a4, a6, -1871
sub_7_stack_p:    addi         a1, a1, -36
                  xor          s0, s2, s8
                  sw           a7, 4(a1)
                  srai         t2, s2, 24
                  nop
                  la           sp, region_1+903 #start riscv_load_store_rand_instr_stream_1
                  lb           t1, -54(sp)
                  lb           tp, -6(sp)
                  lhu          a2, 39(sp)
                  sh           s10, -21(sp)
                  xor          a6, t6, s4
                  lb           s5, -54(sp)
                  xor          s4, tp, ra
                  sw           sp, -51(sp)
                  srai         t5, s4, 26
                  lb           ra, 16(sp)
                  srli         t1, s7, 11
                  sh           s0, -61(sp)
                  add          s1, s4, a7
                  sra          tp, s11, a6
                  lbu          t1, 53(sp)
                  lbu          t5, -38(sp)
                  add          s7, ra, a2
                  sb           s11, 0(sp)
                  lbu          ra, -25(sp)
                  lbu          s1, 29(sp)
                  auipc        s8, 149712
                  add          t1, s6, gp
                  slti         t3, a6, 770
                  srl          t0, s6, sp
                  xori         zero, s11, -994
                  lb           a5, -13(sp)
                  ori          s1, t5, -772
                  slti         s1, ra, 542
                  auipc        tp, 30970
                  slt          s4, sp, a2
                  lb           s4, -6(sp)
                  lh           gp, 17(sp)
                  sh           a7, -25(sp)
                  sltiu        a3, s7, -1926
                  sh           a7, -33(sp)
                  sh           zero, -19(sp)
                  nop
                  lbu          s1, 58(sp)
                  lbu          gp, 39(sp)
                  and          s10, s11, sp
                  sltu         a2, zero, t4
                  sb           s10, -12(sp)
                  lhu          s4, 21(sp)
                  sb           a1, 54(sp)
                  addi         s1, zero, -1028
                  lb           s6, 56(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_0+1737 #start riscv_load_store_rand_instr_stream_0
                  nop
                  srl          a7, s5, a1
                  xor          a4, a7, a4
                  xor          a2, sp, a4
                  sub          a5, ra, a4
                  sll          t1, t0, s11
                  sll          s1, s7, t1
                  and          a6, s3, a1
                  sb           a1, 2(t5)
                  lbu          t6, 38(t5)
                  lbu          sp, -17(t5)
                  addi         s6, t4, -1102
                  slti         sp, zero, 1373
                  andi         s9, a1, -1542
                  add          t6, a2, t3
                  sltu         a6, zero, a3
                  lb           a4, 50(t5)
                  add          s7, t6, s8
                  lbu          s2, 53(t5)
                  sra          t2, t4, a7
                  lb           tp, -55(t5)
                  lh           zero, -53(t5)
                  lb           a4, -40(t5)
                  lhu          s11, -45(t5)
                  lb           t3, -37(t5)
                  lbu          t2, 20(t5)
                  sll          t1, t3, a4
                  xor          s6, a3, t1
                  slt          s11, t4, t1
                  srl          s8, s10, a1
                  lbu          s10, -34(t5)
                  sh           s2, -25(t5) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1813 #start riscv_load_store_rand_instr_stream_2
                  sra          t0, s9, t5
                  addi         t1, a6, 1612
                  lb           tp, 22(sp)
                  and          t0, t5, t4
                  or           a2, s7, s0
                  lb           a7, -60(sp)
                  sh           t5, 47(sp)
                  lb           s9, 60(sp)
                  sltu         a2, s8, t1
                  sb           a7, -21(sp)
                  auipc        gp, 809221
                  xor          s1, s10, zero
                  sb           t4, 38(sp)
                  sh           t1, -1(sp)
                  srai         s7, t5, 27
                  auipc        ra, 819913
                  lbu          t4, 17(sp)
                  lb           t2, 6(sp)
                  andi         s2, t6, -1755
                  lbu          s7, -2(sp)
                  sb           s5, 6(sp)
                  srai         s2, a3, 30
                  lb           s8, -15(sp)
                  sb           s11, -50(sp)
                  add          s8, a4, s9
                  lui          a7, 501932
                  lb           t5, -35(sp)
                  slti         a6, s7, 1381
                  lb           s11, -64(sp)
                  sh           sp, 3(sp)
                  lb           t0, 16(sp)
                  sb           s1, 10(sp)
                  addi         tp, s4, -1221
                  sub          s8, s10, sp
                  slli         s9, a7, 20
                  addi         a7, ra, -1281
                  lbu          s0, 54(sp)
                  sltiu        zero, s11, -1195
                  sra          s8, zero, t3
                  ori          t1, s8, 504
                  lb           t5, -58(sp)
                  add          tp, t0, gp
                  lb           a5, 42(sp)
                  auipc        a2, 247388
                  sb           s10, -42(sp)
                  srli         s2, s11, 15
                  sb           s10, -20(sp)
                  sll          s6, a1, s7
                  lb           s2, 0(sp)
                  lbu          s6, 61(sp)
                  xor          t2, ra, t5
                  sub          a7, tp, t2
                  lb           s2, 26(sp)
                  addi         t5, t4, 1939
                  sb           s8, -6(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1819 #start riscv_load_store_rand_instr_stream_3
                  sub          s8, a6, tp
                  sh           s0, -47(sp)
                  sltu         a5, t3, s7
                  lb           s1, -82(sp)
                  lb           ra, 76(sp)
                  sll          zero, tp, a5
                  lb           s9, -1626(sp)
                  sb           s7, 168(sp)
                  sra          s4, zero, s11
                  sll          a7, zero, s5
                  lhu          t5, -1071(sp)
                  lh           t0, -1715(sp)
                  slti         s4, s9, -842
                  slti         zero, t2, 521
                  sb           a5, -1060(sp)
                  xor          s11, t2, zero
                  lbu          zero, -1163(sp)
                  lbu          s10, 168(sp)
                  ori          s1, s5, 424
                  slli         s7, t6, 2
                  srli         s4, s8, 4
                  sltiu        s4, a4, 1751
                  slti         s10, tp, 710
                  ori          t3, zero, 648
                  sltu         s9, a4, a1
                  lbu          t1, -1157(sp)
                  lb           a3, -313(sp)
                  sltiu        a7, zero, -639
                  sh           s0, -901(sp)
                  lh           s2, 23(sp)
                  lbu          s8, -417(sp)
                  lbu          gp, -503(sp) #end riscv_load_store_rand_instr_stream_3
                  andi         s2, tp, -281
                  sltiu        a6, a0, 1196
                  addi         t0, s9, -426
                  bne          s9, s10, 16f
                  bltu         t0, ra, 18f
                  add          t3, t0, s6
                  bne          s4, a0, 24f
                  add          t4, a0, t0
                  bne          a4, s0, 21f
                  srli         t5, t3, 18
                  blt          a4, sp, 25f
                  bne          s2, s11, 27f
                  or           a2, gp, s3
                  xori         s9, a7, -1042
                  slli         s4, s8, 0
                  slti         ra, a6, -216
16:               sra          s11, a7, t4
                  slt          zero, a6, s4
18:               bltu         gp, s0, 21f
                  bne          sp, s7, 26f
                  beq          a6, t0, 35f
21:               sltu         s5, tp, sp
                  srai         t5, t6, 20
                  slti         t2, t6, -926
24:               blt          a1, t5, 40f
25:               and          s0, s7, a5
26:               nop
27:               slt          s8, t5, a4
                  srai         s11, tp, 4
                  nop
                  beq          zero, s4, 43f
                  blt          s6, t0, 37f
                  bge          s7, t0, 44f
                  nop
                  slli         zero, t0, 0
35:               bne          t2, sp, 41f
                  auipc        s0, 96711
37:               srli         t2, a4, 3
                  addi         ra, t2, -1816
                  sltiu        s4, gp, -1731
40:               addi         t4, ra, 1039
41:               beq          t6, a7, 50f
                  blt          t6, a3, 61f
43:               sra          s6, s8, a2
44:               slt          t5, s7, t6
                  add          a2, t0, tp
                  and          a4, s0, s0
                  bge          t1, s6, 53f
                  slt          s10, t4, s7
                  add          s6, s6, s0
50:               ori          s8, a0, -179
                  and          s0, t5, a2
                  bltu         sp, s1, 58f
53:               andi         a2, s1, 1025
                  addi         tp, t0, -1850
                  slti         t3, t6, -1858
                  srl          a3, t2, s5
                  sra          t2, t3, s6
58:               blt          s5, sp, 65f
                  andi         s1, a6, 1321
                  or           s7, t3, a7
61:               bge          s9, t4, 63f
                  bltu         a6, gp, 70f
63:               or           s2, tp, s0
                  and          s0, t6, s7
65:               beq          ra, t2, 83f
                  xor          s4, s9, ra
                  bltu         a5, a2, 70f
                  or           a5, t4, s10
                  nop
70:               xor          a7, t1, t0
                  slli         s8, t4, 31
                  slli         t0, t4, 11
                  auipc        gp, 563034
                  slli         s4, s9, 6
                  slt          s7, s11, a1
                  add          s10, s2, a3
                  srl          a7, a2, a6
                  nop
                  xor          a3, s5, s3
                  slti         t0, a7, 409
                  and          tp, t5, tp
                  beq          s5, s6, 99f
83:               bltu         s3, a5, 101f
                  ori          gp, a2, -1334
                  nop
                  sltu         s7, s8, s9
                  bltu         gp, s9, 90f
                  lui          a5, 278722
                  srai         s8, a1, 19
90:               nop
                  beq          a5, a2, 96f
                  bltu         t4, a0, 102f
                  slti         s11, s1, -1218
                  addi         zero, s8, 190
                  sll          s8, a7, a7
96:               andi         s1, ra, -895
                  slt          s7, t3, zero
                  bltu         a2, a0, 107f
99:               sll          sp, t4, t5
                  blt          a5, s3, 113f
101:              ori          t2, a1, -1397
102:              nop
                  bne          s8, t1, 119f
                  xor          s5, t6, a7
                  lui          s0, 597445
                  sll          s1, t3, s7
107:              andi         a7, s8, -1919
                  sub          a6, t3, tp
                  or           t1, t1, tp
                  lui          s1, 213069
                  xori         s2, s3, 1796
                  sub          zero, s5, s11
113:              srl          s0, t5, s4
                  beq          a5, tp, 123f
                  beq          t5, s7, 128f
                  add          s5, s6, s5
                  add          t5, s7, tp
                  and          t3, s5, a5
119:              srli         s2, s7, 30
                  slli         a5, s4, 6
                  xor          s9, t2, a2
                  sltiu        a4, s10, -863
123:              andi         s11, t2, 293
                  xori         s10, a5, 863
                  xori         s10, t3, -1668
                  sra          a5, a4, s4
                  xori         s11, sp, 1025
128:              slli         s4, t1, 13
                  bgeu         t1, gp, 138f
                  sra          sp, t2, sp
                  bltu         gp, s9, 149f
                  beq          a5, s4, 145f
                  srli         s6, t1, 23
                  srli         tp, t3, 24
                  srl          s11, s6, t5
                  lui          t6, 867248
                  bltu         s0, t5, 144f
138:              xori         s10, ra, 27
                  bgeu         t4, s7, 151f
                  xor          gp, a7, t1
                  srli         s6, zero, 22
                  add          t1, t0, s5
                  or           t5, s2, t1
144:              beq          s9, a4, 162f
145:              addi         s1, t5, 880
                  beq          zero, t1, 152f
                  auipc        t1, 710785
                  bltu         t3, s5, 166f
149:              andi         t5, s2, -1847
                  sltu         s10, a2, sp
151:              srli         s1, t0, 10
152:              srai         s6, s5, 26
                  ori          t2, t4, 1746
                  sltiu        t2, ra, 1000
                  sltiu        a6, s1, -954
                  sub          s6, a6, s1
                  sub          t2, a5, sp
                  addi         a7, a0, 1944
                  srai         s2, s5, 21
                  slti         a3, gp, -776
                  lui          a2, 12590
162:              bge          s10, s10, 169f
                  xori         ra, s5, -1773
                  or           s10, s1, a6
                  sra          sp, a2, sp
166:              andi         s6, s5, 308
                  sll          sp, s0, a7
                  auipc        s8, 1005786
169:              and          s9, t6, t6
                  add          s11, s4, s2
                  slli         t0, sp, 27
                  bge          ra, s9, 182f
                  beq          a5, t4, 176f
                  bne          a7, a0, 191f
                  lui          s1, 299829
176:              xori         ra, a7, 1300
                  srli         a6, s0, 4
                  srai         s4, s11, 24
                  blt          t3, t2, 182f
                  bge          a5, s2, 186f
                  blt          t5, a3, 194f
182:              xor          t4, a3, a5
                  ori          a5, sp, 1774
                  andi         t0, s4, 828
                  andi         a6, a7, 1781
186:              lui          a4, 310564
                  bltu         s2, gp, 193f
                  slt          t5, s8, a0
                  nop
                  beq          s7, s0, 198f
191:              nop
                  nop
193:              sltiu        s5, s8, -1046
194:              sub          a5, t4, s10
                  srli         s10, t1, 27
                  add          s1, s3, s0
                  and          a6, sp, s6
198:              xor          tp, s8, t4
                  add          ra, s5, gp
                  sra          s4, t4, tp
                  bge          s8, s7, 215f
                  bltu         t5, t0, 207f
                  srai         s2, sp, 7
                  and          ra, a7, s4
                  addi         sp, a4, -445
                  slti         s7, a0, 31
207:              lui          t6, 581956
                  sll          a3, t6, s0
                  sra          a7, s10, t4
                  xor          a4, sp, t0
                  bne          a3, t4, 230f
                  srl          t1, s0, t4
                  xor          t2, s2, zero
                  auipc        a5, 932755
215:              sra          t6, s0, t4
                  blt          a5, t4, 219f
                  auipc        t5, 837310
                  bne          s5, s8, 224f
219:              xori         t1, a7, 43
                  bne          a5, s6, 235f
                  slt          a5, s2, s6
                  srli         gp, s1, 0
                  sll          s10, t6, s4
224:              slli         s10, a2, 27
                  xor          sp, a0, t4
                  auipc        t4, 2107
                  slt          t6, s11, t4
                  slt          s9, s3, t3
                  lui          t4, 886664
230:              sltiu        t0, s9, 1140
                  add          a2, zero, s9
                  slli         t5, s3, 7
                  nop
                  ori          s4, a2, -228
235:              and          s11, s6, zero
                  blt          ra, t3, 238f
                  srl          s10, t2, a0
238:              blt          a3, t2, 251f
                  xor          a7, a1, t5
                  bne          a0, t5, 256f
                  bge          t6, t3, 256f
                  addi         t1, tp, 293
                  add          sp, s7, a0
                  nop
                  beq          zero, a5, 255f
                  bge          a3, t2, 253f
                  auipc        t1, 653668
                  or           s5, a7, t5
                  and          t2, s4, a2
                  andi         s5, a4, 204
251:              lui          zero, 507565
                  sll          s8, ra, s9
253:              sub          s1, s8, zero
                  lui          s8, 124245
255:              auipc        zero, 295092
256:              nop
                  addi         ra, t6, -472
                  sra          a6, tp, a7
                  bne          s8, t2, 261f
                  beq          a1, s3, 266f
261:              sltu         s7, zero, t1
                  and          t5, a6, s10
                  blt          s2, a4, 281f
                  slt          s1, s8, s4
                  srli         t6, a6, 23
266:              auipc        t0, 635750
                  add          t5, t2, s2
                  sll          t4, s1, s8
                  slt          zero, s10, s7
                  and          s0, s0, s10
                  xori         t5, s10, 1216
                  auipc        a6, 190319
                  bgeu         t3, s3, 289f
                  slli         a4, a7, 10
                  sltiu        t2, t2, -1429
                  bne          s1, s2, 285f
                  xor          s0, t6, sp
                  srl          s7, a1, ra
                  bge          sp, s6, 284f
                  ori          a3, s2, -1347
281:              lui          s0, 634553
                  slti         a4, a5, 1771
                  sltiu        s10, s5, -1602
284:              bgeu         gp, t4, 287f
285:              and          t0, s4, s10
                  sltu         t2, s10, s8
287:              xor          a2, s4, s8
                  srai         zero, a2, 27
289:              sltu         sp, s10, t2
                  and          a7, t2, a6
                  ori          a5, s9, 15
                  or           t4, s8, t5
                  sltu         s9, s0, t5
                  slt          zero, a3, t4
                  bne          t6, t1, 312f
                  addi         sp, s5, 748
                  andi         s0, t4, 1986
                  slti         s9, zero, -159
                  xori         a3, a3, -97
                  bltu         t0, tp, 313f
                  add          t2, t1, a1
                  addi         a6, s3, -556
                  nop
                  sub          s1, t5, t6
                  nop
                  slli         s0, t0, 23
                  slli         a2, s5, 10
                  auipc        t0, 781585
                  sltiu        t0, a7, 391
                  slli         t6, s10, 13
                  bge          s4, a2, 323f
312:              add          s8, s4, t1
313:              auipc        s8, 33352
                  or           s0, a2, s6
                  ori          s2, a0, 1035
                  bge          a5, tp, 325f
                  slli         a2, t4, 7
                  xor          a6, t2, t4
                  or           zero, t6, t6
                  slti         s4, a1, -1294
                  or           zero, t4, t2
                  bltu         s4, gp, 325f
323:              auipc        t0, 198845
                  slt          t0, s4, s0
325:              blt          s6, t4, 331f
                  sll          s6, t0, a5
                  lui          t3, 978915
                  slli         sp, s11, 3
                  sll          zero, a5, t3
                  srli         t6, s5, 13
331:              andi         s7, s0, 1036
                  bltu         s1, s7, 339f
                  srl          t1, a7, a6
                  bge          a5, t0, 349f
                  srai         a6, t6, 20
                  sub          s6, a1, ra
                  bltu         s3, s5, 351f
                  bge          t5, zero, 351f
339:              bne          a4, zero, 342f
                  sll          s2, tp, a6
                  slti         s1, t3, 241
342:              xor          s0, t3, t3
                  nop
                  srl          s1, s6, s3
                  bge          s8, a6, 361f
                  and          t2, a0, s8
                  bne          gp, s3, 353f
                  sltu         t2, s6, a4
349:              srli         t0, s2, 14
                  sra          t3, sp, t3
351:              srli         s7, s9, 17
                  andi         t2, a6, -190
353:              nop
                  bne          sp, s3, 369f
                  bgeu         sp, tp, 361f
                  sll          gp, a4, s0
                  auipc        t3, 859091
                  sltiu        s11, tp, 180
                  slli         sp, s4, 27
                  and          a6, s8, ra
361:              bltu         s10, tp, 380f
                  andi         s7, t1, 789
                  bne          a4, t2, 381f
                  sll          s11, s5, sp
                  addi         a3, s4, -796
                  or           s8, s8, s9
                  srai         t0, s1, 26
                  srli         t6, ra, 20
369:              nop
                  sll          t5, zero, zero
                  xori         tp, t5, -1325
                  sltiu        a5, s8, 306
                  ori          t2, t0, 1248
                  and          t5, a0, gp
                  srl          a6, s9, zero
                  bge          a0, a1, 389f
                  nop
                  andi         sp, ra, 4
                  xori         t3, t6, 1923
380:              bge          s4, t2, 398f
381:              xori         a5, s10, -154
                  slt          s10, t3, s2
                  srai         tp, t5, 10
                  xori         t4, s2, 29
                  bne          a4, s10, 398f
                  nop
                  xor          s9, s4, a3
                  srai         a3, s1, 10
389:              bne          gp, t4, 397f
                  sltu         a3, t0, t1
                  xor          s11, a3, a3
                  sltiu        s4, ra, 2010
                  auipc        s6, 1016338
                  and          ra, s1, t4
                  sra          ra, ra, t4
                  auipc        a2, 781777
397:              srli         s7, a1, 15
398:              bne          s8, s3, 401f
                  nop
                  srli         s8, s0, 9
401:              xori         a6, a5, 1606
                  sll          a6, s5, gp
                  sra          t4, s2, t5
                  beq          s0, s10, 420f
                  bltu         a2, s10, 408f
                  sra          gp, s1, tp
                  bge          t1, s7, 416f
408:              andi         a7, t5, 1515
                  add          a7, s9, t0
                  and          s0, t5, t1
                  or           s1, s9, s4
                  and          t5, a3, gp
                  srli         a4, a1, 30
                  and          ra, s5, a0
                  ori          s1, s0, -1909
416:              bge          t4, t0, 434f
                  sra          s7, s5, ra
                  blt          t4, s0, 424f
                  srai         s5, a4, 6
420:              bltu         t3, tp, 438f
                  sltiu        a6, s3, 1045
                  blt          a4, a3, 429f
                  beq          a3, s11, 442f
424:              beq          a6, s1, 437f
                  addi         t1, s11, 1894
                  slti         s10, t0, 465
                  xor          s1, s5, s11
                  ori          gp, s11, 1516
429:              bgeu         a7, a2, 441f
                  ori          s5, t0, -1929
                  auipc        t6, 799574
                  addi         s4, a5, 1068
                  xori         s10, s11, 1236
434:              and          s10, a4, a2
                  srli         a5, ra, 17
                  bltu         sp, s9, 442f
437:              or           s5, t5, t4
438:              slli         s9, s7, 13
                  sub          gp, a1, gp
                  ori          s4, a6, 10
441:              nop
442:              xori         s0, a5, 225
                  slti         s8, t3, 2030
                  sub          s2, s7, a0
                  and          zero, t4, a4
                  xori         t0, s4, 1809
                  bne          t3, s5, 460f
                  bltu         s7, s2, 456f
                  sltu         t4, s8, t0
                  bge          a0, a6, 466f
                  srai         s1, a6, 25
                  add          t0, ra, t4
                  sub          tp, gp, zero
                  auipc        t5, 4010
                  srl          t2, a5, s8
456:              ori          zero, gp, -509
                  slti         t5, a6, -1845
                  add          t4, s7, a0
                  blt          a6, s9, 468f
460:              or           t2, s2, s4
                  xor          t0, s10, s11
                  bgeu         s2, t1, 477f
                  xor          s11, sp, a0
                  blt          s0, s5, 471f
                  bne          s3, s11, 478f
466:              bge          a1, s7, 483f
                  xor          gp, a0, ra
468:              sltiu        s1, s10, 1915
                  or           a7, a5, s9
                  or           t5, s8, t2
471:              bne          a0, a2, 484f
                  lui          a4, 1006642
                  srai         t3, a0, 17
                  slli         a6, s5, 11
                  andi         sp, t4, 150
                  addi         s6, ra, -1504
477:              add          t4, gp, t6
478:              andi         t4, s7, 643
                  sub          s4, t2, s9
                  or           s11, s3, s7
                  srl          t0, t5, s9
                  bne          s5, t0, 487f
483:              bltu         a7, a5, 497f
484:              add          t1, a6, a5
                  sltu         t0, t2, s2
                  auipc        gp, 899231
487:              bgeu         t2, t1, 489f
                  bge          t5, t0, 494f
489:              sra          a2, sp, s0
                  sra          sp, t4, s8
                  addi         a6, t3, 1793
                  nop
                  srl          s9, s1, t6
494:              bltu         t5, t4, 504f
                  bne          s2, s1, 513f
                  xori         sp, s5, -974
497:              bge          s2, t0, 503f
                  and          gp, a7, s3
                  blt          s3, s2, 502f
                  bltu         gp, a6, 515f
                  beq          a2, t0, 517f
502:              sra          a7, t4, a1
503:              add          a4, t5, a5
504:              srli         t2, t6, 10
                  or           a2, t0, s9
                  and          a2, a1, s2
                  auipc        gp, 470113
                  bge          a0, ra, 524f
                  sltu         a5, t5, t2
                  srli         tp, s1, 6
                  slti         t1, a3, 63
                  bge          a5, t4, 519f
513:              auipc        s5, 145840
                  sltiu        a4, a6, -1067
515:              nop
                  beq          s1, gp, 533f
517:              slt          t3, a4, a5
                  sub          a4, a5, s1
519:              add          t3, t3, s11
                  and          tp, a7, s0
                  srai         t5, a1, 24
                  srli         gp, t3, 28
                  sub          t1, a3, a1
524:              slt          s5, s5, s3
                  sub          s7, t1, a3
                  bltu         s9, zero, 541f
                  xori         a2, s10, 4
                  sltiu        s6, a5, 1260
                  srl          t4, s11, t0
                  sltu         t5, ra, tp
                  bne          s1, t0, 533f
                  sltiu        sp, s3, 1342
533:              ori          s1, zero, -963
                  bne          a4, a7, 552f
                  slli         t5, a5, 24
                  bne          a4, s10, 539f
                  ori          s10, s11, -1291
                  sub          t5, s0, t5
539:              beq          t6, s10, 552f
                  bltu         ra, a5, 554f
541:              sltiu        a5, a0, 420
                  bne          s3, s6, 552f
                  xori         t4, s4, 1785
                  bne          s11, t4, 547f
                  sll          a7, ra, s0
                  bltu         s8, a7, 564f
547:              sltu         a6, s9, a4
                  ori          s7, s8, 380
                  sub          s5, s6, s7
                  slt          a6, t6, t6
                  srai         a2, s8, 28
552:              srl          tp, s9, t6
                  srai         sp, ra, 11
554:              blt          t4, s11, 563f
                  sltu         t5, a6, s1
                  addi         s8, t5, 731
                  xori         s1, s9, -31
                  and          s0, a7, a4
                  srli         s4, s0, 21
                  lui          s7, 885924
                  bltu         a1, a1, 579f
                  beq          s7, gp, 568f
563:              bne          tp, a0, 576f
564:              slt          s8, a6, a2
                  xor          tp, a5, ra
                  sra          s8, t0, s1
                  bgeu         s7, s8, 570f
568:              sll          t1, s1, a5
                  ori          a2, s6, -1037
570:              bgeu         sp, zero, 578f
                  or           t3, s3, t5
                  xori         a2, s8, 1639
                  or           s7, s3, t3
                  or           s1, sp, gp
                  sra          s9, a4, s1
576:              sub          a3, t0, s5
                  bltu         tp, t1, 586f
578:              ori          s4, s7, 1631
579:              blt          s4, zero, 585f
                  srai         a2, s6, 11
                  bne          a3, s0, 594f
                  addi         tp, a7, 1750
                  lui          t2, 250121
                  bgeu         t0, s10, 591f
585:              bne          s10, a4, 594f
586:              sra          s9, s10, s2
                  srli         s0, t4, 16
                  sltiu        t5, a5, 148
                  srai         s9, t5, 28
                  xor          a7, s3, t0
591:              srai         zero, s2, 19
                  xor          t4, s0, s11
                  slli         a5, t4, 2
594:              slt          s7, t5, a2
                  lw           a7, 4(a1)
                  add          ra, t0, a6
                  srai         s1, s4, 23
                  sll          s8, a0, tp
                  addi         a1, a1, 36
                  sub          s2, s8, t5
779:              addi x20, x17, 0
779:              jalr x20, x20, 0
sub_3:            bgeu         t0, a0, sub_3_stack_p
sub_3_stack_p:    addi         a1, a1, -64
                  add          s9, gp, sp
                  sw           a7, 4(a1)
                  sra          s2, s8, t6
                  sll          a3, s8, zero
                  andi         s6, a5, 1696
                  sltiu        tp, t4, -595
                  srli         a2, s10, 29
                  xor          sp, a7, s9
                  slti         t3, t1, -176
                  auipc        tp, 821550
                  sltu         t2, s3, gp
                  or           s4, s3, t2
                  srl          a3, s6, t3
                  la           a2, sub_4
                  xori         s0, s11, 438
                  addi         a2, a2, 466
                  srli         t1, zero, 23
                  srai         tp, s10, 29
                  and          t2, s6, t2
sub_3_j5:         jalr         a7, a2, -465 #jump sub_3 -> sub_4
                  slli         s1, t4, 28
                  la           a2, sub_4
                  addi         a6, s2, -735
                  srai         t4, a5, 31
                  addi         a2, a2, -334
                  addi         a6, t2, -840
                  sll          s9, s10, a1
                  nop
sub_3_j6:         jalr         a7, a2, 335 #jump sub_3 -> sub_4
                  la           sp, region_0+571 #start riscv_load_store_rand_instr_stream_2
                  lbu          s9, -24(sp)
                  srai         s11, a5, 27
                  slti         s9, s7, 1121
                  sb           s6, 28(sp)
                  sb           s3, 10(sp)
                  lb           s6, -27(sp)
                  lui          gp, 690275
                  andi         zero, t4, -73
                  lbu          t2, -57(sp)
                  lbu          a5, -18(sp)
                  slli         s2, s10, 0
                  sb           s0, -22(sp)
                  and          a4, s8, t1
                  lui          a4, 91980
                  and          s9, t1, t4
                  sb           t0, 1(sp)
                  lw           a4, 17(sp)
                  lb           t2, -48(sp)
                  sub          zero, s6, a0
                  lhu          s8, 45(sp)
                  lbu          t0, 22(sp)
                  sltu         t0, t4, a1
                  andi         a5, s5, -1105
                  sh           s7, 29(sp)
                  srli         t1, sp, 31
                  lb           s7, -64(sp)
                  sll          a7, s11, a4
                  nop
                  lbu          s2, 47(sp)
                  sb           s7, 44(sp)
                  lb           ra, -9(sp)
                  lhu          t4, -11(sp)
                  and          gp, t1, ra
                  slli         s5, a4, 12
                  lbu          s1, 0(sp)
                  sb           tp, -64(sp)
                  lw           s2, -59(sp)
                  lbu          t5, 58(sp)
                  srl          s5, s0, tp
                  lbu          s1, 56(sp)
                  lbu          s4, -30(sp)
                  sll          s9, gp, a0
                  ori          s7, s8, -515
                  lb           s6, -24(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_1+205 #start riscv_load_store_rand_instr_stream_0
                  lb           sp, 7(a7)
                  slti         s6, a1, 1757
                  lbu          gp, -4(a7)
                  sltiu        t0, sp, 763
                  addi         a4, s11, 818
                  srai         gp, t3, 4
                  lbu          t6, 6(a7)
                  lui          t3, 23207
                  sub          s7, a7, a1
                  srai         a3, t0, 15
                  ori          ra, t4, -945
                  xor          t1, zero, s11
                  and          t3, s0, t0
                  srl          s8, a3, s2
                  lui          s7, 161543
                  xori         s7, t6, 924
                  lw           a3, 7(a7)
                  sb           a7, 7(a7)
                  sw           t1, -9(a7)
                  slt          s9, s3, a7
                  sltiu        s2, a2, 1673
                  srli         t3, a4, 19
                  lbu          t3, -14(a7)
                  sb           t1, -14(a7)
                  slt          s9, s0, a0
                  lb           t3, 11(a7)
                  lbu          s5, -6(a7)
                  lbu          s11, -11(a7)
                  lb           s2, -4(a7)
                  slti         t1, s3, -976
                  lui          t1, 523935
                  sll          s4, a2, s2
                  xor          s10, s0, s5
                  sh           t5, 13(a7)
                  slt          s4, a4, s9
                  lbu          t3, -4(a7) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+781 #start riscv_load_store_rand_instr_stream_1
                  addi         t1, t4, 2047
                  sb           tp, 36(s8)
                  lbu          s1, 828(s8)
                  xor          a7, zero, a4
                  sh           s5, -645(s8)
                  srli         t4, t5, 14
                  sh           zero, -281(s8)
                  sltiu        ra, t5, -533
                  sb           t0, 852(s8)
                  sb           s10, -284(s8)
                  lb           s10, -286(s8)
                  sb           s4, 588(s8)
                  lw           zero, -521(s8)
                  sltiu        zero, a6, 2014
                  add          s10, zero, tp
                  slli         a2, a5, 29
                  xor          s1, s3, a1
                  lw           s6, -157(s8)
                  lb           s5, 917(s8)
                  srli         s9, a6, 23
                  addi         t4, s5, -1584
                  lh           sp, 235(s8)
                  lbu          gp, -140(s8)
                  lb           t6, -659(s8)
                  sb           a1, 489(s8)
                  sb           a1, 556(s8)
                  srai         gp, t6, 11
                  addi         s9, s11, 1630
                  lb           a3, -432(s8)
                  lb           zero, 513(s8)
                  sb           t0, -240(s8)
                  sb           a2, 1018(s8)
                  lh           s5, -651(s8)
                  lbu          sp, 1082(s8)
                  sub          s5, a6, zero
                  sb           s6, -552(s8) #end riscv_load_store_rand_instr_stream_1
                  ori          a2, s4, 1733
                  andi         zero, a7, -152
                  andi         t6, a2, 235
                  srli         s4, gp, 19
                  slti         a7, gp, -219
                  bge          a0, s10, 8f
                  bge          a6, zero, 12f
                  addi         t6, zero, -1650
8:                bge          s6, t2, 24f
                  xori         t0, t1, 468
                  xori         s11, a6, 1645
                  add          s1, s4, t6
12:               sll          t6, a7, t4
                  beq          s3, t0, 24f
                  add          t6, a2, sp
                  nop
                  slt          zero, t3, s6
                  sra          t5, s7, a7
                  addi         sp, t5, -786
                  ori          tp, a2, 918
                  sra          s11, s7, a0
                  slt          s6, s5, a2
                  blt          t6, zero, 41f
                  beq          s11, t1, 40f
24:               xori         t4, a2, -141
                  blt          t0, s1, 38f
                  slli         zero, a6, 23
                  ori          t2, a1, 1623
                  sltu         s0, zero, a1
                  sub          s9, a4, sp
                  slli         t0, s11, 6
                  srai         s8, a4, 25
                  lui          t2, 325598
                  add          gp, s4, t6
                  andi         s6, t6, -1573
                  and          a6, ra, t3
                  sll          s7, s0, s9
                  bge          a0, sp, 55f
38:               slt          a7, s3, zero
                  srli         t4, ra, 3
40:               xor          a2, gp, s3
41:               nop
                  srai         s0, a7, 23
                  sltu         s5, t6, t2
                  addi         a6, s4, -131
                  nop
                  sll          ra, a6, a6
                  beq          s6, s9, 54f
                  add          a6, s3, t5
                  bge          s4, t2, 68f
                  bgeu         s11, s1, 68f
                  xor          a5, s6, t3
                  bltu         a2, tp, 71f
                  andi         tp, t6, -1211
54:               nop
55:               addi         s4, ra, -1034
                  srl          t1, t3, s4
                  srai         a2, s11, 7
                  andi         t5, s10, 1051
                  slt          t4, a5, t5
                  addi         t0, s8, -1044
                  and          t1, t1, s11
                  srli         s10, t0, 5
                  or           ra, ra, zero
                  ori          s1, s5, 1784
                  add          s0, a1, s10
                  slt          s6, a2, a6
                  lui          a6, 481560
68:               srl          s7, s3, s5
                  add          a7, gp, t6
                  srai         s5, s10, 11
71:               blt          s4, t3, 73f
                  nop
73:               addi         s0, a0, -1199
                  bltu         a2, t1, 92f
                  slt          s5, a4, a3
                  sltiu        sp, s2, 2002
                  lui          tp, 573173
                  sltu         tp, a0, a2
                  sub          a2, s1, t4
                  auipc        t3, 232716
                  bgeu         t2, a1, 97f
                  srli         s0, zero, 3
                  srai         a2, gp, 19
                  srai         s2, gp, 12
                  bge          gp, a2, 96f
                  blt          tp, s5, 88f
                  or           s4, t5, sp
88:               auipc        t3, 976280
                  sll          a4, s6, s5
                  sltiu        t2, a6, -1326
                  srai         ra, s0, 16
92:               xori         s4, s11, 1883
                  andi         s0, a3, -1594
                  andi         s0, a1, 1107
                  slt          s5, t4, ra
96:               sltu         sp, s3, s0
97:               srli         t0, sp, 10
                  blt          s9, a5, 110f
                  bgeu         t3, ra, 105f
                  bne          t2, a5, 108f
                  bne          t0, t2, 112f
                  sltiu        s11, s9, -1778
                  sltiu        t6, s9, -1805
                  xori         t5, s10, -136
105:              lui          s5, 630210
                  xor          s0, a3, a2
                  ori          t2, a3, -1365
108:              sub          t6, s1, s2
                  xor          t0, s8, s5
110:              bgeu         s9, t6, 124f
                  add          s4, gp, s6
112:              ori          s11, t3, -978
                  sub          s8, a5, zero
                  sltu         tp, s11, s7
                  add          ra, s7, s3
                  sltu         a4, s0, tp
                  bgeu         s1, t2, 122f
                  xori         t6, gp, -2035
                  bge          gp, t6, 132f
                  sltu         a3, s2, s9
                  lui          a2, 627718
122:              and          a4, s5, s3
                  srli         t5, s10, 7
124:              slli         s7, t1, 16
                  or           t1, s4, gp
                  sra          t1, a7, t4
                  andi         t1, t6, 461
                  sll          t3, tp, s2
                  ori          t6, s11, 1839
                  srl          t6, s1, a6
                  sltu         t3, a1, s5
132:              blt          t4, t4, 142f
                  and          s7, gp, s8
                  beq          s7, t3, 152f
                  sra          t0, tp, s6
                  sltu         s0, s4, a3
                  srli         t3, a0, 17
                  sltiu        s5, s1, 1368
                  beq          s2, s4, 155f
                  addi         sp, a5, -1285
                  or           a3, a3, s2
142:              sltiu        s5, a3, -1570
                  sra          s6, a4, a1
                  sltu         ra, t4, s10
                  slt          s10, s11, a7
                  sll          a3, s1, s4
                  sub          s5, a1, a0
                  slli         t0, zero, 26
                  slti         s1, t2, 1656
                  auipc        s7, 1015703
                  bltu         s2, t5, 166f
152:              ori          a5, s1, 1027
                  xori         s5, s11, 1290
                  or           t3, s2, ra
155:              ori          a3, t1, 1991
                  nop
                  ori          a6, a0, 710
                  srai         s2, sp, 20
                  sll          t4, a5, s6
                  sub          s2, s7, s8
                  or           s0, a1, a2
                  slti         s11, s7, 1248
                  lui          a3, 626229
                  addi         t6, tp, -2014
                  sll          t4, gp, t0
166:              nop
                  sub          s11, t0, t3
                  xori         s5, a3, 474
                  sub          t4, zero, s1
                  slti         t0, s9, 1050
                  bne          a0, s1, 183f
                  andi         a7, s8, 1269
                  bgeu         t4, t2, 176f
                  sltu         gp, t1, zero
                  blt          s0, a4, 178f
176:              slti         s1, a6, 641
                  andi         t6, a2, 408
178:              blt          t1, t5, 188f
                  slli         s10, s9, 15
                  nop
                  ori          a4, a6, -1333
                  addi         s2, gp, -208
183:              sub          s5, s11, zero
                  slt          s11, s5, a1
                  slt          a5, t5, a0
                  and          ra, ra, ra
                  lui          ra, 656717
188:              slt          t2, s2, t3
                  slt          t0, t2, t3
                  srli         s2, a3, 13
                  xori         s0, s0, 243
                  lui          s6, 55573
                  slti         t6, a7, -1074
                  xori         a7, t6, -130
                  srl          a6, t2, s4
                  sltiu        s2, s2, 217
                  xor          a4, s7, t0
                  bltu         s7, tp, 214f
                  sltu         t4, sp, gp
                  srli         s10, s4, 5
                  beq          s7, s9, 219f
                  slli         s10, gp, 9
                  addi         a4, s2, -1151
                  xor          t2, a5, a5
                  andi         s6, s0, 1056
                  srli         a3, s4, 26
                  or           s9, t1, zero
                  addi         a6, s0, 1763
                  bge          s7, sp, 220f
                  and          s5, tp, t5
                  bne          a6, s9, 217f
                  bltu         a1, s7, 226f
                  bltu         a7, a5, 224f
214:              lui          s2, 5061
                  and          s11, t6, zero
                  slt          t3, s7, a1
217:              srli         s11, s5, 10
                  bgeu         t5, t6, 220f
219:              srl          a7, s9, t6
220:              sltu         tp, t3, a5
                  bgeu         a0, t1, 237f
                  bgeu         t1, s9, 240f
                  blt          s9, a6, 229f
224:              slt          t2, a2, a6
                  bge          s0, s6, 244f
226:              bge          t3, t0, 243f
                  slti         a4, a7, -1937
                  srai         gp, s6, 26
229:              sll          s1, s2, t0
                  addi         t5, t4, -327
                  xor          sp, ra, a2
                  or           a5, s5, sp
                  nop
                  sltiu        sp, t3, -498
                  sra          t0, gp, s0
                  or           s9, s2, t1
237:              srai         a4, tp, 7
                  slti         a5, t4, 309
                  xori         a7, a0, -1881
240:              sltu         s2, a0, a0
                  slt          t6, s5, t1
                  nop
243:              lui          a2, 302736
244:              xori         zero, ra, -1223
                  auipc        a5, 407965
                  slti         zero, s7, -346
                  sltiu        t3, s1, 803
                  bge          a5, s4, 261f
                  ori          t5, t0, -714
                  and          ra, s5, a4
                  sltiu        a6, s7, 929
                  auipc        s0, 5210
                  blt          s4, gp, 269f
                  bltu         s4, t2, 269f
                  slt          s0, t1, ra
                  addi         s10, s6, -1821
                  bltu         t6, sp, 275f
                  xor          t5, s0, a2
                  bne          t6, s8, 272f
                  nop
261:              sll          a4, zero, s3
                  bgeu         s5, a5, 269f
                  slli         s0, t2, 10
                  sltu         s6, gp, t3
                  lui          s10, 347218
                  add          t6, s11, a0
                  blt          s7, t6, 285f
                  addi         a5, a0, -1171
269:              sltu         t4, tp, a3
                  or           t4, a6, a5
                  bne          a1, s6, 290f
272:              bne          t2, a1, 291f
                  add          s1, s7, gp
                  bltu         s4, a1, 286f
275:              sltiu        s11, t4, 1803
                  sra          a3, s0, s8
                  bltu         s2, sp, 285f
                  nop
                  xor          a6, s2, s5
                  bltu         a4, zero, 292f
                  sub          a4, t5, s11
                  bgeu         ra, t5, 287f
                  sub          t4, s3, s0
                  sra          sp, tp, s11
285:              sltu         s9, t3, s6
286:              auipc        s9, 756963
287:              srli         s9, s5, 2
                  auipc        t2, 993551
                  blt          t0, a6, 300f
290:              xor          s11, s6, t5
291:              and          sp, a7, t6
292:              and          t6, a4, sp
                  bgeu         sp, a0, 296f
                  slt          s10, a0, s11
                  srl          s11, ra, t1
296:              blt          t2, a2, 298f
                  or           t0, s0, s5
298:              and          s6, gp, a1
                  andi         a5, t6, -1953
300:              add          gp, s4, zero
                  srai         t5, s1, 14
                  sub          a6, s1, s4
                  srl          s6, s4, ra
                  slti         s4, s4, -1537
                  slli         s0, zero, 21
                  addi         s1, a3, 1069
                  blt          s11, tp, 326f
                  slli         s1, s1, 21
                  lui          s9, 954354
                  andi         a4, t5, 1559
                  andi         s6, ra, 2042
                  and          s7, a0, s2
                  andi         a7, ra, -742
                  slli         a5, t4, 9
                  sra          s10, s10, a5
                  lui          a7, 622650
                  slli         s2, s11, 21
                  sra          s4, t6, t0
                  bne          s5, a4, 337f
                  bne          s10, tp, 338f
                  sra          t4, sp, s6
                  bgeu         s1, a2, 333f
                  bge          a6, tp, 335f
                  sltu         a7, a0, s11
                  blt          s1, s3, 338f
326:              sub          s1, s2, a0
                  andi         t6, t0, 1035
                  and          a6, a1, s6
                  slt          t5, s2, s9
                  slli         s7, s6, 26
                  ori          t6, gp, 1010
                  andi         t3, s8, 1858
333:              bgeu         a7, s6, 339f
                  lui          t2, 90773
335:              auipc        t1, 898909
                  sll          t0, a1, s1
337:              andi         t0, a5, -1252
338:              nop
339:              srli         tp, s7, 6
                  srli         s1, s5, 12
                  sll          a6, s2, s0
                  auipc        s11, 596721
                  bgeu         t3, t2, 346f
                  srl          a4, t1, zero
                  sra          a6, gp, s3
346:              sra          s10, a2, a1
                  sltiu        s2, t1, -1726
                  sltiu        t3, a7, -672
                  xor          t3, a7, a0
                  xor          ra, t3, s6
                  ori          a4, t4, -1620
                  addi         a7, s1, 1341
                  slti         sp, s5, 1125
                  bltu         a5, a1, 370f
                  add          ra, a7, t6
                  andi         s10, t6, -1118
                  slt          a4, a2, a4
                  srai         s4, s6, 8
                  slti         t1, a0, 1326
                  beq          s11, s0, 371f
                  srli         tp, s6, 9
                  xori         s10, zero, 1918
                  srli         s11, ra, 9
                  sltu         a2, t2, a7
                  ori          a4, tp, 753
                  srl          t2, t6, t5
                  bltu         s6, sp, 380f
                  sub          t1, t1, zero
                  sltiu        s8, s9, 1084
370:              ori          s10, t1, 1888
371:              auipc        t4, 530499
                  sll          s9, zero, t5
                  sltu         s11, t1, a4
                  sra          t5, a3, ra
                  lui          a6, 749589
                  sra          gp, a7, gp
                  andi         zero, s9, 1999
                  srai         t2, sp, 11
                  lui          t4, 345230
380:              auipc        t4, 128244
                  sll          s7, s10, t2
                  beq          s9, s8, 384f
                  ori          tp, s2, 1519
384:              bne          a5, sp, 391f
                  sub          tp, a2, s7
                  addi         a4, a2, -1865
                  srl          a6, a5, zero
                  sra          s10, t6, s6
                  or           a2, s0, a5
                  sub          s2, s7, s3
391:              or           s10, t0, a0
                  xor          sp, ra, s1
                  srai         t4, a3, 28
                  and          s10, s1, a0
                  sra          t0, a1, a5
                  beq          t1, s10, 404f
                  xor          s6, a2, a5
                  nop
                  sub          t3, a1, s1
                  blt          s10, t4, 411f
                  sub          tp, a0, a2
                  sra          t2, s1, a3
                  sll          s0, a3, a1
404:              bltu         s2, t6, 420f
                  bge          zero, t6, 424f
                  addi         gp, s6, 1637
                  slt          t3, t4, a7
                  andi         a6, t4, 1446
                  slti         t0, sp, -1877
                  slti         a7, s6, 1978
411:              slti         t3, a5, 1171
                  auipc        ra, 955622
                  andi         t0, t6, -732
                  add          s5, s3, s3
                  srl          t2, a6, s5
                  andi         tp, s0, -811
                  sll          ra, t2, gp
                  slli         tp, t0, 31
                  or           s7, s7, s11
420:              lui          s9, 318945
                  or           t1, s4, s5
                  srai         tp, s7, 27
                  ori          s8, tp, 280
424:              nop
                  auipc        s4, 910218
                  auipc        s0, 872990
                  beq          s10, sp, 432f
                  sltiu        t1, a1, -303
                  sll          ra, a5, t2
                  bge          sp, ra, 442f
                  auipc        s7, 6224
432:              and          a4, a0, t5
                  slli         a7, t2, 30
                  nop
                  srli         s2, a7, 3
                  sltiu        a6, s3, -553
                  sub          t4, s8, t5
                  bltu         t6, t2, 453f
                  bge          a4, a6, 441f
                  sltu         s1, t2, a6
441:              ori          sp, s8, 1080
442:              sltiu        s1, s3, -1408
                  bgeu         ra, s6, 459f
                  xor          t3, t1, s6
                  bge          s4, s1, 448f
                  sra          t0, s4, s3
                  blt          a5, t3, 465f
448:              srai         t6, tp, 24
                  add          gp, a5, s1
                  sltiu        sp, s5, -1275
                  slt          t0, s8, t4
                  srai         s7, s1, 20
453:              auipc        s4, 550883
                  bne          s1, a0, 470f
                  srli         s1, ra, 29
                  addi         a2, t1, 377
                  blt          s7, tp, 470f
                  bge          gp, zero, 468f
459:              addi         zero, a0, -137
                  bne          t2, s9, 470f
                  slti         a3, t4, -119
                  sll          t0, t4, sp
                  ori          t1, a4, -1825
                  bltu         ra, s11, 470f
465:              bne          gp, s6, 470f
                  sltu         ra, s9, s0
                  xori         s4, s9, -1088
468:              andi         zero, t2, -405
                  sltu         s8, s10, s3
470:              sll          tp, t0, t3
                  lw           a7, 4(a1)
                  xor          s9, t4, s0
                  sub          a6, tp, s2
                  xor          t0, s4, ra
                  xor          s1, t4, t5
                  or           ra, s9, a4
                  sltiu        t3, a0, -812
                  xor          s0, s9, sp
                  addi         a1, a1, 64
                  auipc        t4, 881903
631:              addi x13, x17, 1
631:              jalr x13, x13, 0
sub_6:            nop
                  sra          tp, s5, s11
                  blt          t3, ra, sub_6_stack_p
                  sub          s4, a3, s2
                  srai         s8, s0, 11
                  add          ra, s6, s7
sub_6_stack_p:    addi         a1, a1, -32
                  srl          t2, t4, t6
                  sw           a7, 4(a1)
                  or           t0, ra, t0
                  la           a5, region_0+1581 #start riscv_load_store_rand_instr_stream_2
                  lh           t2, -687(a5)
                  lbu          t4, 117(a5)
                  sb           t6, -232(a5)
                  srai         t1, s11, 21
                  auipc        s7, 120389
                  slli         a7, s6, 17
                  srai         tp, a6, 15
                  sltiu        s10, a2, -1054
                  addi         a6, sp, -1285
                  sltiu        s8, s8, -1403
                  auipc        s6, 979993
                  lbu          s10, 16(a5)
                  auipc        s7, 60972
                  lhu          s4, -1411(a5)
                  sh           t6, -1487(a5)
                  xori         s11, zero, 2018
                  sw           zero, -909(a5)
                  sub          s1, s1, s3
                  sll          t1, s4, a7
                  sltu         s1, ra, gp
                  sw           s1, -613(a5)
                  auipc        s1, 966371
                  lb           s5, -1027(a5)
                  sb           a2, -731(a5)
                  sll          t6, t5, a6
                  lbu          s6, -410(a5)
                  lui          t5, 451137
                  lbu          a2, -684(a5)
                  lb           t5, -606(a5) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1167 #start riscv_load_store_rand_instr_stream_0
                  lb           t2, -1092(sp)
                  lw           s1, 41(sp)
                  lbu          t0, 310(sp)
                  lh           s2, 275(sp)
                  sh           t1, 513(sp)
                  lw           gp, -79(sp)
                  nop
                  lb           s6, -887(sp)
                  lbu          t5, -308(sp)
                  lui          s9, 409831
                  sb           a7, -20(sp)
                  lbu          s8, -332(sp)
                  lhu          t3, -1027(sp)
                  lh           ra, -809(sp)
                  and          s8, a5, a4
                  nop
                  andi         a5, tp, 1454
                  sb           a2, 796(sp)
                  xori         a3, s6, -1274
                  lbu          t1, -280(sp)
                  lb           a6, -805(sp)
                  sb           s9, -941(sp)
                  sub          t6, s8, s0
                  xor          s6, tp, ra
                  lbu          t3, -535(sp)
                  lhu          ra, -207(sp)
                  lb           a4, 806(sp)
                  sb           sp, -478(sp)
                  lb           ra, 404(sp)
                  slt          s8, t3, s2
                  lh           t3, -969(sp)
                  auipc        a2, 409857
                  sra          s5, a1, sp
                  sltu         s0, s4, s3
                  sb           s4, 354(sp)
                  sub          a3, a1, a0
                  lb           s11, -650(sp)
                  lb           tp, -1104(sp)
                  lbu          a4, 503(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1105 #start riscv_load_store_rand_instr_stream_4
                  slti         s2, tp, 1189
                  sltiu        s7, tp, 575
                  ori          s10, t3, 535
                  xor          s9, s10, a1
                  lui          a2, 98861
                  add          a7, a3, t4
                  lbu          zero, -110(sp)
                  srli         ra, t1, 21
                  and          s0, a0, a4
                  slt          s4, s5, ra
                  addi         a3, s6, -145
                  srli         s2, s0, 10
                  lb           t1, -678(sp)
                  sltiu        t1, s7, 843
                  srl          t5, s4, s11
                  sh           t6, -1097(sp)
                  lbu          zero, -410(sp)
                  auipc        a6, 208807
                  add          a5, sp, zero
                  xori         t6, tp, -843
                  lui          t4, 340852
                  sb           sp, 602(sp)
                  or           a3, s11, s1
                  lb           ra, -36(sp)
                  sltiu        t6, a2, -1027
                  sb           t4, 33(sp)
                  sll          s0, a0, a1
                  and          s10, s8, s2
                  ori          s9, a3, 609
                  ori          s2, gp, -983
                  addi         t0, t3, -695
                  sb           a2, -6(sp)
                  sra          t0, s2, a4
                  srai         a2, s8, 6
                  lb           ra, 891(sp)
                  slli         s5, zero, 1
                  sh           s1, -827(sp)
                  sltu         s4, tp, s7
                  sltiu        tp, ra, -133
                  lbu          s7, -145(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s0, region_0+1385 #start riscv_load_store_rand_instr_stream_7
                  and          s5, s8, t0
                  sh           a6, -13(s0)
                  nop
                  andi         gp, t4, -176
                  or           t2, gp, s6
                  addi         a3, t2, -1070
                  ori          a6, s11, 1398
                  addi         s4, a2, -1635
                  sb           a7, 6(s0)
                  lb           t4, 4(s0)
                  slti         s4, a4, 1244
                  lbu          a6, 6(s0)
                  sltiu        t4, t3, 601
                  or           a3, s0, s4
                  andi         sp, a0, 744
                  lb           s4, -4(s0)
                  sh           s3, 13(s0)
                  addi         tp, a1, -644
                  xori         s1, s7, -949
                  sh           a5, 13(s0)
                  sltu         s2, a0, a6
                  slt          s4, t5, s3
                  lb           t0, 7(s0)
                  xori         s6, t1, -1753
                  lbu          zero, 16(s0)
                  sb           zero, -12(s0)
                  sltiu        s4, t1, 1770
                  lui          sp, 779959
                  and          t5, s4, s5
                  sb           tp, -6(s0)
                  srai         s9, a3, 11
                  addi         a2, a5, -629
                  lb           zero, -14(s0) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1813 #start riscv_load_store_rand_instr_stream_8
                  lb           gp, -15(sp)
                  sb           s11, -10(sp)
                  lb           t0, -12(sp)
                  nop
                  sra          t1, tp, s10
                  slli         a7, a6, 26
                  srai         a4, t0, 24
                  xori         s1, a0, -1456
                  lbu          s8, 6(sp)
                  xori         s6, t2, -566
                  ori          gp, s8, -2010
                  xori         ra, a2, 377
                  nop
                  sltiu        t3, t2, -1201
                  sb           t1, -8(sp)
                  sh           t6, -15(sp)
                  sh           a7, 15(sp)
                  xor          a3, s9, s10
                  sb           s1, 11(sp)
                  sb           s9, -2(sp)
                  srl          a3, s6, t4
                  sra          s8, s2, a2
                  sltiu        s8, s10, 1846
                  auipc        s4, 258675
                  xori         s10, s3, 458
                  sh           a2, -11(sp)
                  srai         a2, s2, 9
                  sb           s10, 1(sp)
                  sb           a4, 13(sp)
                  lb           a3, -3(sp)
                  slti         gp, t4, -1452
                  sub          a3, s6, t1
                  lb           s2, 11(sp)
                  or           a4, s10, zero
                  sll          t5, a6, s1
                  lbu          s9, 12(sp)
                  lbu          a7, 10(sp)
                  lb           s10, -5(sp)
                  lui          t6, 570262
                  lb           s8, 13(sp)
                  addi         a3, ra, 1666
                  lb           s0, -13(sp)
                  lh           t1, 11(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+401 #start riscv_load_store_rand_instr_stream_5
                  slti         a5, a5, -822
                  lb           a6, -274(sp)
                  lb           s7, 274(sp)
                  sll          s0, s2, s4
                  slti         s1, t2, -114
                  lh           zero, 1209(sp)
                  lw           s7, -401(sp)
                  lbu          t2, 126(sp)
                  srli         s8, a4, 4
                  lb           a5, 800(sp)
                  lbu          tp, 720(sp)
                  lhu          a6, 1269(sp)
                  sub          t5, gp, t4
                  ori          s5, t0, -1162
                  lbu          gp, 200(sp)
                  addi         zero, t2, -1574
                  sb           a4, -126(sp)
                  sw           s7, 315(sp)
                  sh           t0, 933(sp)
                  sb           s10, 974(sp)
                  sh           t4, 967(sp)
                  sb           s0, 1561(sp)
                  lh           a5, 313(sp)
                  sltu         t1, s1, t5
                  sll          s6, s9, a0
                  srli         a6, s0, 16
                  lbu          s10, -40(sp)
                  sra          t0, a2, t4
                  sb           zero, 990(sp)
                  sb           a0, 600(sp)
                  sra          s10, a5, s7
                  sll          ra, s5, t0
                  sh           s4, -209(sp)
                  slli         s2, ra, 12
                  sb           a5, 1148(sp)
                  lh           a4, 433(sp)
                  sb           t5, -32(sp)
                  andi         t3, a7, 483
                  lbu          tp, 1126(sp)
                  sh           t6, 415(sp)
                  sb           gp, 240(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_1+1168 #start riscv_load_store_rand_instr_stream_10
                  sub          s5, s6, a3
                  addi         s0, t1, -1644
                  slt          s4, s0, s5
                  lh           t3, -6(s8)
                  sltiu        s11, tp, 838
                  xori         a4, a7, -1524
                  xor          zero, a6, s11
                  lb           zero, -14(s8)
                  lbu          s11, -2(s8)
                  lbu          s2, 1(s8)
                  addi         sp, zero, 208
                  lbu          s5, -3(s8)
                  srli         a6, t5, 14
                  sra          a2, a7, t4
                  andi         a6, gp, 826
                  sltiu        a7, s7, -468
                  srli         a5, zero, 13
                  sb           a1, 3(s8)
                  sb           sp, -11(s8)
                  lb           s11, 7(s8)
                  and          sp, s4, a5
                  lb           ra, -11(s8)
                  sb           s11, -1(s8)
                  sw           t6, 16(s8)
                  sb           t4, -13(s8)
                  nop
                  slti         a6, s8, 1726
                  ori          t5, t0, 1257
                  auipc        a6, 631332
                  lw           t4, 4(s8)
                  and          a3, s6, s10
                  sub          s10, ra, s7
                  sb           s0, -14(s8)
                  sltiu        s6, s2, -287
                  slt          t6, tp, t5
                  sltu         ra, s1, s3
                  lb           zero, 11(s8)
                  lb           a7, 5(s8)
                  auipc        tp, 44370
                  sll          a7, s6, s2
                  andi         t5, a1, -647
                  sb           zero, -9(s8)
                  lb           t3, -4(s8) #end riscv_load_store_rand_instr_stream_10
                  la           a6, region_1+1444 #start riscv_load_store_rand_instr_stream_6
                  ori          s2, t1, -1536
                  lh           t2, 50(a6)
                  andi         t3, gp, 412
                  sb           a3, -227(a6)
                  lhu          s5, 74(a6)
                  srl          a2, t2, a3
                  lh           gp, -86(a6)
                  slli         a3, a2, 8
                  srai         s0, a2, 22
                  sltu         a3, s0, s4
                  sh           a1, -60(a6)
                  srai         t6, t1, 18
                  sb           s6, -255(a6)
                  sb           s5, -161(a6)
                  lui          gp, 787636
                  slli         a4, a7, 22
                  lw           tp, -92(a6)
                  slti         t3, ra, -17
                  or           t2, s10, t1
                  sra          ra, t4, a2
                  sb           tp, 116(a6)
                  add          s5, t1, t3
                  lb           s6, -114(a6)
                  nop
                  sb           s0, -129(a6)
                  srl          t3, t3, s10
                  or           s0, a5, a7
                  xor          a3, s11, a5
                  ori          tp, s0, -283
                  lw           t4, -148(a6)
                  lb           sp, 199(a6)
                  sb           s6, 153(a6)
                  lbu          zero, 65(a6)
                  srl          s0, s1, t6
                  lbu          zero, 255(a6)
                  lb           s0, 23(a6)
                  lui          s4, 1031641
                  lbu          a2, -132(a6) #end riscv_load_store_rand_instr_stream_6
                  sltiu        t3, a2, 2008
                  bge          s11, t3, 6f
                  andi         s2, s7, 1797
                  srai         s4, a7, 20
                  bne          s6, a3, 18f
                  slli         a5, s10, 2
6:                xori         a6, s3, -850
                  bgeu         a1, s1, 14f
                  addi         t2, gp, 159
                  srai         gp, s7, 7
                  srai         ra, s10, 0
                  lui          a5, 646681
                  addi         s1, ra, 1912
                  slt          a2, t6, s10
14:               lui          a4, 594122
                  nop
                  beq          t3, a0, 32f
                  xor          a4, a1, ra
18:               srl          t3, a3, a1
                  auipc        s9, 753701
                  bge          gp, t1, 24f
                  add          s0, s9, s5
                  slt          t3, a1, t3
                  bltu         s3, s9, 27f
24:               and          sp, a2, t3
                  add          t0, t2, a6
                  blt          a0, s4, 42f
27:               nop
                  slti         a2, s11, -586
                  slli         s2, t0, 22
                  sub          a5, t4, a5
                  sltiu        s10, s0, -1941
32:               bne          sp, t6, 33f
33:               add          t3, s10, s1
                  add          t6, a1, s7
                  bgeu         t4, t4, 48f
                  xor          a7, a1, tp
                  blt          a5, a6, 43f
                  or           t2, t3, s4
                  add          tp, t2, t6
                  bltu         a0, t5, 58f
                  slli         a4, t1, 5
42:               srl          t6, t3, s6
43:               addi         t1, s3, 369
                  andi         s0, a7, -90
                  srai         s9, t4, 29
                  slli         t1, s9, 9
                  beq          s3, s3, 62f
48:               sll          t2, s4, a3
                  srai         s0, tp, 19
                  bgeu         ra, s1, 53f
                  xor          s8, sp, s0
                  and          s0, a7, t3
53:               addi         a2, ra, -1636
                  andi         s8, s6, 642
                  bgeu         s11, s1, 69f
                  nop
                  sll          s7, gp, a4
58:               sra          sp, s5, s4
                  or           s10, a0, a7
                  sll          s2, ra, a4
                  add          s11, s3, t2
62:               slti         zero, zero, 1979
                  sltu         t4, s9, a2
                  ori          s11, tp, -1238
                  slt          t4, t6, gp
                  and          a4, s2, s5
                  blt          a4, gp, 72f
                  auipc        a3, 166323
69:               xori         t4, s4, 649
                  ori          s10, s3, 647
                  srai         s8, t1, 4
72:               bltu         a3, a3, 82f
                  andi         s9, a4, -158
                  sra          t0, s11, s6
                  bgeu         s3, a4, 92f
                  sll          t2, a0, s8
                  sra          s8, a3, a5
                  lui          s10, 923133
                  slt          s9, t4, s4
                  slti         s2, s11, -688
                  blt          s5, zero, 99f
82:               bne          s4, a0, 93f
                  sltiu        a7, t4, -1583
                  sll          s9, t0, t4
                  auipc        t2, 1000341
                  auipc        t6, 543993
                  srai         s2, a2, 21
                  sll          s4, ra, s7
                  xor          t3, a6, t6
                  nop
                  sub          s11, zero, t5
92:               ori          s2, t3, -1083
93:               ori          s6, s11, 2010
                  srli         a3, a1, 28
                  blt          t2, gp, 97f
                  bgeu         s3, t1, 113f
97:               bgeu         sp, t4, 103f
                  and          zero, tp, a0
99:               xor          t5, t1, a5
                  bgeu         t4, s0, 114f
                  sll          ra, t3, a6
                  slti         a4, s10, 891
103:              slt          t2, t5, t2
                  and          t0, t6, a7
                  add          s7, a3, s11
                  srli         s4, ra, 31
                  nop
                  addi         s10, s5, -1890
                  bltu         a2, s9, 119f
                  sll          s0, s7, a7
                  sll          s0, t2, s11
                  bne          a4, s2, 113f
113:              beq          sp, t2, 128f
114:              slt          t4, s8, a3
                  sub          a7, a1, s0
                  sub          s8, s9, tp
                  nop
                  sra          t0, s10, t0
119:              sltiu        s11, s9, 11
                  bgeu         s5, s1, 121f
121:              sltu         a5, sp, s11
                  bgeu         s6, s4, 130f
                  addi         a2, s11, 1977
                  bne          a1, s8, 128f
                  slti         s2, a3, -537
                  bltu         s7, s6, 138f
                  bge          s0, gp, 137f
128:              addi         t2, a2, -343
                  sltu         s9, zero, s8
130:              xor          a6, s4, a0
                  srai         t5, a5, 30
                  lui          a2, 924215
                  beq          t3, s10, 137f
                  sll          t4, s4, s9
                  slli         a2, t1, 6
                  lui          s4, 870486
137:              blt          s5, t1, 150f
138:              lui          a4, 1032619
                  blt          s3, s1, 154f
                  slti         t2, a6, -1828
                  xor          gp, a6, a6
                  lui          ra, 633756
                  nop
                  slt          t1, s7, a2
                  slti         t3, s3, 1050
                  slti         t4, a1, -101
                  slt          tp, t5, s11
                  auipc        a2, 304771
                  sub          s7, a0, t5
150:              bge          gp, s1, 168f
                  ori          s10, t1, 1682
                  andi         a6, a1, -864
                  sll          a7, s4, a2
154:              or           a3, a2, s5
                  xor          t6, t6, s2
                  srai         s5, ra, 8
                  slti         a2, s9, 688
                  nop
                  andi         t3, t2, -1538
                  ori          s7, s7, -913
                  xori         a2, s10, -347
                  srl          gp, s0, s3
                  addi         s2, gp, -988
                  lui          t4, 812577
                  beq          a2, t4, 179f
                  slt          sp, s8, sp
                  bgeu         a2, t3, 169f
168:              slti         s11, a5, -450
169:              bge          a0, a2, 187f
                  bge          s0, zero, 176f
                  blt          s7, zero, 176f
                  srai         a3, a1, 22
                  srli         a2, zero, 16
                  bgeu         s8, s2, 179f
                  slli         t1, t4, 21
176:              xor          a5, a4, tp
                  bge          t2, a1, 188f
                  srli         s5, a0, 9
179:              xori         s1, s2, -423
                  sub          gp, s9, ra
                  add          s2, s2, sp
                  bge          s9, s1, 196f
                  srli         t3, s5, 9
                  blt          a1, ra, 188f
                  bltu         s2, s0, 188f
                  blt          s7, s1, 187f
187:              blt          s7, a7, 202f
188:              bge          a4, t5, 205f
                  slli         a5, a4, 13
                  bge          s5, s3, 197f
                  srl          t5, t3, t3
                  sltiu        a7, s10, -411
                  sltiu        t2, s3, 699
                  nop
                  lui          s7, 757055
196:              srai         a4, s8, 11
197:              bne          t3, a2, 209f
                  auipc        t3, 125041
                  bgeu         tp, s5, 215f
                  bge          s2, s3, 206f
                  and          s11, sp, s6
202:              add          a3, s6, s10
                  sltu         t1, a4, s7
                  or           a3, t5, s0
205:              sll          s7, s0, sp
206:              slti         zero, s8, 1467
                  addi         s0, s6, -739
                  srai         a2, t0, 5
209:              slli         t2, zero, 10
                  srl          t6, a0, t3
                  xori         a5, s7, 44
                  beq          a3, sp, 220f
                  or           s7, t2, s3
                  ori          a2, s11, 220
215:              sra          a6, s11, s8
                  srai         t5, s8, 7
                  auipc        a4, 204484
                  bne          a6, a3, 222f
                  sltiu        s2, a5, -286
220:              srai         t6, s3, 26
                  slti         ra, a6, 897
222:              bne          a4, a5, 232f
                  nop
                  sra          s10, s4, s2
                  add          zero, s9, s8
                  and          s5, t4, s8
                  slt          a7, t1, s10
                  and          tp, zero, t1
                  xori         zero, t0, -102
                  auipc        a4, 711494
                  sll          s9, a5, t6
232:              slti         s6, a5, -467
                  bltu         a4, s9, 234f
234:              srli         zero, s10, 27
                  slti         zero, sp, -326
                  auipc        s4, 1011928
                  sltiu        t2, a4, -1052
                  slli         ra, t5, 10
                  add          a2, gp, s9
                  add          s4, t3, s7
                  xori         t5, t6, 881
                  auipc        s0, 173347
                  sra          t3, a5, t0
                  add          s2, ra, s6
                  bne          s4, s1, 259f
                  bltu         a3, t2, 262f
                  lui          a4, 908398
                  add          t5, t5, t5
                  slti         t5, t2, -678
                  slti         a3, s7, -406
                  sra          t5, a1, t2
                  blt          s2, s10, 253f
253:              sra          t6, a3, a4
                  srli         t2, a3, 9
                  beq          t5, zero, 272f
                  srai         s10, t1, 30
                  xori         s8, a6, 1884
                  slt          a4, sp, s0
259:              addi         tp, t5, 87
                  or           a6, tp, s5
                  srai         ra, s10, 9
262:              auipc        t3, 259326
                  bge          tp, a6, 264f
264:              sub          s9, a4, s11
                  beq          s4, s6, 277f
                  and          s8, s5, s6
                  bltu         a6, s3, 284f
                  xor          tp, s6, s1
                  sltiu        t0, s6, -840
                  bltu         t4, t4, 275f
                  or           sp, t6, ra
272:              nop
                  sltu         s5, a1, tp
                  srl          s4, a2, t4
275:              nop
                  and          s9, a7, s10
277:              slli         t4, s4, 3
                  addi         a2, a2, -1704
                  addi         s5, s4, 246
                  sltu         s0, s11, zero
                  bge          t6, s11, 287f
                  sltiu        s7, gp, -1630
                  ori          s0, zero, -1044
284:              and          s6, t6, t0
                  slli         t6, t5, 21
                  sll          s11, s8, a2
287:              bltu         t4, s7, 288f
288:              bltu         t3, s3, 295f
                  and          tp, tp, s4
                  srli         sp, a2, 17
                  lui          s2, 782634
                  slli         gp, s1, 30
                  sltu         s2, s0, t1
                  srl          s2, t3, s10
295:              andi         s11, a0, -1890
                  slli         s11, s11, 18
                  srli         zero, s1, 19
                  bgeu         t4, a6, 316f
                  sub          zero, t5, s6
                  bge          t1, a6, 313f
                  sub          a3, gp, a1
                  xor          s0, s6, a7
                  xor          s6, sp, zero
                  sub          t5, s8, a4
                  srl          s0, s4, tp
                  slt          a6, s11, s11
                  bne          s2, a5, 312f
                  blt          s9, t2, 311f
                  beq          s5, s11, 324f
                  srai         s8, s8, 19
311:              addi         a3, s5, -1831
312:              sra          zero, a2, t5
313:              slt          tp, t3, a0
                  slli         s9, s4, 12
                  sub          s2, s6, s9
316:              add          t2, t3, s8
                  bge          s6, s11, 332f
                  sltiu        a2, a5, 1749
                  sra          s4, t1, s10
                  slt          a7, a1, sp
                  nop
                  bne          a3, s1, 332f
                  sub          s6, a7, s3
324:              auipc        tp, 519638
                  xor          a4, t4, a1
                  sll          t3, s4, sp
                  slti         s5, t5, -27
                  slt          t5, s10, ra
                  andi         gp, a1, -417
                  srli         sp, a7, 5
                  srai         a2, s2, 26
332:              slti         t3, s3, -574
                  beq          t2, a1, 337f
                  lui          a7, 344484
                  bge          ra, t0, 351f
                  auipc        t0, 51601
337:              add          a7, ra, a1
                  bltu         s7, gp, 352f
                  slt          t1, a2, t2
                  slli         s1, s2, 27
                  sltiu        s10, s0, 1585
                  andi         s5, s4, -1379
                  sll          s1, s6, a2
                  slti         a2, a7, 1914
                  srai         t3, a6, 28
                  or           t5, a4, s10
                  sra          s5, s4, a5
                  sra          a3, t5, s5
                  add          s0, s5, a5
                  andi         s6, s2, 1459
351:              beq          ra, s3, 357f
352:              sub          t4, s3, s11
                  slti         t5, s5, 1573
                  lui          s4, 166855
                  add          s7, s3, s3
                  ori          t1, a1, -1345
357:              or           t3, a6, s5
                  slt          s5, s1, t4
                  srli         gp, gp, 14
                  bge          s9, a6, 361f
361:              sub          t2, a5, s7
                  bgeu         a5, t1, 366f
                  bne          t5, s3, 377f
                  nop
                  ori          s2, a0, 345
366:              blt          a5, a1, 376f
                  srli         sp, zero, 2
                  srli         t6, t3, 25
                  srl          t6, tp, t0
                  slti         s10, a6, 1851
                  xori         t3, t6, 609
                  slli         ra, t0, 16
                  sub          t4, s2, t1
                  sub          t6, s4, s1
                  bne          s8, s6, 379f
376:              blt          t6, t0, 387f
377:              srli         s9, a0, 9
                  xori         tp, t0, 185
379:              blt          s6, a7, 393f
                  sub          s10, t5, t2
                  sub          s11, s4, a6
                  beq          t6, t1, 398f
                  sub          s0, s0, a1
                  slli         s6, gp, 8
                  sub          t2, s9, ra
                  andi         s11, t6, 437
387:              xor          a4, s2, s1
                  srl          s5, a6, a0
                  srl          t6, a2, a2
                  sra          a5, gp, s5
                  ori          s0, zero, 1363
                  bltu         t4, s7, 410f
393:              add          s9, s1, s4
                  slt          s6, s9, s1
                  bne          a2, s7, 397f
                  bne          t1, gp, 413f
397:              srai         s6, s2, 29
398:              srli         a2, sp, 11
                  lui          a4, 501985
                  and          s2, tp, s6
                  sra          a6, a2, t4
                  andi         t4, a4, -1905
                  srli         s1, s2, 11
                  sub          a5, a5, t4
                  auipc        ra, 868709
                  xori         t0, s5, -1412
                  bne          a5, zero, 415f
                  sltiu        t0, s5, -715
                  and          a6, a3, s4
410:              ori          sp, t0, -145
                  sll          ra, t6, t6
                  ori          a3, s6, 1172
413:              sub          a4, a4, ra
                  ori          s4, a5, 720
415:              andi         t4, s4, 438
                  and          s11, s3, s0
                  auipc        a3, 510291
                  srli         a5, a4, 24
                  sub          s8, s2, a6
                  slt          s2, s4, s7
                  sub          s2, t3, s11
                  sltu         a3, gp, s2
                  blt          s0, a2, 429f
                  srai         gp, s4, 17
                  sra          sp, s6, s3
                  xor          a3, s4, t2
                  bge          a4, s10, 432f
                  slti         t1, s10, 253
429:              sltu         t1, gp, s1
                  srl          a6, s2, a2
                  and          s11, s9, t3
432:              and          s1, t0, sp
                  slti         s4, s8, -1760
                  add          a3, t4, t0
                  sra          s2, s8, a0
                  slli         s9, a6, 1
                  ori          s4, a3, 1193
                  srl          a5, zero, s9
                  sltu         s0, ra, s7
                  srl          t0, s3, a4
                  lui          t6, 519858
                  auipc        s5, 879902
                  bltu         s10, s5, 446f
                  and          s9, s11, t2
                  and          t2, s4, a1
446:              slt          s11, t4, s2
                  srli         ra, a3, 15
                  andi         s6, t6, 911
                  bge          s2, s0, 450f
450:              srai         t6, a5, 13
                  ori          s4, sp, -210
                  srl          sp, s5, a0
                  srl          t6, a3, a5
                  sra          a7, s1, a7
                  beq          t2, s3, 462f
                  bge          a7, s7, 466f
                  xori         a5, a7, -1445
                  bgeu         a5, s11, 462f
                  sll          a5, a3, t5
                  bne          t4, a4, 466f
                  bltu         a4, s11, 477f
462:              bne          s3, t2, 479f
                  srl          ra, gp, s2
                  add          s0, a3, s5
                  lui          ra, 547307
466:              sub          t5, s7, s7
                  sub          a4, t1, s9
                  sltu         t2, t3, a1
                  nop
                  sll          s10, s7, s6
                  beq          t2, s8, 482f
                  and          a7, s0, a2
                  sub          a7, ra, a6
                  slli         s6, tp, 26
                  la           s7, region_1+1778 #start riscv_load_store_rand_instr_stream_1
                  sb           ra, -24(s7)
                  lb           s9, -44(s7)
                  xor          s0, t6, a4
                  and          s2, a0, s1
                  add          s5, t0, t3
                  sra          zero, s4, t1
                  sb           s4, 61(s7)
                  lb           a5, 1(s7)
                  lbu          t3, -37(s7)
                  sb           t3, -3(s7)
                  sb           s4, 36(s7)
                  sb           a1, 47(s7)
                  addi         ra, s10, -325
                  lbu          s6, 19(s7)
                  lb           s4, 43(s7)
                  lh           t5, -62(s7)
                  lb           t5, -4(s7)
                  sltiu        s5, t4, 1432
                  nop
                  sub          t5, t4, s9
                  andi         s2, t3, 354
                  sra          s5, a7, s5
                  or           s1, t0, a1
                  sb           a4, 8(s7)
                  sh           s5, 36(s7)
                  lb           t6, -7(s7)
                  sb           a2, 21(s7)
                  sh           s9, -28(s7)
                  slli         a4, s3, 3
                  xor          s2, a6, zero
                  srl          tp, s4, s6
                  lui          t3, 975553
                  lb           t6, -32(s7)
                  lui          t0, 388943
                  sb           sp, -47(s7)
                  andi         a2, zero, 1744
                  lb           t2, -37(s7)
                  ori          t6, s6, 1247
                  xori         t6, t3, -1820
                  sb           a0, -52(s7)
                  sltu         t1, s5, s5
                  lbu          a2, 18(s7) #end riscv_load_store_rand_instr_stream_1
                  and          s8, t3, s7
                  sll          t4, a7, a6
477:              sltiu        a4, s9, 1373
                  andi         t4, s6, -1256
479:              slt          s5, t3, t6
                  srai         a6, s7, 0
                  sra          a5, a3, zero
482:              nop
                  sltu         t5, a3, a2
                  srai         a5, a2, 13
                  beq          s4, a2, 486f
486:              blt          t3, s6, 488f
                  srai         s9, t3, 2
488:              slt          s5, a2, a7
                  beq          t4, s1, 497f
                  slti         s5, s1, -1269
                  beq          a5, tp, 496f
                  slt          t5, gp, s1
                  xor          s10, a0, a6
                  auipc        s0, 295002
                  srl          s5, sp, gp
496:              slt          a3, a1, a5
497:              add          sp, s2, s11
                  nop
                  and          s7, t1, zero
                  nop
                  slt          ra, a4, t3
                  sltiu        t5, a6, 215
                  srl          zero, s3, t1
                  srli         t0, s5, 18
                  xori         s8, s5, 1406
                  xori         t4, s6, 1882
                  srai         a4, a3, 13
sub_6_j10:        jal          a7, sub_8 #jump sub_6 -> sub_8
                  sltiu        t0, s7, -1479
                  add          t6, s9, t0
                  bge          a3, a7, 514f
                  add          a3, s5, a7
                  add          ra, sp, t6
                  xor          t5, a0, s10
                  blt          s9, s7, 521f
                  slt          t6, s8, s3
                  beq          s4, t6, 524f
                  andi         s11, a2, 1978
                  lui          gp, 217484
                  nop
514:              slli         tp, t4, 17
                  sltu         t1, t3, s7
                  sltiu        sp, s11, 221
                  la           sp, region_0+1361 #start riscv_load_store_rand_instr_stream_9
                  sb           s1, 115(sp)
                  sw           t3, -245(sp)
                  sll          zero, a0, s1
                  xori         s7, sp, 962
                  srl          s7, tp, t3
                  slli         a7, t3, 10
                  nop
                  xor          t2, zero, a2
                  add          t1, sp, a6
                  lbu          t5, 86(sp)
                  lb           s6, 2(sp)
                  lbu          a4, 18(sp)
                  lhu          t4, 153(sp)
                  slt          s8, s9, a3
                  lbu          s7, 164(sp)
                  lb           s0, 34(sp)
                  xor          s2, sp, t3
                  addi         s6, s6, -1269
                  lb           zero, -118(sp)
                  ori          s8, s6, 1937
                  srl          s5, gp, t0
                  or           gp, ra, t4
                  lbu          s8, -66(sp)
                  sub          ra, tp, s3
                  sltu         tp, t6, t6
                  sltiu        tp, a1, -361
                  addi         t6, zero, -1347
                  addi         zero, a6, 790
                  lui          gp, 850727
                  sb           t0, -182(sp)
                  lb           s1, 253(sp) #end riscv_load_store_rand_instr_stream_9
                  lui          a2, 933191
                  bgeu         t6, zero, 533f
                  slli         t3, s6, 11
                  auipc        a4, 907540
521:              slli         s4, sp, 16
                  ori          t6, tp, 1864
                  bgeu         s9, s2, 527f
524:              xor          s8, s6, s6
                  ori          t6, s6, 1951
                  xor          t5, t5, tp
527:              add          t5, s4, a6
                  beq          t0, s9, 543f
                  srl          a5, tp, t3
                  bgeu         s11, t5, 547f
                  add          zero, t1, s0
                  add          s1, s0, t3
533:              xori         s9, gp, 1928
                  sra          t6, sp, s8
                  slli         s10, s2, 9
                  blt          s0, s4, 550f
                  slti         t2, s1, 547
                  srai         s0, t4, 1
                  xor          s0, s5, tp
                  bne          s0, s3, 552f
                  nop
                  slt          a6, s0, gp
543:              nop
                  slti         t0, t1, -98
                  addi         a7, gp, 225
                  bge          t1, s0, 564f
547:              lui          tp, 614548
                  andi         sp, t5, -1887
                  blt          t4, t2, 567f
550:              auipc        t4, 770116
                  bltu         tp, s4, 552f
552:              ori          t3, s4, -1857
                  sll          t5, s7, a2
                  sll          s8, t1, s9
                  xori         s2, s0, -107
                  beq          s2, s6, 570f
                  add          a4, t5, t5
                  srli         s4, s1, 27
                  addi         t0, a4, 998
                  and          s11, s7, a1
                  bge          s10, t1, 565f
                  srl          s0, ra, t6
                  addi         gp, a0, -1035
564:              addi         s7, a0, 1822
565:              ori          s1, s3, -433
                  or           a6, ra, t2
567:              xor          gp, s11, a4
                  srai         t0, t2, 21
                  beq          t4, a5, 585f
570:              sub          a2, tp, t3
                  blt          t6, t1, 589f
                  addi         t1, a5, -878
                  add          s2, sp, s8
                  and          t4, t4, a7
                  slti         t3, a5, -425
                  bne          a7, a7, 591f
                  beq          s4, s4, 579f
                  bltu         s1, t5, 582f
579:              xor          s10, ra, a7
                  andi         s10, s10, -1346
                  add          s8, a3, t5
582:              xor          a5, s10, t4
                  sll          s10, a6, s3
                  andi         a7, a0, -549
585:              xor          tp, a0, a3
                  slt          s7, t6, t0
                  blt          s4, s10, 593f
                  slli         t5, sp, 21
589:              blt          t6, t1, 599f
                  and          a5, s3, a2
591:              sub          a4, t0, a4
                  xori         s4, t1, -1527
593:              lui          t0, 4057
                  ori          sp, t6, -1885
                  sll          a4, tp, t0
                  sra          a2, s4, sp
                  srl          zero, t0, zero
                  xori         s7, a5, 759
599:              or           a6, t4, a3
                  srai         a7, s8, 24
                  slti         s11, s6, -391
                  bgeu         t0, s8, 618f
                  and          t2, s7, gp
                  andi         a2, ra, -1189
                  bne          gp, s7, 619f
                  beq          zero, s8, 622f
                  slti         s0, s10, -1509
                  bne          s10, s3, 609f
609:              sltu         t6, s4, s1
                  or           a2, t6, s9
                  auipc        a5, 876981
                  blt          s7, a1, 619f
                  auipc        s11, 448489
                  auipc        s11, 429054
                  andi         t6, t0, -118
                  sra          a6, t6, s3
                  bge          zero, s3, 621f
618:              sra          a5, s8, zero
619:              add          zero, s3, s8
                  slli         t6, a7, 0
621:              blt          s10, s9, 627f
622:              bgeu         t5, s3, 636f
                  xori         a5, s5, 1386
                  ori          t6, ra, -1047
                  addi         a7, t2, -217
                  slt          s5, t4, a2
627:              ori          t5, s6, -650
                  sra          zero, zero, t1
                  srli         s9, s1, 2
                  andi         s8, t1, -146
                  slli         s6, ra, 11
                  bge          s7, s1, 645f
                  nop
                  and          t6, zero, s2
                  auipc        t1, 843280
636:              beq          tp, s5, 641f
                  sltiu        s8, s11, -1084
                  slti         gp, t5, 131
                  sub          s6, t0, sp
                  slt          t1, a5, sp
641:              sll          ra, t2, t3
                  sll          s4, a1, s4
                  xori         a5, t2, -1790
                  blt          t0, gp, 649f
645:              add          t3, t3, t2
                  srl          sp, s0, s8
                  lui          t3, 493818
                  or           a4, s1, t0
649:              sltiu        s5, t6, -52
                  nop
                  bne          s10, s2, 655f
                  or           s0, s6, a0
                  srli         s4, s0, 23
                  sll          s6, a0, a2
655:              srli         ra, s2, 8
                  slli         zero, t4, 27
                  bltu         t0, a7, 667f
                  slti         gp, s5, -62
                  xor          t2, t1, s5
                  bne          s10, s5, 678f
                  slti         gp, tp, -878
                  slli         sp, a0, 28
                  bltu         s7, t1, 678f
                  bge          a6, s9, 681f
                  sra          s7, a2, s10
                  sub          a6, s11, t4
667:              bgeu         s7, s4, 684f
                  sub          s6, sp, a1
                  blt          s3, s10, 681f
                  sll          a6, a4, zero
                  ori          t1, sp, 1921
                  sltu         t4, t1, s11
                  ori          a4, s1, -620
                  or           t2, gp, zero
                  srli         s0, t5, 17
                  srl          s4, a6, s11
                  sll          s5, s3, s5
678:              bne          s7, s2, 686f
                  slti         a4, tp, -148
                  bge          a6, t1, 694f
681:              auipc        a4, 700870
                  bltu         s0, t1, 683f
683:              xor          tp, a2, t4
684:              xor          s9, a1, s10
                  nop
686:              ori          tp, s10, -225
                  blt          s8, t1, 698f
                  bltu         t0, s11, 689f
689:              andi         a6, a3, 1011
                  bge          s8, s8, 693f
                  bltu         a2, a7, 701f
                  sll          s7, s0, t2
693:              ori          a3, t5, -1730
694:              sltu         tp, a6, zero
                  bne          a7, s0, 700f
                  slt          a5, t6, s5
                  srl          a5, t4, s2
698:              bltu         s7, s7, 703f
                  xori         t1, t1, -833
700:              bltu         a6, a3, 718f
701:              slt          t1, a5, s2
                  xori         s2, a0, -1508
703:              lui          t4, 205069
                  slli         s1, t4, 11
                  auipc        t2, 928365
                  nop
                  or           a5, a0, a2
                  ori          s4, s4, 343
                  srl          a7, s5, s1
                  sub          a5, t2, a6
                  blt          a6, a2, 713f
                  nop
713:              beq          s7, a5, 728f
                  slt          t0, tp, sp
                  blt          s8, s11, 732f
                  ori          t4, s7, -220
                  lui          a5, 637009
718:              srli         s6, s9, 14
                  bne          t3, a6, 725f
                  sltu         t3, s6, t5
                  sll          a3, a5, s7
                  bltu         a3, t3, 732f
                  sltu         s5, t0, s2
                  xori         s4, s7, -1081
725:              sub          s2, t1, a3
                  bltu         s4, tp, 737f
                  xor          a3, a0, gp
728:              add          s11, s2, s4
                  sltiu        a4, s3, -356
                  slt          t0, s3, t6
                  srl          a4, t4, sp
732:              bne          s6, a3, 733f
733:              sub          s6, s8, t1
                  nop
                  sll          s1, t0, s10
                  slt          zero, a3, a3
737:              slt          s0, a7, s5
                  sub          s9, s8, t1
                  sub          s11, a0, ra
                  slli         t0, s0, 21
                  or           a4, s5, t3
                  sltu         s10, tp, s11
                  slt          s1, s8, s10
                  bne          s10, s5, 745f
745:              slt          a3, tp, s11
                  auipc        s5, 652162
                  nop
                  sub          s4, sp, s0
                  xor          s1, s11, s11
                  bgeu         s7, a3, 754f
                  sra          ra, s10, s5
                  nop
                  auipc        s4, 958343
754:              sra          a6, s11, zero
                  srai         s7, t5, 7
                  bne          s10, s8, 760f
                  srai         s5, s3, 2
                  auipc        s1, 319474
                  or           ra, gp, ra
760:              bne          s6, gp, 761f
761:              slti         t1, s11, 1730
                  ori          gp, s1, -1816
                  lui          s6, 597007
                  addi         a3, s4, -1647
                  addi         s8, t0, 1164
                  auipc        t0, 392812
                  bge          a4, sp, 775f
                  or           t0, a7, s3
                  bltu         s6, a4, 785f
                  nop
                  bgeu         a7, a2, 789f
                  and          s9, s8, s7
                  sltu         zero, a2, t2
                  xori         s0, s9, -1604
775:              srli         s5, s1, 29
                  bltu         s1, s11, 790f
                  bge          t4, gp, 789f
                  sltiu        sp, ra, 83
                  andi         sp, tp, 240
                  or           s4, s1, a4
                  sub          a3, t6, sp
                  add          t5, s0, s4
                  andi         a3, s8, 285
                  xori         s1, s10, 216
785:              nop
                  srli         s2, s7, 27
                  and          t0, a7, s9
                  nop
789:              bge          s3, a0, 793f
790:              xor          s5, s5, s3
                  or           s9, t3, ra
                  sltu         gp, s10, s5
793:              auipc        s9, 665809
                  xori         t0, s1, -395
                  srl          s2, s7, a7
                  sra          s5, a3, tp
                  and          gp, s10, ra
                  srai         ra, t3, 12
                  srl          t0, s7, a3
                  bge          t3, a4, 816f
                  bge          t3, s6, 815f
                  nop
                  sub          t4, a6, t3
                  srli         s8, a0, 24
                  addi         s11, a2, -1021
                  ori          t6, s10, 571
                  sltu         s0, a5, t4
                  sll          s7, a1, s11
                  sub          t4, s9, s2
                  or           a5, s7, s4
                  bgeu         a5, a6, 825f
                  sra          a2, s3, a7
                  beq          t6, s6, 816f
                  andi         gp, a2, -648
815:              sll          s8, s3, a0
816:              xor          a4, t6, s6
                  andi         t4, a5, 1651
                  add          a5, t5, s4
                  sltiu        t0, a5, -863
                  slli         s7, a6, 9
                  slti         a3, s1, -1623
                  sltu         gp, a6, t2
                  srai         a2, a6, 19
                  bge          t3, t0, 841f
825:              srli         sp, a1, 29
                  sltiu        s0, ra, 1879
                  add          s4, t3, a0
                  auipc        t2, 245553
                  bltu         s9, s7, 844f
                  srai         s4, t3, 23
                  lui          ra, 860548
                  andi         tp, zero, 1110
                  auipc        a7, 618415
                  add          t3, a4, t5
                  srl          s4, s5, t6
                  xor          a3, a7, ra
                  bne          s4, s7, 844f
                  xor          s5, t3, s2
                  bltu         ra, s5, 845f
                  xor          gp, a7, t4
841:              sltu         tp, t5, s5
                  auipc        s11, 754902
                  bne          s3, a2, 856f
844:              slt          a7, s11, zero
845:              xor          a2, s2, t5
                  beq          t3, t5, 864f
                  add          s4, sp, t4
                  sll          s0, a7, t0
                  or           s8, t1, s4
                  lui          t3, 974520
                  addi         s10, a3, 1465
                  sub          t4, gp, t6
                  addi         s0, t4, 2034
                  lui          s9, 21501
                  bge          s2, s5, 872f
856:              sll          s9, t3, t2
                  slt          t1, a5, gp
                  slti         a4, sp, 1217
                  add          gp, t5, a7
                  add          ra, a3, s8
                  xori         tp, t3, 312
                  srl          zero, s7, sp
                  sub          gp, s5, t5
864:              slt          t1, a6, s5
                  auipc        t0, 445068
                  lui          t0, 422005
                  ori          t6, s4, -1867
                  addi         t4, s6, 601
                  slti         a3, s2, 995
                  nop
                  ori          t4, s0, -973
872:              beq          t1, tp, 873f
873:              lui          a5, 513474
                  slti         sp, t5, -594
                  sltiu        s1, a0, -1177
                  andi         a7, ra, 639
                  lui          s10, 168644
                  xori         ra, s1, -795
                  bgeu         s7, t4, 881f
                  andi         s1, s0, -363
881:              and          s5, t2, s9
                  and          t1, t0, t5
                  slt          s4, tp, t2
                  andi         ra, gp, 396
                  andi         t6, s7, -1548
                  xori         t4, s4, 208
                  ori          t6, t3, -507
                  xori         tp, a3, 808
                  sltu         s9, t6, t3
                  and          t1, s7, a6
                  sub          t1, ra, s7
                  blt          s11, t2, 900f
                  beq          s0, t1, 894f
894:              nop
                  xor          sp, t0, t2
                  bge          a7, a5, 910f
                  beq          t4, a7, 903f
                  add          a2, a7, a4
                  bge          s2, s3, 900f
900:              srli         a7, a3, 4
                  sll          t6, t5, a5
                  addi         t4, a6, -990
903:              slti         s5, s0, 764
                  sltiu        t5, s2, 1592
                  slti         t2, t0, -1180
                  addi         ra, t2, -1232
                  or           a3, a6, a0
                  sll          s2, sp, a4
                  beq          a5, zero, 913f
910:              xori         t4, t4, 1697
                  sra          t0, s3, s7
                  sltu         s7, t4, t6
913:              auipc        s2, 1038467
                  sra          s0, s7, gp
                  sra          a4, a0, a3
                  sub          t2, tp, a3
                  xori         a2, t1, 73
                  srli         s8, tp, 20
                  and          s6, gp, t0
                  nop
                  srl          zero, t0, s3
                  sra          s11, t4, s4
                  bne          s4, s8, 929f
                  slli         t1, s0, 29
                  xori         a7, s4, -21
                  slt          s0, a0, s6
                  bge          sp, s1, 938f
                  slt          s7, t6, a7
929:              bge          s10, s3, 934f
                  bge          t5, ra, 942f
                  addi         s5, t4, 2015
                  bge          a7, s11, 939f
                  la           s11, region_0+859 #start riscv_load_store_rand_instr_stream_3
                  lb           s10, 36(s11)
                  sb           zero, 34(s11)
                  nop
                  lbu          t2, 50(s11)
                  sltu         zero, s10, a2
                  srli         s8, ra, 26
                  slt          a3, s6, t6
                  lb           tp, -5(s11)
                  lw           s1, -59(s11)
                  lui          t1, 991380
                  sra          gp, a4, zero
                  sb           a5, -4(s11)
                  sw           a1, -23(s11)
                  ori          s2, a4, 2020
                  andi         t5, s7, -424
                  auipc        t2, 290034
                  sb           t4, 29(s11)
                  lui          gp, 284385
                  lbu          s5, -52(s11)
                  lbu          s8, -58(s11)
                  auipc        t4, 422397
                  xor          a5, t3, s7
                  sra          a2, t3, s2
                  srai         a6, tp, 12
                  addi         t3, t0, -281
                  sra          zero, a2, a2
                  lbu          s8, -60(s11)
                  sub          ra, t4, s11
                  lhu          a6, -55(s11)
                  xori         t6, a3, 626
                  ori          t1, s0, -1787
                  sh           s9, 29(s11)
                  lui          ra, 110934
                  lb           a4, -10(s11)
                  srl          s10, s11, s9
                  xor          a5, t6, gp
                  lw           s10, -11(s11)
                  ori          a4, sp, 370
                  lhu          ra, -53(s11) #end riscv_load_store_rand_instr_stream_3
                  ori          t0, sp, -1366
934:              or           t0, gp, s11
                  srai         t1, s8, 11
                  srl          gp, s8, tp
                  bne          t2, s5, 942f
938:              sltu         t2, s5, s11
939:              lui          s6, 488441
                  ori          a2, zero, 789
                  beq          a7, sp, 955f
942:              xori         a6, a3, -520
                  and          s6, s7, s6
                  xor          a5, t5, t4
                  add          a7, t2, t2
                  srl          s11, a0, ra
                  ori          s10, a7, 447
                  blt          t0, gp, 951f
                  nop
                  sra          s5, t2, tp
951:              andi         zero, s6, 1983
                  blt          a7, t2, 967f
                  bgeu         s8, tp, 963f
                  auipc        a4, 352912
955:              xor          s8, s8, t0
                  sll          t1, a7, s11
                  ori          s5, t5, -1109
                  lui          a2, 864602
                  add          a5, t4, t2
                  slti         s5, s6, 1042
                  slli         s8, t1, 12
                  bne          a6, t5, 978f
963:              bltu         a1, a0, 978f
                  and          sp, t1, ra
                  nop
                  or           s1, s7, tp
967:              sltu         a5, s6, a5
                  sll          s5, s5, a2
                  ori          zero, sp, 2011
                  ori          s1, t3, 1771
                  sra          sp, gp, t3
                  auipc        s0, 273711
                  bgeu         gp, t0, 977f
                  slli         zero, a0, 18
                  srai         s11, a3, 24
                  xor          zero, a6, sp
977:              and          t6, s4, a0
978:              beq          a2, t0, 992f
                  srli         s9, t5, 8
                  ori          s6, s11, 1762
                  sltiu        zero, s3, -708
                  slt          ra, s8, s7
                  sub          s5, s5, a1
                  bge          a7, s5, 997f
                  auipc        t6, 12471
                  beq          s7, t4, 1003f
                  slti         s10, s0, 495
                  slt          s1, s10, sp
                  sub          t5, s2, t0
                  sub          s11, a6, s3
                  ori          t2, s3, 1852
992:              slli         ra, t0, 26
                  lui          s6, 818901
                  blt          zero, t5, 998f
                  slti         s4, s7, 709
                  blt          a4, tp, 1014f
997:              sltiu        s7, a4, -1374
998:              and          s2, gp, a7
                  slti         s9, t3, -459
                  slli         s7, a6, 4
                  andi         t4, a1, -2004
                  bltu         s9, t5, 1018f
1003:             srl          t5, s6, a5
                  slt          gp, a4, a2
                  srli         s8, s4, 4
                  sltiu        s4, s5, -1682
                  lui          s10, 762701
                  srli         a3, sp, 22
                  addi         t1, a0, 1124
                  srai         zero, a3, 30
                  auipc        s4, 502036
                  ori          a5, a5, -2009
                  andi         t6, a4, -1149
1014:             sltu         s5, s3, s0
                  andi         sp, s1, 956
                  slt          tp, s7, s10
                  ori          s11, a0, -787
1018:             ori          t5, s6, -1646
                  sltu         gp, s2, a6
                  beq          gp, s0, 1030f
                  bltu         s10, s11, 1028f
                  bltu         t0, s5, 1026f
                  and          s10, s10, s11
                  bne          s10, a0, 1025f
1025:             sltiu        s2, s1, 1037
1026:             sra          zero, gp, t2
                  nop
1028:             sltiu        s10, t5, -1311
                  bne          s2, a4, 1033f
1030:             sll          s0, a5, tp
                  xori         a2, s1, 381
                  bne          s5, a1, 1035f
1033:             blt          t0, ra, 1034f
1034:             srl          s7, t3, t1
1035:             bgeu         a6, tp, 1039f
                  bltu         t3, s0, 1054f
                  add          s5, a1, s8
                  sltu         sp, zero, s4
1039:             andi         s4, s11, 489
                  srai         s9, ra, 26
                  bgeu         s9, t6, 1058f
                  and          a7, t0, a2
                  addi         t6, ra, 8
                  xori         t0, t2, 1442
                  sltu         zero, sp, s9
                  xori         a2, t0, 1114
                  add          t4, s11, s0
                  srai         a4, t0, 24
                  bltu         a2, t1, 1064f
                  bltu         a6, a6, 1056f
                  bgeu         s3, t2, 1061f
                  sltu         s2, s11, ra
                  slti         s9, t5, -1383
1054:             slli         a5, t5, 5
                  sub          s2, a4, t5
1056:             bgeu         t6, t3, 1057f
1057:             bltu         a2, s9, 1073f
1058:             auipc        a7, 547169
                  addi         a7, s0, -486
                  bltu         s3, gp, 1065f
1061:             add          a4, ra, sp
                  beq          a2, zero, 1067f
                  xor          t1, s7, s9
1064:             srli         s1, a3, 7
1065:             beq          s8, s9, 1077f
                  xori         s8, s3, -662
1067:             srl          t6, s3, a0
                  ori          s4, s9, -488
                  addi         s7, s10, 369
                  or           t6, t5, s6
                  auipc        t6, 549654
                  slti         t1, a7, 648
1073:             bne          a5, a7, 1081f
                  slli         a5, t5, 2
                  bne          a1, s2, 1091f
                  bltu         a5, t4, 1078f
1077:             addi         s6, t3, -1426
1078:             srai         sp, s3, 9
                  sltu         gp, t4, s10
                  andi         a2, t0, 463
1081:             slli         ra, ra, 26
                  and          gp, a4, ra
                  auipc        zero, 78132
                  xori         t3, a4, 671
                  ori          t4, a4, -1458
                  blt          s10, s0, 1103f
                  slt          a3, s11, s8
                  sra          a3, a7, a0
                  auipc        ra, 721544
                  andi         s9, s11, -781
1091:             sltu         s5, s8, tp
                  xori         s5, s10, 1574
                  slt          s10, a7, a6
                  nop
                  srl          sp, a4, s11
                  bne          ra, t3, 1109f
                  lui          a6, 167207
                  lui          t3, 192414
                  nop
                  slti         s1, a5, 1952
                  and          s7, a4, s0
                  bne          s4, sp, 1117f
1103:             ori          s11, a3, -1119
                  andi         t2, a4, -1588
                  srli         a7, s5, 21
                  addi         s8, s9, -1433
                  bge          s2, a7, 1117f
                  slti         gp, a3, -27
1109:             ori          zero, t4, -1811
                  beq          a2, s5, 1128f
                  slli         s9, a1, 29
                  srl          s0, s6, t3
                  sll          ra, t0, t6
                  slti         s5, t0, -885
                  sub          s4, zero, s8
                  add          s11, sp, t4
1117:             srai         t6, sp, 10
                  nop
                  sltiu        t0, t1, 156
                  sltiu        s7, gp, 819
                  srl          a2, t0, s3
                  blt          s11, t5, 1136f
                  sll          t4, s2, t2
                  blt          t5, s7, 1138f
                  sltu         gp, a0, t3
                  lui          s5, 88585
                  sra          a5, tp, s6
1128:             auipc        s10, 766534
                  beq          a1, a0, 1143f
                  bne          t3, t0, 1141f
                  bgeu         tp, tp, 1137f
                  bgeu         s0, a3, 1134f
                  bne          s11, s8, 1139f
1134:             or           gp, s11, gp
                  srl          a3, t2, a3
1136:             xor          t3, a0, gp
1137:             slti         t4, s8, 703
1138:             auipc        sp, 545002
1139:             ori          s11, s10, 220
                  bltu         a0, a2, 1144f
1141:             addi         gp, gp, 1751
                  sra          a7, t4, s2
1143:             bge          s1, t3, 1158f
1144:             and          a7, tp, s4
                  bge          t1, sp, 1159f
                  srli         t6, t0, 24
                  slli         t5, s4, 10
                  srli         zero, a6, 7
                  or           sp, a6, a4
                  slli         s5, s9, 14
                  srl          s7, s0, s8
                  addi         t0, s3, 634
                  xori         t1, s5, 1592
                  or           s8, a6, s6
                  srli         s5, s1, 0
                  or           a6, s0, a0
                  nop
1158:             xor          a2, t3, a3
1159:             xor          s1, s9, tp
                  sltu         s8, sp, ra
                  slt          s9, t1, a3
                  srli         t3, s9, 8
                  and          t3, s8, a2
                  nop
                  or           s4, s7, t2
                  addi         a5, a0, -365
                  srli         t5, a1, 5
                  sub          t2, a6, s7
                  slli         a5, s3, 3
                  sltiu        s10, s3, -385
                  nop
                  blt          s3, s0, 1176f
                  sltu         ra, s11, sp
                  xor          s1, t0, s4
                  sltu         s6, a0, a5
1176:             sra          sp, s4, zero
                  blt          ra, a1, 1190f
                  bgeu         a7, s4, 1194f
                  bgeu         s4, t3, 1190f
                  beq          s4, t5, 1197f
                  nop
                  bgeu         a7, t2, 1183f
1183:             auipc        a5, 290972
                  ori          s4, sp, -106
                  or           s7, a3, zero
                  xori         sp, t6, -70
                  bne          a0, t5, 1192f
                  sll          sp, s6, s0
                  auipc        ra, 13919
1190:             auipc        s11, 176914
                  sra          s2, s10, a4
1192:             ori          a3, t4, -1382
                  add          s6, tp, gp
1194:             or           s9, s7, s6
                  slt          s5, s3, s9
                  ori          a2, t6, -833
1197:             auipc        s8, 446996
                  or           sp, ra, a6
                  bltu         s2, t3, 1216f
                  auipc        s5, 239165
                  blt          s0, a0, 1211f
                  add          sp, t5, s5
                  and          s1, tp, t1
                  xor          a4, t3, s11
                  bgeu         a2, t0, 1223f
                  add          s6, a5, s1
                  bgeu         a5, t2, 1208f
1208:             nop
                  xori         sp, t5, -961
                  slt          s6, t6, s10
1211:             nop
                  lui          s6, 104433
                  bgeu         a1, s3, 1229f
                  and          s2, s3, a2
                  sltiu        s6, s3, 623
1216:             andi         t0, t5, 953
                  sltiu        a6, a0, -1612
                  auipc        sp, 119738
                  srl          t1, a7, s0
                  or           s7, a4, s1
                  sub          s0, s10, s9
                  srli         t4, a2, 18
1223:             or           s1, s3, a2
                  bgeu         a5, gp, 1238f
                  or           ra, t2, s3
                  andi         s9, a1, -1958
                  nop
                  xori         t1, t4, -1026
1229:             add          t2, t5, s10
                  sll          t3, a5, s8
                  srl          t6, tp, t0
                  nop
                  nop
                  lui          s4, 199539
                  slt          s8, t2, t2
                  blt          t5, t2, 1241f
                  bge          s11, a2, 1247f
1238:             lui          a6, 454871
                  bltu         t3, ra, 1253f
                  xor          a2, s11, s2
1241:             sub          sp, a3, s7
                  slt          a2, t5, s10
                  or           sp, a6, sp
                  bge          a6, s4, 1245f
1245:             bge          a6, a7, 1252f
                  auipc        s1, 331010
1247:             blt          t3, s5, 1251f
                  xori         ra, a2, 87
                  xori         t1, a6, -639
                  blt          t0, t1, 1262f
1251:             addi         s10, t1, -380
1252:             ori          s11, s2, 1860
1253:             srai         s5, s3, 2
                  sra          s6, a4, s8
                  srli         s8, a1, 14
                  bgeu         s6, s8, 1271f
                  xor          ra, a4, s3
                  srai         t6, sp, 2
                  bge          s1, t3, 1277f
                  nop
                  ori          zero, a3, 2033
1262:             nop
                  andi         s9, s9, -1168
                  bne          s10, t6, 1270f
                  sub          a2, s5, sp
                  beq          gp, s0, 1274f
                  sra          s8, a5, t2
                  sub          t1, s7, t6
                  slt          a7, a2, zero
1270:             slti         t6, s1, -778
1271:             add          t5, a2, t3
                  srl          t1, t1, s0
                  and          a4, a0, gp
1274:             sltiu        a3, t1, 65
                  slti         a7, a7, 1586
                  sra          t1, t1, a7
1277:             slti         s9, s5, -1392
                  add          s5, t3, s2
                  xori         ra, t5, 632
                  addi         t0, s3, 787
                  nop
                  xori         t3, s3, 675
                  auipc        ra, 360818
                  addi         tp, s9, -347
                  sub          s10, t0, s3
                  xori         t5, s6, -1340
                  xor          a6, a5, sp
                  and          t2, zero, s1
                  xori         s7, s7, 769
                  andi         t2, t4, -1520
                  add          t0, t5, t1
                  andi         t0, a6, 1396
                  nop
                  sra          t0, s4, ra
                  lui          a2, 104067
                  srai         s1, s6, 4
                  bne          a7, t3, 1300f
                  sub          gp, s9, t3
                  andi         t6, s9, -814
1300:             bne          a3, a3, 1308f
                  srl          s10, s7, a7
                  bne          a1, a2, 1320f
                  xor          a3, s1, a1
                  slti         gp, s10, 1366
                  beq          s8, s4, 1310f
                  srai         s7, s0, 31
                  slti         zero, s4, 832
1308:             sub          ra, tp, zero
                  sra          t2, s8, a4
1310:             or           a2, s10, s10
                  xor          tp, s8, t0
                  bge          a0, gp, 1317f
                  srai         s1, s4, 22
                  srai         a7, t3, 23
                  slli         s1, a2, 13
                  slti         s11, zero, 1499
1317:             blt          ra, s9, 1323f
                  add          s4, s2, a4
                  sltiu        s9, a2, 1980
1320:             bltu         a3, s1, 1337f
                  bltu         t2, s10, 1322f
1322:             sltu         a7, ra, s10
1323:             srl          t3, gp, a7
                  sltu         s11, t3, s1
                  bgeu         s7, s4, 1339f
                  or           a5, s9, t4
                  sll          t0, s2, t5
                  sub          a7, s9, sp
                  sra          a5, zero, s10
                  sll          t5, s6, s9
                  bge          zero, t0, 1344f
                  blt          a7, s1, 1338f
                  xor          t3, t1, s11
                  sltiu        tp, a0, -1122
                  sltiu        s1, t4, 372
                  bltu         s4, s6, 1350f
1337:             sll          a5, a7, t5
1338:             ori          t2, gp, -532
1339:             slli         a2, sp, 19
                  slti         t4, a0, 1496
                  auipc        a6, 74648
                  bltu         a0, t6, 1344f
                  bltu         a1, s4, 1354f
1344:             xori         zero, tp, 1145
                  sltu         t1, t5, t3
                  blt          t6, s5, 1350f
                  sra          s5, s5, s2
                  slli         s2, s6, 3
                  bne          a1, a0, 1359f
1350:             bltu         tp, s6, 1351f
1351:             sub          s11, s6, ra
                  blt          t6, a2, 1370f
                  andi         s6, t3, 642
1354:             bltu         a2, gp, 1361f
                  sra          s10, s4, t1
                  srai         a5, s0, 25
                  sltu         s2, a4, a7
                  sltu         gp, a4, sp
1359:             ori          a6, t2, -1112
                  ori          s5, a1, -1503
1361:             sll          s6, a5, zero
                  beq          a7, a5, 1365f
                  or           s8, a1, t1
                  bge          s6, a4, 1374f
1365:             slti         s2, t4, 1875
                  xori         s1, t0, -982
                  and          zero, a6, s0
                  sll          gp, tp, a4
                  bltu         t6, s4, 1385f
1370:             sra          s4, gp, a1
                  slt          gp, a2, s11
                  and          ra, s7, gp
                  or           s4, s11, s2
1374:             bgeu         gp, a7, 1378f
                  xor          t0, tp, s2
                  blt          s5, s4, 1391f
                  sll          s9, t4, a7
1378:             sltu         t2, a4, a7
                  or           t1, tp, s6
                  slli         a2, ra, 21
                  bltu         a6, s10, 1382f
1382:             xor          s9, t3, a1
                  slli         s8, a0, 22
                  nop
1385:             slli         s8, s11, 11
                  beq          s2, a5, 1398f
                  and          t2, t3, sp
                  bne          a1, t5, 1392f
                  auipc        zero, 892712
                  srli         ra, s8, 20
1391:             bne          a7, t4, 1407f
1392:             ori          t1, a6, -1955
                  nop
                  addi         t3, a7, -437
                  bgeu         s8, a7, 1412f
                  xori         s0, a1, -678
                  lui          sp, 625798
1398:             or           tp, s9, t3
                  bgeu         sp, t3, 1413f
                  beq          s1, a7, 1415f
                  auipc        a3, 726805
                  sltu         s11, s10, s10
                  sub          a5, s3, t3
                  bge          s4, s11, 1418f
                  slt          a3, t5, a0
                  bgeu         a4, tp, 1424f
1407:             bltu         t2, a0, 1415f
                  xori         s2, a4, 1814
                  addi         s5, a0, 2002
                  bgeu         zero, tp, 1415f
                  nop
1412:             xor          a6, s7, zero
1413:             sltu         a5, s9, s3
                  sltiu        s11, t6, -1289
1415:             blt          t1, s4, 1430f
                  ori          a2, a5, -1816
                  srai         t4, t1, 21
1418:             blt          a7, s9, 1428f
                  add          sp, zero, t2
                  auipc        s10, 769819
                  slli         tp, s2, 4
                  slt          t6, gp, s3
                  ori          s7, s1, -593
1424:             andi         t6, s7, 1743
                  slli         tp, a4, 24
                  sll          s8, s11, s8
                  sub          zero, a1, s9
1428:             nop
                  slt          s9, s5, t2
1430:             sltiu        t4, s10, -1556
                  addi         zero, s3, 161
                  srli         t3, t2, 4
                  bge          s10, t4, 1435f
                  bne          zero, s6, 1443f
1435:             slli         a3, tp, 20
                  slti         t6, t4, -305
                  sltu         t4, s11, s2
                  addi         s2, a4, 1379
                  sub          t3, s1, a4
                  bgeu         s10, t2, 1443f
                  bgeu         ra, t3, 1443f
                  bge          gp, sp, 1443f
1443:             sra          s9, zero, a1
                  nop
                  nop
                  lw           a7, 4(a1)
                  sltiu        t4, s10, 1484
                  auipc        s9, 901458
                  addi         a1, a1, 32
                  nop
                  slli         t0, t1, 28
                  srl          ra, s9, t5
                  add          t3, s6, t1
1900:             addi x13, x17, 0
1900:             jalr x13, x13, 0
sub_8:            bgeu         ra, s5, sub_8_stack_p
                  sra          s4, sp, a4
                  sub          a3, s4, zero
                  ori          t1, s10, 1053
                  and          s2, s3, s11
sub_8_stack_p:    addi         a1, a1, -28
                  sw           a7, 4(a1)
                  slt          s4, t5, a3
                  slti         s10, s4, -1017
                  srai         t6, s6, 9
                  sltu         s11, t5, t6
                  srl          a6, a5, zero
                  xor          s6, t3, a6
                  bne          zero, tp, sub_8_j13 #branch to jump instr
                  add          s1, zero, s2
                  sra          zero, s4, a1
                  sltu         sp, tp, s2
                  or           a4, zero, a6
sub_8_j13:        jal          a7, sub_10 #jump sub_8 -> sub_10
                  la           sp, region_1+353 #start riscv_load_store_rand_instr_stream_0
                  lb           s6, -22(sp)
                  or           t3, a4, s9
                  lh           s1, -23(sp)
                  lb           s9, 14(sp)
                  sltu         s6, t6, s4
                  lbu          a6, -50(sp)
                  lb           s4, 54(sp)
                  sb           t5, 8(sp)
                  slli         gp, t4, 20
                  sb           gp, 23(sp)
                  sb           t5, 63(sp)
                  slt          s8, sp, s8
                  lb           s9, -54(sp)
                  srli         s1, t5, 30
                  add          s7, t4, a7
                  add          s5, s11, a3
                  lui          s1, 269706
                  sra          t4, tp, t1
                  nop
                  lbu          t3, 20(sp)
                  lhu          a3, 53(sp)
                  xor          gp, t6, t3
                  lbu          tp, -52(sp)
                  or           ra, s6, s6
                  lb           a4, -32(sp)
                  slli         a3, a4, 21
                  xori         s10, s0, -1439
                  slli         t0, s1, 13
                  xor          t1, a6, t4
                  lh           s1, -53(sp)
                  lb           t6, 46(sp)
                  auipc        a6, 20023
                  slt          a6, s4, a3
                  or           s6, s5, s11
                  andi         a7, s11, -1724
                  lh           t3, -3(sp) #end riscv_load_store_rand_instr_stream_0
                  bge          t1, s7, 15f
                  sll          s4, tp, s1
                  or           s6, gp, s5
                  sltiu        s6, t1, 1276
                  sub          s0, s5, s7
                  sub          a6, t5, zero
                  blt          t6, a1, 24f
                  slti         s5, a7, -1649
                  or           s2, a5, t0
                  bltu         t2, a2, 21f
                  bne          t2, t2, 21f
                  bltu         t0, s9, 13f
                  sub          s11, a3, tp
13:               and          t4, t4, s11
                  sltiu        a6, a5, 451
15:               xor          t5, a1, t6
                  sll          t3, s5, a4
                  bge          s10, t1, 36f
                  lui          s4, 847527
                  add          t2, t4, a1
                  blt          s11, s3, 32f
21:               srai         zero, t6, 10
                  andi         t3, s0, -1254
                  lui          s1, 511596
24:               ori          s6, t2, -947
                  bge          gp, t2, 33f
                  bge          s4, gp, 43f
                  slt          s4, s4, s5
                  auipc        s8, 68711
                  bge          t1, sp, 42f
                  andi         sp, s3, -1649
                  sra          s4, s11, tp
32:               and          s0, t4, t5
33:               and          zero, gp, a4
                  auipc        s9, 744395
                  srl          t4, t5, t4
36:               sub          s11, s3, t6
                  nop
                  bltu         a6, s1, 57f
                  nop
                  xor          s7, s10, zero
                  or           t4, gp, gp
42:               sra          gp, ra, tp
43:               sltu         s10, tp, s5
                  bne          s5, a1, 58f
                  srli         s5, s6, 29
                  beq          t0, a5, 51f
                  sub          s2, a2, s6
                  sltiu        t6, a3, -881
                  nop
                  sub          s2, t4, t3
51:               lui          s8, 64474
                  bltu         sp, a7, 70f
                  srai         ra, a4, 5
                  andi         s5, s3, -1783
                  bgeu         s1, s10, 75f
                  sltu         a5, ra, gp
57:               bltu         gp, ra, 68f
58:               slt          ra, a7, s9
                  sll          t4, t2, s1
                  slti         t0, a5, 1339
                  srai         zero, s8, 0
                  slti         t6, ra, -1073
                  xori         t0, a6, 1099
                  sll          s7, t2, gp
                  blt          t1, s1, 68f
                  bne          t4, a6, 81f
                  xor          s7, s10, s10
68:               lui          ra, 389388
                  srai         zero, zero, 20
70:               andi         ra, a4, 2013
                  xor          s11, s6, t2
                  auipc        a4, 965385
                  slti         t6, a1, -1255
                  sltu         gp, a3, t4
75:               srli         a5, tp, 8
                  ori          t0, t5, 670
                  auipc        zero, 1023723
                  bne          s2, a1, 97f
                  bgeu         s2, ra, 94f
                  xor          t2, t4, a7
81:               slt          a5, zero, s7
                  bltu         s9, a2, 101f
                  sub          s10, zero, a5
                  or           s2, t5, t4
                  slli         t5, s9, 16
                  addi         s10, s9, 1133
                  sltiu        s9, zero, -236
                  beq          t3, a4, 106f
                  addi         t5, a5, 1742
                  srl          a5, a0, a4
                  bgeu         ra, a7, 94f
                  sltu         s0, s5, tp
                  bge          s7, s9, 94f
94:               srai         s0, s1, 30
                  and          t2, t2, s2
                  slt          s0, s11, s6
97:               sltu         gp, t0, s0
                  sra          a2, a2, s2
                  add          t5, s1, a5
                  add          t5, sp, a1
101:              bge          zero, a7, 116f
                  addi         a2, s5, 942
                  sltiu        s5, t2, -1539
                  slli         t4, s1, 12
                  sub          s6, a3, t0
106:              blt          s8, tp, 126f
                  blt          t1, s4, 117f
                  auipc        s7, 286409
                  srai         s5, tp, 13
                  ori          s6, t3, -392
                  sub          t0, s3, s11
                  xor          s1, a7, a7
                  sll          sp, t0, s6
                  sub          ra, s2, zero
                  sltu         s10, a3, sp
116:              sub          t4, t0, sp
117:              srai         s7, s2, 1
                  slti         s5, t5, 85
                  slli         s1, a5, 19
                  sll          t0, s2, a5
                  addi         zero, zero, 387
                  or           s4, a4, s11
                  srli         s7, a1, 9
                  srli         s6, t2, 22
                  sra          t1, s5, t2
                  sltu         s11, a0, sp
                  slti         zero, gp, -21
                  and          s7, tp, a7
                  nop
                  or           t1, a3, s0
                  srli         s6, s3, 5
                  add          a2, s10, zero
sub_8_j12:        jal          a7, sub_10 #jump sub_8 -> sub_10
                  lui          s4, 966303
126:              nop
                  sltiu        s4, t4, 1814
                  add          s9, a2, s4
                  beq          s7, t0, 132f
                  bne          t4, s2, 142f
                  and          t6, s10, a2
132:              beq          s6, a5, 136f
                  nop
                  bge          s1, a5, 145f
                  auipc        s0, 245932
136:              slt          a4, s9, a2
                  bltu         s5, t5, 149f
                  bltu         t0, s3, 141f
                  addi         s5, s11, -1340
                  bne          s3, s3, 152f
141:              slti         ra, a3, -731
142:              sub          s11, s9, s11
                  bltu         s3, a7, sub_8_j11 #branch to jump instr
                  slt          a2, s4, ra
                  nop
                  slti         a6, t1, 1877
                  srli         s8, s7, 10
                  sltiu        sp, sp, -344
sub_8_j11:        jal          a7, sub_9 #jump sub_8 -> sub_9
                  ori          s10, ra, -1857
                  xori         a3, s6, 936
145:              slli         s0, a4, 22
                  srli         a6, s3, 12
                  sub          t5, s5, s0
                  auipc        t4, 756776
149:              srl          a3, a1, a6
                  sltiu        a3, s1, -900
                  add          t1, a4, a0
152:              sll          t1, t6, a0
                  srl          s0, s0, t3
                  auipc        s8, 652739
                  xori         s2, a2, 711
                  bne          t0, t1, 168f
                  sltu         a5, s1, s4
                  lui          zero, 544725
                  xor          s4, s0, a6
                  addi         a2, s9, -1825
                  nop
                  bne          zero, s5, 177f
                  slli         t2, s8, 8
                  srl          a5, s5, t6
                  srl          a2, a0, s4
                  srai         t5, s3, 15
                  add          s0, s7, a2
168:              and          s6, s11, s11
                  srai         a2, a7, 17
                  add          s7, a1, t3
                  and          t1, a2, a6
                  lui          a3, 1039788
                  lui          s6, 951179
                  bltu         a2, tp, 189f
                  xor          t3, s8, a6
                  andi         s1, a3, 1596
177:              slt          tp, a1, t5
                  bge          s0, a0, 182f
                  srai         t5, sp, 10
                  xor          s6, a1, s8
                  slt          s0, s4, t2
182:              bltu         a3, t3, 197f
                  and          t6, t1, t0
                  bne          s0, sp, 187f
                  srai         s10, a3, 4
                  add          s1, a5, s7
187:              add          s7, sp, t1
                  sltu         s7, tp, a1
189:              add          s0, s0, sp
                  xori         gp, t6, -1918
                  bgeu         t2, s8, 194f
                  srli         gp, t0, 27
                  bge          s3, t0, 198f
194:              blt          s0, t0, 213f
                  slti         s7, gp, -1090
                  sltu         t0, s10, s9
197:              srli         t4, t6, 3
198:              sltiu        gp, s5, 673
                  andi         a2, ra, -746
                  bgeu         t2, t0, 219f
                  slt          ra, t1, s5
                  sltu         zero, ra, t3
                  bltu         t2, s11, 221f
                  slli         s6, s7, 14
                  blt          a0, a1, 224f
                  sra          gp, t3, a1
                  or           s6, s6, a5
                  beq          tp, s9, 228f
                  xor          a3, t5, t5
                  auipc        s10, 245132
                  or           a2, t5, tp
                  nop
213:              slti         t0, a6, 1121
                  sltiu        s2, s3, -249
                  sltiu        sp, s2, -576
                  sll          a7, s5, t3
                  addi         a6, ra, -1021
                  srai         a6, s3, 23
219:              sub          zero, a0, t2
                  andi         t1, a4, 319
221:              sra          s10, a4, s6
                  srai         t6, s9, 23
                  ori          t1, a2, 1261
224:              ori          t5, t3, -2005
                  sll          t1, zero, s4
                  slt          a3, s2, s6
                  addi         s5, gp, -1030
228:              slt          t4, a0, s6
                  bne          sp, a1, 231f
                  bgeu         t3, ra, 231f
231:              ori          t1, a0, 1841
                  sll          t4, a7, s0
                  slt          t1, a0, s2
                  lw           a7, 4(a1)
                  slt          s5, t2, s4
                  slti         s1, s9, 1230
                  nop
                  addi         a1, a1, 28
                  xori         zero, a7, 1744
312:              addi x23, x17, 0
312:              jalr x23, x23, 0
sub_4:            addi         t4, gp, 132
                  and          sp, s4, t3
                  addi         s5, s1, -793
                  sll          s0, s6, s4
                  beq          s3, a2, sub_4_stack_p
sub_4_stack_p:    addi         a1, a1, -40
                  srai         t4, s6, 16
                  srai         t1, t6, 16
                  srli         gp, sp, 0
                  slt          s10, a3, s4
                  sw           a7, 4(a1)
                  and          a5, t5, s9
                  andi         s11, s4, -1885
                  or           a4, a3, a4
                  beq          s1, tp, sub_4_j7 #branch to jump instr
                  srli         t0, t0, 31
                  sltu         t5, ra, t5
                  srai         s7, tp, 23
                  add          a5, s0, s5
                  xor          s2, t6, s8
                  sltu         t5, a0, s2
sub_4_j7:         jal          a7, sub_7 #jump sub_4 -> sub_7
                  sltu         t2, t4, a1
                  slti         a2, t5, 1415
                  srl          a3, a6, t6
                  srai         t0, t1, 8
                  sltu         s7, a2, s2
                  slt          s1, a2, s3
                  xor          sp, s11, a3
                  or           s2, a0, s8
sub_4_j8:         jal          a7, sub_5 #jump sub_4 -> sub_5
                  and          s10, s6, a6
                  or           t5, s5, s5
                  xor          s10, a1, s3
                  la           t3, sub_6
                  addi         t3, t3, -560
                  srl          s5, sp, a3
                  or           tp, a6, a0
                  bge          a2, t5, sub_4_j9 #branch to jump instr
                  sra          a7, sp, s4
sub_4_j9:         jalr         a7, t3, 560 #jump sub_4 -> sub_6
                  sll          sp, s8, s3
                  sltiu        s4, tp, 1367
                  add          a2, s2, s5
                  sra          s1, t3, s10
                  beq          a2, zero, 9f
                  slti         s9, s9, -477
                  ori          sp, s11, 936
                  slti         a2, tp, -1450
                  andi         zero, a7, -658
9:                bne          a1, s7, 25f
                  sltiu        s9, gp, -1231
                  auipc        sp, 963779
                  beq          s6, s0, 30f
                  bltu         a0, s8, 32f
                  bltu         s0, a6, 15f
15:               bltu         sp, s8, 20f
                  sltiu        zero, s8, 301
                  auipc        t4, 180951
                  or           s8, s4, s4
                  blt          sp, s3, 20f
20:               slt          gp, tp, s5
                  srl          t0, t1, s8
                  beq          sp, sp, 32f
                  xori         sp, a5, -53
                  bgeu         zero, s2, 25f
25:               slt          s7, s5, s4
                  slli         a4, a6, 30
                  srli         s10, s10, 12
                  sltu         s6, t5, s9
                  srl          s7, ra, sp
30:               srli         gp, sp, 31
                  bne          s0, t0, 41f
32:               slt          s1, a2, s3
                  bgeu         a4, t0, 41f
                  sra          tp, s9, s4
                  slt          t6, s0, t1
                  ori          a6, s11, 878
                  slti         a5, a2, -828
                  blt          a1, tp, 43f
                  xor          s0, s0, gp
                  xori         a7, a7, 690
41:               xori         s8, s0, 1311
                  xori         t2, t3, -1500
43:               auipc        t0, 748370
                  bge          t0, s9, 45f
45:               bne          s11, t1, 49f
                  srai         t6, sp, 31
                  bge          s3, s5, 54f
                  addi         s11, a2, -896
49:               addi         s0, a0, 1628
                  xori         s8, tp, -1663
                  beq          s2, s10, 54f
                  bltu         s10, s5, 54f
                  nop
54:               andi         a3, sp, -1203
                  xori         t3, ra, -1154
                  xor          s7, s2, a7
                  auipc        s10, 678025
                  lw           a7, 4(a1)
                  sub          t6, a2, ra
                  sub          t3, sp, sp
                  addi         a1, a1, 40
                  slti         t2, s6, -1142
                  sll          ra, s1, t5
105:              addi x22, x17, 1
105:              jalr x22, x22, 0
sub_9:            auipc        ra, 979100
                  ori          t0, s2, 1742
                  sra          tp, t3, a6
                  addi         a1, a1, -40
                  sw           a7, 4(a1)
                  xori         s1, t0, -88
                  slti         t2, t1, -1835
                  bgeu         s11, a3, 9f
                  or           t5, a5, s2
                  andi         t4, t1, -1907
                  blt          s1, t6, 10f
                  slti         zero, t0, 821
                  addi         t2, a6, -1105
                  ori          t1, s11, -391
                  srl          a6, a7, t4
9:                sll          gp, a0, gp
10:               ori          sp, s5, 976
                  sll          s8, ra, a5
                  andi         zero, s6, -58
                  srli         s6, s9, 8
                  beq          sp, t0, 19f
                  xor          t4, a3, s6
                  lui          t3, 3916
                  sltu         s2, sp, a3
                  andi         s10, s10, -192
19:               andi         s11, s5, 464
                  srl          s6, a7, t5
                  bge          s4, a5, 34f
                  sra          tp, a5, s4
                  addi         sp, a1, 468
                  xor          a4, s4, a2
                  xori         s9, t0, 1534
                  srli         t5, a1, 29
                  sra          t4, a6, s9
                  blt          s6, a5, 30f
                  nop
30:               srli         a3, t1, 2
                  srl          t4, s10, s2
                  lui          s1, 91628
                  xori         a2, s3, -1261
34:               slti         t5, s9, 1745
                  xor          s1, t0, a3
                  andi         a3, s0, -1354
                  or           s9, tp, s8
                  nop
                  srai         t3, t1, 24
                  ori          t3, t3, -1758
                  sub          a2, a5, t2
                  sra          t2, ra, t4
                  srai         a5, s1, 28
                  sltu         s2, a4, a4
                  lw           a7, 4(a1)
                  slti         s6, ra, -1247
                  sra          s4, a6, a6
                  slli         sp, ra, 18
                  addi         a1, a1, 40
                  srai         ra, t0, 31
                  srli         s7, a4, 28
                  andi         a3, a1, -836
59:               addi x4, x17, 1
59:               jalr x4, x4, 0
sub_1:            bge          a7, a2, sub_1_stack_p
                  sub          s11, s7, tp
                  or           s8, t1, s3
                  and          t5, s0, s11
                  addi         gp, a5, -316
                  auipc        s4, 207361
                  ori          t1, s8, -1017
sub_1_stack_p:    addi         a1, a1, -64
                  ori          t3, a0, -106
                  or           t2, s7, s8
                  sw           a7, 4(a1)
                  sltu         t1, gp, sp
                  srai         a7, s11, 26
                  andi         t4, a0, 1619
                  sltiu        s0, t1, -1753
                  sltiu        s0, a0, 1047
                  la           s1, sub_2
                  addi         s1, s1, 993
                  xor          a3, s0, s0
sub_1_j3:         jalr         a7, s1, -992 #jump sub_1 -> sub_2
                  la           sp, region_0+785 #start riscv_load_store_rand_instr_stream_5
                  add          t4, s8, t1
                  lbu          tp, -128(sp)
                  addi         s9, s4, -255
                  lb           s10, -154(sp)
                  lhu          t5, 5(sp)
                  lb           t4, -251(sp)
                  sb           t3, 24(sp)
                  sub          s8, s2, t1
                  sb           s4, -149(sp)
                  sltu         a7, t0, a6
                  sb           t0, -67(sp)
                  sh           a4, -61(sp)
                  sh           a1, 83(sp)
                  lh           t5, 17(sp)
                  lbu          zero, -62(sp)
                  lb           a7, -230(sp)
                  lbu          t6, 216(sp)
                  lbu          t6, -99(sp)
                  lb           s9, -111(sp)
                  lhu          a5, 81(sp)
                  auipc        s6, 547908
                  lb           ra, -124(sp)
                  sll          a5, a3, s2
                  sb           gp, 151(sp)
                  auipc        t2, 90332
                  lhu          t0, -171(sp)
                  lbu          t2, -23(sp)
                  sb           a4, -147(sp)
                  sra          t0, a7, a6
                  lb           a3, 184(sp)
                  andi         tp, a3, -378
                  sb           t6, 125(sp)
                  lb           s1, 59(sp)
                  lui          zero, 749050
                  sb           t5, -24(sp)
                  lbu          s11, -72(sp)
                  xor          t5, zero, t1
                  auipc        a6, 866882
                  lbu          s1, 182(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_1+656 #start riscv_load_store_rand_instr_stream_2
                  sra          t6, a1, a1
                  lhu          s2, 1112(s5)
                  slt          a4, s3, s11
                  sb           gp, -267(s5)
                  lbu          a4, 942(s5)
                  lhu          gp, 316(s5)
                  srai         tp, t1, 14
                  slli         s6, t0, 5
                  slli         s0, gp, 10
                  addi         ra, a4, -1318
                  lw           t3, 20(s5)
                  srli         t1, tp, 21
                  srai         tp, s9, 2
                  sll          ra, t6, a1
                  sw           sp, -500(s5)
                  sh           s6, 870(s5)
                  sb           s2, 192(s5)
                  lbu          s1, -460(s5)
                  sb           tp, -402(s5)
                  lb           gp, 644(s5)
                  sh           t1, 854(s5)
                  lbu          a6, -65(s5)
                  sltu         zero, t6, a7
                  sb           ra, -8(s5)
                  lb           t3, -453(s5)
                  lw           t5, 824(s5)
                  add          t5, a2, s4
                  srai         s8, gp, 19
                  xori         tp, a4, 1585
                  slli         a3, sp, 17
                  lw           a7, 716(s5)
                  sltu         a6, a4, a0
                  sub          a5, a0, s0
                  lbu          tp, 599(s5)
                  slti         s4, s7, 1109
                  sb           a7, 845(s5)
                  sh           t1, 412(s5)
                  auipc        ra, 641688
                  lb           s6, 600(s5)
                  sb           a4, -122(s5)
                  lh           s10, -610(s5)
                  lbu          t2, 1010(s5)
                  lbu          s10, 990(s5)
                  lb           a4, 851(s5)
                  srai         ra, t2, 18
                  lbu          s10, 971(s5)
                  sra          s9, s0, a0
                  xori         s0, tp, 1418
                  ori          s11, t4, -1421
                  sh           t3, 510(s5)
                  lb           tp, 16(s5) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_1+590 #start riscv_load_store_rand_instr_stream_4
                  slt          s1, t1, t3
                  addi         ra, a6, -777
                  srli         a6, s8, 3
                  lb           tp, 976(s11)
                  or           t1, a0, t3
                  sb           s11, 1299(s11)
                  sb           s6, 1079(s11)
                  lhu          s2, -164(s11)
                  sh           s6, -24(s11)
                  lb           a5, 102(s11)
                  sb           s0, 168(s11)
                  lhu          s0, -240(s11)
                  sub          t1, a7, s6
                  auipc        gp, 456661
                  lb           s1, 713(s11)
                  slt          t2, s4, t1
                  xor          gp, s8, a4
                  lb           t0, -236(s11)
                  sb           t1, 501(s11)
                  slt          gp, s8, a7
                  slt          t4, a3, s6
                  lbu          tp, 156(s11)
                  auipc        zero, 870974
                  lb           s7, 1131(s11)
                  lbu          t3, 665(s11) #end riscv_load_store_rand_instr_stream_4
                  xor          s11, t6, ra
                  sltiu        a4, tp, -428
                  andi         t5, s4, 342
                  blt          sp, s5, 9f
                  sra          s4, a6, t4
                  blt          s0, s9, 25f
                  xori         t2, tp, -338
                  sra          s4, s9, a6
                  xori         s4, a1, 726
9:                andi         s7, s3, -1088
                  ori          tp, a5, 808
                  sltiu        s8, a7, -269
                  addi         a6, t0, -11
                  sra          t4, t0, s11
                  srai         a4, s10, 6
                  nop
                  bltu         tp, t6, 17f
17:               andi         t1, s4, 1114
                  sltu         s7, s4, t2
                  beq          s8, a5, 25f
                  sll          ra, zero, t4
                  srai         tp, t2, 28
                  add          s0, s7, s11
                  slt          a7, s10, s0
                  sltiu        a3, zero, 1688
25:               xor          t0, s8, s4
                  slt          s6, a0, a5
                  beq          a2, a6, 39f
                  sll          s9, gp, a1
                  slti         s0, tp, 1582
                  bltu         gp, ra, 50f
                  sra          s0, s1, zero
                  bltu         t2, s1, 45f
                  bne          s7, a2, 47f
                  xor          a3, s11, s10
                  bne          t6, s0, 45f
                  xor          t1, a0, sp
                  andi         s8, t6, 1386
                  ori          s5, t1, 1807
39:               sra          t4, ra, a3
                  slli         t0, s11, 2
                  srai         gp, t2, 23
                  lui          t0, 314333
                  auipc        a2, 823824
                  bltu         a0, a1, 63f
45:               srl          s1, t1, a4
                  sltiu        t1, t4, -1695
47:               sub          tp, a3, a4
                  bgeu         zero, a2, 51f
                  sll          zero, s1, a2
50:               add          t5, a4, t1
51:               andi         a5, t2, -719
                  sub          s11, t1, s6
                  sra          s4, s0, ra
                  sltiu        s2, t5, 999
                  add          a3, s1, ra
                  addi         s1, a1, 1766
                  sltu         s2, a5, a4
                  add          s4, ra, a4
                  ori          a3, s1, -644
                  xor          a4, a5, t3
                  srli         s8, t5, 22
                  xor          a2, s11, a2
63:               auipc        ra, 423564
                  bge          zero, t0, 70f
                  slli         t3, zero, 22
                  addi         s0, s2, 1548
                  addi         s0, s1, -478
                  xor          tp, t5, a0
                  bge          s4, gp, 79f
70:               add          t4, s8, zero
                  slti         a2, zero, -123
                  sltu         a6, s2, s8
                  srli         t3, t2, 25
                  bltu         gp, a0, 89f
                  bgeu         a4, s5, 82f
                  sub          t1, zero, gp
                  or           s6, a5, s11
                  bgeu         ra, s6, 88f
79:               bne          t5, s6, 98f
                  sub          s7, s1, a1
                  slti         gp, t5, 777
82:               srai         s11, a6, 26
                  bltu         a7, s6, 86f
                  sltiu        t5, zero, -1619
                  xor          sp, zero, t0
86:               sltiu        a2, t3, 325
                  nop
88:               slt          ra, t4, s1
89:               srai         s6, a6, 25
                  slli         s10, zero, 4
                  auipc        t3, 44986
                  ori          s7, t2, -800
                  slt          t5, a0, a3
                  bge          s11, sp, 96f
                  sltiu        t6, t5, -1498
96:               andi         s1, s10, -55
                  addi         a7, a6, -672
98:               auipc        t5, 469703
                  sll          t1, t2, t2
                  auipc        gp, 497414
                  blt          s6, s8, 115f
                  srli         t4, a7, 16
                  slt          gp, a0, s4
                  srli         s0, s8, 24
                  beq          s6, s1, 121f
                  slt          s8, a5, s9
                  bgeu         s3, t5, 108f
108:              bltu         s1, s2, 122f
                  add          t0, t3, s2
                  srli         s5, zero, 16
                  bltu         ra, ra, 118f
                  slt          a5, a6, zero
                  bltu         t2, s8, 131f
                  sll          s0, a3, gp
115:              slt          s6, t5, gp
                  bltu         t4, a3, 121f
                  xor          s9, a1, a2
118:              bgeu         s2, a6, 122f
                  bge          a1, ra, 126f
                  sra          s5, a0, t5
121:              bge          s2, s3, 138f
122:              blt          s0, s2, 135f
                  srl          t2, a6, a4
                  lui          s10, 353675
                  lui          s9, 220748
126:              and          t0, gp, t5
                  sltu         a4, a1, a3
                  auipc        t1, 649717
                  sub          gp, s10, s1
                  nop
131:              bltu         t3, s0, 138f
                  or           a3, s7, s4
                  bgeu         a0, s0, 152f
                  srl          s11, t3, a2
135:              add          s5, t5, t5
                  bge          t6, t5, 152f
                  bge          t6, a6, 138f
138:              sub          t4, gp, t5
                  slli         a4, s9, 0
                  xor          sp, a5, t1
                  slli         t4, t2, 19
                  bge          s7, t5, 152f
                  addi         t0, a7, 606
                  bltu         s8, a2, 151f
                  sltiu        a2, s7, -246
                  or           s10, a3, a0
                  or           a5, s6, ra
                  or           s2, s6, a5
                  lui          a4, 671967
                  slt          sp, s5, t2
151:              slt          s0, t5, zero
152:              addi         s11, a1, -1821
                  sltiu        t0, s4, 421
                  addi         a2, a6, 421
                  sra          sp, t5, t6
                  beq          s9, a1, 162f
                  srli         s0, gp, 5
                  sub          t0, s8, s9
                  slli         t5, s10, 5
                  sltiu        s2, s0, -450
                  bltu         t0, a7, 175f
162:              lui          s4, 723465
                  xor          ra, t4, t0
                  bge          ra, s7, 184f
                  bge          s11, a7, 175f
                  xor          a3, s5, ra
                  sll          s7, t2, a4
                  beq          s7, a4, 180f
                  or           s11, s2, t5
                  xor          a2, t2, s2
                  andi         s9, a2, -1385
                  bgeu         s1, sp, 175f
                  nop
                  bge          s6, a5, 181f
175:              sltiu        t0, s1, -357
                  sub          t2, a7, s0
                  ori          s8, t5, 1492
                  auipc        t5, 858427
                  blt          s4, s1, 196f
180:              srl          t4, t1, a0
181:              beq          a2, s5, 183f
                  srl          zero, t1, s3
183:              bgeu         s11, a5, 203f
184:              slt          s2, sp, a7
                  andi         s0, a6, 1035
                  bgeu         a2, a2, 200f
                  xor          s6, t0, s8
                  slli         zero, s10, 27
                  auipc        s6, 796959
                  and          s11, s3, a1
                  auipc        a4, 553968
                  beq          ra, s4, 195f
                  sra          t4, s6, s7
                  sltiu        s9, a0, 346
195:              sltu         tp, s3, s4
196:              slt          zero, ra, s5
                  add          t1, zero, s7
                  slti         t0, sp, 1762
                  lui          t1, 358452
200:              xori         t2, t5, -713
                  sll          a5, s8, ra
                  xori         s0, s10, -342
203:              xori         a7, s1, -964
                  auipc        a6, 300217
                  ori          t2, zero, -1970
                  bge          sp, t6, 219f
                  xori         s7, t5, -1909
                  bne          a4, s10, 209f
209:              slli         t0, s0, 26
                  sub          a6, t2, a0
                  and          a5, a4, a2
                  srl          s7, s9, s1
                  xor          s9, t0, sp
                  auipc        s7, 695390
                  srai         ra, t6, 2
                  sra          s6, a3, s3
                  srli         a3, t1, 29
                  srl          s6, s3, a6
219:              srl          t3, s0, a6
                  bltu         a0, t5, 239f
                  addi         t4, s0, -1608
                  srli         s0, t4, 0
                  bltu         s3, s11, 233f
                  blt          t2, a4, 230f
                  or           ra, s10, s1
                  andi         t4, a6, -140
                  srl          a4, a0, a1
                  slli         s10, a0, 25
                  nop
230:              xori         a7, t3, 1814
                  and          t0, t1, t2
                  bgeu         t5, a4, 247f
233:              sub          a7, a7, t5
                  bge          gp, s7, 252f
                  slti         t1, t4, -1484
                  or           s1, a2, ra
                  xor          t6, a0, a4
                  ori          a2, s5, 1749
239:              slli         s1, t2, 15
                  slti         s11, a0, 659
                  srl          ra, s11, s7
                  bltu         a4, t2, 246f
                  lui          s1, 582342
                  sltiu        s1, t4, -1774
                  xori         a2, s4, 1618
246:              ori          t4, s7, -1252
247:              xori         zero, a6, 1343
                  xor          a4, a4, s11
                  slti         t5, ra, -731
                  and          s4, t4, a1
                  sltiu        s7, s8, 1313
252:              and          gp, zero, s8
                  srli         t2, a7, 5
                  xor          s5, s1, s2
                  bltu         s2, t4, 269f
                  bgeu         s7, s5, 261f
                  lui          s2, 143748
                  xor          ra, s0, s8
                  or           tp, t0, t3
                  or           s11, a0, s3
261:              sub          s0, t3, s10
                  srli         t0, s7, 24
                  bgeu         s2, a0, 269f
                  or           s6, s7, ra
                  xor          t5, t5, t0
                  slt          a6, t4, a0
                  slt          t3, t2, sp
                  add          tp, s10, t1
269:              slt          a6, t6, s5
                  xor          t0, s3, s5
                  beq          sp, s4, 284f
                  bge          a5, a0, 290f
                  bne          s7, t1, 287f
                  andi         a7, sp, 1940
                  slt          s5, sp, t0
                  bgeu         a4, a3, 290f
                  xor          a3, s2, t1
                  ori          a2, gp, 258
                  slt          s6, s11, a7
                  nop
                  sll          s7, t5, s9
                  sll          s1, a4, s4
                  ori          t5, s5, -511
284:              blt          t5, sp, 296f
                  sltiu        s5, s9, 51
                  sll          t2, s2, zero
287:              lui          s1, 747052
                  bltu         a0, s0, 294f
                  lui          sp, 164106
290:              slli         s6, gp, 31
                  bltu         s10, t2, 311f
                  or           s5, t0, a3
                  ori          s9, a5, 1911
294:              xor          s7, s2, s9
                  beq          a5, ra, 296f
296:              bltu         s10, a0, 303f
                  slt          s10, a2, a2
                  srli         s7, s6, 28
                  srli         gp, a6, 6
                  srli         zero, s4, 31
                  nop
                  bgeu         a1, sp, 308f
303:              slli         t3, zero, 0
                  or           tp, a5, a1
                  sll          s4, t1, a6
                  nop
                  lui          s7, 10304
308:              bne          ra, sp, 318f
                  lui          s6, 968095
                  sub          s8, a6, a5
311:              sltu         t4, s5, s5
                  slt          t5, s6, t3
                  bge          s1, a7, 327f
                  ori          s5, s9, -1778
                  xor          a3, a7, s7
                  slt          a3, gp, zero
                  slt          a6, a2, t6
318:              xori         s5, s4, 188
                  slli         s8, t5, 23
                  sll          a3, s2, s9
                  xor          a2, a4, gp
                  nop
                  xori         a3, t0, 1862
                  sll          a4, s9, s0
                  srli         t6, gp, 28
                  add          gp, tp, s5
327:              slt          s6, s1, s6
                  slt          s6, s11, a5
                  lui          zero, 515664
                  sltiu        s10, t6, 1191
                  bltu         s9, s7, 344f
                  sra          s10, ra, a7
                  la           s0, region_0+901 #start riscv_load_store_rand_instr_stream_1
                  lb           a2, 6(s0)
                  lui          s1, 991998
                  andi         s5, a3, -719
                  sltu         t4, t0, a1
                  sb           t2, -40(s0)
                  sltiu        a3, s9, -195
                  sb           s5, 149(s0)
                  addi         t6, a5, 555
                  sb           a5, -250(s0)
                  nop
                  lb           s8, -165(s0)
                  lw           sp, 139(s0)
                  srai         a5, t6, 18
                  and          sp, ra, s10
                  lb           s6, 1(s0)
                  andi         ra, s11, -1178
                  and          t1, s6, a2
                  sll          t1, a2, s0
                  lbu          s4, -10(s0)
                  sb           t0, -31(s0)
                  sub          s6, s7, a1
                  sra          a7, s11, s3
                  and          s5, t0, a0
                  lhu          a7, -175(s0)
                  sb           s6, 87(s0)
                  sb           t0, 230(s0)
                  nop
                  slli         a3, a6, 7
                  sb           a6, 180(s0)
                  lhu          s7, -69(s0)
                  sw           a1, -237(s0)
                  srl          t1, t3, s10
                  xor          s1, t6, t4
                  sb           a0, -104(s0)
                  sra          a7, gp, a5
                  nop
                  sra          zero, gp, zero
                  xori         s9, a3, 824
                  lb           t4, 216(s0) #end riscv_load_store_rand_instr_stream_1
                  addi         a3, t2, -4
                  or           s6, t4, a3
                  slli         t3, t2, 24
                  blt          s7, a1, 339f
                  auipc        a4, 892943
                  sll          t1, a7, t0
339:              nop
                  slli         a4, s1, 12
                  ori          sp, a2, 1148
                  la           sp, region_1+368 #start riscv_load_store_rand_instr_stream_0
                  sltiu        t4, t4, -161
                  and          s0, gp, a5
                  sb           a4, -135(sp)
                  sltiu        t3, s9, 1122
                  sb           t2, -125(sp)
                  lh           s11, -60(sp)
                  sll          t6, s5, s10
                  lb           a6, 197(sp)
                  lb           a6, -25(sp)
                  lb           s8, 2(sp)
                  lhu          t3, 110(sp)
                  lui          t2, 322971
                  add          s7, t3, s11
                  sra          a3, s4, a1
                  lui          s5, 262161
                  sra          s8, a7, t0
                  nop
                  lh           s9, -34(sp)
                  lui          t2, 277672
                  nop
                  lb           ra, 133(sp)
                  lbu          tp, -30(sp)
                  andi         s1, a6, 792
                  sra          zero, t5, t3
                  slli         s1, a5, 25
                  lb           gp, 185(sp)
                  srl          t0, a4, zero
                  lbu          s7, 1(sp)
                  addi         a6, t2, -1697
                  sltu         gp, t3, t1
                  lbu          a2, -232(sp)
                  slti         s7, a2, -567
                  sb           a0, 136(sp)
                  sltiu        a7, s7, 1224
                  lbu          s2, -21(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         t2, s6, t1
                  srli         zero, sp, 0
344:              sub          s5, s0, zero
                  bltu         gp, a3, 349f
                  bne          a5, zero, 361f
                  sltiu        a4, a7, -633
                  ori          s1, a7, 1079
349:              srli         sp, sp, 13
                  sub          t5, s1, zero
                  nop
                  lui          sp, 325442
                  srli         t4, s8, 27
                  xori         t2, t5, 285
                  blt          a1, a6, 368f
                  srai         t4, s2, 25
                  xori         s7, s5, 1746
                  srl          s1, a0, s11
                  beq          zero, t4, 376f
                  la           sp, region_1+1450 #start riscv_load_store_rand_instr_stream_3
                  slt          t0, a3, s4
                  lbu          s5, 0(sp)
                  lw           a5, -6(sp)
                  sub          a5, t5, zero
                  slt          gp, s1, a6
                  addi         s5, t4, 888
                  auipc        t3, 562440
                  lbu          t0, -16(sp)
                  sub          a3, t6, t3
                  slt          t6, a0, tp
                  andi         zero, s7, 400
                  slti         s4, s0, -1745
                  slt          s2, a2, gp
                  sll          a2, t2, t6
                  sltu         t1, a2, s1
                  lui          s6, 640112
                  lb           t4, -9(sp)
                  and          a7, t2, t4
                  and          t2, s4, s9
                  sb           a4, -16(sp)
                  nop
                  ori          t5, gp, -659
                  lb           s9, -15(sp)
                  srli         ra, t6, 15
                  lb           a2, 9(sp)
                  srai         s6, t4, 20
                  sltiu        s0, s8, 1536
                  sub          a7, s11, t1
                  lh           s5, -2(sp)
                  xor          t2, tp, sp
                  srai         s0, a1, 26
                  lb           a2, -13(sp)
                  lb           a3, 3(sp)
                  lhu          a6, 2(sp)
                  andi         a7, a0, 315
                  slt          s9, zero, s4
                  lhu          a2, -10(sp)
                  slli         s11, s4, 14
                  sltu         s11, s3, a1
                  sb           s7, -1(sp)
                  sb           t5, -11(sp) #end riscv_load_store_rand_instr_stream_3
                  bge          t4, sp, 361f
361:              ori          a3, a1, 1589
                  addi         t6, t0, 952
                  srl          s0, s9, zero
                  srli         s8, t4, 13
                  srai         a2, a5, 12
                  xor          s5, s7, s9
                  sltu         a3, s3, s0
368:              slti         a4, ra, -1011
                  srl          t3, s3, s1
                  sltu         s2, s9, s8
                  xor          ra, s5, t3
                  srai         ra, a2, 14
                  la           t3, sub_2
                  auipc        s4, 759545
                  srl          tp, gp, a0
                  andi         s9, s2, 1411
                  andi         zero, zero, -363
                  sra          s1, a5, a0
                  addi         t3, t3, -656
                  bge          s4, s3, sub_1_j2 #branch to jump instr
                  add          a7, t0, t6
                  srli         t4, a3, 26
                  srli         t5, ra, 26
sub_1_j2:         jalr         a7, t3, 657 #jump sub_1 -> sub_2
                  bne          t4, s11, 390f
                  sltiu        t4, zero, 878
                  add          s7, t1, t6
                  andi         s5, s1, -854
                  lui          t1, 575983
376:              sltu         s4, t0, t1
                  andi         tp, ra, -1174
                  sltiu        gp, a6, 252
                  bgeu         a6, s5, 382f
                  nop
                  sub          t5, tp, t3
382:              sll          t6, s8, a7
                  ori          s0, ra, 841
                  sra          s6, s11, s10
                  add          s10, t0, s7
                  blt          t2, s9, 396f
                  slti         t1, s11, -930
                  bgeu         t5, a6, 408f
                  bltu         t1, a4, 394f
390:              addi         t6, t2, -635
                  srl          ra, t5, a2
                  bgeu         t0, s10, 402f
                  xori         zero, t4, -1650
394:              bgeu         a5, s11, 410f
                  auipc        s2, 207901
396:              srai         s7, s1, 18
                  bge          t5, s4, 403f
                  bltu         a3, t5, 405f
                  lui          s1, 734332
                  and          s1, a7, a2
                  xor          a3, sp, tp
402:              auipc        t2, 1022633
403:              blt          t5, t3, 422f
                  addi         tp, s6, 195
405:              bltu         s11, t6, 407f
                  xor          a5, s8, t1
407:              sltiu        s7, a1, 548
408:              blt          t1, a1, 415f
                  bne          a5, a5, 423f
410:              slt          t2, s8, s4
                  ori          s9, a7, -314
                  bge          sp, t3, 422f
                  blt          s3, a2, 415f
                  auipc        s7, 339740
415:              auipc        s7, 532015
                  sltiu        s8, zero, -1550
                  sltu         a6, s8, t4
                  xori         s1, zero, 363
                  bne          zero, s7, 424f
                  or           t6, t2, zero
                  lui          s1, 448960
422:              slli         t0, s11, 2
423:              xor          s10, t3, a7
424:              bne          tp, a4, 436f
                  xori         s10, ra, 330
                  slli         t3, s2, 12
                  xori         s10, a4, -1467
                  and          s11, zero, s11
                  lui          s5, 243942
                  srl          tp, s9, s7
                  lui          s0, 830864
                  sll          t1, t4, zero
                  or           s1, s6, s3
                  beq          a1, s10, 452f
                  ori          tp, a1, 832
436:              auipc        s4, 310395
                  sltu         s5, s4, a7
                  slti         s11, a3, -1495
                  bne          tp, t1, 449f
                  bgeu         a1, s2, 454f
                  slti         ra, t5, 509
                  andi         t6, t4, -1502
                  xori         s9, a5, -1333
                  bne          a5, sp, 463f
                  slt          a2, a0, a3
                  sub          s4, a0, gp
                  bltu         t2, a4, 453f
                  or           a3, t1, a6
449:              or           s9, s11, sp
                  slti         s10, s8, -26
                  andi         zero, a4, -1651
452:              ori          a5, sp, -232
453:              bgeu         s0, s2, 457f
454:              bltu         t6, t4, 467f
                  nop
                  add          a6, a7, s0
457:              sltu         t4, s10, s9
                  slti         s11, t5, -310
                  srli         sp, t5, 1
                  bltu         s4, tp, 474f
                  nop
                  sltu         tp, sp, s10
463:              slli         a3, s11, 26
                  blt          t3, s10, 471f
                  bge          s2, t0, 466f
466:              beq          t5, a2, 469f
467:              bgeu         s4, t6, 477f
                  slt          s9, t1, s2
469:              nop
                  sltiu        s10, a5, -999
471:              sub          a2, a6, a5
                  auipc        s2, 498008
                  slti         a2, a1, -960
474:              sltiu        a5, s8, 245
                  srl          s8, gp, a5
                  bltu         a2, t2, 483f
477:              sltiu        s5, s0, 598
                  and          s11, a1, sp
                  or           s2, a5, a2
                  slli         s5, s6, 2
                  add          s6, s5, s9
                  add          s0, a4, s8
483:              slti         s6, s6, 549
                  srl          a7, t3, s10
                  xor          ra, a6, s11
                  xori         s6, zero, 1032
                  beq          s8, t0, 507f
                  srli         t6, t0, 19
                  sra          t4, s7, a5
                  bgeu         a2, s3, 493f
                  sra          s6, s6, a4
                  xori         sp, a4, -1981
493:              bne          t6, s3, 506f
                  slti         s8, s8, 670
                  srl          a4, s3, gp
                  beq          t6, s2, 515f
                  sll          s0, gp, zero
                  srl          s5, t6, t0
                  slt          a2, t4, gp
                  srli         t6, s2, 30
                  blt          s11, a7, 518f
                  bge          t6, s1, 508f
                  or           zero, s5, s7
                  andi         t3, t5, -1248
                  addi         gp, s11, -1243
506:              ori          gp, t4, 1258
507:              bge          a2, t6, 527f
508:              addi         s2, t0, 1942
                  sub          t1, a5, s3
                  ori          s6, gp, 1740
                  slti         a2, s9, 366
                  bgeu         ra, s5, 527f
                  or           s6, s7, zero
                  slt          gp, a5, a6
515:              sra          t2, s7, s8
                  srli         t4, s0, 2
                  sltiu        a2, s7, -820
518:              bge          t3, t2, 519f
519:              slt          t1, s11, t6
                  bge          a4, s9, 526f
                  blt          s11, sp, 537f
                  addi         t5, s4, -884
                  bltu         s9, t6, 530f
                  andi         t0, s8, 224
                  sub          t2, s2, a0
526:              add          s7, s11, ra
527:              slt          gp, s3, t5
                  bgeu         s2, a1, 530f
                  add          s1, a0, s2
530:              srai         s9, gp, 0
                  blt          s8, s10, 548f
                  andi         t0, tp, 1284
                  beq          t2, s6, 537f
                  sub          a4, a0, t1
                  ori          t3, a7, 644
                  bltu         s9, s3, 546f
537:              sltiu        a4, s2, 1993
                  addi         s9, zero, 163
                  srl          zero, s7, a1
                  andi         gp, s1, -207
                  bge          t0, t4, 544f
                  lui          sp, 936030
                  xori         tp, t2, 789
544:              andi         a3, t1, -1352
                  slti         s4, s4, -544
546:              slli         t1, sp, 9
                  bgeu         a4, t4, 563f
548:              srai         s2, t2, 6
                  bne          t6, a4, 556f
                  bne          sp, a3, 570f
                  srai         s11, t5, 10
                  lui          s6, 552889
                  addi         t1, a1, 946
                  ori          s6, s5, 309
                  srl          t2, s9, s6
556:              xor          t5, a0, a3
                  andi         tp, s3, 1410
                  sub          s10, t3, zero
                  andi         ra, s7, 2030
                  beq          s3, tp, 574f
                  add          tp, s5, s2
                  nop
563:              or           tp, a5, s8
                  nop
                  srl          s7, s4, a0
                  xor          a4, t5, s3
                  ori          a4, s8, -1517
                  nop
                  ori          s11, a4, 1110
570:              xor          t6, a5, t1
                  add          s5, s7, s7
                  sltu         a7, t2, s0
                  srl          a5, sp, t6
574:              bltu         t0, gp, 575f
575:              sub          t2, s11, sp
                  lui          s7, 756577
                  nop
                  slti         zero, a1, -423
                  blt          t6, a3, 582f
                  slti         t0, s1, 1524
                  srai         t2, t5, 27
582:              beq          s10, a6, 601f
                  slt          s7, s11, a0
                  slti         a6, a0, -503
                  bgeu         t4, s10, 599f
                  bgeu         s3, s6, 601f
                  auipc        s0, 137209
                  bltu         t1, s2, 608f
                  sltu         sp, a6, gp
                  srli         t5, s5, 19
                  slli         s4, t3, 19
                  xori         s6, s8, 686
                  beq          a5, a6, 606f
                  auipc        a6, 381099
                  ori          a3, s0, 1249
                  srl          a4, s4, a5
                  bne          a6, s3, 603f
                  slti         s2, gp, 1937
599:              lui          s0, 550291
                  ori          a7, t6, 1633
601:              srl          a7, a6, t3
                  bltu         s1, t3, 614f
603:              nop
                  xori         s10, a5, 88
                  and          tp, ra, s0
606:              sub          t1, t2, t1
                  andi         s0, s6, -1541
608:              add          zero, t1, s8
                  xor          t4, s1, s1
                  or           tp, s2, s6
                  slti         gp, tp, -1622
                  bgeu         t5, a5, 618f
                  srli         a5, zero, 22
614:              nop
                  sub          gp, s7, t1
                  sltiu        a5, s9, 174
                  slti         a6, s2, 1562
618:              srl          gp, s9, a3
                  lui          s0, 860699
                  blt          t4, s6, 630f
                  srli         t1, a2, 20
                  bltu         s11, s9, 635f
                  beq          t5, a7, 624f
624:              add          a7, a0, sp
                  beq          t0, a2, 632f
                  slti         a7, a0, 1552
                  srl          sp, s2, zero
                  nop
                  lui          s11, 22116
630:              srli         a4, a6, 12
                  srli         sp, zero, 9
632:              srai         t1, a4, 9
                  ori          a2, s11, 1313
                  bne          s10, t2, 653f
635:              slli         a6, s10, 30
                  srl          s2, s3, a5
                  bge          t2, a6, 655f
                  sra          s6, t4, s4
                  sll          gp, s3, s2
                  slt          a7, ra, ra
                  xori         t1, t3, -1123
                  sltiu        s0, t6, -786
                  blt          t5, a4, 650f
                  xori         a3, s5, 350
                  bge          a7, t1, 651f
                  bgeu         a2, t4, 660f
                  ori          t2, a2, -1131
                  srl          tp, gp, t4
                  ori          s4, s0, 1247
650:              and          s6, gp, s9
651:              ori          s5, s4, 1360
                  sltiu        t1, s8, -1530
653:              or           s11, s7, a2
                  slti         t0, a6, 794
655:              slti         s7, s11, 1093
                  and          s6, s0, s8
                  auipc        s0, 842149
                  sra          s10, zero, a3
                  bge          t1, t3, 664f
660:              bge          gp, ra, 670f
                  sub          s6, s0, s11
                  bne          t2, s10, 665f
                  addi         s7, t0, -663
664:              srl          t3, t6, a6
665:              nop
                  srai         t5, s8, 28
                  srli         a2, s2, 30
                  bltu         a1, s4, 669f
669:              and          a5, a7, t0
670:              andi         s6, a2, 874
                  sll          a2, t1, s4
                  xor          t3, t3, s3
                  addi         s10, s6, 681
                  auipc        s6, 651320
                  srai         t3, t1, 16
                  and          sp, t3, s4
                  andi         a7, zero, 1727
                  lui          t6, 627333
                  sra          s9, t2, a7
                  bge          t2, t1, 693f
                  bge          s10, a1, 693f
                  blt          a1, zero, 702f
                  sll          s0, s1, t1
                  nop
                  sub          s1, s9, s2
                  bne          s8, a1, 703f
                  add          a7, t3, a3
                  blt          sp, gp, 691f
                  xor          a5, a6, t5
                  bne          s11, t6, 696f
691:              bge          s8, sp, 704f
                  slli         gp, a2, 5
693:              bgeu         s4, t5, 703f
                  bgeu         s7, s6, 708f
                  add          gp, gp, a0
696:              sra          s4, a2, s10
                  sltu         a6, t0, a3
                  or           s11, s4, a6
                  or           a4, t4, a4
                  slti         sp, t1, 470
                  slt          t2, s5, t0
702:              sra          a3, ra, t0
703:              srli         t5, s0, 15
704:              bgeu         s2, sp, 723f
                  nop
                  srli         zero, s11, 12
                  xori         t0, a0, 1383
708:              sub          zero, a6, s9
                  bgeu         a4, sp, 716f
                  nop
                  andi         t2, tp, -1876
                  andi         sp, a4, -1257
                  srli         s8, s0, 17
                  addi         t0, sp, -1661
                  add          ra, s10, s2
716:              and          sp, s7, s4
                  srli         t6, t0, 24
                  lui          a2, 991528
                  or           t2, a3, a0
                  and          t5, a3, s3
                  add          s7, a2, t5
                  addi         t1, zero, -1699
723:              or           t0, a5, t2
                  sll          s2, s1, s4
                  bge          s10, s9, 745f
                  auipc        a6, 687601
                  sll          ra, t3, s4
                  bltu         a5, a5, 746f
                  srli         t4, gp, 14
                  add          s9, s2, a0
                  lui          s7, 990090
                  and          gp, t0, s2
                  and          gp, zero, tp
                  bgeu         s3, t5, 741f
                  and          s4, s7, s7
                  add          gp, t1, s3
                  sltiu        t2, t1, 752
                  srai         a3, t2, 24
                  slli         t0, ra, 29
                  auipc        s5, 1036371
741:              srai         s4, s11, 17
                  and          a2, a5, sp
                  andi         t1, a5, 1283
                  addi         zero, s5, 562
745:              beq          t4, s2, 760f
746:              sltu         s7, s6, t0
                  sltu         a2, s5, s11
                  addi         s8, s10, 867
                  srli         s10, a2, 21
                  ori          s11, t2, -1265
                  srli         s4, t0, 6
                  blt          a4, t4, 762f
                  bne          sp, tp, 755f
                  add          sp, a5, t0
755:              and          a5, t1, gp
                  slt          t5, t4, s1
                  sltiu        sp, s11, -1487
                  blt          s8, s11, 772f
                  andi         s9, t5, -1200
760:              ori          t2, t0, 2014
                  nop
762:              auipc        t4, 151612
                  sra          t1, a2, a1
                  sltiu        s11, a5, -1086
                  blt          tp, s3, 779f
                  lui          a3, 554913
                  andi         s7, t2, 694
                  blt          sp, s9, 774f
                  blt          s10, s0, 775f
                  bge          s10, s0, 774f
                  and          s9, a6, s6
772:              beq          s4, s5, 788f
                  or           t1, s10, tp
774:              bge          s1, gp, 775f
775:              blt          a2, s7, 780f
                  addi         s10, s4, -410
                  ori          t3, zero, -784
                  addi         sp, s2, 62
779:              xori         ra, t0, 1054
780:              sltiu        t1, t2, -798
                  sra          sp, t0, a1
                  and          t4, s6, a3
                  xor          s0, s10, s9
                  auipc        t1, 326578
                  xor          a3, a1, s9
                  xori         ra, s3, 639
                  bge          ra, s6, 797f
788:              blt          a4, t6, 807f
                  sltiu        a5, zero, 896
                  sltiu        a3, s11, -1156
                  bgeu         a5, s10, 798f
                  sltiu        s6, t5, 420
                  beq          a0, t4, 800f
                  bltu         s11, a4, 804f
                  slt          t2, zero, tp
                  bltu         t4, s8, 810f
797:              slt          zero, s6, a0
798:              and          sp, t5, t3
                  beq          gp, a1, 814f
800:              or           tp, tp, t5
                  sub          s1, gp, s11
                  srli         a2, s5, 13
                  bne          s4, a7, 820f
804:              sltiu        s11, zero, -238
                  lui          gp, 234111
                  sll          t1, ra, sp
807:              xor          gp, t3, sp
                  xor          s11, a1, s5
                  sltiu        t6, s0, 1439
810:              bltu         tp, a1, 820f
                  slt          ra, s3, t5
                  srai         t2, s9, 2
                  or           s7, a3, gp
814:              blt          s3, s8, 822f
                  slt          s8, tp, t0
                  sll          sp, s2, s4
                  bge          s11, t1, 822f
                  srai         s7, s11, 21
                  add          t1, s8, s9
820:              sra          s8, s3, s0
                  srai         s6, a5, 28
822:              sltu         t3, t2, t2
                  nop
                  addi         s2, s6, -1574
                  srai         sp, t6, 21
                  lw           a7, 4(a1)
                  auipc        ra, 608335
                  addi         a1, a1, 64
                  addi         a3, a7, -312
                  lui          a2, 495400
1101:             addi x31, x17, 1
1101:             jalr x31, x31, 0
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
.word 0x13a69565, 0x31c7ee4d, 0x932b1ca4, 0x3dbd2d8a, 0x6897e5c7, 0xb9f516d0, 0xb630b15b, 0xe574be57
.word 0x62092d74, 0x81c3cc58, 0x0ff9aba7, 0x726b31ed, 0x90df7a08, 0xa4f7796d, 0xc20d9d59, 0xa8cc1610
.word 0xac96dec9, 0x51831cf0, 0x3c371c33, 0x7a1d3572, 0xd4f92ed2, 0x4030352d, 0x576b26c7, 0x8e1135b2
.word 0x11154383, 0x25af1b82, 0xf9cd5cbc, 0xb65c1cc9, 0xa02af78b, 0x35e301b9, 0x9a7702a1, 0x10f66042
.word 0x2ce428c1, 0xe80928a6, 0x26ce8a46, 0x06788201, 0xdc983247, 0xf74d4cc0, 0x8f17ac62, 0xdbaf52b7
.word 0x68b0072b, 0x455ce6c6, 0x6876c861, 0xc5982401, 0x90f22245, 0x086f48c0, 0xa1a0e0c1, 0x3a024f66
.word 0xf6a27aff, 0x97269de0, 0x5e690b4a, 0x500d508e, 0x85a3094d, 0x3986a1a7, 0x9116c8eb, 0xc762b5a3
.word 0xa4813dd4, 0x93bee60f, 0x0edc5c97, 0x9f2e6c80, 0x34bcc6a6, 0xbe8ae5fa, 0x093927af, 0xc2b6d491
.word 0x7b74b4c7, 0xe4139ef2, 0x984726ca, 0xe9a6908e, 0x6649289a, 0x91d403f3, 0x0b309773, 0x54fb3efc
.word 0xee0c4e8f, 0x0e1e7ca9, 0x076ec7a1, 0xec7b9649, 0xb78b7963, 0x1ef02249, 0xa79d45e6, 0x975551db
.word 0xb5df2ebd, 0x3c91a660, 0x5c30fbb7, 0xeecefaa7, 0x67c7fdf9, 0xa78cf4c3, 0x4ac25239, 0x3a9d91f6
.word 0xab4d16d6, 0x4552ab00, 0x59bbada8, 0xc9ee43fb, 0x6f61581a, 0x826b32b0, 0x817df712, 0x5a2602b3
.word 0x532a3486, 0x0a20cbc6, 0x8929fdd2, 0xc18a4d16, 0x8c186284, 0x11867f33, 0x0b88fadd, 0x7cc50978
.word 0x25cc5e40, 0xc780173c, 0x587053a0, 0x795fcfaf, 0x1dbaf81c, 0x3f3d15c0, 0x3adbf53c, 0x88c4f6c3
.word 0x74d4ac70, 0xe8387e01, 0x8965ee5b, 0x1712f168, 0x96ac43ec, 0xc01f6877, 0x83be9148, 0x9e5b700e
.word 0xe21d7673, 0xf03ddebd, 0x53ebf90c, 0x714c8b15, 0xdafe5b26, 0x1b1c5ebd, 0xf61743a2, 0x633a132f
.word 0xc20372b6, 0x41a651d3, 0x3c76d17d, 0xee2dc52a, 0xe4e2322b, 0x8c8a2f12, 0x83edcfea, 0x17ad6f6f
.word 0xf83abe24, 0x01bad117, 0x22e5104f, 0xe3a32373, 0x38de91f0, 0x6c295d11, 0xaa136113, 0xcdc2a7dd
.word 0xf7db56be, 0xef20a5e4, 0x42f5e99a, 0x5d2bb6d4, 0x38f39d1e, 0x775f9a67, 0xad9d49d6, 0xf7dc891c
.word 0x8f49a221, 0xa156586b, 0x3ae94169, 0xa2560be4, 0xa6ec7087, 0x9886b4be, 0xb67804a1, 0xfe8ad63b
.word 0x7ca7aea2, 0x0966bb2c, 0xe73ba2bd, 0xb0566984, 0x3284a709, 0xa41e0329, 0xd36450b3, 0x8d8c1011
.word 0xf976fefc, 0x1708f756, 0x531687a3, 0x51577012, 0x97969657, 0xba892505, 0x757eda68, 0x37d10374
.word 0x582bfac0, 0xd425df0e, 0x37528b20, 0x9bc6278b, 0xb17179b6, 0xa2e3a51a, 0xa73757a0, 0x177b709f
.word 0xf8c2e553, 0x48319da3, 0x87bd6087, 0xa54c6f20, 0xde10322c, 0xbd208f6c, 0xc2dbf3ee, 0x85c086da
.word 0xc3f0cc1e, 0xc1e62f3d, 0x9ae52741, 0x2bddf94c, 0x31e51499, 0x4e3f16dc, 0xd53ad07a, 0x2d1115c3
.word 0x1262abe0, 0x69317ffc, 0x3e427740, 0xdd590e68, 0x7a8272d7, 0x5b39f7ed, 0x1ee9a81f, 0x5a2df489
.word 0x10d12a87, 0x5fcdea9a, 0x8afb6da8, 0x476e4d6f, 0x531ac48c, 0xfe989879, 0xade3d104, 0x827949d5
.word 0x93981276, 0xd685b086, 0x59e8e5d9, 0xc2350163, 0xd0e6b708, 0xd4d66222, 0xdff976ed, 0xa38cdecd
.word 0x0d19a25c, 0xdd7e6a00, 0x0f0de3eb, 0x10f5fc08, 0x71516f3a, 0xbe75c8ab, 0x5c702869, 0x5866a88d
.word 0x1067e38d, 0x174880cb, 0x5bb4459e, 0x292f1bbb, 0x96167c4f, 0x39b333b5, 0x5bcdc2f2, 0xb999b683
.word 0xa779493f, 0x604645e1, 0xf850673c, 0x9fed2a95, 0x2694e0c2, 0x7cb7df95, 0x1eb8a791, 0x8b2fa272
.word 0xe071d778, 0xf2884b2f, 0x0b2d0b43, 0xc3baa6b2, 0xf87e65fa, 0xe53aff3c, 0x40f5877d, 0x63e1a71e
.word 0x3438dad5, 0x8d2121ac, 0x50548479, 0x93e09def, 0x50d0d3d0, 0x41b1180a, 0xec814630, 0x3eacefdc
.word 0xf09a7dc6, 0xfff2961d, 0x1ed5fa7a, 0x6cdbcc6a, 0xe1b4c3a5, 0x07df7640, 0x457e045e, 0xc1d606da
.word 0x24714ed9, 0xa366c316, 0xee0e6b92, 0x6c65001e, 0x59c67e93, 0xecc82c47, 0xad213376, 0x686cd444
.word 0x4e6d6e6a, 0xddc59e77, 0x4d17a630, 0x1398870a, 0x1ed3208c, 0x7c2a3a14, 0x50cef7b9, 0x63868a1a
.word 0xbf69f69f, 0xb839c86e, 0xa2390f95, 0xe799b68b, 0x76ec4bc3, 0x7b08b39c, 0xcd06e8d9, 0xf5b16c56
.word 0xc7286b8c, 0xe72014e7, 0xe9d3481a, 0x391dd0f6, 0x51c064b5, 0x89a3fe47, 0x2febeed7, 0x1233e456
.word 0xa3d62a04, 0xb02af3ac, 0xb9f7fb90, 0x90f30f5b, 0xc160cec2, 0xeb25f858, 0x786206e8, 0x64eac9df
.word 0x298cdaf7, 0x3499e5fe, 0xc9496da2, 0x9d285965, 0x0d049c2c, 0x86eb2da1, 0x2201ad5f, 0xf1ffc128
.word 0x86f46406, 0xbf129f27, 0x0a1e90ea, 0xcdab1f84, 0xd9bc6835, 0xf450f7ca, 0x9135753d, 0xc7cb23b7
.word 0x71aef20e, 0x3328f9bf, 0x6220d3c8, 0x3f6bef68, 0x501eb77f, 0xf582ccf2, 0x26bd349b, 0x694e7c74
.word 0xdb45c80d, 0x5d6f30c0, 0xcc55d6dc, 0x77528eb6, 0x6dd98e38, 0x5141ac98, 0xcd19af2d, 0xa7389308
.word 0x8d15aef2, 0xab92f115, 0xfe0ebecb, 0xfa9632bb, 0x498e1b27, 0xa7383290, 0x43cfb1a0, 0x252e7e07
.word 0xc6b31d7d, 0x39180259, 0xa3cf6fd2, 0x966db4e4, 0xc4a24863, 0x3413c833, 0xc034b183, 0x3fdf2885
.word 0x93574e88, 0x1cefa0b2, 0xf015020f, 0xcab3c399, 0xc4d96980, 0xbb38aa8e, 0x93d4c853, 0xb9e4a76b
.word 0x26b2cb8e, 0xe94b4b70, 0x3d5e64e7, 0xe032f8db, 0xcdbf2828, 0x8b7ec4ea, 0xf223f7a1, 0x9037edf1
.word 0x08ecefea, 0x8ea8e142, 0xcc94b301, 0x02d1007a, 0x3ac585fc, 0xb06bacff, 0xb383ed80, 0x227f40e0
.word 0x27304dcf, 0xcc2974fe, 0x0702c7b6, 0x8d663033, 0xe8870f93, 0x674bee50, 0x0572f531, 0xfaa89770
.word 0xe1d3cc94, 0xfdd11bb8, 0x89f9e622, 0xe2444a54, 0x9634ee19, 0x84b9eab0, 0xe190be39, 0x4f538f88
.word 0x4bc35a75, 0x5c0ca575, 0x603fed22, 0x4e482116, 0x41af99fd, 0xf4054306, 0x53daba3b, 0x639a48c0
.word 0x7661b597, 0xc20f5202, 0x74114416, 0x84e2a379, 0xa67ca1cd, 0xd2beac3c, 0xd33789d5, 0xf66e45e9
.word 0x93faa6d9, 0x93363d3a, 0x68c5a9fd, 0xb7ccb14f, 0x94315527, 0x9800d089, 0x21c9d1dc, 0xc8463fd8
.word 0x8f032d00, 0xcf0ee025, 0xb951471d, 0x05c13adb, 0xcbd1b257, 0xf2155820, 0x68209f1b, 0xb76b3c32
.word 0x6a3407be, 0x612caebd, 0xafb24f51, 0xd7ca3556, 0x57505c58, 0xa7fb4359, 0x58f3a4f5, 0x8487cb07
.word 0x2c08e5da, 0x7d8fc72e, 0xff80bd9a, 0xea52be9e, 0x4b7133d6, 0x321eed3f, 0x40051675, 0x665afac6
.word 0x112b9d23, 0x253a18e6, 0x452a2431, 0xcd7c37b8, 0x2e63e7fc, 0x67addc9b, 0xdab97145, 0x024f336c
.word 0x4fea57f7, 0xb7a99eb3, 0x21c229ad, 0x9b79bf23, 0xe1159480, 0x4f69eb40, 0xc8f0305a, 0xe0552867
.word 0x1a1242a9, 0xbdb5e0a6, 0xc768f889, 0x4804b39e, 0x59ddbed3, 0xc4ee7f2d, 0x61c542b2, 0xbf8d3b3c
.word 0x448f856d, 0x335d3d28, 0x59d1143c, 0xf38947ed, 0x01d196a0, 0x8fff89f5, 0x60814461, 0x8793687e
.word 0x08dd838e, 0xc47715cc, 0x62844fe4, 0x5ada1c7c, 0xe549856e, 0x45baac58, 0x41ac9327, 0x0e2ca46a
.word 0x9c2bb52e, 0x4e883910, 0x6a58c505, 0x73a8f5c0, 0xc4a4f79c, 0xcf2520ec, 0x8254a821, 0x42c10088
.word 0xcf8c0b99, 0xf9030860, 0x08b75229, 0xfe1d6c03
.section .region_1,"aw",@progbits;
region_1:
.word 0xaebf13c0, 0x06d6b4cb, 0x296a8a6c, 0xecddb175, 0xf26da88d, 0x4950c4a4, 0x982bb2cf, 0x381c3852
.word 0x425653e6, 0x44e35ad3, 0xad5839b9, 0x6f0aa8e3, 0x8316dcfb, 0x3cef6a81, 0xcc2f084d, 0xe529f9be
.word 0xd26b0a04, 0x4fb0f003, 0xc498bc6d, 0x45aba51a, 0x0631d017, 0x821fe811, 0xff048105, 0x991f2840
.word 0xe7a7a9c0, 0x18d44a1e, 0x5a846705, 0x49ca49ce, 0x052fe67f, 0xad380417, 0xd1ea2a6f, 0x6ee1f220
.word 0xcce083ae, 0xa52748a0, 0x2eef1292, 0x8ff67964, 0x132d0f76, 0x0598aac3, 0x42d92b76, 0x8f93e968
.word 0x223deafe, 0x9987328f, 0x23bccd75, 0x9d2de98d, 0x60aecd8b, 0xf3752169, 0x3cb68373, 0xd8e3197b
.word 0x3d267764, 0xf2239fde, 0x3a05de64, 0xaf0907b1, 0xfac229f8, 0x9d5ebdae, 0xef240fe8, 0xd14f4865
.word 0x3e125d60, 0x85adac8b, 0x2fe7c0f8, 0xda9f7c53, 0xfbc1d9f3, 0x54b283a3, 0x9a89b82c, 0xb98ff46e
.word 0x2cfef817, 0x5aee84c5, 0xdd464293, 0x841da72d, 0xc254194e, 0x0574e7d4, 0x9fe4d55f, 0x7826d336
.word 0x51f431b2, 0x3c4dadec, 0x8f2a3acf, 0x3c2fecaf, 0xfcd3ca11, 0x8c0792cd, 0xdf25263f, 0xd00bba8c
.word 0x3bba9f28, 0xc45e1e11, 0x7bd08c43, 0x66a00a06, 0x942ac4ab, 0x0861dfbb, 0x350632cb, 0x35fe8639
.word 0x8cff3ccf, 0xa90323b4, 0xef544dae, 0x0caf97b1, 0x878f36e8, 0x3cec0c83, 0xdc432492, 0x4725e027
.word 0xc321a8bd, 0x5b0fd1c7, 0xd208c9a0, 0x2ddc5979, 0x14d55dd6, 0x43519b71, 0xa7ac3bfe, 0xdf91e665
.word 0xf9e59f45, 0xad461ffa, 0x536958c5, 0xf1d928f3, 0xed4190c3, 0x172246a9, 0xa7656997, 0x755b9150
.word 0xb3ea97b9, 0x28b7ba03, 0x7a6aacc2, 0xe2373655, 0x72fb9b25, 0xd4c60799, 0x6cb64a1b, 0xa1ac6ea7
.word 0xa2838c99, 0x0fd668b5, 0x4416f50e, 0x533c4b4c, 0x3570cb4d, 0xfd8faf91, 0x52e0ccca, 0x7677413c
.word 0xd88ed96c, 0xad1d1a2e, 0xa995b3e7, 0xb86c6493, 0x9e9d9194, 0x64e43f29, 0x7374623d, 0xb5266120
.word 0x220c4e3d, 0x39d5c9c1, 0xd4920f8c, 0x1b08358d, 0x68c548ff, 0x836a1d51, 0x42eef400, 0x037d9089
.word 0xcdfcb0dc, 0x8ec08552, 0x4545c276, 0xf4110e42, 0x59a73c9d, 0xec752591, 0xc0033032, 0x735cc16a
.word 0x9d30a3bb, 0xe7dc0c6f, 0x299921c7, 0x8e6622d1, 0x74e24f48, 0xb2a6a6b5, 0x268fec5f, 0x959a47be
.word 0x4fedd6ac, 0xb59eae53, 0x7bfa130f, 0x0deefc07, 0xa4408026, 0xc35b4c9d, 0x6ccb02d4, 0x42d8f9e5
.word 0xe14e9c68, 0x7c219d51, 0xdf78bec8, 0x749ad87a, 0xe6fedb1a, 0xc7fdc895, 0xbdf03d35, 0x09988901
.word 0x230df1a7, 0xa71fc11f, 0x46e06540, 0x02895c2b, 0x31514a4c, 0xa21684ac, 0x2d038714, 0x5b019a33
.word 0xa4959eec, 0xe5d324ed, 0x54385979, 0x36069df7, 0xc81ccc4c, 0x7f8e4dec, 0xe3c56584, 0x3e7075fa
.word 0x879ee0c6, 0x124a096e, 0xdb1154ad, 0x681e3312, 0x7c074ad1, 0x4132d8b5, 0x1cebadf9, 0xa9eb63f9
.word 0xb78d8328, 0x2b18b844, 0xdcadb0a3, 0xc6009bbc, 0xa8234d5a, 0x1ddd67e7, 0x7b5ab4b4, 0x9c51ebcf
.word 0x5d50cbd5, 0x68b8c146, 0x4364e030, 0x6af86d94, 0xef6d2ecf, 0x684fb85d, 0xc842f88e, 0x09e8a7cc
.word 0xc7362daa, 0xeadc8185, 0xc9869b4e, 0x6cd38cf4, 0x380385ae, 0x0528333e, 0xe14f2369, 0x56edee26
.word 0x478d0531, 0xb3332621, 0xa7b0662e, 0x1b8ea7cc, 0xec6877cb, 0x51d3fee8, 0x5e306038, 0x357e4351
.word 0x884da5e2, 0x3640627d, 0x4485c75b, 0xcca4f216, 0xf4a1c30e, 0xf5cc9ffd, 0xfd864a41, 0x9d57c40c
.word 0xbbffad17, 0x5febdecc, 0xc1109a12, 0x0e00e4a7, 0x0596efdd, 0x50b68080, 0x9b6995a8, 0x6a257d7d
.word 0x7c7a9bcb, 0x0d47fafa, 0xc3454fdc, 0x67a30dca, 0xaf70718e, 0x3d3cbbca, 0xae254cff, 0xd30c09c8
.word 0x7f93bbb1, 0x2bd8a7e1, 0xbcd58f48, 0x42a69da4, 0xdf554375, 0x60e7859a, 0xcf19455e, 0x30482dcd
.word 0xd0e1d74c, 0x3c1e9c3c, 0x7bf15c23, 0x03fe149b, 0xa22c1e84, 0xa1354a89, 0x9c6da3ba, 0xf9cb8cdb
.word 0x70745c11, 0x87c39ebd, 0x564ed2ba, 0xccb458f4, 0x8ff32fe4, 0x77a6b1ce, 0x723d0754, 0x1b432ffc
.word 0x6a560a67, 0x46e81da5, 0xb41def23, 0xd674acb9, 0xe25aa7ea, 0x3ff32270, 0x341dbd20, 0xb2644b0a
.word 0x5c36eecf, 0xe8de8e50, 0x538d5b1d, 0x897bf32a, 0xc7a8ab05, 0xc6a90ad8, 0xd0334b95, 0x3462c40f
.word 0xdffc1d00, 0xda1d1155, 0x2cc33599, 0x159e250b, 0x0bc9bd32, 0x09843ced, 0x4f29b23b, 0x819f4602
.word 0xfd44c870, 0x9d94c5d8, 0xb186e630, 0xc603ec2b, 0xbe1d083b, 0x417ad22d, 0xf69a6412, 0xe9d26199
.word 0x3bdaa3f0, 0xed337c8a, 0xf69c276b, 0x18218342, 0x16dac048, 0xdfead940, 0xe7082d85, 0x65536b5d
.word 0xb6df40ed, 0x41384545, 0xdb390eef, 0x534eb170, 0x51486211, 0x2a29f9c9, 0xbc957d63, 0x6520cc16
.word 0xfabc39ed, 0xb55cc37d, 0xc005ca46, 0xe11161a7, 0xfb03eb98, 0x7164a91b, 0x87ac8281, 0x05180d61
.word 0xe6467bd2, 0xa29d8834, 0xd66997e2, 0x68ce7023, 0xd16d804a, 0x10198f16, 0xe81fd21d, 0x46b22b91
.word 0x44f514d9, 0x5df86e44, 0x6710faf4, 0xc530b0f0, 0x711a6b55, 0x1a590b96, 0x7fc136df, 0x6dbcaa9a
.word 0x0b6160a1, 0x9a94c0d1, 0x1eb68f5d, 0xae795410, 0x88f3640e, 0x356e8874, 0xcc922996, 0x5d18726e
.word 0xa03acbcb, 0x30391760, 0x938e7cbe, 0xcdb8a2ee, 0x66b86213, 0x2b23440e, 0x5be1c56d, 0x7ba80263
.word 0x44b1f1f8, 0x0bc4fb81, 0x19e50374, 0xc896a7bb, 0xf40806e5, 0x406a144e, 0xdf456741, 0xe6a1954f
.word 0x2fe5c6e1, 0x843d40e4, 0x296f1b5b, 0xd474afbf, 0x67977206, 0xefb615f5, 0xaed8332c, 0xc1e8f137
.word 0x5efc87fc, 0xa4822220, 0x580e4425, 0x5fc85732, 0x3b6b2069, 0x91d1a392, 0xe1935038, 0x808fb44a
.word 0x2bd94207, 0x35087fdc, 0x80d266a6, 0xbf6ace81, 0x30483930, 0x9c4d2c6e, 0xb42a5ac0, 0x55448301
.word 0x08f38fe5, 0x81c1b58a, 0x4e3ea40e, 0x74276579, 0x9d8ebecb, 0xdb4fdd22, 0x75137e27, 0x3a8a7093
.word 0xe39bd671, 0xa3364e40, 0xcaa95587, 0x7f826668, 0xcfec0580, 0x5204a6b2, 0x62a587eb, 0x6fa5a545
.word 0x5c6a25df, 0x3e7a060f, 0xa96f28e1, 0x30a0601c, 0x2c133313, 0x3f9d0c89, 0x90d65e0e, 0x00ea1d72
.word 0x6302339b, 0xc83657a4, 0xe95574ff, 0x2f2aa83f, 0x68d76e77, 0xc0127b5e, 0x4d156d38, 0xac0d34c8
.word 0xcbe9655c, 0xa236ab78, 0x75dfe5a5, 0x962eb4d3, 0xf6d87356, 0xe0552a0d, 0x371e4dd3, 0x091baa4e
.word 0xa17193ef, 0xe927e8fb, 0x981422cc, 0x65533ac8, 0x49c14911, 0x57c0c2a6, 0xd8ede420, 0xf9813036
.word 0x3bb7ce65, 0x5254bed7, 0xe08d875b, 0xc9adfdce, 0xeb01530b, 0x056e14e3, 0x352c311e, 0xf3213e37
.word 0x5ba5d9f3, 0x2b267d7a, 0xb01839fa, 0xee61365f, 0xdce78828, 0x0982680a, 0xa6c3daa0, 0xf9b30e73
.word 0x117b3bd5, 0xb81213f0, 0x01c43452, 0x805ce5ee, 0x3aa2c4a0, 0x42ad40be, 0x29511e1a, 0x755caa31
.word 0xad1d1c5b, 0xc5a6d373, 0xe030be28, 0xefb4f3e1, 0x9e10fb08, 0xb6d77ad9, 0x16f62584, 0x37540531
.word 0x2ffd9e59, 0xe6f66d54, 0x21e9fdf3, 0xaddf5988, 0x7d0e47ec, 0xc7e6a4f2, 0xa7226b05, 0x32b4c6fb
.word 0x7534b716, 0x79723524, 0x657ea6f8, 0xf4c9f8e7, 0xc2544cc2, 0x3c1177e7, 0x08c3f150, 0xa1a44ffe
.word 0x1f78d24c, 0x2e603509, 0xfb789886, 0x0f240bf6
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x10, x11, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x7, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x7, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x7, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x7, x16, ecall_handler
                  li x16, 0x1
                  beq x7, x16, instr_fault_handler
                  li x16, 0x5
                  beq x7, x16, load_fault_handler
                  li x16, 0x7
                  beq x7, x16, store_fault_handler
                  li x16, 0xc
                  beq x7, x16, pt_fault_handler
                  li x16, 0xd
                  beq x7, x16, pt_fault_handler
                  li x16, 0xf
                  beq x7, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
