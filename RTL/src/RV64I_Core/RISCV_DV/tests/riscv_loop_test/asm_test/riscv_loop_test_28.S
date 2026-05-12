.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x3
                  li x2, 0xf
                  li x3, 0xf4f98709
                  li x4, 0x16eebf25
                  li x5, 0xd
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xf3960d10
                  li x9, 0x9
                  li x10, 0x0
                  li x11, 0x49a65bb9
                  li x12, 0x80000000
                  li x13, 0xf389b071
                  li x14, 0x33956c54
                  li x16, 0x80000000
                  li x17, 0xf4bad27a
                  li x18, 0xf3a8652d
                  li x19, 0x5
                  li x20, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xd5b5f012
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xe4930cde
                  li x31, 0x49d3cd5f
                  la x15, user_stack_end
main:             addi         s6, zero, 10 #init loop 1 counter
                  addi         a7, zero, -11 #init loop 1 limit
                  add          s2, a2, t0
main_8_1_t:       slt          t6, s0, a3
                  auipc        t4, 898807
                  sub          t6, s1, a7
                  addi         s6, s6, -1 #update loop 1 counter
                  sltiu        sp, s4, 667
                  sltu         sp, s8, t4
                  add          gp, sp, s2
                  sltu         s7, a6, sp
                  addi         a3, zero, 0 #init loop 0 counter
                  addi         s1, zero, 2 #init loop 0 limit
main_8_0_t:       slti         s0, s4, 476
                  addi         a3, a3, 10 #update loop 0 counter
                  or           gp, s7, s11
                  bltu         a3, s1, main_8_0_t #branch for loop 0
                  sll          s9, tp, a1
                  ori          s10, a4, 279
                  xori         s11, t1, -970
                  slli         t4, s6, 8
                  bge          s6, a7, main_8_1_t #branch for loop 1
                  lui          t6, 24677
                  addi         s8, zero, 9 #init loop 1 counter
                  addi         s11, zero, 17 #init loop 1 limit
main_5_1_t:       slti         t2, t4, -1408
                  addi         s8, s8, 9 #update loop 1 counter
                  auipc        s4, 743443
                  addi         tp, zero, -8 #init loop 0 counter
                  addi         t4, zero, 19 #init loop 0 limit
                  sra          t2, s7, a4
main_5_0_t:       and          s10, s9, sp
                  addi         tp, tp, 9 #update loop 0 counter
                  auipc        a6, 441480
                  bne          tp, t4, main_5_0_t #branch for loop 0
                  and          s3, s8, zero
                  bltu         s8, s11, main_5_1_t #branch for loop 1
                  auipc        a3, 876281
                  addi         tp, zero, -10 #init loop 1 counter
                  sltiu        s11, a3, -1016
                  addi         s2, zero, -14 #init loop 1 limit
main_1_1_t:       xor          t4, a2, tp
                  lui          a3, 708460
                  sltiu        s4, s9, 1257
                  addi         tp, tp, -7 #update loop 1 counter
                  addi         t3, zero, 9 #init loop 0 counter
                  or           a2, t3, t0
                  addi         t0, zero, -20 #init loop 0 limit
main_1_0_t:       xor          s3, s5, tp
                  slt          s9, a2, s4
                  addi         t3, t3, -5 #update loop 0 counter
                  xori         s8, t6, -418
                  nop
                  bge          t3, t0, main_1_0_t #branch for loop 0
                  bge          tp, s2, main_1_1_t #branch for loop 1
                  slt          t2, s10, ra
                  addi         s1, zero, 3 #init loop 0 counter
                  or           a6, s5, t0
                  srai         s11, s6, 27
                  sltiu        t3, s7, 1670
                  addi         s2, zero, 1567
                  nop
                  or           a1, zero, ra
                  slli         s6, gp, 9
                  xor          s0, s8, a5
                  srai         a3, t5, 22
                  sll          a4, a1, t1
                  addi         s9, zero, -15 #init loop 0 limit
                  slli         tp, t2, 27
                  slli         s6, s11, 8
main_12_0_t:      or           a0, s6, s11
                  slti         s6, gp, 1769
                  addi         s1, s1, -6 #update loop 0 counter
                  sltiu        a6, zero, -686
                  addi         t0, t5, 799
                  beq          s1, s9, main_12_0_t #branch for loop 0
                  sll          zero, s9, t6
                  addi         a3, zero, -4 #init loop 0 counter
                  nop
                  srl          zero, a5, s6
                  addi         s0, a7, 1797
                  sll          a7, sp, t3
                  addi         sp, zero, -16 #init loop 0 limit
main_2_0_t:       xori         s1, s2, 880
                  sub          a7, s7, t2
                  sra          t2, a1, s10
                  addi         a3, a3, -3 #update loop 0 counter
                  beq          a3, sp, main_2_0_t #branch for loop 0
                  slti         ra, t1, 1947
                  addi         t4, zero, -4 #init loop 1 counter
                  and          a1, a1, s6
                  xori         tp, s5, -802
                  srl          sp, s10, t2
                  xori         gp, s7, -1247
                  sll          t0, t3, s8
                  addi         s8, zero, 8 #init loop 1 limit
main_3_1_t:       auipc        s0, 659495
                  addi         t4, t4, 4 #update loop 1 counter
                  addi         a3, s6, -696
                  addi         t5, zero, -1 #init loop 0 counter
                  srli         s0, s0, 28
                  addi         s2, zero, 4 #init loop 0 limit
                  srl          t6, sp, s3
main_3_0_t:       slt          t0, tp, zero
                  srli         a2, t0, 8
                  addi         t5, t5, 5 #update loop 0 counter
                  beq          t5, s2, main_3_0_t #branch for loop 0
                  xor          zero, zero, s11
                  blt          t4, s8, main_3_1_t #branch for loop 1
                  auipc        zero, 234472
                  addi         a4, zero, -7 #init loop 1 counter
                  sra          s11, t4, s6
                  sll          s8, a7, t5
                  sll          sp, t1, t3
                  and          t6, t0, gp
                  andi         sp, a3, 180
                  addi         s10, zero, -14 #init loop 1 limit
                  srl          s11, ra, a5
main_0_1_t:       andi         a6, a2, -983
                  sltiu        s3, s4, -476
                  srai         t4, sp, 9
                  addi         a4, a4, -7 #update loop 1 counter
                  addi         a3, zero, -2 #init loop 0 counter
                  lui          s0, 522886
                  addi         s9, zero, -18 #init loop 0 limit
                  ori          s1, a6, -788
main_0_0_t:       and          tp, gp, zero
                  addi         a3, a3, -6 #update loop 0 counter
                  or           a2, t4, s0
                  bge          a3, s9, main_0_0_t #branch for loop 0
                  bne          a4, s10, main_0_1_t #branch for loop 1
                  srli         s4, sp, 0
                  addi         t6, zero, -2 #init loop 1 counter
                  sll          s7, ra, s1
                  sra          a3, s9, s10
                  and          s8, a2, zero
                  andi         s9, s0, 186
                  addi         t3, a3, -615
                  addi         a0, zero, 8 #init loop 1 limit
                  lui          s8, 28822
                  srli         s6, a4, 22
main_15_1_t:      sltiu        s1, t1, 1895
                  lui          t2, 571211
                  slt          s0, s3, t4
                  addi         t6, t6, 10 #update loop 1 counter
                  xor          s1, a7, t2
                  srli         s0, s0, 18
                  srl          s10, t3, s11
                  srai         t3, a5, 4
                  addi         t5, zero, -5 #init loop 0 counter
                  xori         t2, a7, 1112
                  addi         a1, a1, -782
                  addi         s2, zero, -20 #init loop 0 limit
                  nop
                  ori          s1, zero, 611
main_15_0_t:      xori         s9, s3, 1809
                  xor          s0, s2, s6
                  xor          t3, s11, t6
                  sub          a2, a5, a7
                  addi         t5, t5, -1 #update loop 0 counter
                  xori         t3, a3, -1280
                  addi         a7, sp, -1350
                  sll          zero, s5, s3
                  bne          t5, s2, main_15_0_t #branch for loop 0
                  sll          a4, s6, s2
                  bne          t6, a0, main_15_1_t #branch for loop 1
                  slti         s7, s9, -1484
                  addi         t6, zero, 7 #init loop 1 counter
                  addi         gp, zero, 6 #init loop 1 limit
                  sll          s7, s3, t1
main_10_1_t:      xori         t5, tp, 651
                  sub          s2, s7, t5
                  srl          t2, a6, s4
                  addi         t6, t6, -5 #update loop 1 counter
                  addi         ra, zero, -7 #init loop 0 counter
                  addi         s1, zero, -17 #init loop 0 limit
                  andi         t0, a7, -1512
main_10_0_t:      lui          s3, 374965
                  srl          s7, s10, tp
                  addi         ra, ra, -2 #update loop 0 counter
                  addi         s7, s1, 232
                  lui          t5, 230435
                  bne          ra, s1, main_10_0_t #branch for loop 0
                  and          t3, t5, s0
                  bgeu         t6, gp, main_10_1_t #branch for loop 1
                  or           s2, s10, s10
                  addi         s2, zero, 9 #init loop 0 counter
                  add          a3, s7, s10
                  srli         sp, s4, 22
                  slti         zero, tp, 102
                  xori         s0, s3, 58
                  sub          a3, a2, s0
                  addi         a2, zero, 20 #init loop 0 limit
main_7_0_t:       and          s0, ra, t0
                  ori          s6, tp, -1356
                  slli         s9, s6, 10
                  slt          s10, s8, t5
                  addi         s2, s2, 4 #update loop 0 counter
                  nop
                  srl          a6, t1, a3
                  bltu         s2, a2, main_7_0_t #branch for loop 0
                  sltu         ra, a5, s5
                  addi         ra, zero, -4 #init loop 0 counter
                  sll          a6, t0, sp
                  sll          s1, sp, gp
                  nop
                  addi         s8, zero, -8 #init loop 0 limit
                  lui          t3, 656620
                  slti         s4, t5, 913
main_6_0_t:       lui          a6, 492807
                  auipc        s3, 186693
                  addi         ra, ra, -4 #update loop 0 counter
                  sub          s3, a4, a5
                  beq          ra, s8, main_6_0_t #branch for loop 0
                  sltiu        s11, a3, 1564
                  lui          t3, 13585
                  slli         tp, s0, 13
                  auipc        a4, 996009
                  and          s10, a3, a4
                  xor          ra, a1, s11
                  srai         s10, sp, 1
                  slt          a7, t0, sp
                  nop
                  sltiu        a7, s7, -524
                  bge          a2, a3, 18f
                  slli         s0, ra, 15
                  bne          t6, a7, 27f
                  ori          t0, s4, -1106
                  addi         s3, t1, -1548
                  xori         s1, s9, 1099
                  nop
                  ori          s7, s5, -6
                  slt          t3, a0, a5
18:               blt          s6, s1, 26f
                  xori         s9, a4, 592
                  sltiu        tp, t1, 593
                  srai         s1, s1, 15
                  slti         s8, s7, 1174
                  slt          t2, t4, t1
                  addi         s6, zero, 10 #init loop 0 counter
                  addi         s10, t6, 668
                  auipc        t6, 653381
                  addi         a7, zero, 8 #init loop 0 limit
                  xori         a3, s4, 1650
                  slli         s7, a4, 26
                  srli         t5, ra, 4
                  sltu         a4, s1, a3
                  srl          a4, a3, s5
main_4_0_t:       nop
                  lui          t2, 640339
                  addi         s6, s6, -7 #update loop 0 counter
                  xori         a4, a3, -1714
                  add          t3, gp, t4
                  auipc        s10, 538910
                  slt          a2, ra, s2
                  nop
                  slti         t6, s8, -886
                  bgeu         s6, a7, main_4_0_t #branch for loop 0
                  sub          gp, t1, t2
                  sltiu        s0, t0, 912
                  sltiu        ra, sp, -598
26:               xor          t3, s1, t4
27:               srli         s4, s11, 8
                  bne          s1, s9, 35f
                  bgeu         s5, t4, 31f
                  bne          s6, t6, 35f
31:               slli         s1, t6, 29
                  blt          a0, s7, 35f
                  slti         zero, t6, -313
                  sltu         t3, sp, s8
35:               beq          t3, s5, 54f
                  addi         t2, a6, 54
                  sra          a2, t3, a4
                  lui          s1, 796523
                  blt          gp, a3, 50f
                  or           zero, t5, a0
                  sll          t5, s11, s11
                  bgeu         t3, ra, 50f
                  andi         sp, ra, -1417
                  sll          a4, a5, t0
                  or           ra, t3, zero
                  slti         s11, s8, 666
                  auipc        s9, 513869
                  addi         t5, zero, -1764
                  ori          s2, zero, 1143
50:               slli         zero, s5, 0
                  sltiu        s3, t2, 644
                  sltu         a7, gp, s2
                  sra          s11, s5, s7
54:               auipc        s11, 170812
                  bltu         s8, ra, 69f
                  slti         a2, s4, 1144
                  bltu         t6, t5, 64f
                  sra          s1, a4, s2
                  xori         s3, s1, 1393
                  sll          t3, s2, a1
                  addi         s3, s8, -343
                  slt          a4, s5, s2
                  sll          s3, s5, s9
64:               slti         a4, s4, -1335
                  xori         ra, t4, 894
                  slli         gp, s8, 12
                  slli         gp, s7, 31
                  blt          s8, a6, 72f
69:               auipc        t5, 991724
                  bge          gp, a5, 81f
                  slti         ra, s0, 216
72:               addi         a3, s5, 596
                  add          a7, a0, t0
                  bne          t0, t2, 90f
                  bge          s2, a0, 91f
                  sltu         a1, a3, t3
                  lui          a3, 790745
                  srl          a3, sp, s4
                  slli         s4, gp, 15
                  srl          a3, a3, a1
81:               srli         s8, t0, 16
                  bne          t4, a3, 94f
                  xori         gp, a6, -282
                  slti         t0, gp, 177
                  addi         ra, tp, 1768
                  andi         t0, a1, 467
                  sra          tp, a3, ra
                  add          t2, s6, s9
                  bltu         t1, t6, 103f
90:               auipc        s0, 848527
91:               ori          t2, ra, -1524
                  srai         t4, a1, 29
                  slt          s9, sp, a3
94:               xor          zero, sp, a5
                  sltu         s2, gp, s1
                  slli         s6, a5, 18
                  sra          s3, t2, sp
                  xori         a2, t6, -1923
                  sltu         t6, sp, sp
                  beq          s6, a3, 105f
                  bgeu         a0, a3, 117f
                  srli         s0, s8, 29
103:              bge          gp, a1, 104f
104:              lui          sp, 29950
105:              srl          t2, sp, a5
                  sub          t0, s4, a6
                  slti         a3, ra, -1341
                  slli         sp, s1, 14
                  nop
                  xori         ra, s10, -852
                  and          t3, s3, a1
                  xori         s2, s11, -1531
                  auipc        s3, 212553
                  add          a1, a4, t5
                  srl          t2, zero, a4
                  sll          a0, s3, s11
117:              or           t6, s5, zero
                  beq          s10, t1, 122f
                  beq          s10, zero, 137f
                  sll          ra, t5, t0
                  sub          t4, s9, t3
122:              and          a1, a1, a0
                  or           s2, t2, a0
                  beq          a3, s8, 132f
                  lui          a2, 314456
                  ori          s10, a0, -1392
                  beq          a0, t6, 137f
                  xori         t0, s6, -1883
                  or           s7, a6, tp
                  sltu         zero, a7, a7
                  or           t0, s7, s7
132:              srl          s11, t2, t2
                  bgeu         tp, t1, 141f
                  srai         a4, s1, 21
                  and          t3, s6, ra
                  ori          s11, a7, 1424
137:              slli         s6, a4, 11
                  or           s10, zero, s6
                  sub          t0, s4, s6
                  sra          a3, a5, a6
141:              srl          s0, a4, s2
                  sub          s1, t3, tp
                  srai         t2, zero, 1
                  srli         t3, t4, 25
                  sll          t2, a3, a2
                  sra          s11, a3, a0
                  bge          t1, a1, 164f
                  sll          s9, s1, t3
                  srai         s6, t6, 23
                  add          a2, ra, a6
                  add          s1, s9, t3
                  slli         t0, tp, 14
                  sltiu        t5, t3, -1366
                  xori         a7, zero, -1806
                  sub          s8, s1, s10
                  bne          s5, t6, 170f
                  sub          s8, a3, s9
                  lui          a2, 673825
                  xori         s6, s8, -1679
                  sltiu        s1, s7, -1344
                  sll          a0, a4, ra
                  sub          s9, a3, t4
                  sltiu        t2, a5, 37
164:              slli         a3, a6, 7
                  sltiu        a3, sp, 1144
                  lui          tp, 515076
                  slt          s3, a1, t0
                  srl          t6, s1, s5
                  andi         a4, s1, -1006
170:              sll          s0, s3, tp
                  srli         a3, zero, 6
                  sub          zero, s0, tp
                  add          t2, t3, a3
                  bgeu         s0, a7, 192f
                  sll          a1, sp, t3
                  bltu         a0, sp, 183f
                  sub          gp, t4, tp
                  ori          s9, zero, -45
                  addi         s11, tp, 27
                  nop
                  bgeu         a6, a7, 192f
                  sltiu        s4, s6, 788
183:              blt          t4, a6, 197f
                  auipc        s8, 425225
                  auipc        s10, 322871
                  and          tp, t0, s9
                  nop
                  srl          a3, a5, t2
                  bne          a5, a3, 205f
                  srai         a3, t4, 9
                  beq          t1, a1, 199f
192:              srai         s11, a7, 11
                  bgeu         s8, s7, 201f
                  or           s9, s10, t2
                  sra          a1, s0, t1
                  andi         t5, s1, -537
197:              and          t4, a7, s6
                  xori         s0, a5, 1631
199:              nop
                  srai         s10, tp, 18
201:              xor          s8, s4, zero
                  sub          a7, s4, a0
                  bltu         s9, s1, 206f
                  slti         a2, ra, -1868
205:              xor          a0, a2, s2
206:              ori          a0, s0, -1339
                  addi         s11, s3, -1826
                  srai         t3, s7, 24
                  slt          s4, a1, t5
                  bltu         t3, t6, 226f
                  andi         a4, a1, -1057
                  add          a3, a2, a0
                  and          s11, t6, s4
                  bgeu         s10, s0, 233f
                  slli         gp, t3, 5
                  sltiu        t5, s11, 1286
                  bltu         s10, zero, 226f
                  xor          s6, a7, tp
                  and          s1, s5, gp
                  sll          s2, t4, a5
                  xor          s1, a6, ra
                  slli         a6, t4, 15
                  bne          tp, s2, 235f
                  nop
                  nop
226:              bltu         s8, a3, 240f
                  add          s7, t6, a4
                  bne          sp, t2, 242f
                  blt          t3, s5, 236f
                  slli         s8, gp, 16
                  andi         t3, zero, -409
                  srl          t0, t1, tp
233:              slli         a3, tp, 13
                  sll          a7, sp, a6
235:              slli         sp, zero, 18
236:              bne          t2, s3, 252f
                  blt          t1, a3, 247f
                  xor          t2, a7, s10
                  blt          a3, s0, 240f
240:              sll          s7, s0, s6
                  bgeu         a6, t6, 259f
242:              xori         s10, zero, -1785
                  sub          ra, s4, a2
                  and          s11, s5, sp
                  lui          a4, 521442
                  sra          sp, ra, s11
247:              lui          t6, 406562
                  bge          t2, s5, 252f
                  sub          a3, a1, a6
                  bge          s6, a2, 252f
                  srl          s6, t2, t0
252:              ori          t2, ra, -1160
                  sub          a3, tp, s11
                  sub          s8, s0, s6
                  sltu         t6, t3, a2
                  beq          s1, t2, 267f
                  lui          s10, 311103
                  slt          a7, sp, t0
259:              sltu         s2, s6, s2
                  auipc        a7, 722699
                  slti         zero, t1, -119
                  blt          s1, t3, 280f
                  xori         sp, s4, -1335
                  srai         ra, s7, 20
                  slli         s10, tp, 19
                  addi         a4, a4, 189
267:              andi         t5, t5, 1694
                  bne          s8, s2, 276f
                  srli         t2, t5, 18
                  bne          ra, t1, 287f
                  andi         s1, a6, -208
                  addi         zero, t6, 858
                  blt          a5, s1, 280f
                  sll          a7, a7, s6
                  sltiu        a4, s11, 1615
276:              andi         s3, s2, -1559
                  nop
                  auipc        s6, 478026
                  add          s0, s0, zero
280:              srai         a7, a4, 2
                  sub          s10, t6, a7
                  srli         a0, t4, 19
                  and          s3, t0, s10
                  andi         a0, t4, -1077
                  sltiu        tp, a5, -392
                  slti         s9, s7, -1119
                  addi         s3, zero, 6 #init loop 0 counter
                  addi         t5, zero, 10 #init loop 0 limit
main_14_0_t:      auipc        t6, 858255
                  addi         s3, s3, 2 #update loop 0 counter
                  beq          s3, t5, main_14_0_t #branch for loop 0
                  add          s2, t5, s4
287:              add          s0, t6, a1
                  bge          s5, s1, 304f
                  xori         s6, s1, 1671
                  srli         s4, s7, 0
                  bne          gp, t4, 296f
                  bge          s0, s2, 299f
                  addi         a1, zero, -3 #init loop 0 counter
                  slti         sp, t5, -448
                  sltiu        a7, s8, -855
                  addi         t4, zero, -10 #init loop 0 limit
                  addi         s4, a3, -1296
main_11_0_t:      slt          s4, s7, t1
                  and          t5, ra, a5
                  sra          sp, s9, t0
                  sra          zero, s11, t0
                  addi         a1, a1, -9 #update loop 0 counter
                  xor          t5, s5, t1
                  nop
                  lui          t6, 112869
                  and          s7, t5, t5
                  slti         s8, a4, 2037
                  sub          s2, a4, s1
                  slti         ra, gp, 723
                  and          t3, t1, gp
                  auipc        a0, 904773
                  andi         zero, t3, 664
                  ori          t5, s0, -91
                  bge          a1, t4, main_11_0_t #branch for loop 0
                  sltu         zero, a3, s0
                  sra          s11, t6, a3
                  xor          t5, a7, a0
                  bne          t3, s8, 303f
296:              or           t2, a7, t1
                  sltiu        a7, s7, 100
                  slli         sp, s8, 20
299:              srli         a2, t4, 3
                  or           a7, t2, t6
                  slli         a0, s1, 18
                  srl          s9, a1, s6
303:              slli         a4, t5, 4
304:              sll          a2, s7, s0
                  sra          s4, s2, a1
                  and          s10, t2, s1
                  slli         a2, a1, 1
                  add          s2, s2, t4
                  beq          t2, s8, 314f
                  srli         a1, zero, 22
                  srl          a2, a1, gp
                  srli         s8, t2, 26
                  sra          sp, gp, s10
314:              and          s3, a1, a4
                  auipc        s7, 1847
                  srai         a2, s2, 28
                  blt          t6, t4, 321f
                  and          a2, a4, s1
                  bge          a6, t1, 335f
                  sll          a3, s2, s5
321:              sll          s1, s9, t0
                  sra          s7, gp, s0
                  bltu         a1, t2, 341f
                  auipc        a1, 285320
                  andi         s10, sp, -700
                  addi         t6, s9, -914
                  lui          a3, 885636
                  nop
                  bgeu         t4, tp, 338f
                  auipc        s1, 381667
                  or           ra, a1, s8
                  nop
                  ori          zero, zero, 1343
                  nop
335:              lui          s10, 101555
                  xori         s10, ra, 584
                  sltu         a6, a7, gp
338:              bltu         t0, t5, 357f
                  and          a4, s9, s11
                  srli         s1, zero, 4
341:              auipc        a6, 306693
                  sll          s6, s6, t2
                  sltiu        s7, t0, 1629
                  sltu         s2, t3, a0
                  lui          s8, 977459
                  beq          s6, zero, 353f
                  blt          t1, s9, 358f
                  andi         a7, a0, 1871
                  ori          a4, t1, -1178
                  beq          s8, s10, 358f
                  addi         s9, t1, 1548
                  beq          s2, s1, 356f
353:              srai         a2, tp, 8
                  srl          a7, t5, s11
                  xor          a7, a2, s0
356:              srai         a7, s6, 13
357:              blt          s0, gp, 365f
358:              add          a0, a6, s3
                  srli         tp, s9, 16
                  srl          s9, s5, s1
                  slt          s11, sp, a7
                  slti         s7, s7, 1035
                  beq          a2, s5, 364f
364:              nop
365:              and          s2, s4, a0
                  xor          a1, s10, a2
                  andi         s4, t5, 313
                  srl          tp, t6, s0
                  add          s8, t3, s8
                  and          tp, s7, ra
                  auipc        t0, 63574
                  slt          t5, s6, a1
                  slt          s4, a7, s0
                  sltiu        zero, t0, 684
                  auipc        s0, 67016
                  and          a4, a4, s8
                  sltu         s8, a5, ra
                  sltu         s7, t0, s6
                  bne          s6, s0, 393f
                  and          s1, t6, s10
                  sltu         s6, a7, s0
                  lui          a2, 575299
                  and          t5, t3, a3
                  slt          s8, a6, t6
                  ori          s6, a1, -638
                  blt          s10, t6, 398f
                  bne          a5, a1, 391f
                  bgeu         a6, t6, 404f
                  slli         a7, s0, 23
                  ori          s10, a1, 1348
391:              sra          a3, t2, t4
                  nop
393:              and          a7, sp, s2
                  sltiu        sp, s4, -113
                  addi         a0, t0, -443
                  bgeu         t6, ra, 404f
                  lui          a7, 65498
398:              or           s7, a2, ra
                  slti         s11, s9, -1219
                  srl          a6, t5, sp
                  andi         a0, s1, -921
                  addi         s2, t5, 360
                  addi         s8, s5, 1078
404:              nop
                  xor          s9, ra, zero
                  lui          a7, 567036
                  srai         s1, t1, 27
                  srli         a1, s1, 8
                  bgeu         s7, a7, 426f
                  srai         s2, s2, 3
                  xor          a2, a7, s5
                  andi         s10, a6, -1357
                  srl          s8, s1, t5
                  addi         s0, zero, 10 #init loop 1 counter
                  addi         s9, s8, -541
                  add          t4, a3, t1
                  sra          s3, sp, a3
                  xori         t4, a5, 664
                  and          t5, a7, s7
                  addi         a1, a5, 774
                  andi         s2, s3, -1471
                  addi         t2, zero, 15 #init loop 1 limit
main_9_1_t:       sub          s11, s5, a1
                  add          gp, s3, a1
                  andi         gp, s10, 1534
                  addi         s0, s0, 3 #update loop 1 counter
                  srl          s11, a1, t0
                  addi         sp, zero, -9 #init loop 0 counter
                  addi         a2, zero, -17 #init loop 0 limit
                  srai         s2, t0, 31
main_9_0_t:       sub          tp, a7, s7
                  addi         sp, sp, -4 #update loop 0 counter
                  beq          sp, a2, main_9_0_t #branch for loop 0
                  or           gp, s3, gp
                  blt          s0, t2, main_9_1_t #branch for loop 1
                  andi         s7, a1, -1895
                  and          t4, s3, a2
                  bltu         t5, t4, 420f
                  blt          t5, t0, 419f
                  andi         t6, a3, 493
                  slt          zero, s0, s8
419:              xor          zero, a7, a6
420:              sub          a7, gp, t2
                  auipc        a7, 63584
                  andi         t6, gp, -998
                  sltu         s3, s3, t2
                  blt          s10, a2, 442f
                  xor          t0, a7, t0
426:              or           s6, a3, s8
                  sub          s1, t2, t5
                  bgeu         a3, a6, 436f
                  bgeu         a2, a2, 431f
                  sub          a4, a6, s1
431:              bgeu         sp, s5, 447f
                  xori         t0, a0, 712
                  slt          t6, a5, t2
                  blt          t4, ra, 444f
                  slt          gp, gp, s7
436:              slli         s7, a4, 25
                  slti         t6, zero, 725
                  add          s9, s1, s4
                  add          a7, a0, a3
                  sltu         s10, a6, s10
                  blt          s5, s1, 452f
442:              andi         a0, t1, 35
                  srai         ra, t2, 24
444:              sub          a7, a3, t5
                  sltiu        s9, s0, 1616
                  lui          t3, 635400
447:              sltiu        a7, zero, -672
                  auipc        s6, 623262
                  and          s0, a7, t3
                  slli         s11, gp, 14
                  slti         t5, t4, 811
452:              slt          s7, sp, t2
                  srl          s8, s0, s6
                  blt          a3, a3, 468f
                  xor          s2, ra, s3
                  sll          sp, t5, a0
                  and          a1, s11, a7
                  sra          a3, a0, a6
                  srl          s4, a7, tp
                  sll          a3, s5, t3
                  sltiu        a4, t0, -454
                  ori          a0, a4, 1429
                  srl          t4, tp, sp
                  addi         tp, t0, 663
                  nop
                  or           s11, a1, s5
                  slti         t6, t0, -834
468:              sra          a1, t1, t2
                  xori         t3, s3, -797
                  srli         a7, s11, 29
                  addi         s6, a5, 622
                  srl          t0, a7, s5
                  sltu         s11, s4, t6
                  srli         zero, tp, 21
                  sub          s7, t5, a4
                  beq          s8, s8, 483f
                  sra          s2, s2, s5
                  ori          t0, a7, 1578
                  or           s7, s2, a6
                  xor          s10, t5, a0
                  sub          a6, s6, a0
                  bne          a3, gp, 498f
483:              sltu         s7, t2, t4
                  xor          a2, s3, s11
                  la           a7, sub_1
                  sltu         t0, s11, t3
                  addi         a7, a7, -588
                  auipc        s0, 126574
                  bne          s4, s8, main_j1 #branch to jump instr
                  srl          t2, t1, a6
                  addi         gp, t3, 661
                  xori         s1, a6, 1227
main_j1:          jalr         ra, a7, 589 #jump main -> sub_1
                  xor          ra, s0, a0
                  bge          s7, s10, 493f
                  bltu         t6, a5, 492f
                  sll          t6, s7, s7
                  srl          s2, t6, s10
                  bge          a1, a2, 504f
                  and          a4, sp, gp
492:              sra          a1, a7, s5
493:              add          s6, t5, s3
                  sltu         t5, s2, s10
                  addi         s2, s6, -1391
                  nop
                  add          a0, s7, s1
498:              srli         s8, s10, 20
                  sltu         tp, t1, s0
                  andi         gp, s9, -920
                  bge          ra, s7, 519f
                  sra          a1, s11, s8
                  xori         s8, sp, -968
504:              srli         s6, zero, 23
                  lui          s3, 747125
                  bge          t6, tp, 511f
                  sltu         s9, s3, s2
                  xor          t0, s1, s9
                  bgeu         s11, s11, 516f
                  add          s4, t5, a2
511:              slt          t6, t1, t2
                  sltiu        tp, s4, -1360
                  srli         a0, a4, 6
                  bgeu         t4, s3, 523f
                  and          s7, a3, a3
516:              slli         s4, a6, 4
                  add          t6, t4, s6
                  addi         s3, zero, -5 #init loop 1 counter
                  slti         a7, zero, 818
                  addi         s0, zero, -13 #init loop 1 limit
                  xor          s4, a3, s11
                  slti         zero, zero, -1766
main_13_1_t:      auipc        s8, 738772
                  addi         gp, a2, -828
                  addi         s3, s3, -2 #update loop 1 counter
                  andi         a7, s9, -91
                  addi         t2, zero, -1 #init loop 0 counter
                  auipc        tp, 69082
                  and          ra, s2, ra
                  addi         s9, zero, -8 #init loop 0 limit
main_13_0_t:      auipc        s2, 907585
                  addi         t2, t2, -1 #update loop 0 counter
                  ori          t5, a4, 1791
                  addi         a0, s2, 1333
                  beq          t2, s9, main_13_0_t #branch for loop 0
                  xor          a4, s9, t6
                  slli         s6, a7, 4
                  bge          s3, s0, main_13_1_t #branch for loop 1
                  srai         s2, gp, 20
                  sra          a7, t4, a3
519:              and          s1, a5, zero
                  add          s9, s8, gp
                  xor          tp, a7, a3
                  ori          a3, s3, 739
523:              lui          a0, 423897
                  bne          t2, t0, 532f
                  sltu         s3, s11, s8
                  bne          s6, s9, 542f
                  srl          s8, a6, s3
                  slt          t6, gp, s6
                  bltu         s0, zero, 541f
                  slli         sp, a6, 31
                  srli         s7, s2, 22
532:              blt          a7, s4, 536f
                  bltu         ra, a0, 535f
                  and          tp, s7, a4
535:              sltu         s10, t1, t3
536:              sll          sp, s8, a2
                  bltu         a6, t2, 548f
                  srai         a4, s3, 20
                  slt          s9, s4, gp
                  xori         s1, t5, 1945
541:              xori         a1, a0, -1233
542:              nop
                  or           s3, a0, t2
                  sll          s3, a6, gp
                  slti         s8, s7, -1743
                  andi         s2, s0, -421
                  slti         s9, s0, -1452
548:              sltu         gp, s7, t6
                  and          a7, s11, a2
                  sll          t2, s5, s9
                  bge          t1, t6, 567f
                  andi         t5, ra, -1763
                  lui          s10, 112165
                  ori          a1, t5, 685
                  addi         t3, zero, 1437
                  blt          zero, s2, 570f
                  xori         a1, s6, -1873
                  add          t0, s0, s7
                  slti         a3, s5, -2001
                  sltiu        t5, a5, 908
                  addi         ra, t1, -978
                  nop
                  bge          t1, sp, 577f
                  andi         t2, t6, -597
                  bltu         s11, tp, 566f
566:              lui          t4, 912475
567:              bltu         s1, ra, 577f
                  srl          t3, a2, s6
                  andi         s1, a1, -1095
570:              ori          s11, s2, -376
                  lui          t0, 270989
                  srai         s6, s0, 26
                  slt          s7, a0, a7
                  srai         t3, s7, 24
                  slti         a0, a0, 1774
                  sltu         t5, s3, gp
577:              ori          ra, a5, 1466
                  addi         s8, t1, 1517
                  xori         gp, ra, 423
                  beq          s8, a0, 596f
                  bge          tp, a3, 588f
                  and          s2, t5, a6
                  auipc        s9, 572509
                  or           a2, ra, s0
                  xori         s11, zero, 774
                  sltu         s9, s4, a3
                  srai         t4, sp, 6
588:              srli         a6, a5, 8
                  sub          t2, sp, tp
                  auipc        ra, 379182
                  or           s0, s3, s8
                  srl          zero, s9, s9
                  xori         t2, a5, 352
                  sltu         s4, t6, s0
                  andi         t6, s3, -118
596:              srli         a6, a0, 17
                  slt          s9, s8, zero
                  sll          a7, t1, s11
                  sltiu        s3, a0, -1765
                  slti         a6, s3, 198
                  srl          a4, t2, gp
                  srli         sp, s0, 8
                  andi         s9, t5, -67
                  sub          a4, a6, t3
                  lui          a4, 624525
                  add          a7, s7, s4
                  add          s8, s7, s0
                  slli         t6, t6, 28
                  or           s7, a2, s9
                  srli         t5, s1, 0
                  xori         s11, s4, 406
                  srai         gp, a6, 0
                  or           t3, ra, t0
                  lui          a2, 177012
                  bge          s3, gp, 623f
                  bne          s8, s3, 623f
                  slt          gp, s5, a7
                  srai         a1, s6, 17
                  lui          t5, 782898
                  andi         s0, gp, 1666
                  srl          sp, s11, t3
                  and          s3, s7, s0
623:              auipc        a6, 979509
                  beq          t1, t3, 635f
                  srli         t3, s7, 18
                  andi         gp, t3, -1790
                  bltu         s0, t6, 646f
                  lui          s7, 489932
                  bltu         ra, t4, 643f
                  xori         t6, s7, -409
                  ori          t6, a4, -473
                  slti         s9, a6, -623
                  slti         a6, t4, 543
                  addi         s6, a1, -1089
635:              slt          s4, s9, t4
                  lui          a4, 677753
                  blt          a2, s11, 655f
                  and          t2, a3, s11
                  bne          s6, s2, 656f
                  bne          t1, t2, 644f
                  and          a7, a7, s7
                  addi         zero, a2, -1966
                  la           s2, sub_2
                  xor          s4, sp, s11
                  xor          s10, t4, t6
                  xor          a3, s9, s6
                  addi         s2, s2, -506
                  srli         s4, t0, 21
                  blt          s0, s5, main_j2 #branch to jump instr
                  sltiu        s7, a5, 1098
main_j2:          jalr         ra, s2, 506 #jump main -> sub_2
                  ori          t4, s2, 1975
                  ori          a6, a2, -2036
643:              srl          a3, a3, s3
644:              ori          s10, s5, -1010
                  sll          s11, s4, ra
646:              bne          s5, s8, 651f
                  or           sp, s9, zero
                  lui          t2, 1004105
                  or           s3, s11, s8
                  bltu         s6, t0, 658f
651:              slli         s8, a2, 29
                  sltiu        s6, t3, -1290
                  sltiu        t4, t5, -249
                  andi         a2, a1, -841
655:              ori          s2, sp, 18
656:              slli         s1, s7, 24
                  sll          s6, a0, s0
658:              addi         s1, s10, -195
                  xor          a2, s5, t3
                  bgeu         t0, s9, 663f
                  bne          s5, a5, 677f
                  xori         a7, t6, -1474
663:              slt          sp, a0, s0
                  xori         a4, a0, -283
                  ori          sp, s6, 936
                  xor          s0, tp, s9
                  sra          a7, a2, s9
                  andi         s1, s5, -1634
                  ori          s6, s10, 1786
                  and          t6, zero, t4
                  and          gp, a5, s3
                  bgeu         sp, s2, 680f
                  sltiu        gp, s2, 499
                  beq          ra, s6, 690f
                  xor          s8, zero, s3
                  and          t0, sp, a1
677:              srli         s2, s1, 22
                  bne          ra, t2, 686f
                  or           s7, t6, a2
680:              xori         t3, s6, 891
                  slt          s1, t1, a1
                  sll          s3, t5, s10
                  beq          a7, a7, 699f
                  bne          t5, s6, 686f
                  srl          a3, a4, s2
686:              slti         s2, a7, -882
                  or           s4, sp, s7
                  blt          a7, s0, 704f
                  nop
690:              srli         s10, s0, 16
                  slt          a7, s1, a4
                  xor          t5, ra, a7
                  lui          sp, 908628
                  or           t4, s11, t0
                  srl          a3, s3, s11
                  bgeu         t4, a4, 708f
                  bne          s10, a6, 700f
                  sltu         gp, t3, ra
699:              auipc        a7, 121373
700:              or           t4, a3, s2
                  andi         s9, t6, 1743
                  nop
                  ori          s10, s0, 576
704:              beq          a5, s1, 709f
                  bne          s6, s10, 719f
                  or           a3, s11, s5
                  add          t6, s7, s10
708:              nop
709:              srl          t6, a1, t5
                  nop
                  sra          a1, a6, s4
                  sub          s7, a1, t3
                  srai         a4, a1, 26
                  and          s1, s4, s5
                  bltu         tp, a4, 720f
                  or           t2, s5, a0
                  sltu         s10, a2, t2
                  nop
719:              or           tp, t5, a5
720:              and          s10, a1, s2
                  nop
                  and          a1, s10, a6
                  xor          a3, s7, t1
                  auipc        a4, 724467
                  sub          s0, a6, s11
                  srai         s9, tp, 13
                  sll          s9, s3, a5
                  sra          t0, a2, a4
                  srl          ra, t4, zero
                  and          a7, a3, s8
                  add          s4, t6, t2
                  srli         a4, t6, 2
                  add          t4, t4, gp
                  srl          t5, s4, t0
                  andi         s8, t2, 1222
                  bgeu         t2, a6, 744f
                  sltiu        s9, s8, 27
                  ori          tp, tp, 1516
                  slt          a4, a2, s6
                  bltu         a5, t2, 756f
                  ori          t3, s6, -613
                  sltiu        s4, t2, -217
                  srai         s2, a6, 0
744:              beq          s4, a7, 754f
                  bltu         ra, s11, 763f
                  sub          a2, s0, s4
                  sub          s6, s4, tp
                  ori          t5, a0, -1948
                  sub          s2, t4, a1
                  bge          zero, s8, 761f
                  bge          s0, t4, 758f
                  slt          s6, t5, a4
                  slti         s6, tp, -1131
754:              srai         sp, t2, 14
                  or           ra, a1, t0
756:              add          s2, zero, a7
                  bltu         s11, t4, 758f
758:              sub          a3, a1, tp
                  and          s2, tp, a5
                  sll          s1, t2, a5
761:              beq          t4, gp, 772f
                  lui          s10, 210141
763:              bgeu         zero, s2, 770f
                  srai         s1, sp, 15
                  andi         gp, s0, 30
                  add          t4, gp, s6
                  sltu         s6, s7, t2
                  srai         s8, s3, 4
                  xori         t3, s6, 1887
770:              srai         tp, s2, 4
                  slli         a3, a1, 7
772:              srli         t4, ra, 28
                  ori          zero, s10, 1807
                  sll          s3, zero, ra
                  slti         a1, zero, -710
                  xori         a4, t2, 715
                  addi         tp, t1, -458
                  lui          s2, 632194
                  sltu         s9, ra, a3
                  bge          s5, s6, 787f
                  andi         t4, t3, -1116
                  bne          s3, t4, 796f
                  or           gp, s5, t2
                  blt          a0, s2, 803f
                  andi         t6, s0, -1592
                  srai         a6, t5, 3
787:              slti         s1, t6, -668
                  bge          s0, t3, 792f
                  srli         t0, a5, 19
                  bgeu         t1, a7, 804f
                  ori          sp, t5, 2010
792:              ori          a3, s5, 1812
                  nop
                  srli         t3, zero, 20
                  slli         t6, a7, 15
796:              sll          t2, s6, s7
                  bne          t6, s0, 801f
                  ori          gp, a3, 1213
                  srai         t6, s2, 10
                  slt          s6, a3, s11
801:              bgeu         ra, s5, 818f
                  and          s4, a5, zero
803:              auipc        s6, 285437
804:              beq          s5, a6, 813f
                  slli         t0, a7, 16
                  lui          s4, 679194
                  slli         zero, a6, 9
                  bge          a0, t5, 826f
                  add          s1, a4, s9
                  andi         a1, s2, -1186
                  sub          s7, s6, tp
                  sltiu        s4, s7, 1348
813:              bltu         a5, s4, 821f
                  ori          tp, gp, -540
                  add          a4, s10, tp
                  srli         a7, a7, 2
                  ori          s8, a3, 1585
818:              srli         s4, a5, 23
                  sra          s6, s10, t4
                  srai         a2, gp, 30
821:              sltiu        t2, t3, 1065
                  auipc        s10, 333885
                  sll          gp, s9, t3
                  xori         s10, s10, 1743
                  sra          s1, s7, s4
826:              add          s9, s0, s7
                  bge          t0, s9, 835f
                  bgeu         s1, sp, 842f
                  bne          t3, s9, 831f
                  sltiu        ra, a1, -296
831:              bne          s10, s11, 845f
                  bgeu         ra, s1, 836f
                  bgeu         ra, t4, 838f
                  blt          gp, zero, 842f
835:              slt          t2, t6, ra
836:              srai         s7, a1, 16
                  sltu         ra, s5, t1
838:              slti         tp, s4, 242
                  ori          ra, gp, 1915
                  sltiu        s9, t1, 1839
                  or           t3, t0, a1
842:              nop
                  sra          a4, t4, t0
                  blt          t1, a1, 845f
845:              add          a4, a7, s2
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bge          t6, ra, sub_5_stack_p
                  auipc        s0, 982599
sub_5_stack_p:    addi         a5, a5, -64
                  slti         a7, zero, 995
                  srai         t5, t5, 31
                  sw           ra, 4(a5)
                  xori         s3, a6, -1761
                  addi         a3, zero, -4 #init loop 1 counter
                  sll          s10, tp, s8
                  addi         gp, zero, -4 #init loop 1 limit
                  sra          t2, a0, t3
                  andi         tp, a1, 1194
sub_5_0_1_t:      sltu         t5, s3, s1
                  addi         a3, a3, -4 #update loop 1 counter
                  sltiu        sp, a5, -506
                  addi         s2, zero, -5 #init loop 0 counter
                  addi         t4, zero, -11 #init loop 0 limit
                  auipc        s8, 786990
sub_5_0_0_t:      slti         s6, a3, 1523
                  lui          a0, 722068
                  addi         s2, s2, -5 #update loop 0 counter
                  ori          s4, t2, 1354
                  nop
                  bge          s2, t4, sub_5_0_0_t #branch for loop 0
                  slti         a2, zero, -1256
                  sltiu        t5, t4, -1489
                  sltu         t2, gp, tp
                  sltu         a6, a1, t1
                  bge          a3, gp, sub_5_0_1_t #branch for loop 1
                  ori          sp, a4, 1914
                  addi         a1, zero, 10 #init loop 0 counter
                  xor          s7, ra, tp
                  slt          t5, s6, s1
                  slli         s0, s7, 13
                  addi         t6, zero, 10 #init loop 0 limit
                  xor          a0, ra, sp
sub_5_1_0_t:      sub          a2, s3, t6
                  lui          s2, 340512
                  addi         a1, a1, -9 #update loop 0 counter
                  xor          tp, s1, sp
                  slli         gp, t1, 31
                  lui          t3, 1039054
                  srl          sp, a3, a6
                  xori         a7, a7, -623
                  slti         s7, ra, 524
                  add          s9, a1, sp
                  sltiu        gp, a2, -1171
                  bgeu         a1, t6, sub_5_1_0_t #branch for loop 0
                  addi         a6, s5, -1014
                  addi         t0, zero, -9 #init loop 1 counter
                  addi         s1, zero, -17 #init loop 1 limit
                  sub          a3, t0, zero
sub_5_5_1_t:      sltu         a6, s11, t4
                  or           s2, t4, a4
                  addi         t0, t0, -2 #update loop 1 counter
                  xor          s3, s8, t5
                  srli         a1, t5, 5
                  sll          t5, a5, a1
                  xori         t2, ra, 566
                  addi         s10, zero, 3 #init loop 0 counter
                  addi         t3, zero, 19 #init loop 0 limit
                  xori         a0, a4, -1210
                  sub          s7, s4, t4
                  srli         t2, ra, 20
sub_5_5_0_t:      and          t6, s2, t4
                  srai         t6, a0, 1
                  slli         ra, a2, 1
                  srli         s9, a0, 27
                  andi         a2, a3, 1503
                  slli         s2, tp, 16
                  xori         a3, a7, 1736
                  ori          s9, t2, 1398
                  addi         s10, s10, 8 #update loop 0 counter
                  andi         a0, ra, -843
                  blt          s10, t3, sub_5_5_0_t #branch for loop 0
                  sra          t5, t5, s2
                  sltu         sp, a7, a6
                  bge          t0, s1, sub_5_5_1_t #branch for loop 1
                  sltiu        s3, a4, -596
                  add          a4, s11, t6
                  slt          t0, t1, s7
                  and          a2, t6, t5
                  slti         s10, a7, -385
                  slt          gp, s8, t0
                  and          t2, a6, ra
                  sra          a7, a6, s4
                  beq          zero, s10, 19f
                  bgeu         s11, s1, 10f
                  xor          a2, t2, s0
10:               srai         sp, t5, 9
                  addi         tp, t1, -839
                  bne          ra, gp, 19f
                  bne          s4, sp, 30f
                  sll          s9, a3, s0
                  lui          sp, 323303
                  auipc        a2, 776702
                  srai         a6, t0, 11
                  andi         a2, s1, -1860
19:               slti         t6, s10, -1202
                  nop
                  ori          t4, t3, 37
                  sltiu        a2, a2, -391
                  slli         s2, s1, 21
                  xori         a2, t1, 28
                  sra          zero, t5, s6
                  sub          s10, a5, ra
                  srl          a7, ra, a6
                  srai         s1, sp, 24
                  slt          t2, s6, s8
30:               sub          s6, s10, t4
                  sltiu        a0, s6, -4
                  bge          gp, zero, 45f
                  beq          s4, t5, 52f
                  nop
                  sltu         t0, ra, t0
                  srl          t3, a6, s3
                  xori         s6, s6, -1626
                  bne          sp, t3, 41f
                  bltu         s3, a3, 49f
                  srli         s11, s10, 18
41:               add          a6, s2, s10
                  lui          t2, 995843
                  xor          sp, a6, t1
                  xori         tp, a5, -1435
45:               srli         a7, t0, 16
                  sltu         s9, s11, s8
                  auipc        s1, 954401
                  bne          s11, s0, 64f
49:               slt          a2, s1, t2
                  or           a0, tp, sp
                  ori          s11, s4, 1973
52:               bne          s9, a6, 56f
                  ori          t3, a6, 954
                  or           s7, s2, a7
                  bge          a0, a5, 69f
56:               slt          t3, a5, s8
                  slti         s6, t3, 165
                  slti         a0, t3, -1719
                  blt          a6, t6, 63f
                  ori          a4, a2, -1232
                  xor          a6, a0, a1
                  or           a7, s1, ra
63:               nop
64:               bgeu         t4, s7, 68f
                  bne          a2, a6, 83f
                  bgeu         s4, s7, 68f
                  bge          s9, t1, 76f
68:               add          s0, s2, t5
69:               slt          a1, s5, s5
                  nop
                  sltiu        zero, a2, 247
                  slti         zero, t0, 849
                  slt          t6, a6, a1
                  nop
                  and          ra, s9, s6
76:               srli         s6, a3, 11
                  srli         t5, t0, 13
                  xori         s10, a5, 1975
                  xori         s6, a3, 1755
                  addi         t0, t5, 1766
                  addi         t0, zero, 473
                  xor          s6, gp, s1
83:               bne          sp, s8, 103f
                  xori         a3, a6, 1548
                  ori          zero, a1, -38
                  and          t4, a5, t1
                  xor          t2, s11, t3
                  andi         s1, t1, 1778
                  srli         s1, t5, 26
                  nop
                  sltu         a0, t3, t1
                  add          ra, t4, a3
                  sll          a6, s3, tp
                  bge          a7, t0, 96f
                  bltu         s0, s0, 108f
96:               sub          t4, s6, a3
                  slli         s6, a4, 11
                  srl          s6, sp, a1
                  sra          a1, t5, a7
                  bltu         zero, s3, 118f
                  sra          s3, t5, a4
                  sll          s9, s10, ra
103:              sub          s9, t1, s10
                  sltiu        t6, s11, -1328
                  srl          s4, t1, t5
                  addi         a6, t6, -1875
                  sltu         a4, s10, a7
108:              sra          t5, s2, s3
                  and          s6, gp, gp
                  bltu         a0, t0, 111f
111:              sra          s6, s4, gp
                  bltu         t6, s0, 117f
                  srl          a4, s5, a0
                  blt          a7, s2, 126f
                  sltiu        a0, s3, -1797
                  slt          zero, a5, a2
117:              auipc        s3, 315449
118:              beq          t1, t2, 132f
                  auipc        ra, 670869
                  xor          ra, s9, s11
                  nop
                  bgeu         s4, a6, 124f
                  blt          t5, a2, 134f
124:              srli         t2, s1, 5
                  bge          s1, s9, 143f
126:              blt          gp, t4, 135f
                  sll          a4, t3, s9
                  or           s3, gp, tp
                  srai         t0, s0, 20
                  nop
                  sra          s0, zero, s7
132:              srai         s4, ra, 21
                  slti         t3, t2, 790
134:              sub          s0, t0, s3
135:              srai         t0, s5, 20
                  slt          a0, a3, a4
                  lui          t5, 828406
                  slli         gp, s1, 22
                  and          s8, t6, s5
                  srli         gp, a6, 3
                  sltiu        a6, t2, -1689
                  xor          t0, s0, t0
143:              xor          ra, tp, zero
                  bge          s2, a0, 151f
                  beq          s5, a3, 154f
                  xor          s7, gp, t5
                  srl          a2, s11, t1
                  srli         a3, s5, 8
                  srli         s10, s4, 21
                  auipc        s3, 246210
151:              auipc        tp, 1029120
                  xor          a3, a4, s4
                  bgeu         t4, s3, 166f
154:              bge          ra, a3, 172f
                  auipc        a2, 34466
                  add          s8, a4, s5
                  nop
                  nop
                  and          a2, s7, sp
                  addi         s7, zero, 2 #init loop 0 counter
                  sub          a6, a7, t2
                  addi         gp, zero, 5 #init loop 0 limit
                  addi         a6, t2, -1725
sub_5_2_0_t:      addi         a4, t6, -1777
                  addi         s7, s7, 1 #update loop 0 counter
                  bne          s7, gp, sub_5_2_0_t #branch for loop 0
                  sltiu        a1, s3, 179
                  bgeu         gp, zero, 174f
                  sltiu        a3, a0, 1764
                  srli         s6, s5, 15
                  bgeu         s0, s9, 170f
                  sll          s10, t5, a2
                  sltiu        zero, s7, 313
166:              slt          s3, a6, a7
                  srli         t3, a3, 22
                  xori         s0, s1, 1543
                  sra          ra, ra, a0
170:              blt          gp, t3, 174f
                  bgeu         s6, zero, 187f
172:              slti         t5, s3, -201
                  xori         ra, s5, -1
174:              sll          a4, t2, s7
                  ori          gp, a2, 1389
                  lui          a0, 1034158
                  addi         s1, ra, 1397
                  xor          a7, t1, s6
                  and          t3, s2, t5
                  xor          ra, s7, s0
                  bgeu         a7, a7, 191f
                  slt          a6, a4, s0
                  beq          sp, s8, 201f
                  addi         s4, zero, 6 #init loop 1 counter
                  addi         a2, zero, 12 #init loop 1 limit
sub_5_4_1_t:      addi         a1, s5, -734
                  addi         s4, s4, 8 #update loop 1 counter
                  add          a7, a2, tp
                  addi         a0, zero, 3 #init loop 0 counter
                  addi         t2, zero, 3 #init loop 0 limit
                  lui          t5, 270376
                  slli         s6, t3, 22
                  sltu         a6, sp, a5
sub_5_4_0_t:      slt          s8, s0, s4
                  addi         a0, a0, -2 #update loop 0 counter
                  andi         s8, t5, 173
                  bgeu         a0, t2, sub_5_4_0_t #branch for loop 0
                  bltu         s4, a2, sub_5_4_1_t #branch for loop 1
                  sll          s7, t3, t2
                  lui          t5, 820965
                  beq          a1, s8, 192f
                  bltu         ra, s7, 191f
187:              bge          a5, s10, 190f
                  bge          t1, s6, 190f
                  bne          tp, a5, 201f
190:              xor          t0, a5, s2
191:              blt          a3, a1, 202f
192:              sltu         s0, gp, a2
                  sra          zero, s2, tp
                  srai         a0, s10, 6
                  lui          s1, 343783
                  or           s11, a6, a4
                  sub          s10, a1, a0
                  srl          sp, a7, a4
                  sub          a6, s0, a1
                  or           gp, t6, s11
201:              slli         sp, s11, 4
202:              xor          s10, s8, a1
                  sltiu        s1, ra, 411
                  addi         gp, zero, 9 #init loop 0 counter
                  addi         t6, zero, 9 #init loop 0 limit
                  xor          t5, sp, a2
sub_5_3_0_t:      andi         t3, ra, 169
                  sltiu        a3, t1, 1512
                  addi         gp, gp, -8 #update loop 0 counter
                  auipc        s8, 711751
                  bgeu         gp, t6, sub_5_3_0_t #branch for loop 0
                  xori         a7, s5, 1836
                  srai         a0, s7, 27
                  bne          tp, a6, 207f
                  and          s1, t6, sp
207:              nop
                  bltu         tp, a1, 226f
                  blt          s1, a5, 228f
                  sub          s6, s1, s5
                  bgeu         a0, s7, 215f
                  bne          gp, s3, 221f
                  beq          s8, t3, 214f
214:              lui          t5, 223729
215:              srl          s8, zero, sp
                  slli         t2, gp, 26
                  lui          s7, 209248
                  bne          a6, s6, 231f
                  sra          ra, s10, a0
                  srl          a3, s9, s1
221:              slli         s1, t3, 15
                  lui          s2, 981212
                  addi         s11, gp, 1160
                  ori          zero, a3, 2023
                  srl          s7, s11, a7
226:              bgeu         s0, tp, 238f
                  ori          s3, gp, 1802
228:              xori         t0, t6, -436
                  auipc        a7, 782785
                  lui          t3, 164921
231:              srl          a7, a3, gp
                  or           a7, t1, a4
                  auipc        a0, 565237
                  andi         a4, s4, -1795
                  bgeu         s9, sp, 255f
                  sub          sp, s4, a2
                  lui          t2, 146767
238:              sra          ra, sp, s11
                  sltu         a7, s8, t6
                  bge          s11, s5, 242f
                  bge          zero, s0, 250f
242:              slti         s0, s5, -1950
                  bltu         s4, t5, 257f
                  srli         t2, s8, 25
                  and          a0, s7, s11
                  lui          s6, 452189
                  slli         s11, gp, 18
                  srai         gp, s2, 9
                  addi         s10, s10, -1330
250:              slt          s11, s6, a0
                  slt          a6, a0, t6
                  lui          t3, 551322
                  slli         s2, s1, 7
                  auipc        sp, 372969
255:              bne          s6, t5, 259f
                  sub          s1, s4, ra
257:              beq          s9, t5, 274f
                  srl          s10, t2, t4
259:              sub          s1, s1, s7
                  auipc        a2, 834855
                  add          s3, t6, t0
                  sltiu        s0, a5, 37
                  lui          a1, 185950
                  srl          s9, s1, sp
                  blt          a6, s4, 267f
                  beq          t4, a4, 275f
267:              srai         s9, s4, 24
                  nop
                  add          a3, tp, a4
                  ori          t4, ra, 342
                  srai         s8, s5, 31
                  bne          s6, s4, 286f
                  slti         s4, a5, 293
274:              sra          t0, zero, a2
275:              bne          t6, a0, 285f
                  srli         a6, sp, 24
                  bne          t5, s3, 289f
                  sra          a6, t2, sp
                  and          a1, s5, s2
                  xori         s11, s9, 76
                  add          s10, a6, s3
                  beq          a5, t4, 301f
                  bne          t4, s10, 287f
                  sltu         gp, a2, a3
285:              ori          s6, t6, -1534
286:              lui          s2, 985768
287:              and          t6, t3, t6
                  srai         a2, zero, 6
289:              sltiu        zero, a4, 751
                  srai         a1, t0, 30
                  sra          s8, s1, a3
                  beq          a0, t3, 295f
                  slt          s1, s5, a6
                  sll          a4, s8, a4
295:              or           a7, s3, sp
                  srai         t2, zero, 6
                  xor          s4, s3, t3
                  bne          t5, t6, 309f
                  beq          s8, t6, 301f
                  sltu         t5, ra, a5
301:              beq          a2, t4, 315f
                  addi         gp, s11, -1299
                  slli         s0, a6, 0
                  bge          s7, a7, 317f
                  bge          s11, s2, 314f
                  and          zero, zero, gp
                  bltu         s11, t3, 309f
                  bge          a2, t2, 309f
309:              slti         s1, t6, 529
                  sub          tp, a5, ra
                  auipc        t4, 605144
                  bltu         s7, s10, 330f
                  sub          gp, a5, s5
314:              xor          t0, gp, tp
315:              sltu         s9, s4, s0
                  nop
317:              lui          a1, 654598
                  srl          sp, t2, s2
                  or           gp, t1, s1
                  auipc        s4, 361297
                  slli         zero, t3, 2
                  bne          tp, a7, 326f
                  andi         s10, s10, 200
                  and          t5, ra, s10
                  sltu         s6, sp, s4
326:              blt          s9, zero, 330f
                  or           a3, s0, s8
                  or           tp, t3, zero
                  or           a0, sp, t6
330:              blt          s9, t5, 334f
                  or           t0, t6, s0
                  slti         s3, a3, -188
                  srai         t0, a2, 20
334:              add          s6, t3, t4
                  sra          a6, t1, a1
                  add          s10, s8, s3
                  srl          s1, s11, t5
                  xor          s4, a3, gp
                  lw           ra, 4(a5)
                  addi         a5, a5, 64
                  andi         gp, t3, -1792
                  sub          s0, a1, s9
                  sll          a2, t5, zero
                  xori         s10, t5, -712
457:              addi x2, x1, 0
457:              jalr x2, x2, 0
sub_4:            andi         s9, gp, 291
                  or           t3, t2, s0
                  add          s8, a4, s11
                  xori         a0, a5, 1751
                  addi         a5, a5, -40
                  sra          s11, s1, a0
                  ori          s3, a6, -1986
                  andi         tp, s6, 217
                  sw           ra, 4(a5)
                  lui          gp, 55357
                  sltiu        s7, s2, -1320
                  and          a3, s6, t5
                  xori         a0, t1, 139
                  sll          s8, s0, t4
                  auipc        sp, 116145
                  sra          t2, a6, sp
sub_4_j5:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  addi         a6, zero, 4 #init loop 0 counter
                  slt          s8, s6, t1
                  addi         t6, zero, -5 #init loop 0 limit
                  xor          gp, a1, t6
                  sltu         s4, t4, s9
                  addi         s6, a3, -1724
                  sll          s11, gp, sp
                  sub          s1, t5, sp
sub_4_11_0_t:     nop
                  addi         a6, a6, -3 #update loop 0 counter
                  or           t0, a5, tp
                  bne          a6, t6, sub_4_11_0_t #branch for loop 0
                  sll          a4, t2, zero
                  addi         ra, zero, 7 #init loop 0 counter
                  andi         t6, s7, 1969
                  sltiu        tp, t0, -172
                  sltiu        a4, a1, 1957
                  srli         s9, s11, 4
                  srai         s8, a5, 18
                  addi         t4, zero, 3 #init loop 0 limit
sub_4_12_0_t:     lui          a4, 949935
                  sltiu        s0, a2, -1679
                  lui          a4, 478409
                  addi         ra, ra, -10 #update loop 0 counter
                  add          s11, t2, s1
                  bge          ra, t4, sub_4_12_0_t #branch for loop 0
                  xor          t5, s2, s8
                  addi         s7, zero, 4 #init loop 1 counter
                  slli         t4, s7, 13
                  ori          zero, s7, 1513
                  srl          s9, zero, s9
                  slli         s6, a5, 17
                  andi         a4, sp, 1134
                  auipc        t3, 546187
                  addi         a3, zero, -10 #init loop 1 limit
sub_4_9_1_t:      addi         a7, a2, -662
                  addi         s7, s7, -3 #update loop 1 counter
                  nop
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         s8, zero, 20 #init loop 0 limit
sub_4_9_0_t:      xor          a6, a2, t0
                  addi         t6, gp, -1595
                  addi         a0, a0, 9 #update loop 0 counter
                  blt          a0, s8, sub_4_9_0_t #branch for loop 0
                  and          s10, a6, s9
                  ori          t5, a5, -1747
                  bge          s7, a3, sub_4_9_1_t #branch for loop 1
                  sll          s9, s8, tp
                  addi         a1, zero, 4 #init loop 0 counter
                  xori         t3, s8, 488
                  lui          s6, 240020
                  slli         t3, a4, 2
                  addi         ra, zero, -4 #init loop 0 limit
                  sub          gp, t0, s1
                  and          s11, ra, s3
                  sll          s9, s3, ra
                  srai         s9, t2, 10
sub_4_2_0_t:      add          s4, s8, t1
                  srli         t6, a2, 20
                  andi         s2, gp, -1443
                  and          a3, a2, s3
                  addi         a1, a1, -8 #update loop 0 counter
                  ori          s4, a7, 1011
                  andi         a0, s4, -876
                  sltu         s1, t6, s3
                  add          t6, s4, zero
                  sltu         t2, s0, gp
                  sll          t6, s10, a1
                  bne          a1, ra, sub_4_2_0_t #branch for loop 0
                  xori         s7, a4, 775
                  addi         a3, zero, 3 #init loop 1 counter
                  addi         s2, zero, -6 #init loop 1 limit
sub_4_8_1_t:      ori          s10, a3, -712
                  slli         a2, t5, 3
                  addi         a3, a3, -3 #update loop 1 counter
                  add          zero, s3, a6
                  addi         a7, zero, 4 #init loop 0 counter
                  addi         t0, zero, 17 #init loop 0 limit
                  xori         s0, gp, -989
sub_4_8_0_t:      sltiu        s8, sp, 923
                  addi         a7, a7, 4 #update loop 0 counter
                  nop
                  blt          a7, t0, sub_4_8_0_t #branch for loop 0
                  sltu         s3, a1, s9
                  slli         a2, t4, 3
                  bge          a3, s2, sub_4_8_1_t #branch for loop 1
                  auipc        t6, 917620
                  addi         s3, zero, 1 #init loop 1 counter
                  addi         s4, zero, -10 #init loop 1 limit
                  or           a0, t6, a3
sub_4_6_1_t:      or           s9, a3, t6
                  addi         s3, s3, -9 #update loop 1 counter
                  addi         s2, zero, 9 #init loop 0 counter
                  addi         s0, zero, 10 #init loop 0 limit
sub_4_6_0_t:      sltiu        t2, s7, 370
                  srl          t3, s8, s9
                  addi         s2, s2, 5 #update loop 0 counter
                  blt          s2, s0, sub_4_6_0_t #branch for loop 0
                  slt          tp, s5, a0
                  sltu         gp, s4, zero
                  or           sp, a0, gp
                  srli         a7, a0, 1
                  bge          s3, s4, sub_4_6_1_t #branch for loop 1
                  slti         ra, s2, 208
                  addi         s4, zero, 10 #init loop 1 counter
                  addi         s2, zero, 10 #init loop 1 limit
sub_4_0_1_t:      auipc        t6, 1011590
                  nop
                  xor          tp, zero, s9
                  addi         s4, s4, -9 #update loop 1 counter
                  srli         zero, a0, 11
                  addi         gp, zero, 10 #init loop 0 counter
                  sub          a1, t2, s11
                  sltu         s1, t1, ra
                  srli         s1, s10, 19
                  addi         t4, zero, 10 #init loop 0 limit
                  sub          a3, ra, t6
                  xori         s8, a1, -1785
                  slt          s9, sp, t6
sub_4_0_0_t:      auipc        s6, 639220
                  lui          t3, 332589
                  lui          s0, 698014
                  sltiu        a2, zero, -616
                  addi         gp, gp, -6 #update loop 0 counter
                  ori          zero, tp, 683
                  or           t2, s5, a3
                  xori         ra, s0, -1197
                  bgeu         gp, t4, sub_4_0_0_t #branch for loop 0
                  addi         ra, t2, 1179
                  addi         s9, gp, -1534
                  and          a2, s10, a0
                  xori         sp, a6, -637
                  xori         a3, a7, 268
                  auipc        zero, 379302
                  lui          a6, 326418
                  nop
                  lui          s0, 222486
                  bgeu         s4, s2, sub_4_0_1_t #branch for loop 1
                  add          zero, ra, t6
                  addi         sp, zero, 10 #init loop 1 counter
                  slli         a4, zero, 26
                  and          gp, s8, gp
                  sub          ra, s9, t1
                  addi         s11, zero, 7 #init loop 1 limit
sub_4_1_1_t:      andi         s10, s6, 1970
                  sra          t0, s3, s5
                  addi         sp, sp, -2 #update loop 1 counter
                  sll          a2, s6, s11
                  addi         s9, zero, -7 #init loop 0 counter
                  sltu         a1, t5, a5
                  addi         s8, zero, 5 #init loop 0 limit
                  slt          a1, a2, s3
sub_4_1_0_t:      sltiu        zero, s11, -732
                  sra          a1, sp, a1
                  sltu         s3, t0, t2
                  slt          tp, a5, a4
                  sll          ra, t0, s7
                  slli         a3, ra, 8
                  addi         s9, s9, 3 #update loop 0 counter
                  bltu         s9, s8, sub_4_1_0_t #branch for loop 0
                  sltiu        a0, zero, 232
                  bgeu         sp, s11, sub_4_1_1_t #branch for loop 1
                  sltu         t0, t3, s1
                  addi         s4, zero, 5 #init loop 1 counter
                  addi         gp, zero, 4 #init loop 1 limit
                  slti         tp, sp, 1434
sub_4_3_1_t:      xor          t3, ra, s2
                  addi         s4, s4, -1 #update loop 1 counter
                  addi         t5, zero, -5 #init loop 0 counter
                  addi         a0, zero, -17 #init loop 0 limit
                  sltiu        s9, a1, 1473
sub_4_3_0_t:      nop
                  addi         t5, t5, -8 #update loop 0 counter
                  sltiu        s6, t1, 938
                  bge          t5, a0, sub_4_3_0_t #branch for loop 0
                  bgeu         s4, gp, sub_4_3_1_t #branch for loop 1
                  sltu         a7, a4, s6
                  srai         a1, s5, 8
                  auipc        a6, 606236
                  xori         t6, ra, -938
                  xor          a4, t1, s3
                  xor          s6, s3, a2
                  sltu         sp, s6, t2
                  slli         t6, a4, 20
                  sub          t0, s7, a5
                  srli         t5, a3, 27
                  and          t5, t0, s11
                  bge          zero, ra, 13f
                  bne          t5, t4, 17f
                  bltu         a5, a7, 21f
13:               sra          t5, sp, s7
                  addi         s2, s6, 1248
                  lui          a7, 114871
                  and          s11, ra, s8
17:               andi         s6, a6, 1142
                  slt          sp, s0, s5
                  andi         t0, a1, 1351
                  srli         s4, a5, 9
21:               ori          t5, s4, -1389
                  slt          sp, a4, s10
                  sltiu        s0, a7, 1073
                  slli         a3, tp, 10
                  blt          s6, a2, 37f
                  slt          a3, s3, s10
                  sltiu        a1, a2, 343
                  sll          tp, a1, t0
                  xor          t5, a0, t6
                  bltu         s4, t0, 43f
                  sll          t3, a1, s9
                  slti         s7, a2, -924
                  ori          a2, sp, -179
                  bne          s4, t1, 49f
                  slti         s8, t4, 1387
                  bltu         a7, s1, 44f
37:               blt          s6, t1, 49f
                  addi         s3, gp, 1033
                  auipc        ra, 498875
                  nop
                  slti         s1, t5, 1647
                  andi         a6, a7, -308
43:               sltiu        s9, gp, -1778
44:               bgeu         s8, zero, 53f
                  sub          s0, a3, t3
                  and          a4, a3, s6
                  slli         s2, s10, 30
                  ori          s9, t3, -1519
49:               bltu         a5, t3, 68f
                  slli         s3, a2, 23
                  beq          s7, s5, 62f
                  bge          t0, s2, 54f
53:               add          ra, sp, s4
54:               auipc        s11, 379331
                  nop
                  slti         t6, ra, -1689
                  and          tp, t3, t2
                  bltu         s1, s1, 70f
                  ori          t2, a4, 138
                  and          sp, s1, tp
                  bltu         t2, t4, 76f
62:               auipc        a1, 900226
                  lui          s4, 827138
                  xor          sp, s8, t0
                  nop
                  slti         a3, sp, -647
                  addi         s9, s9, 1158
68:               add          sp, a1, s1
                  sltiu        a0, t2, 1305
70:               srl          a6, s6, gp
                  addi         a6, zero, 365
                  lui          t5, 930692
                  auipc        s8, 357843
                  addi         s11, zero, 2 #init loop 0 counter
                  addi         s8, zero, 0 #init loop 0 limit
sub_4_10_0_t:     lui          zero, 665037
                  or           s2, s2, t1
                  addi         s11, s11, -9 #update loop 0 counter
                  bge          s11, s8, sub_4_10_0_t #branch for loop 0
                  ori          a0, a4, 1405
                  and          s11, s8, s8
                  beq          s4, s1, 92f
76:               srai         a6, s7, 21
                  srl          t6, s3, s5
                  srl          t5, t4, s4
                  lui          s4, 339958
                  and          tp, s4, t3
                  sll          s4, s9, a2
                  and          s0, s10, t5
                  bltu         tp, s5, 95f
                  sra          t5, t6, sp
                  auipc        s1, 827348
                  xori         s1, a1, -1216
                  beq          a3, tp, 89f
                  bgeu         s9, gp, 93f
89:               sltiu        a6, s2, 1192
                  blt          sp, s2, 106f
                  bge          zero, a3, 98f
92:               bne          s4, s4, 98f
93:               nop
                  auipc        a6, 1040069
95:               bgeu         s4, gp, 101f
                  bgeu         s8, ra, 102f
                  auipc        zero, 133260
98:               bltu         t0, a7, 106f
                  add          s6, s4, t6
                  xori         t2, s5, 2008
101:              beq          s11, t6, 119f
102:              ori          s2, a5, -1068
                  lui          a3, 52001
                  xori         gp, gp, -1309
                  andi         a0, gp, 126
106:              xor          t0, s2, sp
                  bltu         s0, s2, 125f
                  sub          gp, s4, a7
                  srli         zero, s1, 21
                  sll          a7, gp, tp
                  lui          t0, 395600
                  sra          s11, t0, t3
                  sltiu        s8, t1, -302
                  sltiu        a0, s9, -1476
                  srli         a0, a6, 14
                  bne          s5, t1, 129f
                  addi         t4, t1, -1976
                  auipc        a1, 974198
119:              srai         ra, s3, 5
                  and          s2, s4, a6
                  or           sp, s7, a4
                  or           a1, s1, t6
                  sltu         zero, s11, s6
                  slli         t3, a2, 12
125:              slli         a3, a0, 28
                  andi         t0, s6, 837
                  xori         sp, a3, 97
                  sll          a2, sp, a4
129:              sltiu        ra, a6, 1531
                  nop
                  nop
                  slli         s2, s1, 3
                  srli         sp, t5, 0
                  xori         a7, a1, 1682
                  and          s0, a6, t6
                  or           s9, s1, s7
                  sll          a1, sp, tp
                  nop
                  addi         t5, t3, -1085
                  sub          t6, zero, ra
                  auipc        t4, 595880
                  xor          s1, a0, t6
                  bgeu         t5, t6, 151f
                  slti         a2, t3, -1936
                  sltu         s9, t6, a4
                  bge          s7, ra, 162f
                  sltiu        t4, s1, 189
                  bne          a0, a1, 166f
                  slli         ra, t2, 29
                  bge          t6, s5, 163f
151:              nop
                  sltu         s0, t5, s0
                  add          t5, s1, s3
                  sll          a0, t5, a1
                  and          s2, s8, s8
                  add          s4, t2, t3
                  bgeu         s5, a3, 163f
                  or           a6, a6, a4
                  slli         s7, s2, 7
                  bne          a4, t1, 168f
                  slti         a6, s0, 481
162:              andi         t2, s0, 1157
163:              xori         a7, s0, -1690
                  xori         s2, s10, 1537
                  bgeu         s4, a7, 177f
166:              or           a1, s7, a3
                  slti         a7, t6, -1188
168:              sltu         s11, ra, t3
                  sra          s7, a2, gp
                  slt          s8, t2, t1
                  blt          a7, a4, 173f
                  xori         s9, t6, -887
173:              lui          a2, 1040399
                  andi         a4, tp, 1446
                  add          a4, gp, gp
                  blt          t0, s7, 184f
177:              beq          s2, s0, 182f
                  add          zero, s1, s3
                  srai         a3, a4, 31
                  srl          t2, ra, a6
                  add          t6, s2, tp
182:              slli         t2, s7, 28
                  sll          a0, s5, s6
184:              sltu         sp, gp, s5
                  slli         t4, s5, 27
                  srai         a4, s8, 28
                  slt          a0, s5, a1
                  sltiu        s4, zero, 1484
                  and          s6, s10, s0
                  add          s7, t3, t5
                  lui          s3, 787085
                  xori         t0, t6, 1020
                  addi         s10, s4, -697
                  auipc        sp, 997514
                  ori          sp, t4, -767
                  beq          a0, s7, 211f
                  beq          s3, tp, 206f
                  sltu         s10, s0, a6
                  andi         a0, zero, 1535
                  bltu         a0, zero, 209f
                  bltu         t0, s1, 217f
                  add          a7, gp, t2
                  slt          a6, s5, ra
                  beq          a0, t1, 217f
                  sltu         s0, a4, a7
206:              sll          s9, s9, s1
                  add          s11, t1, t3
                  or           t5, a0, s8
209:              bge          s0, a6, 215f
                  srl          t3, a1, t2
211:              ori          s0, a2, -1438
                  slti         s4, a4, 582
                  lui          a3, 1004148
                  slti         s0, sp, -1685
215:              and          ra, a3, s7
                  and          sp, a6, t5
217:              sltu         t3, tp, a0
                  andi         tp, t1, -196
                  nop
                  srl          a2, sp, s6
                  sub          t0, s9, a2
                  blt          s1, t3, 234f
                  xori         a7, s0, 579
                  bne          s9, gp, 235f
                  add          a1, t0, s2
                  ori          tp, a5, 436
                  auipc        a7, 980721
                  nop
                  slli         a1, t6, 1
                  slti         t0, s0, -2034
                  bltu         s10, t4, 237f
                  add          s7, s4, t6
                  or           s6, a3, t0
234:              xori         t5, ra, -1211
235:              slti         s0, t1, -216
                  blt          a6, t0, 255f
237:              or           t4, zero, gp
                  auipc        t2, 344587
                  ori          t2, a5, 1716
                  sra          s11, s2, a3
                  andi         t4, t2, 1163
                  sll          s8, t1, t0
                  sltiu        t3, a5, -562
                  addi         gp, a3, -915
                  xori         gp, gp, -1200
                  beq          s10, t4, 258f
                  slt          t5, s5, s10
                  bne          t3, a3, 263f
                  andi         s0, a1, -990
                  andi         a7, zero, 642
                  sub          s4, s7, s10
                  and          t3, s1, s6
                  slli         s4, s9, 24
                  nop
255:              or           t4, s10, t3
                  addi         s4, zero, -4 #init loop 0 counter
                  addi         sp, zero, 1 #init loop 0 limit
sub_4_13_0_t:     or           t0, s5, s1
                  and          zero, t4, s2
                  addi         s4, s4, 5 #update loop 0 counter
                  srai         s8, t1, 29
                  bne          s4, sp, sub_4_13_0_t #branch for loop 0
                  sll          s3, t5, s6
                  blt          sp, s3, 258f
                  bgeu         s2, s4, 273f
258:              srai         zero, a2, 26
                  slli         ra, s0, 2
                  addi         t2, t1, -432
                  lui          s6, 981916
                  auipc        t5, 574162
263:              bne          s3, tp, 269f
                  sltiu        ra, tp, -1412
                  or           a6, s11, a5
                  srli         a6, t2, 8
                  bge          t4, gp, 279f
                  srai         ra, zero, 14
269:              ori          gp, s1, -382
                  sub          tp, t5, t1
                  slt          a0, a0, s9
                  nop
273:              auipc        a3, 757107
                  or           s9, s9, s4
                  bge          s6, s8, 292f
                  bltu         t2, s0, 279f
                  srl          s6, t6, t0
                  addi         s9, s5, -2036
279:              sra          zero, sp, t4
                  sltiu        sp, a4, 1004
                  blt          a4, s11, 299f
                  auipc        zero, 133175
                  lui          s11, 528330
                  beq          t3, t0, 302f
                  bge          a4, t1, 303f
                  slti         s2, s5, -1724
                  srl          s2, s10, t6
                  bltu         s7, s4, 295f
                  ori          s6, t4, 822
                  sltiu        s4, t1, 19
                  add          t0, s5, s0
292:              sltu         t4, tp, t4
                  srli         t2, s3, 26
                  andi         gp, s1, 2040
295:              or           s4, gp, s3
                  slli         a4, t6, 6
                  nop
                  srai         s4, tp, 5
299:              ori          a4, zero, 1688
                  srai         t2, t6, 27
                  andi         a0, s11, 666
302:              srai         s9, s2, 2
303:              bge          t4, t2, 311f
                  sub          s9, s6, s5
                  add          s8, a2, a3
                  beq          s6, s9, 315f
                  slti         s10, tp, -1641
                  nop
                  xor          t6, s7, a5
                  auipc        s10, 138810
311:              sub          t4, a7, t4
                  sltu         a4, s0, sp
                  bgeu         sp, s6, 316f
                  sltu         a6, t1, s1
315:              srli         t3, s9, 26
316:              sub          a1, s7, a5
                  sll          s10, s4, s10
                  slti         t6, a3, -1829
                  sll          s1, t5, sp
                  ori          s4, a6, 1502
                  bne          a0, a1, 336f
                  bltu         a1, a1, 328f
                  xori         ra, s6, 690
                  or           a1, a3, t2
                  bge          t1, s4, 333f
                  or           a1, s0, s2
                  blt          a4, s7, 334f
328:              bgeu         s1, s10, 333f
                  and          gp, tp, s8
                  lui          s7, 650801
                  slti         t6, t3, -1135
                  and          a2, t2, s6
333:              nop
334:              blt          s10, t6, 352f
                  sltiu        s9, ra, 224
336:              slli         a2, t2, 27
                  or           t0, t1, a0
                  add          s7, s1, a0
                  addi         t2, zero, 8 #init loop 0 counter
                  slt          s9, ra, s4
                  addi         s8, zero, 8 #init loop 0 limit
                  slt          a4, t4, s4
sub_4_5_0_t:      andi         s4, a1, -1255
                  addi         t2, t2, -7 #update loop 0 counter
                  and          a4, a0, s7
                  srli         t0, a2, 19
                  bgeu         t2, s8, sub_4_5_0_t #branch for loop 0
                  slli         s10, s2, 2
                  xor          s10, t4, s8
                  and          s6, zero, s6
                  beq          t5, s6, 353f
                  srl          t3, a4, a1
                  bge          gp, s0, 359f
                  srl          gp, sp, ra
                  auipc        s0, 938764
                  or           t4, s5, s10
                  xori         a4, t2, 1439
                  sltiu        t5, a1, -901
                  add          s3, a1, t3
                  beq          gp, t1, 363f
                  or           s9, s3, t1
352:              or           s7, t2, a7
353:              sub          tp, t2, s2
                  ori          s7, s9, 517
                  lui          a6, 1024478
                  add          a0, s6, zero
                  addi         a6, s2, 220
                  or           s6, t0, a4
359:              sll          s7, t6, s11
                  addi         t5, t2, -1699
                  lui          s3, 178566
                  add          a2, a5, s8
363:              and          s4, a5, gp
                  sltu         t4, a3, a0
                  xor          s3, t6, a6
                  bgeu         a1, t2, 381f
                  blt          s5, a7, 375f
                  andi         ra, t3, 76
                  bltu         s4, s9, 387f
                  sra          t0, a4, ra
                  xor          a2, s7, s11
                  bge          t5, a2, 385f
                  sra          t3, t3, s1
                  sltiu        a1, t4, 190
375:              srai         s1, tp, 16
                  beq          a1, t1, 378f
                  sra          s0, s4, tp
378:              slti         a6, gp, -949
                  add          s11, a6, a4
                  sra          ra, a3, a3
381:              or           t2, s7, t1
                  bge          t3, t1, 393f
                  auipc        s6, 356241
                  auipc        s4, 23688
385:              slli         s11, a3, 25
                  beq          t6, t4, 404f
387:              xor          t0, a0, t6
                  bge          t5, s7, 407f
                  andi         s11, s7, 871
                  andi         ra, a5, -547
                  bne          a0, t6, 397f
                  or           s4, s0, t0
393:              sra          s6, ra, s0
                  beq          t2, s0, 402f
                  sltiu        t0, s0, 1795
                  bltu         a1, ra, 408f
397:              slli         s0, s10, 15
                  blt          s2, a1, 404f
                  sltiu        a4, s5, -1977
                  sub          t2, zero, t3
                  bgeu         s4, s4, 403f
402:              beq          a5, s5, 418f
403:              sltu         t5, s7, a1
404:              nop
                  slt          zero, s5, sp
                  nop
407:              slt          t0, gp, s5
408:              bltu         s9, a3, 414f
                  lui          s6, 665323
                  nop
                  addi         s8, t4, -1274
                  auipc        s9, 53723
                  add          gp, s10, sp
414:              srli         s7, a0, 4
                  srai         t6, a7, 14
                  sltiu        t4, s3, 1670
                  nop
418:              bne          s0, t4, 430f
                  sltu         tp, gp, t1
                  bne          a4, a1, 429f
                  auipc        a7, 246297
                  bgeu         t0, s6, 434f
                  ori          gp, ra, 1832
                  slt          t0, s0, t1
                  sll          s3, t1, gp
                  srai         t2, a0, 3
                  auipc        s2, 572432
                  xori         s10, t1, -1289
429:              add          a2, s5, s10
                  addi         s6, zero, 7 #init loop 0 counter
                  srl          a7, a4, gp
                  andi         s7, t4, -2037
                  srl          a4, a0, t5
                  add          s8, s8, a0
                  srl          zero, sp, a4
                  addi         ra, ra, -1993
                  add          s9, gp, ra
                  addi         a2, zero, 8 #init loop 0 limit
sub_4_4_0_t:      sltiu        zero, a5, 421
                  slt          t5, s4, t5
                  auipc        s3, 76676
                  srli         t2, ra, 24
                  addi         s6, s6, 1 #update loop 0 counter
                  slt          t4, t6, s9
                  nop
                  ori          s11, s3, 1630
                  slli         t0, s6, 8
                  slt          t6, a4, t0
                  slti         s2, sp, 543
                  sll          a6, t4, s8
                  sub          t0, t0, a6
                  lui          s7, 1026190
                  addi         t4, s3, 631
                  sub          a3, a5, a6
                  sll          t5, tp, s4
                  sll          s8, zero, s0
                  xori         a3, s7, -1541
                  bltu         s6, a2, sub_4_4_0_t #branch for loop 0
                  slti         a1, a1, -1859
430:              slt          t3, gp, s9
                  and          a4, s9, s2
                  sub          s9, s6, a3
                  sll          a6, t0, t6
434:              add          s7, t3, s6
                  sll          tp, a6, t5
                  addi         sp, t2, -1285
                  ori          t3, t2, -1707
                  xori         s9, s11, -1731
                  auipc        t2, 853386
                  bltu         a2, a3, 457f
                  beq          t3, s8, 452f
                  slti         s8, s6, -1968
                  bge          zero, a0, 446f
                  blt          s10, a6, 451f
                  and          t4, sp, zero
446:              bgeu         s0, t5, 458f
                  srli         s8, s10, 16
                  sltiu        s2, s11, -1095
                  srli         s10, a0, 2
                  xori         t0, a0, 1540
451:              lui          a7, 688231
452:              or           sp, tp, a0
                  bgeu         sp, a4, 465f
                  slt          sp, sp, s7
                  srai         t6, s3, 5
                  addi         a4, s2, -1488
457:              and          s11, a1, a2
458:              xori         a1, s10, 1802
                  bge          ra, s0, 474f
                  or           t0, s7, a3
                  sll          s10, a5, s11
                  sltu         s2, s7, t3
                  slt          s1, t6, s10
                  bne          a1, t2, 477f
465:              lui          gp, 292713
                  sub          s10, s0, s2
                  lui          s10, 485769
                  and          t2, t2, a0
                  sll          a6, a0, s11
                  xori         t0, s6, -717
                  srai         gp, s1, 8
                  nop
                  lui          s2, 816540
474:              sll          a4, s11, a5
                  bne          a0, s1, 493f
                  sra          t0, a3, s4
477:              and          a1, ra, ra
                  bne          s8, a3, 484f
                  srli         s4, s2, 27
                  add          t6, t4, t2
                  or           s9, sp, s9
                  blt          t0, sp, 495f
                  slli         gp, s3, 14
484:              slti         gp, a3, -1895
                  sll          zero, a2, t3
                  srai         s10, s2, 18
                  slt          s0, s3, s10
                  srl          zero, t3, s8
                  addi         t6, s1, 556
                  nop
                  add          t6, tp, s6
                  slli         t5, s2, 21
493:              slli         s4, t3, 9
                  slti         t2, s1, 1711
495:              srai         a7, s9, 9
                  auipc        s11, 345667
                  or           t4, s6, zero
                  addi         a1, s9, -623
                  nop
                  bge          zero, t6, 509f
                  bge          s4, s4, 509f
                  xor          a4, s0, tp
                  srl          t2, s4, a1
                  and          s9, a1, t6
                  sltiu        t4, t5, -2003
                  sltu         gp, s2, t2
                  sub          a1, s1, t1
                  xor          s7, tp, t4
509:              blt          s0, t2, 514f
                  sub          gp, s9, s5
                  add          a2, t1, t3
                  slti         s9, a0, 190
                  blt          s6, t2, 519f
514:              slt          t0, a6, t0
                  xor          a4, a3, a0
                  nop
                  xor          t4, a7, tp
                  add          t5, s4, t4
519:              andi         s9, a0, -573
                  slt          zero, t0, a0
                  addi         ra, sp, -1929
                  srl          s9, a2, a0
                  xor          ra, s0, t5
                  or           t4, s3, tp
                  slt          a3, s2, a3
                  sub          s3, a4, sp
                  sra          s6, t5, a3
                  bltu         t3, s2, 546f
                  srai         a0, t5, 23
                  sub          a4, ra, gp
                  blt          a1, t1, 546f
                  nop
                  slli         s9, a4, 29
                  sra          t2, t3, s2
                  slt          a1, s9, t5
                  slli         a7, a4, 30
                  addi         s9, a6, 20
                  bgeu         t0, t3, 546f
                  sra          a6, a3, zero
                  add          a6, t3, a1
                  nop
                  addi         gp, zero, 5 #init loop 0 counter
                  sltiu        zero, t5, -1262
                  andi         t4, a7, -1037
                  slt          s3, s4, a7
                  srl          s9, s7, a0
                  srli         a3, gp, 19
                  and          s6, t3, t4
                  addi         a6, zero, 5 #init loop 0 limit
                  xori         t5, s8, 1144
sub_4_7_0_t:      sltiu        t3, t1, -542
                  addi         gp, gp, -1 #update loop 0 counter
                  srai         a1, t3, 7
                  sub          s7, s1, a6
                  add          ra, s11, a0
                  sra          a2, a7, a3
                  sub          t6, s9, a6
                  sll          a3, s8, a2
                  sra          s3, s3, a7
                  sltu         s8, s5, s8
                  addi         a2, ra, -509
                  sra          s6, s1, s4
                  sll          t4, a7, s5
                  andi         s3, s5, 1246
                  slti         s10, a3, 547
                  sra          t2, tp, ra
                  slli         a4, a1, 30
                  xor          s1, a1, t4
                  srli         a4, a4, 9
                  bgeu         gp, a6, sub_4_7_0_t #branch for loop 0
                  xor          t0, t3, s11
                  srai         sp, a6, 21
                  or           a6, t6, tp
                  slt          t0, s11, zero
                  slt          a7, s9, a0
546:              and          ra, s7, s0
                  sll          gp, s1, s11
                  beq          t2, s2, 557f
                  auipc        t3, 165410
                  lui          t6, 930560
                  sra          t3, a2, a3
                  add          s0, s2, zero
                  blt          s9, t4, 555f
                  bgeu         s8, gp, 556f
555:              sltu         t0, s11, s8
556:              srli         s3, t5, 16
557:              addi         a6, s10, 1198
                  bgeu         s4, t4, 564f
                  xor          s1, s5, s6
                  xori         s10, t5, -1492
                  sltu         s8, tp, t6
                  srli         zero, a5, 23
                  srli         a1, s11, 1
564:              andi         ra, tp, 2007
                  slti         s2, s6, 1339
                  xori         a3, zero, -874
                  bne          s2, s11, 586f
                  xori         t0, s5, -596
                  bge          t5, s1, 577f
                  blt          s7, s4, 586f
                  slti         t5, tp, -1267
                  bltu         s0, ra, 578f
                  sub          ra, s3, s2
                  slli         a2, s7, 31
                  slli         s1, s4, 1
                  sra          a4, s9, s3
577:              xor          tp, a6, a3
578:              sra          s1, s7, sp
                  srai         a1, s11, 21
                  andi         s4, t2, 1924
                  bge          zero, s4, 597f
                  add          a0, s0, s2
                  blt          a2, a0, 601f
                  and          tp, a5, t0
                  auipc        s8, 538054
586:              srli         t3, a1, 19
                  bne          t3, s7, 599f
                  auipc        s0, 102825
                  blt          s10, s2, 606f
                  bne          a4, a6, 602f
                  beq          a1, s8, 609f
                  nop
                  blt          s8, t6, 595f
                  andi         s4, a4, 1529
595:              add          zero, a1, sp
                  srli         t0, s11, 11
597:              add          t0, ra, t3
                  sltiu        s6, a4, 1336
599:              add          s8, a0, t0
                  addi         t4, s11, 1090
601:              blt          t4, s10, 613f
602:              lui          s7, 274191
                  addi         ra, a1, -1607
                  add          t5, s5, sp
                  srl          zero, s6, a1
606:              srli         t0, zero, 17
                  slti         a1, a2, -186
                  blt          s1, s10, 614f
609:              sub          s1, s6, s3
                  sra          a2, s6, s10
                  xor          s1, s8, t4
                  beq          s11, s0, 631f
613:              bne          t6, s5, 621f
614:              sra          t6, t4, gp
                  beq          t3, t6, 630f
                  srl          t3, tp, a3
                  sltu         a4, s2, t1
                  xori         t4, sp, -1092
                  sll          a7, s7, ra
                  srl          t2, t0, a4
621:              slt          gp, t5, sp
                  add          s1, ra, s9
                  bgeu         s4, tp, 639f
                  auipc        a0, 382547
                  sll          t5, s6, s7
                  sub          t0, a2, a7
                  sub          s8, s4, s4
                  bgeu         a1, t0, 637f
                  sltiu        s9, s1, 1337
630:              slt          ra, s0, s8
631:              nop
                  srli         s4, s6, 16
                  nop
                  beq          tp, s10, 641f
                  slti         t3, ra, -32
                  blt          t1, ra, 638f
637:              lui          ra, 370884
638:              sra          s11, s7, a4
639:              sltu         a3, s4, a4
                  sll          s11, s11, ra
641:              blt          s11, t0, 649f
                  sltiu        s7, t4, 1702
                  auipc        t4, 1024298
                  bltu         t4, s0, 656f
                  beq          gp, s7, 650f
                  bltu         s9, t3, 659f
                  bne          t4, s5, 653f
                  bge          s0, t2, 651f
649:              andi         s9, zero, 664
650:              sltu         s3, s0, s3
651:              xor          s7, s6, sp
                  slli         a6, t4, 8
653:              xori         s8, a2, 1043
                  and          sp, a1, sp
                  sub          t3, t3, a7
656:              slti         t5, s7, -825
                  slti         a1, t0, 2017
                  bgeu         a0, t5, 675f
659:              srli         s7, t2, 19
                  sltu         t5, t5, s7
                  sll          s6, a1, ra
                  beq          tp, s9, 674f
                  srl          sp, t6, a4
                  xori         a7, t4, -1968
                  sll          t3, s11, s2
                  slli         a3, t5, 0
                  slt          a2, s1, s10
                  xori         zero, t0, 656
                  andi         t2, a1, 505
                  lui          s8, 6835
                  lui          s9, 753658
                  blt          t4, s8, 680f
                  sltu         a3, ra, s0
674:              lui          sp, 903612
675:              sll          a2, s6, a7
                  nop
                  sltu         zero, s6, a2
                  xor          s6, a4, t3
                  and          t5, a2, a7
680:              sub          t2, a4, s0
                  addi         sp, a1, -1155
                  srai         s7, a5, 12
                  slli         tp, t1, 6
                  auipc        s6, 583313
                  slti         a2, a5, -1555
                  srai         sp, t1, 7
                  slli         a1, sp, 15
                  or           a1, a3, a3
                  or           s10, a0, s7
                  srai         s9, s9, 7
                  andi         a6, s0, 600
                  xori         tp, s4, -244
                  slti         a6, s0, -1008
                  srl          ra, s11, a7
                  blt          sp, s8, 706f
                  xori         t4, a5, -1423
                  auipc        t6, 379115
                  bge          s0, t1, 706f
                  slt          s8, s3, t5
                  or           s8, s4, s6
                  xori         tp, t0, 937
                  srai         a6, s7, 25
                  bne          s6, t1, 706f
                  srai         ra, t6, 13
                  auipc        t4, 867504
706:              srl          zero, a5, s10
                  srl          s9, a7, s1
                  or           a0, s8, a1
                  lw           ra, 4(a5)
                  addi         a5, a5, 40
                  srai         tp, t2, 31
991:              addi x10, x1, 0
991:              jalr x10, x10, 0
sub_2:            slli         t6, t3, 7
                  sra          s11, t5, zero
                  addi         a5, a5, -60
                  slti         s10, s9, -986
                  sra          a2, s8, t6
                  sw           ra, 4(a5)
                  add          s0, s6, a0
                  add          a2, s2, a1
                  sltiu        t5, s4, -1976
                  or           s8, a4, s4
                  xor          s3, t6, s7
                  bne          a7, zero, sub_2_j3 #branch to jump instr
                  slli         s0, s5, 6
                  auipc        sp, 870659
                  addi         a0, s7, 1818
                  xori         t6, ra, 1262
                  xor          a1, s3, s5
sub_2_j3:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  addi         t2, zero, -4 #init loop 0 counter
                  and          s11, s1, s4
                  sll          a1, zero, a2
                  and          s2, t4, s9
                  sub          s4, sp, t6
                  add          a7, a4, tp
                  sltiu        t5, ra, -510
                  lui          ra, 222074
                  andi         zero, a0, -452
                  sltiu        s4, t1, -278
                  nop
                  slli         s4, a4, 20
                  addi         s1, zero, 7 #init loop 0 limit
                  srli         sp, s0, 8
                  addi         s0, t1, 405
                  sll          sp, s10, s8
                  sltu         s8, t4, t3
                  slt          t5, s10, s8
sub_2_0_0_t:      andi         s11, a7, -843
                  sub          tp, gp, t6
                  srai         s2, tp, 22
                  slt          s2, s7, s3
                  andi         a2, s2, 1231
                  lui          t0, 276752
                  addi         t2, t2, 1 #update loop 0 counter
                  add          sp, a4, s11
                  and          zero, s9, sp
                  addi         s9, s10, -1160
                  bltu         t2, s1, sub_2_0_0_t #branch for loop 0
                  addi         a7, t3, 570
                  srai         t3, t1, 18
                  and          s11, t4, a3
                  blt          ra, t2, 8f
                  add          a2, a2, s3
                  sltiu        a6, s9, 417
                  sub          s3, a6, t1
                  slt          s0, a3, a5
                  beq          zero, ra, 19f
8:                bgeu         t4, s11, 16f
                  blt          a1, zero, 13f
                  bgeu         t6, t5, 14f
                  srli         t6, a3, 15
                  slt          s4, a0, gp
13:               xori         s2, s11, 102
14:               sltiu        a1, a4, 1714
                  auipc        ra, 126312
16:               sltu         s10, s8, s3
                  srl          t2, a1, s5
                  or           s2, a7, a2
19:               bltu         a3, t6, 36f
                  or           s2, ra, a3
                  ori          s1, s1, -700
                  slti         t5, zero, -1742
                  bge          a2, s7, 38f
                  addi         s7, a4, -1889
                  blt          s5, s5, 28f
                  slt          a6, zero, t5
                  sub          t4, s2, s9
28:               andi         a0, s8, 1545
                  nop
                  xor          t6, zero, s4
                  srli         a1, s4, 12
                  bge          s0, s4, 34f
                  beq          zero, s11, 52f
34:               ori          s3, t0, 1382
                  xor          s8, s2, s0
36:               xori         t3, t2, 988
                  sra          zero, a4, t5
38:               bltu         s7, tp, 43f
                  bgeu         a7, t1, 43f
                  xor          s11, s9, s8
                  srai         a4, s8, 10
                  nop
43:               sub          a0, a1, a7
                  srl          s2, t3, s11
                  slt          a6, t0, s6
                  blt          zero, s4, 51f
                  bltu         gp, t6, 63f
                  sub          a6, a4, s4
                  sra          s1, a2, s9
                  sltu         s0, sp, a2
51:               sll          s8, s3, t3
52:               srli         tp, s3, 10
                  nop
                  and          s4, t2, s7
                  beq          zero, s8, 64f
                  sra          a6, t3, a2
                  sra          gp, a0, s5
                  slti         a7, t0, 1717
                  andi         t4, t0, -1776
                  sltu         s0, tp, t1
                  srai         t5, t4, 1
                  slli         gp, t6, 7
63:               nop
64:               addi         a3, s2, 32
                  xori         t5, gp, 1099
                  srai         s10, a6, 20
                  andi         a3, sp, -1795
                  xor          s9, tp, t3
                  sltu         t6, a5, s1
                  nop
                  beq          s11, zero, 85f
                  nop
                  slti         sp, s6, 1449
                  srli         t2, sp, 8
                  bltu         s11, t3, 76f
76:               sltu         s0, a6, a3
                  slt          s10, t2, gp
                  srai         s0, s8, 29
                  sll          s7, sp, s5
                  bge          a1, a3, 86f
                  xori         s2, s10, 1149
                  lui          tp, 960866
                  beq          t3, s8, 86f
                  slt          s7, t3, zero
85:               sll          zero, a2, t5
86:               slt          a3, s9, a3
                  ori          s1, s8, 596
                  lw           ra, 4(a5)
                  lui          gp, 25877
                  addi         a5, a5, 60
                  slli         t2, s9, 7
140:              addi x28, x1, 1
140:              jalr x28, x28, 0
sub_3:            sub          a1, t2, s6
                  ori          s1, s6, 901
                  sll          s1, a3, a5
                  add          s11, a5, a4
                  sltiu        zero, a5, -1139
                  addi         a5, a5, -40
                  sub          s1, s11, gp
                  lui          t2, 141478
                  sw           ra, 4(a5)
                  add          s1, s4, a0
                  sltu         a1, a5, t0
                  blt          a4, t5, sub_3_j4 #branch to jump instr
                  xori         t6, a4, -595
                  srai         a4, s0, 24
                  srai         s10, a2, 28
                  sll          s4, s3, t4
                  xor          ra, s11, t2
                  addi         t4, a4, 1297
                  sltiu        s8, t4, 355
                  and          s6, t2, zero
sub_3_j4:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  slt          a7, sp, a7
                  ori          a3, a2, -873
                  xor          s1, tp, s4
                  bne          s3, a6, 8f
                  auipc        a0, 386029
                  beq          zero, a5, 8f
                  auipc        a6, 643313
                  sll          s2, s0, a3
8:                slt          a7, s3, s9
                  sltu         zero, s8, s1
                  lw           ra, 4(a5)
                  or           t4, s2, a0
                  addi         a5, a5, 40
                  sltu         t0, t4, t1
                  srai         gp, s7, 19
                  sltu         tp, s8, a6
                  sltiu        a6, ra, 357
38:               addi x31, x1, 0
38:               jalr x31, x31, 0
sub_1:            addi         a5, a5, -8
                  or           t6, a7, t2
                  slt          a2, t6, t2
                  xor          t0, a0, a7
                  sltiu        a7, a1, 557
                  sw           ra, 4(a5)
                  lui          a0, 242946
                  andi         s11, s11, 1002
                  lui          s1, 112588
                  ori          t3, s9, 263
                  xor          t3, t2, s1
                  slti         t6, a0, 485
                  srai         s8, ra, 21
                  srai         s11, s10, 8
                  blt          sp, s0, 9f
                  srli         s4, t2, 13
9:                srli         s10, s7, 31
                  or           ra, s1, sp
                  slti         a7, gp, -536
                  sra          a0, s1, ra
                  lw           ra, 4(a5)
                  sltiu        s0, a7, 652
                  addi         a5, a5, 8
                  slt          s1, s10, a6
                  sltiu        t3, a2, 482
25:               addi x7, x1, 0
25:               jalr x7, x7, 0
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
.word 0x8d675fbe, 0xa230600e, 0x7fcd7de9, 0xf8648192, 0xd5498cc0, 0x7e43b7f3, 0xbf5e0e59, 0x6a0b870a
.word 0x0887787d, 0x1583d1d7, 0x56f5d2f6, 0xdd6557c4, 0x806e9dfb, 0x3940f7e6, 0x67e337e6, 0xba00e7d6
.word 0x06820b64, 0x90894892, 0x8c9f5a22, 0x8cfded07, 0xf1fce006, 0xdebc1151, 0x8003a7f9, 0x9272aa86
.word 0xb6172d9f, 0x20896c23, 0xecf07023, 0x00f0ad94, 0x87a01ad9, 0x54a58b6e, 0xac21e487, 0x3366f3c4
.word 0x5d7b28d6, 0x789aed6d, 0x22f57665, 0x1705f9fe, 0x0f8a4b85, 0x0f6cc6cc, 0xe0a44eb4, 0x481fd2b1
.word 0x82370b69, 0xb9f589ad, 0xc35a5851, 0x675cd2ba, 0x52403aae, 0xbfba61d2, 0x42ebe6e1, 0xc5e16a91
.word 0xcf153653, 0x75ac258b, 0x0b0d2603, 0x1cb6911b, 0x042cf0d5, 0xaa0a6696, 0xc3b65c7f, 0xf3b69c01
.word 0x653c80b6, 0x4d0b4397, 0xe211d859, 0x6a8e1ca4, 0x93421c8d, 0x8b3c3daa, 0x7ec2590c, 0xb9f8b910
.word 0x8c3b436a, 0x0b5106bd, 0x78bd05da, 0x097280e6, 0xe79974fb, 0x6c9b8f57, 0x3bcfcda5, 0x074cd46b
.word 0x8d9d6206, 0x29cbec5b, 0xd2cd07da, 0x3df45478, 0xd7c267c0, 0x1d8f24d5, 0x20b0fc0f, 0x6c939ab2
.word 0x936d22c0, 0x0768a214, 0x60d55258, 0x7c0fa1ca, 0xf0c7f79f, 0x2a571e39, 0x6194510b, 0x5b755c8e
.word 0xd417627a, 0x6fca9b4b, 0xbafc6086, 0xfc03257f, 0x06898c3e, 0x3f311019, 0x75f79d32, 0xd3d21791
.word 0x94690c43, 0xeb08793b, 0x1953c2dd, 0x0da3686a, 0x14441076, 0xd7004b83, 0xcec2fe35, 0x671a59e2
.word 0xc82b1295, 0x835f0eb2, 0x8377cc5a, 0x0ecdeeaf, 0x9a6d520c, 0x4ab21d50, 0xc0a669ac, 0xe451cbfc
.word 0xc688b289, 0xcd60243f, 0x4d4b498e, 0x7f637054, 0x2cc867f6, 0x6c771468, 0x0155fc3b, 0x989256d2
.word 0x3f220c01, 0x75a461b0, 0xe830ea39, 0xe1e6b52c, 0x0373474f, 0x6d502813, 0xce295982, 0x0255a8ce
.word 0xc830bd6b, 0xf1132f1f, 0xfdfe3fb0, 0xbf46faba, 0xe76e742c, 0xc3ad15d6, 0xea18fd66, 0x392aa206
.word 0x713f479f, 0xb1b51859, 0xa54c8eec, 0xad6fc7a2, 0x84c887cd, 0x64c22485, 0xec6f9286, 0x6f9f835a
.word 0x39c3a8dd, 0xc6633a96, 0x7a1513be, 0xd69cf50c, 0xd1234e05, 0x4787771e, 0xbdff5361, 0x61573dea
.word 0x5ec69c43, 0x479a95a6, 0x21f35dd3, 0x3182c6e1, 0xcc4fac16, 0xe9c8241c, 0xf5f6b596, 0x3a31f6ad
.word 0x9aad5bff, 0x649a8c78, 0x8bf01e50, 0x0a8df1c0, 0xd63987ea, 0xd2b26484, 0x5dd9581f, 0x1e6433be
.word 0x25ad1c6c, 0xed643750, 0xd00d5ad4, 0x1e1587bf, 0xe2a4f91b, 0x6d048b75, 0x789d35ad, 0x361b99d0
.word 0x254970c3, 0x1804e7ec, 0xc4a7e167, 0x1c66c36b, 0xa342599d, 0x69db4883, 0xe40c6569, 0x5b574410
.word 0xd0dfbc68, 0x79b0bf13, 0xddb5bfef, 0x18bb9c79, 0xba1472ee, 0x123e84b8, 0x0bb16866, 0xf8c4d4c8
.word 0xda9a0329, 0xd60e46ff, 0x96b2e5ff, 0xc1a388b6, 0x667273e8, 0x71e4328a, 0x6a502a48, 0x6ae6752f
.word 0xff7a9561, 0xd1925fb2, 0x4a0994a4, 0xac1705b9, 0x1b245f4a, 0x482293e3, 0x6eb4c282, 0xf3a7e18e
.word 0x5d4d611a, 0xac76d476, 0xb2f81c0d, 0xae3beb4d, 0xba8d1589, 0xb715a5bb, 0x410fabe1, 0x9bdb6739
.word 0x1370cdb4, 0x3e029568, 0xe91087da, 0x65ea11dd, 0x239c9619, 0x0eeb3988, 0xf0604300, 0x2133531e
.word 0x457625e4, 0xc10fb395, 0xa7f0519a, 0x2b58e896, 0xd0bb4434, 0x50608df3, 0xccee76dd, 0x569112bc
.word 0x5e14e0a8, 0x7ec4dba2, 0xcbd75ccd, 0xa5227d16, 0x500735a2, 0xeebc674c, 0x08c2ee2a, 0x06d14255
.word 0x68b6c97c, 0x1486d9b3, 0x11f18195, 0x85c62847, 0x5956602b, 0xfcc474f4, 0xdd6c5ad5, 0x430e50eb
.word 0xc3272ab5, 0xe3567de0, 0x1aa52465, 0x0959041f, 0x66371af7, 0x9cc39121, 0xc5fe2424, 0x91f856a6
.word 0xdc18629c, 0x2b9b6a43, 0xd22910f6, 0xdb26e957, 0xd1622ff8, 0xe5d7027a, 0xbbb37a3d, 0xccd9fd46
.word 0x64930ae0, 0x44454098, 0x388ea86d, 0xe78935ea, 0x9209f942, 0xadb4a56b, 0xc2471e23, 0x30ed2006
.word 0x632cb44c, 0x901a3b82, 0xed48e0b9, 0xa2940014, 0x5ac3610b, 0x1d7f12dd, 0x16d7a897, 0x924bc88f
.word 0xd22e66ac, 0xaab3b162, 0xb1593741, 0xe7dc36db, 0x0fc4947c, 0xda9b36a4, 0x3191dc9d, 0x68faf450
.word 0xf236ba8e, 0x3732805f, 0x190f29d6, 0x995e5e51, 0xbe218f68, 0x16255616, 0x08081a4d, 0x2b1f9e5b
.word 0xe74fd36b, 0x92ee2b7f, 0xdc24b087, 0x17895872, 0xe9d94a00, 0x2e6bb832, 0x61f8145f, 0x6250cdca
.word 0x5b148307, 0x8c3c5591, 0xc35d62fc, 0x270c8871, 0xf7155cd2, 0xad8795d3, 0x7cbfe4b9, 0x24d87d89
.word 0xf29e3683, 0xbb678d72, 0x45553f2a, 0xf7dbeb35, 0xff6ee019, 0xb57d8cfe, 0x8b02384e, 0x00209b01
.word 0x3c311472, 0xa1f59a71, 0x43727e2d, 0xcabe050f, 0x14aabe2b, 0x31e7b105, 0xfcaba34e, 0x7f616a62
.word 0x20eaeb68, 0xfdb8d1c0, 0xc88ed33c, 0xebf0fdcc, 0x9a69b298, 0x9d5aabec, 0x5bf05a8a, 0x2d639c5e
.word 0xd6348501, 0x08c98445, 0x6bafeb81, 0x14efa0ef, 0x9eb52439, 0x83ff479b, 0xd77c1fb7, 0x34c74691
.word 0x0d736a3b, 0x0ed5303b, 0x9b3620a6, 0x0dd41dfd, 0x836d921f, 0x375cecf8, 0x1088abf1, 0x5c83e146
.word 0x8c0601fd, 0xdfe7c8b9, 0x6f6681ee, 0xf07c867f, 0xc0cfd02a, 0xd901f373, 0x0f2a133d, 0x06778796
.word 0xecc3bf06, 0xe9d18dbd, 0x0c1539eb, 0xc95b47d4, 0x03008bbd, 0x3e1f4517, 0xa5bd8194, 0x501ef76f
.word 0xe83ca28c, 0xd605ca5a, 0x4bc40d66, 0xd39b7f06, 0xa04b4d94, 0x67705d7e, 0x4a7f51fb, 0xd0b01cb8
.word 0x42c944a1, 0x7ad45edf, 0x745a0bab, 0x1ad1633a, 0x3c30d903, 0x11b3f54f, 0xc640da8c, 0xe1f6277f
.word 0xdf7afc85, 0x09f69c1c, 0xd4221b74, 0x39efa36f, 0x83acbe85, 0x89baba36, 0x09e7f96e, 0xe5ea97b5
.word 0xc3fa32bf, 0x5d07853d, 0xb5d9108e, 0x3b487c82, 0x77939e58, 0x8b62eaab, 0xde3e9c44, 0xa7fa0b03
.word 0xc0991393, 0xe3e1528b, 0x0f52d919, 0x090d7f86, 0x2a007c12, 0x68365409, 0x470c8569, 0xa793dce6
.word 0xff085d4b, 0x17ef5a5e, 0x7c852a0c, 0x66777bdd, 0x4b7c2ffe, 0x5225e45d, 0xd0ce52de, 0x7389739b
.word 0xa2c7254f, 0xa3bc7abb, 0x6d2e4bef, 0x3c13dc58, 0x40cd65ed, 0xaa089f7b, 0xf92c51c6, 0xce943b97
.word 0xf320fdb6, 0x7f1ad48a, 0x56ecd82f, 0xfa6e8cb1, 0xdde85604, 0xac73a751, 0x1d9d8602, 0xbee78957
.word 0x19cac054, 0xe95562c5, 0xfb0d0077, 0x97c15383, 0xdf1af132, 0x690cf658, 0x283761e9, 0xdc893e8c
.word 0x9297d5c2, 0xfb0b0849, 0x82707d5d, 0x47d32a00, 0x871b333f, 0xed26099e, 0x8b6fae39, 0x046c4582
.word 0x28aa12b6, 0x21b2d6ad, 0x71ce23b7, 0x2e568f71, 0x3aa32439, 0xc0e8645c, 0x8936f5d7, 0x3ce5adef
.word 0x7235636a, 0x8a2c9fe1, 0xeee91ee4, 0x24ce0a6b, 0xbf2c3b7f, 0x4b369d17, 0x52281ee6, 0x400c0deb
.word 0xa22429a2, 0x4e507194, 0xc1fb68da, 0x78822394, 0xae81f53c, 0xa2ae7806, 0xba388123, 0xca22fe68
.word 0x9b01f21a, 0x48f80712, 0x0d08dc15, 0xec0dcb73, 0x223b2b78, 0xa3ffcab0, 0x7e587d89, 0xe48d502a
.word 0x094eeda9, 0xb73f6145, 0x1ddfb01a, 0xa7c6cd49, 0x570a7a33, 0x65c33a96, 0x48be9d6a, 0x68ac50f7
.word 0x2183ab9f, 0x8107792d, 0xe8282603, 0x55deb7c8, 0x2a6dd2d4, 0xf8be7ca9, 0xa4956c40, 0x5bc7604d
.word 0x597cd5a5, 0xf2f2ebcb, 0x3456c412, 0x15300ceb
.section .region_1,"aw",@progbits;
region_1:
.word 0xc77de7f4, 0x835ad373, 0x726d7284, 0x40fa3f0f, 0xda465d07, 0xb357b0d6, 0xc91b1fc7, 0x97aecca5
.word 0x01c900a6, 0x7f0d95db, 0x1ebc4cba, 0x70792b49, 0xf0ae4afa, 0x23772983, 0xc9323e17, 0x4fd2084e
.word 0x5f326e3e, 0x65659172, 0xc502bcec, 0xa4372461, 0x23a873fe, 0x566e0074, 0x871a3e58, 0x09448a2a
.word 0xf76d9e1c, 0x4bdcd58c, 0x88672465, 0x53ab1a8c, 0xc4883aaf, 0xe78b0edd, 0x45a69554, 0x70b743dd
.word 0xde3e7fb8, 0x43854af3, 0x26c5185c, 0x6b63758a, 0xa83001a3, 0xca0fc7ef, 0x697407b2, 0xe59c4a17
.word 0x65cd0f29, 0x1ad2cf17, 0x35aabd61, 0x5d89157a, 0x44317c10, 0xd6a1464d, 0xd53c83a0, 0xd8626487
.word 0xe840b3e0, 0x8515afe8, 0x7bccdf7f, 0x9fc0e459, 0x1a4fc33a, 0xbeaa206e, 0x3385df6b, 0xfff4e37a
.word 0x595084d9, 0xd3e8c3a7, 0x79d0941c, 0x96b5c760, 0x7a56fca9, 0x52c5ac9e, 0x63dbd094, 0x8d6945ac
.word 0x1cff8398, 0x98df2386, 0xac36d7c8, 0x72274c82, 0x2354611a, 0x373e9598, 0xf8015081, 0x9bbd60a3
.word 0xeae35848, 0x5ba87a9c, 0x2ba7d1bd, 0x5f3c22e2, 0x94a74545, 0x7c68967a, 0x9c0efff2, 0xbdfead2c
.word 0xb3805a28, 0xbcf45f67, 0x96a5ccdc, 0x224daa2f, 0xd942d9ee, 0x022438cb, 0x24094504, 0x71adebdb
.word 0xf18982a7, 0xf7ebd28d, 0xca340904, 0x1107d8dc, 0xe65932f2, 0x6dbeb36f, 0xe001aba2, 0x5f2c6a51
.word 0x9b8a5ecb, 0xf624c2ab, 0x2ac0889e, 0xa4c2778d, 0x1ea6d491, 0xf3231e8c, 0xed643003, 0x3f3d4156
.word 0xf4521923, 0xc6ebbdfa, 0x290095c4, 0x005c4580, 0x42a253d2, 0xcf46658b, 0x79a248da, 0x8f7fc60a
.word 0xbd23fb2b, 0x9a005b0f, 0x47e1916b, 0x258025fe, 0xd501b9e1, 0x13a50c0d, 0x22a11261, 0xf963b02f
.word 0x588922a1, 0x9fe3faee, 0xfc508deb, 0x031e0693, 0x9c9d1446, 0x155810f6, 0xe6bb6b2f, 0x60d951ac
.word 0xee1614b7, 0x650b6e0f, 0xf473669a, 0xbc50da5c, 0x348200fd, 0x083b0f17, 0x2475470a, 0xdc5265db
.word 0x603fe0a7, 0x170fb236, 0xed64b212, 0x08e103b5, 0x605937a0, 0x5873bcfe, 0xfc4d1536, 0x96f358b1
.word 0x7245bd31, 0x6305f01c, 0x744fbf9c, 0x72533187, 0x575c1049, 0x05fb4f8a, 0x6045aa73, 0x0dc09d7a
.word 0xfb610a08, 0xd764904b, 0x61a933f1, 0x61f9e238, 0xb042866c, 0xfb5ef06d, 0x5a8e220b, 0xaf9de838
.word 0x0d1d3fe7, 0x66af6424, 0x9a97adcd, 0xc14c4564, 0xdd890d51, 0x683758e6, 0xa632549e, 0x6d825429
.word 0xe70976e3, 0x44888057, 0x6c144118, 0xa4a8ed58, 0xc17bf21e, 0xc1799701, 0x39015f3f, 0xbc175b05
.word 0x360a4797, 0xb9f6ee24, 0xb5bda16d, 0x0161a887, 0xf24597eb, 0x23d8c201, 0x17500e79, 0x735fb9fd
.word 0x556a0b01, 0x3421d37d, 0xd4e2b8ee, 0x6b073dfb, 0x855794e2, 0xb3480a9e, 0x8da6b702, 0xefbe4454
.word 0x571fa030, 0xcb31d12d, 0x5e32996b, 0x67b5097f, 0x4811d370, 0x0a451881, 0x828f2002, 0x72695184
.word 0xb42c3c20, 0xd8517dc8, 0x4d392fd0, 0x13798878, 0xc40e63e2, 0x3c58a8c2, 0x4150c062, 0x64f77e17
.word 0x3c4f9e9a, 0x19bcb8e7, 0x7c816490, 0x25c58f63, 0x3a1f877e, 0x4c20de21, 0x2c90db9f, 0xab92f7b3
.word 0xede87265, 0x1652de27, 0x62171751, 0xf236f2f7, 0x5205dbd1, 0xc825ec57, 0xabb8e0d4, 0x618a6041
.word 0x16cc6e45, 0x4f5b24be, 0xc08568a2, 0xcc4d7b0b, 0x9d57d069, 0x08419dee, 0x93ddbebd, 0xb5186b43
.word 0xb7946982, 0x96a78a71, 0x1163fcb6, 0x1d26ed8b, 0xd2e1de43, 0x04a35a6f, 0x7887da81, 0xd31cebb9
.word 0xed0a3670, 0xb8f7bbeb, 0xb408717c, 0x42f38864, 0xd3557ede, 0x07ce8251, 0xb3115bf8, 0xf1e98ff7
.word 0xec2ac2e8, 0x99c5e6cf, 0x39f502f3, 0x00a6763f, 0x772f93d0, 0x7d629e84, 0x62422369, 0x78f96475
.word 0x70aa2480, 0xf4996b48, 0x23e3fa1b, 0xad075cda, 0x93fa40bc, 0xdab34ea1, 0x8fc79de8, 0x41411818
.word 0x1915fe92, 0x965b2ee0, 0xe4efe474, 0x883cfdd9, 0x8a96e373, 0xa1c2157e, 0x683355a6, 0x6839003a
.word 0xe81a7407, 0xd4369f98, 0xa580c68b, 0x86ef366d, 0x93bb8732, 0x21feef57, 0x33cf9916, 0x6b1227f6
.word 0xbcb121f4, 0x313a3015, 0xcccfab59, 0xe0a03a9c, 0xafab312f, 0xee06d3dc, 0x8ea3a3f2, 0xa67daf57
.word 0xd184baa4, 0x656bf41f, 0x88e6aa00, 0x98c8aa56, 0x67836d44, 0xe590edcc, 0xc7064e43, 0xa5efb967
.word 0x5d4a3f2f, 0x1f2abc14, 0xb92bd229, 0x7f26e716, 0x882b0341, 0xe2a1e133, 0x8e9134fa, 0x0ed29c41
.word 0xf1c31506, 0x0d1cd053, 0x424df6d6, 0xc53f43b6, 0x720d23c2, 0xa81c0a03, 0xc87d8dd7, 0x99d7998d
.word 0x7d5b9c99, 0x860de78f, 0xa6c6b2d6, 0xa5eb4c76, 0x07f24255, 0x178ceef7, 0x3870c1cb, 0x01a27144
.word 0x96afd7ea, 0xfc5b7022, 0xab16aad7, 0xf47f1bcf, 0xd2071969, 0x3e326380, 0x58847956, 0x80dfb163
.word 0x24eb3493, 0xa83a2f3c, 0x22d43ede, 0xad3c556e, 0xbeb52372, 0xb260506a, 0x66a84bb1, 0x180ada42
.word 0xe75c27ba, 0xc7dcd585, 0xff5f160e, 0xb5972ba0, 0x9231e246, 0x6c7075dc, 0x68b4d0d0, 0x3430aed1
.word 0x95518daf, 0x75e7a653, 0x1fadd055, 0x36f1b2c4, 0x8f914db9, 0x8450cec4, 0xc48ba38d, 0x08910b3f
.word 0xda1a378d, 0x6c9311d6, 0xb05de19e, 0x7248769c, 0xa5e0650a, 0x6929b904, 0xbd6b10be, 0x0f9a4a6c
.word 0xca972f86, 0xac8aa4f9, 0x18ddc2d2, 0x781d0e24, 0x8a66ca82, 0xa0ba67db, 0x34e55595, 0xa19d4cfd
.word 0x6233ddd8, 0xf90e0c0a, 0x095c77cd, 0x946158b1, 0xf6ab4fd1, 0xe563af7b, 0x2334c96d, 0x4b060d6d
.word 0x8455dd32, 0xc5795b42, 0x7c0ed5df, 0x05ea4304, 0x1b477da4, 0x4163f70c, 0xfba9b3ab, 0x896e2c37
.word 0x200cd0c0, 0x36011e79, 0x111708eb, 0xcee4e9e6, 0x1b359b36, 0xc89d9c81, 0x9cf1e16c, 0xe1e8f9ad
.word 0xfc716f8f, 0x631c4fad, 0x5a9aeb45, 0x4c4f39ad, 0x4cae9c5e, 0xa212696e, 0x6440780c, 0xb1d7a8b5
.word 0x06cb64b6, 0x10b2cb54, 0x3866426d, 0x189169bb, 0x90ea5bba, 0x07be88b2, 0x611fb58e, 0x252fc200
.word 0x9e5dd502, 0xc5f021f7, 0xe369969b, 0xb72cae86, 0xf63389d4, 0xaae8eb25, 0x36490dd5, 0xa0186330
.word 0x11f46d6d, 0xb543301c, 0xf0dd1823, 0x87e19a66, 0xa98bb6a6, 0xbb4e1053, 0xae9f9524, 0x7a3e2d31
.word 0xdc5fd117, 0xcaf22c5d, 0x7965ae2d, 0x2eff2663, 0xf149b5b4, 0xc02ee1e9, 0x89406be6, 0x6d27611c
.word 0x117bc04b, 0x52c6620a, 0x7a94ff4a, 0x02776e3a, 0xd7938af6, 0x40341e0a, 0x2c3577f8, 0xd44fa369
.word 0xc77cae70, 0x00d36be7, 0xf251f50a, 0xb6043960, 0x5b40ec13, 0xb702059d, 0xeda39dac, 0x0df57400
.word 0xe88fd7ab, 0x1dd4adef, 0xd4c18c7c, 0x8c55cd6c, 0x50563bde, 0xe663b0a3, 0x9d8a2850, 0xc4b93415
.word 0x6bc609f3, 0xc58999c8, 0xcbf02121, 0x1fe65e4b, 0xccb0f67f, 0x478812d0, 0xed61a217, 0x3473d705
.word 0xb221d3ca, 0xf227d2da, 0xcdba05f4, 0x61061e91, 0xb9929083, 0x5d401c8f, 0x62869528, 0x77daceea
.word 0x807b3608, 0xd8e8c4f2, 0xc6a5b196, 0xb6eecf35, 0x885e867f, 0xcab05240, 0x256b2fb5, 0x19e981cd
.word 0x4b8e6ad2, 0xb9dc5ed3, 0x6bf06221, 0xb033945d, 0x8fac5a9f, 0x858e25b3, 0xbf192039, 0x678977d9
.word 0x3f5d699e, 0x501ddccd, 0xb6ed9d72, 0x3e17c62c, 0x2e9ce3c2, 0x9e413379, 0x703dfa78, 0x664f3935
.word 0xf32e338d, 0x07cc3e46, 0xbc23b548, 0xc9eacea0
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_2:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_3:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_4:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_5:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_6:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_7:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_8:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_9:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_10:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_11:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_12:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_13:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_14:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

mmode_intr_vector_15:
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
                  add x21, x15, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x6, test_done
                  jalr x0, x6, 0

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
                  add x21, x15, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x26, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x26, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x26, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x26, x2, ecall_handler
                  li x2, 0x1
                  beq x26, x2, instr_fault_handler
                  li x2, 0x5
                  beq x26, x2, load_fault_handler
                  li x2, 0x7
                  beq x26, x2, store_fault_handler
                  li x2, 0xc
                  beq x26, x2, pt_fault_handler
                  li x2, 0xd
                  beq x26, x2, pt_fault_handler
                  li x2, 0xf
                  beq x26, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x15, x21, zero
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
                  add x15, x21, zero
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
                  add x15, x21, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x15, x21, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x15, x21, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x15, x21, zero
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
