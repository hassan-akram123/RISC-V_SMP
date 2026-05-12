.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0xc1833030
                  li x1, 0xbfd37b41
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf119fb3d
                  li x5, 0x80000000
                  li x6, 0xfd453f36
                  li x7, 0xa
                  li x8, 0x4b8ecb8a
                  li x9, 0xc
                  li x10, 0x6eb5b84a
                  li x12, 0x1f87f7d7
                  li x13, 0x0
                  li x14, 0xe
                  li x16, 0xf650b9fd
                  li x17, 0x80000000
                  li x18, 0xe299e37b
                  li x19, 0x0
                  li x20, 0xe
                  li x21, 0x0
                  li x22, 0xfd2a0043
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xffb843ea
                  li x28, 0x0
                  li x29, 0x32da5fd5
                  li x30, 0x80000000
                  li x31, 0xfeecad27
                  la x15, user_stack_end
main:             la           sp, region_0+242 #start riscv_load_store_rand_instr_stream_2
                  sw           s5, 1290(sp)
                  slli         t3, s7, 12
                  lbu          s10, 806(sp)
                  andi         a7, s4, 1711
                  lb           t5, 367(sp)
                  sra          a2, a0, s2
                  sb           s3, -103(sp)
                  sltu         s6, s4, a5
                  lui          tp, 288436
                  sll          a0, zero, a0
                  slti         s8, zero, -1927
                  lbu          gp, 201(sp)
                  sb           t4, 865(sp)
                  lb           s3, 33(sp)
                  sb           s3, 1336(sp)
                  slti         t1, t5, -423
                  lb           ra, 627(sp)
                  srli         a4, t1, 6
                  ori          t5, s9, 513
                  sh           a1, 1666(sp)
                  slt          t2, a0, s4
                  addi         t6, s3, 41
                  lbu          a6, 614(sp)
                  lbu          s7, -16(sp)
                  sb           t1, 479(sp)
                  sb           t6, 1455(sp)
                  lui          tp, 323304
                  srai         zero, s2, 8
                  lb           zero, 333(sp)
                  sll          t4, a4, s0
                  nop
                  lbu          s6, 865(sp)
                  sb           tp, 1155(sp)
                  lbu          gp, 214(sp)
                  sltiu        s7, s0, 1697
                  lbu          s6, 1063(sp)
                  slli         zero, s6, 9
                  nop
                  lw           a3, 150(sp)
                  sltu         gp, sp, s5
                  lb           a4, -163(sp)
                  lbu          s4, 1415(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+474 #start riscv_load_store_rand_instr_stream_1
                  slti         s11, t5, 535
                  srli         t2, t4, 14
                  xor          t0, a4, a3
                  lbu          t4, -3(sp)
                  lb           s11, 15(sp)
                  lb           a4, 15(sp)
                  andi         a0, a4, -1912
                  srl          s10, s1, t1
                  sb           tp, -12(sp)
                  auipc        s6, 136372
                  sra          a6, s3, s8
                  sra          s10, t5, s8
                  lbu          s3, -7(sp)
                  slt          a0, s1, t4
                  ori          a6, a1, -1480
                  ori          t4, s2, 1419
                  lb           s3, -8(sp)
                  sb           s9, -12(sp)
                  sll          a7, a0, t4
                  lh           s6, 0(sp)
                  addi         s2, t1, 268
                  andi         a7, s11, 1766
                  lbu          s9, 16(sp)
                  sll          s3, a5, s0
                  andi         a7, s0, 295
                  sh           s1, -4(sp)
                  lui          s7, 385697
                  srli         s8, sp, 12
                  auipc        s2, 784549
                  sltiu        s5, s4, 18
                  add          t5, t1, s1
                  auipc        s2, 384593
                  and          t1, s7, s3
                  sltiu        s9, a0, 593
                  addi         a0, a6, 849
                  srli         s2, tp, 23
                  or           t5, a7, s8
                  or           a4, gp, s0
                  xor          a6, zero, t5
                  lb           a0, 9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+232 #start riscv_load_store_rand_instr_stream_6
                  add          a6, s3, t3
                  xori         zero, t3, -108
                  lbu          s11, -10(a0)
                  and          t6, a1, s0
                  slt          s10, s3, s9
                  sra          a2, a1, a0
                  lbu          ra, 7(a0)
                  xori         s0, s7, -693
                  nop
                  lb           s4, 6(a0)
                  and          zero, s6, a6
                  slti         s10, s3, -822
                  lhu          s6, 12(a0)
                  sll          s11, a1, a3
                  or           t1, ra, t1
                  lh           t2, -8(a0)
                  sltiu        ra, a1, 423
                  xori         a7, s8, 1893
                  andi         s6, gp, -1926
                  add          s3, t6, s5
                  srai         t2, a0, 12
                  srl          s6, s3, a7
                  slt          sp, sp, a3
                  xori         s5, s2, 106
                  sra          s8, s11, s7
                  sll          s8, a1, t6
                  lbu          s8, -9(a0)
                  lb           a7, -11(a0)
                  srl          sp, a6, a1
                  lbu          a6, -15(a0)
                  or           t4, sp, t5
                  sb           a1, -7(a0)
                  sb           a0, -5(a0)
                  lb           zero, -15(a0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+81 #start riscv_load_store_rand_instr_stream_3
                  lbu          s9, 1852(sp)
                  lbu          s7, 934(sp)
                  lb           s11, 320(sp)
                  lh           t1, 633(sp)
                  lbu          t0, 1358(sp)
                  lb           t5, 736(sp)
                  lhu          a3, 41(sp)
                  lb           a3, -8(sp)
                  lbu          t2, 775(sp)
                  lbu          tp, 49(sp)
                  sh           a7, 1405(sp)
                  sb           s3, 373(sp)
                  sub          a6, a7, s4
                  lbu          ra, 940(sp)
                  sb           a1, 1019(sp)
                  lbu          s9, 1226(sp)
                  xor          s9, s8, s0
                  or           a0, ra, s5
                  sb           t4, 811(sp)
                  lhu          a7, 1117(sp)
                  slli         t5, a4, 18
                  lb           a0, 1015(sp)
                  slli         s8, a1, 22
                  lhu          s7, 739(sp)
                  sub          s7, s0, tp
                  add          ra, s4, t6
                  srl          a6, t5, a7
                  lbu          t5, 165(sp)
                  sb           ra, 1773(sp)
                  or           t6, t6, t2
                  sh           a4, 619(sp)
                  sb           tp, 413(sp)
                  lbu          t0, 1696(sp)
                  sw           s4, 83(sp)
                  sh           s3, 583(sp)
                  sb           s11, 708(sp)
                  or           zero, a2, a7
                  sub          s9, a4, a6
                  sb           a0, 1486(sp)
                  lb           s11, 1056(sp)
                  lhu          t1, 1225(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1802 #start riscv_load_store_rand_instr_stream_0
                  slli         s3, a7, 11
                  lb           a2, -21(sp)
                  srai         s4, t4, 17
                  lhu          s6, -14(sp)
                  lbu          s7, 0(sp)
                  sb           t1, 34(sp)
                  lb           a0, 37(sp)
                  addi         s2, s11, -1507
                  lh           zero, 56(sp)
                  lbu          t0, -19(sp)
                  lhu          s6, -28(sp)
                  and          s7, t2, s0
                  srl          a7, s1, a1
                  auipc        t1, 779840
                  sw           sp, 46(sp)
                  lb           s7, -43(sp)
                  sub          a2, t1, s1
                  lh           t3, -24(sp)
                  lbu          tp, -29(sp)
                  lhu          tp, -20(sp)
                  xori         a6, s11, -1499
                  andi         t2, s2, 164
                  sll          s5, a7, s7
                  slt          ra, a5, a1
                  xori         a2, tp, 2032
                  lh           s0, -52(sp)
                  sb           t0, 11(sp)
                  lw           s2, 58(sp)
                  lb           tp, 36(sp)
                  nop
                  lh           a4, -40(sp)
                  lh           ra, 48(sp)
                  lh           t0, 28(sp)
                  lbu          s7, 3(sp) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+1513 #start riscv_load_store_rand_instr_stream_7
                  lui          a7, 163142
                  srli         s7, s11, 3
                  sb           s3, 62(ra)
                  sltiu        a3, s11, -528
                  sw           t2, 3(ra)
                  sb           t0, -17(ra)
                  lh           t3, 57(ra)
                  ori          sp, t1, 80
                  lbu          s0, -59(ra)
                  lbu          t0, 29(ra)
                  slli         s8, s3, 16
                  sltiu        a6, a2, -1095
                  lh           a6, -57(ra)
                  slli         s6, a3, 13
                  lbu          t2, -63(ra)
                  lbu          zero, -20(ra)
                  nop
                  lb           t1, 18(ra)
                  sb           s4, 18(ra)
                  sb           gp, 6(ra)
                  sh           a1, -31(ra)
                  srai         a2, a5, 25
                  add          t4, a6, a4
                  sll          s10, tp, t2
                  lui          a4, 890677
                  sll          t5, a7, t2
                  add          s9, ra, tp
                  sll          a6, s4, t4
                  lb           a2, -26(ra)
                  lbu          s9, 6(ra)
                  add          tp, s3, s3
                  sltu         a6, a1, t4
                  slli         t1, t4, 18
                  lb           s10, -50(ra)
                  sb           a0, -52(ra)
                  lb           t0, -62(ra)
                  sltiu        gp, t3, 1880
                  slli         s5, s1, 10
                  lw           zero, 23(ra)
                  lh           a0, -27(ra)
                  lhu          s10, -11(ra)
                  sll          s3, s6, sp
                  lb           a2, -62(ra)
                  nop
                  lui          s11, 117836
                  slt          a3, a2, t4
                  xor          s0, t0, s8
                  lb           t5, -5(ra)
                  lh           a6, 13(ra)
                  addi         a7, tp, -766
                  xor          t1, zero, s8
                  lb           zero, -1(ra) #end riscv_load_store_rand_instr_stream_7
                  la           t2, region_1+589 #start riscv_load_store_rand_instr_stream_5
                  slti         t5, ra, -430
                  sb           a3, -15(t2)
                  sltiu        a7, a4, 648
                  or           s9, ra, s10
                  lh           s11, -7(t2)
                  lb           t4, 16(t2)
                  lbu          s7, -8(t2)
                  srli         t5, s6, 14
                  srli         s9, a6, 23
                  lbu          t0, -14(t2)
                  srai         s11, ra, 30
                  sltiu        sp, t5, 1221
                  sb           s6, 6(t2)
                  lui          s6, 237786
                  slt          sp, s3, t3
                  lhu          s3, 5(t2)
                  and          s3, zero, zero
                  sb           ra, -9(t2)
                  lb           tp, 1(t2)
                  lui          s7, 168986
                  andi         s11, a7, -718
                  slt          s10, s3, t2
                  srai         zero, s5, 23
                  lbu          zero, 0(t2)
                  sra          t4, gp, a1
                  sra          ra, s5, t6
                  lhu          s3, -15(t2)
                  xor          s7, gp, s1
                  xori         s3, s7, -476
                  lb           t3, -16(t2)
                  xor          t1, t1, t4
                  slti         s2, s7, -243
                  srl          a7, a1, a6
                  sw           s7, 3(t2)
                  addi         a3, s10, 1130
                  lb           tp, -14(t2) #end riscv_load_store_rand_instr_stream_5
                  la           a0, region_0+185 #start riscv_load_store_rand_instr_stream_4
                  sb           s10, 142(a0)
                  auipc        a3, 918301
                  sb           zero, 1412(a0)
                  xori         s2, s9, -562
                  lbu          s11, -65(a0)
                  lbu          sp, 1460(a0)
                  ori          s3, a3, 1670
                  andi         gp, t0, 1276
                  lh           gp, 29(a0)
                  lbu          s2, 693(a0)
                  lbu          s2, 861(a0)
                  sh           a4, 477(a0)
                  lhu          s8, 515(a0)
                  lb           s11, 1084(a0)
                  sra          t0, zero, s2
                  sb           s1, 95(a0)
                  srai         a2, t6, 14
                  lbu          s0, 256(a0)
                  srli         s8, s0, 26
                  slti         s7, t0, -1518
                  sltu         t2, a4, zero
                  sll          t4, gp, s7
                  auipc        s6, 452674
                  lb           t1, 504(a0)
                  sltu         s10, a7, t0
                  sra          sp, s2, sp
                  sb           t0, 1406(a0) #end riscv_load_store_rand_instr_stream_4
                  blt          t2, t5, 19f
                  andi         s0, t0, -994
                  andi         t5, s9, 679
                  ori          ra, s7, 1291
                  sll          s6, t2, a7
                  sra          t3, s6, ra
                  slt          a6, t3, a0
                  sub          s9, a0, s11
                  srl          s10, s8, ra
                  andi         zero, t4, 1208
                  xor          t0, a2, a6
                  sra          s6, a0, gp
                  srai         a7, s10, 29
                  blt          s10, s10, 24f
                  xori         t5, t3, -666
                  xor          s2, s2, a7
                  sll          s6, t0, sp
                  and          gp, sp, a5
                  sll          tp, a4, t6
19:               sub          t4, t2, t6
                  or           t2, s4, tp
                  lui          s7, 301137
                  srl          tp, s6, t1
                  nop
24:               nop
                  andi         s5, a3, -2009
                  auipc        a4, 521869
                  ori          s3, a7, -991
                  bge          zero, s2, 41f
                  add          s4, s2, t5
                  sll          s2, s1, a5
                  srli         s11, t6, 31
                  bgeu         ra, a1, 41f
                  bltu         s3, s8, 52f
                  nop
                  srl          sp, a0, a6
                  srl          t5, a2, s1
                  addi         tp, a6, -369
                  srai         ra, t1, 21
                  ori          s8, s2, -1830
                  beq          a5, a1, 43f
41:               sub          s4, t0, a0
                  xor          s6, a3, t1
43:               sra          s2, a7, zero
                  or           a2, s4, s2
                  lui          t6, 873397
                  sub          ra, t1, a5
                  ori          ra, a5, -668
                  sll          a7, t4, a0
                  nop
                  nop
                  andi         s6, s9, -694
52:               addi         s3, ra, -314
                  or           s0, s3, a1
                  slti         t5, a6, -1502
                  slli         t3, a3, 7
                  andi         s11, a7, -1839
                  bgeu         a1, tp, 66f
                  slli         a2, a7, 2
                  sltiu        s0, t2, -423
                  srai         gp, t3, 18
                  slt          s9, a5, a1
                  bne          a7, t5, 75f
                  add          t4, s4, a2
                  and          tp, t3, a3
                  srai         s6, a1, 28
66:               auipc        sp, 742985
                  sll          s10, a2, a0
                  srli         s0, ra, 25
                  slti         t6, s5, -2025
                  srli         s5, a0, 13
                  bgeu         a7, t0, 75f
                  slti         sp, t5, -1762
                  blt          s10, a4, 82f
                  blt          t0, zero, 85f
75:               bltu         a0, s7, 92f
                  addi         s4, s8, 1624
                  xori         t0, t2, -1523
                  ori          t3, s10, -1073
                  bge          s0, t5, 85f
                  bge          s1, a3, 92f
                  lui          s3, 729047
82:               and          s10, a3, s2
                  srli         s10, s4, 20
                  blt          a0, zero, 97f
85:               sll          s3, s3, a5
                  ori          s5, s5, 170
                  auipc        s5, 933534
                  sll          s0, a0, t6
                  srli         s11, gp, 21
                  bgeu         s2, a3, 107f
                  xor          a3, zero, s2
92:               bne          s9, s8, 112f
                  andi         t2, t5, -731
                  srai         t5, a4, 18
                  bgeu         sp, a3, 102f
                  beq          tp, t2, 116f
97:               sll          s7, s2, gp
                  or           s6, t1, a3
                  nop
                  slti         s3, s11, 254
                  sltiu        s5, t1, -447
102:              srai         a3, t2, 13
                  slti         s7, t1, -28
                  xori         t6, s7, 1840
                  bne          a0, s1, 116f
                  sltu         s11, gp, a4
107:              sltu         s6, t5, s7
                  slli         t4, t2, 12
                  addi         t0, t4, -1916
                  bltu         gp, zero, 127f
                  lui          s7, 848241
112:              sll          a6, a2, s9
                  sltiu        ra, s3, 1012
                  ori          s5, t6, -1136
                  srai         gp, a1, 21
116:              beq          s4, t2, 117f
117:              addi         a3, s0, -395
                  bgeu         s3, a2, 129f
                  bge          s7, t3, 133f
                  srai         t5, s0, 19
                  bgeu         t4, t0, 128f
                  slt          t6, s0, t6
                  bne          a7, s6, 127f
                  addi         s7, s0, -1022
                  or           t2, zero, s8
                  srli         a3, gp, 10
127:              bltu         a3, a3, 138f
128:              and          s11, s9, t2
129:              ori          s3, sp, 168
                  sltiu        t4, t2, -1055
                  sll          s8, a4, s0
                  andi         t0, s3, 224
133:              addi         s3, s1, 1543
                  addi         t3, sp, 1180
                  lui          t5, 744592
                  blt          zero, a6, 147f
                  bgeu         ra, t4, 151f
138:              nop
                  andi         s4, a6, 544
                  srli         t2, tp, 25
                  add          t3, a2, t5
                  sra          s8, s6, a6
                  blt          s4, t5, 155f
                  slli         t1, zero, 31
                  slti         a4, s1, 529
                  or           s7, a5, t2
147:              slli         t5, gp, 26
                  srli         t5, s0, 14
                  xor          gp, sp, s1
                  ori          t0, t2, 1719
151:              lui          tp, 703618
                  xori         s7, t5, -1594
                  lui          a7, 1021669
                  andi         t4, s11, -1497
155:              add          tp, sp, s1
                  nop
                  blt          s2, s5, 164f
                  srli         a4, a1, 0
                  srli         s2, s5, 25
                  ori          a4, a2, 399
                  lui          a0, 868081
                  sub          s11, t4, a7
                  add          t0, s10, t5
164:              blt          t3, tp, 175f
                  andi         s4, t0, -1925
                  or           s7, a7, s6
                  slli         s11, a4, 31
                  slt          tp, s8, sp
                  sra          t4, a4, t2
                  andi         s7, a2, -462
                  andi         s7, s0, -661
                  slti         tp, s10, 192
                  bltu         s10, t3, 193f
                  slt          s0, s10, t1
175:              or           s0, t0, t0
                  srai         t5, s3, 11
                  ori          s11, a5, -1357
                  srli         s2, a4, 14
                  srli         a4, a7, 12
                  add          s8, t1, a4
                  slt          s11, a7, t6
                  lui          t1, 155969
                  or           s9, t5, zero
                  andi         s3, ra, 1976
                  or           s6, s0, s6
                  slt          a7, s6, t3
                  sub          t3, s6, gp
                  sll          s11, tp, s10
                  xori         s3, t4, 1292
                  andi         t6, a7, -1765
                  xori         zero, s5, 277
                  bne          a4, ra, 205f
193:              or           s4, s9, tp
                  xori         t1, a2, 15
                  bgeu         s10, s3, 206f
                  or           s8, s7, s5
                  xori         t6, s0, -310
                  ori          s3, t6, -897
                  xori         t6, tp, -1074
                  sll          t0, t1, a6
                  andi         sp, a7, 2018
                  andi         t5, zero, 49
                  la           s6, sub_2
                  addi         s6, s6, 615
                  srli         sp, s4, 2
                  srl          t4, s5, tp
                  bltu         a4, a2, main_j2 #branch to jump instr
                  sub          s0, a7, s8
main_j2:          jalr         s4, s6, -615 #jump main -> sub_2
                  beq          tp, gp, 208f
                  ori          s5, s7, -299
                  lui          s2, 464864
                  slti         t5, zero, 468
                  or           s8, a3, a6
                  addi         zero, a7, -11
                  and          zero, a3, a5
                  bgeu         t3, s8, 216f
                  sltu         a3, zero, s3
205:              ori          t5, s9, -141
206:              blt          tp, a0, 217f
                  xor          s7, s1, s4
208:              sltu         t2, s7, s0
                  slt          t5, s4, a0
                  srai         s9, s1, 17
                  slt          a3, a3, s5
                  sll          gp, sp, s5
                  bltu         s10, a5, 224f
                  ori          s11, s10, -957
                  xor          s7, s9, a6
216:              bltu         t3, t3, 227f
217:              blt          zero, a3, 220f
                  srli         sp, a2, 30
                  slt          t2, s2, s10
220:              bgeu         s4, s3, 234f
                  sll          s4, a2, a4
                  nop
                  bne          s2, a1, 243f
224:              srl          t6, a5, zero
                  auipc        t3, 324785
                  beq          tp, a5, 235f
227:              lui          sp, 146921
                  addi         a4, a3, -1377
                  slli         s9, a4, 13
                  beq          a4, t1, 231f
231:              bgeu         sp, t5, 237f
                  srl          sp, s7, t3
                  srli         s0, s6, 3
234:              sra          t2, t4, t6
235:              srli         s7, a0, 28
                  andi         t4, a3, 1975
237:              slli         s0, ra, 5
                  lui          s10, 742615
                  or           gp, a7, s11
                  srai         s8, s2, 30
                  bne          s4, t5, 250f
                  lui          s4, 315437
243:              auipc        gp, 218087
                  slti         a3, a4, 221
                  xor          zero, s6, s9
                  add          t3, ra, a3
                  srai         s2, s6, 2
                  xori         s3, a3, -817
                  auipc        t2, 1009000
250:              sra          t4, a6, t4
                  bne          a1, a5, 260f
                  srli         sp, a1, 18
                  addi         t6, s0, -1112
                  bge          zero, a4, 268f
                  bgeu         s10, t1, 272f
                  ori          t4, a1, -280
                  sltiu        a0, s0, 600
                  srli         t6, s5, 16
                  or           s0, a0, a1
260:              sltiu        s9, s1, 1065
                  nop
                  bltu         a5, gp, 279f
                  sra          a6, t0, a4
                  sltu         s4, t0, a7
                  bgeu         s11, s5, 269f
                  lui          t2, 302400
                  srai         ra, gp, 2
268:              auipc        s0, 519569
269:              slli         s6, ra, 10
                  or           t2, gp, a0
                  srl          t0, s3, a3
272:              slli         s6, a1, 21
                  bgeu         s4, t5, 277f
                  srai         t1, s10, 29
                  beq          a2, s3, 294f
                  ori          s3, s7, 1482
277:              nop
                  andi         a6, a4, -1847
279:              sll          t4, s4, tp
                  xori         a0, s7, 341
                  xor          s7, tp, s11
                  beq          t3, t3, 301f
                  sltiu        s0, ra, 870
                  bne          s11, a3, 296f
                  sltiu        t6, s7, -1520
                  sltu         ra, s11, s10
                  ori          t3, s4, 6
                  sltu         s3, t0, a2
                  slti         s8, a0, 815
                  ori          sp, a3, 1284
                  add          gp, s10, s10
                  sltiu        sp, a6, -1128
                  sltu         t4, s7, gp
294:              blt          a1, zero, 301f
                  slli         s0, a1, 25
296:              auipc        t5, 119855
                  beq          s5, s5, 310f
                  sltu         s5, t0, a6
                  bge          s3, s11, 316f
                  nop
301:              sub          t6, s0, s6
                  srai         s11, a5, 2
                  bge          zero, a4, 314f
                  srli         s3, a4, 6
                  add          gp, s0, s10
                  ori          s8, s8, 164
                  sltiu        s9, s9, 1632
                  andi         s4, a0, 573
                  beq          s3, gp, 320f
310:              ori          s8, a2, 31
                  and          a0, a6, t4
                  sltu         t4, s8, a0
                  sra          sp, t4, t6
314:              nop
                  xor          t2, t5, t0
316:              srai         s5, s10, 7
                  sra          s11, s11, t5
                  bge          t4, a4, 331f
                  blt          sp, a7, 331f
320:              lui          s9, 194018
                  ori          a2, t2, 1830
                  srli         s5, s5, 31
                  beq          s4, a1, 336f
                  beq          tp, t0, 338f
                  la           sp, sub_1
                  slti         t4, a1, 1993
                  slti         ra, t4, 1416
                  auipc        zero, 147345
                  srai         a2, sp, 7
                  sub          s2, t6, t6
                  sra          s2, s7, a5
                  add          s8, s4, s10
                  addi         sp, sp, -771
                  and          t1, tp, zero
main_j1:          jalr         s4, sp, 772 #jump main -> sub_1
                  xori         a7, s2, 465
                  and          t2, s1, t6
                  sra          a2, a0, s7
                  beq          a3, t4, 339f
                  sub          a4, s6, s11
                  and          a6, s8, sp
331:              bge          t0, a0, 342f
                  xori         t0, zero, 1764
                  blt          t1, s3, 350f
                  sll          t3, zero, zero
                  slli         t1, a2, 19
336:              andi         s2, s6, 146
                  slt          tp, s0, t4
338:              sra          s4, t5, s0
339:              bne          s8, s0, 350f
                  slt          t1, a2, t4
                  sra          a2, s0, sp
342:              slt          a7, t6, gp
                  slt          sp, t6, gp
                  slt          t0, a5, tp
                  beq          s8, s2, 358f
                  nop
                  sra          s10, s4, tp
                  and          sp, s10, a4
                  lui          t4, 565285
350:              beq          gp, s2, 359f
                  lui          t6, 629628
                  and          s5, a2, t2
                  srai         s8, a3, 22
                  srli         gp, s6, 20
                  sltiu        t0, s0, 1308
                  lui          s8, 165672
                  sub          s5, s2, s2
358:              sll          a6, s11, s5
359:              or           s11, a0, s8
                  xori         tp, a2, 1042
                  and          t4, a0, a4
                  srai         s11, a6, 16
                  bge          s7, a3, 372f
                  blt          s6, t2, 367f
                  nop
                  andi         s7, t5, 866
367:              sub          a6, a2, s5
                  andi         gp, t2, -1276
                  andi         t4, ra, -1918
                  xor          t0, a0, s0
                  beq          ra, t6, 391f
372:              nop
                  bgeu         s6, a1, 390f
                  bgeu         t1, a5, 393f
                  or           s3, s7, a7
                  sltiu        tp, s4, -765
                  andi         a4, t0, 1383
                  sltiu        s11, s8, 808
                  slt          gp, a2, gp
                  bne          t5, a1, 391f
                  xor          a7, s9, t6
                  xori         sp, ra, -442
                  nop
                  srl          a2, sp, s8
                  slt          t6, a6, a6
                  bne          s2, a5, 390f
                  ori          a0, ra, -475
                  slt          s10, a7, s0
                  nop
390:              sra          sp, a4, s4
391:              sra          a7, s0, t2
                  sltiu        s5, a5, -1274
393:              lui          s10, 177264
                  srli         s9, tp, 20
                  and          gp, a1, a1
                  add          s11, a1, s11
                  srai         ra, s6, 15
                  bne          a2, t1, 407f
                  lui          s6, 249743
                  addi         t5, a7, -104
                  beq          a6, s1, 407f
                  bge          a7, s2, 413f
                  sub          a4, s9, a0
                  slt          ra, a0, a4
                  srli         s3, t3, 29
                  add          a3, a1, t0
407:              slti         sp, a1, -1448
                  andi         s5, s3, 1306
                  sra          t2, a5, tp
                  and          a0, s9, t4
                  sltu         s8, s8, s9
                  sra          s2, s7, s9
413:              xor          t6, t4, a7
                  slli         t6, a1, 3
                  bne          a3, t0, 435f
                  bne          t1, sp, 423f
                  sltu         a2, gp, s0
                  or           t6, s1, s6
                  slli         s0, a2, 6
                  addi         zero, a5, 1190
                  sltiu        a7, t3, -167
                  xor          gp, s11, t0
423:              bne          a7, s3, 442f
                  ori          t6, s5, -1076
                  nop
                  blt          s9, s0, 438f
                  sub          s11, a1, a6
                  srai         a4, s7, 19
                  sub          t6, s5, s10
                  srl          s5, zero, s6
                  auipc        t3, 622831
                  sltiu        a4, ra, 1021
                  nop
                  slti         s6, tp, -538
435:              ori          t4, s6, -1327
                  xori         s2, s0, -384
                  nop
438:              xori         s0, s9, 674
                  sra          s6, t2, s0
                  srli         s10, t3, 15
                  addi         a7, t6, 867
442:              nop
                  andi         t6, s4, -1991
                  sub          a0, s3, s5
                  nop
                  sll          a3, s7, tp
                  bgeu         s8, sp, 448f
448:              lui          s0, 903834
                  bgeu         gp, a2, 466f
                  or           t3, s9, tp
                  ori          s0, a3, 487
                  ori          t4, s4, 1156
                  auipc        a6, 299634
                  sra          s0, s11, s4
                  sll          a7, t0, ra
                  or           s10, t2, s9
                  sltiu        s8, t6, 349
                  blt          a2, s8, 465f
                  blt          s10, a4, 463f
                  bne          s2, a7, 474f
                  sub          t0, s9, a2
                  sub          s11, s11, gp
463:              bltu         a5, s1, 469f
                  sltu         ra, s4, s8
465:              or           t4, s5, a4
466:              bge          ra, s2, 475f
                  slti         s5, s8, 564
                  blt          s1, ra, 480f
469:              srl          tp, a3, s2
                  slli         s5, sp, 8
                  bge          s1, t1, 490f
                  srl          a3, a0, t2
                  sra          t1, s10, a5
474:              srli         s8, a6, 22
475:              slt          s3, t0, s7
                  sra          s0, s6, a5
                  xor          s6, s8, s9
                  beq          s11, a1, 492f
                  sra          a4, t1, t2
480:              srl          s3, sp, t6
                  blt          s3, s10, 492f
                  beq          s0, s6, 495f
                  add          sp, a5, tp
                  bne          t1, a7, 495f
                  nop
                  bgeu         t4, s11, 499f
                  bge          gp, a5, 507f
                  slli         a3, s2, 12
                  beq          s4, a1, 490f
490:              srl          t6, s0, a3
                  andi         a7, a7, 226
492:              xor          s3, s7, s5
                  xor          s4, s11, s2
                  bgeu         t1, t6, 501f
495:              add          t1, s3, t2
                  blt          s1, t6, 510f
                  sub          sp, a1, t3
                  slti         zero, s0, -692
499:              slti         gp, a0, -527
                  addi         s2, zero, -937
501:              slti         tp, t0, -1333
                  bgeu         a3, sp, 519f
                  beq          s11, a3, 507f
                  add          s2, s8, a4
                  auipc        a7, 590735
                  slt          s7, zero, s5
507:              add          sp, s6, t4
                  add          a6, s10, t3
                  andi         t0, a4, -599
510:              xor          t4, s2, s2
                  sltu         a0, s0, t4
                  andi         s10, t2, 1366
                  add          ra, t6, s11
                  bne          t3, ra, 531f
                  sltiu        s9, a6, -1474
                  add          s2, a4, s2
                  nop
                  nop
519:              bgeu         s9, t5, 532f
                  sltu         a6, a5, t4
                  bgeu         t3, t2, 524f
                  sltu         s2, gp, a3
                  xori         s2, a5, -905
524:              and          s11, zero, t0
                  sub          s9, t6, t1
                  sll          s9, s8, s2
                  bne          t2, t4, 538f
                  sltu         s7, t3, a6
                  sltu         tp, s1, s4
                  bne          ra, a6, 537f
531:              auipc        ra, 328385
532:              andi         t4, s8, -1051
                  slt          s10, s0, a1
                  slti         gp, t6, 1634
                  srl          a4, zero, s8
                  sra          s6, s4, sp
537:              bltu         s3, s5, 548f
538:              slti         s0, a3, 1861
                  and          t1, a6, t1
                  ori          s7, s6, 408
                  sra          zero, s11, t1
                  auipc        s9, 975990
                  addi         s2, s7, 656
                  slli         a3, t3, 25
                  srl          s10, sp, zero
                  sra          t3, s1, s5
                  bgeu         t2, s2, 566f
548:              sra          a2, a0, a3
                  ori          t0, s6, 1884
                  beq          s6, tp, 559f
                  xori         gp, s4, 1956
                  xor          t5, a4, a7
                  slti         s8, ra, -582
                  bne          s6, s8, 563f
                  bne          a1, zero, 566f
                  lui          s3, 609161
                  add          s4, t3, s3
                  srl          t3, a6, t2
559:              sll          sp, a0, s1
                  blt          a2, s8, 577f
                  sub          t4, s11, t2
                  bne          t4, s3, 574f
563:              beq          ra, tp, 567f
                  nop
                  srli         s5, a4, 6
566:              sub          t2, t4, tp
567:              bgeu         s11, t3, 587f
                  srai         t1, s7, 11
                  srai         s3, t6, 6
                  ori          s10, a1, -473
                  auipc        zero, 510731
                  sltiu        s3, t6, -1283
                  xor          s0, a0, s7
574:              add          t4, s8, t6
                  slli         s0, s2, 4
                  slti         s8, s7, 880
577:              bltu         sp, s7, 588f
                  beq          t1, a3, 589f
                  srl          a2, a6, a7
                  lui          s7, 186545
                  nop
                  srai         s9, s1, 27
                  sltu         s6, s3, t2
                  xor          ra, s10, t4
                  slli         a3, s5, 2
                  ori          s8, t3, 790
587:              addi         gp, a1, -610
588:              lui          t4, 379659
589:              nop
                  bgeu         t4, a5, 602f
                  srl          t3, ra, a6
                  or           s5, s5, zero
                  sltiu        t3, a6, -269
                  or           t3, tp, s9
                  sra          t0, t0, sp
                  sltu         s6, s3, t2
                  sltiu        t5, a3, -1218
                  addi         a3, t0, 1202
                  auipc        a6, 475771
                  sra          s11, a5, t5
                  add          ra, s8, s7
602:              xori         gp, tp, -1395
                  or           t2, t3, a7
                  srai         t0, s10, 23
                  beq          s10, s3, 618f
                  srai         t6, s5, 15
                  andi         sp, t0, -1548
                  sltiu        sp, a2, -2033
                  add          s5, s4, s1
                  and          sp, a1, s6
                  srli         s10, a3, 29
                  srli         t6, a4, 2
                  slt          a2, s0, zero
                  ori          s5, a3, 703
                  andi         t6, a3, -1121
                  add          t5, s2, s3
                  ori          s0, s0, -1610
618:              lui          s7, 88018
                  sra          s11, a0, s10
                  nop
                  and          a0, a5, a0
                  slt          t3, s6, a6
                  sltu         tp, a5, sp
                  srai         a0, s6, 7
                  slli         a4, sp, 31
                  add          tp, s4, a1
                  bgeu         a3, a4, 638f
                  add          ra, tp, a4
                  bltu         s8, gp, 648f
                  lui          s3, 869451
                  andi         gp, t1, -997
                  slti         t3, t4, 1125
                  andi         s0, sp, -18
                  bgeu         s3, s8, 645f
                  sltiu        a6, a3, -1364
                  slti         s7, t0, -816
                  auipc        s5, 1032809
638:              sub          tp, s4, s4
                  blt          gp, a4, 659f
                  xori         s4, s4, 845
                  or           t2, a1, a0
                  slt          s4, s5, s11
                  bge          t3, s5, 644f
644:              srai         s11, a0, 18
645:              ori          zero, gp, 294
                  srl          s10, a2, a2
                  beq          a1, s9, 666f
648:              slt          a0, t2, s6
                  xori         s0, sp, 1765
                  sub          t3, t5, a1
                  srli         gp, s9, 25
                  and          s3, t5, s6
                  and          a0, s6, s9
                  bge          ra, s10, 671f
                  srl          sp, t6, t6
                  sub          s6, gp, t4
                  srai         s0, t1, 19
                  lui          t5, 131735
659:              ori          sp, s11, 2040
                  bltu         a7, s7, 663f
                  auipc        t5, 286097
                  sll          tp, s8, t1
663:              nop
                  addi         t4, t2, 1421
                  srai         zero, t1, 2
666:              bgeu         s10, a0, 679f
                  sltiu        a3, s1, -1639
                  bgeu         s3, a3, 674f
                  ori          tp, s9, 962
                  beq          a2, s11, 681f
671:              ori          a3, s0, -2
                  addi         s5, s1, 1128
                  sll          t3, gp, a7
674:              beq          a0, a3, 681f
                  andi         s10, t5, -705
                  auipc        a7, 940183
                  xor          s3, a6, zero
                  slt          s7, s9, s11
679:              beq          s6, s11, 692f
                  addi         t4, a0, 657
681:              auipc        t6, 768038
                  beq          s7, gp, 696f
                  srli         a7, a4, 12
                  lui          t4, 585877
                  bne          s4, s4, 705f
                  bgeu         s7, t3, 697f
                  nop
                  nop
                  ori          t6, s5, 238
                  srl          ra, s2, t1
                  add          s5, s1, t3
692:              bne          t3, ra, 696f
                  andi         s2, a5, 636
                  blt          s10, s10, 705f
                  beq          t3, s0, 704f
696:              andi         s8, t1, 1311
697:              bgeu         t4, gp, 714f
                  ori          s11, a1, 1928
                  nop
                  srl          ra, s0, sp
                  sltiu        s4, s5, -1439
                  sll          s9, t6, ra
                  bne          s6, s6, 712f
704:              add          s9, a3, t3
705:              xori         tp, s4, 1678
                  andi         gp, gp, 625
                  slt          t0, t3, a5
                  sltiu        t2, s2, -1788
                  beq          t2, a4, 721f
                  andi         gp, ra, -1281
                  sll          a2, a1, t6
712:              or           s11, t3, s3
                  add          a7, t0, a2
714:              auipc        t0, 863476
                  add          a0, t4, a0
                  sub          t0, s6, s1
                  xori         t0, a0, 792
                  bgeu         s8, a6, 722f
                  and          t5, t6, ra
                  sub          t1, s5, s10
721:              sltiu        s11, a3, 1486
722:              lui          a0, 166637
                  sll          zero, s11, a6
                  auipc        s7, 533472
                  slt          t4, s1, s0
                  andi         s7, a7, 1753
                  sub          sp, a4, t3
                  or           s3, ra, s8
                  sltiu        t5, a0, -1036
                  auipc        s7, 861536
                  xori         ra, a0, -1292
                  sll          s9, a7, a5
                  bgeu         a3, t5, 740f
                  bge          s1, a4, 748f
                  nop
                  addi         a7, t0, -369
                  bge          a0, s2, 746f
                  auipc        t2, 765737
                  andi         sp, s8, -366
740:              blt          s9, t3, 757f
                  sra          a0, s9, s10
                  bne          t0, s9, 746f
                  srl          a3, t4, t6
                  bne          t3, s8, 764f
                  srai         s8, t5, 23
746:              xori         t4, a0, -1960
                  bgeu         s9, a4, 764f
748:              srli         tp, s11, 17
                  sub          a4, s0, a6
                  beq          s11, s6, 763f
                  xori         s9, s11, -638
                  addi         s3, s9, 2027
                  beq          t1, s1, 770f
                  bne          a1, a6, 768f
                  lui          zero, 102805
                  auipc        s11, 421047
757:              and          s4, gp, s0
                  add          t3, t5, s10
                  bne          t6, a0, 770f
                  auipc        s2, 625457
                  bge          a7, a2, 772f
                  sltiu        t3, s11, -1768
763:              ori          t2, s0, 1609
764:              srl          t0, s4, s3
                  addi         t1, s3, -1363
                  sub          t4, ra, sp
                  lui          sp, 125683
768:              blt          s3, a5, 771f
                  sra          s0, s9, s5
770:              beq          s7, s11, 774f
771:              sltu         t2, a1, a5
772:              srai         t2, t6, 23
                  sltiu        a7, s2, -925
774:              xori         s9, a4, 271
                  sub          t2, ra, ra
                  sltu         a4, s1, a6
                  sra          tp, a1, ra
                  addi         a0, s1, 1304
                  sltu         t0, sp, a3
                  srl          a6, s3, s0
                  bne          a4, s9, 790f
                  slti         a7, t1, 1784
                  sub          t3, s7, s6
                  auipc        a3, 449138
                  blt          t5, t0, 797f
                  and          s9, s8, ra
                  srli         s2, a3, 7
                  xor          s0, a3, t1
                  addi         s6, a4, 174
790:              and          gp, t2, s1
                  bne          a6, t5, 798f
                  bge          ra, ra, 809f
                  srli         s9, t4, 18
                  lui          a6, 594426
                  nop
                  slli         a4, s1, 28
797:              add          tp, t3, s1
798:              or           s3, t2, a5
                  or           gp, gp, s2
                  auipc        t3, 961288
                  blt          t1, ra, 812f
                  and          s3, t6, t3
                  slt          sp, s9, t2
                  xori         t0, tp, 1481
                  xor          sp, s11, t4
                  andi         s0, a4, 1394
                  sub          t4, tp, s3
                  addi         tp, a6, -1113
809:              srai         t5, a1, 24
                  srli         s4, s2, 19
                  and          t2, a2, a5
812:              srl          s7, gp, s7
                  sltiu        t5, s11, 1796
                  and          t6, t3, a2
                  beq          t6, sp, 824f
                  beq          a5, s10, 823f
                  and          s0, s8, a6
                  sltiu        s3, a3, -1165
                  addi         t1, zero, 345
                  sub          s9, s6, s2
                  sll          t0, s11, s6
                  srl          s0, a7, t2
823:              blt          s11, sp, 843f
824:              xori         t4, t6, 1393
                  beq          t6, s4, 839f
                  srl          ra, ra, a7
                  srai         t1, a5, 16
                  xori         s3, s8, -984
                  sra          a6, tp, s2
                  ori          a6, s8, -277
                  srli         zero, s9, 19
                  slli         s10, s8, 14
                  sll          t2, ra, s9
                  sll          t0, a5, t3
                  sll          t5, ra, t2
                  srli         a7, t1, 31
                  slt          a7, a7, s4
                  add          s0, zero, tp
839:              slti         sp, s0, -232
                  srl          a7, s0, a0
                  nop
                  sltiu        s4, s1, 672
843:              beq          gp, s5, 862f
                  srl          tp, s7, tp
                  add          s8, s1, a6
                  auipc        t1, 1028383
                  bgeu         t2, a5, 859f
                  sub          ra, s7, zero
                  slli         a2, s9, 26
                  bne          s1, zero, 861f
                  slt          a6, t1, a3
                  ori          ra, zero, -968
                  slli         s7, a2, 24
                  xor          t4, ra, zero
                  addi         t1, s4, -910
                  sltiu        s6, t3, -229
                  beq          a1, t4, 863f
                  and          s4, a1, ra
859:              slti         a7, a2, 143
                  blt          a2, s7, 861f
861:              bgeu         s1, tp, 874f
862:              auipc        t4, 892138
863:              slli         s9, a3, 14
                  sub          t5, t2, tp
                  add          s8, t1, t1
                  sltu         a6, tp, a2
                  auipc        a4, 1013845
                  auipc        s4, 5090
                  beq          zero, s9, 882f
                  sra          a7, s6, t0
                  add          ra, t1, a2
                  srl          s9, s5, s8
                  srai         a4, a4, 3
874:              sub          t4, s11, s10
                  bne          t6, t2, 886f
                  lui          s2, 379859
                  nop
                  auipc        s10, 894170
                  sltiu        a2, s2, 337
                  xor          ra, s0, a4
                  ori          t1, zero, 1185
882:              sltu         a2, a0, zero
                  xor          a3, a6, s3
                  slti         t6, a7, -791
                  add          s7, s5, sp
886:              sra          ra, s11, s8
                  beq          tp, s2, 906f
                  add          a6, a7, s7
                  addi         s3, a5, 590
                  or           s10, s11, t3
                  nop
                  slt          a4, ra, t4
                  or           s8, a4, s2
                  auipc        s8, 871360
                  sltu         s5, ra, t1
                  add          s0, s10, s3
                  addi         s7, a7, -1572
                  add          a2, a7, tp
                  beq          s8, gp, 908f
                  bgeu         s11, s7, 911f
                  srai         s2, sp, 17
                  bltu         a1, a5, 913f
                  bltu         s6, t4, 910f
                  slti         s5, a7, 1075
                  sub          a7, a6, a4
906:              sltu         t6, t6, a1
                  nop
908:              bne          s3, s11, 919f
                  xori         a2, a7, -1107
910:              sub          zero, s3, s1
911:              bgeu         s2, t2, 928f
                  bge          t3, s3, 926f
913:              srli         tp, t5, 3
                  sltiu        a6, a6, 1761
                  beq          s2, s8, 922f
                  srli         t4, s6, 10
                  nop
                  lui          s5, 943220
919:              slli         s4, tp, 26
                  bltu         a1, a0, 940f
                  bltu         s4, sp, 940f
922:              sltu         s5, s2, t1
                  bltu         a7, tp, 943f
                  srai         s4, s9, 22
                  sltiu        t0, t5, 1161
926:              bltu         s5, a7, 943f
                  bltu         a6, a5, 936f
928:              xori         a0, s0, -1884
                  nop
                  slli         s11, a4, 6
                  sub          s10, zero, t3
                  blt          a4, s5, 943f
                  beq          a2, s9, 952f
                  srli         s10, a1, 26
                  beq          a1, t1, 936f
936:              beq          a7, s10, 950f
                  andi         t2, s11, -503
                  beq          t0, sp, 949f
                  sll          a3, t6, s11
940:              srai         t4, s2, 3
                  slli         s7, s5, 4
                  addi         s4, s7, -327
943:              sra          s7, s7, t2
                  bgeu         t6, s2, 948f
                  srli         zero, sp, 27
                  xor          s4, a4, a0
                  srai         t5, t6, 18
948:              slli         s4, zero, 27
949:              srl          s8, a5, t3
950:              lui          a3, 846974
                  srai         s3, ra, 6
952:              ori          s11, t6, -965
                  or           tp, a1, s6
                  srli         t2, t3, 9
                  sltiu        t1, a5, -966
                  ori          t4, t2, -1563
                  ori          a0, tp, 31
                  bgeu         t2, s2, 961f
                  sra          s8, s11, a6
                  and          t6, s6, s10
961:              sub          s5, a0, s4
                  slli         s4, a3, 15
                  slli         sp, a1, 31
                  xori         zero, s6, 1865
                  sll          a6, s7, s8
                  sll          s0, s3, gp
                  sll          sp, tp, s5
                  beq          a3, a7, 974f
                  xor          t4, t0, a7
                  bltu         s9, tp, 979f
                  addi         gp, gp, -261
                  xori         s9, t4, -1129
                  sll          a2, s2, gp
974:              add          ra, a3, t4
                  xori         t4, t1, 1304
                  srli         s4, s2, 27
                  bgeu         t6, gp, 989f
                  nop
979:              sltu         ra, a5, t1
                  sll          s4, t2, t6
                  addi         gp, s10, -1687
                  or           t0, ra, t1
                  sub          s5, a4, t5
                  and          s8, s2, s4
                  slti         zero, s8, 583
                  sltu         s4, a2, sp
                  lui          a6, 679000
                  ori          s7, a4, -1006
989:              or           s4, a3, s8
                  sra          s11, s0, s9
                  ori          s3, s8, 794
                  bge          t1, a1, 1009f
                  xor          s8, sp, a0
                  slli         s10, a1, 12
                  auipc        s8, 550685
                  and          s11, a4, a1
                  bge          t3, s8, 1010f
                  and          s4, s4, s5
                  beq          t4, a2, 1003f
                  bltu         s4, s1, 1013f
                  bgeu         a3, a5, 1014f
                  srli         s11, s5, 26
1003:             add          s5, s11, zero
                  slt          s11, s1, s11
                  slti         a4, a6, 173
                  auipc        t5, 316638
                  xori         a0, a2, -581
                  sll          t6, t2, s11
1009:             ori          tp, s8, -995
1010:             sltu         s9, zero, s6
                  add          t6, a7, s6
                  sra          a7, s3, zero
1013:             beq          gp, t6, 1025f
1014:             sra          s2, s6, s1
                  nop
                  beq          s8, s0, 1027f
                  srai         a0, s4, 17
                  srl          s3, a2, s9
                  add          s7, t3, s5
                  lui          a3, 586362
                  beq          s4, a4, 1030f
                  sltu         s2, s4, a6
                  bge          t6, t5, 1034f
                  srli         t2, ra, 23
1025:             srli         t4, s9, 4
                  bltu         ra, a0, 1035f
1027:             ori          zero, s4, 2039
                  sll          t5, t2, a5
                  slti         s0, s8, -657
1030:             xori         s4, a6, -1097
                  auipc        tp, 303944
                  xori         a3, s8, 1097
                  add          ra, s3, t5
1034:             ori          a6, s10, 1583
1035:             beq          s11, s10, 1048f
                  slli         s5, sp, 8
                  sra          a6, a5, t6
                  xori         a4, s8, 1267
                  slt          a7, a3, gp
                  bge          s0, s11, 1049f
                  sltiu        a0, a1, 1044
                  beq          s6, zero, 1049f
                  srl          s10, a2, t1
                  sra          a7, s3, s1
                  nop
                  slli         t3, ra, 26
                  blt          s6, a1, 1049f
1048:             sll          a2, s2, a0
1049:             sltu         t3, s1, sp
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            addi         a5, a5, -64
                  sw           s4, 4(a5)
                  slli         tp, a2, 3
                  xor          t1, s1, t6
                  lui          a7, 729460
                  lui          gp, 480
                  add          t6, s7, s9
                  la           sp, region_0+384 #start riscv_load_store_rand_instr_stream_0
                  srli         s5, t0, 1
                  srai         s8, s11, 5
                  auipc        t5, 925743
                  sltiu        t4, t3, 1476
                  sh           t4, 38(sp)
                  sb           s1, 49(sp)
                  andi         s10, t4, -835
                  andi         gp, s1, -462
                  sltiu        s7, t2, 55
                  slli         s10, t1, 11
                  lbu          s5, -27(sp)
                  sb           t1, -15(sp)
                  lbu          s4, 49(sp)
                  slti         t0, s3, 1590
                  sb           s9, 45(sp)
                  sb           ra, -5(sp)
                  lbu          a4, -3(sp)
                  andi         s10, a5, -742
                  sltiu        s9, s4, -1144
                  add          s8, a4, zero
                  sb           a5, 1(sp)
                  lb           t3, 1(sp)
                  lw           t1, 12(sp)
                  srai         s11, a3, 15
                  lw           t6, -20(sp)
                  srl          a0, s0, s7
                  lh           s10, -44(sp) #end riscv_load_store_rand_instr_stream_0
                  sra          s0, s10, s4
                  xor          s2, t1, t1
                  andi         s10, t3, 859
                  bltu         s11, s0, 9f
                  bge          t5, a2, 20f
                  sra          s5, s11, sp
                  ori          gp, t0, 474
                  xori         a4, t2, 516
                  slti         sp, a5, 213
9:                xor          s0, t6, t0
                  add          a7, a0, t3
                  blt          t4, t5, 23f
                  slt          s11, t4, t6
                  slli         s2, s9, 4
                  slti         zero, s11, -24
                  srai         t0, t5, 27
                  lui          s4, 984131
                  srai         t0, a5, 3
                  nop
                  slti         a6, ra, 1573
20:               xori         t6, t6, -226
                  or           s5, gp, s5
                  blt          s3, s9, 25f
23:               slti         a2, ra, 2047
                  slli         s9, ra, 26
25:               srli         s2, tp, 13
                  bne          s9, sp, 29f
                  sra          tp, s5, a5
                  ori          ra, a0, -1345
29:               beq          a0, t1, 31f
                  xor          t2, s4, a5
31:               andi         t3, a2, -394
                  bne          sp, t5, 50f
                  sltiu        tp, a4, -667
                  auipc        t4, 64989
                  slt          a4, s11, a0
                  sra          gp, s8, t5
                  sltu         zero, a4, t5
                  ori          t1, zero, 1525
                  sll          t0, s11, tp
                  sub          s0, s9, a3
                  srai         s11, a1, 24
                  xori         s10, s5, -87
                  sra          a3, t2, s4
                  bne          t3, a7, 64f
                  ori          s4, a1, 874
                  xor          a6, a6, zero
                  srl          s11, tp, a4
                  srai         a0, a6, 17
                  srli         s9, a5, 6
                  la           s11, sub_10
                  slli         gp, s2, 17
                  and          a0, a2, t0
                  sltiu        tp, t0, -324
                  addi         s11, s11, 612
                  lui          t1, 135744
                  slt          a2, gp, a3
                  andi         a6, t1, -1086
                  slti         t6, ra, 1114
                  srli         t2, s0, 23
sub_6_j10:        jalr         s4, s11, -612 #jump sub_6 -> sub_10
50:               addi         s5, s2, 1839
                  sub          t0, t1, s6
                  or           t2, a1, a4
                  sra          t4, s5, s3
                  add          a4, s5, s4
                  srai         a7, a2, 8
                  sub          s8, t4, sp
                  beq          s3, t3, 69f
                  lui          s2, 271801
                  slti         s6, zero, -1693
                  srl          a6, s11, t0
                  xor          t5, a0, a3
                  srli         a2, t5, 23
                  sra          t1, tp, t5
64:               blt          gp, s9, 77f
                  srai         t2, s9, 12
                  sltu         a0, a1, s0
                  slti         t2, a7, 39
                  addi         a0, a7, -1142
69:               sub          s8, s11, tp
                  and          t4, a7, t0
                  lui          t1, 729487
                  lui          a3, 685547
                  addi         t3, a0, 1431
                  auipc        zero, 180412
                  nop
                  sra          t4, t1, a4
77:               bltu         a6, t4, 91f
                  or           a2, tp, s6
                  bltu         s3, s7, 98f
                  bltu         s5, zero, 82f
                  or           t4, t6, s0
82:               addi         zero, t6, 1725
                  sltu         a3, a1, s0
                  slli         s9, gp, 6
                  addi         s8, s6, 1275
                  slli         t5, s8, 29
                  srl          s4, a6, t5
                  sltu         s0, s11, ra
                  xori         tp, s1, -650
                  slti         a4, t2, -1434
91:               srl          sp, a7, t3
                  bne          a5, t4, 102f
                  lui          s5, 593660
                  bne          t2, t3, 111f
                  nop
                  bne          s3, t1, 115f
                  sltiu        s5, s5, 1174
98:               nop
                  sub          gp, s1, s10
                  or           s4, a5, gp
                  add          s0, s11, a1
102:              srl          sp, gp, t1
                  xor          ra, a2, a1
                  sra          a7, gp, s4
                  sltiu        s2, t3, 1852
                  xor          t1, t5, zero
                  bge          ra, ra, 125f
                  or           s3, s6, a2
                  bltu         t5, t6, 114f
                  slli         t6, ra, 4
111:              bgeu         s7, a1, 127f
                  sll          a7, a4, a5
                  xor          s5, a4, a3
114:              sub          t4, s9, s3
115:              and          t0, tp, s7
                  slti         t3, s10, 1263
                  or           a4, s4, s9
                  sll          s4, s5, tp
                  sltiu        s11, t0, -1217
                  beq          t3, t0, 137f
                  or           gp, s3, s10
                  sll          s3, s4, sp
                  auipc        s7, 113553
                  sltu         a7, t0, t3
125:              sub          t6, t5, s6
                  and          a2, s6, s0
127:              sll          t0, t3, s0
                  sra          zero, gp, a6
                  sub          a7, s1, ra
                  bltu         t3, s5, 144f
                  slli         t5, a1, 28
                  and          gp, s8, s6
                  srl          gp, tp, s6
                  addi         s10, t4, 1950
                  slt          t3, a4, t0
                  srai         t5, s4, 21
137:              sub          s3, s3, s0
                  bne          gp, ra, 148f
                  srai         t6, s5, 16
                  sra          ra, a5, s6
                  sltu         a4, a4, gp
                  sltu         s8, ra, a5
                  and          tp, t4, a3
                  la           s10, sub_9
                  auipc        t6, 84804
                  addi         s10, s10, -467
                  auipc        s3, 625689
                  sra          s4, a3, s5
sub_6_j9:         jalr         s4, s10, 467 #jump sub_6 -> sub_9
                  or           a7, s9, a1
                  add          a6, a3, s5
                  addi         t5, s5, 316
144:              nop
                  slti         t0, s7, -1425
                  srai         t3, s1, 24
                  srli         s8, a7, 6
148:              slti         a4, t4, -948
                  or           zero, s3, a0
                  andi         a3, t5, 386
                  slti         ra, s10, 280
                  sub          ra, t3, a7
                  sltu         a3, s0, a1
                  sltu         s4, sp, a6
                  bge          s0, t6, 171f
                  xori         sp, t4, -230
                  beq          a3, t4, 158f
158:              srli         s2, a0, 4
                  ori          sp, s2, 765
                  slli         a6, s2, 26
                  and          s6, s6, zero
                  beq          t1, sp, 179f
                  auipc        t1, 762472
                  bne          tp, a1, 165f
165:              xori         t2, t6, 1012
                  slt          s11, t4, s11
                  and          tp, a3, s5
                  addi         sp, s7, -1560
                  sra          gp, a4, s1
                  slti         s2, a5, 724
171:              bge          s1, a0, 187f
                  auipc        s10, 176977
                  addi         s3, t4, 1777
                  bltu         a7, s6, 194f
                  and          s10, t2, t6
                  slli         gp, s9, 12
                  or           s3, s0, t2
                  beq          t3, tp, 190f
179:              bgeu         t1, gp, 188f
                  bge          s11, t1, 199f
                  srli         a4, s6, 1
                  sub          t6, s2, ra
                  srai         a7, t1, 21
                  srl          sp, a4, gp
                  add          t6, a5, a6
                  slt          t2, gp, s2
187:              auipc        a3, 516116
188:              xori         sp, s8, 1739
                  lui          a2, 945928
190:              slt          t0, a4, a2
                  bne          a5, s8, 205f
                  sltiu        t5, t0, -1084
                  sltiu        s5, s6, 1368
194:              auipc        ra, 703208
                  blt          s0, t0, 211f
                  xor          t0, a5, s1
                  srai         s10, a3, 25
                  xor          t3, t3, s10
199:              add          s2, s4, a6
                  bge          t2, a1, 218f
                  slt          s4, ra, a5
                  andi         a4, t4, 413
                  slti         s10, t5, -1097
                  srli         t1, s2, 1
205:              srai         s2, a2, 0
                  lui          s2, 83172
                  srli         t6, a1, 28
                  blt          a5, a0, 213f
                  slt          t5, a7, sp
                  sub          s6, s1, t2
211:              beq          s6, a7, 222f
                  srl          t4, a5, t5
213:              sra          s3, t5, a2
                  blt          t5, t1, 222f
                  bgeu         s6, t5, 222f
                  sub          s11, a6, t1
                  bne          t6, a1, 222f
218:              beq          ra, s5, 222f
                  blt          t4, s4, 222f
                  sltiu        t1, t5, 208
                  slti         t3, t6, 1886
222:              andi         a0, t6, -1748
                  sub          sp, s9, a5
                  lw           s4, 4(a5)
                  lui          s3, 490141
                  sltu         s7, a1, t6
                  xor          t6, a4, t0
                  srl          gp, s7, s11
                  sltiu        a4, s3, -1387
                  addi         a5, a5, 64
                  slt          gp, a4, zero
                  lui          ra, 424944
                  slt          zero, a4, s6
289:              addi x4, x20, 1
289:              jalr x4, x4, 0
sub_1:            bgeu         a4, a5, sub_1_stack_p
sub_1_stack_p:    addi         a5, a5, -44
                  slli         s3, s6, 0
                  addi         ra, t3, -1136
                  sw           s4, 4(a5)
                  sll          t3, s10, gp
                  la           s9, region_1+1247 #start riscv_load_store_rand_instr_stream_2
                  sb           t5, 14(s9)
                  sh           a6, -13(s9)
                  lb           s8, 8(s9)
                  ori          s5, s0, -1431
                  lbu          a3, -12(s9)
                  lbu          t5, 1(s9)
                  slt          a0, sp, t2
                  and          t1, a7, s1
                  lhu          tp, -9(s9)
                  lw           a7, -15(s9)
                  lb           s10, -16(s9)
                  or           s3, s10, t6
                  srli         s2, s5, 20
                  add          s3, a6, s4
                  sb           t5, -13(s9)
                  sub          t0, s1, t3
                  slli         s11, t5, 31
                  lbu          a3, -12(s9)
                  slti         s5, a3, -41
                  sw           s6, -7(s9)
                  lb           a4, 16(s9)
                  sw           t1, -15(s9)
                  lb           a0, 6(s9)
                  lbu          t5, -6(s9)
                  sb           a5, -12(s9)
                  lbu          s8, -14(s9)
                  ori          t4, a7, -1493
                  lw           a3, -3(s9)
                  lbu          a3, -16(s9)
                  lb           s8, -10(s9)
                  xor          s10, zero, s1
                  lui          s8, 1037325
                  sub          t5, a1, a3
                  lw           t5, -15(s9)
                  lbu          zero, -8(s9) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+1768 #start riscv_load_store_rand_instr_stream_5
                  add          s6, s6, s6
                  srl          tp, t2, a3
                  lb           s6, -161(t5)
                  sh           a2, -1174(t5)
                  lh           s9, -1272(t5)
                  sw           a1, -440(t5)
                  sltu         s9, s5, a2
                  sh           a5, -816(t5)
                  srli         s2, a4, 27
                  slt          s10, s8, t4
                  lb           t0, -1405(t5)
                  sltu         s6, s6, a5
                  srl          s7, s2, gp
                  and          a6, s0, t2
                  nop
                  sb           a7, -399(t5)
                  lbu          gp, 166(t5)
                  sra          tp, s6, s0
                  sll          t2, t2, tp
                  sb           s6, -51(t5)
                  lbu          s9, 198(t5)
                  and          s7, a4, s7
                  xori         sp, t6, -720
                  sltiu        ra, a0, -476
                  lb           s10, -1279(t5)
                  sh           a0, -138(t5)
                  sltu         s7, s6, s6
                  sltu         t3, a7, t5
                  lbu          s3, -1673(t5)
                  sll          zero, ra, s4
                  sb           s1, -1638(t5)
                  lw           s6, 112(t5)
                  nop
                  auipc        s8, 237123
                  or           t1, s0, ra
                  and          a2, s3, a7
                  auipc        gp, 953363
                  or           s3, t5, a3
                  lhu          a6, -1516(t5)
                  sra          sp, a7, s7
                  lh           t6, -1314(t5)
                  lw           s10, -716(t5)
                  lbu          a7, -685(t5)
                  sb           sp, -141(t5)
                  sb           a6, -97(t5)
                  lb           a3, -1218(t5)
                  lb           s4, -1235(t5)
                  sb           s6, -1434(t5)
                  slti         s8, s8, 117
                  auipc        t0, 975358
                  lb           a7, -1665(t5)
                  lb           a6, -145(t5) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+26 #start riscv_load_store_rand_instr_stream_0
                  sh           a4, 150(sp)
                  addi         a2, a5, -423
                  sltu         t4, a7, t5
                  nop
                  sw           s9, 230(sp)
                  slt          a0, t4, s10
                  sb           s1, 51(sp)
                  lb           t1, -5(sp)
                  srl          t0, ra, t5
                  auipc        s5, 163216
                  sra          s7, a5, s4
                  lbu          s0, 96(sp)
                  lbu          a3, 229(sp)
                  lbu          zero, -1(sp)
                  sb           s6, 241(sp)
                  sh           a5, 150(sp)
                  sw           s1, 98(sp)
                  or           s4, a4, a5
                  sll          t0, a5, a1
                  sh           t2, 106(sp)
                  sltiu        t0, ra, 613
                  sra          t1, s10, t3
                  xori         a4, a1, -136
                  auipc        t3, 606020
                  sub          t0, s2, gp
                  lbu          s4, 127(sp)
                  sh           a7, 188(sp)
                  lbu          s7, -1(sp)
                  lb           a3, 26(sp)
                  lb           s5, 165(sp)
                  lb           s3, 208(sp)
                  sb           s6, 72(sp)
                  sb           s7, 143(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_0+1314 #start riscv_load_store_rand_instr_stream_4
                  sltu         t2, t5, s10
                  andi         s6, sp, 1458
                  sb           tp, -12(a0)
                  srl          t3, s4, gp
                  srli         t4, tp, 18
                  add          a6, tp, a6
                  lbu          t5, 16(a0)
                  addi         a3, s0, -308
                  sh           ra, 8(a0)
                  lh           s7, 4(a0)
                  lb           s10, -7(a0)
                  lb           s7, 15(a0)
                  or           s8, a3, a3
                  lhu          t1, 14(a0)
                  sub          zero, s3, t2
                  sh           s9, -12(a0)
                  xori         s5, s3, 537
                  sb           gp, 8(a0)
                  sll          a3, ra, sp
                  sb           s5, -15(a0)
                  slti         a4, tp, -468
                  addi         s5, a7, 57
                  lui          t1, 880900
                  lb           t4, 11(a0)
                  sb           s5, -13(a0)
                  lb           s4, -1(a0)
                  lbu          a3, 8(a0)
                  srli         s9, t5, 19
                  srli         s11, a6, 8
                  lbu          gp, -5(a0)
                  lhu          ra, 2(a0)
                  sw           t2, 10(a0)
                  srli         tp, t0, 0
                  or           t1, s5, s10
                  sub          s4, s0, a5
                  add          t2, a4, s5
                  addi         a2, s1, -1061
                  sb           a0, -5(a0)
                  sb           s0, 10(a0)
                  sb           a3, 2(a0)
                  lbu          a2, 9(a0)
                  xori         s7, a5, -919
                  sb           t1, 16(a0)
                  srai         tp, a4, 16
                  sh           s1, -8(a0)
                  lhu          a7, 8(a0)
                  ori          s4, s2, 212
                  or           a6, t6, zero
                  lb           s10, -13(a0)
                  lbu          s9, -3(a0)
                  or           t1, t6, sp
                  addi         s6, t4, 82
                  add          s8, tp, sp
                  sll          zero, t5, s8
                  lbu          t1, -11(a0) #end riscv_load_store_rand_instr_stream_4
                  la           gp, region_0+74 #start riscv_load_store_rand_instr_stream_3
                  ori          s4, ra, -1891
                  lhu          a3, 22(gp)
                  sw           zero, -62(gp)
                  sb           s10, -50(gp)
                  slli         zero, s1, 31
                  addi         a6, s0, -407
                  lw           ra, -38(gp)
                  sll          s7, a5, a4
                  lh           t5, -42(gp)
                  sll          s0, a1, s9
                  srai         s9, a1, 29
                  sll          s10, t1, t0
                  srli         t4, t5, 31
                  lbu          s9, 55(gp)
                  or           a6, t2, t6
                  sb           ra, 51(gp)
                  sh           t1, -26(gp)
                  sb           s4, -51(gp)
                  slt          a7, a7, t5
                  srli         a3, gp, 7
                  lh           t4, -30(gp)
                  sb           s0, -13(gp)
                  xor          zero, a1, a3
                  lb           t0, 57(gp)
                  ori          t3, t3, 1570
                  sltiu        a3, t3, 1766
                  sub          t0, t4, ra
                  sltu         tp, gp, ra
                  sltiu        a2, t4, 37
                  sll          s4, s0, t4
                  ori          s5, gp, -164
                  sltiu        s9, zero, -311
                  sh           a1, 8(gp)
                  srl          s9, s11, a6
                  xori         tp, s7, 1372
                  and          a0, t3, s7
                  srl          t5, a7, ra
                  lbu          t4, -44(gp)
                  sub          a0, s2, s1
                  srai         ra, a0, 16
                  slti         s6, zero, -481
                  lbu          s6, -14(gp)
                  sll          t4, s1, a0
                  xori         a4, s5, -1290
                  slt          t1, a1, s11
                  sh           ra, -48(gp) #end riscv_load_store_rand_instr_stream_3
                  and          a7, a4, a4
                  bltu         s2, sp, 20f
                  auipc        gp, 572208
                  lui          t2, 262638
                  bne          a5, a0, 13f
                  auipc        a4, 190965
                  nop
                  srli         s7, s1, 18
                  bge          s7, t1, 15f
                  bne          t1, s0, 16f
                  auipc        s2, 426718
                  nop
                  srai         s3, t2, 5
13:               sra          a0, s0, t5
                  sltu         t6, tp, a3
15:               sll          s4, a1, a2
16:               sub          tp, t0, t3
                  and          a4, ra, t5
                  beq          tp, t0, 31f
                  addi         s0, a5, -1603
20:               slt          a4, sp, s11
                  slti         s0, zero, 2004
                  lui          sp, 134441
                  addi         t2, zero, 259
                  bne          t1, t2, 40f
                  add          gp, t0, s0
                  srl          s5, t4, s4
                  sub          s2, a2, tp
                  sltiu        s8, t4, -385
                  bne          s2, s5, 33f
                  xori         t4, t0, -310
31:               bltu         a7, s6, 47f
                  srai         ra, s0, 28
33:               nop
                  lui          s8, 687088
                  sltu         t1, s11, s8
                  or           gp, a3, gp
                  sltu         s7, zero, s3
                  sra          t3, tp, a2
                  bge          s6, s8, 51f
40:               bne          a6, ra, 48f
                  bne          t5, s8, 49f
                  bne          a5, s3, 50f
                  slti         ra, a4, -422
                  andi         a0, s1, 1718
                  bltu         a1, a4, 56f
                  sltiu        t1, s11, 1547
47:               sra          s8, s11, t6
48:               bne          a1, gp, 55f
49:               bgeu         s2, tp, 62f
50:               srl          s9, a0, t0
51:               bgeu         a7, gp, 68f
                  beq          a3, s11, 71f
                  slti         s6, sp, -890
                  addi         s8, a7, 574
55:               sltiu        s10, s10, -355
56:               auipc        a2, 608238
                  bgeu         a1, s8, 60f
                  slli         gp, s9, 29
                  slli         a7, s7, 17
60:               sll          s0, a6, s8
                  bne          s7, sp, 67f
62:               xor          a0, s7, s9
                  srli         s2, a7, 9
                  slt          s9, a4, s3
                  addi         s9, t5, -285
                  xor          a6, s7, a2
67:               and          ra, a4, s9
68:               and          s3, s4, a7
                  sltu         tp, s1, a6
                  auipc        t3, 1026714
71:               add          t0, s11, s0
                  or           t2, s7, gp
                  bltu         t1, t4, 91f
                  blt          s3, t5, 82f
                  or           t3, a4, t4
                  nop
                  sll          zero, s11, a0
                  blt          s5, a4, 92f
                  bne          s1, t6, 85f
                  xori         a0, ra, -1142
                  and          a4, tp, a7
82:               nop
                  andi         s5, s4, 1689
                  add          s11, t5, s8
85:               add          t1, a7, s0
                  xori         ra, a2, 562
                  sub          ra, a0, s10
                  sltu         s4, a3, tp
                  xor          ra, ra, t5
                  beq          sp, s7, 107f
91:               sll          a7, t0, t0
92:               slti         a6, s0, -273
                  sll          a2, tp, s8
                  ori          s8, s5, -1892
                  xor          s0, a7, t6
                  blt          t3, s3, 116f
                  srli         tp, s3, 14
                  bge          s1, s6, 101f
                  bge          a4, a6, 116f
                  srli         s3, t5, 4
101:              slli         s8, t6, 14
                  addi         t1, a4, -1692
                  blt          ra, t3, 110f
                  xor          zero, a5, t4
                  srli         s4, s2, 13
                  nop
107:              lui          a0, 250839
                  auipc        s9, 250257
                  bne          ra, s7, 126f
110:              sltiu        s8, t0, -125
                  and          s2, s10, t2
                  or           t4, s4, s5
                  sltu         a0, a0, s4
                  sll          t4, sp, a3
                  xor          t4, tp, s1
116:              slt          t2, t3, a5
                  srli         t5, t6, 0
                  andi         a2, s8, 27
                  lui          s5, 210257
                  sltiu        t0, t3, -264
                  andi         a0, gp, 1329
                  beq          a3, a0, 135f
                  sra          s0, t2, s10
                  slli         a7, a1, 0
                  xori         s2, s9, 1489
126:              sltiu        zero, s0, -1585
                  srli         zero, t3, 23
                  or           s6, a1, a5
                  auipc        a0, 734752
                  blt          s3, a4, 138f
                  and          s7, s6, t0
                  lui          t4, 704111
                  srli         a3, sp, 27
                  srl          s11, ra, a5
135:              beq          s0, a2, 154f
                  and          t2, a0, s11
                  sltu         s3, s5, t6
138:              xori         s10, s1, 1407
                  blt          t1, tp, 155f
                  ori          t5, tp, 291
                  sub          tp, t0, a6
                  srai         s11, s3, 20
                  auipc        a4, 732938
                  lui          s9, 790558
                  bne          sp, t0, 154f
                  add          a6, gp, a7
                  or           a6, s7, s0
                  srli         s8, s2, 18
                  ori          t0, tp, -1061
                  bge          gp, s2, 157f
                  xor          s5, t5, s8
                  srai         s3, a2, 18
                  sub          a2, a2, s0
154:              slt          s7, s8, ra
155:              xor          sp, s11, s7
                  nop
157:              bge          a2, a7, 163f
                  sra          zero, s2, ra
                  bge          t3, a4, 176f
                  andi         gp, s3, -1039
                  srli         a6, a3, 21
                  xor          a0, t1, a5
163:              srli         ra, t2, 26
                  bne          s7, a1, 177f
                  sub          a0, s2, a6
                  la           sp, region_1+286 #start riscv_load_store_rand_instr_stream_1
                  lh           t5, -8(sp)
                  sb           s2, -49(sp)
                  lbu          s6, -17(sp)
                  nop
                  sb           tp, 17(sp)
                  lbu          t5, -39(sp)
                  slti         s0, s1, 1355
                  addi         t0, a1, 883
                  lh           a4, 24(sp)
                  lb           t3, -39(sp)
                  sb           s7, 23(sp)
                  sb           a7, 53(sp)
                  lh           s6, -38(sp)
                  lb           t2, 55(sp)
                  sb           a0, 43(sp)
                  sb           s5, 15(sp)
                  srl          s3, zero, t6
                  srl          t1, a0, tp
                  lb           tp, -49(sp)
                  lbu          s10, 19(sp)
                  or           t0, tp, a7
                  lb           tp, -62(sp)
                  lui          t6, 527813
                  lhu          s10, 40(sp)
                  ori          s7, a6, 250
                  sb           s3, 34(sp)
                  lb           t1, 47(sp)
                  xor          a7, a4, s8
                  add          zero, a7, s9
                  sb           s7, -46(sp)
                  sra          s6, t1, ra
                  slli         s9, a2, 0
                  sh           a4, 64(sp)
                  addi         s6, t5, -1776
                  lhu          a6, -18(sp)
                  sltiu        t6, s1, -319
                  lbu          t1, -59(sp)
                  add          s3, a1, s0
                  lbu          s5, 17(sp)
                  auipc        ra, 680430
                  lbu          s3, 59(sp)
                  sw           s1, 2(sp) #end riscv_load_store_rand_instr_stream_1
                  slli         s11, t3, 23
                  slli         s6, s8, 20
                  beq          a7, s6, 175f
                  srli         s9, t4, 1
                  bgeu         s6, s0, 178f
                  bne          t3, s11, 175f
                  slt          tp, zero, s10
                  sltu         zero, t5, s7
                  xor          s6, s2, a1
175:              add          t6, zero, t6
176:              sll          s3, s3, a5
177:              bne          zero, s0, 180f
178:              xor          s5, s2, a7
                  beq          t1, a1, 199f
180:              lui          t0, 631498
                  addi         s10, s7, -768
                  bge          t1, s11, 199f
                  blt          t4, s1, 195f
                  nop
                  xor          gp, s5, a1
                  bgeu         a6, s5, 192f
                  bge          a7, ra, 198f
                  beq          sp, s1, 201f
                  blt          s6, t4, 197f
                  srai         s11, a7, 12
                  bge          t1, s8, 198f
192:              slli         s3, sp, 15
                  beq          s11, s6, 209f
                  beq          s7, s5, 211f
195:              xor          s0, a4, a0
                  ori          s7, tp, -1281
197:              xori         tp, a3, -893
198:              andi         t1, s7, -1
199:              bne          s0, t2, 207f
                  bltu         a6, s1, 207f
201:              xor          t1, s9, t6
                  bltu         tp, a0, 220f
                  beq          tp, s7, 216f
                  sltu         t3, s1, s3
                  srai         s11, t1, 3
                  bne          sp, a3, 209f
207:              add          zero, t3, s1
                  ori          s7, a2, -364
209:              slt          s4, t1, s0
                  addi         s9, tp, 1848
211:              slti         zero, sp, 828
                  bgeu         a7, gp, 231f
                  or           ra, tp, a7
                  or           t1, a5, s5
                  sra          zero, a0, t5
216:              srai         t3, t2, 26
                  srl          s0, a6, s0
                  bltu         a4, s10, 232f
                  sltu         s11, t4, t0
220:              sltiu        a0, a1, -760
                  bgeu         zero, s11, 238f
                  addi         s0, a7, -1964
                  slli         sp, s9, 30
                  lui          a7, 785346
                  xori         gp, t4, -26
                  xori         t6, t2, 1539
                  nop
                  auipc        zero, 1002745
                  andi         s4, a4, -775
                  xor          t0, zero, t1
231:              xori         s2, s1, 1176
232:              sltiu        t2, a2, -1045
                  bgeu         t5, a6, 244f
                  or           s2, s6, a7
                  ori          t3, tp, 769
                  bltu         t3, a3, 243f
                  andi         tp, a7, 1578
238:              sra          gp, sp, s0
                  sub          s4, t3, a0
                  sltu         a0, sp, t5
                  bge          a1, s9, 248f
                  add          s5, a7, ra
243:              lui          t0, 747426
244:              ori          s10, t0, 1651
                  sltiu        t3, s8, -280
                  andi         a7, a0, 222
                  sra          t3, t2, t4
248:              srai         a2, ra, 29
                  xori         s5, s11, -1480
                  srl          tp, s2, s7
                  slti         s3, t3, -131
                  bne          s9, t1, 255f
                  bgeu         a6, s0, 261f
                  bne          t1, s7, 271f
255:              andi         s5, t4, 1566
                  sltiu        a0, s9, 1341
                  sll          s2, ra, a0
                  nop
                  srli         t6, a0, 4
                  srai         t3, s1, 24
261:              blt          t4, sp, 279f
                  bne          zero, t0, 279f
                  lui          s2, 878982
                  slti         s2, a0, 1289
                  srli         t6, a0, 18
                  bge          t3, a6, 275f
                  and          s3, s0, s1
                  sltu         t0, a0, a3
                  slli         s6, t0, 15
                  slli         s7, s7, 13
271:              addi         s6, s11, -1627
                  ori          s9, ra, -1744
                  and          s7, s3, a0
                  auipc        t0, 465469
275:              ori          s5, a1, 445
                  bne          a4, s2, 295f
                  andi         s5, sp, 1354
                  bltu         sp, t1, 285f
279:              bne          s1, t1, 287f
                  sltu         t1, t1, a1
                  lui          s2, 588888
                  srl          s2, s1, s5
                  sltiu        gp, t5, 1351
                  sub          s10, s7, t2
285:              nop
                  beq          ra, s10, 302f
287:              slti         ra, t0, 1565
                  add          t6, ra, s4
                  bgeu         a3, s0, 301f
                  or           t6, t5, t3
                  ori          a2, gp, 167
                  bgeu         a7, s0, 309f
                  sra          t4, a5, t1
                  xor          t4, s8, a2
295:              nop
                  sll          t2, t6, tp
                  slli         s3, s3, 17
                  bltu         a3, ra, 306f
                  ori          t2, s0, 1954
                  xori         t0, a0, -720
301:              sltu         tp, a1, tp
302:              or           t4, a4, s6
                  bltu         gp, s10, 316f
                  slti         s11, s6, -1325
                  bgeu         a6, t5, 313f
306:              blt          a1, s6, 326f
                  addi         ra, s8, 410
                  slli         t2, s11, 21
309:              blt          t5, t0, 315f
                  ori          a3, s1, 1122
                  sub          t5, a5, s1
                  and          s7, s6, zero
313:              add          a2, s4, s9
                  bne          ra, s11, 330f
315:              srl          t2, t2, t5
316:              slt          s0, t1, s6
                  ori          s0, gp, -1039
                  slt          s0, gp, s4
                  srl          s7, s5, a5
                  srli         s3, a2, 15
                  blt          t4, t6, 325f
                  nop
                  blt          t0, s11, 326f
                  addi         s8, a4, -569
325:              sub          t2, sp, s7
326:              ori          ra, s2, -1486
                  srli         ra, a4, 14
                  srai         s11, a6, 14
                  nop
330:              blt          t3, a4, 343f
                  srai         s11, sp, 7
                  bltu         t2, a6, 346f
                  beq          a6, t1, 350f
                  sub          a2, a0, s9
                  andi         sp, a2, 1773
                  slt          a0, s0, s3
                  bgeu         s6, s11, 356f
                  sltu         t6, s1, a6
                  andi         s0, s7, -473
                  xor          s9, a3, a3
                  srl          s9, s3, s3
                  slti         s8, a1, -1525
343:              srli         s0, a1, 29
                  bne          t2, ra, 351f
                  addi         t6, tp, 475
346:              slt          t1, t3, s7
                  add          zero, s2, a3
                  lui          s5, 252365
                  add          t6, a1, a2
350:              srai         s10, sp, 12
351:              bge          s10, a0, 357f
                  xori         sp, s1, 627
                  bltu         zero, s11, 366f
                  or           t5, s5, s4
                  xori         a4, s1, 1186
356:              sub          a2, s6, s9
357:              addi         s3, s0, -755
                  andi         s9, a2, 1447
                  srl          t1, a4, t5
                  or           s0, s9, t5
                  addi         tp, ra, 1510
                  addi         s10, ra, 205
                  xor          s9, t3, s3
                  add          sp, s9, ra
                  sra          a4, s6, t1
366:              slti         s11, gp, 798
                  and          a3, a2, s6
                  bltu         t1, t6, 380f
                  xori         a0, t4, 831
                  bgeu         s4, s8, 387f
                  ori          s11, s9, 593
                  slt          s10, s8, a2
                  addi         t4, t1, 344
                  blt          s3, a1, 393f
                  srai         t1, gp, 18
                  ori          zero, s8, 910
                  sll          t6, t6, s3
                  xori         s2, s0, -252
                  sll          s2, s3, a7
380:              addi         s3, zero, -889
                  srai         a0, sp, 24
                  addi         tp, s8, -684
                  ori          s2, s2, -1375
                  slti         s8, t4, 865
                  add          a6, s3, s2
                  slti         s3, a0, 956
387:              auipc        t1, 929991
                  sub          s6, sp, s11
                  sra          s6, a7, s7
                  beq          a2, t5, 396f
                  nop
                  andi         s4, sp, -525
393:              auipc        s11, 685
                  bge          s3, t0, 397f
                  nop
396:              xori         t0, sp, 859
397:              bgeu         t6, tp, 410f
                  xor          gp, t6, s7
                  xori         s7, s6, 865
                  sltu         a6, s1, ra
                  xor          t5, a7, sp
                  and          s0, s3, s2
                  sra          ra, s9, tp
                  sltiu        gp, t6, -1165
                  nop
                  or           s0, a6, a6
                  beq          s6, s4, 427f
                  sltiu        s7, s10, 547
                  slli         s6, gp, 16
410:              auipc        s5, 645238
                  srai         s3, s0, 1
                  addi         t3, t3, 1150
                  auipc        a2, 262147
                  slti         s0, t6, -848
                  sltiu        t5, t3, 1719
                  and          s0, t2, zero
                  beq          t5, s11, 436f
                  bge          t5, a7, 431f
                  slli         s0, zero, 28
                  andi         t4, tp, -588
                  slti         s6, a7, 999
                  sll          s2, a7, s3
                  srl          a3, gp, gp
                  srli         t1, a6, 26
                  srl          a2, a1, a1
                  slti         sp, s7, -1891
427:              srai         t5, t5, 2
                  blt          s3, t3, 442f
                  sub          a2, ra, a3
                  srli         a2, a1, 24
431:              nop
                  slti         s8, a3, -909
                  bltu         t0, s3, 440f
                  bne          a0, s2, 442f
                  and          s2, s1, a4
436:              blt          t0, s2, 453f
                  sra          s8, a6, t5
                  ori          a7, s5, -1491
                  blt          a7, gp, 457f
440:              auipc        s7, 803767
                  sll          s11, t3, zero
442:              srai         t3, ra, 27
                  bne          sp, s2, 451f
                  bltu         a3, gp, 452f
                  bne          t2, a3, 458f
                  slt          s4, a4, s0
                  slli         t2, s2, 22
                  xor          a0, s2, tp
                  xor          a0, s7, a6
                  or           s7, s4, t5
451:              srai         s10, s11, 30
452:              bge          a2, ra, 459f
453:              bge          t3, s11, 459f
                  sra          sp, a5, t4
                  auipc        s9, 875242
                  nop
457:              beq          tp, a3, 460f
458:              andi         a3, a4, 1668
459:              xor          s2, s1, s10
460:              slli         t1, a5, 23
                  auipc        zero, 271418
                  srai         sp, s6, 29
                  sltu         tp, s0, zero
                  lui          t1, 368803
                  srli         s4, s4, 9
                  xori         a3, t0, 650
                  and          t1, a1, s4
                  sra          sp, zero, a7
                  sltiu        tp, t1, 761
                  bgeu         a6, t6, 487f
                  sltiu        a6, t2, 489
                  and          t5, a3, s11
                  andi         s0, ra, 1772
                  nop
                  bne          s6, a6, 482f
                  bne          s5, s2, 487f
                  srai         a4, tp, 21
                  addi         zero, a6, 1969
                  sll          t4, t3, a6
                  bne          s9, s0, 484f
                  bne          t5, s7, 488f
482:              and          a2, a7, s2
                  addi         s2, t3, 562
484:              sub          a0, s2, a6
                  sra          tp, s2, t4
                  sll          s0, s8, a4
487:              bltu         s9, s10, 503f
488:              slti         a6, t4, 49
                  slti         a4, s6, -1418
                  srl          t0, s6, s0
                  addi         s0, a5, 1982
                  srli         s10, s9, 13
                  blt          tp, t2, 510f
                  or           t0, s11, sp
                  sra          s4, a3, s3
                  blt          zero, ra, 505f
                  xor          ra, s4, t1
                  sub          sp, s9, s4
                  xori         s10, t1, 711
                  lui          a4, 1026351
                  sub          sp, t0, s8
                  srli         s11, t2, 18
503:              xor          t3, a2, t5
                  ori          sp, t1, 1733
505:              xor          s8, s5, gp
                  srli         t3, a6, 7
                  addi         a0, t5, -224
                  srli         a0, s7, 27
                  slli         s11, s0, 7
510:              slt          a3, a1, s8
                  addi         s4, ra, 1278
                  bne          s1, gp, 520f
                  sltiu        a7, t5, 1398
                  or           a2, a2, s0
                  blt          a1, s4, 531f
                  xor          tp, s2, s4
                  addi         s8, s3, -559
                  sll          t2, t5, s11
                  sub          t6, s4, sp
520:              bltu         a2, t5, 528f
                  sub          t2, a0, s9
                  auipc        a4, 514982
                  andi         sp, s6, -1929
                  srl          s2, a5, t0
                  sltu         s10, s1, t2
                  slt          t5, a3, s5
                  auipc        a2, 43750
528:              andi         s4, t2, -536
                  nop
                  and          s8, s0, sp
531:              sub          a0, a0, s7
                  lui          t6, 820071
                  beq          a6, ra, 536f
                  auipc        s11, 951090
                  sltu         t0, s9, s8
536:              bltu         a6, a1, 544f
                  lui          t1, 1033970
                  srli         t3, t6, 17
                  slli         s3, tp, 17
                  slli         t2, s2, 28
                  auipc        s8, 766499
                  bgeu         s5, s2, 553f
                  sra          s4, a1, gp
544:              slli         s9, a1, 15
                  slli         t3, t2, 15
                  andi         s10, zero, 1832
                  andi         s0, s3, 1960
                  srl          a2, a2, t4
                  bltu         a3, t6, 555f
                  beq          a4, a0, 562f
                  bgeu         a0, s10, 557f
                  add          ra, t3, tp
553:              bne          s7, s8, 557f
                  bge          a2, a7, 571f
555:              slli         s5, t3, 21
                  lui          t6, 186862
557:              slli         gp, a0, 3
                  slt          s7, a0, a4
                  blt          s11, t1, 575f
                  and          s0, a4, s4
                  auipc        zero, 770561
562:              nop
                  sll          t4, t2, s6
                  sra          s9, t4, t5
                  beq          a2, t5, 573f
                  nop
                  add          a0, t4, a2
                  slli         s3, t0, 31
                  lui          s11, 391965
                  sll          a2, t4, gp
571:              and          t0, s11, s2
                  bgeu         t6, s8, 579f
573:              slt          t2, a5, t3
                  bltu         s9, t1, 581f
575:              sll          s4, s8, s8
                  nop
                  andi         s6, zero, 1026
                  sltu         t0, s11, a6
579:              nop
                  bltu         s3, s4, 597f
581:              add          s0, s1, s5
                  nop
                  srai         ra, s7, 11
                  bge          gp, zero, 592f
                  or           t2, gp, s0
                  bne          a3, a2, 593f
                  sub          ra, s9, t0
                  srli         s5, tp, 14
                  andi         t3, s2, 1755
                  xor          gp, t3, t2
                  addi         gp, t3, 1603
592:              bgeu         t6, a6, 601f
593:              srl          s4, a5, a2
                  sltu         a0, a5, a6
                  or           a4, zero, s6
                  andi         a3, s1, 1974
597:              srli         t2, zero, 4
                  srai         a6, t0, 16
                  sltiu        s3, zero, 586
                  bgeu         a2, s1, 614f
601:              sltu         t0, sp, s3
                  bgeu         s2, s5, 615f
                  or           t2, s2, s10
                  ori          s2, s2, -150
                  blt          t5, a4, 618f
                  or           s4, s8, s3
                  beq          s3, t3, 626f
                  andi         s2, a1, 1086
                  slt          s8, s9, t0
                  slli         a3, t3, 15
                  nop
                  auipc        a0, 149818
                  bne          t0, s6, 631f
614:              lui          s0, 779011
615:              nop
                  addi         a0, a6, -1660
                  bgeu         s3, s11, 636f
618:              slli         s4, a7, 16
                  sltu         s2, t0, s2
                  lui          a3, 855458
                  and          a2, s11, s10
                  nop
                  blt          s9, s0, 640f
                  nop
                  beq          s9, gp, 628f
626:              sub          s6, s1, s6
                  bltu         s3, s4, 634f
628:              andi         s5, s5, -873
                  srai         t0, tp, 10
                  xor          a0, s1, t1
631:              sra          s10, s4, s0
                  beq          gp, s4, 649f
                  sltiu        s8, t2, 943
634:              sub          s9, a5, t1
                  xor          s5, a2, s3
636:              or           tp, a3, t0
                  srai         s8, t4, 14
                  sub          zero, zero, gp
                  srai         s3, t0, 16
640:              andi         t5, a6, -1244
                  sltu         t3, a5, s8
                  sra          gp, a6, t2
                  sltiu        s8, a2, -1867
                  addi         a2, s4, 1824
                  and          ra, t1, a1
                  srai         s2, tp, 7
                  slt          t1, s10, a6
                  bge          t2, t1, 661f
649:              bge          s6, a7, 665f
                  add          s7, s1, a6
                  slti         t4, a2, -24
                  sub          t6, s11, sp
                  sltu         sp, a2, t0
                  xor          a4, s10, t2
                  sll          tp, a5, a1
                  sltu         s3, a4, t5
                  sub          s5, s6, s11
                  bgeu         a6, s1, 678f
                  bgeu         s5, a6, 672f
                  sra          s7, t5, sp
661:              addi         a7, s11, 1949
                  nop
                  sll          a3, gp, t1
                  ori          s8, s1, 1631
665:              add          a3, s1, ra
                  bge          s4, s9, 673f
                  auipc        s0, 47530
                  lui          s0, 804101
                  addi         s11, s8, 1979
                  bne          s2, s11, 682f
                  bne          s0, a6, 677f
672:              xori         s7, s2, -219
673:              bge          a0, t3, 680f
                  lui          s2, 590989
                  slti         s5, t5, -102
                  and          a7, a5, s2
677:              addi         t3, s6, 2037
678:              sltu         t4, ra, a3
                  sltu         a0, a3, s6
680:              xori         a2, a7, -314
                  sltiu        t1, zero, -1076
682:              ori          t5, s0, 238
                  bltu         tp, s8, 701f
                  slli         a6, s1, 24
                  bgeu         gp, a4, 704f
                  slt          a3, ra, t2
                  bltu         t3, s8, 691f
                  nop
                  blt          s8, s5, 708f
                  sra          s4, s2, a3
691:              slti         s4, s11, 1683
                  or           t0, s11, s2
                  and          s8, s4, s11
                  sltiu        gp, ra, -977
                  bgeu         s1, t6, 702f
                  slti         s2, a2, 1049
                  lui          t2, 637638
                  srai         s10, gp, 9
                  srai         s2, s10, 21
                  sll          s8, t3, s10
701:              lui          zero, 750977
702:              and          t1, t3, s3
                  slli         s10, zero, 29
704:              nop
                  lui          s2, 544334
                  or           sp, t6, t5
                  bgeu         s1, ra, 721f
708:              slti         s2, t6, -672
                  addi         a4, t6, 1491
                  beq          gp, s4, 726f
                  bgeu         ra, t0, 728f
                  ori          t1, s7, -735
                  slti         s7, t2, -1722
                  sltu         a2, a7, t4
                  add          s6, a7, a2
                  xori         s3, tp, 1728
                  beq          a1, t3, 733f
                  slt          t3, a0, t5
                  srl          a7, s6, tp
                  sra          a7, s10, ra
721:              xori         tp, s10, -1869
                  addi         t4, t4, -1943
                  nop
                  bge          sp, s1, 735f
                  and          s9, a7, a4
726:              xor          a2, zero, s8
                  add          s11, s10, a2
728:              and          s7, a4, zero
                  slt          t4, t4, a3
                  srl          t4, s11, s7
                  bge          a5, s1, 744f
                  sll          a7, a2, s9
733:              auipc        ra, 283884
                  sub          tp, a3, s1
735:              srli         zero, s8, 29
                  sltu         s2, s7, s10
                  xori         sp, s7, 836
                  auipc        s8, 677017
                  bgeu         t2, s11, 759f
                  slli         tp, t4, 11
                  addi         s4, t0, -331
                  andi         s7, zero, 1292
                  sltiu        s5, a7, -576
744:              slti         t0, s5, 749
                  sll          ra, s9, t4
                  sub          t0, t3, t4
                  and          s5, a4, t5
                  andi         gp, a4, 447
                  lui          a0, 530108
                  bne          t6, t4, 757f
                  sra          s4, s1, s2
                  sub          s5, t1, a7
                  lui          s3, 227417
                  bgeu         a7, s1, 757f
                  srai         s8, t6, 24
                  slti         s3, a7, 1781
757:              xori         s10, s3, -1439
                  slti         t0, s2, 811
759:              and          t0, tp, s7
                  srl          gp, a0, t6
                  nop
                  srli         a3, t1, 19
                  and          s6, s0, zero
                  xori         s0, s0, -1947
                  bgeu         t1, s11, 768f
                  beq          a7, s4, 775f
                  andi         s4, a3, -1489
768:              bne          s7, s11, 776f
                  bgeu         a7, s5, 786f
                  srli         s5, s9, 25
                  sltu         s11, t2, a4
                  and          gp, s4, s11
                  and          s6, a2, t3
                  srl          s5, s4, a1
775:              srl          s4, s0, s10
776:              srai         t2, a1, 24
                  andi         t3, s3, -1729
                  sltiu        s10, ra, 739
                  blt          gp, a3, 792f
                  beq          t5, a2, 788f
                  slti         s3, t3, -1168
                  slli         a4, s4, 1
                  slli         s8, t4, 27
                  srl          s6, tp, s0
                  addi         s10, a7, 1826
786:              srai         s6, a2, 5
                  add          s11, a5, s3
788:              sra          s9, a5, a4
                  and          tp, s10, t6
                  bltu         s7, t3, 807f
                  sltu         s6, ra, s2
792:              sub          t2, s0, s11
                  slli         t5, s5, 8
                  srli         a4, t2, 1
                  blt          a6, s4, 803f
                  sra          t1, t6, a7
                  nop
                  beq          s9, s11, 806f
                  bgeu         s3, t5, 805f
                  slli         t4, a2, 26
                  slli         s5, s3, 20
                  sltiu        t2, s4, -1657
803:              nop
                  srai         s6, t2, 2
805:              sltiu        s10, t5, 1099
806:              add          t1, s8, zero
807:              ori          a4, s3, 470
                  xor          s10, s6, t1
                  or           a3, t5, s1
                  add          s2, s10, a1
                  sltiu        s3, a2, 666
                  lui          a4, 375837
                  slti         a3, s5, 37
                  sltiu        a0, sp, -149
                  bne          t0, s3, 832f
                  xori         s7, t2, 1131
                  sltiu        s7, t4, 45
                  slt          s5, s5, tp
                  sra          t2, t5, s11
                  srl          a4, t6, t2
                  blt          t3, gp, 834f
                  srai         a0, zero, 14
                  slli         a7, t6, 5
                  sra          s11, s7, tp
                  ori          t6, s6, 1960
                  andi         a6, a6, -1978
                  ori          s3, a6, 446
                  srli         t0, s7, 17
                  bge          zero, s2, 848f
                  and          tp, s0, s3
                  srl          s2, tp, t6
832:              sll          s7, s2, a7
                  bgeu         t1, s6, 840f
834:              lui          s4, 462927
                  srli         tp, a1, 0
                  bltu         ra, t6, 844f
                  xor          t5, s8, s0
                  slli         s9, a0, 12
                  srl          s11, a6, s8
840:              xor          tp, t4, t5
                  sub          t2, s10, t3
                  bgeu         a4, s2, 859f
                  xori         s3, t1, -729
844:              sltu         gp, a3, tp
                  addi         t6, s9, -649
                  addi         gp, s4, 2025
                  and          s3, ra, t2
848:              sltu         ra, t1, s3
                  sltiu        a6, s0, 583
                  sltu         s4, s11, sp
                  blt          a6, t4, 859f
                  slt          a3, a1, s3
                  add          s9, t0, s10
                  sra          zero, s0, t0
                  bge          a0, s5, 859f
                  slli         s0, a2, 11
                  nop
                  bge          t3, a0, 859f
859:              srl          tp, a1, s9
                  lui          zero, 1037767
                  nop
                  srl          t6, a3, s11
                  addi         a6, a0, -570
                  xor          s2, t6, s0
                  lw           s4, 4(a5)
                  addi         a2, a3, 206
                  addi         a5, a5, 44
                  slti         s8, s6, 1448
                  nop
                  srli         a4, a7, 11
1146:             addi x12, x20, 0
1146:             jalr x12, x12, 0
sub_5:            or           s3, gp, t0
                  addi         a5, a5, -36
                  nop
                  slti         s9, s1, -1869
                  sra          s3, a5, s5
                  slt          t6, s1, a3
                  sw           s4, 4(a5)
                  sll          s10, s9, t5
                  slli         t6, ra, 2
                  slti         s11, t4, -216
                  sltiu        s8, t1, 1500
                  or           a7, a3, t5
                  ori          s2, a4, 1777
                  lui          s10, 911243
                  sltu         t2, t3, a5
                  slti         t5, t0, 1031
                  slti         s9, s3, -781
sub_5_j8:         jal          s4, sub_6 #jump sub_5 -> sub_6
                  slli         s3, a7, 29
                  or           s5, a0, a5
                  lui          a7, 877746
                  add          a7, gp, gp
                  sltiu        s9, ra, -1234
                  nop
                  blt          a1, s9, 12f
                  bltu         s7, sp, 18f
                  srli         t2, a2, 13
                  add          s10, s6, a6
                  slli         s2, t2, 15
                  lui          tp, 244933
12:               auipc        tp, 406102
                  lui          a3, 127373
                  sltu         s10, s5, s11
                  lui          tp, 904164
                  blt          a6, s8, 28f
                  and          ra, s4, t0
18:               xor          tp, tp, s4
                  auipc        s7, 469199
                  slli         tp, tp, 14
                  and          zero, ra, a7
                  sra          s9, zero, a4
                  beq          a4, s2, 32f
                  sll          s0, a6, s0
                  xori         s9, a1, -1121
                  slli         t3, a3, 20
                  sra          s5, a0, t5
28:               xori         a7, t2, -1337
                  ori          a6, s8, 1180
                  bgeu         s4, t0, 37f
                  bge          s1, t3, 33f
32:               bgeu         a1, t2, 51f
33:               andi         tp, t5, 213
                  srl          t2, a5, s5
                  sra          s3, zero, s7
                  or           gp, t6, s10
37:               sra          a6, t5, t4
                  sub          ra, a0, s3
                  xori         s9, a2, 1859
                  lui          s0, 482284
                  bne          s6, a1, 48f
                  andi         t3, sp, -752
                  xor          t4, s2, s5
                  addi         s2, s10, 633
                  srl          a0, s4, s0
                  auipc        s5, 667020
                  bgeu         s5, s5, 56f
48:               sll          s6, a1, s8
                  bltu         a4, s4, 66f
                  sltiu        t3, ra, -1312
51:               andi         a4, s5, -1952
                  add          s4, s11, s6
                  slti         a6, a2, 220
                  bgeu         zero, a7, 68f
                  srli         a0, zero, 22
56:               sra          s11, t3, s0
                  srl          s2, gp, t5
                  sub          ra, s4, a1
                  beq          a4, a3, 61f
                  xor          gp, s0, a2
61:               slli         s11, t2, 16
                  sltu         s5, s3, s6
                  srai         a6, s1, 1
                  sub          s6, tp, a2
                  sub          zero, s7, s5
66:               srai         sp, a5, 22
                  srai         t0, s1, 12
68:               slti         t2, s3, -100
                  bgeu         t1, s4, 72f
                  sltiu        t1, t3, 136
                  bne          ra, gp, 76f
72:               slt          sp, a6, s2
                  sra          a3, t5, gp
                  and          s6, s10, a3
                  blt          sp, a0, 81f
76:               addi         s7, a6, 663
                  auipc        t5, 82387
                  la           sp, sub_7
                  srai         a3, tp, 12
                  sltiu        a2, s6, 1863
                  srl          s6, t4, s8
                  addi         sp, sp, -292
                  auipc        a3, 679913
                  lui          s7, 859960
                  srai         t0, tp, 30
                  addi         t3, ra, -459
                  bne          s3, s4, sub_5_j7 #branch to jump instr
                  sub          zero, s3, a1
sub_5_j7:         jalr         s4, sp, 292 #jump sub_5 -> sub_7
                  or           t1, s3, t5
                  blt          s8, s3, 98f
                  sll          t1, sp, a0
81:               sltu         s2, s10, t2
                  blt          zero, a0, 97f
                  sltiu        t4, s11, -274
                  blt          s8, s8, 101f
                  bne          s6, s2, 89f
                  ori          a6, s8, -524
                  slt          t0, t5, a3
                  beq          t0, a3, 94f
89:               beq          s3, s2, 96f
                  bge          zero, s9, 96f
                  sll          s3, s6, a3
                  sltu         t3, s6, t4
                  bne          zero, a1, 107f
94:               sra          a6, s8, s1
                  addi         t0, s4, 829
96:               xori         s2, s8, 1871
97:               ori          s0, a1, -900
98:               sub          t2, t5, tp
                  bge          zero, s4, 105f
                  sltu         gp, s11, t2
101:              lui          sp, 1023044
                  sub          a6, s2, s9
                  sub          t1, s8, t2
                  bltu         a5, s2, 107f
105:              srl          t6, a4, t1
                  slti         t3, sp, 520
107:              srai         a6, gp, 16
                  lw           s4, 4(a5)
                  andi         ra, t3, 636
                  addi         a5, a5, 36
                  nop
                  sub          tp, s8, zero
                  sltu         t4, t5, t5
                  nop
                  ori          a6, a2, 110
                  sra          t4, s9, s9
                  srai         t5, t4, 22
                  xor          s9, sp, a0
                  or           t4, s10, s2
150:              addi x27, x20, 0
150:              jalr x27, x27, 0
sub_10:           addi         a5, a5, -52
                  slt          tp, a0, gp
                  auipc        s5, 538983
                  xor          t2, s9, a3
                  slt          sp, tp, a2
                  sw           s4, 4(a5)
                  ori          s6, s0, 1838
                  slt          s5, sp, a1
                  bne          s5, a1, 18f
                  sll          s2, s5, s11
                  slli         t0, tp, 18
                  sltiu        t1, s9, -1988
                  slt          t6, s4, gp
                  slli         s7, zero, 22
                  ori          zero, a0, -995
                  slli         t2, t6, 31
                  nop
                  slli         zero, s6, 11
                  slt          s4, zero, sp
                  bltu         s11, t1, 23f
                  srli         s9, sp, 10
                  addi         t0, s10, 184
                  beq          sp, t5, 26f
                  xori         a0, s6, -418
                  add          a0, t0, a5
                  sll          s7, s9, s3
18:               nop
                  ori          ra, t4, 7
                  or           tp, s11, s9
                  sra          ra, s4, sp
                  sub          ra, s6, t0
23:               srli         a4, s0, 13
                  srl          a0, a7, s10
                  add          s5, s4, s8
26:               srli         t6, t6, 20
                  sltu         s2, t3, a0
                  lui          a7, 506080
                  bltu         ra, s7, 48f
                  srl          s6, a4, a6
                  slt          s7, a4, s9
                  bltu         t0, t5, 48f
                  bltu         a0, a2, 47f
                  auipc        t5, 511311
                  add          sp, t5, a0
                  nop
                  sub          s5, t0, s8
                  sltiu        t6, s10, -1035
                  beq          t1, s11, 41f
                  auipc        t0, 479502
41:               bge          t6, sp, 46f
                  or           s11, ra, s11
                  xori         t5, ra, -1125
                  bltu         zero, s7, 51f
                  blt          t1, t4, 55f
46:               slt          gp, s8, s4
47:               addi         t3, s11, -1917
48:               nop
                  xor          t0, s8, s10
                  lui          s6, 365212
51:               and          s5, a0, s11
                  or           a4, t2, s0
                  srai         s7, a4, 27
                  andi         t5, t6, -1362
55:               andi         a7, ra, 68
                  sltu         a4, a3, sp
                  sltu         s11, a1, ra
                  ori          s9, s7, -532
                  slli         s6, t2, 0
                  lui          s7, 775825
                  addi         t4, t1, -1551
                  beq          s3, s10, 69f
                  beq          s4, t3, 66f
                  slli         s6, t5, 8
                  xori         a6, tp, -1849
66:               lui          a2, 134903
                  lui          t2, 407817
                  bne          t6, ra, 79f
69:               bltu         a7, t1, 84f
                  sub          sp, t2, s10
                  sltu         a3, s11, s1
                  bltu         a6, a3, 85f
                  sltu         ra, a6, s8
                  bltu         zero, ra, 86f
                  xori         t4, a3, -1644
                  sll          s2, t2, s4
                  xor          a2, a6, a2
                  srli         t4, zero, 12
79:               or           t3, ra, s10
                  bne          s7, a6, 89f
                  andi         t4, tp, 1990
                  add          zero, a4, t6
                  ori          s9, ra, -961
84:               auipc        tp, 395892
85:               sll          t0, t4, s0
86:               beq          gp, zero, 95f
                  blt          t1, s9, 97f
                  sub          a3, s6, a1
89:               sub          s3, gp, t3
                  xor          tp, t5, a7
                  sll          t6, zero, a6
                  sra          gp, t4, ra
                  bgeu         a7, s4, 112f
                  xor          s3, a1, a5
95:               slt          s7, s6, tp
                  ori          a0, a4, -1331
97:               srai         ra, zero, 1
                  slt          tp, a6, t3
                  xori         a7, t5, 1370
                  xor          t6, s10, s2
                  or           sp, a7, a2
                  bne          a6, t5, 110f
                  xori         t4, t2, 2017
                  bltu         s4, a1, 119f
                  slt          t6, a4, t3
                  bltu         s1, t0, 122f
                  beq          s5, t5, 120f
                  addi         sp, t0, 1427
                  sltu         t1, a0, s1
110:              srli         s7, zero, 24
                  lui          t4, 434100
112:              andi         t0, a4, 1983
                  slli         a4, s0, 19
                  bgeu         t2, t4, 122f
                  sltu         t6, tp, s5
                  add          a4, t4, s1
                  ori          ra, s2, -916
                  blt          a2, t1, 122f
119:              slt          a4, ra, t0
120:              lui          zero, 197482
                  auipc        s7, 375971
122:              slli         s7, s6, 7
                  auipc        t6, 490727
                  auipc        t4, 272634
                  ori          a2, t2, -1258
                  lw           s4, 4(a5)
                  andi         s2, sp, 232
                  addi         a5, a5, 52
                  andi         t6, s11, -1777
                  sll          sp, t1, gp
                  xor          s7, t0, s4
140:              addi x24, x20, 0
140:              jalr x24, x24, 0
sub_4:            addi         a5, a5, -8
                  sw           s4, 4(a5)
                  xor          a3, a3, t1
                  ori          zero, a7, 723
                  nop
                  lui          s6, 198824
                  la           t5, region_1+800 #start riscv_load_store_rand_instr_stream_10
                  lw           t0, -4(t5)
                  sb           t2, -11(t5)
                  lb           a6, -11(t5)
                  auipc        s11, 131579
                  addi         t6, s4, -1235
                  lui          a0, 207607
                  sb           s4, -11(t5)
                  or           tp, t5, t1
                  slli         t1, t3, 21
                  lb           s8, 13(t5)
                  sh           s10, 8(t5)
                  lui          t2, 576397
                  lbu          a4, -2(t5)
                  lbu          s8, 15(t5)
                  sltiu        t0, t4, 1321
                  lui          t3, 549007
                  sb           a4, 14(t5)
                  sub          t6, a1, sp
                  lui          tp, 503955
                  lbu          s11, 16(t5)
                  xor          s7, s5, a6
                  sb           a6, 2(t5)
                  srl          s4, tp, a0
                  nop
                  lb           s11, -12(t5)
                  lhu          ra, 4(t5)
                  lbu          s0, -2(t5)
                  sb           s3, -16(t5)
                  xor          t2, s1, t2
                  srai         a0, gp, 20
                  srai         a0, a5, 10
                  xori         s2, sp, 1155
                  sh           s4, -8(t5)
                  nop
                  slti         s9, s3, 356
                  lb           t3, 5(t5)
                  srl          a3, gp, a5
                  addi         s11, a6, -1263
                  sb           t5, -13(t5)
                  lb           t4, -15(t5)
                  xor          s5, t1, s0
                  or           zero, s5, s3
                  addi         s6, gp, 993
                  sll          tp, ra, t4
                  lbu          s3, -2(t5) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+718 #start riscv_load_store_rand_instr_stream_7
                  lb           s8, 217(sp)
                  sh           s4, -20(sp)
                  srli         t2, sp, 15
                  lb           s3, 15(sp)
                  sb           s2, -143(sp)
                  lb           s8, -231(sp)
                  lbu          s9, 224(sp)
                  lbu          ra, -62(sp)
                  or           a2, s8, sp
                  auipc        s5, 667541
                  nop
                  sb           t6, -11(sp)
                  lw           a6, -78(sp)
                  lbu          gp, -201(sp)
                  sb           a5, -168(sp)
                  sb           t1, 49(sp)
                  lb           t3, 241(sp)
                  sb           a6, 127(sp)
                  lb           a2, -91(sp)
                  lbu          ra, 123(sp)
                  lb           a7, 95(sp)
                  sb           t1, -3(sp)
                  lb           ra, -33(sp)
                  sw           s7, 206(sp)
                  srl          s2, s7, a4
                  sll          s2, a0, s1
                  add          a2, s3, a2
                  sb           zero, 121(sp)
                  add          zero, s7, t1
                  lb           tp, 197(sp)
                  sub          t3, t4, s0
                  lh           t3, 98(sp)
                  and          s3, t6, ra
                  sb           a6, 131(sp)
                  slti         ra, a4, 251
                  auipc        t2, 777988
                  lh           a4, -30(sp)
                  lbu          a2, -202(sp)
                  lb           zero, 215(sp)
                  sb           s2, -27(sp)
                  lh           a4, 256(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1293 #start riscv_load_store_rand_instr_stream_6
                  sb           s8, -234(sp)
                  lw           a6, 127(sp)
                  lbu          t4, 97(sp)
                  lb           t5, -174(sp)
                  lb           t3, -158(sp)
                  sb           gp, -87(sp)
                  or           s10, t1, s8
                  sltu         a4, s3, a6
                  lbu          s7, 180(sp)
                  xor          s5, s5, s8
                  sb           sp, 241(sp)
                  sb           tp, 54(sp)
                  lh           gp, -235(sp)
                  nop
                  srai         gp, gp, 26
                  lb           s8, -154(sp)
                  lb           gp, 217(sp)
                  add          s10, a1, t1
                  lhu          a3, 37(sp)
                  sh           gp, 115(sp)
                  lbu          zero, -105(sp)
                  lhu          t4, 77(sp)
                  xor          zero, zero, s8
                  sra          s7, s6, sp
                  lb           s8, 230(sp)
                  nop
                  lb           t1, 24(sp)
                  sh           t3, 199(sp)
                  lbu          a0, 110(sp)
                  andi         ra, zero, -965
                  sra          s11, t2, s2
                  lbu          s7, -164(sp)
                  lb           t1, -58(sp)
                  andi         s5, t0, 954
                  sh           s4, 171(sp)
                  nop
                  sll          t6, gp, a7
                  ori          a2, a7, -1508
                  addi         t6, a4, 68
                  srai         ra, t6, 22
                  sb           s1, 163(sp)
                  lb           s3, -168(sp)
                  lui          s8, 452581
                  lbu          t2, -111(sp)
                  add          t0, t0, a3
                  and          a0, a1, s3
                  add          s8, a0, a4
                  srai         gp, s6, 31
                  lbu          s10, -23(sp)
                  slt          t1, a1, a5
                  sb           s4, 231(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1875 #start riscv_load_store_rand_instr_stream_9
                  lui          a3, 381134
                  lh           a7, 13(sp)
                  sb           s1, -205(sp)
                  sra          a6, t6, a2
                  add          a0, a6, tp
                  sb           t3, -188(sp)
                  auipc        t1, 345439
                  lbu          gp, 5(sp)
                  lb           s4, -45(sp)
                  srai         a0, gp, 21
                  sw           t1, -171(sp)
                  sb           s0, 4(sp)
                  xori         s7, s7, 1790
                  lbu          s10, 30(sp)
                  lbu          s0, -141(sp)
                  lh           a4, -125(sp)
                  lb           ra, -120(sp)
                  lb           a4, -127(sp)
                  sb           a5, -68(sp)
                  lb           a4, -42(sp)
                  lb           a4, -162(sp)
                  lw           s11, -211(sp)
                  sw           tp, -67(sp)
                  andi         s5, s6, 832
                  srl          ra, t3, a2
                  lbu          s9, -244(sp)
                  addi         ra, t1, -472
                  lbu          t1, -36(sp)
                  lb           a4, 98(sp)
                  ori          s2, a4, 2024
                  lh           s9, -245(sp)
                  lb           t6, 32(sp)
                  and          s10, ra, t6
                  auipc        s7, 692121
                  srai         a0, s2, 7
                  lb           t6, -140(sp)
                  lhu          a6, -41(sp)
                  lh           ra, 109(sp)
                  srai         gp, s5, 1
                  sb           a4, 15(sp)
                  lhu          s4, -29(sp)
                  sub          ra, zero, s10
                  lb           t5, -123(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s10, region_0+708 #start riscv_load_store_rand_instr_stream_3
                  lb           tp, 30(s10)
                  sll          sp, sp, a5
                  sb           s2, -55(s10)
                  andi         sp, s7, 977
                  slli         t2, s11, 5
                  srli         sp, sp, 13
                  sb           s3, -24(s10)
                  lb           a2, -23(s10)
                  addi         gp, a2, 1583
                  lw           a2, 24(s10)
                  lui          s2, 318690
                  slt          a2, gp, a3
                  sb           s0, -21(s10)
                  slti         t5, s6, 1467
                  add          a3, s4, t1
                  lbu          t3, -51(s10)
                  or           a0, t2, a6
                  lui          s3, 928494
                  lbu          s7, 57(s10)
                  sll          t3, s11, a3
                  sra          a4, s2, zero
                  lb           s5, 61(s10)
                  sub          a7, ra, a7
                  lb           t3, 49(s10)
                  slti         t5, tp, -1155
                  sh           a4, 24(s10)
                  sw           a7, -40(s10)
                  sltu         a4, s10, s2
                  lbu          t5, -31(s10)
                  sltu         t2, a3, a1
                  sll          a6, gp, a7
                  lhu          gp, -12(s10) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_0+455 #start riscv_load_store_rand_instr_stream_11
                  lw           ra, -7(s11)
                  and          t5, s8, t6
                  sb           zero, -2(s11)
                  slti         s4, t2, 1795
                  andi         sp, t6, 172
                  sb           a0, -1(s11)
                  lb           t4, 15(s11)
                  lbu          a2, 15(s11)
                  sub          a2, s8, a3
                  ori          zero, s11, -781
                  sltiu        t3, t3, -476
                  sb           t2, 12(s11)
                  sb           s2, -16(s11)
                  sb           a2, -9(s11)
                  sb           a6, 0(s11)
                  lbu          gp, -12(s11)
                  and          s7, s8, zero
                  lbu          a4, -9(s11)
                  add          sp, t1, a4
                  add          s5, s2, ra
                  addi         sp, tp, 1599
                  sltiu        s9, t5, 95
                  sb           t3, 15(s11)
                  lbu          t4, 7(s11) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+910 #start riscv_load_store_rand_instr_stream_1
                  and          s2, a7, s5
                  andi         a0, a6, -259
                  lbu          s4, 5(sp)
                  addi         a7, t1, -1998
                  sll          s5, a3, gp
                  slli         a7, tp, 14
                  slt          s4, t4, s2
                  lbu          s8, 9(sp)
                  sra          a6, s6, t1
                  lhu          s10, -4(sp)
                  sra          ra, t6, t4
                  andi         s5, s2, 1396
                  slli         a6, a6, 14
                  srl          tp, s2, a2
                  and          s6, sp, s11
                  lhu          s6, -12(sp)
                  slt          gp, t5, s2
                  sb           a1, 6(sp)
                  sb           t3, 11(sp)
                  sb           t5, 4(sp)
                  auipc        t3, 371050
                  lh           t5, -6(sp)
                  lh           t4, -12(sp)
                  lh           t0, 4(sp)
                  lh           zero, -2(sp)
                  srai         t2, s0, 27
                  sb           s9, -8(sp)
                  lbu          t4, 2(sp)
                  srli         s10, a5, 24
                  lb           t5, 11(sp)
                  slt          s3, s4, s6
                  lbu          s5, 5(sp)
                  sh           s6, 4(sp)
                  auipc        t4, 696909
                  slti         s4, a4, -1873
                  and          t2, ra, t0
                  nop
                  lhu          ra, 10(sp)
                  lbu          s0, 7(sp)
                  sltiu        s8, s9, -1478
                  lbu          a6, -7(sp)
                  lb           s8, 15(sp)
                  sh           tp, 16(sp)
                  nop
                  auipc        tp, 789114
                  sw           a0, -6(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+724 #start riscv_load_store_rand_instr_stream_0
                  sb           s7, -710(sp)
                  sb           a7, -640(sp)
                  srl          s0, t2, s6
                  andi         s0, gp, -94
                  slti         s3, a0, -1509
                  lb           a7, -343(sp)
                  lb           tp, -29(sp)
                  lbu          a0, 379(sp)
                  srl          t3, t3, a2
                  and          a4, a6, s11
                  slt          a7, s1, s11
                  sb           t4, 1(sp)
                  lhu          t5, 1130(sp)
                  lb           t6, 1111(sp)
                  lh           t5, -50(sp)
                  lui          t4, 751919
                  lhu          a0, 352(sp)
                  add          gp, a7, a4
                  sb           s2, -573(sp)
                  add          zero, t5, s11
                  lbu          ra, 965(sp)
                  lh           s11, 570(sp)
                  sh           ra, 1128(sp)
                  lbu          a4, 1257(sp)
                  addi         s9, t3, 496
                  srli         t0, sp, 10
                  sb           t1, -7(sp)
                  lui          t2, 684052
                  add          s9, a6, t6
                  lbu          s5, 1235(sp)
                  sltu         t0, s6, s7
                  sb           a4, 794(sp)
                  srli         s9, s5, 16
                  srli         a3, s5, 23
                  auipc        zero, 774894
                  xor          a6, s9, t0
                  xori         t3, a2, -22
                  sra          a0, a5, a5
                  lb           s9, 971(sp)
                  sb           s9, 687(sp)
                  sb           zero, 263(sp)
                  addi         t6, t0, -1023
                  sb           s9, -44(sp)
                  lb           t1, -538(sp)
                  sll          s11, tp, a3
                  sltiu        tp, s7, 1412
                  sb           t2, -617(sp)
                  sw           s1, 608(sp)
                  or           s2, t2, s2
                  auipc        a7, 123700
                  ori          s2, t6, -852
                  lb           tp, 21(sp)
                  lb           t4, -213(sp)
                  lh           s8, 756(sp)
                  lui          s4, 1004752
                  sb           a3, 553(sp)
                  sb           t3, 303(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s9, a1, 5f
                  nop
                  or           s10, t2, a5
                  auipc        tp, 304653
                  bgeu         a5, a5, 20f
5:                bge          s6, t4, 25f
                  addi         s10, a1, -986
                  bgeu         t6, s3, 19f
                  bltu         s7, a6, 12f
                  lui          a6, 524993
                  ori          a4, a3, -848
                  slti         zero, a0, 974
12:               slti         t6, gp, -758
                  xor          s6, zero, t1
                  beq          a3, a6, 26f
                  bltu         t5, s4, 35f
                  lui          s6, 788006
                  add          a4, a2, s7
                  or           a7, a5, s4
19:               sltiu        t1, sp, 259
20:               sltiu        s10, s0, 1378
                  bne          a7, sp, 26f
                  add          tp, s2, t4
                  ori          a0, a2, 809
                  nop
25:               bltu         ra, a2, 30f
26:               bge          s9, sp, 40f
                  slti         ra, s10, 1136
                  bge          s3, t5, 46f
                  addi         s0, t2, 1766
30:               and          zero, s10, s8
                  or           s8, a3, a6
                  bge          sp, gp, 39f
                  andi         t3, s9, -631
                  addi         s0, s7, 1780
35:               nop
                  slli         s10, t1, 15
                  bgeu         t4, ra, 38f
38:               srai         zero, t0, 1
39:               slti         gp, a4, -1399
40:               srai         t6, s8, 15
                  andi         s10, t6, -1454
                  sub          s4, a2, s11
                  bne          t6, s9, 50f
                  andi         s7, s3, 964
                  srai         s0, t1, 29
46:               sub          s3, a4, a1
                  bge          a0, t5, 60f
                  slli         t6, a5, 7
                  srli         t4, s4, 21
50:               sltu         t2, a0, s0
                  sll          t1, s6, a0
                  ori          ra, s11, 1730
                  andi         t4, gp, 983
                  srai         t2, s4, 22
                  bgeu         t0, t6, 75f
                  xor          s7, s11, tp
                  andi         s6, a2, 1644
                  bne          t4, a7, 72f
                  slt          s5, s4, sp
60:               lui          s10, 549180
                  or           t3, s1, t4
                  auipc        a4, 612942
                  slt          a6, t4, t2
                  xori         t3, s0, 2037
                  beq          s3, a7, 69f
                  sub          t4, s3, t2
                  and          sp, t0, a5
                  slli         tp, zero, 15
69:               addi         a0, a3, -581
                  sltiu        t5, a7, -1882
                  lui          zero, 937889
72:               xor          s6, s1, s11
                  sub          a4, sp, t1
                  xor          t2, t0, t3
75:               andi         s11, sp, -120
                  ori          ra, a4, -1655
                  addi         s0, s6, 2013
                  srl          s7, s9, t1
                  ori          ra, gp, 1403
                  xor          s0, ra, t2
                  bne          t4, sp, 97f
                  srli         s0, a4, 5
                  lui          s10, 967002
                  sltu         s6, t2, t0
                  slt          s8, s6, ra
                  and          gp, t4, a2
                  addi         s4, t5, 1163
                  slt          t0, tp, s8
                  nop
                  or           s11, ra, s7
                  nop
                  sll          tp, s7, s7
                  slt          gp, sp, a1
                  bgeu         s7, t4, 95f
95:               beq          tp, gp, 103f
                  bne          s4, t2, 106f
97:               addi         s10, t2, 1252
                  blt          ra, s0, 106f
                  bgeu         a6, tp, 100f
100:              xor          ra, t6, t2
                  sltiu        s2, a2, -1326
                  slli         a7, s2, 19
103:              and          a3, a1, a5
                  addi         a2, t6, 1671
                  srl          s2, t2, t0
106:              add          t1, zero, t1
                  bltu         s5, s10, 114f
                  sra          a4, a4, s11
                  srli         t1, s9, 9
                  srli         t3, t5, 31
                  bltu         t4, t3, 122f
                  bne          sp, a5, 118f
                  sll          t1, s0, t2
114:              lui          t4, 998934
                  addi         t0, a7, -93
                  add          zero, ra, a5
                  bgeu         sp, t3, 124f
118:              add          zero, zero, t4
                  xor          s2, s1, t0
                  nop
                  blt          t1, s10, 132f
122:              add          a3, zero, a0
                  srl          t6, a6, a1
124:              bgeu         a3, t1, 144f
                  srl          a2, gp, a5
                  sltu         t2, t3, gp
                  sll          a4, s7, tp
                  bgeu         s8, sp, 139f
                  slt          a7, zero, s6
                  auipc        zero, 838435
                  sra          t1, s2, t0
132:              and          s0, s4, t4
                  ori          sp, s3, 648
                  or           s9, t4, t6
                  blt          s2, t6, 136f
136:              sra          sp, gp, s3
                  xor          a3, s9, zero
                  bgeu         s7, s8, 150f
139:              blt          s0, s11, 146f
                  sltiu        gp, s2, 425
                  slti         t4, sp, -1895
                  andi         t4, s1, 1740
                  slt          s2, s7, s1
144:              slti         t6, s9, -367
                  and          ra, s6, s5
146:              bltu         s4, s0, 147f
147:              addi         gp, s11, -38
                  add          s11, s10, s8
                  sra          s2, a6, s11
150:              lui          zero, 690454
                  sub          s6, t2, s10
                  addi         a0, t3, -1698
                  srai         t3, a7, 26
                  nop
                  srai         t0, ra, 29
                  and          t2, s1, s6
                  blt          zero, t6, 170f
                  auipc        t1, 123331
                  add          t0, zero, s3
                  or           a7, a1, s5
                  ori          tp, t5, -366
                  addi         t3, t5, 183
                  srli         s4, s6, 29
                  sra          a3, t0, s3
                  or           s6, s7, a5
                  nop
                  beq          s11, a6, 187f
                  blt          t6, s9, 173f
                  srli         s5, a1, 21
170:              or           ra, s8, a3
                  sltiu        a2, t2, -916
                  ori          a4, a0, -562
173:              sll          a2, s3, t6
                  lui          a0, 355783
                  blt          t1, ra, 191f
                  srli         t0, s3, 29
                  lui          s9, 21758
                  sub          s0, s0, s3
                  xor          t3, t6, s7
                  beq          s9, s10, 187f
                  bne          a0, t2, 191f
                  or           s5, s5, s0
                  and          gp, t2, t6
                  sll          s6, a3, s11
                  sltu         t0, a2, t6
                  srl          sp, t1, a7
187:              nop
                  sltu         t6, s4, a0
                  xor          s4, a1, t0
                  addi         a2, s7, -243
191:              addi         sp, s1, -144
                  sltiu        t6, s8, -1840
                  and          t4, a5, t4
                  xori         t0, s7, -1248
                  addi         t6, gp, -1665
                  slti         sp, gp, 279
                  ori          a4, a5, 1930
                  beq          a0, s5, 218f
                  sltiu        s4, a5, 831
                  add          s3, s3, s9
                  addi         s9, zero, 1690
                  sll          t4, a0, tp
                  or           s0, t4, s5
                  xor          t6, s4, t6
                  bne          ra, s11, 216f
                  xor          t4, s3, a6
                  blt          a2, a6, 223f
                  sub          t4, sp, a5
                  ori          s7, a1, -1377
                  sra          s8, t3, sp
                  ori          s7, ra, 1347
                  xor          t5, a6, a2
                  lui          t3, 335257
                  srai         a7, zero, 20
                  sltu         s11, a3, zero
216:              blt          s1, a4, 220f
                  bge          zero, s3, 237f
218:              lui          s9, 460346
                  slti         tp, a0, 1264
220:              srai         t3, sp, 30
                  sltiu        s4, a4, -1714
                  beq          s4, t3, 230f
223:              xori         a3, s8, -158
                  add          t6, a1, t0
                  add          s9, gp, s4
                  slt          a7, s8, t0
                  or           s7, t5, gp
                  slti         a2, s8, 1445
                  sra          t2, s11, a4
230:              sltiu        gp, t6, -1098
                  beq          gp, a1, 243f
                  add          s0, s10, t2
                  srl          t4, sp, s0
                  slt          s0, a3, s11
                  sra          a2, tp, a1
                  slt          s2, a1, a0
237:              blt          zero, s6, 244f
                  sll          a7, t4, gp
                  ori          t5, t6, -1383
                  slti         s2, gp, -1796
                  blt          gp, t0, 246f
                  slli         t3, gp, 0
243:              sll          s6, a0, t5
244:              ori          tp, s5, 606
                  ori          t5, t4, -1152
246:              addi         t4, s5, -124
                  and          s9, a0, a3
                  bltu         tp, s0, 252f
                  sltiu        t2, ra, 1936
                  or           a0, t3, t2
                  bge          a3, s0, 271f
252:              srl          sp, a3, s7
                  add          s2, a7, t1
                  blt          sp, s7, 268f
                  slti         s6, a3, 826
                  slt          s0, a7, s2
                  bne          t5, t2, 271f
                  add          s2, s0, s5
                  addi         ra, a6, -822
                  sltu         t2, a2, a3
                  addi         t6, a6, -190
                  srai         t1, s9, 26
                  bltu         s5, a7, 269f
                  slli         s7, t5, 31
                  xor          a6, s5, s11
                  srli         gp, a2, 14
                  slt          s7, s9, s11
268:              nop
269:              ori          s2, s1, 772
                  bltu         s7, tp, 275f
271:              auipc        a0, 1031378
                  ori          t4, s2, -1316
                  sub          t6, s2, s0
                  sll          t0, t3, t4
275:              or           sp, a6, gp
                  nop
                  xori         t4, s2, 315
                  beq          a4, ra, 286f
                  auipc        a7, 326328
                  sltiu        t3, s4, -294
                  sltiu        s11, a2, 1468
                  andi         s3, s5, 119
                  andi         a0, t6, -373
                  slt          s5, t4, s0
                  beq          t6, t2, 286f
286:              slti         t5, t5, 678
                  auipc        s8, 480745
                  blt          sp, s5, 306f
                  and          zero, s0, a0
                  addi         a2, ra, -1804
                  nop
                  srai         t4, s3, 9
                  sra          gp, s5, t1
                  and          a0, t2, t2
                  xor          s11, a1, s2
                  slt          t6, a4, t0
                  bltu         a2, sp, 304f
                  and          s5, s11, gp
                  slti         s6, s6, -228
                  auipc        sp, 696216
                  blt          s5, s11, 309f
                  nop
                  nop
304:              bgeu         s1, tp, 310f
                  slti         s5, a7, 1629
306:              bge          s5, a3, 318f
                  sll          a4, t1, s1
                  ori          t4, a4, -1353
309:              slli         s10, s6, 25
310:              sra          s6, a6, sp
                  auipc        t2, 46397
                  sub          s3, t6, a5
                  bne          s6, s0, 329f
                  or           gp, s0, s5
                  bge          tp, a0, 325f
                  xor          ra, a2, a6
                  sltiu        ra, t6, 342
318:              nop
                  srai         s0, zero, 31
                  srl          t0, tp, a3
                  add          t2, a7, s8
                  sll          zero, s1, a1
                  sltu         t0, s5, s11
                  sra          ra, t1, a3
325:              xor          t4, a0, s10
                  bgeu         s10, a4, 346f
                  bge          t6, a6, 332f
                  srl          a7, t3, s11
329:              srai         s9, s9, 17
                  slli         sp, a6, 27
                  xori         a3, a0, -122
332:              slli         sp, s3, 21
                  and          s3, s5, t3
                  addi         t3, s1, 434
                  sltiu        s3, a0, -1929
                  slti         t4, t5, 1940
                  add          t0, s11, s2
                  andi         t5, s7, 1595
                  bne          t1, a0, 359f
                  bgeu         s5, t4, 347f
                  xor          s8, ra, s2
                  lui          a6, 324592
                  addi         t1, tp, -966
                  and          s8, ra, a6
                  xor          s7, a6, ra
346:              beq          a5, s6, 351f
347:              bgeu         a0, a5, 354f
                  sltu         s6, s2, ra
                  slti         s5, s1, -1728
                  auipc        s6, 339643
351:              lui          t6, 561833
                  slti         t1, a2, 870
                  sltiu        a6, s4, 1833
354:              blt          sp, t5, 359f
                  xor          s5, s3, t0
                  auipc        a3, 185319
                  sra          s9, zero, a0
                  srai         s7, a5, 5
359:              sltu         t4, ra, s0
                  or           s7, s11, t1
                  sltu         s6, t2, s4
                  addi         ra, s2, -1296
                  srai         a3, ra, 24
                  andi         a4, a1, -1721
                  bge          t1, s2, 376f
                  srli         sp, t4, 4
                  add          ra, t1, s4
                  or           t2, s1, s9
                  bltu         s6, s5, 380f
                  srli         t1, s8, 28
                  nop
                  sll          a4, t0, t4
                  lui          t5, 217307
                  xor          t3, a0, s8
                  la           s6, region_1+1412 #start riscv_load_store_rand_instr_stream_8
                  sh           s1, -1266(s6)
                  lhu          a4, 212(s6)
                  ori          gp, s4, 1309
                  sb           a4, -1090(s6)
                  sll          s4, s5, t5
                  srli         ra, a3, 22
                  add          t0, a0, ra
                  slt          a3, s7, s0
                  sh           s3, -1306(s6)
                  slli         t2, a1, 6
                  slti         t0, zero, 666
                  lui          a0, 999748
                  sb           s0, -529(s6)
                  lbu          s4, 493(s6)
                  sb           a1, -712(s6)
                  lbu          sp, -567(s6)
                  srli         s0, s9, 21
                  srli         s10, a5, 22
                  lb           gp, -898(s6)
                  sb           t4, -1010(s6)
                  lb           t2, -121(s6)
                  lbu          s9, -143(s6)
                  slt          sp, s4, t4
                  slt          t6, t5, s7
                  slli         t1, t5, 18
                  lb           tp, -981(s6)
                  sb           s9, 208(s6)
                  sub          s4, sp, s1
                  add          a4, s2, s8
                  sb           s0, -1183(s6)
                  lb           s7, -125(s6)
                  lb           a4, -279(s6)
                  lhu          s2, -990(s6)
                  lb           s11, 97(s6)
                  sltu         a7, a6, t6
                  lbu          gp, -307(s6)
                  srl          a3, t0, ra
                  srl          s4, s0, a3
                  auipc        s8, 739037
                  sb           s10, 583(s6)
                  add          t3, s4, t3
                  xori         a0, gp, -887
                  auipc        s0, 677369
                  nop
                  lui          s2, 777643
                  lb           tp, 166(s6)
                  or           t3, ra, ra
                  nop
                  lbu          s11, 551(s6) #end riscv_load_store_rand_instr_stream_8
                  bge          a7, s7, 379f
376:              srli         sp, a0, 2
                  sll          sp, s0, a4
                  sra          s0, s11, a5
379:              slli         s11, ra, 27
380:              add          t5, gp, s5
                  sltu         t0, tp, s0
                  bgeu         a6, s4, 394f
                  sll          ra, a5, t5
                  addi         t2, s10, -1106
                  lui          gp, 538614
                  sub          a6, zero, ra
                  lui          s0, 143865
                  auipc        t0, 694923
                  auipc        a2, 799350
                  slti         t5, a5, 517
                  xor          t6, s5, sp
                  bge          ra, a1, 396f
                  addi         s6, a6, -978
394:              bltu         t6, s5, 401f
                  blt          zero, sp, 415f
396:              slti         a0, t2, 14
                  slti         tp, s11, 642
                  slti         s10, a2, -1883
                  blt          a1, t3, 412f
                  sltu         a0, t4, s2
401:              xor          t5, a4, s6
                  xori         gp, a5, 1810
                  andi         t6, tp, -1362
                  sltu         tp, tp, s5
                  auipc        zero, 830969
                  blt          t6, t5, 407f
407:              sub          ra, t2, sp
                  lui          s9, 369697
                  slli         t1, a7, 24
                  auipc        a4, 1023392
                  slt          sp, a3, a3
412:              xori         s8, s10, 1669
                  blt          a6, s6, 414f
414:              lui          s9, 247966
415:              beq          a0, s1, 435f
                  slti         a4, s3, -222
                  bgeu         a6, t4, 425f
                  sltiu        s7, a7, 271
                  sra          a2, s10, s8
                  blt          a2, s6, 421f
421:              bge          tp, s0, 439f
                  lui          t4, 13948
                  bgeu         zero, s3, 437f
                  sub          t4, t2, s9
425:              bne          tp, s2, 432f
                  bne          a0, t0, 442f
                  andi         s6, s6, -1213
                  xor          t4, s9, s7
                  nop
                  slt          s3, s5, a5
                  sltiu        s4, t1, -1943
432:              bltu         s6, s0, 446f
                  slti         s10, s5, -368
                  blt          a1, a3, 447f
435:              auipc        gp, 840554
                  blt          a1, gp, 441f
437:              sltiu        s2, s5, -1653
                  sll          s8, a3, s1
439:              xor          s4, t2, s11
                  bne          zero, a0, 447f
441:              srl          s3, s4, t5
442:              slli         s9, a2, 28
                  sra          gp, gp, a2
                  srl          zero, a4, s7
                  blt          s3, s1, 463f
446:              slli         t6, a5, 13
447:              blt          t5, t2, 454f
                  bne          t6, gp, 459f
                  slt          zero, s5, t5
                  xor          t5, t5, t4
                  xori         s11, tp, -1312
                  auipc        s8, 262870
                  srai         s10, s2, 11
454:              bge          ra, s5, 459f
                  ori          t5, s4, -1244
                  srli         t3, s3, 20
                  andi         s3, s1, -916
                  xor          a6, s1, a4
459:              sra          a2, s8, s9
                  sltu         s2, s9, s1
                  srl          t5, a4, s0
                  andi         s11, a3, -1116
463:              ori          t4, t4, 421
                  srl          a2, t3, s8
                  ori          ra, t2, -1489
                  add          t0, s6, t5
                  slt          ra, t0, s0
                  sltu         tp, t1, a0
                  ori          a6, t0, -340
                  blt          a2, a1, 490f
                  xor          t5, a2, t6
                  bltu         t3, s3, 492f
                  bne          t4, t1, 487f
                  add          zero, t5, a3
                  slli         s10, zero, 0
                  ori          zero, s5, -619
                  add          zero, zero, a7
                  beq          a2, a5, 485f
                  srai         a7, s7, 5
                  blt          tp, a6, 500f
                  lui          s8, 181675
                  add          a0, s10, s2
                  bgeu         a1, a3, 489f
                  xor          s11, s11, t0
485:              srai         s7, s1, 21
                  sra          s0, a4, s4
487:              auipc        zero, 508408
                  sra          t2, s0, a5
489:              nop
490:              sltu         t6, s4, t2
                  slli         gp, s1, 27
492:              nop
                  bltu         tp, t4, 497f
                  sltu         s0, tp, t3
                  srli         a3, sp, 22
                  sltiu        s7, t4, -1279
497:              add          a0, s4, s4
                  nop
                  xori         s7, s0, -267
500:              srli         s10, s9, 27
                  sltu         a7, s7, s8
                  slt          t4, gp, gp
                  nop
                  add          tp, s1, a4
                  sll          a7, s5, a5
                  xor          a3, t6, s1
                  bltu         a6, a7, 517f
                  slti         t5, t1, -1824
                  beq          s4, s8, 525f
                  blt          s11, s1, 522f
                  xor          s0, a1, a1
                  slli         s11, a5, 4
                  sra          a2, t2, s2
                  bltu         t5, t4, 515f
515:              slt          a3, s2, s10
                  sll          gp, a7, t1
517:              bltu         sp, gp, 524f
                  beq          sp, zero, 538f
                  bge          t0, s8, 533f
                  bge          t2, s10, 524f
                  andi         ra, t3, 71
522:              blt          s3, s11, 527f
                  or           s7, a3, a3
524:              ori          t1, s6, 989
525:              sub          s9, a0, s10
                  slli         t4, t3, 15
527:              sltiu        a2, s8, 585
                  xor          t2, s1, s11
                  bne          s10, s0, 530f
530:              beq          zero, s2, 541f
                  sll          s9, gp, zero
                  srai         t2, gp, 1
533:              bgeu         s5, gp, 545f
                  nop
                  beq          a2, s2, 551f
                  sub          a0, a1, a0
                  beq          tp, t6, 545f
538:              xori         s5, s7, -1203
                  or           s2, a7, a2
                  and          s7, a2, a7
541:              slli         a7, s10, 1
                  xor          s6, tp, s1
                  srl          t4, t0, s1
                  srl          s3, s9, t5
545:              or           a7, t5, s6
                  bge          s5, s5, 554f
                  beq          gp, s11, 548f
548:              or           a4, a7, s4
                  beq          t2, zero, 556f
                  or           a0, t0, s3
551:              bne          a6, s7, 558f
                  bgeu         a5, a2, 568f
                  sltiu        s8, s7, -538
554:              srai         s2, a1, 12
                  sll          a6, t3, s11
556:              xor          a7, t1, t6
                  sra          t1, a6, a6
558:              xor          gp, t0, zero
                  bge          a1, t3, 569f
                  sll          s0, a4, s2
                  lui          a6, 456342
                  auipc        a3, 158691
                  sra          s0, s0, s11
                  srai         a0, t2, 12
                  ori          t4, a6, -1592
                  srai         t0, t1, 9
                  sub          t6, s5, s6
568:              beq          t3, s8, 580f
569:              nop
                  sltiu        s0, s4, -988
                  srli         tp, a1, 26
                  ori          s11, s6, 565
                  blt          s0, s4, 580f
                  srl          a6, zero, a5
                  srli         a4, gp, 11
                  xori         a4, gp, -1392
                  sll          s8, t2, a1
                  slti         t4, s7, 649
                  bltu         t1, s5, 583f
580:              sra          t3, zero, s8
                  srai         t5, s6, 11
                  nop
583:              nop
                  or           t5, t2, s5
                  nop
                  beq          s3, a5, 587f
587:              sltiu        t2, a4, 7
                  or           a4, t3, a5
                  or           a2, s10, t5
                  and          tp, t2, t5
                  srai         t3, s0, 30
                  sra          t3, t5, s4
                  srli         sp, t4, 20
                  srai         ra, s4, 31
                  blt          gp, a5, 603f
                  lui          a7, 188295
                  srai         t2, t0, 14
                  slti         t1, s11, 785
                  bge          a6, a4, 613f
                  or           t6, s7, s7
                  srai         s8, s2, 12
                  or           s9, a0, t4
603:              slti         t3, s1, 1520
                  blt          t4, t6, 624f
                  sra          s11, s7, t6
                  add          a4, s4, a5
                  auipc        s4, 514963
                  xor          s3, tp, s11
                  sub          zero, s7, s2
                  sub          s4, s4, s8
                  bge          a7, s5, 618f
                  addi         s8, t0, -783
613:              bge          a7, s4, 633f
                  srli         t4, s7, 22
                  sub          s5, s11, gp
                  srli         s5, t6, 28
                  sltu         t4, sp, s10
618:              sltiu        a3, s2, -170
                  xori         s10, t0, 1879
                  xori         a6, t6, 167
                  bltu         s0, t5, 622f
622:              or           s9, t2, a1
                  beq          s9, t6, 627f
624:              and          ra, a0, s6
                  nop
                  slli         ra, a2, 4
627:              lui          t0, 225598
                  sltiu        s6, a1, -1590
                  addi         t3, t2, 1866
                  slt          s3, a1, a7
                  slti         t4, s10, -205
                  bltu         s8, a2, 637f
633:              ori          s0, t0, 149
                  blt          s1, sp, 650f
                  lui          s11, 794674
                  xor          s8, a4, a1
637:              bltu         zero, s9, 648f
                  xori         a7, a1, -915
                  srai         ra, t1, 30
                  andi         a4, t2, 1918
                  slt          a0, tp, a5
                  lui          s10, 590252
                  nop
                  bge          sp, s11, 649f
                  bne          s3, t6, 653f
                  sltu         s6, t3, s5
                  srl          a2, a4, s6
648:              and          t4, a7, t5
649:              sub          s6, s7, gp
650:              sll          s3, a1, s4
                  sll          a3, a1, zero
                  slti         s3, a1, 665
653:              sub          tp, t0, s3
                  xor          s5, s6, a1
                  ori          a3, s10, 812
                  andi         s7, s4, 1686
                  ori          a4, s8, -1769
                  andi         s7, a2, 1178
                  bltu         s4, s1, 679f
                  sub          s3, s0, a7
                  slt          t2, s2, a0
                  andi         sp, a3, -373
                  srai         a2, s8, 13
                  add          t0, gp, ra
                  beq          a3, tp, 678f
                  slti         ra, s3, 1808
                  bne          s5, t5, 679f
                  lui          a4, 668149
                  bltu         t0, sp, 674f
                  sltiu        a6, t5, -986
                  and          t5, s4, a5
                  lui          t3, 484068
                  sub          s3, a4, s6
674:              blt          s10, a3, 675f
675:              sra          t2, ra, a0
                  sltiu        t5, t3, -1303
                  bge          t2, s10, 695f
678:              addi         t0, a0, -197
679:              sra          s5, a2, s9
                  addi         t1, t3, -1905
                  sltiu        s3, a6, 247
                  and          s2, tp, s6
                  sltu         s6, a4, a0
                  srli         tp, t5, 2
                  ori          ra, zero, 1611
                  ori          a3, s2, -785
                  sll          t0, a0, t3
                  sltu         s2, s10, s0
                  auipc        s3, 857747
                  and          s0, s9, s10
                  and          s6, s8, t6
                  srai         zero, t4, 15
                  sll          s9, s11, s3
                  slli         t3, s7, 0
695:              bge          s7, a2, 709f
                  ori          a6, a4, 663
                  auipc        t5, 114575
                  srli         a0, t0, 25
                  sll          sp, a4, sp
                  nop
                  sll          s11, s6, tp
                  beq          s1, s11, 722f
                  sll          t4, s2, t4
                  auipc        a7, 96
                  sra          s7, tp, t4
                  ori          a0, a5, 792
                  srli         s9, sp, 30
                  slti         a0, s0, -1310
709:              sltiu        s0, a7, -331
                  nop
                  sub          t1, ra, s9
                  auipc        t4, 180228
                  nop
                  sltiu        a0, s8, -283
                  slti         s9, s1, 949
                  slli         a3, a7, 26
                  and          a7, s6, s10
                  auipc        s3, 358309
                  xor          a7, t5, sp
                  sltu         ra, s8, a5
                  slli         s6, t0, 14
722:              lui          s3, 939540
                  auipc        t3, 623344
                  srli         s9, s5, 23
                  sltu         s10, t6, a1
                  slt          sp, t0, a2
                  nop
                  sltu         s5, s3, s4
                  slli         t2, s1, 6
                  sra          a4, s6, s9
                  sltu         s10, s11, a0
                  bge          t0, a3, 738f
                  la           s5, region_1+162 #start riscv_load_store_rand_instr_stream_2
                  sltu         s8, tp, s2
                  nop
                  sb           s1, 51(s5)
                  lbu          t5, -24(s5)
                  lbu          a6, 59(s5)
                  srai         a0, zero, 17
                  sh           a2, 24(s5)
                  addi         tp, t3, -461
                  auipc        a4, 51607
                  ori          ra, a2, 1938
                  lhu          a4, 44(s5)
                  nop
                  or           gp, s2, s6
                  sb           a4, 15(s5)
                  addi         s9, tp, 109
                  lb           gp, 10(s5)
                  sltiu        s6, s4, 1120
                  lhu          t0, -52(s5)
                  sh           a2, -64(s5)
                  lhu          gp, 28(s5)
                  sb           tp, 15(s5)
                  andi         tp, gp, -449
                  lbu          s10, 11(s5)
                  sltiu        s4, s7, -82
                  or           s8, zero, t0
                  srl          a3, s11, s11
                  lb           a7, 37(s5)
                  lbu          a7, 12(s5)
                  slt          s2, gp, t6
                  or           a7, sp, zero
                  xor          s7, s3, s2
                  sb           s1, -34(s5)
                  sltiu        sp, s6, 364
                  sh           zero, -10(s5)
                  lb           t2, -35(s5)
                  slli         s6, sp, 26
                  sub          t6, t5, s11
                  sltu         s2, ra, s1
                  and          t0, s1, t0
                  nop
                  lbu          s0, 50(s5)
                  sra          s11, s2, t0
                  andi         zero, ra, -1453
                  or           s11, s4, a0
                  addi         s11, t0, 740
                  sll          s8, tp, a7
                  lbu          t2, 35(s5)
                  slt          sp, a1, a3
                  lb           s8, -33(s5) #end riscv_load_store_rand_instr_stream_2
                  or           sp, zero, s0
                  nop
                  slti         t5, gp, -858
                  sltiu        t2, s7, -1514
                  sub          a6, s6, s1
738:              sltu         s4, s0, s2
                  sltu         a2, a4, s6
                  slli         t2, a5, 26
                  xori         s9, a1, 1875
                  andi         t4, t5, -830
                  auipc        a4, 338618
                  ori          s7, t4, -286
                  and          a6, s10, t3
                  ori          sp, s6, -1632
                  xori         a2, s11, 1481
                  srai         a7, s4, 23
                  addi         s7, s9, 160
                  andi         a0, a4, 985
                  auipc        a2, 784459
                  xor          t4, t6, gp
                  bltu         t4, t6, 764f
                  auipc        s7, 713517
                  beq          s8, s4, 767f
                  beq          a2, a6, 767f
                  blt          a7, s11, 767f
                  blt          t5, s9, 759f
759:              xor          s3, sp, sp
                  nop
                  add          gp, s5, s5
                  sra          a4, s7, tp
                  sll          s9, a0, s6
764:              srai         s9, a2, 31
                  nop
                  ori          s0, s3, -464
767:              bltu         s9, t2, 771f
                  and          t2, t4, t5
                  sltu         t3, t0, gp
                  bltu         a1, s5, 771f
771:              srai         a3, a2, 23
                  bltu         t4, t2, 779f
                  xori         t4, t3, 195
                  bltu         a7, a1, 790f
                  lui          s10, 931574
                  ori          ra, ra, -547
                  slt          t3, t5, a7
                  sra          t2, t1, t1
779:              addi         s4, a0, -1584
                  andi         t1, zero, -404
                  ori          a4, tp, -676
                  addi         t5, ra, 595
                  addi         s6, tp, 1211
                  addi         t1, a5, -1673
                  sll          s11, a6, s2
                  sra          ra, sp, t3
                  bge          t1, s0, 793f
                  sltu         t4, t0, t4
                  and          s7, t3, s5
790:              bgeu         s6, t2, 802f
                  xori         a0, t4, -1048
                  srl          t3, a0, t5
793:              srai         s2, a7, 29
                  lui          t5, 94450
                  and          tp, t2, s11
                  sll          t1, a4, s4
                  bltu         t3, sp, 810f
                  nop
                  bne          t6, s8, 819f
                  bne          s10, s1, 816f
                  slli         t2, s11, 20
802:              srai         a4, sp, 10
                  srli         ra, sp, 5
                  bltu         t4, a0, 809f
                  slli         s8, s3, 0
                  sub          zero, s0, s3
                  bne          t3, sp, 811f
                  ori          t5, a2, -448
809:              sra          s6, a7, tp
810:              slli         s3, s10, 19
811:              slti         a7, a3, -477
                  xori         s10, t5, 1043
                  nop
                  lui          a3, 249448
                  or           ra, s2, a0
816:              srli         a0, a7, 17
                  beq          a7, s1, 825f
                  sll          a0, s3, sp
819:              slli         t1, a3, 18
                  beq          t0, ra, 840f
                  addi         gp, ra, -1888
                  nop
                  bltu         s5, s6, 824f
824:              slli         s8, a5, 14
825:              bge          s3, t3, 832f
                  bgeu         s8, zero, 831f
                  slti         zero, sp, 247
                  slti         t4, a1, -1452
                  auipc        s5, 787945
                  sltiu        a3, a1, 1691
831:              nop
832:              blt          s2, a3, 852f
                  ori          ra, s4, 1604
                  xori         ra, sp, 464
                  and          s2, tp, a2
                  auipc        s11, 248604
                  slt          s7, t1, t0
                  blt          t3, t5, 843f
                  and          t6, tp, s0
840:              xori         s3, s6, -980
                  auipc        a3, 621558
                  srl          s7, s8, s6
843:              andi         t1, t0, -1488
                  xor          t2, s10, gp
                  or           t2, t1, t4
                  sltu         t3, ra, tp
                  ori          ra, t4, 786
                  addi         zero, a2, -664
                  bge          s10, zero, 869f
                  and          s5, s0, t1
                  sltiu        s7, a2, -1543
852:              srli         s2, s3, 20
                  sltiu        a3, s5, 1003
                  srli         tp, s10, 11
                  slli         t4, s0, 12
                  xori         a7, s6, -597
                  lui          zero, 736445
                  slt          tp, t0, a3
                  nop
                  slti         s4, s5, -567
                  bge          s9, s3, 875f
                  sub          t6, s0, sp
                  or           s11, t4, s2
                  add          sp, s1, a4
                  or           a7, sp, a2
                  sub          t2, t0, a5
                  sub          s6, s0, a6
                  or           s2, zero, zero
869:              or           t0, s3, a7
                  slt          s6, s1, s6
                  add          t1, a6, a2
                  add          a2, t1, s9
                  beq          t0, t4, 880f
                  srl          s0, a4, s4
875:              bltu         t3, s5, 883f
                  sll          ra, a6, s9
                  sll          t2, s8, s5
                  ori          s5, t1, 833
                  slti         t5, s10, 232
880:              ori          s6, s3, 191
                  lui          s0, 613061
                  blt          a5, a1, 893f
883:              srli         a3, a3, 10
                  or           t5, a6, t4
                  and          s9, s8, t6
                  slli         s10, a6, 4
                  andi         zero, s7, 355
                  or           s11, a4, s2
                  slt          s10, t1, zero
                  add          t4, a4, t2
                  addi         a4, a0, -932
                  slti         gp, a2, -224
893:              slti         s3, a6, -1760
                  xori         a0, a6, 517
                  sltu         s4, sp, t5
                  add          t5, s9, a7
                  nop
                  lui          sp, 644264
                  and          a2, s3, s6
                  lui          s3, 291980
                  slli         t4, t2, 25
                  ori          s5, t2, -1708
                  ori          s7, t1, -1095
                  sll          a6, s8, gp
                  lui          a4, 765904
                  sltiu        a0, s5, -1419
                  sub          a6, s4, a3
                  srl          gp, s7, t4
                  add          t3, a0, s0
                  and          s0, s2, s10
                  bge          a1, t6, 925f
                  auipc        s10, 586475
                  sltiu        t0, t5, 1689
                  xor          a4, s4, s2
                  xor          t6, t6, s6
                  and          t0, s11, s3
                  bge          s7, s8, 935f
                  nop
                  slli         sp, gp, 15
                  bge          t1, s5, 927f
                  sltiu        zero, s9, 1464
                  ori          s4, a6, 867
                  sub          s3, s6, a0
                  ori          ra, t6, -1809
925:              or           s0, a5, a1
                  slti         s2, a2, 623
927:              or           tp, ra, a1
                  sll          s5, s11, s4
                  sra          s0, a6, s8
                  sll          t2, gp, s1
                  slti         s9, a0, 939
                  xori         ra, s7, 192
                  bge          a4, zero, 940f
                  bltu         t2, a3, 945f
935:              sltiu        t4, s1, 1641
                  slli         s2, s4, 22
                  or           tp, s5, ra
                  auipc        t4, 646736
                  lui          a4, 352415
940:              nop
                  add          s9, s2, s10
                  sltu         t2, s10, a6
                  srl          s0, a5, s0
                  nop
945:              andi         tp, a6, 621
                  slti         a2, a7, -742
                  andi         a0, zero, 1135
                  slti         sp, ra, -489
                  or           a7, t3, gp
                  slt          s7, t1, a0
                  addi         s10, gp, 608
                  add          s8, tp, a5
                  beq          t3, s8, 957f
                  srli         zero, t0, 25
                  sub          sp, zero, s3
                  or           s10, sp, a7
957:              sra          zero, gp, a2
                  auipc        s5, 371985
                  blt          t1, s11, 963f
                  slt          s11, s11, s3
                  beq          sp, a1, 975f
                  nop
963:              andi         s3, t2, -10
                  sub          t0, tp, a3
                  bltu         s10, a1, 985f
                  slti         s8, s5, -1625
                  blt          a5, s6, 975f
                  addi         a0, s11, -2025
                  and          gp, a4, sp
                  beq          s8, s6, 975f
                  slli         t3, zero, 12
                  xori         s7, a1, 829
                  slti         tp, t1, -1081
                  andi         s11, a4, 728
975:              slli         zero, gp, 28
                  bgeu         s4, s2, 992f
                  sltiu        ra, zero, -1779
                  xor          t3, a2, s10
                  ori          a4, t2, -1769
                  beq          t6, s2, 990f
                  lui          a0, 858519
                  lui          t1, 682079
                  slti         t2, s7, 1803
                  sll          t6, s10, a7
985:              beq          s3, a0, 993f
                  beq          a5, s8, 1006f
                  auipc        t6, 503655
                  slt          a2, s9, s1
                  sltiu        t0, a0, 1911
990:              sra          s4, a2, s8
                  sll          t0, s3, s7
992:              slt          t2, t1, s10
993:              sll          gp, s4, t2
                  sltu         a4, a3, s1
                  lui          a0, 509534
                  blt          a2, s11, 1007f
                  srai         s2, s3, 3
                  auipc        a3, 601804
                  srli         t0, gp, 0
                  bgeu         s10, s8, 1012f
                  srai         a4, s7, 10
                  srli         s9, a5, 19
                  slli         t1, zero, 18
                  slti         a6, a7, -376
                  sltu         sp, a7, a1
1006:             nop
1007:             sltu         t3, t6, ra
                  and          t4, s8, sp
                  bne          s4, sp, 1021f
                  and          t4, a4, gp
                  sra          s7, t3, t1
1012:             blt          t2, a3, 1017f
                  slt          tp, a2, s11
                  slt          t4, t6, s4
                  bne          t2, t6, 1035f
                  add          s9, t2, s2
1017:             slti         a4, a4, -1511
                  or           t2, s0, s0
                  nop
                  sltiu        t0, t6, 1733
1021:             blt          s4, s6, 1039f
                  bltu         s3, a7, 1023f
1023:             blt          gp, gp, 1029f
                  add          s2, s7, s1
                  srl          sp, s7, s4
                  slti         t5, s4, -130
                  bltu         a3, s5, 1043f
                  sll          s3, zero, a7
1029:             addi         gp, s11, 1684
                  blt          a1, s2, 1037f
                  xor          t2, s2, s0
                  addi         s10, s9, 44
                  slli         ra, gp, 18
                  ori          t4, t0, -1793
1035:             srl          t6, s4, s0
                  add          t1, a4, a0
1037:             slli         t4, s8, 27
                  bge          s5, s2, 1052f
1039:             slti         s2, s6, -251
                  xor          t0, t6, t1
                  and          s9, t4, s3
                  beq          a1, t6, 1055f
1043:             nop
                  bne          tp, a5, 1064f
                  lui          s10, 431062
                  xori         zero, s11, -321
                  sll          a4, s10, zero
                  ori          s6, s11, 1569
                  sltiu        s0, a2, -789
                  sra          t4, t5, s4
                  srl          a4, a2, s5
1052:             or           t2, a6, tp
                  xor          s8, s6, a5
                  andi         s2, t6, -193
1055:             xori         s9, t0, -692
                  slti         t5, a6, 2001
                  srai         t0, s3, 3
                  slli         s0, s8, 26
                  andi         s11, s7, -1156
                  srli         a7, a4, 28
                  sltiu        a7, t2, -1323
                  bltu         t6, a1, 1069f
                  srli         t2, s8, 16
1064:             sub          a0, s6, a3
                  bgeu         t4, a3, 1066f
1066:             slt          sp, gp, s7
                  sra          ra, s3, s3
                  auipc        a3, 845655
1069:             bltu         a4, t5, 1074f
                  addi         t3, zero, -332
                  srai         t5, zero, 4
                  beq          s1, t5, 1073f
1073:             bgeu         s0, t2, 1080f
1074:             bne          t4, s1, 1086f
                  blt          t2, t0, 1086f
                  xori         a6, a1, 905
                  addi         zero, s5, -517
                  beq          a5, t1, 1098f
                  bne          sp, s11, 1087f
1080:             beq          t0, t5, 1081f
1081:             blt          s10, s2, 1097f
                  and          t6, gp, t3
                  srl          a0, a4, s0
                  slli         a3, a6, 18
                  slli         s5, s2, 5
1086:             bltu         s7, s9, 1087f
1087:             sltu         s11, s8, s10
                  bge          t1, t1, 1106f
                  sub          t2, t5, t6
                  sra          t4, s10, s4
                  auipc        t1, 949058
                  la           a6, sub_5
                  add          t4, s11, s4
                  addi         a6, a6, -300
                  slt          t3, a1, ra
                  nop
                  bltu         s9, s3, sub_4_j6 #branch to jump instr
                  ori          s9, a0, -1651
                  and          s11, s2, t6
sub_4_j6:         jalr         s4, a6, 301 #jump sub_4 -> sub_5
                  sltiu        s5, a0, -1069
                  and          s10, a1, s8
                  lui          s10, 93637
                  sra          s11, tp, a6
                  slt          t5, t1, a1
                  auipc        t5, 419500
                  slti         s4, t1, -519
1097:             sltiu        a0, t1, 726
1098:             srai         a0, a1, 7
                  srli         t3, sp, 21
                  auipc        s2, 925629
                  sll          t1, s6, s5
                  srai         t1, t5, 5
                  slli         a7, s3, 15
                  addi         s5, s6, 887
                  nop
1106:             andi         t0, a1, -1646
                  beq          a6, a2, 1127f
                  sltu         t3, s11, s3
                  bltu         t3, s3, 1123f
                  slti         gp, a3, 1708
                  srai         s8, s0, 29
                  bgeu         s11, s6, 1117f
                  nop
                  ori          t5, ra, 64
                  slt          t2, s9, s1
                  bltu         a5, a3, 1123f
1117:             slti         s0, s5, -886
                  blt          s6, t0, 1128f
                  bne          s6, t0, 1123f
                  sltu         t6, a6, sp
                  sltiu        tp, sp, -91
                  sra          s10, a4, sp
1123:             blt          a7, s7, 1130f
                  ori          a6, t3, -1455
                  addi         a3, a3, -1536
                  nop
1127:             xor          a0, t4, t3
1128:             srli         t0, a2, 0
                  add          a6, s8, gp
1130:             or           a2, s8, s10
                  sltiu        t0, t0, 1003
                  slti         a3, t6, 822
                  xor          a0, s3, s2
                  auipc        t0, 761536
                  or           t3, a6, t3
                  addi         s5, s10, -1385
                  beq          gp, s7, 1153f
                  slti         s7, s1, 790
                  sra          s6, s2, a0
                  sub          s8, t2, s0
                  slt          t0, a5, a4
                  auipc        s0, 619335
                  nop
                  blt          s4, t1, 1152f
                  bge          t4, s6, 1165f
                  sll          s8, s11, s4
                  nop
                  slt          s4, a6, gp
                  srl          ra, a5, s0
                  sll          gp, t2, a2
                  ori          s8, s11, 23
1152:             addi         a0, t3, 486
1153:             sll          s0, a3, t5
                  slti         s0, a5, 1549
                  srl          a7, a1, zero
                  slli         s4, gp, 13
                  sub          t6, s2, a3
                  lui          s6, 1000254
                  srli         a0, s2, 23
                  or           t2, s8, ra
                  blt          s6, a1, 1165f
                  slli         gp, s6, 30
                  xor          a0, t6, t4
                  sltiu        s11, tp, -1017
1165:             bge          tp, s2, 1178f
                  slt          t4, a1, s2
                  sub          s8, ra, a1
                  slt          t5, t0, s10
                  sub          s7, s2, s1
                  sub          s4, gp, s4
                  bne          s10, s8, 1183f
                  bgeu         t5, a3, 1178f
                  slti         s4, s8, 1285
                  or           s2, s1, s3
                  bgeu         t0, s6, 1180f
                  bltu         a4, a6, 1190f
                  auipc        s0, 202590
1178:             sltu         t0, t6, s9
                  add          sp, gp, s1
1180:             or           s2, sp, ra
                  sra          t3, a3, a7
                  xori         t4, tp, -1166
1183:             bltu         t5, s6, 1190f
                  lui          sp, 813796
                  sub          s10, s9, a5
                  sra          a4, tp, a0
                  add          s6, s1, a3
                  auipc        t4, 944396
                  and          a0, s2, t1
1190:             lui          s11, 866874
                  sub          s4, a4, s9
                  srai         gp, s10, 7
                  nop
                  xori         s7, s9, 1809
                  add          t5, s4, s9
                  bge          s10, s9, 1197f
1197:             srl          a2, t5, a5
                  slti         gp, gp, 563
                  bltu         zero, a4, 1204f
                  slli         gp, s3, 19
                  xor          a0, a0, a4
                  sub          t4, s1, a2
                  bgeu         s0, a4, 1210f
1204:             srl          s11, t6, a1
                  blt          a5, s8, 1225f
                  sra          t4, t1, s0
                  xor          gp, s1, a7
                  bltu         s5, t4, 1219f
                  xor          s5, tp, gp
1210:             slti         t4, a2, 349
                  andi         s5, a3, 1135
                  ori          a0, s10, 1373
                  blt          a2, gp, 1224f
                  bltu         s3, zero, 1221f
                  xori         zero, t4, 1976
                  lui          a6, 209826
                  lui          t1, 603248
                  srl          zero, t0, a6
1219:             xori         s10, a3, 735
                  bne          t6, t0, 1234f
1221:             sra          s2, t4, t5
                  beq          ra, tp, 1230f
                  add          s5, s6, t2
1224:             sll          s11, s9, t6
1225:             xor          t5, t1, s0
                  nop
                  bne          s10, a3, 1232f
                  nop
                  sra          gp, t6, a3
1230:             auipc        a6, 600476
                  sra          tp, ra, ra
1232:             srli         s4, gp, 28
                  bgeu         a3, ra, 1253f
1234:             sub          tp, s5, ra
                  bgeu         ra, s8, 1245f
                  blt          s0, s0, 1244f
                  xori         s2, s6, -1340
                  lui          a7, 728294
                  slli         s6, s8, 25
                  bgeu         tp, t6, 1247f
                  addi         tp, t6, 2046
                  lui          tp, 139878
                  bltu         a3, s7, 1255f
1244:             beq          s11, a3, 1245f
1245:             add          s2, a6, s6
                  ori          ra, sp, -1572
1247:             bltu         t0, s1, 1267f
                  beq          t1, t1, 1249f
1249:             bge          t6, s6, 1253f
                  sltu         s5, s0, a6
                  slti         s7, t1, 623
                  bltu         ra, t5, 1270f
1253:             sra          s5, tp, a6
                  beq          s9, s3, 1258f
1255:             bgeu         a5, t3, 1275f
                  sltiu        s3, a2, 1804
                  slt          tp, t1, zero
1258:             and          s11, s0, t3
                  blt          a7, a2, 1265f
                  bne          a7, a1, 1265f
                  srli         s8, a3, 18
                  slti         a7, t4, 1662
                  slt          s8, a6, s4
                  xori         s4, gp, -335
1265:             bltu         a5, s5, 1278f
                  slt          a0, s10, s2
1267:             add          s9, s1, a3
                  add          zero, a2, a3
                  and          s0, a1, a2
1270:             sra          t5, s6, a3
                  or           t2, s3, s10
                  slt          a0, s1, s4
                  bne          s5, a6, 1280f
                  xor          a3, a2, s1
1275:             nop
                  or           gp, s10, t6
                  xor          s6, a7, s8
1278:             sra          s8, a0, ra
                  slti         gp, a3, -500
1280:             beq          s8, s2, 1300f
                  add          t3, zero, tp
                  and          a2, a7, gp
                  slt          s6, t3, a0
                  xor          t2, s8, zero
                  srai         s11, s4, 8
                  addi         t2, sp, -1519
                  and          s4, t3, a4
                  sltiu        a4, s10, -1922
                  sltiu        a0, a1, 1587
                  slt          s4, a7, s6
                  slt          s4, t5, t0
                  lui          gp, 886792
                  blt          t1, s11, 1304f
                  blt          a2, t5, 1301f
                  beq          s3, a3, 1296f
1296:             addi         gp, s5, 511
                  srl          t3, t3, gp
                  sltiu        a7, a0, -351
                  srl          s9, s6, s5
1300:             sra          t6, t5, t3
1301:             bge          s10, s6, 1315f
                  sll          a3, s0, a3
                  xor          s0, ra, sp
1304:             bgeu         s0, t3, 1320f
                  sltu         s10, t1, a0
                  andi         t2, s2, -968
                  addi         t5, s6, 1251
                  sub          t5, t0, a2
                  sra          t3, a4, s8
                  auipc        s11, 207308
                  srl          s9, a1, s2
                  sub          s5, a4, t5
                  and          t0, s1, a0
                  sub          s4, s8, t4
1315:             bltu         ra, gp, 1320f
                  or           s10, tp, s0
                  slt          s4, s8, t0
                  xori         sp, a7, 1585
                  srli         zero, s5, 12
1320:             or           gp, t2, a6
                  ori          t4, s4, 1211
                  beq          ra, a7, 1338f
                  lui          s11, 809313
                  or           sp, s5, s6
                  and          tp, t5, t1
                  auipc        a4, 950712
                  srli         s5, t3, 15
                  sra          s7, t2, s8
                  lui          t3, 404535
                  addi         a3, tp, -512
                  bltu         s8, a2, 1343f
                  blt          t3, s6, 1348f
                  beq          a3, a0, 1344f
                  bge          s5, t4, 1342f
                  ori          tp, t4, -418
                  sra          a7, s10, ra
                  bge          a2, s10, 1351f
1338:             slt          a7, t2, t3
                  sltiu        t4, s11, 560
                  xori         a6, s9, 51
                  sra          s6, s3, s11
1342:             srai         s2, t1, 0
1343:             blt          t2, t3, 1350f
1344:             beq          gp, t4, 1355f
                  bne          s3, a3, 1351f
                  addi         s6, t3, 377
                  la           sp, region_0+1555 #start riscv_load_store_rand_instr_stream_4
                  lui          s11, 755987
                  slli         s2, a5, 6
                  lb           s5, -52(sp)
                  andi         s7, a1, 290
                  sll          a0, s3, gp
                  lbu          t3, -1381(sp)
                  sb           a4, -1276(sp)
                  lhu          s7, -609(sp)
                  sb           s4, -874(sp)
                  sltu         a6, s4, gp
                  lbu          s3, -586(sp)
                  srl          ra, s3, t5
                  nop
                  lb           s0, -664(sp)
                  auipc        t5, 1047602
                  lbu          zero, -80(sp)
                  sb           tp, -1438(sp)
                  lui          t1, 852156
                  slli         t1, ra, 6
                  sra          a0, s1, t4
                  lb           s8, -769(sp)
                  xori         t1, a0, -1148
                  sb           s11, -446(sp)
                  sb           a5, 352(sp)
                  srli         a6, s7, 30
                  addi         s8, s11, 946
                  lui          a0, 893278
                  auipc        s7, 768610
                  lw           t1, -1007(sp)
                  srai         s7, a1, 16
                  sra          s11, a6, t3
                  slti         t6, s7, 434
                  or           t3, a2, zero
                  sb           a3, -771(sp)
                  sltiu        t1, a7, 258
                  sra          t5, a5, s0
                  sh           zero, -197(sp)
                  sra          t2, s4, t1
                  srli         s4, a5, 27
                  nop
                  lb           s6, 220(sp)
                  srli         s8, s11, 4
                  lhu          t3, -529(sp)
                  lui          a0, 48525
                  lui          tp, 500412
                  sb           s11, -214(sp) #end riscv_load_store_rand_instr_stream_4
                  slt          s2, s11, zero
1348:             beq          gp, t3, 1360f
                  lui          t2, 170838
1350:             add          t3, a6, t0
1351:             xor          s7, s9, a3
                  bne          s8, gp, 1372f
                  sltu         t6, a7, gp
                  xor          s8, t4, a6
1355:             sltiu        s2, s9, 34
                  lui          t3, 129106
                  xori         s0, a6, -1067
                  sll          s2, s11, t4
                  slti         t3, t0, 146
1360:             srli         s10, t3, 22
                  addi         t2, t3, -165
                  or           a7, a4, s9
                  srai         t0, t3, 17
                  bgeu         s8, s6, 1368f
                  sltiu        t6, s1, 1410
                  bltu         ra, t5, 1371f
                  sub          s2, t6, s6
1368:             srli         a4, gp, 29
                  and          s3, t2, a3
                  slli         s3, tp, 19
1371:             srai         t4, t3, 0
1372:             bgeu         s2, s3, 1376f
                  srai         zero, t4, 1
                  beq          s11, s3, 1386f
                  xori         t3, s7, 1823
1376:             andi         s2, t0, -1282
                  xor          t5, s1, zero
                  lui          t4, 253250
                  bgeu         t6, s8, 1386f
                  beq          a3, t5, 1385f
                  xor          s7, a1, gp
                  or           gp, t0, s0
                  sub          gp, tp, t6
                  xori         t2, a7, -893
1385:             ori          s2, s6, -1870
1386:             sltiu        s7, a2, -610
                  bltu         s4, s9, 1388f
1388:             sll          t5, a7, s8
                  slt          s4, s0, s11
                  bgeu         a5, s5, 1397f
                  sub          s9, t3, t4
                  add          ra, a7, s3
                  srli         s4, s3, 23
                  srai         a2, a4, 22
                  bltu         t1, gp, 1411f
                  sra          zero, s10, s8
1397:             beq          s9, t0, 1398f
1398:             slli         s6, t3, 2
                  or           t1, t0, gp
                  sub          s11, t4, s6
                  beq          a6, tp, 1402f
1402:             slt          a6, s8, t3
                  nop
                  srli         s4, a4, 19
                  bltu         t2, t4, 1425f
                  sltiu        a3, t4, 1661
                  blt          a7, gp, 1421f
                  auipc        t2, 169431
                  ori          s4, s10, -701
                  and          ra, a5, a4
1411:             slli         a6, a6, 3
                  auipc        t0, 344097
                  sltiu        t3, s4, 664
                  sltu         t6, s10, t4
                  bne          t5, s11, 1435f
                  srai         s5, s6, 2
                  xor          t3, s10, s8
                  add          s3, t2, a1
                  slli         s10, s6, 6
                  and          s7, a5, t6
1421:             sltiu        t4, t6, 808
                  sltu         t2, t1, a6
                  nop
                  ori          a0, s9, 1043
1425:             add          t4, s11, s9
                  bltu         s4, s5, 1436f
                  lui          t4, 821293
                  andi         a6, s6, 678
                  xor          s8, s11, tp
                  beq          a2, t4, 1435f
                  xor          s3, t6, tp
                  sra          tp, a0, t0
                  slli         s10, s7, 3
                  nop
1435:             bne          s2, tp, 1442f
1436:             sltiu        s8, tp, -1435
                  add          t2, gp, ra
                  and          gp, t1, a7
                  slli         t4, s5, 13
                  srli         a4, s7, 11
                  sll          a4, s1, s8
1442:             sltu         a3, a5, t2
                  andi         t6, s9, -182
                  andi         zero, s9, 928
                  xor          a4, s8, t1
                  sltiu        t1, tp, 1127
                  sll          ra, t5, t6
                  xori         s3, t5, -115
                  srl          s5, t6, s3
                  bne          sp, s1, 1470f
                  xor          tp, s10, t0
                  sub          s2, s5, t1
                  lui          a3, 451209
                  andi         ra, s8, -739
                  bltu         a7, s8, 1468f
                  sltu         a0, a0, a3
                  xor          s11, ra, gp
                  sub          zero, zero, s11
                  sltu         s3, a6, a7
                  slt          t3, a7, s0
                  xori         a7, s6, -1835
                  ori          s9, a4, -1957
                  sra          t1, t5, s6
                  srli         t4, a0, 5
                  bge          s9, s2, 1483f
                  sltiu        zero, s0, -1126
                  bltu         a7, t0, 1475f
1468:             xor          t1, s2, s5
                  and          t5, s9, t1
1470:             srli         tp, gp, 26
                  slti         s6, t0, -1147
                  slti         ra, t0, -450
                  sll          ra, s4, a5
                  sltiu        s8, ra, -142
1475:             slli         s5, a3, 1
                  lui          s3, 967420
                  bne          t5, t2, 1488f
                  lui          a7, 825810
                  sll          tp, t0, s11
                  and          s6, s9, a2
                  sra          t1, s11, ra
                  bne          s6, a1, 1502f
1483:             nop
                  add          t5, s7, t5
                  ori          sp, a1, 415
                  beq          s11, tp, 1498f
                  ori          ra, s3, 377
1488:             auipc        s11, 340453
                  addi         s10, a1, -1337
                  sll          a4, t6, a2
                  slli         tp, s10, 7
                  srli         sp, s4, 28
                  sub          t6, s1, s6
                  addi         a6, a7, -698
                  andi         t1, s4, 732
                  lui          s11, 738396
                  bne          s0, s2, 1511f
1498:             beq          a5, s6, 1499f
1499:             lui          tp, 221165
                  auipc        a3, 858419
                  bge          t2, s0, 1509f
1502:             bge          tp, a2, 1518f
                  xor          t2, tp, t2
                  sltiu        ra, s1, -1940
                  lui          t3, 137415
                  slti         t3, zero, 1251
                  sll          t2, a3, s6
                  srli         s9, s1, 20
1509:             sra          t4, a1, t1
                  andi         a4, t4, -349
1511:             bge          s8, s9, 1516f
                  lui          t1, 548368
                  beq          t4, a4, 1518f
                  bne          zero, gp, 1522f
                  ori          a7, t4, -159
1516:             srli         t5, s6, 15
                  andi         s6, a3, -1085
1518:             andi         s7, tp, 143
                  bgeu         a6, sp, 1539f
                  bltu         a6, s0, 1527f
                  nop
1522:             bltu         a0, a7, 1526f
                  sub          s2, t0, a3
                  bgeu         a1, a0, 1540f
                  blt          s11, t1, 1536f
1526:             srli         s7, a6, 31
1527:             srai         t1, s4, 8
                  xor          s7, t1, s1
                  beq          t4, a6, 1530f
1530:             xor          s11, s11, tp
                  sub          a4, s6, a1
                  xori         ra, ra, -510
                  bltu         t1, s8, 1538f
                  bge          zero, t3, 1554f
                  xori         t4, s2, -259
1536:             sltu         a3, t6, a7
                  sub          s5, s2, s0
1538:             sltu         s2, a3, a2
1539:             srl          gp, t3, a7
1540:             and          s0, s0, a0
                  slli         t6, a0, 13
                  bge          s6, s4, 1554f
                  addi         s3, a6, 934
                  sltu         tp, t0, t6
                  blt          a2, s9, 1558f
                  bltu         s10, a4, 1553f
                  or           t3, ra, a1
                  and          t5, a7, t2
                  sub          a6, a0, s2
                  la           t0, region_0+421 #start riscv_load_store_rand_instr_stream_5
                  sb           s1, 252(t0)
                  add          ra, s3, s11
                  sw           s7, -49(t0)
                  auipc        s9, 20059
                  lb           s7, 232(t0)
                  sra          a0, t2, s9
                  sb           s3, 156(t0)
                  lb           a4, -176(t0)
                  lh           t5, -111(t0)
                  lb           s4, 84(t0)
                  lbu          t4, 74(t0)
                  sra          s9, s10, s7
                  lb           ra, 88(t0)
                  add          s3, s8, sp
                  sh           s3, 25(t0)
                  srli         a3, s10, 28
                  add          t6, s0, s6
                  auipc        t5, 173626
                  lb           a3, -207(t0)
                  sub          a4, zero, s8
                  sra          tp, s4, s2
                  lh           s2, -165(t0)
                  lb           zero, 20(t0)
                  lh           a2, -67(t0)
                  ori          t3, zero, 950
                  slti         t4, t3, -521
                  lb           s6, 178(t0)
                  lbu          s11, 68(t0)
                  lbu          s4, 136(t0)
                  slli         a6, a0, 18
                  xor          a2, t5, a5
                  lb           s5, -141(t0)
                  lbu          t6, 194(t0)
                  sb           zero, 188(t0)
                  andi         zero, a6, -825
                  sll          s10, a7, s0
                  sll          a7, s4, t1
                  lui          t6, 957121
                  andi         s9, a7, 1707
                  lw           s6, -61(t0) #end riscv_load_store_rand_instr_stream_5
                  ori          tp, s8, 1515
                  blt          t2, a1, 1557f
                  beq          s10, a1, 1559f
1553:             sltiu        t4, s2, -875
1554:             blt          t1, sp, 1561f
                  auipc        s10, 496426
                  xor          s9, s3, s11
1557:             auipc        a4, 599096
1558:             andi         s5, a6, -1574
1559:             xori         s6, t6, -323
                  bne          t0, s9, 1580f
1561:             srli         t6, a0, 23
                  sub          zero, s2, a6
                  sll          s9, s5, t3
                  bne          zero, s10, 1582f
                  andi         s0, a6, 575
                  andi         s4, s6, -313
                  nop
                  ori          sp, a0, -1695
                  sll          a3, s3, t4
                  nop
                  add          zero, s9, s5
                  sra          gp, gp, s4
                  add          t0, a1, t2
                  bge          ra, s9, 1584f
                  ori          s5, s4, -66
                  sub          a3, s2, a2
                  or           a3, a7, t4
                  xor          a2, s1, s2
                  or           t3, s11, s1
1580:             xori         s4, a7, 1954
                  sltu         t2, ra, a5
1582:             sll          s8, a0, t2
                  auipc        s4, 852727
1584:             bltu         a1, t4, 1588f
                  lui          sp, 106463
                  srli         s5, s10, 23
                  slt          t1, ra, tp
1588:             bltu         a4, a3, 1602f
                  xor          s9, a2, s9
                  andi         s8, s2, -1940
                  sll          t6, a0, a0
                  srai         ra, a2, 21
                  bne          a7, s4, 1594f
1594:             slti         t4, t0, -1718
                  srai         a4, a5, 11
                  xor          a4, a6, a3
                  srai         t6, s4, 1
                  slli         s0, s3, 25
                  slt          s5, a0, gp
                  sub          t1, a1, t3
                  slli         a2, t6, 16
1602:             nop
                  slt          t0, a5, t4
                  addi         s5, a5, 1076
                  srai         s4, s9, 23
                  beq          gp, sp, 1617f
                  bge          s10, ra, 1617f
                  sltu         a3, a3, a4
                  sub          a3, s6, s10
                  bne          s0, a0, 1616f
                  slt          gp, zero, t1
                  xor          t5, t6, s5
                  addi         s7, s9, 1350
                  beq          a0, t6, 1615f
1615:             slti         zero, s5, -1442
1616:             andi         t0, a4, 964
1617:             addi         t6, t1, 1719
                  slt          s5, gp, t4
                  lw           s4, 4(a5)
                  sltiu        a6, s2, 377
                  addi         a5, a5, 8
                  sll          t4, s11, t2
                  xor          a6, sp, t3
                  nop
                  sltiu        t2, zero, 204
                  srai         t4, a3, 5
                  ori          tp, zero, -1229
2180:             addi x30, x20, 0
2180:             jalr x30, x30, 0
sub_8:            xor          a2, t0, a6
                  nop
                  or           s10, t3, s10
                  slt          a0, s6, zero
                  sltu         a0, zero, t4
                  and          a6, sp, t0
                  bne          t6, a0, sub_8_stack_p
                  add          s3, a0, t5
                  slt          t0, s9, ra
sub_8_stack_p:    addi         a5, a5, -16
                  slli         s9, a2, 14
                  sw           s4, 4(a5)
                  sra          a7, t6, a3
                  la           s4, region_1+1570 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sb           s7, 5(s4)
                  sll          a2, t4, ra
                  xori         t5, t6, -1635
                  or           a2, a6, a6
                  slli         t5, t1, 21
                  lh           s2, -12(s4)
                  sub          t0, s8, s3
                  lb           t2, 12(s4)
                  lbu          t3, 2(s4)
                  sw           s1, 6(s4)
                  lh           s2, -8(s4)
                  lhu          tp, 16(s4)
                  sb           t5, -5(s4)
                  nop
                  sb           s0, -9(s4)
                  sb           s0, 14(s4)
                  auipc        s10, 403736
                  lbu          t4, -5(s4)
                  sltu         a6, a5, s0
                  sb           t4, 2(s4)
                  sb           a3, 0(s4)
                  sb           s10, 14(s4)
                  lh           tp, 16(s4)
                  sltu         a6, a1, s6
                  sb           t3, 2(s4)
                  nop
                  lhu          s8, -14(s4)
                  nop
                  lbu          zero, -15(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_1+1135 #start riscv_load_store_rand_instr_stream_2
                  sra          t1, a0, t0
                  sltu         s6, t2, a1
                  lbu          s11, 252(s4)
                  srli         s6, s5, 7
                  xori         s3, s9, -412
                  xori         tp, t4, 1850
                  lb           ra, 10(s4)
                  sb           s6, -74(s4)
                  slti         s0, s9, -908
                  or           tp, a0, t0
                  srli         a4, s9, 5
                  lbu          s8, 110(s4)
                  sh           s7, -39(s4)
                  lbu          s5, -167(s4)
                  xori         s0, s7, -1902
                  lhu          s2, -105(s4)
                  add          t4, gp, s5
                  sb           a6, -156(s4)
                  lbu          s0, -113(s4)
                  sb           a4, 90(s4)
                  ori          t1, t6, -1933
                  sltu         gp, a1, s5
                  sw           s0, -147(s4)
                  lb           s11, -204(s4)
                  sw           ra, 229(s4)
                  lb           a4, -111(s4)
                  sb           a0, -92(s4)
                  ori          t0, a4, -1327
                  sh           a4, -33(s4)
                  andi         s11, s7, 1352
                  lh           t5, -45(s4)
                  xori         ra, a3, -1535
                  or           s9, gp, t1
                  lb           a3, 67(s4)
                  sll          tp, s9, a1
                  srl          s9, a4, gp
                  lh           s5, 61(s4)
                  lb           tp, 137(s4)
                  or           t1, a6, s0
                  lb           s9, -244(s4)
                  sb           s7, 142(s4) #end riscv_load_store_rand_instr_stream_2
                  blt          s9, s5, 9f
                  xor          s11, s10, s8
                  sub          a4, t0, gp
                  bge          tp, a3, 19f
                  auipc        t6, 1021691
                  andi         t6, s5, -421
                  add          s9, s7, t4
                  sltiu        s6, s11, -826
                  beq          a1, a7, 26f
9:                bge          t4, a3, 18f
                  sub          ra, s10, t2
                  lui          s4, 1040879
                  sub          s8, t3, s3
                  xor          s11, a5, s2
                  lui          t6, 712364
                  slli         s10, s5, 15
                  srli         t5, a0, 3
                  xori         s8, tp, -1859
18:               srl          s5, s2, s8
19:               sltu         tp, t2, a7
                  xor          a6, t6, t1
                  and          tp, gp, s8
                  sll          tp, s5, s8
                  blt          t4, s11, 25f
                  srai         s2, a0, 7
25:               srl          t5, tp, a7
26:               beq          ra, s4, 33f
                  slli         s7, t4, 0
                  sub          s7, a6, s10
                  srai         s9, s7, 26
                  bge          s11, a7, 33f
                  add          s11, a5, s6
                  sltiu        a6, s4, 481
33:               sltu         a4, t2, s7
                  sub          a7, a2, s10
                  sltiu        a2, s11, -1668
                  xori         s7, s7, -556
                  slli         a2, a4, 4
                  bgeu         s9, a4, 49f
                  xor          t3, s2, ra
                  blt          ra, s2, 42f
                  sll          a6, t6, a5
42:               ori          s2, s2, 1441
                  srai         s2, a1, 4
                  slti         a2, s6, -1021
                  slti         s7, a3, 1309
                  sltu         a7, t4, s3
                  srl          t0, t5, s10
                  bge          s5, a5, 50f
49:               sltu         t0, t5, gp
50:               and          zero, s11, s9
                  srli         a2, sp, 28
                  slli         t0, s0, 30
                  ori          t2, gp, -1879
                  or           s7, s10, t4
                  beq          a4, sp, 70f
                  sltu         t6, s11, t5
                  ori          t5, t1, -185
                  sra          s11, t0, s11
                  nop
                  or           s3, t3, s3
                  ori          s5, a0, -1110
                  and          t6, a2, sp
                  sub          t0, t0, t3
                  slli         s11, s6, 31
                  sll          s5, s6, s5
                  sra          s9, s6, s3
                  add          t4, s0, t4
                  slti         tp, t3, -877
                  sra          gp, t3, sp
70:               sltiu        s10, t5, -1555
                  bne          a7, s2, 77f
                  lui          a4, 292537
                  xori         s6, a1, -959
                  addi         a6, a1, 175
                  bne          a5, a4, 95f
                  slt          t6, s7, s10
77:               sll          sp, s8, a1
                  bltu         s9, t3, 86f
                  srai         t5, s4, 2
                  or           s4, zero, a3
                  sltiu        s6, a4, 1476
                  slli         ra, s8, 15
                  sll          a4, a6, a4
                  slli         s6, s4, 28
                  bltu         a0, a4, 92f
86:               xori         s0, s10, 1120
                  bgeu         t2, tp, 91f
                  sra          tp, a5, s11
                  xori         t1, t2, -617
                  bge          s9, a5, 95f
91:               sub          t1, zero, ra
92:               addi         s2, a3, -1065
                  andi         t4, s7, -591
                  auipc        s3, 1043708
95:               bge          a1, t6, 96f
96:               srl          s9, s1, t5
                  blt          s6, s10, 108f
                  sra          t4, t6, s9
                  sltiu        a0, s9, -1196
                  nop
                  slli         t0, s11, 3
                  nop
                  sltiu        t4, zero, 502
                  sra          t5, s4, t6
                  lui          a4, 541365
                  blt          s6, s7, 113f
                  and          a7, sp, a4
108:              srai         zero, t6, 23
                  bltu         sp, t3, 125f
                  ori          tp, t3, 1225
                  slti         sp, a7, -1890
                  sra          tp, a3, s8
113:              srai         a2, sp, 2
                  xori         t0, t1, -1517
                  bge          s2, a3, 132f
                  sltiu        a2, t5, 1634
                  xor          s6, t2, s10
                  nop
                  sra          s2, s11, s11
                  bge          a0, s6, 140f
                  nop
                  bge          t1, s4, 136f
                  bgeu         a3, s1, 131f
                  lui          a7, 48371
125:              sltiu        gp, t0, 1908
                  slt          a3, a7, t4
                  sltu         s3, t6, a5
                  sltiu        a7, ra, 687
                  bge          a7, a4, 145f
                  andi         a0, a4, 1660
131:              blt          s3, ra, 137f
132:              bgeu         t3, s4, 141f
                  srli         zero, a7, 7
                  lui          a3, 198609
                  lui          ra, 111134
136:              and          s11, t3, a6
137:              blt          s5, a3, 152f
                  slt          s8, tp, s11
                  sub          tp, a6, a6
140:              andi         t2, a6, -1792
141:              ori          ra, a4, -1562
                  sra          s11, s4, a4
                  auipc        s2, 66002
                  auipc        s6, 630538
145:              srl          a0, gp, t5
                  andi         s4, tp, 1725
                  sub          tp, a3, s5
                  auipc        s4, 157373
                  ori          a3, s4, 264
                  add          s5, s1, tp
                  slli         t5, a2, 6
152:              or           t3, t3, zero
                  srli         t4, t3, 16
                  ori          s7, s11, -497
                  and          s0, t0, s11
                  srai         s10, a2, 26
                  slti         a7, t2, 1843
                  auipc        a6, 1008151
                  bne          s2, a5, 161f
                  xor          t2, a5, a2
161:              and          t6, t0, s10
                  and          a0, s7, a5
                  blt          s6, a2, 171f
                  sra          a2, a3, a4
                  sra          t0, t4, s9
                  slli         a6, gp, 17
                  add          s10, s0, a1
                  sltiu        sp, s10, 470
                  xori         s4, gp, -1604
                  srli         a2, s6, 14
171:              bne          s9, t0, 173f
                  srai         t1, s2, 30
173:              sll          t1, s4, t5
                  auipc        s9, 323040
                  slli         t0, s7, 31
                  slti         sp, tp, 1619
                  slt          t0, a2, a2
                  and          s5, a6, t3
                  srli         a3, t3, 8
                  blt          a7, s10, 185f
                  auipc        a7, 528233
                  blt          t6, a4, 184f
                  blt          s5, ra, 189f
184:              sltu         t6, s2, gp
185:              xor          s3, a0, s5
                  sra          a0, s1, s8
                  slt          s11, t0, a1
                  bne          s6, gp, 208f
189:              xor          a0, a3, s1
                  addi         zero, s11, -889
                  slli         s7, zero, 31
                  sltiu        ra, a5, -534
                  lui          t3, 672159
                  addi         sp, a1, -917
                  slli         s9, s3, 4
                  srl          s6, a2, s10
                  add          t4, s8, a0
                  and          tp, gp, s3
                  sra          sp, ra, t2
                  andi         s3, t0, -939
                  or           t6, t6, a0
                  and          t4, a2, s2
                  and          ra, s2, s3
                  blt          gp, s6, 224f
                  srl          s0, a3, a3
                  blt          s4, t5, 210f
                  sltiu        zero, a6, 304
208:              and          gp, s8, tp
                  bgeu         zero, s9, 216f
210:              sub          a4, s10, t6
                  srai         t6, t5, 25
                  xor          a2, a6, t3
                  sltiu        tp, a2, -758
                  sra          t1, s9, t0
                  slt          sp, a6, s0
216:              srai         a3, t2, 10
                  bne          s4, t0, 219f
                  and          ra, a4, t5
219:              or           t0, a3, t0
                  srai         sp, a0, 7
                  nop
                  ori          s5, a5, 2026
                  andi         s5, s2, -1444
224:              auipc        t4, 350686
                  bgeu         ra, t2, 228f
                  xor          a6, zero, a1
                  sltu         a7, tp, s8
228:              bltu         a6, t4, 235f
                  bltu         sp, a5, 235f
                  bge          s5, s8, 237f
                  beq          t5, a2, 247f
                  andi         ra, t1, -114
                  srli         s6, t5, 18
                  bgeu         t3, s6, 245f
235:              sub          a6, a0, gp
                  auipc        s11, 425689
237:              nop
                  sub          a3, t2, s11
                  sra          s6, a4, t5
                  auipc        sp, 227429
                  slt          t4, a4, s1
                  blt          t2, s2, 258f
                  srli         a4, s5, 1
                  andi         s9, s9, -1765
245:              blt          s2, a5, 254f
                  la           sp, region_0+220 #start riscv_load_store_rand_instr_stream_0
                  lbu          s9, -79(sp)
                  add          t5, a2, s11
                  sb           a0, 1360(sp)
                  lbu          t3, 1711(sp)
                  lui          zero, 977482
                  lb           a3, 113(sp)
                  ori          s6, a3, -1192
                  lbu          s10, 1682(sp)
                  addi         a7, t1, -921
                  lbu          s10, 711(sp)
                  sb           a7, 87(sp)
                  lhu          t3, -190(sp)
                  lb           t6, 1113(sp)
                  lhu          t1, 1334(sp)
                  lh           s8, 200(sp)
                  sw           s11, 932(sp)
                  sh           t2, 1100(sp)
                  lbu          a4, -23(sp)
                  lhu          tp, 1728(sp)
                  sb           s5, 1579(sp)
                  sb           ra, 693(sp)
                  sll          s5, s2, tp
                  srli         t5, t2, 21
                  lh           a7, 1364(sp)
                  lw           s8, 692(sp)
                  lh           s7, -158(sp)
                  addi         tp, s7, 1566
                  sub          s7, s10, s5
                  lb           a0, 1355(sp)
                  sb           a7, 43(sp)
                  xor          t0, a0, ra
                  lbu          t6, 734(sp)
                  lw           gp, 1272(sp)
                  lbu          a4, 1677(sp)
                  lhu          s8, 840(sp)
                  xor          t3, gp, s0
                  sb           a7, 233(sp)
                  sb           t6, 621(sp)
                  sub          s5, t4, a6
                  sra          s0, a5, s11
                  slt          ra, s9, s8
                  xori         a7, a7, 235
                  ori          a4, zero, -1169
                  lb           ra, 1120(sp)
                  lw           t6, 1412(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         s0, s0, 170
247:              sra          s0, s3, a4
                  slti         sp, a6, 1714
                  xor          s6, a6, ra
                  lui          t0, 852379
                  bge          zero, a2, 267f
                  xori         t6, a2, -692
                  sll          s8, t5, t6
254:              srl          s2, s6, t1
                  and          t5, a0, a4
                  slt          t6, t3, a2
                  slli         t3, a2, 29
258:              bge          s10, zero, 273f
                  blt          a1, s0, 261f
                  sra          a6, a6, a3
261:              srli         a7, t4, 8
                  srai         s3, s6, 28
                  ori          t4, a2, -2043
                  and          a7, a6, a3
                  andi         a6, a7, 1521
                  srl          s7, s7, t6
267:              and          ra, a1, s1
                  auipc        s8, 836131
                  xori         ra, tp, -1015
                  srli         ra, t6, 27
                  ori          t3, a2, 459
                  sltu         s2, t6, t0
273:              srai         sp, s2, 7
                  xor          t3, a6, a3
                  srli         s10, t5, 9
                  andi         s0, s1, 2008
                  lui          sp, 522362
                  slli         s4, s5, 20
                  xor          a0, s0, s5
                  beq          a3, a4, 295f
                  beq          s1, a4, 290f
                  sltu         s8, t6, t1
                  and          a3, s0, s3
                  sra          s4, tp, zero
                  xori         gp, a0, 1693
                  bne          a3, a7, 297f
                  sltiu        s3, a5, -1341
                  bgeu         a0, s8, 306f
                  xor          gp, a1, sp
290:              blt          sp, a5, 299f
                  beq          sp, s4, 292f
292:              bne          a6, t2, 309f
                  srl          s8, a6, t4
                  bgeu         s1, a6, 302f
295:              nop
                  xor          s5, s2, s5
297:              bgeu         s2, a2, 311f
                  sra          t2, a0, a0
299:              sltiu        a6, tp, 1949
                  or           t3, s11, zero
                  xor          a6, a2, a7
302:              sub          a7, a4, zero
                  bgeu         a3, t6, 305f
                  sltiu        a6, a0, 1387
305:              slti         a4, t6, -1301
306:              slti         s9, t4, 1588
                  slti         t6, a0, 1310
                  sra          t2, a6, s8
309:              or           s4, tp, s2
                  bge          t2, sp, 326f
311:              slt          s4, a2, s3
                  addi         a7, s7, 634
                  blt          sp, s4, 320f
                  nop
                  slli         s8, a7, 14
                  bne          a6, t2, 323f
                  nop
                  slt          a7, t2, t2
                  slli         s9, s5, 2
320:              beq          a6, s0, 336f
                  lui          a6, 30002
                  auipc        s0, 943535
323:              bgeu         tp, s2, 343f
                  srai         t4, t0, 8
                  lui          s3, 468502
326:              slti         ra, sp, -214
                  bltu         s7, s11, 329f
                  slt          a0, a5, a4
329:              bltu         a2, gp, 345f
                  slli         t4, t4, 4
                  sra          a6, a0, s5
                  andi         s6, s6, -1791
                  sra          t0, a5, s9
                  sub          a4, a0, s3
                  sll          a2, s2, s9
336:              andi         t0, sp, 1436
                  andi         s2, tp, 778
                  slti         sp, s11, -1240
                  or           zero, a6, s9
                  andi         tp, a7, 99
                  lui          a6, 409476
                  or           a7, t2, s2
343:              addi         ra, a5, -1144
                  slt          s4, a6, s5
345:              srli         a6, a4, 30
                  nop
                  blt          a3, t4, 348f
348:              slti         a2, t3, -139
                  bgeu         t1, a2, 360f
                  nop
                  sll          a2, a1, a0
                  srl          s4, ra, s6
                  blt          s1, a5, 356f
                  srai         t6, a5, 5
                  addi         s2, ra, 605
356:              auipc        a0, 401071
                  sltiu        t3, s9, -1910
                  bgeu         t4, a4, 373f
                  ori          a6, t1, 921
360:              xor          gp, a0, s6
                  auipc        t3, 253695
                  xori         s3, a0, -1544
                  bgeu         t0, t1, 381f
                  srl          s4, s8, t2
                  sll          a3, s1, t4
                  slti         zero, a1, -905
                  sltu         a6, t1, s9
                  sub          s6, s3, s9
                  auipc        zero, 996530
                  sll          s9, s6, s9
                  sub          t2, t1, s8
                  sra          tp, s3, t3
373:              sll          t3, a4, s4
                  beq          s9, a4, 380f
                  sltiu        t6, gp, -606
                  auipc        t5, 777053
                  or           sp, s1, t6
                  addi         t5, ra, -1435
                  bge          t5, gp, 388f
380:              add          s2, a5, t1
381:              srli         zero, s4, 27
                  auipc        s9, 196439
                  add          s3, s8, t0
                  bltu         a5, a3, 395f
                  bge          t1, gp, 393f
                  srli         ra, s9, 3
                  slt          gp, s4, s3
388:              sltiu        t4, sp, 700
                  blt          s4, s4, 398f
                  bge          s7, a0, 394f
                  andi         s6, a3, -655
                  slt          tp, t6, a2
393:              auipc        sp, 873860
394:              srl          s7, t5, s6
395:              bne          ra, s8, 401f
                  sra          t4, a7, t5
                  blt          s11, zero, 402f
398:              add          t1, a7, s2
                  xor          t3, t3, s2
                  sll          s11, s10, t2
401:              xor          a6, s9, a4
402:              lui          gp, 411760
                  ori          s10, a1, -1638
                  andi         sp, t5, -1674
                  sub          sp, s3, s5
                  slt          a3, t1, s4
                  srai         s0, s10, 12
                  srl          gp, s10, zero
                  sub          t3, s10, a7
                  srl          s8, s9, s9
                  ori          t3, s1, -86
                  slli         s2, t3, 26
                  xor          t6, s7, a6
                  xori         s10, a6, 1349
                  bgeu         t5, s7, 417f
                  srli         s4, a2, 21
417:              or           s0, a0, tp
                  xori         a2, a6, 640
                  and          s2, zero, s11
                  bgeu         a5, s11, 429f
                  bne          a7, s6, 423f
                  nop
423:              srl          a4, zero, t1
                  sub          t1, s3, s8
                  bne          tp, a2, 433f
                  sltu         t0, t3, s3
                  auipc        gp, 844277
                  slti         s10, t4, -1789
429:              and          s4, t5, s4
                  addi         a6, ra, -438
                  ori          s3, s2, -1590
                  add          t3, a5, zero
433:              ori          t4, t6, 322
                  slt          s9, a7, s4
                  sll          tp, a1, s6
                  blt          t4, t1, 453f
                  andi         sp, a4, -1156
                  andi         a2, a6, 1383
                  addi         gp, a0, -161
                  sltiu        gp, s4, 1726
                  bne          a4, s2, 456f
                  sltiu        s8, s7, -803
                  andi         zero, a4, 233
                  slli         a2, a2, 27
                  slti         a7, a4, 1741
                  bgeu         s9, s7, 466f
                  sll          s0, a7, a1
                  sltiu        sp, s0, -727
                  slli         t6, a1, 29
                  srl          a6, zero, t5
                  slli         s11, a6, 2
                  ori          s7, s1, 1540
453:              srl          zero, t1, a2
                  lui          s2, 808198
                  la           sp, region_1+907 #start riscv_load_store_rand_instr_stream_3
                  lbu          s6, 172(sp)
                  srli         s3, t1, 29
                  slli         a2, s6, 22
                  srai         s7, s9, 9
                  lh           a4, 159(sp)
                  nop
                  lbu          a7, 136(sp)
                  ori          t0, zero, 1347
                  sub          a3, zero, ra
                  slti         s6, a3, -355
                  slt          a7, t4, s0
                  lhu          s10, 187(sp)
                  lb           a6, -34(sp)
                  srli         t2, s6, 20
                  sub          a3, a3, s2
                  ori          s0, s8, 346
                  nop
                  lhu          a3, 9(sp)
                  nop
                  sh           s2, 229(sp)
                  slti         s8, ra, 1858
                  andi         gp, s4, 1552
                  lbu          a3, 98(sp)
                  srli         s0, gp, 26
                  sltiu        s8, gp, -1862
                  lbu          t1, 180(sp)
                  lh           s8, -19(sp)
                  nop
                  lb           s9, 198(sp)
                  sb           zero, 235(sp)
                  slti         s2, ra, 1344
                  sltu         a2, s3, s8
                  srl          t0, s4, t3
                  sra          s5, s2, s9
                  slti         s11, t5, -1546
                  sra          t4, s1, t0
                  lhu          ra, 23(sp)
                  sub          gp, a4, a0
                  srl          s5, s8, tp
                  sub          t3, t3, t5
                  srl          gp, s4, t2
                  sh           a0, -77(sp) #end riscv_load_store_rand_instr_stream_3
                  and          s2, s10, t1
456:              sltiu        a2, ra, 1813
                  srai         s10, a0, 6
                  sub          a6, s9, s5
                  blt          a7, sp, 466f
                  sub          t4, s8, s3
                  slli         t0, a2, 21
                  or           a3, t5, s7
                  and          s9, t5, a6
                  slt          s10, t5, gp
                  slti         t5, t4, 195
466:              nop
                  slt          s2, t5, s2
                  or           t5, a7, gp
                  slli         t2, gp, 14
                  xor          t5, ra, t3
                  bgeu         s3, t1, 485f
                  xor          s6, sp, s2
                  xori         t5, a2, 1477
                  srai         a7, tp, 2
                  xor          tp, s7, a0
                  add          a2, s2, a5
                  addi         tp, s0, 134
                  sltu         s5, s9, t5
                  slti         ra, s9, -994
                  xor          s2, t5, ra
                  andi         t5, s7, -109
                  ori          s4, s10, -1257
                  bltu         a1, a3, 492f
                  addi         t5, s0, 183
485:              sra          ra, a5, a2
                  bgeu         s3, s9, 504f
                  lui          t0, 434554
                  sra          s3, s1, a0
                  andi         s8, s5, -698
                  blt          tp, s3, 505f
                  and          t4, ra, s9
492:              bltu         s8, t0, 507f
                  slli         t3, a2, 20
                  sll          t4, a1, a5
                  sll          t4, t3, s1
                  bne          zero, s4, 498f
                  ori          sp, a0, 1724
498:              addi         a7, t6, 144
                  andi         s2, t1, 546
                  bltu         t2, t5, 508f
                  sltu         zero, t1, t2
                  xori         t4, a6, 907
                  nop
504:              slt          s4, zero, tp
505:              sra          s0, t2, t0
                  auipc        t2, 325080
507:              sub          zero, a7, t3
508:              sra          a4, a0, t2
                  sltiu        t5, t2, 130
                  sll          a7, a4, s8
                  beq          s6, t4, 525f
                  xor          s6, s2, t3
                  sub          a4, s4, s9
                  auipc        t6, 498890
                  beq          t1, t5, 526f
                  and          a2, s2, t6
                  sll          s8, s2, s2
                  and          s7, t1, sp
                  lui          s5, 163640
                  andi         a3, t6, 916
                  sub          s10, a3, s2
                  sltu         t6, s1, s1
                  sll          s5, t2, s3
                  bltu         a6, a4, 527f
525:              or           s7, a1, t2
526:              beq          gp, s2, 533f
527:              nop
                  bgeu         s4, s8, 529f
529:              slli         s0, s2, 20
                  bge          s7, t4, 550f
                  blt          t0, s0, 540f
                  slli         tp, t1, 28
533:              add          a4, ra, a6
                  sll          s11, tp, s9
                  sra          a7, s0, t6
                  addi         s8, s4, 1840
                  sub          zero, a2, s2
                  andi         s4, s10, -1356
                  srl          a7, s6, gp
540:              bgeu         s0, t5, 544f
                  ori          t4, tp, 1244
                  slt          t3, a1, s6
                  bltu         s11, s1, 551f
544:              addi         s11, zero, -1212
                  bge          a5, a3, 554f
                  slli         tp, tp, 17
                  beq          t4, s6, 554f
                  and          a6, a4, s3
                  and          gp, sp, a7
550:              bge          a3, tp, 554f
551:              nop
                  xor          s0, s3, t5
                  add          ra, s1, s3
554:              lui          ra, 145851
                  sll          t2, zero, a3
                  lw           s4, 4(a5)
                  addi         a5, a5, 16
                  xori         s3, s0, 1039
                  and          s11, s2, s11
                  addi         a4, ra, 1181
736:              addi x2, x20, 1
736:              jalr x2, x2, 0
sub_2:            or           t0, t5, t4
                  bne          t6, a3, sub_2_stack_p
sub_2_stack_p:    addi         a5, a5, -48
                  sw           s4, 4(a5)
                  xor          t2, s1, s4
                  lui          t6, 503023
                  andi         s6, t6, -345
                  la           t3, sub_3
                  slli         s8, s0, 8
                  addi         t3, t3, 415
                  auipc        a6, 278736
                  andi         s6, t2, 184
                  lui          t0, 501255
                  slli         s4, a7, 15
                  bltu         s4, a1, sub_2_j3 #branch to jump instr
                  auipc        gp, 733669
                  srai         ra, s6, 8
                  slti         s10, s2, 78
                  addi         s2, a6, 1546
sub_2_j3:         jalr         s4, t3, -415 #jump sub_2 -> sub_3
                  addi         t4, ra, -950
                  la           tp, sub_4
                  addi         tp, tp, 666
                  srl          t2, t5, a3
                  blt          s10, a3, sub_2_j4 #branch to jump instr
                  sltu         s9, a4, t2
                  slti         s4, s8, 167
                  nop
sub_2_j4:         jalr         s4, tp, -666 #jump sub_2 -> sub_4
                  la           a2, sub_3
                  srai         t2, s10, 24
                  sub          s2, t3, s10
                  sub          s7, a5, t0
                  add          s10, a5, a5
                  and          a3, t5, gp
                  and          t2, t6, s3
                  xori         a0, s11, 183
                  addi         a2, a2, 486
                  srai         t4, a5, 6
                  andi         gp, s3, -170
sub_2_j5:         jalr         s4, a2, -486 #jump sub_2 -> sub_3
                  sltiu        sp, s8, 990
                  blt          s3, s3, 13f
                  beq          s7, a1, 21f
                  or           t5, s4, s4
                  sltiu        a4, ra, -1345
                  xor          s0, s0, t3
                  srai         t6, gp, 28
                  bltu         a3, s4, 27f
                  bgeu         a7, s5, 22f
                  bgeu         t4, a5, 21f
                  and          a3, a2, a0
                  addi         t1, s10, 1079
                  ori          t0, t2, -677
13:               sll          a7, a2, s7
                  lui          a2, 921821
                  xor          t5, sp, s5
                  srai         s5, s9, 6
                  xor          t5, s2, a2
                  slt          gp, s1, a6
                  sltu         a2, a5, s6
                  nop
21:               blt          s2, t5, 40f
22:               auipc        s8, 427839
                  xor          t6, t0, a6
                  bne          t0, tp, 42f
                  bltu         tp, ra, 45f
                  xori         s11, s2, -1740
27:               slti         s2, s10, -727
                  and          ra, sp, s3
                  auipc        s8, 835415
                  slli         s8, ra, 3
                  slti         s3, s0, -576
                  xor          s10, t5, a1
                  srli         s3, a1, 25
                  sra          a3, a3, t6
                  lui          a7, 67278
                  nop
                  or           s5, s0, t2
                  nop
                  srai         tp, s11, 6
40:               srai         sp, s3, 11
                  auipc        t1, 623786
42:               slli         s3, t5, 10
                  sltu         s11, t2, tp
                  lui          t1, 446248
45:               sll          ra, s0, a1
                  bne          a4, a6, 53f
                  xori         s9, zero, 604
                  ori          s11, s9, 1313
                  sra          t6, a1, s0
                  bgeu         s4, tp, 62f
                  xori         zero, s8, -1378
                  addi         s4, s4, -562
53:               andi         t6, ra, -1290
                  xori         ra, s1, 430
                  bltu         a3, t5, 56f
56:               blt          a7, a3, 66f
                  bne          gp, zero, 59f
                  xori         s7, s5, 493
59:               slti         s9, ra, -1357
                  blt          a5, s6, 70f
                  or           s5, s6, t4
62:               sll          a0, a4, s0
                  xori         s8, s1, -91
                  sub          a7, s4, t1
                  slti         s0, s2, -1467
66:               srli         a0, t0, 19
                  srai         a4, t6, 17
                  bltu         a0, ra, 70f
                  beq          t6, s3, 70f
70:               ori          s11, a0, -1627
                  lui          tp, 476863
                  sll          s9, a2, t1
                  xori         a2, t0, -1742
                  sll          s7, s1, sp
                  slti         a7, tp, -582
                  addi         tp, s4, 56
                  slti         a2, a1, 1318
                  lw           s4, 4(a5)
                  sltu         t6, tp, sp
                  addi         a5, a5, 48
                  srai         t6, t0, 1
                  addi         t2, a0, 1001
124:              addi x20, x20, 1
124:              jalr x20, x20, 0
sub_7:            slti         zero, a2, -223
                  blt          a5, a6, sub_7_stack_p
sub_7_stack_p:    addi         a5, a5, -24
                  add          zero, s6, t1
                  sltiu        a6, t5, 980
                  sw           s4, 4(a5)
                  xor          s7, s0, s8
                  la           t3, region_0+582 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 1329(t3)
                  lbu          s0, 357(t3)
                  sh           a4, 238(t3)
                  sltu         s7, zero, a5
                  lbu          t5, 750(t3)
                  and          t6, a4, a5
                  auipc        a0, 1048459
                  sltu         s10, s4, t1
                  sll          t4, s4, sp
                  lw           sp, 518(t3)
                  lb           t6, 312(t3)
                  lh           s4, 1040(t3)
                  lb           s10, 741(t3)
                  srli         ra, a7, 10
                  lbu          s7, 5(t3)
                  sh           t1, 1334(t3)
                  lbu          a6, -347(t3)
                  sub          zero, a3, a3
                  slt          t0, t5, sp
                  sb           s6, 1259(t3)
                  lbu          a6, -21(t3)
                  lui          a6, 637613
                  slti         t4, s11, -219
                  ori          s3, a0, -1801
                  sb           s11, -316(t3)
                  sh           s7, 202(t3)
                  lb           a4, -454(t3)
                  lbu          a3, 147(t3)
                  sltu         s8, t4, zero
                  sh           a5, 1388(t3)
                  sub          s0, t2, s1
                  slli         sp, t2, 3
                  sll          s8, a3, s7
                  sb           a1, -572(t3)
                  sra          s8, t1, t0
                  sb           a5, 835(t3)
                  or           a7, s5, s11
                  andi         gp, s10, -75
                  lw           s2, 182(t3)
                  nop
                  sb           t5, 225(t3)
                  sb           t5, 193(t3)
                  lbu          s4, 807(t3)
                  sltu         s10, s10, s10
                  andi         s6, gp, -486
                  lh           a7, 892(t3) #end riscv_load_store_rand_instr_stream_0
                  beq          t3, a6, 8f
                  addi         s0, a2, 1936
                  slli         gp, t3, 11
                  and          a0, s10, s7
                  blt          gp, s2, 21f
                  sra          t4, ra, a2
                  auipc        s6, 10222
                  or           a7, t1, s2
8:                ori          a4, a2, 522
                  bge          s0, ra, 12f
                  bne          a6, t3, 19f
                  xori         t6, a0, 240
12:               srl          a3, a5, t6
                  lui          t3, 573053
                  srai         a4, s6, 12
                  blt          s11, s11, 18f
                  addi         t1, a6, 290
                  bgeu         zero, zero, 29f
18:               andi         a3, s7, -88
19:               sltu         t4, s0, t3
                  bltu         zero, gp, 40f
21:               andi         gp, t4, -1869
                  bgeu         a0, a2, 30f
                  add          s9, t5, s4
                  xor          a7, t1, s11
                  and          t1, gp, s9
                  xor          s10, a7, s5
                  andi         sp, t3, 1083
                  bltu         tp, s1, 45f
29:               srai         t4, a0, 5
30:               blt          a3, a0, 48f
                  sra          a3, s0, s9
                  andi         t2, s6, -605
                  sltu         a0, a7, s1
                  lui          t0, 514568
                  slt          zero, s4, t0
                  bge          gp, a2, 44f
                  bge          a3, t2, 52f
                  xori         gp, s1, -1385
                  slt          sp, t3, a4
40:               addi         a4, s2, -892
                  bgeu         gp, t4, 60f
                  bne          s9, s10, 43f
43:               srli         t1, s10, 19
44:               andi         t6, t3, 1563
45:               slt          ra, s9, t0
                  andi         s6, a1, -1628
                  bltu         s0, a2, 56f
48:               srli         a4, s8, 0
                  sll          sp, a5, s11
                  ori          t4, zero, 503
                  xor          s10, zero, t3
                  sub          s4, a1, s0
                  andi         zero, t0, -1425
                  addi         t2, a1, 619
sub_7_j11:        jal          s4, sub_8 #jump sub_7 -> sub_8
                  bne          a3, s8, 53f
                  andi         a6, t4, 683
                  or           s5, tp, tp
52:               bge          t1, t0, 58f
53:               auipc        s3, 925620
                  lui          t2, 37987
                  sub          s6, t6, a6
56:               addi         ra, s6, 662
                  bge          a2, a7, 62f
58:               bge          a1, s7, 75f
                  bge          a7, s10, 63f
60:               andi         s5, t5, -803
                  nop
62:               slli         s5, s2, 6
63:               beq          t0, s11, 67f
                  sll          s4, tp, t4
                  auipc        t3, 590853
                  srai         s6, a3, 7
67:               srl          s5, a0, tp
                  bgeu         s7, s11, 78f
                  nop
                  sltu         tp, s11, t2
                  and          a6, s2, a3
                  bge          s10, t6, 78f
                  bne          sp, s5, 76f
                  sltiu        s7, s4, -1989
75:               beq          s10, a6, 95f
76:               bne          s10, s2, 91f
                  or           t2, a6, s10
78:               lui          t4, 30894
                  beq          a2, a7, 83f
                  bne          t0, t0, 83f
                  bgeu         zero, s5, 82f
82:               sltiu        s6, sp, 535
83:               ori          t0, t0, -105
                  ori          s6, a1, -1956
                  bne          t0, t1, 100f
                  srai         ra, a6, 23
                  lui          s2, 535565
                  bltu         t5, s1, 105f
                  addi         s9, a7, -338
                  sll          s0, gp, s9
91:               slli         a0, s3, 1
                  sll          t5, t0, zero
                  slt          s0, s3, a0
                  auipc        t0, 3829
95:               nop
                  ori          a2, a2, -1878
                  sltu         s2, zero, a4
                  srl          gp, s5, s1
                  slli         t4, a6, 26
100:              slti         s8, t2, 766
                  ori          s5, s3, 1219
                  sltu         s9, zero, sp
                  sltu         s8, s4, t0
                  bgeu         s7, s2, 107f
105:              beq          a4, t2, 113f
                  sll          s9, t3, s0
107:              addi         t6, tp, 353
                  lui          s8, 625672
                  and          t6, s9, t2
                  addi         t2, s7, 147
                  xori         s7, s10, 1742
                  sltiu        t4, a4, -1493
113:              nop
                  srai         a6, gp, 22
                  sra          s11, sp, gp
                  xori         s9, a2, 1218
                  sltiu        s11, a7, -208
                  sltu         s2, t6, s9
                  auipc        a4, 519133
                  srai         gp, zero, 15
                  sltu         t4, a5, a4
                  addi         a3, s6, -1429
                  add          t2, t4, s3
                  bge          t2, t0, 132f
                  andi         s9, s3, -286
                  srli         tp, t6, 12
                  xor          sp, sp, a7
                  la           t1, region_1+1853 #start riscv_load_store_rand_instr_stream_1
                  auipc        s6, 395926
                  lbu          a2, -4(t1)
                  slt          t5, s3, a4
                  sw           ra, -9(t1)
                  lb           t2, 10(t1)
                  sra          a4, s2, a4
                  lbu          t4, 4(t1)
                  sb           s8, -12(t1)
                  lb           s6, 12(t1)
                  lb           t0, -6(t1)
                  lh           s6, -13(t1)
                  sra          t6, s6, t0
                  lb           a2, 0(t1)
                  ori          sp, a7, -1221
                  lb           s7, 10(t1)
                  lh           s6, -9(t1)
                  sh           a5, 1(t1)
                  lhu          s6, 9(t1)
                  xor          s4, gp, a4
                  ori          t5, sp, -1878
                  xori         sp, sp, -309
                  andi         s10, t4, -1364
                  or           s10, sp, a3
                  sh           sp, -9(t1)
                  andi         a3, t5, -466
                  srai         s6, zero, 25
                  sltiu        s9, t6, 1607
                  lb           s0, -2(t1)
                  nop
                  lb           gp, 14(t1)
                  sll          s5, tp, ra
                  srl          a4, s5, s3
                  ori          t4, tp, 363
                  lb           s7, 0(t1)
                  srai         gp, t4, 8
                  lbu          t4, 0(t1)
                  sra          t6, a3, s9
                  sll          s6, t6, s0
                  lw           t4, 7(t1)
                  lbu          sp, 5(t1)
                  andi         gp, tp, -1325
                  sb           a3, 5(t1) #end riscv_load_store_rand_instr_stream_1
                  slli         s4, s4, 13
                  nop
                  add          zero, t1, a2
                  bge          ra, s5, 149f
132:              sll          t1, s8, s1
                  ori          t1, sp, -1472
                  bltu         s8, a3, 151f
                  sltiu        a6, a2, 948
                  xor          s10, t6, s3
                  andi         t5, s6, 1335
                  and          t5, zero, gp
                  sub          a7, s9, s0
                  or           s0, t0, t6
                  auipc        s6, 37817
                  slt          s2, a5, gp
                  slt          t0, s6, a2
                  srai         s10, t5, 17
                  sub          t6, s5, tp
                  sltiu        t0, s3, 1659
                  sll          t6, a3, t3
                  sltiu        s5, s3, -722
149:              and          s4, sp, s1
                  nop
151:              and          s3, t5, s1
                  bge          a3, s7, 172f
                  addi         t5, s2, -1538
                  addi         a7, a3, -1910
                  slt          a4, t6, a3
                  lui          a7, 110979
                  slli         s10, a5, 5
                  nop
                  bltu         s9, t3, 163f
                  xori         sp, s8, -522
                  sra          s9, t0, s5
                  slli         a7, ra, 7
163:              blt          s0, s6, 164f
164:              sltiu        a2, s9, 799
                  xori         s10, s8, 1419
                  bge          a0, t5, 167f
167:              sub          ra, s2, ra
                  sub          a0, t6, a0
                  bgeu         s9, a2, 188f
                  bltu         t2, sp, 173f
                  ori          a3, t3, 824
172:              slli         t5, s11, 26
173:              bne          s7, s3, 183f
                  or           t1, a7, s5
                  beq          a2, s1, 179f
                  bgeu         ra, a1, 182f
                  auipc        s3, 372704
                  sltu         gp, t1, a0
179:              auipc        t0, 247545
                  add          a7, a1, t6
                  add          sp, t0, s2
182:              bltu         t3, a2, 197f
183:              srai         a7, a1, 23
                  xor          gp, s6, s3
                  lui          a4, 227922
                  bge          a1, a7, 190f
                  sra          s9, a7, t4
188:              lui          a0, 374913
                  blt          s9, s7, 206f
190:              bgeu         t4, t0, 202f
                  srli         t1, gp, 23
                  andi         t6, s3, -1669
                  blt          gp, t6, 208f
                  xori         a3, s5, -30
                  bge          s2, zero, 200f
                  ori          a3, a1, -1733
197:              sll          a7, a2, a3
                  sub          t1, sp, s9
                  xor          ra, a2, s11
200:              ori          s11, s8, -69
                  sltu         s4, a0, s11
202:              nop
                  bne          tp, s4, 206f
                  slt          a3, tp, t1
                  bne          sp, s7, 209f
206:              andi         s0, s2, 1545
                  sub          s7, ra, a3
208:              xor          s10, t0, s1
209:              auipc        s5, 332588
                  sub          a7, tp, zero
                  xor          t1, s6, ra
                  addi         a2, s8, 695
                  slti         t1, s9, -43
                  slti         tp, s5, 27
                  bge          s10, s7, 235f
                  lui          t2, 602005
                  beq          a7, t6, 223f
                  bltu         t5, t5, 221f
                  ori          s9, s1, 0
                  nop
221:              sll          a2, gp, t4
                  ori          t4, gp, -1433
223:              sltu         a0, s2, t1
                  sub          t0, a6, s8
                  sll          s0, s3, s10
                  beq          a5, t6, 241f
                  sltiu        sp, ra, 1710
                  auipc        s2, 466313
                  bgeu         a1, a5, 238f
                  bne          a2, a4, 238f
                  auipc        tp, 711384
                  andi         a7, t0, -301
                  blt          s8, sp, 242f
                  sra          s8, tp, s8
235:              xori         s8, s8, 1668
                  blt          a5, s7, 240f
                  and          a0, s3, s3
238:              slt          t2, s7, a7
                  auipc        a6, 397319
240:              bltu         s10, s6, 246f
241:              bgeu         s9, s6, 250f
242:              beq          s7, s2, 261f
                  lui          tp, 690889
                  srl          a2, ra, a4
                  and          s8, a0, t0
246:              srai         s10, t1, 9
                  sltu         s0, ra, t3
                  sra          zero, s11, t3
                  auipc        ra, 927641
250:              bltu         a7, s9, 251f
251:              sltu         tp, a2, a1
                  sltiu        s3, ra, 1257
                  or           t0, tp, s7
                  addi         s4, a6, -1812
                  srai         t6, s4, 26
                  srai         s10, ra, 10
                  xor          t3, s4, t4
                  xori         a7, s5, -1215
                  xori         t1, s8, -1369
                  bge          tp, t5, 263f
261:              lui          s3, 221138
                  blt          s4, s4, 270f
263:              slt          s6, t2, a2
                  sub          a4, s2, a5
                  sub          s3, t2, t6
                  bge          s4, a1, 272f
                  beq          s6, s2, 270f
                  sll          s0, t3, s9
                  lui          s0, 146297
270:              addi         s6, s1, 580
                  sltu         t0, t2, s6
272:              bne          sp, ra, 275f
                  srai         t6, sp, 18
                  slt          s9, a5, ra
275:              sltiu        t1, s6, 2001
                  bge          s0, s9, 279f
                  slt          tp, ra, t0
                  bne          tp, s8, 286f
279:              bge          s4, t4, 284f
                  sltiu        s4, a6, 1857
                  slli         ra, gp, 5
                  slti         tp, s3, -1420
                  bne          a4, t0, 284f
284:              and          gp, s10, tp
                  bne          t0, s11, 289f
286:              bge          a7, a1, 294f
                  addi         a6, tp, -1291
                  andi         a4, zero, 33
289:              bgeu         t0, s1, 306f
                  slli         tp, a2, 13
                  slt          s9, a2, s5
                  beq          zero, a5, 306f
                  srl          t1, ra, t0
294:              bge          tp, s7, 306f
                  sltiu        s11, gp, -1864
                  auipc        s0, 638961
                  or           s3, t6, a7
                  srai         s4, a6, 31
                  bne          tp, zero, 306f
                  sltiu        t2, s5, 1717
                  beq          gp, s0, 305f
                  nop
                  srli         a6, s10, 2
                  sltiu        a6, s2, 1589
305:              addi         t6, a5, 714
306:              sltiu        a0, t0, -1192
                  and          t4, s6, s4
                  sub          s2, a6, ra
                  nop
                  lw           s4, 4(a5)
                  xori         t3, zero, -1758
                  sll          tp, a4, zero
                  srai         s11, s7, 10
                  add          sp, s5, t1
                  addi         a5, a5, 24
                  or           t2, s6, a4
421:              addi x16, x20, 1
421:              jalr x16, x16, 0
sub_3:            sltiu        t6, s5, -616
                  xori         s6, tp, 1013
                  lui          a3, 843780
                  addi         a5, a5, -40
                  sw           s4, 4(a5)
                  and          s0, s1, t2
                  addi         s9, a2, 406
                  slli         s11, a2, 26
                  sub          s8, a1, s4
                  or           s2, t1, gp
                  blt          s6, s0, 9f
                  slti         a3, a7, 904
                  slti         s10, s10, 1535
                  nop
                  bge          s7, tp, 12f
9:                addi         gp, t5, -735
                  slli         s10, t4, 30
                  srai         tp, t4, 29
12:               bltu         t4, s11, 32f
                  auipc        s2, 854381
                  xor          tp, a4, ra
                  addi         a4, t3, 241
                  sll          a0, a6, a2
                  bne          t4, tp, 35f
                  ori          gp, ra, 400
                  add          a0, s6, a1
                  slli         s8, a3, 5
                  or           a4, t6, a6
                  srai         t1, s2, 7
                  add          t0, t5, s3
                  auipc        s0, 543135
                  lui          sp, 181532
                  lui          t1, 597554
                  nop
                  or           t2, t4, s3
                  or           s10, s5, s11
                  slti         ra, s9, -1684
                  sll          t0, a7, s7
32:               sub          a2, s4, a1
                  sll          zero, t2, t3
                  beq          t0, t4, 40f
35:               sll          s3, a2, tp
                  ori          s9, a6, 1023
                  slli         t4, t6, 11
                  sll          s8, t5, gp
                  and          a6, t3, a5
40:               xori         zero, gp, 1630
                  sra          gp, s0, a3
                  lui          t5, 882947
                  lui          t2, 762077
                  lw           s4, 4(a5)
                  nop
                  and          gp, a2, gp
                  xor          s0, a2, gp
                  slti         s7, tp, 641
                  addi         a5, a5, 40
                  sub          sp, t3, a0
                  sub          a3, s0, t1
                  srl          tp, tp, a4
59:               addi x7, x20, 1
59:               jalr x7, x7, 0
sub_9:            bge          a6, t2, sub_9_stack_p
                  lui          s3, 1013534
                  sra          s10, a6, s9
                  ori          t0, t5, 1284
                  xori         s8, gp, -767
sub_9_stack_p:    addi         a5, a5, -12
                  sw           s4, 4(a5)
                  slti         a7, s10, 1256
                  xor          t6, s3, s1
                  sub          a7, a5, t3
                  bne          tp, t6, 11f
                  xor          tp, a0, s8
                  bne          t1, ra, 24f
                  auipc        a6, 577385
                  sll          t2, sp, t0
                  and          a6, s1, a6
                  beq          s2, t6, 10f
                  slt          gp, t0, tp
10:               andi         s4, t6, -1048
11:               andi         s0, s4, -1432
                  slli         a4, a1, 21
                  ori          a7, s5, 1013
                  sra          s5, s6, s1
                  srl          t2, t1, a7
                  ori          zero, t4, -1570
                  sra          t4, s1, t2
                  xori         a4, s6, -148
                  sub          t1, t3, s9
                  add          a7, s5, s7
                  xori         zero, s11, 761
                  add          a2, a7, s2
                  slli         t6, s0, 12
24:               sltu         s10, t5, zero
                  addi         a3, s0, -1710
                  xor          s3, t4, a2
                  ori          s4, t1, -1032
                  lui          s9, 562713
                  slli         s9, t6, 8
                  sltu         t2, t2, sp
                  srai         s3, s10, 9
                  slli         t2, tp, 28
                  lui          a6, 409838
                  or           a6, s2, s3
                  sltiu        a3, s7, -136
                  nop
                  sub          a6, ra, a1
                  and          a0, a3, s7
                  addi         a4, s6, -86
                  slti         s7, s8, -960
                  xor          a2, a1, t4
                  addi         gp, zero, -1804
                  srai         s9, s11, 5
                  lui          s9, 549192
                  nop
                  slt          a3, a1, a5
                  lw           s4, 4(a5)
                  add          t2, s2, t5
                  ori          sp, t5, 900
                  lui          gp, 31544
                  addi         a5, a5, 12
                  slt          s9, a2, t0
                  ori          t6, s10, -1355
62:               addi x17, x20, 0
62:               jalr x17, x17, 0
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
.word 0xf514ca9d, 0xb357627f, 0x54784dbd, 0x4aa97867, 0x039f4fad, 0x2773fdad, 0x1e44a882, 0xa2116a15
.word 0x9fc690f0, 0x117cbe91, 0xd754cc8c, 0xfb9bf978, 0x22916156, 0x52b31e52, 0x44b58ba3, 0xa55b2fc3
.word 0x4f50724a, 0x9d802e4a, 0x2e9b3c27, 0xdfdacc24, 0x59578727, 0x687432b2, 0x2544b474, 0x7bc0efaf
.word 0x6410a7ec, 0xc1c291a8, 0x4a978dc2, 0xa9ff0f23, 0x992ce99e, 0x985a2969, 0x9e30a3f5, 0xb45ead54
.word 0xf9eb2b99, 0xcea4c2f4, 0x7081e719, 0xeb1c3d61, 0xb8c4c7da, 0x88a47e2d, 0xbb51cd8c, 0x5f2f60e1
.word 0xcd6ae795, 0xc0cd3f4a, 0x80cfd9d1, 0xacd9073a, 0x83fc7fac, 0xba1604d8, 0xa7404579, 0x5123af7a
.word 0x2b97839f, 0x79e80a64, 0x8045fc3d, 0x632cc2a3, 0xfa05515a, 0x9e01dd09, 0xcfc9963a, 0xa01a7376
.word 0x10e8af0e, 0x6b51c99a, 0x0c9f50d0, 0x1d3b58be, 0xe62e138c, 0x5d017507, 0x60379450, 0xffbff92e
.word 0xe19f6385, 0xefaaede7, 0xb61e143d, 0xa4353f90, 0xafc3ff29, 0x36d53feb, 0x508a05d4, 0x0a6f8e84
.word 0xb86780aa, 0xf69e6b5d, 0x4443ac73, 0x285cf856, 0xc7af5a01, 0xf9367c76, 0x167410f8, 0xd92cc9f6
.word 0x0494a9d6, 0x8924a8eb, 0x75d926b3, 0xb0f9ee57, 0x6e0421fe, 0x1ad9f872, 0xc0d5f488, 0xcf0de77b
.word 0x4c9a9074, 0x9ef8a946, 0x3849223f, 0x9e510c7f, 0x08dab60c, 0x760b8d2d, 0x88eadeb1, 0x62a5df55
.word 0x6cd34d73, 0xe52b50e1, 0xf1ecf88e, 0x5f9f0205, 0x058e01f0, 0xfdb5e391, 0xef4f32a0, 0x1fa268dc
.word 0x906dd262, 0xef1d8877, 0x647b4562, 0xa120608a, 0x52754960, 0xf2b95055, 0xa3a12bc1, 0x52242a75
.word 0x9ab13074, 0xcfb6d0c8, 0x251933c7, 0x3ac58ee0, 0x3ac948a2, 0x543b78f4, 0xa7fdde9a, 0x27d4dfda
.word 0xb1f3afe1, 0x29c489e5, 0x3d2c76e4, 0x3d79e29c, 0xb4a333a2, 0xe0bffcdb, 0x0654172f, 0xfe712df3
.word 0x27d37f54, 0x49afd5dd, 0x5474b6b7, 0x3a937c3d, 0x24fec842, 0xa0079087, 0x0bf42bbd, 0x28bcd7a8
.word 0x010d42a0, 0xf9df27d0, 0xaf79b0f1, 0x2d538523, 0x4060aaf9, 0x33580c0b, 0x7339d59d, 0x7e66746f
.word 0x45b82f50, 0xdddd1440, 0x11c5cf80, 0x15da9293, 0xafb2d8cc, 0xcf7ca15b, 0xa09bbd56, 0x26c7c2d7
.word 0x2b8ce2e2, 0x0bfd8607, 0x4baa1d20, 0x6ffd59d5, 0xdc0a2d9f, 0x52e19d20, 0x2068618b, 0xb125c949
.word 0x3211843d, 0x5d3a3b05, 0xb3dcccb6, 0x392a8107, 0x85f35a88, 0x0188b03c, 0xc7b0c001, 0xd3ab483c
.word 0x0e7902aa, 0x3eaae547, 0xad7d3a8f, 0x32cf89b5, 0x8b8ff8ae, 0x4fac3241, 0x33b61092, 0xc633464b
.word 0x66a72535, 0x96dac479, 0xccb5c35f, 0xc6ce33a4, 0x7402a527, 0x2792a807, 0xb3af3d5c, 0x8c8505f4
.word 0x203b04db, 0x78aeaa62, 0xbe6e5e56, 0x81abec26, 0xcd06fd47, 0x80c2cdb8, 0x23eff213, 0x3d684024
.word 0x2e2b0391, 0x4aa194ba, 0x79b55f32, 0x40bdee9b, 0x394ac0de, 0x1fd595e2, 0x6395db64, 0x937f13f5
.word 0xb7a248a4, 0x13619b16, 0xc55c10fe, 0x057ee9fd, 0x06339a89, 0xe76702bf, 0x25c0d64b, 0x73ccbc38
.word 0xd6f6c373, 0x94f4667d, 0xdea40a6b, 0x6859a8b9, 0x7f983a4b, 0x27c794ea, 0x20ec2bce, 0x5d6b9ab6
.word 0xa39b994a, 0x668091c5, 0x782233ee, 0x5be377c3, 0x4189ae99, 0x8493619b, 0x4fd7cf5a, 0x4c825d72
.word 0xee8fde51, 0x45f33291, 0xc24f9fe9, 0xc04a4eab, 0x2c9c769c, 0x07f5e646, 0x99d676e0, 0xf916b4d8
.word 0xf94b3de3, 0xba233399, 0xb9f24db2, 0xf2b30f7e, 0x7197a484, 0x29be842e, 0xe5f65823, 0xcda0c6c7
.word 0x55ac6987, 0x46fff442, 0xa05d2233, 0xadfa72fb, 0xc7393152, 0xa4311185, 0x45fbd065, 0xdc202edb
.word 0x4c5d752b, 0x5ffec779, 0xa7fd10f6, 0x9c4678d3, 0x4400cfc8, 0x926053ac, 0xe6f71384, 0xc9ea1dcf
.word 0x745e547b, 0xa9e29fee, 0xf0e1c326, 0x001cdb85, 0xc6efac03, 0x55547da0, 0xfd64a038, 0x1cf95d60
.word 0xa4185fd1, 0x6ff0d719, 0x303bc415, 0xa13179eb, 0x10547451, 0x9e92f622, 0x8e019bb4, 0x86a04e88
.word 0x1c600efb, 0x12ccecbf, 0xd7559d9e, 0x22015281, 0x413b0b76, 0x1f460d8b, 0x248ce366, 0x86c0a8e6
.word 0x673cb933, 0x8511625e, 0x2ed409d8, 0xf6e4ec01, 0x232ca178, 0x6ff62572, 0xe309ea14, 0xd39d26f5
.word 0x5e1741b1, 0x12a4be66, 0x02387970, 0xd92658d5, 0x72881645, 0x96b27b57, 0xc6f14bcc, 0x8fe9dec5
.word 0xe8488092, 0xf0de87f6, 0xeddd67e9, 0xe6663b6c, 0xfa189c1f, 0xf818a751, 0x638561dd, 0xaf6268db
.word 0x377c05ea, 0xdbe20177, 0x343a3ff8, 0xbf6b32c4, 0xddc64c66, 0x46cf8fb2, 0x90e61ade, 0xd969d8d5
.word 0xdc12d65d, 0xb2d7e39d, 0x25386903, 0xf3202b2e, 0x8c8d720e, 0xa2710678, 0x943ab0e8, 0xb396b5cd
.word 0x664bf32d, 0xb8a51b1a, 0xd6837b6b, 0x1ff1dd11, 0xf7c87977, 0x5edcda9a, 0x7985b3ad, 0xd9129243
.word 0x95ac2f57, 0xaaed8083, 0xe44e9c01, 0x6c3c6091, 0xb4a45b80, 0x95e8e628, 0xa4180253, 0x5ae7a232
.word 0x1cef7546, 0xeeef1919, 0x97759b3b, 0x20deaf24, 0x6240718e, 0x3f3a78a8, 0xd87adf4a, 0xc9c3aebb
.word 0x87e32bde, 0xabf66da1, 0x44b4ebd7, 0x42d5f2dc, 0x12567dc2, 0x8ec48a81, 0x16e78375, 0x326906ad
.word 0x5a7c709a, 0x9b159bd4, 0x73591164, 0x526d8035, 0x8c991ce2, 0x772b0229, 0xe864b09c, 0x92d50013
.word 0xbc7c4dbc, 0xb5478d85, 0x81959a94, 0xbbc4400f, 0x18cb37e2, 0xf3a42fb1, 0x6bb4132f, 0xd39ffbbd
.word 0xc0011070, 0xbbe1cdcc, 0x6e735807, 0xdd9b6464, 0x6eca80e3, 0xc1ddd35c, 0xf6b08bae, 0x884f4252
.word 0x70009491, 0xd6e9f859, 0x470a5d4f, 0x63dbd404, 0xbbf95a01, 0xc5468fe0, 0x0a06e612, 0x704eb620
.word 0x87dfdef6, 0xb61bb0e3, 0xf00caa8b, 0x4eba34d2, 0xdaa647e4, 0xf0222db7, 0xc3b2a8d4, 0x81e4131f
.word 0x14de9ae3, 0xb471c897, 0xda82ade2, 0xb30c5b74, 0x09df872c, 0xfbffa631, 0xd1c92c57, 0xda48be0f
.word 0xe7c037b1, 0x1130f4c8, 0x416c4381, 0x0408e76b, 0x9651f07a, 0x21f14318, 0x13fe4f97, 0x5c788dbc
.word 0x674967fd, 0xd1fc95c5, 0x51143e8a, 0xe4712bac, 0x6bbc5f85, 0x208de3d9, 0xc0c9d777, 0xf111841b
.word 0x616e1e1c, 0x137bc010, 0xfbe0e5f5, 0x24eb1bc9, 0x5c02360a, 0x485b70f7, 0xd3d5c570, 0xb1dc64bc
.word 0xe7c3877b, 0x344505a8, 0xc738288a, 0xf563991a, 0xccd7066b, 0x772b4b39, 0xa36fc42f, 0x405ff57a
.word 0x2b1b93a9, 0x05e97277, 0x2deda6be, 0x3b70aa8d, 0x102b2484, 0x3918703b, 0x0366b9f5, 0x34ce31f0
.word 0x5ce2a4be, 0xe377241f, 0xbdd15112, 0x1cbf7b8a, 0x85b350f1, 0x0a246cdd, 0x7db5b4df, 0xbc4698de
.word 0x2412b13b, 0x896700d5, 0xdc1c1e55, 0x240e11b8, 0xc256cc89, 0x7d4153a0, 0xffc55ea9, 0x6e78939e
.word 0xffeabca4, 0x737ff2bf, 0xf75ec36b, 0xa32178c9, 0xc2650929, 0xb466e12f, 0x27a771dd, 0xa491f6b6
.word 0xd8d8133d, 0x21364849, 0xb4f7f15b, 0xc9d8e06a, 0x7beac23e, 0x10e377ba, 0xf29ce637, 0xe311a2d7
.word 0x491a937e, 0x4980e38b, 0xc55a08d2, 0x6f6a6e02, 0xf68f8fb6, 0x84ab2be2, 0x8cccae72, 0x0d1ccb1d
.word 0x30cc5f84, 0x05b7e005, 0x448fdfb1, 0xe6d2de36, 0x244b1597, 0x2e2f8884, 0x48a2023b, 0xa22cca97
.word 0x0d1fe4af, 0x92d29c31, 0x4d99354e, 0x9e785075, 0xbfac33e5, 0x5dfd8f65, 0xccc669e2, 0x85f07c28
.word 0x0a2b9818, 0x765896a1, 0x0d5a6d32, 0xa6f29510
.section .region_1,"aw",@progbits;
region_1:
.word 0xedd8b705, 0xfcf1a13f, 0xd6b85e31, 0x1fadecf6, 0xccb3bdbe, 0xac6d10bd, 0x89386282, 0x3b0c28b5
.word 0xd56aaf8c, 0x1560dafe, 0xab61f3e3, 0x54653693, 0xe3a0e8a3, 0xe8b9d8a0, 0x9899b4e7, 0xac9490da
.word 0xf67c344c, 0xbe75c81a, 0x4e413b5b, 0x56a82ed7, 0x4f88dac0, 0x2c78aea8, 0xe7f5abc6, 0xa22d49cc
.word 0x3fc4436f, 0x06973dd3, 0x41aece58, 0x69496e9a, 0x110b6352, 0xbfc50d77, 0x30c938a5, 0x17a592dc
.word 0xaf589b5f, 0x18f2b490, 0x165365bf, 0xd5af9e5f, 0xb664c730, 0x5fa0ac8a, 0xb471beb0, 0x9f3609c4
.word 0xcf23dd0b, 0x9a1ee742, 0x74f4bb93, 0x6ba6c3dc, 0x433e14d0, 0x758bb6b8, 0xc369de91, 0x5da2e576
.word 0x21563746, 0xfcfa8fba, 0xbfae2fde, 0x17fe8ffc, 0x7a1f5f66, 0xc9ae24aa, 0x3c70fbc9, 0xa1f7ce84
.word 0xd3e7d1b3, 0xaeb5ace5, 0x1dc67143, 0x563d134e, 0x15aa1a14, 0x4e7e919a, 0x9ef27d49, 0x978910eb
.word 0x793d3bb3, 0x0d37a41e, 0xa52e0aab, 0xa1b53627, 0x1aeadb53, 0xfc3a8e49, 0x57831e8b, 0x4ca8fd62
.word 0x83f8622f, 0xa65e2697, 0x8d17c352, 0xc5ce466e, 0xc88b430e, 0x02e1ca70, 0xe93d8f19, 0xc67d936e
.word 0xece67964, 0x53c78f43, 0x1cb747d0, 0xe00f5d1b, 0xc0e1e298, 0x0ab045d0, 0x8f6b6086, 0x67c48ba8
.word 0xdeafedb8, 0x426a1ddb, 0xa3bb6a5c, 0x6c52a18d, 0xb2b96a90, 0xe3baff62, 0x182e65e9, 0x460fe936
.word 0x1ba0631d, 0x12595e24, 0x374758ca, 0x6f20afd3, 0xaca54da4, 0xb2ef059c, 0xde09c7f1, 0x2c02f9bd
.word 0x23292bca, 0x35f50969, 0xa5956695, 0xe3ae2a9e, 0x6152e17f, 0x8155dbbe, 0xa36a708c, 0xd861af48
.word 0x4a10223c, 0xbfb80971, 0x85fe3d9b, 0xa410ded9, 0x0e9c908a, 0x6f941287, 0xaed606ee, 0xd0dc6b66
.word 0xe5521fe8, 0x122d865e, 0x1958229f, 0x9c8ac17a, 0xc516c941, 0x360a96fc, 0x7992cce4, 0xb8b9d654
.word 0x721d7ea6, 0xa4eaed9e, 0xadfd7d21, 0xe277e1f6, 0x7efe13aa, 0x8c94717a, 0x7be5fdfe, 0x00314e09
.word 0xbad541e4, 0xef059b21, 0xa8510e38, 0xf86e1d83, 0xaa4d46ed, 0xeaecbaa0, 0x230e3132, 0x982c9710
.word 0xaacc8830, 0x59f11810, 0xbce1a969, 0xeb54f420, 0x14b6b725, 0x99782a40, 0x5d71676f, 0x4d9b520d
.word 0xca5aa74b, 0x0cbd8047, 0x14334b2c, 0xb71b6aa4, 0x18e24887, 0xe724e179, 0x445a005c, 0xc104e889
.word 0x402e8b9f, 0xc19b7b56, 0x7d85cba9, 0xb0c6e119, 0x8d25b841, 0x326a2449, 0xfab04321, 0x4c3ab0ad
.word 0x4630d38f, 0x2aa8b0bf, 0xd7175e63, 0xadc6ce92, 0x8fb1fb75, 0xb877e854, 0xcdae72f1, 0xc7b2eb4c
.word 0xd13be848, 0x6bfcba7c, 0x0aac0f26, 0x9aab9c2e, 0x2faf8138, 0xc1c56232, 0x8cf63634, 0x48cfc773
.word 0x2f631253, 0x7758c506, 0x8c784ec9, 0xfb5eb910, 0x19423862, 0x9dbaf62c, 0xede0d3a3, 0x4040b353
.word 0xf15b7bcd, 0xa3eeeb9d, 0xd9e84666, 0x11d865f0, 0x528d2e5e, 0xfff1c523, 0xd89c0dd9, 0xb2dc774b
.word 0x735c6112, 0x45a4ef9b, 0x01ff9d68, 0x743c1e25, 0xaf4dbe74, 0xe0cd580a, 0xa6f34027, 0x672296ce
.word 0xa86c6ed2, 0xc7e1fc4c, 0x9e487b01, 0x78adca55, 0x17018565, 0xa33b4d47, 0xbe7659fe, 0x0bb64027
.word 0x5ef078a9, 0x2d1a0483, 0xeb345d63, 0x443d1688, 0x12bc0dc3, 0xfd889b47, 0xd35592ef, 0x9da88c6f
.word 0x94a7de43, 0xf1288de1, 0x49806003, 0x8f380b06, 0x4b8dadb7, 0xaed5bd91, 0xfd439d9b, 0x92a3fe97
.word 0x3838dfbf, 0x9f57c372, 0x4cc66cda, 0xd24a3eb0, 0xf2464ddd, 0x7d753247, 0xfa36f47c, 0x35bd1f38
.word 0xba75203e, 0xc2d98800, 0xe020f62f, 0x8d422dfc, 0xdd96a728, 0xae778a56, 0x42ba1cd5, 0x2a92e904
.word 0x9f227dfa, 0x29a75376, 0x351e27b9, 0x733f2a70, 0x8cc87fe6, 0xf04bb7ad, 0xf838d455, 0xe234dde2
.word 0x3bd8dc16, 0x3824360e, 0x8d783c9c, 0xda7bf06a, 0xc2830b81, 0x9405ef77, 0xbe58a634, 0xd7caf07f
.word 0x176c68d9, 0xb197b799, 0x9f2168df, 0x9e4692c9, 0x948f9b03, 0x73b46c49, 0x9b776a1a, 0xf34f4024
.word 0x0e282a9d, 0x08ae18f2, 0x8057ac71, 0xc5203ec1, 0xaee69aa7, 0x767a4e2c, 0xd30f7484, 0xf1399a0f
.word 0x9370a5a0, 0x16707c50, 0x9773b23b, 0x07bbabca, 0x64f2c679, 0xd5d057f0, 0xbdb361dc, 0x57c58a27
.word 0x6422bc4f, 0x16ff83ed, 0x8f3ccb08, 0x8add52b0, 0x5a4b9acd, 0xe8fa3efd, 0xc729457e, 0xbce09f55
.word 0x336e3208, 0x56a552db, 0xbeac832b, 0x0ce69d35, 0x283946ad, 0x529b468f, 0x9926fdd5, 0x51fc9cbc
.word 0xf75ed821, 0x6a760928, 0x48bdf159, 0xf2522f3d, 0x2727bba6, 0x8c157b25, 0x6af5dfa0, 0xf02b876a
.word 0x5a722ac2, 0x1fd00fbe, 0x29d20e12, 0x656ff845, 0x474898b3, 0x262a8a22, 0x52e07970, 0x34273941
.word 0x624e5348, 0x06e2dd5b, 0xd38c97de, 0x3457cce4, 0x486f8e23, 0xc9632857, 0xa502206a, 0xb9464ccc
.word 0x9b8edc8c, 0x374fffab, 0x02e162df, 0x655708e7, 0x20484f34, 0x7a775d91, 0x8ee62281, 0x29aa13d1
.word 0x69c87098, 0xd418e00d, 0xe8f523d1, 0x32f7b01c, 0xe6534ea6, 0xb3de6bb3, 0x721c8b0d, 0x4f8b7a6e
.word 0xcdb5614f, 0x827ede00, 0x12f85e49, 0x6ac3a23b, 0x44dac4ab, 0x64a28bde, 0x5dfddeac, 0xaa459344
.word 0xff099546, 0xb832e310, 0xcc44e516, 0x806b180f, 0x37f7b5b1, 0x2437e94f, 0x654da356, 0xbaf24188
.word 0x6c0f8701, 0x13e2b01a, 0x30a72df9, 0xcf2f493e, 0x4667a134, 0x18627edd, 0xe837f94c, 0x769e6046
.word 0x5c929c2c, 0x90f3f01c, 0x44d2f15a, 0xe2930b8d, 0x8b49c480, 0xcf214740, 0xcc7653e3, 0x35483dfd
.word 0x44c26a5e, 0xa6bb6b67, 0x6a60dab7, 0xc5e1a513, 0x658ecd45, 0x41bfa3d7, 0xa59a5ea0, 0xdce36ba1
.word 0x438807e5, 0xb51398ac, 0xa76b7aad, 0x59be7217, 0x6c9613e4, 0xd88ab3f2, 0x9e801bf3, 0x4c401dd9
.word 0x65bc1c6b, 0xf71b47c4, 0xbb84c58c, 0x75f1eb47, 0xb53a7fe4, 0xd45be5f9, 0x53d334f4, 0x9e930075
.word 0x8247f971, 0xf4ac6ce7, 0x229c9f24, 0xa4f9b1af, 0xf672a479, 0xc9e85233, 0x96f5eb06, 0x2ef239bc
.word 0xbc24c84e, 0xac11931f, 0xe22bf9b7, 0x438fe270, 0x24c1900b, 0xa5261a49, 0x038ebee1, 0x83056fcb
.word 0xd49f8bd7, 0xacf1c06c, 0x33422d72, 0xa219255b, 0xf247f2a1, 0x0b9f3545, 0xe01c9441, 0x8dcaa0e7
.word 0xb745666b, 0x4be1eaa3, 0x63764b4e, 0x5338a2d2, 0xbe887a42, 0xb5e39d1c, 0x3c39eb93, 0x95dd02a4
.word 0xbab0d4f2, 0x79c67c3b, 0x1005d21a, 0xae4322ea, 0x2bf00a76, 0x8a966eb6, 0x08f6921a, 0x8475dbdb
.word 0xb0bf6927, 0x88b7a554, 0x1b86a62b, 0x2cddf6e0, 0xdffc0c67, 0xb2234fd3, 0x8a689a1e, 0x61ca865a
.word 0x922a7572, 0xbe46cf08, 0x8dfe999c, 0x970dbc8a, 0x9139c3d3, 0xb153603c, 0xd3781b05, 0xfed07718
.word 0xf9e8e369, 0xe5ee0074, 0x6ed6ba51, 0xf5f5eb22, 0x4080258f, 0xb9360005, 0xdf266f57, 0xe1d1738f
.word 0x60dd7bf1, 0xf105ea98, 0x164f76f2, 0xdc090674, 0x70a2647f, 0x9350b8c7, 0xaffea116, 0x5374d6c3
.word 0x6d74ee5e, 0xfecc75f4, 0xa04a5d18, 0x39f5ea6d, 0x59fb9617, 0x0f538916, 0x1b284d1c, 0x216e46a5
.word 0x044573e0, 0x26d95d98, 0x13d5bbae, 0x71d10149, 0x1963cc7b, 0xcc09fe21, 0x04397bc1, 0x8d206923
.word 0x173c2a23, 0xe5ff0bb8, 0xc87d7d8b, 0xf97fc933, 0x00cd74eb, 0x67a70803, 0x9d52b2eb, 0x3e0003fa
.word 0xe43fadb7, 0x00617a3d, 0xb0a73216, 0x9a39601d
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x11, x15, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x14, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x14, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x1
                  beq x14, x19, instr_fault_handler
                  li x19, 0x5
                  beq x14, x19, load_fault_handler
                  li x19, 0x7
                  beq x14, x19, store_fault_handler
                  li x19, 0xc
                  beq x14, x19, pt_fault_handler
                  li x19, 0xd
                  beq x14, x19, pt_fault_handler
                  li x19, 0xf
                  beq x14, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
