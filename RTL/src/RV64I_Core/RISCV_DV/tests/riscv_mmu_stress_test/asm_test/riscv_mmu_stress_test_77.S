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
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0xc9ef94b4
                  li x1, 0xf4e061eb
                  li x2, 0xf2cc0ef8
                  li x3, 0x0
                  li x4, 0x7fb6902b
                  li x5, 0x80000000
                  li x6, 0xc
                  li x7, 0x7d1dce57
                  li x8, 0x6b3e6dc8
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x0
                  li x13, 0xf703179
                  li x14, 0x2
                  li x15, 0x80000000
                  li x16, 0xf
                  li x17, 0xc0b73707
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x5e5da5a9
                  li x22, 0x80000000
                  li x23, 0x3
                  li x25, 0x1
                  li x26, 0x80000000
                  li x27, 0x1
                  li x28, 0xa
                  li x29, 0xe
                  li x30, 0xf60d9d8f
                  li x31, 0x0
                  la x12, user_stack_end
main:             sltu         s6, s6, zero
                  nop
                  sll          t4, ra, zero
                  sltu         a6, a2, s0
                  la           s9, sub_1
                  ori          s1, a1, -895
                  slli         gp, s2, 6
                  srl          s5, t2, s3
                  srai         a1, s7, 22
                  addi         s9, s9, 827
                  slti         a0, s0, -701
main_j2:          jalr         a7, s9, -826 #jump main -> sub_1
                  la           sp, region_1+985 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a5, 9(sp)
                  sll          s10, a3, sp
                  xori         a7, s11, -470
                  sb           a7, 2(sp)
                  and          t4, s7, a3
                  lbu          t4, 2(sp)
                  sra          s1, zero, s4
                  lb           tp, -5(sp)
                  or           t2, s3, s6
                  or           t1, t4, gp
                  sh           t4, 7(sp)
                  lbu          tp, 4(sp)
                  or           a1, s10, s1
                  lbu          t4, -6(sp)
                  lb           s4, -6(sp)
                  lbu          a0, 5(sp)
                  lbu          s6, -1(sp)
                  sb           sp, -8(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_0+775 #start load_store_instr_stream_1
                  la           a5, region_0+1011 #start load_store_instr_stream_0
                  sh           tp, -77(a5)
                  sb           sp, -172(a7)
                  lhu          a1, -35(a7)
                  lb           a1, -102(a7)
                  lb           t3, 88(a5)
                  sb           s7, 44(a7)
                  lhu          t4, -45(a7)
                  lb           gp, 43(a5)
                  lh           s11, -91(a5)
                  lb           t1, -162(a7)
                  lw           s0, -171(a5)
                  sb           zero, 22(a5)
                  sh           a1, 37(a7)
                  lbu          s4, -40(a5)
                  lb           tp, 142(a7)
                  lh           s11, 187(a7) #end load_store_instr_stream_1
                  sb           s11, -118(a5) #end load_store_instr_stream_0
                  la           t1, region_0+48 #start riscv_load_store_rand_instr_stream_0
                  addi         sp, a5, 1320
                  lbu          gp, 1547(t1)
                  sb           a1, 729(t1)
                  lb           s4, 1041(t1)
                  sb           s3, 25(t1)
                  sw           a5, 828(t1)
                  ori          t6, s10, -69
                  sb           ra, 1228(t1)
                  lb           gp, 797(t1)
                  xor          s3, s5, s1
                  lb           s0, 1707(t1)
                  lbu          s2, 1369(t1)
                  lbu          t4, 1259(t1)
                  add          a1, s9, zero
                  lb           s2, 127(t1)
                  lbu          s4, 1051(t1)
                  auipc        s6, 991866
                  add          ra, t5, a5
                  lh           s11, 12(t1)
                  and          s1, ra, s7
                  lb           s10, 1471(t1)
                  auipc        a6, 757117
                  lb           s9, 1722(t1)
                  sb           tp, 125(t1)
                  sb           a7, 1555(t1)
                  sb           s8, 763(t1)
                  lb           s3, 1702(t1)
                  slti         s10, t5, -1347
                  srli         t6, a5, 19
                  srai         s1, s2, 6
                  lw           gp, 1308(t1)
                  lbu          s11, 1314(t1)
                  sltu         a1, s6, zero
                  slti         a4, a0, -1118
                  xor          s1, s1, s1
                  lb           t0, 1653(t1)
                  add          s5, s7, a6
                  slli         tp, gp, 17
                  srl          s2, s6, a2
                  lb           t0, 1551(t1)
                  lhu          t6, 1684(t1)
                  sltiu        s7, a4, -1
                  lb           s3, 1813(t1)
                  lh           s0, 542(t1)
                  srli         s10, zero, 1
                  lbu          s10, 631(t1)
                  lhu          s11, 1416(t1) #end riscv_load_store_rand_instr_stream_0
                  blt          t2, s4, 20f
                  bne          s1, s4, 10f
                  slli         s7, a4, 9
                  add          zero, s6, a0
                  srl          t0, a1, s1
                  xor          sp, s2, t1
                  lui          t6, 566301
                  sltiu        t2, t2, 226
                  addi         zero, a5, -406
                  addi         a1, t3, -1731
10:               xor          ra, t0, s7
                  addi         s10, s11, 1342
                  srai         s11, t1, 10
                  bge          gp, s6, 33f
                  slli         s5, a6, 21
                  bltu         a7, a1, 28f
                  lui          t6, 137281
                  sub          a7, zero, s5
                  and          zero, t3, t0
                  nop
20:               sra          a1, s10, s8
                  srai         s1, s10, 0
                  beq          a3, ra, 38f
                  and          s4, s9, s1
                  add          t0, a3, s6
                  bge          t1, s11, 42f
                  slt          a4, s5, s7
                  xori         s4, s10, -1699
28:               ori          t0, a3, 591
                  ori          a5, a1, 2028
                  sll          sp, s3, t5
                  nop
                  auipc        s10, 149090
33:               or           s6, sp, s8
                  sltu         zero, a4, t0
                  bgeu         s3, zero, 37f
                  srli         ra, s5, 22
37:               srli         ra, a0, 6
38:               and          tp, a5, s0
                  xor          a4, ra, a6
                  lui          a5, 522066
                  srai         a7, a6, 12
42:               sra          a7, s3, a7
                  srai         s1, a0, 7
                  la           s6, sub_1
                  sra          s11, t3, s2
                  srai         tp, a0, 0
                  addi         s6, s6, -446
                  and          a7, a0, t1
                  srl          s9, t1, a3
                  slli         s4, s4, 0
                  bne          sp, tp, main_j1 #branch to jump instr
                  sub          s7, a2, t6
                  srl          t4, t6, sp
main_j1:          jalr         a7, s6, 446 #jump main -> sub_1
                  sltiu        t3, a0, 2002
                  xori         s1, gp, 216
                  sll          ra, s0, t6
                  slti         t5, ra, 1510
                  andi         a5, a2, -935
                  xor          s1, ra, a2
                  add          s9, zero, s0
                  bltu         a1, s0, 63f
                  nop
                  andi         s1, s1, -1396
                  addi         s0, a6, 1040
                  bltu         t0, t0, 62f
                  sltiu        t6, s11, 1058
                  sra          s1, s10, a1
                  xori         a7, a2, -1481
                  sll          t5, zero, a5
                  or           a7, t3, t2
                  xor          a6, t1, ra
62:               sltiu        t6, s3, 1278
63:               slli         a7, t5, 8
                  and          s6, gp, s3
                  sll          t6, s6, a6
                  beq          s8, t4, 83f
                  srli         tp, s9, 23
                  sltu         a4, s2, a4
                  beq          s9, s0, 88f
                  bge          s4, a6, 90f
                  srli         a0, t0, 0
                  andi         zero, s0, 1971
                  nop
                  xor          t4, s3, s7
                  or           a6, s2, s1
                  sll          s9, t4, a5
                  sra          a7, t5, t2
                  xor          t4, sp, t5
                  bltu         s7, s5, 96f
                  srli         s10, s3, 31
                  xor          s5, a0, s11
                  ori          s7, a4, 1288
83:               andi         s9, zero, -1194
                  auipc        t3, 1031059
                  xori         s7, s1, 44
                  xor          sp, t0, s10
                  auipc        a4, 52067
88:               lui          t4, 360756
                  xor          s7, s3, t0
90:               srai         zero, t1, 14
                  ori          gp, s10, 45
                  blt          zero, t4, 95f
                  xor          a6, s9, s4
                  sltu         s9, s1, s10
95:               sll          zero, t5, s1
96:               sltu         s9, a5, a4
                  addi         tp, t6, -832
                  bge          t1, t4, 105f
                  ori          s4, a3, -45
                  beq          s11, s10, 105f
                  lui          a4, 593233
                  bne          a7, t6, 104f
                  or           s3, t0, t0
104:              bne          ra, a7, 105f
105:              andi         t2, s3, 1359
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a2, a2, -24
                  or           a0, s10, t5
                  auipc        a4, 472475
                  sw           a7, 4(a2)
                  xor          s6, a3, a2
                  and          s9, s0, t1
                  lui          s10, 466401
                  la           t0, sub_2
                  sltu         s2, s5, a6
                  sub          s11, s0, gp
                  addi         t0, t0, 435
                  addi         s10, a0, 716
                  or           a4, s8, s11
                  bne          s11, a3, sub_1_j3 #branch to jump instr
                  srl          a5, sp, a1
sub_1_j3:         jalr         a7, t0, -434 #jump sub_1 -> sub_2
                  sltu         s10, t2, a0
                  slt          s4, t3, sp
                  nop
                  andi         sp, t5, -1091
                  slt          a5, s3, t1
                  auipc        a4, 738200
                  srl          s2, t2, s4
                  or           zero, s8, t0
                  slt          s0, s9, s0
                  auipc        s10, 79537
                  nop
                  sub          a1, s4, s11
                  blt          s4, a4, 21f
                  lui          s1, 252467
                  beq          t5, ra, 34f
                  xori         s11, sp, 1298
                  sltiu        s6, a4, -356
                  bltu         t3, a7, 21f
                  sub          ra, s1, a2
                  or           tp, gp, s4
                  slti         t4, t4, -1932
21:               sll          gp, s9, a5
                  sra          t5, a7, a5
                  bne          a6, s0, 29f
                  beq          a7, tp, 25f
25:               slti         s4, s7, -333
                  add          zero, a4, a7
                  srai         s11, s5, 23
                  slli         tp, s4, 21
29:               srai         s5, s8, 16
                  bge          a4, t5, 44f
                  xor          t6, s0, t5
                  sub          s7, zero, t4
                  and          a7, t6, s3
34:               addi         gp, a0, 131
                  and          tp, tp, a5
                  xori         s2, zero, -620
                  ori          a4, s8, 152
                  and          t3, a0, a6
                  slt          s4, a6, a4
                  ori          s3, a4, -551
                  sll          t2, s10, s7
                  sra          s9, a3, a4
                  bgeu         s1, s6, 57f
44:               andi         s10, tp, 770
                  nop
                  lui          a0, 739236
                  nop
                  beq          s8, t4, 60f
                  bltu         t0, zero, 62f
                  sltiu        a7, a0, 248
                  nop
                  bne          gp, ra, 62f
                  slli         a0, gp, 2
                  srli         sp, a7, 26
                  xor          t5, tp, tp
                  nop
57:               nop
                  sll          a6, a0, t6
                  addi         t0, a3, 1593
60:               and          ra, tp, s1
                  beq          t5, s4, 62f
62:               auipc        s7, 550396
                  lw           a7, 4(a2)
                  addi         a2, a2, 24
                  srl          s2, t1, a1
                  xor          s0, s0, s2
                  andi         s1, s7, 114
84:               addi x10, x17, 1
84:               jalr x10, x10, 0
sub_2:            lui          t3, 991231
                  bltu         t1, a7, sub_2_stack_p
                  sltu         a4, t2, a4
                  sra          t4, s5, s0
                  sra          s10, s1, a3
                  srai         a1, a3, 0
sub_2_stack_p:    addi         a2, a2, -32
                  sw           a7, 4(a2)
                  srli         a0, s3, 22
                  nop
                  ori          s5, s2, -853
                  auipc        ra, 721434
                  andi         t6, s6, 1195
                  la           sp, region_1+1707 #start riscv_load_store_hazard_instr_stream_0
                  lb           gp, 121(sp)
                  lh           a6, 121(sp)
                  sh           t3, 121(sp)
                  lbu          s3, 254(sp)
                  lb           t0, 254(sp)
                  sb           a1, 254(sp)
                  lbu          s6, -70(sp)
                  lbu          t6, -70(sp)
                  xor          a4, a7, s0
                  lb           s4, -70(sp)
                  ori          a5, s6, 691
                  sb           a5, 254(sp)
                  lb           t0, 254(sp)
                  lb           t4, 254(sp)
                  lb           s9, 254(sp)
                  lbu          t4, 254(sp)
                  sb           s10, -117(sp)
                  lb           a6, -117(sp)
                  lb           a4, -256(sp)
                  lbu          s6, -256(sp)
                  xori         t6, a3, 614
                  sb           s2, -256(sp)
                  sb           a3, -256(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+697 #start riscv_load_store_hazard_instr_stream_4
                  sb           s5, 4(sp)
                  auipc        a1, 48384
                  lbu          t6, 4(sp)
                  lb           t1, 4(sp)
                  sb           a3, 4(sp)
                  lb           s6, 4(sp)
                  lbu          s7, 4(sp)
                  xori         ra, s10, 1012
                  lbu          s4, 4(sp)
                  lb           tp, 4(sp)
                  lbu          t5, 4(sp)
                  sb           t6, 4(sp)
                  sb           t0, 4(sp)
                  lb           s9, 4(sp)
                  lb           s9, 4(sp)
                  lbu          a1, 4(sp)
                  sb           t0, 4(sp)
                  sb           t5, 4(sp)
                  sb           gp, 4(sp)
                  sb           s10, 4(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           t3, region_0+1194 #start load_store_instr_stream_1
                  la           s0, region_0+1847 #start load_store_instr_stream_2
                  sb           sp, -5(s0)
                  la           a5, region_0+1047 #start load_store_instr_stream_0
                  lb           zero, -765(t3)
                  lhu          t1, 24(t3)
                  sb           tp, -48(a5)
                  sh           a6, -5(s0)
                  lbu          t4, 797(t3)
                  sb           gp, 6(s0)
                  lh           s3, -1012(t3)
                  lb           s10, -14(s0)
                  sb           s1, -16(s0)
                  lbu          s6, -187(t3)
                  lbu          a7, -13(a5)
                  lw           s9, -11(s0)
                  sh           a6, 406(t3)
                  lb           s1, -663(t3)
                  lh           a4, -13(s0)
                  lhu          a0, 9(a5)
                  lb           s2, -10(s0)
                  sh           a5, 27(a5)
                  lbu          zero, 2(s0)
                  sb           a1, -6(t3) #end load_store_instr_stream_1
                  lb           t1, -4(s0) #end load_store_instr_stream_2
                  sh           a0, 51(a5) #end load_store_instr_stream_0
                  la           a4, region_1+663 #start riscv_load_store_hazard_instr_stream_2
                  lb           s6, -318(a4)
                  lb           s7, -112(a4)
                  nop
                  sb           t1, 46(a4)
                  lh           ra, -453(a4)
                  lbu          s3, -453(a4)
                  lbu          s9, 450(a4)
                  sub          t4, a0, a3
                  sra          s11, gp, t0
                  lb           gp, 346(a4)
                  sb           t1, 346(a4)
                  sb           t0, -446(a4)
                  lb           s5, 792(a4)
                  andi         a7, zero, 452
                  lb           tp, 724(a4)
                  xor          s11, s3, s5
                  lbu          t4, 12(a4)
                  sb           t2, 12(a4)
                  lb           t5, 758(a4)
                  sb           s2, 696(a4)
                  lb           s6, 172(a4)
                  sltu         s2, t6, ra
                  lbu          a7, 172(a4)
                  lbu          zero, 326(a4) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1929 #start riscv_load_store_rand_instr_stream_0
                  lh           gp, -401(sp)
                  lbu          zero, -1018(sp)
                  srl          t4, tp, s11
                  lbu          t5, -452(sp)
                  sltu         s5, a4, a5
                  sw           t6, -1109(sp)
                  xori         s11, s9, -969
                  sh           s5, -5(sp)
                  lbu          s9, 6(sp)
                  addi         a7, t2, -2025
                  lbu          s9, -1839(sp)
                  lbu          s9, -1855(sp)
                  sb           t0, -1323(sp)
                  lhu          s6, -833(sp)
                  lbu          a0, -1522(sp)
                  lhu          s6, -823(sp)
                  sh           a2, -1791(sp)
                  xor          ra, s10, s9
                  sh           t4, -1375(sp)
                  lhu          s2, -805(sp)
                  xori         a1, s9, -275
                  lbu          a4, 22(sp)
                  sb           t1, -1787(sp)
                  ori          s7, t3, 1866
                  lw           s1, -721(sp)
                  sh           a1, -1747(sp)
                  lhu          s5, 21(sp)
                  and          s7, s10, s3
                  lb           zero, -558(sp)
                  sh           s8, -465(sp)
                  lb           s1, -246(sp)
                  sra          s3, s7, ra
                  auipc        ra, 107382
                  lui          t6, 898613
                  lbu          a0, -1759(sp)
                  sll          ra, a0, s8
                  sb           s4, -1212(sp)
                  lbu          ra, -1565(sp)
                  auipc        t2, 574017
                  lb           s2, -832(sp)
                  lbu          zero, -1440(sp)
                  lh           zero, -1563(sp)
                  sb           s8, -921(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+888 #start riscv_load_store_hazard_instr_stream_1
                  slti         s5, a4, 60
                  lbu          sp, -11(a5)
                  sb           gp, -11(a5)
                  lb           a6, -11(a5)
                  lb           t5, -11(a5)
                  sb           gp, -11(a5)
                  lb           a6, -11(a5)
                  lbu          s5, -11(a5)
                  lb           ra, -11(a5)
                  lbu          s10, -11(a5)
                  lb           a1, -11(a5)
                  sb           t6, -11(a5) #end riscv_load_store_hazard_instr_stream_1
                  la           s9, region_0+121 #start load_store_instr_stream_1
                  la           s10, region_0+953 #start load_store_instr_stream_2
                  lh           t1, 237(s9)
                  la           a4, region_0+80 #start load_store_instr_stream_0
                  sh           s1, -79(s10)
                  sh           a1, 201(s9)
                  sb           t6, 137(a4)
                  sb           a1, 42(s9)
                  lb           a1, -215(s10)
                  lw           zero, -173(s10)
                  sb           sp, -25(a4)
                  lbu          t2, -130(s10)
                  lh           a5, -7(s9)
                  sb           s10, -39(a4)
                  lh           s11, 118(a4)
                  lw           a6, -73(s9)
                  lbu          zero, 193(s9)
                  lb           a0, 58(s10) #end load_store_instr_stream_2
                  lb           s11, 199(a4)
                  lb           s6, 50(s9)
                  lbu          sp, 118(s9)
                  sb           zero, 52(s9)
                  sb           t6, 96(s9) #end load_store_instr_stream_1
                  lbu          a6, 243(a4)
                  lhu          a7, 4(a4) #end load_store_instr_stream_0
                  la           sp, region_1+289 #start riscv_load_store_rand_instr_stream_3
                  sub          s10, ra, a7
                  add          a0, s8, t4
                  auipc        s2, 466084
                  sltiu        t5, s8, 495
                  add          t0, gp, s7
                  slli         t0, t4, 5
                  andi         s9, s3, -1309
                  lb           s1, -19(sp)
                  lb           a4, 905(sp)
                  lb           t4, 636(sp)
                  xor          s0, s5, s8
                  lbu          a5, 563(sp)
                  add          s0, s5, s10
                  sub          s5, ra, zero
                  sra          s0, t1, a1
                  lbu          t6, 36(sp)
                  xor          s0, tp, s0
                  slli         s7, gp, 3
                  lbu          a0, 188(sp)
                  and          t1, s7, a2
                  sll          a4, t0, t4
                  xor          t0, a0, s8
                  lh           t3, -63(sp)
                  lb           t3, 464(sp)
                  xor          s0, s5, a5
                  sh           s5, 17(sp)
                  sll          tp, a0, s8
                  lui          t5, 106446
                  slt          a6, t1, s6
                  sll          s7, s2, s6
                  sb           s9, -66(sp)
                  ori          a6, t5, 1321
                  lb           s10, 50(sp)
                  sub          s9, s4, t4
                  lui          s6, 730269
                  sltu         s1, a0, t4
                  slti         a5, s8, 1012
                  lhu          s4, 811(sp)
                  or           a5, a2, t0
                  xori         s5, t1, -1731
                  addi         a1, a7, -1713
                  sra          a7, t6, t2
                  sb           tp, 146(sp)
                  lbu          s3, 772(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+418 #start riscv_load_store_hazard_instr_stream_6
                  sb           s3, 3(sp)
                  lb           a0, 3(sp)
                  or           a7, ra, t5
                  sltiu        s3, s5, 345
                  andi         s11, sp, 1904
                  lhu          a6, 10(sp)
                  sb           s4, -5(sp)
                  lbu          t0, -5(sp)
                  lb           s7, -7(sp)
                  sb           a5, -7(sp)
                  sb           s1, -7(sp)
                  lbu          t3, -7(sp)
                  lb           gp, 2(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           t2, region_0+1198 #start riscv_load_store_rand_instr_stream_7
                  sb           t1, -8(t2)
                  xor          s6, t2, s8
                  slt          a7, a4, t1
                  sltiu        s0, s11, -1320
                  lbu          t0, 160(t2)
                  lbu          t0, 27(t2)
                  lbu          s5, 83(t2)
                  add          tp, gp, s11
                  slti         t3, s8, -1732
                  lw           s9, -182(t2)
                  lh           t5, 234(t2)
                  lb           a7, -48(t2)
                  srl          a0, tp, ra
                  xor          a5, s4, t2
                  sltiu        gp, t5, 528
                  lbu          sp, -235(t2)
                  sra          s5, ra, s4
                  sh           a0, 138(t2)
                  lhu          t4, -100(t2)
                  sw           gp, 86(t2)
                  srli         t3, s0, 28
                  sb           a5, -131(t2)
                  lb           ra, 237(t2)
                  lui          t4, 671780
                  lb           s4, -169(t2) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1629 #start riscv_load_store_rand_instr_stream_4
                  lb           ra, -162(sp)
                  add          zero, a6, tp
                  srl          a0, s8, s1
                  slt          a5, tp, s0
                  sltiu        tp, s9, 1077
                  and          ra, a4, t3
                  srl          s10, s0, a4
                  lb           a1, 97(sp)
                  sh           s7, 157(sp)
                  nop
                  lb           a4, 18(sp)
                  nop
                  sb           s4, -195(sp)
                  lui          s9, 267831
                  addi         gp, a5, 1389
                  slti         s0, s1, 281
                  lui          t2, 321182
                  lb           a6, -174(sp)
                  lhu          s0, 207(sp)
                  lb           s0, 108(sp)
                  srl          s5, gp, a5
                  sh           s1, 181(sp)
                  addi         t4, s5, -1173
                  sb           ra, -196(sp)
                  sb           tp, -240(sp)
                  xor          a5, s11, s4
                  lhu          s0, -111(sp)
                  sb           s0, -111(sp)
                  lbu          t5, 250(sp)
                  auipc        t4, 1004704
                  sb           s8, 245(sp)
                  sb           s4, 137(sp)
                  srli         s9, s3, 18
                  sltiu        t0, s7, -282
                  lb           a5, 254(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_1+1969 #start load_store_instr_stream_2
                  la           t4, region_1+1506 #start load_store_instr_stream_1
                  la           a5, region_1+414 #start load_store_instr_stream_3
                  lh           s7, -252(t4)
                  lbu          a1, -8(s9)
                  la           s4, region_1+95 #start load_store_instr_stream_0
                  lbu          t6, 1119(a5)
                  lb           gp, 731(a5)
                  sb           tp, 22(s9)
                  lw           ra, 14(t4)
                  lhu          tp, -19(s9)
                  sb           a2, 12(s4)
                  lb           gp, 1261(a5)
                  sb           s10, 13(s4)
                  lbu          tp, -145(t4)
                  lbu          s10, -56(s9)
                  lbu          ra, 243(a5)
                  lbu          a7, -16(s4)
                  lb           sp, -161(t4)
                  lb           a0, -46(s9)
                  lh           s3, 370(a5)
                  sb           ra, 8(s9)
                  lhu          s10, -11(s4)
                  lb           a6, 1131(a5)
                  lh           zero, 28(a5)
                  sh           s2, 88(t4) #end load_store_instr_stream_1
                  lbu          s0, 5(s4)
                  lb           s2, 1197(a5) #end load_store_instr_stream_3
                  lb           s11, -21(s9) #end load_store_instr_stream_2
                  lbu          s5, -1(s4)
                  sb           t1, -5(s4)
                  lw           t1, -11(s4) #end load_store_instr_stream_0
                  la           sp, region_0+401 #start riscv_load_store_hazard_instr_stream_5
                  sb           a0, -94(sp)
                  lui          t5, 852920
                  lb           s0, -59(sp)
                  lbu          s9, 175(sp)
                  sb           s10, 175(sp)
                  sb           a3, 175(sp)
                  lw           zero, 175(sp)
                  sb           t0, -151(sp)
                  sb           t5, -151(sp)
                  sb           s11, -7(sp)
                  sll          a4, s4, a3
                  slt          s9, t0, a5
                  lb           s1, -7(sp)
                  lbu          a0, -7(sp)
                  lh           s7, -7(sp)
                  lhu          s2, -7(sp)
                  lh           tp, -7(sp)
                  sh           s0, -7(sp)
                  lw           s5, 31(sp)
                  slti         t1, s4, 879
                  sltu         t5, a7, t2
                  sb           gp, 31(sp)
                  lb           s5, -104(sp)
                  lb           s10, -104(sp)
                  lui          s4, 367023
                  sb           a3, 71(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           s1, region_1+520 #start load_store_instr_stream_0
                  la           t1, region_1+327 #start load_store_instr_stream_2
                  lh           a6, -10(s1)
                  la           t6, region_1+1033 #start load_store_instr_stream_1
                  lb           sp, -220(t1)
                  lbu          a0, 15(s1)
                  lbu          s7, -5(s1)
                  sb           t0, 12(t6)
                  lbu          t3, 1650(t1)
                  sh           a6, 0(s1)
                  sb           s5, 1304(t1)
                  lhu          a1, 11(t6)
                  lbu          s4, 11(t6)
                  lb           s10, 5(s1)
                  lbu          t4, 13(t6)
                  lh           s6, 731(t1)
                  sh           s1, 99(t1)
                  lbu          s3, 13(s1)
                  lbu          gp, 1189(t1) #end load_store_instr_stream_2
                  sb           tp, -14(t6) #end load_store_instr_stream_1
                  lb           s2, -9(s1)
                  lbu          s2, 1(s1) #end load_store_instr_stream_0
                  la           t2, region_0+1672 #start load_store_instr_stream_3
                  la           s4, region_0+433 #start load_store_instr_stream_4
                  la           a0, region_0+1396 #start load_store_instr_stream_1
                  lhu          s0, 1097(s4)
                  la           s10, region_0+1316 #start load_store_instr_stream_2
                  lbu          s0, -50(s4)
                  sb           zero, 9(s10)
                  la           ra, region_0+943 #start load_store_instr_stream_0
                  sh           s4, -12(t2)
                  sh           tp, -283(ra)
                  sh           t0, -16(a0)
                  lb           s5, 209(a0)
                  sb           zero, 0(t2)
                  lw           s3, 893(ra)
                  sb           ra, -3(s10)
                  lh           t5, -2(t2)
                  lb           s9, -8(t2)
                  lh           a5, 14(s10)
                  sb           t6, 3(a0)
                  lb           s11, -146(ra)
                  lb           a5, 12(t2)
                  lh           s5, -12(t2)
                  lbu          s2, -864(ra)
                  lbu          s9, 22(ra)
                  lbu          a6, -207(a0)
                  lb           s1, -31(s10)
                  sb           s7, 113(a0)
                  lh           gp, -6(t2)
                  lb           a1, 1(t2)
                  lh           t0, 30(s10)
                  sw           t0, -309(s4)
                  sb           a5, -244(ra)
                  lb           a5, -43(s10) #end load_store_instr_stream_2
                  lb           s0, -864(ra)
                  sb           t6, 281(s4)
                  lbu          s11, 79(a0)
                  lhu          a5, 214(a0) #end load_store_instr_stream_1
                  lbu          t0, -11(t2) #end load_store_instr_stream_3
                  lb           gp, 1484(s4) #end load_store_instr_stream_4
                  lw           s3, 49(ra) #end load_store_instr_stream_0
                  la           s6, region_1+1865 #start riscv_load_store_rand_instr_stream_1
                  xori         t5, t5, -29
                  ori          t4, s10, -1474
                  srl          t0, a4, t5
                  lhu          t6, 63(s6)
                  srl          s2, ra, t1
                  slti         s7, t3, -1878
                  lhu          t3, -31(s6)
                  nop
                  lb           s3, 59(s6)
                  srl          t5, s6, t1
                  sll          a5, s2, s7
                  sra          t3, s10, s7
                  lbu          sp, 3(s6)
                  addi         a5, zero, -765
                  sub          s5, s7, a2
                  srai         a4, s7, 0
                  or           tp, tp, a4
                  srli         s0, t3, 23
                  sb           a7, -52(s6)
                  auipc        ra, 469004
                  lhu          s3, 49(s6)
                  srai         ra, s11, 9
                  srl          s0, s3, tp
                  slli         s4, s3, 28
                  auipc        s1, 778349
                  lbu          a4, -26(s6)
                  srli         s1, a1, 15
                  nop
                  andi         a6, t5, 1031
                  slti         gp, s2, 525
                  srl          a7, tp, a5
                  sb           s3, -62(s6)
                  auipc        t5, 50766
                  auipc        a4, 727626
                  slti         t3, t1, -1616
                  sh           s3, 49(s6)
                  andi         gp, s5, -1389
                  auipc        s9, 86079
                  lb           tp, 45(s6) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+944 #start riscv_load_store_rand_instr_stream_5
                  lw           gp, 8(a7)
                  srl          ra, a5, sp
                  sb           s10, 4(a7)
                  sltu         sp, gp, t2
                  and          a4, s1, s4
                  auipc        t4, 1016315
                  lb           s4, 15(a7)
                  sb           s9, -13(a7)
                  sb           t4, -11(a7)
                  sb           a0, 1(a7)
                  sb           t3, -8(a7)
                  sb           a5, -14(a7)
                  lhu          s11, 10(a7)
                  sltu         t3, gp, ra
                  sb           s4, -11(a7)
                  sltu         t2, s0, s3
                  sb           zero, -5(a7)
                  lbu          s6, 3(a7)
                  slli         a4, ra, 9
                  sb           a5, -4(a7)
                  lb           a5, -16(a7)
                  lhu          gp, -6(a7)
                  sb           t0, 0(a7)
                  sra          s6, s9, s7
                  lb           s7, -13(a7)
                  lui          s9, 134229
                  slli         t2, sp, 14
                  sltiu        s5, s1, -1686
                  sltu         t5, s1, t1
                  lh           s5, 8(a7)
                  sh           sp, -14(a7)
                  lb           s11, 7(a7)
                  lhu          t6, -10(a7)
                  lh           s5, 10(a7)
                  lui          s5, 795185
                  sb           t4, 13(a7) #end riscv_load_store_rand_instr_stream_5
                  la           s0, region_1+1451 #start load_store_instr_stream_0
                  lbu          t3, 531(s0)
                  la           s1, region_1+1967 #start load_store_instr_stream_1
                  lbu          t2, -88(s1)
                  lb           t2, -423(s0)
                  lbu          t3, -185(s1)
                  sb           tp, 6(s1)
                  sh           s9, -899(s0)
                  lh           ra, -139(s1)
                  lhu          s7, 495(s0)
                  lh           a5, -705(s0)
                  sb           t4, 542(s0)
                  sh           s7, -99(s1)
                  lbu          s5, -124(s1)
                  lh           a6, -157(s1) #end load_store_instr_stream_1
                  lb           s5, -649(s0) #end load_store_instr_stream_0
                  la           sp, region_0+1741 #start riscv_load_store_hazard_instr_stream_3
                  lhu          a6, 9(sp)
                  sb           sp, 2(sp)
                  lh           s1, 9(sp)
                  lb           t6, -7(sp)
                  lbu          s0, 4(sp)
                  lbu          a1, 6(sp)
                  lb           s7, 6(sp)
                  slti         s9, tp, 734
                  sltu         t3, t4, s7
                  lb           s10, 6(sp)
                  lb           s0, 6(sp)
                  add          tp, t4, s9
                  lb           a1, 6(sp)
                  lbu          zero, 6(sp)
                  xori         a5, t1, -356
                  lbu          ra, 5(sp)
                  sb           a5, 5(sp)
                  lb           a1, 12(sp)
                  lbu          s1, 12(sp)
                  lb           ra, -7(sp)
                  sb           a5, -2(sp)
                  sh           a5, -13(sp)
                  lh           t5, -7(sp)
                  slt          ra, a3, tp
                  sll          s1, s5, a5
                  sh           a1, -7(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s0, region_1+1639 #start load_store_instr_stream_3
                  la           t2, region_1+1123 #start load_store_instr_stream_1
                  la           t4, region_1+1151 #start load_store_instr_stream_2
                  la           s4, region_1+1646 #start load_store_instr_stream_0
                  sb           s1, 10(s0)
                  sw           tp, -7(t2)
                  lbu          t1, 0(t2)
                  lb           s6, 15(s0)
                  la           a0, region_1+1573 #start load_store_instr_stream_4
                  lbu          s6, 11(t2)
                  sb           a7, 380(t4)
                  lbu          s3, 504(t4)
                  sb           s0, 16(s0)
                  sb           t6, -50(t4)
                  lb           a6, 9(t2)
                  lb           t5, 66(t4)
                  sw           s0, -289(a0)
                  lhu          s11, -496(s4)
                  lbu          s5, -1420(a0)
                  sh           s2, -9(s0)
                  sb           zero, 307(s4)
                  lbu          sp, 12(t2)
                  sb           t6, 412(t4)
                  sh           a2, -1423(a0)
                  lh           s1, -400(s4)
                  lw           t6, -703(t4)
                  lhu          a7, -251(a0)
                  lh           t1, 675(t4)
                  lbu          a7, -1316(s4)
                  lb           sp, 33(a0)
                  sw           t1, -975(t4)
                  lb           s9, 8(t2)
                  lbu          zero, 646(t4)
                  lb           s2, 9(t2)
                  lb           t3, -1413(a0)
                  lhu          s7, -574(s4)
                  sb           s9, -8(t2)
                  lb           tp, -406(a0)
                  sb           t5, 14(s0) #end load_store_instr_stream_3
                  lb           s2, -286(s4)
                  lbu          s11, -6(t2) #end load_store_instr_stream_1
                  lh           a5, -355(a0)
                  lb           s6, 61(t4) #end load_store_instr_stream_2
                  sb           zero, -200(a0) #end load_store_instr_stream_4
                  sb           a4, -1469(s4) #end load_store_instr_stream_0
                  la           a7, region_0+1906 #start load_store_instr_stream_0
                  la           ra, region_0+358 #start load_store_instr_stream_1
                  lbu          s0, 22(a7)
                  lb           s4, 29(ra)
                  sh           gp, 30(ra)
                  lb           a1, 40(ra)
                  lb           t1, -63(a7)
                  lbu          s9, -24(ra)
                  lh           a0, 48(a7)
                  lbu          s3, 13(ra)
                  lb           sp, 13(a7)
                  lb           t4, 48(a7)
                  lh           t4, 12(a7)
                  lb           s6, 31(a7)
                  sw           s0, 38(a7)
                  lbu          s5, 35(ra) #end load_store_instr_stream_1
                  lb           a1, -55(a7) #end load_store_instr_stream_0
                  la           ra, region_0+1408 #start riscv_load_store_hazard_instr_stream_7
                  sh           a5, 18(ra)
                  sb           s10, 18(ra)
                  sh           s10, 18(ra)
                  lhu          gp, 18(ra)
                  sb           s0, 18(ra)
                  sb           s3, 37(ra)
                  lhu          a5, -24(ra)
                  lw           sp, -24(ra)
                  sw           s7, -24(ra)
                  ori          t2, s5, 1882
                  sh           s7, -24(ra)
                  lw           a4, -24(ra)
                  lbu          a4, 61(ra)
                  lbu          t2, 61(ra) #end riscv_load_store_hazard_instr_stream_7
                  srai         tp, s2, 7
                  bne          s5, ra, 11f
                  slli         sp, sp, 15
                  or           a1, s6, t0
                  sltu         ra, a7, zero
                  bge          s8, s5, 13f
                  bgeu         a3, t0, 7f
7:                sltiu        t2, tp, -1930
                  bge          s7, s6, 22f
                  blt          s9, a3, 27f
                  sltiu        a0, t1, 376
11:               sll          t6, gp, t3
                  bltu         a1, t4, 16f
13:               srli         a1, s0, 29
                  bltu         s7, s2, 17f
                  sub          s0, zero, a2
16:               lui          t3, 966718
17:               sltu         s4, s2, s3
                  sra          a4, zero, s5
                  bge          s9, t6, 35f
                  bgeu         s9, s8, 39f
                  addi         s2, s9, 365
22:               blt          s8, a0, 38f
                  sltu         s1, a6, s5
                  sll          s0, sp, s5
                  ori          s3, gp, -649
                  bne          tp, t2, 43f
27:               sltu         s3, s7, a5
                  sltiu        s9, s9, -461
                  srai         a1, s8, 24
                  bltu         s1, a7, 35f
                  slt          t2, s8, t5
                  bne          a7, a6, 41f
                  slli         s3, s7, 9
                  xori         a1, a1, -2009
35:               slli         s0, a0, 4
                  lui          zero, 339231
                  sub          sp, s2, t2
38:               add          a7, t3, gp
39:               srl          t1, ra, zero
                  srli         a6, a7, 30
41:               addi         t6, s8, -1493
                  sub          a5, s6, s9
43:               sra          s10, a0, t6
                  srli         a1, a3, 23
                  xori         s9, a1, -1635
                  srl          gp, gp, s3
                  srli         a1, a4, 9
                  srl          s5, t5, s4
                  beq          t2, t2, 64f
                  auipc        t0, 235058
                  srl          s7, tp, t5
                  bne          sp, gp, 59f
                  add          s3, a2, a6
                  lui          a1, 125082
                  sra          t6, a1, a2
                  and          a6, s2, s0
                  nop
                  nop
59:               bgeu         ra, t2, 76f
                  sll          s4, s3, tp
                  or           s7, s4, a2
                  slt          t2, t4, t0
                  slti         t5, a7, 264
64:               bne          tp, a6, 71f
                  nop
                  sltu         s0, a5, gp
                  srl          s6, a1, s11
                  xor          t4, t5, s4
                  bltu         s6, t6, 81f
                  xori         zero, t0, 104
71:               auipc        a0, 493990
                  bge          s6, s7, 78f
                  add          gp, s8, a4
                  srai         gp, t0, 28
                  slti         a5, t1, -1124
76:               bne          a3, s11, 78f
                  srai         s3, s7, 13
78:               andi         s0, zero, 948
                  srl          gp, a5, s2
                  addi         s3, s10, -1183
81:               bge          ra, s6, 97f
                  bge          s1, s6, 84f
                  xor          s2, s8, t6
84:               lui          s3, 211724
                  srli         a5, gp, 25
                  sltu         zero, tp, t0
                  srli         a1, zero, 14
                  nop
                  beq          s7, s4, 109f
                  srli         t5, a7, 15
                  srl          s1, s2, a5
                  beq          s4, s7, 101f
                  bge          a5, t6, 102f
                  slli         t1, s0, 10
                  ori          t6, sp, -1444
                  lui          s7, 55123
97:               addi         a6, t4, -1466
                  andi         s2, s2, 853
                  blt          t4, s0, 116f
                  xori         s11, t1, -1854
101:              slti         s1, t0, -909
102:              bltu         s11, s3, 119f
                  srli         s0, s10, 12
                  slt          s3, t1, s3
                  srl          a0, a7, s6
                  sra          sp, t0, s10
                  and          s0, t1, a7
                  xori         a7, ra, -1420
109:              sra          t3, t1, s11
                  addi         s0, a3, 12
                  bge          s1, t2, 118f
                  srli         a6, gp, 14
                  sltiu        t3, t2, 415
                  lui          s9, 469386
                  beq          a7, a5, 125f
116:              and          t2, s5, t5
                  and          a6, a3, s8
118:              slli         s6, a2, 9
119:              andi         gp, a7, -1986
                  bne          a2, t2, 140f
                  srai         zero, s1, 11
                  sub          a5, a6, t1
                  sra          t6, t2, s8
                  beq          a6, s4, 144f
125:              slt          t0, a1, a1
                  add          t6, s5, s8
                  or           tp, t4, t2
                  and          t4, a3, t4
                  xor          t4, s8, zero
                  add          t5, s3, t5
                  srai         a0, a7, 16
                  addi         t0, a0, 102
                  srl          s5, gp, t3
                  xor          s3, a4, t5
                  srai         t5, a3, 8
                  slti         s1, s2, 1859
                  addi         t1, s4, -1761
                  slt          s7, a3, a4
                  lui          a6, 552062
140:              addi         s10, s5, 975
                  beq          s1, a3, 144f
                  slli         t3, a1, 4
                  ori          s11, s9, -1698
144:              or           t5, s2, zero
                  bgeu         zero, t3, 147f
                  srli         t1, s7, 15
147:              sub          a6, t1, s11
                  srli         t3, t4, 20
                  sra          s4, a4, s5
                  srl          a1, a7, a5
                  andi         t3, a3, 132
                  slti         s7, t2, -1097
                  xori         t2, s1, 1844
                  beq          t6, t5, 170f
                  blt          t2, t5, 164f
                  andi         t5, a1, -1459
                  beq          zero, a0, 171f
                  sll          s11, s5, a5
                  bgeu         a1, s4, 176f
                  beq          s10, s1, 169f
                  add          a7, t5, ra
                  slt          a0, a2, a7
                  bne          t6, s8, 170f
164:              srai         t4, tp, 13
                  or           ra, tp, sp
                  nop
                  slti         t2, a0, -283
                  andi         t1, t2, 689
169:              sltiu        t1, s7, 321
170:              xori         t6, s6, 1462
171:              slli         s4, s4, 27
                  slt          s1, s0, a6
                  slt          tp, s9, s11
                  bgeu         s2, s10, 191f
                  bltu         a6, zero, 191f
176:              or           t2, a7, s10
                  slli         sp, a4, 9
                  sll          s9, a0, sp
                  sltiu        zero, zero, 116
                  srli         zero, t3, 31
                  lui          tp, 118936
                  add          a1, t5, t1
                  xori         s9, t5, 46
                  bgeu         s9, t5, 201f
                  sub          t0, zero, a3
                  sltu         s7, a5, a7
                  bltu         a3, a3, 191f
                  slli         s2, s11, 28
                  srl          t5, t0, s2
                  or           a0, s9, a5
191:              blt          a1, t6, 192f
192:              andi         t6, s2, -716
                  blt          a7, t1, 211f
                  bgeu         zero, a5, 210f
                  srai         gp, s3, 9
                  bne          a1, s4, 211f
                  bgeu         s8, s0, 205f
                  slli         tp, s9, 11
                  srai         t1, s5, 5
                  srai         t5, t6, 1
201:              lui          a1, 774278
                  sltu         a0, a7, a3
                  sltu         a7, s1, t6
                  bne          t2, t1, 206f
205:              sltu         t4, s3, s3
206:              srli         zero, s2, 11
                  or           a5, s7, t0
                  add          s1, s4, a4
                  and          s10, s8, s0
210:              sltu         t1, a6, s7
211:              sltiu        s3, t5, 1779
                  sltu         s10, s8, a2
                  beq          a4, s3, 223f
                  slli         sp, a6, 15
                  addi         s10, s4, -1696
                  srai         a1, s4, 10
                  beq          a1, s9, 226f
                  slli         t3, sp, 26
                  or           t3, t6, sp
                  bne          t2, tp, 237f
                  add          s1, sp, t5
                  sltu         s0, t1, t5
223:              xori         s10, a7, -604
                  beq          s0, a3, 231f
                  xor          s10, a7, a3
226:              andi         tp, a6, -67
                  srai         sp, tp, 28
                  srai         t5, t4, 27
                  slli         s3, a6, 15
                  bgeu         t0, s7, 236f
231:              sltiu        a5, t0, 18
                  or           s2, t5, a5
                  xori         t3, s3, 782
                  slti         t2, gp, -419
                  srli         ra, s4, 20
236:              bltu         a4, s2, 255f
237:              xori         gp, s6, 1429
                  slli         s1, s10, 25
                  blt          s11, a2, 246f
                  bltu         t3, s4, 245f
                  slti         t6, zero, 1601
                  srl          s11, s0, t1
                  xor          zero, s3, t3
                  andi         a1, gp, 229
245:              xor          t6, s0, s1
246:              sll          s1, a5, ra
                  andi         a1, s7, 1282
                  blt          t1, s1, 258f
                  srl          s6, s9, t5
                  auipc        a7, 446866
                  sra          t4, a3, s6
                  ori          t1, a3, 1420
                  beq          s1, s1, 265f
                  bne          a1, a7, 274f
255:              slti         ra, t2, 1059
                  srai         s4, zero, 0
                  slt          t1, s1, t3
258:              sll          s9, t3, t5
                  srli         t3, s7, 13
                  slti         s2, ra, 1787
                  sub          s0, s9, gp
                  slti         a4, t3, 1318
                  blt          a4, s11, 280f
                  bne          a7, s0, 279f
265:              sra          t5, s5, a5
                  bgeu         s4, tp, 275f
                  add          t4, s7, a5
                  srl          a1, s3, a2
                  beq          t2, t4, 281f
                  srli         s10, s6, 5
                  sltiu        a0, ra, -1525
                  bne          t1, s1, 279f
                  sltiu        s5, ra, 1953
274:              lui          zero, 853470
275:              srai         gp, s7, 17
                  sub          s2, s5, s1
                  sltiu        a6, s3, -1726
                  sra          t1, ra, a6
279:              bgeu         s6, a4, 296f
280:              addi         s0, s10, 143
281:              slli         t4, t0, 18
                  slti         a7, t3, -2034
                  ori          a6, a4, 1488
                  blt          s6, s11, 291f
                  xor          s9, t3, s6
                  auipc        sp, 566679
                  auipc        s1, 861017
                  sra          t1, a6, t2
                  or           s10, t3, t0
                  ori          s9, a0, -770
291:              bgeu         ra, tp, 311f
                  sltiu        s7, a0, 1844
                  xori         t1, t3, -406
                  slt          s9, t3, s0
                  srl          tp, t6, s2
296:              add          t0, s6, a0
                  srli         t3, s3, 0
                  addi         a7, s8, -2035
                  slt          a4, zero, t0
                  sll          s2, gp, a3
                  slli         s9, a3, 8
                  or           t4, tp, a4
                  sltiu        s9, s8, -270
                  sltu         sp, a7, s8
                  slti         t4, t6, -1003
                  beq          a7, s8, 324f
                  bge          sp, s2, 317f
                  sltiu        gp, t6, -1934
                  sltiu        a1, t1, -1632
                  or           ra, s1, s3
311:              beq          sp, s5, 328f
                  srl          a5, a7, tp
                  xor          ra, t4, a2
                  add          a0, s9, tp
                  xori         tp, s11, -1331
                  xor          s7, s6, s1
317:              sub          s1, s5, a2
                  auipc        a6, 465219
                  slli         sp, ra, 7
                  andi         s9, gp, 1013
                  srli         s0, tp, 19
                  ori          s7, s4, 1642
                  lui          t4, 164156
324:              bgeu         a0, t6, 331f
                  sra          s1, a4, s6
                  srl          t3, s4, t5
                  slti         t2, gp, 241
328:              srli         s0, t2, 15
                  sub          tp, a3, s5
                  and          s6, t0, a7
331:              andi         s6, t1, 1952
                  add          sp, s9, t6
                  slli         t0, zero, 16
                  blt          a0, s9, 351f
                  bge          t4, s3, 337f
                  srli         zero, a4, 18
337:              xor          a5, t0, sp
                  and          a0, a6, a1
                  bne          ra, t6, 343f
                  slli         s10, a4, 27
                  blt          gp, s1, 342f
342:              xori         a7, t3, 1404
343:              slli         t1, s9, 12
                  slt          s2, s0, s4
                  add          gp, a7, s7
                  add          s9, t1, t0
                  sub          a5, t6, gp
                  andi         t1, s8, -2000
                  andi         s3, s10, -867
                  beq          a3, s5, 366f
351:              bge          sp, gp, 371f
                  xori         t2, s8, 1527
                  nop
                  bne          t4, s5, 370f
                  bltu         a2, s6, 364f
                  ori          s11, s7, 1316
                  bltu         s9, t2, 366f
                  or           tp, t2, a4
                  sltiu        t4, a7, 585
                  nop
                  xori         t1, a7, -1356
                  sltu         s7, t3, t4
                  xori         s0, s4, 489
364:              slt          s11, ra, gp
                  bltu         a7, s7, 370f
366:              srl          gp, a6, a4
                  sll          a6, ra, s6
                  or           a0, s6, s4
                  blt          a6, a7, 371f
370:              beq          a0, s1, 378f
371:              andi         t5, t4, 1035
                  xori         s6, t2, -672
                  beq          sp, s2, 392f
                  bne          a5, a4, 388f
                  xor          t1, a6, s8
                  lui          s7, 90062
                  ori          s10, a7, -65
378:              bgeu         a3, gp, 381f
                  and          s0, s4, t2
                  xor          a0, s7, s7
381:              xor          a7, s11, zero
                  sll          t0, ra, s9
                  bne          s11, t6, 399f
                  sll          s10, a2, s2
                  xori         s4, sp, -679
                  bge          s11, s9, 392f
                  sra          s4, gp, t0
388:              sra          t0, s0, t0
                  xori         s10, t4, -954
                  sll          s7, a3, sp
                  slt          tp, a2, a3
392:              xori         s2, t2, 2019
                  bgeu         t5, s10, 403f
                  bge          a0, s9, 410f
                  auipc        t6, 1454
                  slli         s5, a0, 7
                  slti         s10, s10, -1962
                  slti         t4, a1, -1088
399:              sub          sp, s6, a2
                  bltu         s3, s2, 401f
401:              slti         a7, s9, 801
                  sll          a6, t0, a4
403:              sltiu        t4, a3, -253
                  beq          sp, t1, 421f
                  slti         a4, s9, -1288
                  bge          s7, t3, 414f
                  srli         t1, a2, 1
                  sll          s9, s10, sp
                  sub          t4, a0, a6
410:              add          s4, a0, a1
                  sltu         s9, gp, a0
                  sll          s1, t3, a3
                  bne          gp, a7, 429f
414:              slti         t6, gp, -1384
                  nop
                  xori         s10, a3, -836
                  srl          t2, a2, s9
                  sltiu        a5, s7, 772
                  slt          gp, t5, s0
                  nop
421:              lui          s10, 285281
                  andi         s7, s3, -1138
                  la           sp, region_0+597 #start riscv_load_store_rand_instr_stream_2
                  xor          t1, a3, sp
                  slt          a5, t2, s9
                  auipc        s4, 319135
                  slti         gp, t1, 1306
                  sb           s2, 101(sp)
                  sltiu        a4, s1, -1359
                  sll          gp, t4, a2
                  srl          a4, t2, gp
                  lbu          s5, -154(sp)
                  lhu          a1, -101(sp)
                  and          ra, t6, sp
                  xor          s10, tp, t2
                  srli         t6, s7, 26
                  xori         t2, s7, -844
                  lhu          t5, -99(sp)
                  lui          zero, 886703
                  lb           a0, 30(sp)
                  sltu         s11, s2, t6
                  ori          a5, t6, 499
                  slti         t5, t4, 1487
                  or           a7, a6, a3
                  or           t3, s1, a1
                  lui          t6, 871809
                  ori          s11, ra, -1175
                  sh           t3, 183(sp)
                  andi         a6, s9, 280
                  slti         tp, a7, -92
                  xor          t5, t5, a6
                  lhu          a5, 121(sp)
                  sltu         s7, t6, t6
                  sltu         s5, a3, t0
                  sub          a5, s11, tp
                  sltu         t6, s4, zero
                  sh           a0, 201(sp)
                  sll          s6, tp, a5
                  add          tp, s4, t4
                  lb           a7, -239(sp)
                  lbu          s0, -188(sp)
                  xor          s2, s10, s2
                  sh           s7, 23(sp) #end riscv_load_store_rand_instr_stream_2
                  beq          s3, s11, 432f
                  addi         a1, zero, 700
                  lui          a6, 140033
                  slti         s4, t2, 1369
                  and          s3, a2, t0
                  and          t1, a0, a0
429:              andi         s9, t4, 866
                  srli         sp, s6, 21
                  bgeu         s9, s7, 451f
432:              bltu         s9, s4, 449f
                  slti         t4, s0, 114
                  bltu         a0, t2, 443f
                  bltu         zero, s5, 445f
                  lui          s7, 616727
                  addi         t3, s7, 174
                  auipc        s3, 965080
                  bgeu         a3, t1, 459f
                  sltiu        a1, t1, 994
                  srai         zero, a6, 31
                  bne          s9, s0, 449f
443:              addi         a0, t4, -2034
                  srai         a7, s11, 11
445:              slt          s10, t3, t2
                  slt          s5, s9, a4
                  addi         s9, s8, 1905
                  blt          a6, t6, 451f
449:              sltu         t1, t2, s5
                  slti         a0, t1, -909
451:              lui          a7, 671575
                  srl          sp, a5, gp
                  bge          s5, gp, 468f
                  sra          t6, a5, s11
                  sub          t6, t0, a3
                  addi         s11, a4, -525
                  andi         a6, tp, -1427
                  srai         a0, a5, 1
459:              blt          sp, s2, 477f
                  slli         t1, s8, 7
                  srl          s1, t5, s4
                  bge          zero, sp, 471f
                  addi         s6, s10, 210
                  srai         a4, tp, 13
                  srli         s9, t1, 2
                  bltu         s3, gp, 470f
                  sltu         gp, ra, s0
468:              bne          a7, s2, 470f
                  xor          tp, tp, a3
470:              slt          a7, s6, tp
471:              sltiu        a5, t0, 1732
                  srai         a1, s9, 19
                  xori         s10, s6, -1306
                  addi         a5, a2, -668
                  bltu         s10, a1, 482f
                  sra          s6, ra, a3
477:              bltu         s8, t6, 479f
                  sll          sp, a6, sp
479:              bltu         s9, s2, 484f
                  ori          t1, s8, 717
                  xor          gp, t0, a4
482:              andi         t5, s3, -1325
                  la           sp, region_1+1265 #start riscv_load_store_rand_instr_stream_6
                  ori          a1, ra, 39
                  sra          s3, a0, s11
                  auipc        t4, 404593
                  lh           s2, 241(sp)
                  sb           s4, -896(sp)
                  lbu          t3, 473(sp)
                  slli         t6, t6, 28
                  and          a4, tp, tp
                  lb           s3, -691(sp)
                  lbu          t2, 623(sp)
                  sb           t0, -398(sp)
                  xor          s6, s0, t2
                  lb           s10, 38(sp)
                  sb           s9, -159(sp)
                  andi         s11, tp, -493
                  lw           zero, 159(sp)
                  sb           zero, -190(sp)
                  addi         tp, a2, -1542
                  sh           s3, -129(sp)
                  andi         ra, s4, 1889
                  xori         s1, s3, 1948
                  sub          s6, s8, s3
                  slt          a5, a0, t5
                  lw           s5, -1117(sp)
                  sra          s11, t6, s3
                  nop
                  sub          s11, s0, t5
                  add          t2, s7, a0
                  nop
                  slli         gp, s11, 12
                  sb           a6, -508(sp)
                  lb           a6, -1053(sp)
                  sltiu        t0, t2, 1660
                  lbu          a7, -1166(sp) #end riscv_load_store_rand_instr_stream_6
                  add          s5, s0, a0
484:              srai         t0, s7, 21
                  bltu         a0, t5, 501f
                  beq          tp, t1, 503f
                  sub          t3, a5, s4
                  auipc        s3, 32379
                  or           zero, a3, a4
                  sra          a6, gp, s10
                  sll          s3, t4, zero
                  slt          t4, t6, a5
                  xori         gp, t4, -762
                  xori         s11, a7, -1573
                  xori         t5, s5, 202
                  sra          t3, s7, t5
                  srli         t0, t2, 9
                  lui          t3, 845785
                  sll          s3, t6, s5
                  auipc        s5, 998315
501:              add          s6, s7, zero
                  blt          a0, a1, 516f
503:              xor          t4, s6, sp
                  srl          s3, a7, s4
                  add          a0, t2, gp
                  and          s4, s7, s9
                  add          sp, gp, a5
                  addi         s11, a1, 658
                  or           a6, a5, a4
                  auipc        a1, 507828
                  lui          t3, 449145
                  ori          t2, s4, -1163
                  slt          a0, t3, zero
                  ori          a1, s1, 372
                  ori          a7, a5, -1538
516:              addi         t5, t1, 220
                  bgeu         ra, a6, 527f
                  addi         s0, s1, -605
                  bgeu         t0, a4, 538f
                  blt          s3, s6, 537f
                  srl          s2, s10, sp
                  bne          s8, a3, 534f
                  lui          sp, 202920
                  nop
                  srai         ra, a1, 21
                  blt          a4, a1, 533f
527:              or           s10, s7, s4
                  or           sp, t5, t0
                  addi         t3, s6, -380
                  bne          a2, s3, 536f
                  slt          gp, s7, a2
                  slli         a4, ra, 15
533:              blt          zero, ra, 553f
534:              add          a4, s10, t0
                  bltu         a6, s5, 552f
536:              and          sp, s9, s2
537:              bne          ra, t1, 539f
538:              slli         s7, s6, 30
539:              andi         a6, zero, 816
                  nop
                  nop
                  bne          a3, a1, 543f
543:              slt          a6, s8, a2
                  sltiu        s11, s0, 1712
                  srl          s10, t4, a5
                  andi         t3, a6, -944
                  slt          ra, s10, a1
                  srli         a4, t2, 8
                  srl          s2, t4, a2
                  blt          a2, gp, 566f
                  slt          s0, a7, s11
552:              addi         a5, s9, -1164
553:              beq          s3, a5, 569f
                  slli         t4, t1, 20
                  bgeu         t1, s3, 557f
                  srl          t5, s5, t0
557:              andi         s1, s9, -1320
                  andi         gp, t4, -1961
                  slli         tp, s9, 25
                  add          s0, s8, a5
                  andi         s3, s11, -1268
                  or           t4, a0, s1
                  bgeu         s6, t4, 573f
                  or           s6, s1, t6
                  bgeu         gp, a0, 580f
566:              bne          a5, zero, 573f
                  sub          t5, t3, a2
                  addi         gp, a1, 692
569:              bgeu         t4, t4, 576f
                  addi         a7, s11, 289
                  slt          t0, s7, s9
                  slli         s3, s8, 9
573:              lui          zero, 122603
                  bgeu         t3, s10, 582f
                  beq          s2, t2, 582f
576:              add          s9, t1, a2
                  srai         s7, s9, 24
                  sub          sp, ra, t0
                  auipc        s7, 336961
580:              blt          zero, t5, 586f
                  srai         zero, tp, 29
582:              sub          a6, s0, t3
                  slt          s0, s6, s3
                  slti         a6, gp, 12
                  sltu         zero, s0, s5
586:              lui          t5, 663344
                  ori          ra, a4, -1255
                  sub          sp, a3, s0
                  ori          s0, s5, 654
                  and          gp, s9, t0
                  slt          s1, s3, t2
                  and          s6, s3, t0
                  sra          s7, a3, a2
                  add          t4, s3, s4
                  ori          a0, s1, -747
                  and          a0, t2, s10
                  slti         sp, a0, -377
                  srl          s11, a6, zero
                  xor          t4, a2, a7
                  or           t3, a2, s9
                  slti         a1, t0, -1828
                  bltu         a0, tp, 616f
                  andi         s1, s2, -1537
                  ori          s9, a7, -796
                  addi         zero, s4, -999
                  slt          sp, s1, a3
                  nop
                  ori          tp, s1, 1881
                  addi         t6, s2, -1158
                  auipc        zero, 487213
                  slt          zero, a6, t1
                  srli         s9, t6, 11
                  srai         t1, t2, 10
                  slti         t0, t6, 1897
                  xori         t4, t5, 937
616:              sltu         t4, s11, sp
                  blt          tp, a5, 629f
                  nop
                  lui          s9, 801144
                  lui          s3, 330240
                  slli         a6, a6, 25
                  slt          a4, t1, s11
                  sltiu        s7, t6, 122
                  sll          t4, t3, a3
                  slli         s0, t6, 11
                  nop
                  blt          t5, s4, 632f
                  slti         zero, s0, -1713
629:              andi         a4, a5, -1095
                  andi         a4, ra, 1374
                  slt          s1, a4, t4
632:              or           t4, s9, t1
                  srai         tp, a7, 2
                  xori         s1, a6, 1514
                  srli         t2, a4, 11
                  bne          s5, s10, 640f
                  beq          s9, tp, 655f
                  beq          s5, s7, 657f
                  slli         t3, a4, 29
640:              ori          t3, a4, 1065
                  slt          t0, s5, s6
                  bltu         s8, s2, 659f
                  srai         ra, t6, 26
                  beq          s7, s0, 660f
                  sltiu        t2, s4, -233
                  andi         s6, s3, -1867
                  add          t4, s3, ra
                  blt          a2, s7, 657f
                  xor          tp, s1, s6
                  bgeu         sp, s10, 659f
                  andi         a7, s11, -935
                  slt          s11, s2, t3
                  blt          s4, a6, 673f
                  srli         t0, s10, 12
655:              blt          ra, s8, 672f
                  sltiu        t0, t5, 1599
657:              ori          s11, s0, 659
                  bne          t3, s8, 668f
659:              slti         t4, a1, -978
660:              andi         a0, t2, 1901
                  slti         t5, s5, 1529
                  sltiu        t0, s0, 786
                  blt          a2, s5, 666f
                  add          zero, s8, a4
                  add          sp, s2, a4
666:              auipc        s10, 608622
                  bge          s7, a5, 676f
668:              andi         s5, a3, -1187
                  slli         s1, t4, 6
                  lui          t6, 1033622
                  srli         s4, t2, 20
672:              slli         s7, s2, 23
673:              and          s4, s3, a1
                  xori         a5, tp, 946
                  add          s4, t6, a5
676:              bne          t4, s11, 693f
                  add          a1, s3, a3
                  auipc        s7, 196066
                  srai         s4, s3, 3
                  srl          a7, s0, a0
                  auipc        a0, 942601
                  sll          t3, s10, ra
                  sltu         t5, s2, a1
                  srai         s9, s6, 7
                  or           t1, t2, t1
                  slli         s6, s10, 18
                  bne          a0, tp, 694f
                  srli         a0, s6, 29
                  andi         a4, s7, -1886
                  sltiu        s5, a6, 1273
                  srli         s10, s8, 3
                  sltiu        a6, a4, -1103
693:              blt          a7, a1, 713f
694:              bne          a2, a6, 706f
                  bltu         s5, a0, 700f
                  srli         t0, s11, 1
                  slt          tp, t0, zero
                  slt          t2, s10, a4
                  bge          a4, t1, 705f
700:              xor          s5, s3, s5
                  ori          ra, zero, -1050
                  bge          s8, t2, 711f
                  bne          a4, t5, 710f
                  beq          a1, a2, 706f
705:              bge          t3, a0, 722f
706:              auipc        s7, 691938
                  xor          s2, t2, s7
                  srl          t1, a6, s8
                  bltu         a2, s4, 724f
710:              srai         a1, a5, 11
711:              nop
                  bltu         s3, s10, 732f
713:              xor          gp, sp, a0
                  bgeu         s7, a1, 732f
                  xori         gp, ra, 1274
                  sll          t2, s5, tp
                  sra          s6, t0, s8
                  xor          s7, a7, t0
                  xori         tp, s3, -1164
                  xor          t1, s11, a0
                  slt          s11, t2, a6
722:              auipc        s7, 23312
                  xori         t5, s8, -612
724:              auipc        sp, 151465
                  xor          gp, t0, s11
                  add          t5, s6, a6
                  xori         gp, a7, -652
                  sub          a5, t6, gp
                  srli         s11, s3, 21
                  slli         t5, s6, 20
                  lui          gp, 619297
732:              auipc        s5, 344178
                  and          a1, s8, zero
                  sll          s6, t1, a2
                  srli         a5, t5, 17
                  sub          zero, a6, s5
                  bgeu         t3, s6, 753f
                  sra          t2, s6, t0
                  beq          t5, a4, 748f
                  add          s3, a2, a0
                  and          s3, a3, s10
                  srli         s2, t3, 30
                  xori         a5, t1, 91
                  ori          s9, t5, -828
                  srli         s5, t2, 30
                  lui          s4, 36560
                  andi         t0, a4, 1271
748:              srl          t2, s3, t4
                  bgeu         tp, a3, 768f
                  ori          s9, t6, 1068
                  slti         s1, s3, -1349
                  srai         tp, s4, 16
753:              slt          a1, t2, a1
                  sltu         t3, a1, t2
                  xori         s5, gp, -274
                  lui          s2, 523227
                  xor          t0, t0, a2
                  slli         a7, s9, 24
                  bltu         tp, a2, 766f
                  srai         ra, s10, 12
                  ori          a1, t3, -1987
                  add          s3, a2, gp
                  sltu         s1, s3, t2
                  sra          a5, t6, t0
                  blt          a7, t3, 782f
766:              sra          a4, a6, a1
                  blt          s6, s5, 777f
768:              and          t0, a6, t2
                  beq          s10, s10, 786f
                  addi         ra, ra, 751
                  xor          gp, s11, s1
                  sra          t3, s8, a4
                  auipc        t0, 548609
                  bge          s11, a7, 790f
                  add          t2, a4, s0
                  sub          s3, s6, s2
777:              sra          zero, s11, a0
                  and          s2, a7, s7
                  auipc        s3, 1007034
                  nop
                  add          sp, a0, s0
782:              ori          zero, sp, 1324
                  bltu         s3, s9, 799f
                  slt          a0, zero, t0
                  andi         sp, a7, -1300
786:              and          s4, tp, t0
                  srl          a6, s11, s6
                  sub          a0, t0, s3
                  sltiu        a6, s5, 1903
790:              bgeu         a0, t4, 794f
                  sltiu        tp, t5, 506
                  sltu         s1, a4, s5
                  sra          a0, s9, a3
794:              sltiu        s6, a0, -183
                  xori         s10, a6, 142
                  or           t6, a5, t1
                  nop
                  srl          a7, s6, s6
799:              srai         a0, t3, 14
                  addi         t4, t0, 801
                  andi         t0, a0, -1118
                  andi         s1, a2, -529
                  srl          s10, t4, sp
                  auipc        a6, 783705
                  blt          s7, t0, 806f
806:              auipc        ra, 277418
                  slli         t5, s7, 16
                  bltu         s7, s0, 822f
                  auipc        tp, 777951
                  beq          s6, s3, 812f
                  auipc        s5, 171486
812:              or           ra, t4, a2
                  add          gp, s7, zero
                  sll          t1, sp, s3
                  xor          a7, sp, t1
                  or           gp, a7, s0
                  bgeu         s11, a4, 820f
                  lui          t0, 784133
                  xor          s6, ra, a0
820:              srl          t5, a7, zero
                  xor          t2, s5, s8
822:              addi         s10, s1, -1928
                  ori          s2, a7, 1997
                  and          s7, a7, a6
                  xor          a4, a6, s6
                  srl          t3, tp, a3
                  srl          s2, s10, t3
                  nop
                  ori          s10, s7, 1672
                  lw           a7, 4(a2)
                  addi         a2, a2, 32
                  slli         a1, tp, 29
                  sltiu        a4, s4, 231
                  ori          s5, t4, -1880
                  lui          t2, 488883
                  srl          t4, a1, a1
                  sll          s6, s10, a4
1544:             addi x30, x17, 1
1544:             jalr x30, x30, 0
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  add x24, x12, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x10, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x10, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x10, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x10, x5, ecall_handler
                  li x5, 0x1
                  beq x10, x5, instr_fault_handler
                  li x5, 0x5
                  beq x10, x5, load_fault_handler
                  li x5, 0x7
                  beq x10, x5, store_fault_handler
                  li x5, 0xc
                  beq x10, x5, pt_fault_handler
                  li x5, 0xd
                  beq x10, x5, pt_fault_handler
                  li x5, 0xf
                  beq x10, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x12, x24, zero
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
                  add x12, x24, zero
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
                  add x12, x24, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x12, x24, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x12, x24, zero
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
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x12, x24, zero
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
