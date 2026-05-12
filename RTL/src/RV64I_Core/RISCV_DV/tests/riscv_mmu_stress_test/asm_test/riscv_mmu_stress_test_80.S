.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x829b90a2
                  li x3, 0x9e1da013
                  li x4, 0xd
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xf
                  li x10, 0x80000000
                  li x11, 0x5
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x2
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xe
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x5
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x5e7ce912
                  li x26, 0xa7eac4e0
                  li x27, 0xc5804be1
                  li x28, 0xa54f8c9c
                  li x29, 0x80000000
                  li x31, 0x80000000
                  la x22, user_stack_end
main:             la           ra, region_0+1574 #start load_store_instr_stream_2
                  la           t2, region_0+365 #start load_store_instr_stream_3
                  la           s8, region_0+1517 #start load_store_instr_stream_0
                  sb           a4, -1047(ra)
                  la           a1, region_0+1769 #start load_store_instr_stream_1
                  lb           s3, 367(t2)
                  lb           s11, -873(a1)
                  lbu          t6, 151(ra)
                  sh           t0, -1206(ra)
                  lb           a7, 433(s8)
                  sh           t3, 1227(t2)
                  lbu          t3, 18(ra)
                  sb           t2, -141(a1)
                  lbu          t6, -40(t2)
                  sb           t5, 430(s8)
                  lbu          a0, -1017(a1)
                  lh           a5, -561(a1)
                  sb           a0, -1530(ra)
                  sb           t2, -1399(s8)
                  sb           tp, 362(t2)
                  sb           tp, -1393(ra)
                  sb           ra, -1365(a1)
                  sb           s5, 1(s8)
                  lb           s4, -571(ra)
                  lbu          a0, 1316(t2)
                  lh           s10, -19(t2)
                  sh           a6, -182(ra) #end load_store_instr_stream_2
                  lh           t1, 1075(t2) #end load_store_instr_stream_3
                  sb           s7, -568(a1)
                  sb           t4, -466(s8)
                  sh           t2, -1333(a1) #end load_store_instr_stream_1
                  sb           sp, -1044(s8) #end load_store_instr_stream_0
                  la           s1, region_0+324 #start riscv_load_store_hazard_instr_stream_0
                  sh           t6, 430(s1)
                  lbu          s8, 797(s1)
                  sltu         t1, sp, tp
                  lbu          a5, 639(s1)
                  lbu          ra, 639(s1)
                  sh           t1, 658(s1)
                  lbu          t1, 168(s1)
                  sll          s3, s6, s1
                  srai         a4, a2, 19
                  lb           s9, 1067(s1)
                  slt          s10, s2, s5
                  lb           s10, 1067(s1)
                  lbu          s5, 971(s1)
                  sb           s3, 566(s1)
                  nop
                  sb           a6, 998(s1)
                  lb           a6, -129(s1)
                  lbu          s7, 1507(s1)
                  sb           gp, -75(s1)
                  lh           s11, 748(s1)
                  lb           zero, 103(s1)
                  lhu          s9, 684(s1)
                  lb           t1, -279(s1)
                  ori          zero, a4, -867
                  lb           s0, 234(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1801 #start riscv_load_store_rand_instr_stream_0
                  addi         tp, a1, 336
                  sub          a4, a5, s6
                  addi         a4, t5, 1853
                  lb           a2, -233(sp)
                  sb           s3, -68(sp)
                  sltu         s2, t0, a1
                  srli         ra, t3, 29
                  lh           t4, 111(sp)
                  lbu          gp, -163(sp)
                  lhu          s5, 49(sp)
                  sra          t6, sp, s10
                  sub          a5, t3, sp
                  lh           zero, -243(sp)
                  slt          a1, a1, s0
                  lb           tp, -163(sp)
                  lb           a5, 32(sp)
                  slti         s11, a7, -792
                  lb           t2, -168(sp)
                  sb           s3, 55(sp)
                  lbu          s0, -44(sp)
                  add          a4, s8, s4
                  sh           ra, -61(sp)
                  srai         s9, a4, 29
                  lb           a1, 35(sp)
                  lw           zero, 151(sp)
                  sra          s2, a7, a6
                  sb           tp, 20(sp)
                  sb           t5, -236(sp)
                  lhu          s1, 45(sp)
                  lbu          s3, -46(sp)
                  lhu          s3, -151(sp)
                  lw           s9, 95(sp)
                  lh           t6, 105(sp)
                  xor          s10, s1, a1
                  lb           ra, 41(sp)
                  addi         gp, s9, 1096
                  sltu         s5, s9, gp
                  lb           a4, -246(sp)
                  addi         a4, s7, 1785
                  ori          a1, s10, 240
                  sh           a1, 5(sp)
                  slti         ra, tp, 1478
                  lb           ra, 194(sp)
                  lb           tp, 87(sp)
                  lb           t2, 166(sp)
                  lbu          a5, -220(sp)
                  sltu         s9, t5, s7
                  lh           s0, -137(sp) #end riscv_load_store_rand_instr_stream_0
                  srai         zero, s9, 17
                  sll          ra, t5, t6
                  slli         a2, s5, 0
                  ori          a3, s9, -965
                  slli         ra, a1, 11
                  xor          t6, a1, a2
                  xor          t4, s11, a2
                  xor          a2, a5, a3
                  lui          s5, 384779
                  sll          s8, a4, a7
                  bltu         s6, s8, 12f
                  srli         a1, t4, 18
12:               bltu         s4, t5, 29f
                  nop
                  sltu         a1, t5, s9
                  add          a3, s8, s11
                  sra          s7, s8, s10
                  slt          t3, a7, t0
                  sltu         a6, a2, s11
                  srai         s11, t1, 22
                  sll          tp, s8, s5
                  slt          s0, a0, a0
                  la           a5, sub_1
                  ori          s5, a2, -1014
                  lui          t1, 312611
                  addi         a2, a6, -722
                  addi         a5, a5, -712
                  and          s4, a4, t6
                  srai         s11, s5, 27
                  slti         s7, s10, 1990
                  or           t2, gp, s8
main_j1:          jalr         ra, a5, 712 #jump main -> sub_1
                  srli         tp, a5, 22
                  sltu         s1, gp, t3
                  slti         a7, s11, -979
                  andi         a5, a1, -1200
                  srai         a2, tp, 14
                  slli         s7, a1, 5
                  srl          gp, s9, ra
                  add          a1, s7, s5
29:               srai         zero, t1, 7
                  blt          s3, t4, 39f
                  slli         a5, ra, 29
                  slli         a0, s8, 19
                  blt          a4, a5, 42f
                  slli         a3, t6, 16
                  sltu         s4, tp, t3
                  slli         gp, a6, 22
                  blt          t4, t2, 53f
                  addi         a6, t3, -1201
39:               bltu         t3, zero, 42f
                  slt          s5, t2, a4
                  srl          ra, sp, tp
42:               nop
                  sltiu        t3, t0, 1811
                  sltiu        a4, t2, -423
                  bgeu         tp, t4, 47f
                  srai         a4, gp, 9
47:               addi         gp, ra, -27
                  sltu         a0, t3, s11
                  sll          a1, ra, t3
                  nop
                  beq          a3, t6, 65f
                  srl          t2, tp, t1
53:               andi         t4, a1, 990
                  srai         s9, t3, 23
                  sltiu        a3, a7, -1553
                  auipc        t3, 940335
                  srli         a3, s11, 11
                  srli         t3, gp, 0
                  srai         t3, sp, 28
                  sub          ra, s10, t2
                  or           s2, gp, zero
                  lui          s4, 901259
                  slti         s7, t2, 710
                  or           a4, s5, a0
65:               auipc        ra, 350367
                  xor          s0, s7, a5
                  sltiu        sp, t1, -714
                  sra          t1, sp, a6
                  sltu         tp, t1, a2
                  andi         s2, s1, -386
                  bgeu         s6, t4, 80f
                  bgeu         a7, a7, 73f
73:               lui          s5, 512516
                  or           s8, a6, s1
                  srl          a5, s9, s8
                  bne          tp, zero, 78f
                  xori         s5, a0, -710
78:               addi         s5, s2, -1392
                  beq          s9, s6, 85f
80:               nop
                  blt          s9, t2, 85f
                  sra          t4, s7, t0
                  or           t6, s1, s5
                  addi         s8, a4, -75
85:               bge          s10, a5, 102f
                  nop
                  sra          s10, s4, a1
                  beq          s10, a7, 102f
                  xori         s1, s10, 1340
                  sub          t2, t0, s2
                  andi         gp, s11, -335
                  blt          t0, s8, 103f
                  and          a5, t3, a3
                  slti         a3, s3, -1090
                  blt          a5, s9, 101f
                  bge          a7, s2, 111f
                  auipc        t3, 613100
                  lui          s8, 751843
                  sltu         a4, zero, zero
                  or           s0, ra, s3
101:              srli         ra, t5, 26
102:              sll          s11, t5, a3
103:              add          a0, s2, ra
                  sll          s3, sp, t3
                  auipc        a5, 339720
                  xori         a6, a5, 1813
                  auipc        ra, 286448
                  slt          t2, a0, a5
                  beq          t3, s8, 122f
                  xor          a0, t4, t3
111:              beq          t3, s5, 123f
                  sltiu        sp, t0, 1593
                  srl          s2, gp, s10
                  bge          s7, t5, 132f
                  sltu         t1, t3, t3
                  beq          a5, s11, 132f
                  beq          s4, a4, 124f
                  slti         t3, s1, -2015
                  ori          zero, gp, -1474
                  sltiu        t1, s6, -1571
                  sra          t4, sp, t0
122:              xori         a2, s11, 1704
123:              bgeu         s7, t4, 141f
124:              andi         s7, s5, 510
                  sltu         s0, ra, s6
                  sub          a2, a4, sp
                  sltiu        s7, a7, -1177
                  addi         s10, t0, 1181
                  srai         t4, sp, 7
                  sltiu        s4, zero, -999
                  sll          a6, t4, t4
132:              ori          a4, s10, 1250
                  srl          t2, a0, a5
                  xor          s0, a6, s4
                  sra          s9, ra, s9
                  ori          s5, s0, -114
                  bltu         a0, s8, 142f
                  sub          a3, t1, t6
                  andi         a7, s4, 1960
                  and          a6, t2, s2
141:              ori          a7, a0, -1775
142:              xori         t2, s11, -1021
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xor          a6, t3, zero
                  srai         tp, s4, 26
                  blt          s6, t0, sub_1_stack_p
                  andi         tp, s5, -999
                  slli         a5, s9, 5
                  srl          s0, t5, a6
                  lui          s0, 882778
sub_1_stack_p:    addi         s6, s6, -32
                  sw           ra, 4(s6)
                  andi         a6, s9, 820
                  srli         a2, t6, 7
                  la           sp, region_0+714 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sb           s7, 629(sp)
                  sll          a3, t0, a2
                  add          s2, t0, a6
                  lhu          t6, 220(sp)
                  srai         s10, s0, 27
                  sltiu        s3, s2, 459
                  lb           a6, -226(sp)
                  sub          s5, s7, a3
                  sltu         t4, a1, s8
                  nop
                  auipc        a3, 690527
                  slt          a3, t4, s6
                  sb           a1, 1253(sp)
                  lui          t1, 649320
                  lbu          s4, 214(sp)
                  slli         gp, t2, 30
                  sb           a7, 1049(sp)
                  sra          s7, a7, s6
                  sltu         t2, t5, s4
                  srai         s0, s3, 25
                  xor          a6, a6, s1
                  xori         s2, t3, -385
                  lh           s8, 480(sp)
                  sb           a2, 471(sp)
                  slti         a1, a5, -1970
                  lbu          s7, 818(sp)
                  lb           gp, 585(sp)
                  slti         a0, t1, 226
                  xor          s9, a1, t3
                  sh           zero, 586(sp)
                  auipc        a5, 314847
                  auipc        t4, 674239
                  srai         a3, s9, 23
                  sltiu        s3, t1, -436
                  xori         gp, s7, -168
                  lbu          t2, 803(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+814 #start riscv_load_store_hazard_instr_stream_2
                  sh           a2, 20(sp)
                  lb           s7, 20(sp)
                  and          s9, t0, tp
                  lw           ra, 62(sp)
                  lhu          s7, 40(sp)
                  lbu          t1, 41(sp)
                  sb           t2, 41(sp)
                  lhu          a3, 10(sp)
                  or           s5, tp, s8
                  lh           tp, 10(sp)
                  xori         s11, zero, -104
                  sll          a0, s3, t1
                  lb           s1, 10(sp)
                  lbu          s11, 4(sp)
                  lbu          a6, -58(sp)
                  addi         a4, a6, 1448
                  lb           t2, -47(sp)
                  sb           a0, -37(sp)
                  lb           a2, -58(sp)
                  lh           a5, -58(sp)
                  lbu          s1, 29(sp)
                  lbu          a5, 29(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+698 #start riscv_load_store_hazard_instr_stream_1
                  add          s3, sp, s9
                  sb           s5, 16(sp)
                  and          a0, s8, s6
                  lhu          zero, 16(sp)
                  slti         t3, a2, 1480
                  sltu         t3, s4, a0
                  lbu          s2, 16(sp)
                  lh           t4, 16(sp)
                  lb           t1, -12(sp)
                  sb           a0, -12(sp)
                  lw           ra, -14(sp)
                  lb           a4, -14(sp)
                  sh           s0, -14(sp)
                  lh           a6, -14(sp)
                  lw           t3, -14(sp)
                  sh           s9, -14(sp)
                  sb           a3, -14(sp)
                  lb           t2, -14(sp)
                  sb           a0, -14(sp)
                  sh           t2, -14(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+149 #start riscv_load_store_hazard_instr_stream_0
                  srli         a4, s3, 25
                  lb           t3, 246(sp)
                  sh           t2, 161(sp)
                  lbu          t4, 86(sp)
                  or           s9, s2, zero
                  lbu          s11, 86(sp)
                  sb           a5, 86(sp)
                  lbu          s5, 86(sp)
                  sb           s5, 86(sp)
                  add          a1, a7, t1
                  sb           a7, 86(sp)
                  lbu          s5, 86(sp)
                  sb           gp, 86(sp)
                  lbu          s11, 86(sp)
                  xor          a6, t3, t4
                  lhu          a2, -137(sp)
                  lhu          t1, 97(sp)
                  lb           s8, -32(sp)
                  add          s5, s7, ra
                  lw           s10, 151(sp)
                  lw           a7, 151(sp)
                  lbu          t3, 151(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           gp, region_1+883 #start riscv_load_store_rand_instr_stream_1
                  nop
                  addi         a5, t5, -1135
                  lbu          a7, -41(gp)
                  lbu          s8, 230(gp)
                  lb           s8, 108(gp)
                  lbu          a5, -254(gp)
                  srai         t2, sp, 10
                  lbu          a4, 38(gp)
                  sll          s2, s11, s5
                  auipc        tp, 674400
                  lui          a7, 243943
                  lbu          ra, 127(gp)
                  add          a6, a4, zero
                  xori         s7, s10, 348
                  auipc        a5, 17284
                  sub          t4, sp, s3
                  sub          a4, a6, t3
                  xori         a2, t0, -1842
                  lb           s9, 54(gp)
                  lb           a2, 46(gp)
                  lb           t1, -43(gp)
                  or           s7, s9, a4
                  lhu          a6, 111(gp)
                  srai         a2, s3, 31
                  ori          t4, s2, 2028
                  sll          t1, s3, a3
                  addi         s2, s2, -646
                  sra          a2, a3, s2
                  lb           zero, -114(gp)
                  sh           zero, 169(gp)
                  lh           s2, -207(gp)
                  auipc        a6, 429960
                  lbu          sp, 164(gp) #end riscv_load_store_rand_instr_stream_1
                  la           s10, region_1+774 #start load_store_instr_stream_2
                  la           s4, region_1+918 #start load_store_instr_stream_1
                  la           s11, region_1+1363 #start load_store_instr_stream_0
                  lbu          t4, -1(s10)
                  lbu          s0, -119(s4)
                  lb           t1, 44(s10)
                  sb           s7, 90(s4)
                  lw           t1, -58(s10)
                  lb           s2, 500(s11)
                  lb           t4, 103(s4)
                  sb           a0, -37(s4)
                  lb           a3, 274(s11)
                  sb           s6, -885(s11)
                  lbu          t4, 55(s10)
                  lb           a2, -1275(s11)
                  lbu          s9, -356(s11)
                  sb           tp, -5(s10)
                  lhu          zero, -22(s10)
                  sw           s5, -82(s4)
                  lb           a1, -1104(s11)
                  lbu          a6, 25(s10) #end load_store_instr_stream_2
                  sh           t2, 489(s11)
                  lb           t3, -181(s4) #end load_store_instr_stream_1
                  sb           t1, -1044(s11) #end load_store_instr_stream_0
                  la           t3, region_1+1924 #start load_store_instr_stream_1
                  la           a3, region_1+580 #start load_store_instr_stream_0
                  sh           tp, 14(t3)
                  lhu          a4, -510(a3)
                  lbu          a0, 963(a3)
                  sh           t3, -10(t3)
                  sw           a2, -4(t3)
                  sh           s2, 1148(a3)
                  lh           s0, 2(t3)
                  lbu          t1, 9(t3)
                  lhu          s7, 640(a3)
                  sb           a5, -1(t3)
                  lb           t4, -37(a3)
                  lbu          s9, -5(t3)
                  sw           a2, -8(t3)
                  lbu          a4, 578(a3)
                  sh           s0, 22(a3)
                  lbu          s4, -7(t3)
                  lhu          s7, -8(t3) #end load_store_instr_stream_1
                  lb           ra, 237(a3) #end load_store_instr_stream_0
                  la           a2, region_0+151 #start riscv_load_store_rand_instr_stream_0
                  srai         s3, gp, 22
                  lb           zero, 346(a2)
                  sb           t5, 156(a2)
                  lw           a3, 57(a2)
                  auipc        s5, 232944
                  sh           t4, 801(a2)
                  slti         sp, a1, 11
                  sra          t6, s6, a7
                  lb           s3, 260(a2)
                  srl          a6, ra, a3
                  srai         a4, s9, 20
                  sb           t4, 264(a2)
                  sw           a1, 213(a2)
                  lbu          t2, 382(a2)
                  srl          s2, a1, a1
                  nop
                  sb           s6, -115(a2)
                  lbu          tp, 526(a2)
                  slt          s2, a3, sp
                  lh           s8, 391(a2)
                  srli         s7, a3, 4
                  slli         t4, a4, 31
                  andi         s9, t2, -226
                  lhu          a1, -7(a2)
                  lb           ra, 1022(a2)
                  lbu          t2, 1564(a2)
                  sltiu        s0, t2, 1876
                  slli         a1, a2, 21
                  sub          sp, a1, t1
                  sltu         a7, s10, a3
                  sra          s10, t5, t3
                  ori          s8, a4, -327
                  srl          a1, s7, s2
                  sltu         s7, a2, sp
                  sra          t4, a6, t6
                  sll          gp, t5, a6
                  lw           t1, 1809(a2)
                  sb           a7, 647(a2)
                  sb           a4, 1403(a2)
                  sltu         a3, s5, s5
                  sb           ra, 1339(a2)
                  and          s1, s7, a0
                  sb           a2, 1289(a2)
                  slt          t2, s5, t5
                  ori          s11, gp, -939
                  srli         s1, tp, 22
                  srai         tp, a2, 25
                  sb           s7, 206(a2) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+1122 #start load_store_instr_stream_0
                  la           s2, region_0+1137 #start load_store_instr_stream_1
                  sw           a2, 26(a3)
                  sb           a1, -812(s2)
                  sb           a6, 25(a3)
                  lb           s8, 12(a3)
                  lbu          a7, -887(s2)
                  lbu          a0, -31(a3)
                  sb           s4, -576(s2)
                  sb           s3, 9(a3)
                  sh           t3, -211(s2)
                  sh           tp, -42(a3)
                  lbu          gp, -114(s2)
                  sb           s6, -55(a3)
                  sb           s5, -699(s2) #end load_store_instr_stream_1
                  sh           s9, -28(a3)
                  lhu          t4, 22(a3) #end load_store_instr_stream_0
                  srai         a4, t4, 0
                  sub          gp, t6, s7
                  sra          t3, s8, tp
                  beq          s11, s7, 12f
                  beq          s2, s11, 22f
                  add          s10, t2, a5
                  sltiu        sp, t5, 1679
                  and          s1, s6, sp
                  sltiu        a3, tp, 1220
                  blt          s10, t0, 20f
                  andi         zero, t0, 853
                  bltu         s0, s4, 16f
12:               sltiu        a4, s6, 775
                  sltiu        s3, t2, -1716
                  beq          t3, t1, 34f
                  nop
16:               ori          s3, a4, 547
                  xor          a2, a0, a7
                  sub          ra, zero, a6
                  addi         a6, s4, 2022
                  or           sp, t0, s4
                  srl          a6, a7, s2
                  sltiu        a0, s3, 40
                  xori         a3, a0, 1403
                  xor          gp, a3, s8
                  bge          a0, ra, sub_1_j2 #branch to jump instr
                  addi         ra, a3, 552
                  slli         gp, t3, 31
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  slti         a2, t0, 1195
20:               bne          t5, tp, 21f
21:               bltu         s11, s5, 31f
22:               auipc        t4, 169709
                  xor          a1, s5, s2
                  sltu         a7, t5, t6
                  addi         a4, s6, 1233
                  or           t1, s5, a4
                  bge          s11, s4, 33f
                  ori          t2, s11, -1369
                  ori          s4, ra, -656
                  bne          s4, a6, 42f
31:               blt          a6, tp, 37f
                  bgeu         s11, a1, 49f
33:               bltu         ra, t6, 47f
34:               add          sp, t4, s7
                  bne          s11, a7, 41f
                  sll          t2, ra, s3
37:               srl          s10, s6, s6
                  auipc        s0, 413532
                  add          a0, zero, t3
                  blt          s5, s9, 51f
41:               andi         t1, tp, 605
42:               bne          a1, a7, 54f
                  sub          gp, sp, s0
                  nop
                  bltu         s9, t2, 46f
46:               srli         t3, sp, 14
47:               or           s4, s1, a2
                  add          a1, t6, ra
49:               sltu         sp, s1, a7
                  and          s9, s1, t0
51:               sltu         a1, a2, a4
                  sub          t1, s8, t5
                  bne          t4, t6, 67f
54:               addi         s9, a4, -1261
                  auipc        t2, 459054
                  ori          a0, a7, 1744
                  lui          t6, 886895
                  nop
                  bgeu         t0, s11, 76f
                  beq          gp, s2, 62f
                  slli         gp, t2, 17
62:               blt          s10, s11, 81f
                  srli         t4, s8, 26
                  srli         t2, t3, 2
                  add          tp, s1, s0
                  xori         s10, t3, -1579
67:               or           s5, t0, a7
                  addi         a4, s2, 1983
                  add          s1, t0, gp
                  srl          s0, t4, t6
                  srl          s7, a2, s7
                  slli         s1, zero, 17
                  nop
                  auipc        s8, 461505
                  blt          a3, t2, 83f
76:               sub          a0, a1, t1
                  sra          s1, s2, s2
                  or           a0, a5, s3
                  slti         a2, ra, -1703
                  sra          ra, t3, t0
81:               slli         gp, a2, 0
                  bgeu         s1, s9, 94f
83:               blt          s11, t0, 98f
                  ori          a0, s8, 478
                  sltiu        t2, a4, -7
                  bgeu         t6, t5, 93f
                  auipc        s4, 490476
                  add          s8, t1, s5
                  andi         s4, s4, -1254
                  and          s0, a4, sp
                  sra          s11, t6, t4
                  bne          t1, t4, 109f
93:               beq          a4, sp, 101f
94:               andi         s9, sp, -1469
                  ori          t2, a0, 1064
                  and          s7, s11, a3
                  srai         t4, t1, 1
98:               srai         sp, t0, 10
                  auipc        a7, 641940
                  or           s7, a6, s5
101:              beq          zero, t0, 114f
                  slti         s11, t2, 1316
                  bne          sp, a2, 111f
                  xori         a0, a7, 13
                  andi         tp, t2, -674
                  slli         a2, a7, 21
                  or           s8, s2, a7
                  xor          s3, t2, s4
109:              srl          s7, a0, ra
                  sltiu        s0, s2, 1290
111:              xor          ra, t0, t3
                  sra          s3, s0, s11
                  slli         s3, a0, 22
114:              nop
                  add          t3, s0, t5
                  srli         t2, a3, 2
                  addi         sp, s5, 858
                  slti         t4, t4, 1393
                  srai         a0, a3, 3
                  add          s11, t0, a0
                  bge          a2, a4, 123f
                  srl          s1, s9, gp
123:              bne          a6, a3, 132f
                  sll          ra, a1, ra
                  slti         s11, s4, -388
                  beq          a4, s3, 138f
                  lui          s8, 1032581
                  bne          gp, t1, 148f
                  andi         gp, s5, 648
                  xori         s9, t2, -1393
                  sub          gp, s4, s1
132:              sltiu        ra, t1, -1875
                  bltu         s9, ra, 151f
                  blt          s4, s7, 153f
                  bge          t1, a1, 142f
                  add          s3, zero, a7
                  srli         s11, s7, 21
138:              lui          a2, 116408
                  sra          t1, a3, s3
                  sra          a2, t6, s3
                  slli         a7, a5, 7
142:              sub          t1, zero, t4
                  xor          s8, a7, ra
                  sub          s8, gp, s2
                  srai         t6, a3, 22
                  xor          a6, t3, a5
                  sra          s0, sp, s2
148:              sra          gp, sp, zero
                  bltu         a7, a0, 158f
                  xori         s9, s4, -1006
151:              slt          t3, s1, a1
                  srl          a0, s9, a3
153:              bne          s6, a2, 168f
                  bgeu         a1, s2, 171f
                  or           ra, t6, s6
                  srl          s8, a1, a1
                  sra          t6, s1, s6
158:              auipc        a4, 419074
                  bge          t0, a7, 173f
                  sltu         s4, s6, s7
                  xor          a4, tp, s4
                  bgeu         a4, sp, 168f
                  srli         s10, a2, 30
                  ori          s8, a3, -1072
                  slt          gp, t3, s10
                  slli         ra, s8, 14
                  bgeu         a7, t5, 168f
168:              beq          s8, sp, 180f
                  bltu         sp, s1, 181f
                  andi         ra, s7, 206
171:              bne          s3, a6, 172f
172:              add          t6, t0, t0
173:              beq          s6, t1, 181f
                  slli         s10, a3, 14
                  srl          a6, t3, s6
                  bne          t3, sp, 187f
                  sll          a6, s4, s11
                  bgeu         s5, s4, 184f
                  add          s10, s10, a0
180:              ori          s7, s6, 1330
181:              bne          s1, a2, 198f
                  nop
                  andi         s11, ra, -866
184:              slti         s1, zero, 1655
                  bge          gp, a3, 187f
                  and          a6, s9, s5
187:              xor          s3, sp, a7
                  bge          s4, a3, 202f
                  and          s11, s4, t4
                  blt          tp, s3, 201f
                  or           a3, a1, gp
                  sll          s2, a0, t5
                  addi         s9, a4, 385
                  ori          s11, a2, 1147
                  and          tp, a6, s2
                  add          a1, a6, a0
                  sub          a2, t3, s6
198:              bltu         s6, s2, 207f
                  lui          s5, 765658
                  beq          a3, tp, 208f
201:              sub          s5, s1, t4
202:              lui          a6, 527967
                  sll          t2, ra, s7
                  lui          s7, 632827
                  srai         a7, s3, 14
                  nop
207:              slt          a0, tp, zero
208:              srli         a6, a6, 8
                  bgeu         s7, s0, 211f
                  addi         a7, s7, -1269
211:              sll          t3, s11, s5
                  bne          s0, a7, 225f
                  beq          s1, s2, 218f
                  beq          s11, t5, 222f
                  xori         t1, zero, -374
                  beq          s11, t6, 233f
                  or           a3, t5, s9
218:              ori          s2, s5, 1603
                  beq          s11, s1, 229f
                  bltu         s9, gp, 226f
                  srli         s11, t3, 7
222:              andi         tp, t3, -536
                  add          s2, s7, t1
                  sub          s11, s2, a0
225:              ori          s0, t6, 967
226:              xor          t2, a3, tp
                  and          s5, a5, t5
                  sltu         s11, gp, a3
229:              sltu         s5, a2, a3
                  srli         s7, t0, 14
                  and          t1, tp, s11
                  nop
233:              srli         t6, s7, 5
                  bne          t5, s0, 244f
                  addi         sp, a7, 1938
                  sltiu        a1, t4, -1446
                  sll          a6, s7, s8
                  xori         s10, a4, -989
                  slli         tp, a4, 1
                  slli         s1, s1, 1
                  ori          a2, a2, 1118
                  slti         s8, s3, -1475
                  slti         t3, s4, -135
244:              xori         tp, gp, -1563
                  add          ra, s0, t2
                  auipc        a7, 100254
                  slt          s11, s1, t5
                  auipc        a6, 491821
                  xori         t3, a6, -1791
                  srl          s9, a7, a3
                  and          s7, s8, s10
                  xori         s10, a1, -1269
                  and          a2, s4, s7
                  andi         t3, a3, 1109
                  blt          a1, s11, 261f
                  slti         a3, gp, -1646
                  sub          t3, s4, s6
                  andi         tp, t6, -320
                  ori          a6, s9, -382
                  bgeu         a3, a1, 274f
261:              slti         s3, t1, -656
                  bge          s11, tp, 270f
                  slt          t1, a7, a3
                  addi         ra, s9, 954
                  xori         t2, t4, 2023
                  or           a0, a0, s10
                  sltiu        s3, sp, -1132
                  andi         s5, a2, -1528
                  xori         s1, s11, 131
270:              bgeu         t1, s5, 277f
                  nop
                  add          s11, s7, s4
                  sltiu        zero, t5, 1881
274:              sltiu        t2, a1, -793
                  beq          t0, t5, 280f
                  and          a2, a3, a7
277:              bgeu         sp, t0, 279f
                  auipc        zero, 940638
279:              slli         a3, a2, 30
280:              srli         s7, t1, 3
                  or           tp, t3, t3
                  sub          a6, sp, s1
                  blt          s9, a6, 294f
                  and          s7, s2, s2
                  slti         zero, a3, -434
                  slti         s5, zero, 1768
                  andi         s2, s8, 213
                  srai         ra, s5, 18
                  srai         t4, sp, 12
                  auipc        s8, 278292
                  blt          a2, s2, 308f
                  bge          gp, t5, 304f
                  bgeu         tp, t1, 305f
294:              sll          t4, sp, t0
                  sltu         s0, t6, a4
                  and          s11, gp, s0
                  add          a6, a0, t2
                  sra          a5, s1, t0
                  addi         s5, a3, -2039
                  or           zero, a4, s9
                  srl          a0, sp, s9
                  srl          s10, a6, gp
                  or           s4, s6, s5
304:              slt          t4, t6, t6
305:              add          t2, a6, s9
                  xori         tp, t0, -117
                  sll          s3, sp, s6
308:              and          s3, a1, zero
                  addi         a3, a6, -1003
                  add          a5, tp, t0
                  lw           ra, 4(s6)
                  lui          s2, 923771
                  addi         s6, s6, 32
                  sltu         a2, s0, a4
                  or           tp, ra, a0
586:              addi x25, x1, 0
586:              jalr x25, x25, 0
sub_2:            addi         s6, s6, -16
                  lui          s1, 530858
                  sw           ra, 4(s6)
                  sra          a6, t4, s2
                  slli         tp, s8, 28
                  sltu         gp, gp, s8
                  la           sp, region_1+250 #start riscv_load_store_hazard_instr_stream_0
                  sb           s10, -135(sp)
                  sb           s3, -135(sp)
                  lb           a4, -30(sp)
                  lbu          s8, -30(sp)
                  or           a1, a5, sp
                  sb           s9, 231(sp)
                  lb           t2, 212(sp)
                  lb           s3, 77(sp)
                  lbu          ra, 77(sp)
                  lb           s4, -40(sp)
                  lbu          t4, -40(sp)
                  addi         gp, ra, 1675
                  sb           s9, -40(sp)
                  sltu         ra, a5, t2
                  srli         gp, a4, 11
                  sb           zero, -40(sp)
                  sb           s9, -40(sp)
                  sb           zero, -40(sp)
                  lb           s2, -40(sp)
                  sb           t3, -40(sp)
                  lh           s10, -40(sp)
                  andi         a0, s7, 1365
                  sh           t2, -84(sp)
                  sh           a1, -84(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+319 #start load_store_instr_stream_2
                  la           a2, region_1+1340 #start load_store_instr_stream_1
                  la           t1, region_1+1157 #start load_store_instr_stream_3
                  la           a6, region_1+1313 #start load_store_instr_stream_0
                  lbu          s0, -27(s3)
                  sh           s7, -15(t1)
                  lw           sp, -5(a6)
                  lhu          s5, 12(a2)
                  sb           t5, -3(a2)
                  lbu          t2, -144(t1)
                  lb           a3, 0(a6)
                  lbu          sp, 176(t1)
                  lbu          a4, 224(t1)
                  lbu          s7, 2(s3)
                  sb           s2, 188(t1)
                  lb           t4, -12(a2)
                  lbu          a5, -11(a2)
                  sb           t1, -15(s3)
                  lbu          t3, 4(a6)
                  sb           t6, -7(a6)
                  lbu          gp, 5(a2)
                  sh           a4, 217(t1)
                  lhu          zero, 9(a6)
                  lbu          s5, 178(t1)
                  lbu          t6, 53(s3)
                  lbu          s4, 6(a6)
                  lbu          s5, -13(s3)
                  sb           ra, 53(s3)
                  lb           t2, 24(s3)
                  lw           s8, -4(a2)
                  lbu          a0, 0(s3)
                  lbu          s8, -7(a2)
                  sb           s7, 10(a6)
                  lbu          a4, -59(s3)
                  lhu          s10, 10(a2) #end load_store_instr_stream_1
                  lbu          tp, -9(a6)
                  lh           sp, -37(s3) #end load_store_instr_stream_2
                  sb           s2, -106(t1) #end load_store_instr_stream_3
                  sb           a3, 10(a6)
                  lb           sp, 8(a6) #end load_store_instr_stream_0
                  la           sp, region_1+610 #start riscv_load_store_rand_instr_stream_4
                  srli         s9, t0, 22
                  lbu          tp, 303(sp)
                  nop
                  xori         t3, t1, -881
                  xori         a6, t1, -1114
                  auipc        s2, 761042
                  slt          s5, s11, t0
                  lb           ra, 980(sp)
                  sub          s7, s8, t1
                  and          t6, s5, a1
                  sltiu        t2, a3, -495
                  srli         ra, a5, 1
                  or           s2, s10, t2
                  sb           tp, 679(sp)
                  slti         a5, s10, 1166
                  lhu          s9, 338(sp)
                  andi         s8, a6, 1291
                  addi         s5, a5, 60
                  slli         a7, s5, 1
                  slt          gp, s4, s10
                  slli         s2, a5, 20
                  sh           a7, 1282(sp)
                  nop
                  slt          t1, t6, a0
                  srl          a7, a1, s2
                  sll          gp, s6, s1
                  sw           t3, 138(sp)
                  lh           s9, 332(sp)
                  sll          t3, s5, a5
                  srli         a7, s11, 28
                  slt          a4, s8, s6
                  slli         t3, s1, 9
                  lb           t3, 261(sp)
                  lb           t3, 1155(sp)
                  andi         s9, t6, 1673
                  add          t3, s6, s4
                  sub          s2, s0, a6
                  auipc        a1, 415999
                  slli         s5, s1, 4
                  lh           a2, -242(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_1+463 #start riscv_load_store_rand_instr_stream_2
                  slti         sp, a4, -1793
                  lhu          s4, 1(a7)
                  lbu          s0, -4(a7)
                  lbu          a1, 3(a7)
                  sb           gp, 14(a7)
                  sb           s9, 9(a7)
                  xori         a5, s1, 1531
                  sh           t5, -3(a7)
                  lh           t2, -13(a7)
                  sb           s3, -2(a7)
                  lui          a4, 443318
                  or           a4, s8, t6
                  lbu          s4, -14(a7)
                  slti         s3, s2, 1330
                  lb           a4, -8(a7)
                  ori          s8, s8, -1666
                  sltiu        sp, t6, -1547
                  auipc        tp, 163278
                  lb           t3, 14(a7)
                  sll          t4, s9, sp
                  lb           tp, -13(a7)
                  nop
                  sw           s6, -15(a7)
                  sb           a6, 8(a7)
                  lbu          ra, 1(a7)
                  sb           a1, 16(a7)
                  lbu          a6, -10(a7)
                  xor          s0, t5, a0
                  lbu          s7, -1(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1753 #start riscv_load_store_hazard_instr_stream_3
                  sh           tp, 9(sp)
                  sb           t5, -14(sp)
                  andi         s8, a7, -1366
                  lb           s0, -14(sp)
                  lb           s3, -6(sp)
                  lbu          a4, -6(sp)
                  lb           t4, -6(sp)
                  sb           a1, -6(sp)
                  sb           t4, -6(sp)
                  lh           a6, -15(sp)
                  lbu          t4, -15(sp)
                  addi         a3, s3, 1211
                  lbu          a6, -15(sp)
                  srli         gp, a3, 17
                  sh           s0, 5(sp)
                  lbu          a4, 14(sp)
                  lb           a3, 11(sp)
                  lhu          a5, 11(sp)
                  lbu          s5, 16(sp)
                  lb           gp, 16(sp)
                  lw           t2, -9(sp)
                  lbu          s11, -4(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1398 #start riscv_load_store_hazard_instr_stream_4
                  or           t1, s2, s4
                  sh           s2, -1300(sp)
                  srli         t3, s1, 3
                  sh           s8, -1300(sp)
                  slli         s11, a6, 28
                  srli         a0, sp, 2
                  lbu          s4, -1300(sp)
                  sb           tp, -499(sp)
                  slt          a5, t4, s7
                  lb           a4, -25(sp)
                  lb           t1, -25(sp)
                  lbu          s2, 170(sp)
                  lbu          a6, -458(sp)
                  sh           t3, -458(sp)
                  lb           a7, -881(sp)
                  add          s2, a4, a1
                  lbu          s10, -881(sp)
                  sw           s9, -310(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           s10, region_1+351 #start load_store_instr_stream_0
                  sb           a5, 235(s10)
                  la           a7, region_1+773 #start load_store_instr_stream_1
                  sh           a2, 63(s10)
                  sb           a5, 232(s10)
                  sh           a3, -3(a7)
                  sb           t4, -10(a7)
                  lb           ra, -10(a7)
                  lhu          t2, -231(s10)
                  lb           t4, -4(a7)
                  lh           a3, 15(a7)
                  sb           s1, -8(a7)
                  lw           t1, -171(s10)
                  lh           a0, 3(a7)
                  lb           s9, 68(s10)
                  sh           a3, 3(a7)
                  lbu          a0, -105(s10)
                  sh           s10, -85(s10)
                  sh           s11, -13(a7)
                  lb           s11, -8(a7) #end load_store_instr_stream_1
                  lhu          t4, -149(s10)
                  lhu          s9, 113(s10) #end load_store_instr_stream_0
                  la           s2, region_1+322 #start riscv_load_store_rand_instr_stream_1
                  sb           s5, 139(s2)
                  xori         s7, s2, 1668
                  lb           sp, -109(s2)
                  nop
                  sb           a6, -191(s2)
                  lbu          t4, -157(s2)
                  lbu          s10, -230(s2)
                  slli         a6, s1, 31
                  sb           t4, 243(s2)
                  sra          t2, a4, a4
                  sltu         s4, t5, t5
                  sw           s5, -154(s2)
                  lb           gp, -213(s2)
                  sw           s2, 238(s2)
                  sltu         s3, t2, gp
                  lbu          ra, 61(s2)
                  sb           a4, 82(s2)
                  sb           s8, 15(s2)
                  sra          t3, s4, t2
                  and          a5, a0, s4
                  slti         t4, s11, -1805
                  sb           zero, 59(s2)
                  lh           zero, 84(s2)
                  srl          a0, tp, s5
                  lbu          s11, -125(s2)
                  lhu          a5, 66(s2)
                  lbu          zero, 113(s2)
                  lui          t3, 934293
                  lbu          s5, 102(s2)
                  sb           t1, 240(s2)
                  xori         s1, s7, 1057
                  lui          tp, 297888
                  lbu          tp, -21(s2)
                  lbu          t1, -167(s2)
                  srli         s10, t6, 11
                  andi         s1, a4, 1556
                  sb           t2, -10(s2) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+216 #start riscv_load_store_rand_instr_stream_3
                  ori          s7, s10, -169
                  andi         t2, s6, -1081
                  srai         s3, t3, 27
                  sltu         s9, a7, s6
                  lb           s1, 1055(gp)
                  lb           s10, 609(gp)
                  sltu         a4, t1, s9
                  lui          a2, 489528
                  and          a7, a3, zero
                  sb           sp, 169(gp)
                  sb           a5, 1198(gp)
                  srli         s2, s0, 0
                  sb           s3, 1474(gp)
                  lw           s4, 1284(gp)
                  sb           t1, 139(gp)
                  andi         s3, t1, 338
                  sb           s2, -33(gp)
                  ori          tp, a0, -665
                  and          zero, sp, a4
                  lbu          s5, 1743(gp)
                  sh           s5, 1538(gp)
                  slti         t1, s10, 241
                  slli         t2, s10, 17
                  xori         a1, a5, 1268
                  slli         t2, a5, 16
                  addi         sp, t2, -1167
                  lbu          s1, 827(gp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+630 #start riscv_load_store_hazard_instr_stream_2
                  sb           s0, -40(sp)
                  sh           tp, -40(sp)
                  lhu          a3, -40(sp)
                  lhu          t3, -40(sp)
                  sb           a1, 32(sp)
                  sb           s2, -109(sp)
                  lbu          zero, -109(sp)
                  sb           s7, -109(sp)
                  xori         s8, s11, -471
                  lb           s3, -4(sp)
                  lbu          s3, -4(sp)
                  lbu          t1, 254(sp)
                  lhu          gp, -8(sp)
                  sw           s9, -26(sp)
                  lh           t4, -26(sp)
                  sb           s1, 56(sp)
                  sh           a2, 56(sp)
                  sb           s7, 56(sp)
                  sh           s10, 56(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a6, region_0+803 #start riscv_load_store_rand_instr_stream_0
                  lbu          s0, -4(a6)
                  lbu          s8, -8(a6)
                  lhu          a5, -1(a6)
                  sb           a3, 14(a6)
                  lb           s4, -14(a6)
                  lbu          gp, 15(a6)
                  andi         a3, t2, -1938
                  auipc        s1, 426917
                  lhu          t6, -1(a6)
                  lbu          s8, -10(a6)
                  slli         s11, s6, 31
                  sltiu        s3, t6, 1864
                  lb           a0, 4(a6)
                  slli         s8, t6, 24
                  sltu         a4, a0, s4
                  xor          s1, t1, s10
                  ori          a7, a5, 896
                  sltu         s0, a7, tp
                  ori          a4, s0, 1752
                  auipc        s2, 900944
                  lb           s11, 8(a6)
                  ori          tp, sp, -2043
                  nop
                  slti         t2, a6, -1930
                  lui          sp, 693765
                  lb           s7, -15(a6)
                  addi         s1, s5, -894
                  lb           a0, 3(a6) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_0+1480 #start load_store_instr_stream_0
                  la           s9, region_0+199 #start load_store_instr_stream_3
                  lh           s7, -50(t6)
                  lb           t3, 674(s9)
                  lb           tp, 559(s9)
                  la           a7, region_0+588 #start load_store_instr_stream_2
                  sb           s9, 228(s9)
                  sw           a4, 64(a7)
                  la           a3, region_0+264 #start load_store_instr_stream_1
                  sh           s10, -58(t6)
                  sb           s11, -45(a3)
                  sb           tp, -33(t6)
                  sh           t2, -82(a7)
                  lb           zero, 1392(s9)
                  sb           t4, 11(a3)
                  lhu          zero, 10(a7)
                  lb           a6, 229(a3)
                  sb           t5, 61(t6)
                  lh           a5, -138(a3)
                  sb           t4, 134(a7)
                  lhu          tp, -38(t6)
                  sb           ra, 962(s9)
                  lw           a5, 104(a3) #end load_store_instr_stream_1
                  lb           zero, 231(a7) #end load_store_instr_stream_2
                  sh           ra, -36(t6)
                  lw           a1, 1685(s9) #end load_store_instr_stream_3
                  sb           a0, 33(t6) #end load_store_instr_stream_0
                  sltiu        s4, a0, 1236
                  or           a2, t5, a3
                  nop
                  blt          t3, s5, 19f
                  bge          t6, t4, 14f
                  sub          a3, s3, t3
                  slt          t2, t3, s4
                  sra          a4, t5, a6
                  or           tp, s3, s4
                  srl          s8, tp, s9
                  lui          s3, 614324
                  add          t4, t6, gp
                  bltu         s2, a4, 20f
                  sltiu        t3, s2, -1158
14:               sra          t1, s2, a4
                  andi         a5, a1, 668
                  addi         s4, s10, 91
                  lui          gp, 463696
                  blt          s1, s7, 25f
19:               srli         s3, a4, 11
20:               sra          a5, zero, t0
                  sra          a2, s8, s3
                  bne          tp, zero, 24f
                  srai         s1, s5, 17
24:               add          gp, a6, s5
25:               beq          t4, t1, 40f
                  add          s3, s2, s3
                  lui          s1, 577567
                  srli         s3, t2, 16
                  srai         t3, a1, 18
                  sltiu        t6, s3, -975
                  ori          s7, a7, 489
                  slt          t6, gp, s7
                  sra          a2, s7, s7
                  auipc        s8, 906420
                  xori         a7, t5, 1106
                  bne          sp, s0, 53f
                  xori         s10, a2, 34
                  add          a2, a1, s1
                  sra          a1, s2, t4
40:               sll          t3, s0, t4
                  srl          s4, s1, tp
                  srl          ra, t2, a6
                  and          ra, a2, a3
                  sltu         a0, a0, a0
                  slti         s5, a7, 70
                  sra          gp, s10, sp
                  ori          a7, ra, 1070
                  andi         sp, s4, -1900
                  sra          s8, ra, t4
                  xori         s11, t6, 1850
                  xori         a1, ra, 1156
                  bne          sp, t3, 58f
53:               and          gp, t3, a4
                  slti         s7, a1, -782
                  bge          s9, t3, 64f
                  slti         s9, a0, 149
                  slti         a4, gp, -1509
58:               sltiu        t3, s4, 356
                  blt          sp, gp, 62f
                  sub          s7, t3, sp
                  srai         t6, zero, 21
62:               sll          gp, a5, s2
                  auipc        ra, 822050
64:               and          a6, s2, a4
                  andi         sp, s9, 779
                  bne          a0, a1, 84f
                  bltu         s1, ra, 72f
                  bgeu         a5, t6, 80f
                  andi         s9, s4, -1516
                  bgeu         s0, a2, 86f
                  beq          s9, s4, 77f
72:               blt          s7, s4, 79f
                  and          t1, a6, a1
                  slt          t2, tp, ra
                  blt          a5, t3, 78f
                  xori         s1, a5, -682
77:               sub          s2, a4, t3
78:               srl          t1, t1, a2
79:               andi         s1, s5, 801
80:               bge          a2, a4, 98f
                  auipc        t2, 258682
                  bgeu         s6, s8, 89f
                  bgeu         a1, t1, 97f
84:               slti         s11, t1, -1597
                  slt          s8, sp, t4
86:               beq          t5, s9, 89f
                  bne          t2, t3, 91f
                  srai         s1, a5, 30
89:               lui          ra, 999249
                  andi         s7, t3, 1380
91:               srai         t4, a7, 30
                  lui          s4, 965785
                  bge          a3, a5, 102f
                  addi         s7, a7, -1993
                  sltu         s5, s4, tp
                  srai         t3, a4, 13
97:               sub          s11, gp, a0
98:               sltu         a0, s3, a7
                  bgeu         ra, zero, 100f
100:              bltu         sp, s8, 118f
                  srli         s10, a4, 16
102:              andi         a6, gp, -324
                  sra          ra, s9, s10
                  andi         s8, a1, 109
                  addi         ra, s6, -490
                  sll          a4, t2, gp
                  or           a1, s1, s11
                  or           s9, a0, tp
                  slt          a1, s2, ra
                  ori          s5, ra, -188
                  slti         zero, t1, -141
                  bltu         a0, tp, 113f
113:              sll          a6, t2, zero
                  auipc        s10, 261282
                  xori         t4, a3, 1003
                  lui          t1, 389361
                  beq          a3, a0, 132f
118:              nop
                  slt          s9, a1, t4
                  bgeu         s6, t0, 133f
                  bge          s3, gp, 141f
                  slti         s1, s3, 628
                  andi         a5, s10, 1466
                  sll          t1, t5, s8
                  xori         sp, tp, 1479
                  beq          s7, s4, 127f
127:              srai         s11, ra, 13
                  xor          a5, s9, ra
                  sltiu        s7, a6, 1980
                  srl          s7, s1, s10
                  add          a1, s6, s10
132:              or           s2, a2, a7
133:              slli         gp, t2, 10
                  blt          s9, s6, 140f
                  bne          a0, t2, 142f
                  srai         s1, a3, 23
                  addi         a0, a2, 774
                  la           s5, region_1+667 #start load_store_instr_stream_0
                  la           s11, region_1+1698 #start load_store_instr_stream_2
                  la           s8, region_1+1476 #start load_store_instr_stream_1
                  lbu          a3, -92(s11)
                  lh           gp, 187(s5)
                  lbu          a7, -238(s5)
                  sb           s1, -35(s8)
                  lbu          a2, -253(s5)
                  sb           s10, -15(s8)
                  lbu          t1, -46(s5)
                  sb           s3, 93(s5)
                  lw           a4, 54(s11)
                  sb           s5, 27(s8)
                  lhu          s2, 100(s11)
                  sb           t5, -6(s8)
                  lbu          s3, -144(s5)
                  sb           t4, 8(s11)
                  lbu          t4, -132(s5)
                  lb           s2, 100(s5)
                  lh           s7, 4(s8)
                  lb           sp, 34(s5)
                  lbu          s9, -13(s8) #end load_store_instr_stream_1
                  lbu          a3, -195(s11) #end load_store_instr_stream_2
                  lbu          ra, -192(s5) #end load_store_instr_stream_0
                  slt          s4, ra, a7
                  nop
140:              bge          t0, t0, 150f
141:              sltiu        a3, s6, -691
142:              bltu         s3, s7, 149f
                  bltu         a5, s5, 146f
                  la           t3, region_1+325 #start load_store_instr_stream_3
                  la           a0, region_1+444 #start load_store_instr_stream_0
                  la           s0, region_1+514 #start load_store_instr_stream_2
                  lbu          t6, -11(t3)
                  la           t4, region_1+275 #start load_store_instr_stream_1
                  lbu          s2, 14(a0)
                  sw           s10, 15(t3)
                  lb           tp, -45(t4)
                  lbu          s4, 9(s0)
                  sh           s2, 13(t3)
                  sb           a2, -34(t4)
                  lb           t6, 1(t3)
                  lb           t6, -7(s0)
                  lbu          gp, 5(s0)
                  sb           s0, 10(a0)
                  lhu          zero, 14(a0)
                  sb           s10, 13(s0)
                  sb           t4, 13(t4)
                  lb           s7, -7(s0)
                  lhu          s8, 5(t3)
                  lbu          s8, 14(a0)
                  lb           ra, 35(t4)
                  sb           tp, 8(t3)
                  sb           a5, -4(s0)
                  lb           s4, -15(t3) #end load_store_instr_stream_3
                  lhu          s5, 12(s0)
                  lbu          tp, -16(a0)
                  lb           tp, -58(t4)
                  lhu          a4, 8(a0)
                  lb           t2, 14(s0) #end load_store_instr_stream_2
                  lh           tp, -33(t4) #end load_store_instr_stream_1
                  sw           a2, -4(a0)
                  lb           s5, -15(a0) #end load_store_instr_stream_0
                  xori         s3, t3, 280
                  add          t4, s7, s9
146:              sll          a3, s8, s11
                  sltu         a2, s0, t3
                  bge          s0, s3, 149f
149:              ori          t3, t3, 1165
150:              sll          s2, s9, t3
                  xor          s8, s8, zero
                  xor          s0, s7, s5
                  srli         s5, s11, 26
                  add          a2, t6, a7
                  sltu         s2, s3, s11
                  and          t4, a3, a1
                  srli         a2, a1, 9
                  ori          a0, tp, 1832
                  xor          a0, tp, a5
                  slti         s0, tp, 1485
                  nop
                  lui          sp, 239710
                  add          tp, s7, a7
                  bne          s1, t3, 177f
                  add          a7, t6, a1
                  sll          s1, t1, a1
                  sll          t4, t2, t6
                  bge          a1, s0, 188f
                  srli         a7, a3, 17
                  lui          tp, 32650
                  blt          a5, t4, 172f
172:              srli         s1, s1, 27
                  srai         s8, tp, 2
                  add          s5, a7, a4
                  sltiu        gp, a6, 1806
                  ori          s3, s3, -2007
177:              srli         t6, a6, 22
                  sra          s9, s11, zero
                  ori          s1, s8, 1250
                  slt          t4, tp, t6
                  sltu         t3, t1, t4
                  blt          s11, zero, 185f
                  bltu         t0, t4, 195f
                  slt          t4, t2, t1
185:              sll          s11, t3, t4
                  srai         zero, t1, 30
                  sub          a4, s2, a5
188:              beq          s0, a6, 206f
                  slli         t2, t3, 15
                  beq          a6, t4, 205f
                  slt          a0, s5, zero
                  add          s0, t4, a5
                  sltu         s3, t1, gp
                  sra          a5, s1, a4
195:              addi         s2, zero, -1902
                  nop
                  sltu         t4, a4, t5
                  bge          s3, s3, 199f
199:              srli         s2, s4, 21
                  slli         a4, s2, 1
                  bltu         t1, a6, 208f
                  sra          a3, a6, s5
                  slli         a0, t1, 1
                  andi         s8, s5, -1358
205:              sub          s2, s9, a6
206:              sltiu        s7, a6, 1182
                  sltiu        t2, s0, 15
208:              beq          a0, t5, 226f
                  lui          t6, 208467
                  nop
                  sub          a4, t4, t0
                  la           sp, region_1+1873 #start riscv_load_store_hazard_instr_stream_1
                  sh           a3, -13(sp)
                  sb           t4, -13(sp)
                  sb           zero, -2(sp)
                  sb           s4, -16(sp)
                  lb           s2, -8(sp)
                  lbu          a5, -8(sp)
                  sw           t2, -5(sp)
                  lbu          a6, -5(sp)
                  lbu          zero, -11(sp)
                  lbu          s4, -11(sp)
                  xori         s3, s5, 805
                  lb           s0, -11(sp) #end riscv_load_store_hazard_instr_stream_1
                  addi         t2, a4, -1772
                  srli         a3, s5, 5
                  bltu         t1, a5, 229f
                  xor          s8, a6, s1
                  slti         s2, t3, 993
                  srl          s8, t3, a0
                  sltu         a3, t1, t0
                  lui          s4, 693936
                  sll          sp, a0, s1
                  bltu         s9, s3, 226f
                  xori         s8, a4, -673
                  slti         t4, s2, 1551
                  andi         s8, gp, -1880
                  and          zero, s9, sp
226:              blt          zero, a4, 242f
                  sll          s5, zero, t0
                  blt          s1, a0, 237f
229:              bltu         s7, s10, 235f
                  slt          s7, s11, s6
                  lui          sp, 667398
                  sll          gp, a4, s6
                  or           a5, s5, gp
                  bge          a7, sp, 242f
235:              xori         t1, t0, -522
                  and          a7, sp, t2
237:              sltu         s8, t3, a0
                  srli         gp, t0, 2
                  and          s1, a1, a1
                  srli         t1, ra, 22
                  sra          s3, a3, a7
242:              ori          a3, a6, 2038
                  andi         gp, t4, 1743
                  srl          s11, s1, s3
                  nop
                  ori          sp, t6, 202
                  and          s7, t0, a2
                  sub          s9, s0, zero
                  or           s2, s3, s10
                  sltu         tp, tp, t6
                  lui          sp, 317838
                  slt          a6, s5, s2
                  slli         s10, s6, 15
                  add          s8, a6, s2
                  bgeu         a0, tp, 259f
                  xor          a1, a3, a0
                  lui          a7, 375004
                  srai         t2, s3, 21
259:              slli         s4, t6, 20
                  xor          s4, t3, s2
                  slli         a1, t3, 12
                  add          a2, a1, zero
                  sll          s3, s5, t2
                  srai         s3, s11, 7
                  lui          a5, 576977
                  beq          a1, t4, 282f
                  nop
                  or           a3, a5, t2
                  bgeu         s7, a4, 283f
                  srai         s5, s8, 29
                  auipc        s1, 912259
                  srl          sp, t6, t5
                  bgeu         a3, s5, 276f
                  slli         s11, a2, 9
                  auipc        s9, 668689
276:              ori          tp, t2, -1583
                  bge          s0, s6, 279f
                  sub          s11, a6, t2
279:              bgeu         s4, a7, 288f
                  andi         t6, a6, -1335
                  beq          s4, a7, 299f
282:              srai         ra, t1, 14
283:              andi         zero, zero, -218
                  or           a0, t3, s1
                  nop
                  sltu         s4, t1, s0
                  andi         sp, s4, -83
288:              or           s11, t5, t4
                  and          s5, t2, ra
                  sll          sp, tp, a4
                  sltu         s5, s3, s4
                  bltu         tp, t2, 309f
                  bne          s9, a1, 309f
                  bltu         s1, a4, 295f
295:              xor          a7, s7, zero
                  auipc        s2, 852052
                  slti         a1, s7, -1962
                  add          s8, s7, a2
299:              sra          a1, s7, s11
                  lui          a0, 524489
                  lui          s10, 347316
                  bne          sp, t1, 306f
                  or           s3, s7, a3
                  lui          t4, 886269
                  slti         gp, a2, -1634
306:              bne          s1, t0, 320f
                  andi         gp, a1, 555
                  xor          t2, s4, a3
309:              sra          s10, a5, tp
                  srai         a0, t5, 14
                  xor          t2, s2, zero
                  beq          a7, ra, 321f
                  and          a1, t0, t5
                  sll          sp, t6, gp
                  ori          a3, tp, -1362
                  xor          a0, s2, zero
                  nop
                  bge          t1, t0, 324f
                  addi         a7, s9, -1854
320:              sltu         a3, ra, s6
321:              auipc        a5, 940260
                  auipc        s11, 743310
                  slli         sp, s1, 12
324:              and          s3, t0, s1
                  beq          s4, sp, 327f
                  xor          t3, tp, a5
327:              srli         a4, tp, 9
                  addi         t3, s7, -1073
                  addi         a2, t4, -662
                  and          s0, s10, t1
                  beq          s10, s2, 347f
                  slti         s10, s2, -760
                  blt          a3, a2, 336f
                  nop
                  auipc        a2, 599300
336:              srli         a3, a6, 16
                  slli         t6, gp, 5
                  blt          s0, s10, 339f
339:              auipc        a5, 857616
                  bgeu         s7, a7, 353f
                  xori         zero, t4, 450
                  ori          a7, gp, 368
                  bltu         t0, zero, 358f
                  sll          s8, s5, a7
                  auipc        s5, 163604
                  addi         a7, a3, -137
347:              sub          s0, s4, s4
                  ori          s2, ra, -1905
                  srl          a5, t6, s3
                  blt          s2, a0, 367f
                  srl          s4, s9, t6
                  bne          s6, t6, 370f
353:              lui          t3, 989011
                  sltu         ra, a7, t2
                  beq          t1, t0, 358f
                  and          a1, a4, s6
                  sll          ra, a4, a2
358:              sub          t2, s0, a4
                  sltu         a0, t6, a1
                  bltu         s6, t2, 370f
                  or           ra, t1, gp
                  ori          s2, zero, -389
                  sub          a7, a6, sp
                  sra          t2, t2, s10
                  sltu         a2, sp, t2
                  blt          a2, t0, 386f
367:              or           a0, t5, t5
                  sra          tp, ra, s7
                  beq          t5, t1, 374f
370:              add          t3, s4, s9
                  srli         t2, zero, 14
                  slti         a2, gp, 1122
                  and          s1, sp, t0
374:              andi         s9, ra, -312
                  bltu         zero, a2, 383f
                  sra          tp, t4, a0
                  or           s7, s7, s2
                  sra          s2, a1, t5
                  lui          a3, 951487
                  and          ra, t1, a2
                  slt          s0, t6, t6
                  bne          s5, zero, 389f
383:              sra          t2, t4, a5
                  slt          tp, tp, a7
                  bltu         sp, s7, 392f
386:              bgeu         s6, gp, 404f
                  nop
                  sra          a7, sp, s8
389:              slti         a5, tp, -2028
                  add          t2, sp, sp
                  or           a0, s3, s7
392:              blt          t6, s8, 395f
                  slti         t2, t4, -780
                  beq          s2, ra, 395f
395:              bltu         a0, s3, 413f
                  add          a1, a1, s8
                  slti         a0, t5, 1130
                  auipc        a0, 53059
                  slti         a3, a2, 440
                  blt          a6, tp, 407f
                  lui          ra, 581294
                  sra          t4, sp, a7
                  slli         a0, t5, 27
404:              bge          a5, s11, 413f
                  addi         s9, gp, 57
                  sub          t6, a5, a6
407:              sltu         s1, s7, t0
                  slti         t4, s11, 591
                  slli         s4, a0, 30
                  slli         s3, t5, 15
                  andi         s5, s7, 74
                  xor          s5, t5, s10
413:              bge          a5, tp, 428f
                  addi         t1, zero, 1991
                  xor          s5, s1, zero
                  bge          s10, s3, 428f
                  sll          a5, s8, s7
                  sltu         gp, t6, a5
                  andi         a0, s4, -156
                  lui          a2, 35832
                  beq          tp, s9, 427f
                  or           t6, s8, s11
                  srli         a5, a5, 23
                  add          sp, a1, s3
                  bne          s7, s0, 445f
                  slti         a1, s6, 1127
427:              beq          s5, tp, 442f
428:              nop
                  blt          a4, a6, 447f
                  sra          ra, a0, s4
                  bltu         zero, a7, 435f
                  auipc        s5, 868571
                  srl          t4, s9, t6
                  xori         a5, a2, 734
435:              bgeu         zero, s0, 441f
                  bltu         ra, gp, 438f
                  bge          s6, a0, 449f
438:              sltu         zero, t0, a6
                  srl          t6, s6, t0
                  slli         a1, t1, 21
441:              addi         t2, s0, -64
442:              auipc        a5, 866505
                  slti         s8, s6, -154
                  slli         t2, t2, 2
445:              add          a1, s11, t1
                  bgeu         s5, t0, 463f
447:              sub          gp, sp, t0
                  sltiu        s11, s10, 925
449:              bne          s4, s9, 465f
                  sll          a2, s3, a1
                  addi         a3, zero, 109
                  nop
                  ori          t6, a3, -2025
                  sltiu        zero, s2, -553
                  or           a4, tp, a2
                  bltu         s5, s7, 457f
457:              addi         ra, s6, 1419
                  srl          s7, ra, s10
                  lui          gp, 104557
                  slti         s1, s10, -441
                  add          t3, s2, a2
                  and          zero, a0, a7
463:              sltiu        t6, s6, -1616
                  sltu         a2, t2, s4
465:              bge          s7, t1, 483f
                  ori          a0, sp, 1440
                  bne          s8, t4, 474f
                  xori         a4, gp, 1036
                  nop
                  bne          t1, t0, 473f
                  sra          t4, s1, sp
                  sltiu        s1, a1, 288
473:              lui          s3, 164
474:              xori         tp, a6, 871
                  nop
                  xor          s10, s5, s9
                  sll          s4, a2, s11
                  beq          t3, t5, 479f
479:              slt          a2, sp, a7
                  slt          a4, a6, t3
                  xor          a3, s5, t3
                  srli         a2, s4, 24
483:              bge          s6, t1, 496f
                  sll          a5, zero, s11
                  ori          a0, a5, -1012
                  sra          s4, s1, t5
                  sll          s5, s11, t3
                  slt          a7, t3, tp
                  auipc        s11, 147501
                  sltiu        t1, a5, 662
                  addi         sp, s10, 937
                  blt          s9, t6, 498f
                  addi         t1, s8, 458
                  bgeu         a2, a2, 504f
                  slt          t3, t4, gp
496:              slt          s2, zero, s5
                  srli         a2, a2, 20
498:              slli         a7, a2, 18
                  add          ra, a2, a0
                  xor          s3, t5, a2
                  srli         t6, ra, 11
                  lui          s3, 472066
                  xor          s10, s9, s11
504:              beq          s0, t6, 511f
                  beq          s10, gp, 508f
                  nop
                  slt          a1, s7, t5
508:              or           s3, sp, s8
                  bge          s11, a5, 516f
                  or           gp, a6, sp
511:              blt          t6, a5, 516f
                  add          a0, ra, zero
                  slt          gp, t3, t1
                  srl          a3, s5, a3
                  and          s8, s6, t2
516:              sra          sp, s10, tp
                  srli         s3, tp, 11
                  srli         s11, ra, 13
                  andi         t2, t2, 235
                  ori          tp, s8, 812
                  beq          s11, t5, 529f
                  bgeu         s4, s10, 540f
                  sltu         a6, s0, t6
                  and          s4, s9, s9
                  bgeu         t3, t5, 534f
                  blt          s2, gp, 541f
                  bgeu         t0, s1, 528f
528:              bgeu         t3, a4, 537f
529:              sltu         s3, s0, t0
                  bgeu         t0, a4, 545f
                  xor          zero, a4, t0
                  xor          a3, t0, a2
                  slli         s1, s4, 30
534:              slli         s11, ra, 1
                  auipc        s5, 202597
                  xor          s4, s7, s7
537:              lui          sp, 499340
                  sltu         t1, s0, a4
                  or           a7, t0, a6
540:              xori         s5, s1, -702
541:              add          a5, s3, t0
                  bgeu         s3, s2, 545f
                  srl          a6, a2, t2
                  sltiu        s9, sp, 1954
545:              slt          a1, t3, t5
                  sub          s1, s4, s4
                  sll          tp, zero, s0
                  slli         a4, a0, 4
                  lw           ra, 4(s6)
                  or           s0, a1, zero
                  addi         s6, s6, 16
                  addi         gp, s7, 605
971:              addi x10, x1, 0
971:              jalr x10, x10, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x30, x22, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x31, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x31, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x31, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x31, x27, ecall_handler
                  li x27, 0x1
                  beq x31, x27, instr_fault_handler
                  li x27, 0x5
                  beq x31, x27, load_fault_handler
                  li x27, 0x7
                  beq x31, x27, store_fault_handler
                  li x27, 0xc
                  beq x31, x27, pt_fault_handler
                  li x27, 0xd
                  beq x31, x27, pt_fault_handler
                  li x27, 0xf
                  beq x31, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x22, x30, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
