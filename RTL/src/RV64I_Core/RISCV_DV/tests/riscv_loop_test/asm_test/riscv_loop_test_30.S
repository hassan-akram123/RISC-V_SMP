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
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0xcd4b4969
                  li x1, 0x0
                  li x3, 0x80000000
                  li x4, 0x7bfe1ffe
                  li x5, 0xf51c465a
                  li x6, 0x2ba6560
                  li x7, 0x0
                  li x8, 0x7
                  li x9, 0xa
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xfdc9fb89
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x3
                  li x16, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xf689e50d
                  li x20, 0xf43a7b23
                  li x21, 0x9420b503
                  li x22, 0x5
                  li x23, 0xfdb68d69
                  li x24, 0x80000000
                  li x25, 0xfe4a92fd
                  li x26, 0xd3ef9505
                  li x27, 0xd34f8be4
                  li x28, 0xc3278635
                  li x29, 0x4e58be5
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x2, user_stack_end
main:             andi         s4, a1, 987
                  slti         a6, s5, 1813
                  sub          t0, t6, t5
                  slt          s0, s9, s0
                  la           a1, sub_4
                  srl          s5, t5, t3
                  addi         a1, a1, -874
                  slli         t3, t1, 28
                  sra          t0, t4, zero
                  slli         a4, a1, 1
                  andi         s9, s9, 1809
main_j3:          jalr         s0, a1, 874 #jump main -> sub_4
                  or           s6, s3, s4
                  sra          s3, gp, t6
                  xori         s3, zero, -245
                  la           a6, sub_5
                  sltiu        tp, ra, 315
                  slti         t3, s2, -1334
                  addi         a6, a6, -105
                  add          t2, s0, ra
                  bne          sp, gp, main_j4 #branch to jump instr
                  nop
                  sub          t6, s2, s8
main_j4:          jalr         s0, a6, 106 #jump main -> sub_5
                  addi         t3, zero, -10 #init loop 1 counter
                  sltu         s2, a1, s3
                  sub          a4, a3, s9
                  sltiu        a1, s7, 287
                  addi         s3, zero, 2 #init loop 1 limit
                  xori         t4, a3, 570
                  sll          ra, a4, t4
                  slli         a6, t4, 20
main_1_1_t:       xori         s2, s4, -268
                  addi         t3, t3, 6 #update loop 1 counter
                  nop
                  addi         s10, a3, -767
                  addi         t0, zero, -9 #init loop 0 counter
                  slti         s9, t6, 695
                  addi         a2, zero, -18 #init loop 0 limit
main_1_0_t:       xori         a4, t2, 1087
                  addi         t0, t0, -3 #update loop 0 counter
                  slt          s0, s11, a3
                  slti         t5, t0, 1457
                  andi         a4, a4, 1326
                  beq          t0, a2, main_1_0_t #branch for loop 0
                  sra          s10, s11, a6
                  xori         a0, t6, 636
                  blt          t3, s3, main_1_1_t #branch for loop 1
                  sub          s4, t3, s4
                  addi         a4, zero, 0 #init loop 0 counter
                  slt          t3, t1, a7
                  nop
                  addi         a6, zero, -9 #init loop 0 limit
                  nop
main_0_0_t:       and          a2, tp, a1
                  slli         ra, s8, 21
                  addi         a4, a4, -9 #update loop 0 counter
                  srai         s9, s7, 10
                  srai         t3, t6, 10
                  sra          a2, gp, t4
                  bne          a4, a6, main_0_0_t #branch for loop 0
                  or           s7, s6, a7
                  addi         s8, zero, 2 #init loop 1 counter
                  addi         s1, zero, 20 #init loop 1 limit
main_5_1_t:       add          a4, t6, s4
                  ori          s0, t0, -551
                  or           ra, t5, a5
                  xor          s5, zero, a1
                  or           s2, ra, t1
                  slti         t5, a7, 455
                  addi         s8, s8, 9 #update loop 1 counter
                  sll          t2, t4, t4
                  slt          t3, s6, t1
                  addi         s3, zero, -4 #init loop 0 counter
                  srl          t0, tp, a5
                  sltiu        s11, a3, 1116
                  addi         a1, zero, -16 #init loop 0 limit
                  lui          s2, 16627
main_5_0_t:       xori         t3, s7, -1436
                  add          a2, sp, a5
                  lui          t4, 620924
                  sll          a6, a2, a0
                  addi         s3, s3, -2 #update loop 0 counter
                  bne          s3, a1, main_5_0_t #branch for loop 0
                  slti         a6, s5, -125
                  sub          a2, gp, s7
                  blt          s8, s1, main_5_1_t #branch for loop 1
                  andi         gp, t6, 717
                  addi         s4, zero, 10 #init loop 1 counter
                  addi         s8, zero, -17 #init loop 1 limit
main_4_1_t:       and          s0, s5, s0
                  nop
                  addi         s4, s4, -3 #update loop 1 counter
                  addi         t0, zero, 2 #init loop 0 counter
                  addi         t2, zero, 20 #init loop 0 limit
main_4_0_t:       auipc        t3, 829708
                  addi         t0, t0, 9 #update loop 0 counter
                  slt          t3, s5, s6
                  beq          t0, t2, main_4_0_t #branch for loop 0
                  bne          s4, s8, main_4_1_t #branch for loop 1
                  andi         t5, a5, 396
                  add          a2, t0, a7
                  sltiu        t0, s3, -1737
                  lui          s0, 52779
                  bgeu         s10, s5, 9f
                  lui          t5, 364400
                  slti         t3, s9, -1302
                  bge          t4, a4, 20f
                  slti         t1, tp, 126
                  slti         a5, s9, 903
9:                bne          tp, t0, 29f
                  slti         s4, t6, -591
                  addi         t1, s7, 292
                  sub          s4, s0, s9
                  sltu         s8, a0, s5
                  slti         t3, t5, -1489
                  or           s3, gp, t2
                  ori          s7, s8, 373
                  sub          s9, ra, s9
                  sltu         ra, s0, a7
                  lui          a6, 219809
20:               sub          t5, s0, t3
                  sra          s5, s11, s7
                  srl          s7, a2, a6
                  lui          tp, 971630
                  bge          s1, s6, 27f
                  slli         t5, a6, 16
                  srl          s1, s10, zero
27:               blt          t0, a2, 42f
                  srai         s3, tp, 20
29:               srl          t6, zero, t0
                  sltu         gp, a1, s11
                  srai         zero, gp, 29
                  bgeu         s10, a5, 41f
                  andi         t4, t5, 1128
                  xor          t5, s0, t6
                  and          s9, s2, tp
                  slli         s9, s9, 31
                  lui          s8, 675331
                  slli         s5, s0, 8
                  beq          a1, a1, 55f
                  auipc        s6, 986329
41:               and          a1, t0, a1
42:               sll          t2, s6, tp
                  bgeu         t0, s11, 60f
                  addi         s11, zero, -10 #init loop 1 counter
                  addi         tp, zero, 15 #init loop 1 limit
main_3_1_t:       lui          s8, 168932
                  addi         s11, s11, 1 #update loop 1 counter
                  srai         zero, a3, 7
                  addi         a4, zero, -5 #init loop 0 counter
                  sra          a2, sp, s8
                  addi         s2, zero, -18 #init loop 0 limit
main_3_0_t:       sltiu        a5, s4, 1181
                  addi         a4, a4, -6 #update loop 0 counter
                  bge          a4, s2, main_3_0_t #branch for loop 0
                  xori         a2, t3, -416
                  auipc        t6, 666119
                  blt          s11, tp, main_3_1_t #branch for loop 1
                  srai         ra, a0, 9
                  blt          a4, s4, 53f
                  addi         s6, t4, -1786
                  andi         s2, a4, -1426
                  sra          t3, s6, zero
                  blt          a0, s9, 60f
                  la           t0, sub_2
                  slt          gp, a6, sp
                  nop
                  xor          s4, a3, a4
                  nop
                  slti         t6, a0, 278
                  addi         t0, t0, 692
                  srl          s9, t2, s3
                  xor          s11, s10, s5
main_j5:          jalr         s0, t0, -691 #jump main -> sub_2
                  sltu         s1, t2, s8
                  auipc        t3, 704789
                  srli         s1, a4, 22
                  sll          s3, s9, s7
53:               beq          s7, s11, 59f
                  srl          s6, t5, t0
55:               or           t4, s10, s8
                  slli         tp, s3, 18
                  slt          s7, s8, tp
                  xor          s11, a0, s11
59:               slti         s1, s3, -1343
60:               srli         s9, s1, 30
                  addi         s9, t5, -1293
                  xor          ra, a5, a4
                  slli         a2, s3, 17
                  xori         s8, s8, 304
                  and          ra, gp, t0
                  slli         s3, s7, 18
                  andi         s6, s9, -805
                  bltu         tp, t2, 70f
                  sra          s8, t2, t6
70:               sltu         s11, s9, s9
                  sltu         a2, ra, s8
                  addi         a4, s0, -1288
                  ori          s10, t1, -300
                  xor          t6, s6, gp
                  and          a2, s7, s8
                  la           t1, sub_1
                  xor          zero, s8, s3
                  auipc        ra, 530244
                  addi         t1, t1, 932
                  or           a6, t5, t0
                  srai         s10, s7, 20
                  slt          a2, s8, a5
                  sltu         s7, a5, a2
main_j1:          jalr         s0, t1, -932 #jump main -> sub_1
                  addi         t2, a5, 867
                  bltu         s10, s2, 77f
                  sub          s5, t6, a2
                  bltu         a5, s2, 87f
77:               srai         s4, a2, 29
                  srli         ra, s9, 18
                  and          t2, s5, a1
                  slli         zero, s1, 12
                  slli         s7, a0, 9
                  sra          zero, s3, a2
                  srli         s2, a5, 18
                  add          s0, a2, a2
                  xor          a2, t5, s9
                  lui          ra, 71938
87:               srl          t4, s7, s3
                  slli         t1, a1, 4
                  slt          a5, ra, t1
                  srl          s10, s9, s5
                  bne          s11, t6, 111f
                  lui          a5, 672909
                  slt          s4, t0, t1
                  lui          t0, 810087
                  nop
                  sub          zero, s1, gp
                  addi         a2, ra, 407
                  ori          s9, gp, 382
                  srai         tp, zero, 2
                  bge          gp, s4, 114f
                  sra          t0, t2, t2
                  blt          a1, s8, 104f
                  srl          t5, t5, t4
104:              sub          s2, s7, a2
                  sra          a2, t0, zero
                  sub          t4, s6, a5
                  ori          s3, a1, 1105
                  bltu         s2, t3, 110f
                  addi         a4, t5, 625
110:              ori          s9, s5, -149
111:              and          a4, ra, t0
                  sltiu        a0, s5, 738
                  sub          s4, t6, s6
114:              xori         a2, s6, -1
                  srai         s7, t5, 22
                  bltu         t3, t2, 122f
                  bne          a4, a5, 130f
                  addi         tp, s2, -670
                  beq          a6, t0, 132f
                  srli         a0, tp, 5
                  and          ra, t0, s9
122:              sltiu        s4, a4, 883
                  bltu         sp, s6, 126f
                  bltu         a0, a2, 130f
                  srai         t1, s11, 28
126:              sra          s9, s0, s2
                  xor          s2, s6, t3
                  bltu         gp, a6, 147f
                  sltu         a0, a6, t6
130:              bgeu         s6, s10, 131f
131:              slti         s5, t0, 509
132:              and          s3, t0, a6
                  srl          a5, t1, t0
                  sll          s7, s9, s4
                  bgeu         a7, a3, 151f
                  sltiu        s5, s4, -1452
                  sll          s5, a0, a0
                  xori         s4, t4, -1000
                  sltu         s11, gp, s10
                  slt          s9, t0, t4
                  bgeu         t3, t2, 142f
142:              bltu         s7, s0, 152f
                  srai         gp, tp, 3
                  bge          tp, a3, 162f
                  sltiu        s5, a3, 1806
                  or           a2, s1, tp
147:              bgeu         a7, zero, 155f
                  nop
                  sltiu        gp, s10, 937
                  beq          s5, s4, 164f
151:              or           s10, a2, s5
152:              or           t0, s9, t5
                  slt          gp, s3, s5
                  and          a6, s1, t0
155:              add          t2, s2, s2
                  bgeu         t4, s4, 159f
                  sltu         s2, t3, s5
                  sra          a5, a6, t2
159:              bltu         t0, s0, 165f
                  xori         a5, t3, 700
                  sll          a4, t3, s2
162:              nop
                  srl          s4, t0, a4
164:              and          s3, s10, s7
165:              and          a5, s2, s5
                  xori         a0, t0, -1982
                  bltu         t4, a4, 181f
                  beq          a5, s3, 174f
                  bgeu         t6, s3, 177f
                  andi         s6, s5, 178
                  sll          t3, s5, t3
                  blt          s10, s9, 175f
                  add          s1, a2, s1
174:              srl          s9, a1, t6
175:              slti         gp, a6, -1910
                  sll          s8, t4, t1
177:              sra          s1, zero, s3
                  srai         zero, t0, 27
                  xori         t1, a4, -1307
                  bgeu         a2, gp, 199f
181:              add          zero, s6, t1
                  bltu         s8, tp, 191f
                  xori         s5, ra, -8
                  sub          t3, a2, a2
                  sltu         ra, sp, s9
                  sub          tp, a4, a1
                  blt          t4, s6, 193f
                  add          s7, s6, s11
                  srl          s7, s9, t5
                  ori          a0, a7, -644
191:              beq          gp, a2, 194f
                  nop
193:              ori          a6, s4, -1537
194:              sll          s10, gp, t6
                  bltu         t0, s8, 211f
                  addi         s0, t0, 1294
                  srli         t4, zero, 23
                  srl          t4, t0, s5
199:              sll          a5, a6, s7
                  bltu         s6, t4, 206f
                  xori         s11, t3, -1634
                  and          a4, t6, a3
                  beq          t0, s10, 223f
                  lui          a0, 901059
                  bltu         t3, ra, 222f
206:              bne          gp, a2, 226f
                  andi         t3, s6, 1335
                  sltu         a2, sp, ra
                  bgeu         sp, s1, 224f
                  add          a2, t5, tp
211:              add          s11, s7, t5
                  srai         s0, t1, 7
                  andi         s6, zero, 943
                  sra          t1, s0, t3
                  and          ra, a3, t3
                  sub          s8, t3, a4
                  nop
                  sll          s5, sp, t0
                  sll          a6, a1, a0
                  bltu         s7, t3, 233f
                  srli         t1, t1, 15
222:              beq          s0, a3, 235f
223:              and          s11, t2, s6
224:              add          s7, gp, ra
                  or           a2, sp, tp
226:              bltu         a3, s8, 228f
                  sltiu        s0, t3, 1754
228:              bne          s6, s4, 230f
                  srli         s1, a5, 26
230:              slt          s4, tp, a5
                  xor          s2, a4, a7
                  or           a1, ra, a1
233:              slt          tp, a3, t1
                  slt          t1, s2, a3
235:              ori          s2, a4, -1639
                  sll          t2, t5, tp
                  ori          a6, s9, -1394
                  blt          s6, a7, 240f
                  lui          t5, 398231
240:              sltiu        s9, s4, 1394
                  sltu         s3, t1, s1
                  srai         a0, s1, 8
                  xori         ra, s11, 1679
                  add          t5, s2, t0
                  sltu         s11, s9, s0
                  blt          a0, a6, 255f
                  sll          s1, gp, s7
                  bne          s0, a0, 266f
                  addi         s10, zero, 3 #init loop 1 counter
                  addi         s8, zero, 15 #init loop 1 limit
main_2_1_t:       addi         s3, s6, -1108
                  addi         s10, s10, 4 #update loop 1 counter
                  addi         a0, zero, 2 #init loop 0 counter
                  xor          a2, t6, zero
                  addi         gp, zero, -14 #init loop 0 limit
main_2_0_t:       addi         s6, a2, -206
                  addi         a0, a0, -2 #update loop 0 counter
                  beq          a0, gp, main_2_0_t #branch for loop 0
                  beq          s10, s8, main_2_1_t #branch for loop 1
                  ori          s9, ra, -296
                  ori          s2, t5, 1291
                  beq          s8, s4, 251f
251:              sltiu        t5, t1, 609
                  sltu         ra, s7, gp
                  bne          a2, s5, 254f
254:              andi         s1, s8, 1870
255:              sll          a2, s3, s6
                  bltu         a5, s9, 267f
                  add          s9, t4, t2
                  ori          s8, s1, 902
                  bge          s0, t2, 269f
                  nop
                  xori         a6, zero, -1342
                  auipc        s5, 483839
                  slt          t4, tp, t3
                  beq          t0, s5, 280f
                  srli         s1, sp, 9
266:              slli         s3, s10, 12
267:              add          s4, a6, s11
                  add          ra, t0, a4
269:              sub          t4, s6, s3
                  or           s1, s8, s11
                  beq          a1, a7, 283f
                  blt          zero, a4, 288f
                  bltu         s4, t3, 291f
                  sub          a4, t0, a2
                  or           ra, a2, a4
                  xori         a6, s10, 1618
                  ori          s1, t1, -1039
                  sltu         t0, s8, a6
                  slli         s11, s9, 24
                  la           s2, sub_3
                  add          s6, s11, a6
                  addi         s2, s2, 34
                  slt          t5, s11, s8
                  sll          s10, t3, a3
                  srli         t5, t6, 2
                  slli         t4, t5, 4
                  sltu         gp, t3, t5
main_j2:          jalr         s0, s2, -34 #jump main -> sub_3
                  bne          s11, t5, 294f
                  and          t4, a7, zero
                  sra          t6, sp, s0
280:              srli         s3, zero, 21
                  blt          t2, s2, 283f
                  srli         s4, a4, 3
283:              sra          s11, a3, s3
                  sltu         s7, s6, ra
                  xor          s3, a3, a5
                  xor          s10, s10, s9
                  nop
288:              ori          s10, s7, 1852
                  beq          s1, a6, 292f
                  beq          t0, s1, 303f
291:              xor          a1, s0, t6
292:              blt          t1, zero, 298f
                  sub          a5, s0, s2
294:              or           s6, a4, a6
                  blt          s1, zero, 296f
296:              xori         a2, s0, -523
                  sll          s9, s2, s11
298:              slt          s9, t6, s3
                  andi         s0, t2, 719
                  xori         tp, s4, 245
                  blt          t0, sp, 303f
                  srli         a4, a0, 12
303:              xori         t2, a7, 395
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            and          s8, a7, s3
                  or           s8, s5, a5
                  xori         s3, t0, -102
                  or           s3, t1, s11
                  xor          s3, s2, s5
                  bgeu         s8, s1, sub_3_stack_p
sub_3_stack_p:    addi         sp, sp, -56
                  srai         t3, ra, 12
                  andi         t0, s2, -1772
                  sw           s0, 4(sp)
                  add          s8, s6, s11
                  sltiu        s2, s0, 962
                  addi         s2, zero, -8 #init loop 1 counter
                  andi         a1, a7, 96
                  and          s7, s0, gp
                  and          t0, t5, a4
                  or           s7, s6, s6
                  addi         s1, zero, -8 #init loop 1 limit
sub_3_9_1_t:      slt          a0, a6, s6
                  sll          t1, s2, gp
                  addi         s2, s2, -9 #update loop 1 counter
                  sltiu        s9, t5, 912
                  slt          ra, s6, zero
                  xor          a1, a3, a5
                  sub          a4, a4, a2
                  addi         t6, zero, -2 #init loop 0 counter
                  slti         t5, a6, 1022
                  add          t4, t4, s10
                  slti         gp, t0, -242
                  addi         a6, zero, 1 #init loop 0 limit
                  slti         s3, a7, -1410
sub_3_9_0_t:      lui          a0, 926315
                  nop
                  and          t1, s6, a3
                  or           t3, s11, sp
                  add          s3, sp, sp
                  sltiu        s6, t6, 681
                  lui          a0, 533786
                  addi         t6, t6, 10 #update loop 0 counter
                  blt          t6, a6, sub_3_9_0_t #branch for loop 0
                  or           s3, zero, zero
                  bge          s2, s1, sub_3_9_1_t #branch for loop 1
                  sra          s9, s11, t1
                  addi         tp, zero, 1 #init loop 1 counter
                  sll          s9, s2, a7
                  and          t5, t4, gp
                  andi         s1, t4, 127
                  xor          a0, s3, t0
                  addi         s0, zero, 19 #init loop 1 limit
                  slli         t2, s0, 13
                  ori          s2, sp, 1180
                  srai         s4, t4, 21
                  auipc        a4, 407289
                  and          t5, t3, tp
                  lui          s9, 321834
sub_3_11_1_t:     slt          a5, s2, s4
                  addi         tp, tp, 6 #update loop 1 counter
                  sra          t5, t0, t3
                  addi         a1, zero, -1 #init loop 0 counter
                  addi         a2, zero, 11 #init loop 0 limit
sub_3_11_0_t:     andi         s4, zero, 384
                  lui          t4, 437487
                  addi         a1, a1, 3 #update loop 0 counter
                  blt          a1, a2, sub_3_11_0_t #branch for loop 0
                  addi         s6, t1, 1808
                  sra          s9, s1, t5
                  bltu         tp, s0, sub_3_11_1_t #branch for loop 1
                  add          gp, s0, a0
                  addi         a1, zero, -3 #init loop 1 counter
                  lui          s7, 94102
                  nop
                  xor          t3, gp, s10
                  add          a4, a6, a4
                  lui          s2, 177183
                  xor          s0, t5, zero
                  srl          s10, s0, a2
                  lui          a4, 780044
                  addi         s3, zero, 3 #init loop 1 limit
sub_3_4_1_t:      sltu         a0, sp, a2
                  slt          s8, s11, zero
                  addi         a1, a1, 3 #update loop 1 counter
                  sra          t2, sp, s9
                  srli         t4, t4, 8
                  sub          t6, ra, t3
                  addi         s11, zero, 0 #init loop 0 counter
                  addi         t5, zero, -4 #init loop 0 limit
                  nop
sub_3_4_0_t:      ori          gp, t3, 1187
                  addi         s5, t3, -866
                  addi         s11, s11, -4 #update loop 0 counter
                  and          t2, a7, s8
                  sub          a2, a0, t4
                  srli         t6, s7, 4
                  srai         s10, t0, 9
                  nop
                  sub          ra, a3, s7
                  ori          s7, t1, 1396
                  beq          s11, t5, sub_3_4_0_t #branch for loop 0
                  srli         a6, s6, 6
                  xor          s9, s5, s7
                  beq          a1, s3, sub_3_4_1_t #branch for loop 1
                  and          s4, t6, s8
                  addi         s2, zero, 8 #init loop 1 counter
                  addi         s0, zero, 12 #init loop 1 limit
sub_3_8_1_t:      xori         s3, a7, -311
                  sltu         t1, a6, s0
                  addi         s2, s2, 8 #update loop 1 counter
                  addi         t5, zero, -7 #init loop 0 counter
                  addi         t3, zero, 16 #init loop 0 limit
sub_3_8_0_t:      xor          a4, s0, s1
                  addi         t5, t5, 6 #update loop 0 counter
                  blt          t5, t3, sub_3_8_0_t #branch for loop 0
                  sub          t0, a1, s8
                  blt          s2, s0, sub_3_8_1_t #branch for loop 1
                  and          s6, a7, s11
                  addi         t2, zero, 8 #init loop 0 counter
                  andi         t0, s2, -528
                  srli         s11, a6, 10
                  sltiu        a2, a0, -1852
                  xori         s0, s2, -1291
                  slli         s7, t1, 21
                  addi         gp, zero, 19 #init loop 0 limit
                  or           t5, t6, t0
sub_3_12_0_t:     addi         t1, t2, 1078
                  xori         s1, s10, -1221
                  and          t0, s2, a5
                  sub          s1, a7, t5
                  ori          a4, a5, -763
                  slt          s7, a5, s9
                  auipc        s3, 407154
                  sll          a4, a6, s0
                  ori          a4, t6, -407
                  ori          t0, sp, -302
                  sub          t0, a3, s2
                  add          s9, a2, s10
                  addi         t2, t2, 1 #update loop 0 counter
                  or           s0, a3, ra
                  sltiu        a0, s9, -220
                  slt          a0, t5, t5
                  slli         s4, tp, 30
                  auipc        a2, 748120
                  andi         s4, t6, -1954
                  slti         s8, a3, 1283
                  beq          t2, gp, sub_3_12_0_t #branch for loop 0
                  nop
                  addi         t2, zero, 1 #init loop 1 counter
                  xori         s0, zero, -36
                  addi         s7, zero, 10 #init loop 1 limit
sub_3_1_1_t:      ori          zero, s3, 652
                  sltiu        s11, a2, 384
                  ori          a6, gp, 1822
                  nop
                  xor          t5, a6, t4
                  addi         t2, t2, 9 #update loop 1 counter
                  auipc        a6, 496456
                  lui          a4, 434644
                  addi         s9, zero, -8 #init loop 0 counter
                  addi         tp, zero, -20 #init loop 0 limit
                  xor          t3, s11, t5
sub_3_1_0_t:      and          s1, sp, t1
                  addi         s9, s9, -2 #update loop 0 counter
                  bne          s9, tp, sub_3_1_0_t #branch for loop 0
                  sra          t6, s11, s7
                  sltu         s6, t5, t1
                  xor          s0, t5, s9
                  andi         gp, s7, 1545
                  sll          gp, t1, s10
                  or           a5, t5, a0
                  addi         s11, s11, -1781
                  ori          s5, gp, -1499
                  auipc        s8, 282636
                  srl          zero, s6, s3
                  bne          t2, s7, sub_3_1_1_t #branch for loop 1
                  and          gp, s2, t0
                  addi         s4, zero, 6 #init loop 1 counter
                  slli         tp, s10, 5
                  slti         s10, s9, -1034
                  srl          a5, s8, tp
                  andi         s2, gp, 1636
                  and          t1, s3, s1
                  addi         t5, gp, -963
                  addi         a6, zero, 8 #init loop 1 limit
                  addi         s1, s2, 288
sub_3_0_1_t:      xori         s7, a1, -1022
                  or           tp, s5, s10
                  or           t2, a1, a5
                  srai         s2, a1, 17
                  or           gp, s11, zero
                  addi         s4, s4, 9 #update loop 1 counter
                  addi         s6, zero, 0 #init loop 0 counter
                  add          s2, s1, s5
                  nop
                  sll          a0, a2, a7
                  addi         t4, zero, -2 #init loop 0 limit
                  srai         s0, s7, 10
                  ori          ra, a0, 740
sub_3_0_0_t:      slti         s8, t2, -1193
                  andi         s7, s9, -888
                  addi         s6, s6, -2 #update loop 0 counter
                  addi         tp, s0, 1781
                  xor          a4, t6, a3
                  lui          zero, 85625
                  bge          s6, t4, sub_3_0_0_t #branch for loop 0
                  slli         t0, t0, 5
                  lui          t2, 325152
                  sra          s3, s5, a3
                  sltu         a1, zero, s8
                  blt          s4, a6, sub_3_0_1_t #branch for loop 1
                  sll          t5, sp, t5
                  addi         s7, zero, -10 #init loop 0 counter
                  andi         a4, a0, 890
                  srai         t3, a6, 26
                  xori         tp, gp, 2041
                  xori         a0, s6, -1366
                  srai         gp, a3, 27
                  slli         gp, a3, 3
                  ori          s8, t0, -800
                  srl          s5, s9, t3
                  andi         s6, tp, 1418
                  ori          s9, a0, -41
                  addi         s0, zero, -1 #init loop 0 limit
                  lui          s10, 65841
                  auipc        ra, 879507
                  xori         a5, tp, 154
                  ori          s5, t4, 1329
sub_3_7_0_t:      sub          s8, t4, t2
                  lui          s11, 409549
                  srli         t0, s10, 27
                  lui          s9, 784518
                  slli         t2, a7, 21
                  sltu         ra, s7, s4
                  addi         s7, s7, 9 #update loop 0 counter
                  srai         a5, s0, 29
                  sra          t6, s8, a2
                  srl          s6, a5, t1
                  and          s1, a4, s0
                  beq          s7, s0, sub_3_7_0_t #branch for loop 0
                  sltiu        t4, s7, 654
                  addi         t2, zero, 2 #init loop 1 counter
                  srai         gp, s2, 30
                  add          a5, s9, t1
                  sra          t1, t0, s8
                  addi         s10, zero, 2 #init loop 1 limit
                  srai         s9, s10, 0
sub_3_10_1_t:     sltiu        t1, s11, 321
                  add          t0, s4, s8
                  add          tp, t3, t1
                  slt          s3, a4, s8
                  addi         t2, t2, -1 #update loop 1 counter
                  xori         s5, ra, 192
                  auipc        a5, 850309
                  srai         a2, a1, 31
                  sll          a0, s10, zero
                  addi         t5, zero, -1 #init loop 0 counter
                  srai         t3, t5, 17
                  addi         a4, zero, 6 #init loop 0 limit
                  srai         s2, s10, 26
sub_3_10_0_t:     sltiu        ra, t2, -1951
                  and          s7, a2, t4
                  nop
                  and          s8, s2, a6
                  addi         t5, t5, 7 #update loop 0 counter
                  andi         gp, gp, -273
                  sll          s1, a2, s0
                  bne          t5, a4, sub_3_10_0_t #branch for loop 0
                  andi         s11, a4, 1112
                  ori          a2, sp, 1586
                  bgeu         t2, s10, sub_3_10_1_t #branch for loop 1
                  andi         s11, gp, 1388
                  addi         s3, zero, 3 #init loop 0 counter
                  xori         a1, s2, -130
                  andi         t6, t6, -654
                  add          s8, s1, s10
                  srli         s2, a6, 3
                  or           s6, t1, a6
                  slt          s8, a0, s1
                  srli         gp, s1, 16
                  addi         gp, s5, -1897
                  add          a2, ra, tp
                  ori          t3, a6, 155
                  auipc        s0, 798634
                  srli         s8, gp, 9
                  addi         s11, s6, 1457
                  or           a2, tp, t2
                  slti         s2, a0, -181
                  lui          zero, 720014
                  add          a6, s9, a1
                  sltiu        t5, s5, 523
                  addi         t1, zero, 14 #init loop 0 limit
                  and          t4, t6, a6
                  sltu         s8, s6, s7
                  slt          t2, a5, t2
                  sltu         t2, t2, a2
sub_3_3_0_t:      slti         a6, a5, -1482
                  addi         s3, s3, 8 #update loop 0 counter
                  andi         t4, s5, -1671
                  sltiu        s6, s3, 1461
                  blt          s3, t1, sub_3_3_0_t #branch for loop 0
                  or           s1, t3, zero
                  addi         tp, zero, 9 #init loop 1 counter
                  slli         ra, s10, 3
                  sra          s8, sp, ra
                  addi         s3, zero, 11 #init loop 1 limit
                  sub          t3, gp, s4
                  sub          s2, a2, ra
                  srai         a1, a3, 8
                  and          s9, a7, s7
sub_3_6_1_t:      slti         s8, s3, -1318
                  xori         a1, t2, -1631
                  sub          s11, a4, tp
                  addi         tp, tp, 7 #update loop 1 counter
                  andi         zero, s2, 1661
                  sra          s10, a2, a5
                  xori         s9, t6, 2029
                  addi         s0, zero, 8 #init loop 0 counter
                  nop
                  addi         s5, zero, 12 #init loop 0 limit
                  sra          gp, t2, sp
                  srai         s1, t5, 19
                  slt          gp, t3, t1
sub_3_6_0_t:      xori         t4, a1, -1951
                  addi         s0, s0, 4 #update loop 0 counter
                  sltiu        ra, s4, 149
                  andi         a6, s7, -1383
                  auipc        s11, 658274
                  beq          s0, s5, sub_3_6_0_t #branch for loop 0
                  sub          s10, a3, a1
                  bltu         tp, s3, sub_3_6_1_t #branch for loop 1
                  andi         t0, s8, -528
                  addi         t2, zero, -5 #init loop 0 counter
                  slti         t1, a7, 1986
                  srai         a6, t4, 21
                  add          s2, s3, s3
                  andi         t6, t1, -1791
                  or           zero, s4, s1
                  ori          s3, s4, 374
                  andi         a0, s8, 1432
                  and          s3, a1, zero
                  addi         s11, zero, 10 #init loop 0 limit
                  slli         s5, a4, 17
                  xori         tp, a7, 1800
                  slti         s9, s5, 1445
                  sll          ra, s1, a3
                  ori          a4, a7, 1065
                  auipc        t6, 702160
                  add          t1, s7, a0
                  sub          s5, tp, s10
                  sltu         s7, s1, s3
                  sll          t4, s2, a0
                  sub          s7, a2, a0
sub_3_5_0_t:      xori         t6, t4, -1450
                  addi         t2, t2, 6 #update loop 0 counter
                  andi         zero, a5, 145
                  sll          s0, t1, a3
                  bltu         t2, s11, sub_3_5_0_t #branch for loop 0
                  andi         a0, a6, 1857
                  sra          gp, s2, t2
                  xor          a5, s2, t6
                  bgeu         s0, ra, 19f
                  xor          t0, s11, s0
                  bltu         s1, t4, 5f
5:                slti         t4, t3, 208
                  slti         t1, a3, 1206
                  and          ra, gp, tp
                  bgeu         a0, s9, 19f
                  xor          s6, ra, zero
                  bne          t3, a2, 17f
                  bgeu         a7, a2, 20f
                  sltiu        s5, a5, -1827
                  and          t2, ra, s10
                  auipc        t3, 944468
                  and          s0, t1, s0
                  sltiu        t6, t0, -1562
17:               sltiu        a6, a3, 488
                  sub          s5, a3, s1
19:               srli         a0, t2, 7
20:               bne          gp, t6, 24f
                  bge          tp, a3, 22f
22:               xor          s4, s1, a0
                  slli         s2, tp, 23
24:               sll          s8, s2, a1
                  bge          t1, a1, 40f
                  bltu         t0, s7, 42f
                  sll          s10, s0, s11
                  srli         s3, s3, 28
                  srai         s11, t0, 14
                  sra          t1, zero, s1
                  bne          t0, a1, 41f
                  ori          a6, s9, 1035
                  srl          s3, s6, a7
                  nop
                  srli         ra, t3, 13
                  bne          s3, s3, 49f
                  slli         s10, s9, 20
                  srli         a5, tp, 26
                  srl          tp, s0, a5
40:               addi         ra, s3, 721
41:               srai         a1, s9, 10
42:               add          s10, s11, t0
                  sltiu        t1, a1, 653
                  sub          a1, t5, s6
                  sra          t5, a0, a1
                  sub          a5, t4, a7
                  bne          ra, s6, 64f
                  blt          a0, t6, 52f
49:               srl          s1, a6, a2
                  bltu         t2, s10, 62f
                  srli         s0, s6, 28
52:               auipc        s5, 100497
                  and          gp, s8, a6
                  sltiu        t4, s3, -1475
                  slt          s1, s10, t4
                  andi         t3, t0, 1377
                  and          a4, a7, s6
                  srai         t5, t0, 16
                  bne          s5, a6, 62f
                  addi         t1, s11, -1055
                  srl          s6, s2, t1
62:               xor          s3, a7, s2
                  srl          gp, s9, gp
64:               or           t0, s8, gp
                  bltu         s9, gp, 68f
                  srai         t5, tp, 5
                  srl          s0, s4, sp
68:               bge          s7, s3, 86f
                  ori          s7, s1, -1275
                  ori          t0, t2, 542
                  auipc        a2, 689187
                  sub          t4, zero, t4
                  addi         s1, gp, -2001
                  srl          a0, a2, t5
                  sll          s10, s5, t0
                  xor          s6, t2, t2
                  slli         a2, t3, 23
                  xor          s5, t6, a1
                  sub          s3, t3, a4
                  nop
                  lui          a4, 488543
                  ori          t3, s9, -1814
                  bltu         s10, t4, 101f
                  srai         ra, s3, 9
                  srai         a6, a4, 7
86:               bgeu         s6, s1, 91f
                  sub          a1, a4, t1
                  sltiu        s6, t5, -1122
                  srai         s1, zero, 11
                  srl          t3, a6, tp
91:               slt          s11, s11, t2
                  xor          t4, a3, t5
                  beq          s6, t6, 101f
                  sll          tp, s3, zero
                  bne          a6, t4, 115f
                  xori         t0, s10, -646
                  xori         t6, t4, -1819
                  sltiu        t5, t3, 1000
                  srl          s1, s2, s10
                  slt          a1, sp, a2
101:              andi         s6, a4, -98
                  slt          s1, s0, a3
                  bgeu         t0, ra, 106f
                  beq          ra, t5, 122f
                  srai         s11, a2, 17
106:              andi         a1, s7, 389
                  sra          s8, s7, s0
                  andi         s9, s11, 944
                  ori          t4, t1, 1016
                  blt          t4, a6, 122f
                  nop
                  or           a1, a4, s6
                  or           s8, t5, s9
                  lui          s9, 837452
115:              nop
                  slt          t5, t4, a3
                  sll          s9, a5, s0
                  add          s7, a2, t5
                  sll          s3, s9, t3
                  auipc        s4, 103342
                  sra          gp, a7, t1
122:              srl          a5, ra, a3
                  lui          s10, 305026
                  and          t1, gp, t2
                  add          s8, s3, gp
                  or           s10, s3, a5
                  add          t2, s6, sp
                  or           t1, ra, a0
                  srli         a1, sp, 7
                  sll          ra, a7, s6
                  srli         s1, a2, 27
                  addi         a2, ra, -1387
                  xor          s10, s11, a2
                  slti         t0, a2, 1811
                  bgeu         a0, a3, 149f
                  xor          gp, s8, zero
                  sra          s2, s3, s1
                  nop
                  srli         s11, s2, 4
                  xori         a5, a5, 837
                  lui          a4, 668635
                  blt          s6, s8, 162f
                  xori         s5, s2, -1203
                  bge          a1, s9, 152f
                  add          a5, s8, gp
                  blt          s3, s8, 156f
                  lui          tp, 463379
                  slli         s5, s9, 31
149:              and          s1, s11, t5
                  bgeu         t2, a1, 160f
                  nop
152:              lui          s5, 8265
                  sra          t1, a0, s5
                  slti         s11, a0, -1135
                  beq          s9, a4, 162f
156:              slli         s2, a0, 1
                  srli         s3, t6, 5
                  and          s11, s5, t2
                  auipc        a5, 246320
160:              srl          s8, s10, t5
                  srli         t3, a3, 16
162:              slli         a6, a7, 24
                  sltu         ra, t6, s3
                  sra          t2, t3, s0
                  srl          s3, a5, a0
                  sub          t0, s2, gp
                  addi         a6, a4, 523
                  xori         a1, s1, 1678
                  add          t6, s6, s2
                  blt          s5, sp, 171f
171:              sll          t6, s4, zero
                  bltu         t2, a5, 192f
                  addi         t4, s4, 770
                  srai         s4, s5, 31
                  blt          t0, a3, 183f
                  sub          s11, s3, s2
                  xor          s10, t2, s9
                  or           gp, s3, s1
                  slt          t3, s2, t6
                  sub          s0, tp, t5
                  ori          t1, s7, 186
                  bge          a0, t4, 194f
183:              addi         t5, s0, 1387
                  blt          s3, a7, 192f
                  sll          a4, s2, t1
                  slt          t3, a0, s1
                  andi         a0, zero, -946
                  bge          t5, s1, 204f
                  sra          a5, t1, zero
                  beq          s4, s6, 195f
                  beq          a1, s6, 201f
192:              sra          s5, a6, s5
                  sltu         a4, t4, gp
194:              ori          a4, s11, 1952
195:              srl          t3, s9, s4
                  auipc        s7, 100778
                  bgeu         t1, s0, 200f
                  add          s3, t0, s8
                  andi         s7, a4, 1742
200:              blt          sp, a5, 211f
201:              sltiu        a6, s2, -1652
                  slti         a2, s10, 135
                  andi         s10, t4, -1488
204:              srai         t0, s4, 14
                  srli         ra, a0, 21
                  beq          sp, t1, 221f
                  xori         s5, gp, -706
                  auipc        s2, 576227
                  sll          a5, a6, s11
                  xor          s5, ra, s8
211:              sltiu        s3, t4, -1937
                  beq          a0, s8, 221f
                  slti         s0, tp, -1669
                  beq          tp, t2, 218f
                  auipc        a6, 440432
                  nop
                  xori         a0, s0, 215
218:              addi         a0, zero, -1295
                  sra          t1, tp, a7
                  addi         s6, s7, -137
221:              slli         t0, a2, 24
                  slti         t2, t0, 1737
                  bge          sp, a3, 241f
                  lui          s4, 765640
                  nop
                  bge          zero, s10, 233f
                  auipc        s3, 2310
                  sra          ra, s4, t4
                  sub          s3, s5, a1
                  bne          a4, s1, 247f
                  sll          gp, s1, tp
                  xor          t2, tp, t6
233:              srl          s8, ra, a4
                  sltiu        s5, a3, -1330
                  andi         a0, s2, -1492
                  srai         s6, s9, 1
                  sll          s5, s1, a0
                  beq          s7, a0, 248f
                  srli         s7, t0, 28
                  nop
241:              srl          s2, s4, zero
                  ori          a0, a1, 1000
                  addi         t3, t5, -1274
                  beq          s1, s3, 248f
                  bge          a4, gp, 263f
                  slli         ra, t3, 20
247:              and          gp, t2, a6
248:              slt          a5, tp, t1
                  beq          s3, s10, 252f
                  beq          t0, gp, 270f
                  srai         s10, a3, 9
252:              slli         t6, s0, 14
                  slti         a5, a2, -1078
                  slt          t2, sp, t1
                  nop
                  bltu         gp, s4, 273f
                  slli         s7, s0, 19
                  slli         t1, a5, 20
                  ori          s7, t6, 195
                  bge          t1, t3, 270f
                  addi         t3, a4, -1830
                  srai         t4, a6, 23
263:              sltu         t4, s7, t1
                  beq          t1, t5, 282f
                  xor          s6, s11, t3
                  slti         t4, sp, -1514
                  srai         s9, sp, 26
                  sra          gp, t0, s10
                  sltiu        t0, s6, -1024
270:              bgeu         t3, a6, 277f
                  blt          s3, t0, 285f
                  xori         t5, s4, -1879
273:              srl          a6, s4, a2
                  or           s0, s10, t0
                  andi         a5, s10, -932
                  sra          t1, a3, t2
277:              srl          t1, t2, s5
                  beq          t1, a5, 291f
                  srai         gp, s2, 0
                  bltu         s1, a0, 281f
281:              nop
282:              xori         s4, t3, -628
                  blt          t6, a3, 295f
                  srai         s2, s4, 5
285:              blt          a1, a2, 288f
                  bgeu         t1, a5, 293f
                  slli         a0, s11, 15
288:              xori         s5, s4, 1797
                  bltu         t0, s5, 303f
                  bgeu         s4, s8, 310f
291:              beq          a6, s5, 295f
                  xor          gp, t2, s7
293:              slti         t2, a2, -570
                  sltiu        s8, s3, 1993
295:              srli         t5, s10, 14
                  bltu         s6, a2, 306f
                  srl          gp, t2, s10
                  lui          tp, 957867
                  slti         s7, s9, -1211
                  sub          s5, s4, t5
                  addi         t2, s6, 1263
                  or           s8, zero, t2
303:              bne          a5, zero, 321f
                  srai         s5, t5, 19
                  srli         s11, a5, 2
306:              bne          t6, a0, 322f
                  blt          t4, s1, 308f
308:              add          s11, s9, s10
                  bgeu         t2, t6, 312f
310:              beq          a2, s9, 325f
                  bne          s4, a2, 323f
312:              slti         t1, t3, -636
                  srai         t4, a2, 27
                  ori          a2, t3, 28
                  srai         s8, gp, 4
                  blt          a6, tp, 320f
                  sra          t0, t6, a1
                  bne          zero, t0, 336f
                  srai         s3, ra, 13
320:              sub          t6, ra, s1
321:              xori         s1, t1, 1159
322:              or           t2, t3, a7
323:              sll          s2, s7, s11
                  bgeu         s0, t5, 331f
325:              srl          s1, t5, t6
                  slli         s2, s2, 23
                  ori          s3, s7, 837
                  beq          t3, s7, 333f
                  xor          ra, s1, ra
                  xor          s1, a4, s10
331:              addi         t0, s11, 1520
                  beq          a2, t6, 343f
333:              srai         s11, t0, 28
                  or           a5, a7, s11
                  blt          a6, sp, 345f
336:              srai         s7, s4, 10
                  xori         s2, a4, -1660
                  sll          s9, tp, t1
                  nop
                  xor          s5, gp, s8
                  slti         ra, t1, -868
                  sll          a0, t3, a7
343:              bne          sp, a6, 344f
344:              andi         t5, sp, 1742
345:              slt          s9, ra, s9
                  sltu         t5, t6, s8
                  bgeu         tp, s2, 367f
                  ori          s4, s4, 398
                  ori          t4, t1, 883
                  sra          s10, sp, tp
                  srli         a6, tp, 24
                  srl          ra, t5, s6
                  xor          t2, s2, a2
                  beq          s9, s3, 366f
                  sub          gp, t5, t4
                  xor          s3, ra, s10
                  bgeu         tp, a7, 360f
                  sll          s0, a4, sp
                  xor          s1, t1, a6
360:              addi         t6, t3, -1333
                  sltu         a2, s2, s0
                  bgeu         a0, s8, 379f
                  lui          a1, 720846
                  beq          s3, s11, 377f
                  add          gp, zero, s3
366:              sra          a4, a5, sp
367:              slti         a5, t4, 382
                  auipc        a6, 468832
                  ori          s4, t5, -25
                  srai         a5, a7, 23
                  xor          s8, s11, s1
                  sll          s6, a1, a0
                  xori         s1, ra, -1013
                  addi         a6, zero, 1 #init loop 1 counter
                  slli         tp, sp, 17
                  addi         s7, zero, 18 #init loop 1 limit
                  add          s6, t1, s4
                  xor          t0, s5, s6
                  or           tp, s5, a0
                  xor          a4, a0, a1
                  lui          t1, 913968
                  lui          s4, 233332
sub_3_2_1_t:      ori          gp, a0, -128
                  lui          s5, 475428
                  srl          a0, t3, t6
                  addi         a6, a6, 6 #update loop 1 counter
                  srai         a1, a7, 4
                  or           s1, t6, t1
                  addi         ra, zero, 3 #init loop 0 counter
                  add          a5, s2, zero
                  addi         t4, zero, -18 #init loop 0 limit
sub_3_2_0_t:      sub          s8, a2, t2
                  ori          zero, s5, -556
                  addi         ra, ra, -7 #update loop 0 counter
                  srl          s4, a7, zero
                  bne          ra, t4, sub_3_2_0_t #branch for loop 0
                  sll          zero, s6, s5
                  addi         t0, a6, 1182
                  blt          a6, s7, sub_3_2_1_t #branch for loop 1
                  andi         a1, a5, 2029
                  sll          s10, s6, t3
                  auipc        s4, 204265
                  add          s4, s8, a4
377:              ori          s6, s3, -243
                  nop
379:              bne          s0, a3, 387f
                  sltu         s10, ra, t3
                  ori          a5, tp, 1134
                  bne          sp, s0, 390f
                  sub          t2, t3, a5
                  srai         t4, a7, 16
                  bne          a7, a3, 394f
                  srai         a6, t5, 3
387:              ori          s7, a2, -836
                  srl          zero, s6, s8
                  sll          t2, a1, s4
390:              bge          s11, s3, 407f
                  sra          s0, tp, s0
                  sltiu        a0, t5, 1581
                  bltu         s7, a1, 396f
394:              slt          t0, a6, s0
                  bltu         s7, s7, 405f
396:              xori         s4, a6, -743
                  blt          s4, a7, 415f
                  bgeu         s6, s7, 416f
                  addi         s4, a3, -272
                  xori         a5, t3, -41
                  sub          a0, s11, a2
                  and          a4, sp, a7
                  lui          t3, 36904
                  sll          s1, a4, gp
405:              auipc        s8, 202387
                  addi         tp, t3, 1689
407:              srli         gp, a5, 26
                  andi         t0, ra, 91
                  slli         s1, s1, 30
                  xori         s7, s2, 513
                  beq          t2, t5, 428f
                  xor          a2, s2, t6
                  bgeu         ra, zero, 423f
                  slli         t4, s10, 17
415:              lui          s4, 540308
416:              slti         s6, s2, 420
                  or           s3, s6, s1
                  sll          a5, zero, a7
                  add          s2, a3, t5
                  slti         t6, sp, -1272
                  sltiu        a1, s7, -212
                  slti         a4, t1, 964
423:              lui          tp, 676412
                  bgeu         ra, a0, 434f
                  xor          gp, t1, s4
                  sltiu        t4, a3, 1983
                  sltu         gp, t2, s0
428:              xor          t4, tp, t4
                  lui          s0, 719897
                  srli         s1, ra, 8
                  nop
                  nop
                  sltu         s10, s3, t1
434:              auipc        t1, 663597
                  nop
                  srai         t3, t3, 12
                  srli         t0, t2, 0
                  bge          s3, a2, 454f
                  ori          t6, tp, 844
                  sra          t3, s9, s8
                  and          s6, s3, s0
                  slt          t4, a2, s4
                  beq          s11, a1, 457f
                  slti         s1, a4, 1210
                  srai         a6, t4, 12
                  srl          s6, a1, a2
                  xor          t3, s3, a6
                  addi         s5, s3, 514
                  bgeu         a6, s7, 456f
                  sll          s10, a6, t5
                  lui          s3, 278770
                  sub          s0, a7, t0
                  slt          t5, t3, a5
454:              slti         s6, s8, 1757
                  ori          s5, tp, 1727
456:              or           s8, t6, ra
457:              sub          t1, gp, s10
                  bltu         t6, a0, 467f
                  blt          s11, zero, 476f
                  blt          t2, a6, 473f
                  and          s7, t3, t5
                  sra          s3, s0, a6
                  srli         s4, sp, 16
                  xori         a5, a3, -759
                  sll          s1, s9, t6
                  beq          t5, s3, 471f
467:              addi         s5, s2, -322
                  bge          s1, s4, 483f
                  sltiu        t3, a2, 1057
                  ori          t0, s11, 1726
471:              and          zero, gp, tp
                  andi         t6, s2, 1702
473:              or           t4, t5, zero
                  srli         t4, t5, 29
                  bne          s7, t6, 487f
476:              bgeu         ra, s2, 480f
                  srl          a5, zero, a1
                  sra          s8, a5, s9
                  sll          a5, s9, t3
480:              srli         ra, a7, 3
                  and          t2, s11, t1
                  auipc        t6, 564548
483:              or           s8, s8, s7
                  bne          sp, s8, 492f
                  lui          t0, 48822
                  slli         a4, s8, 29
487:              bne          s5, gp, 507f
                  auipc        s6, 43071
                  ori          t2, s3, -300
                  srl          t0, a6, t6
                  bgeu         s10, s2, 503f
492:              slli         s10, t0, 1
                  xori         s11, s0, -1932
                  lui          s5, 992456
                  slt          tp, a2, s6
                  addi         s3, a7, 1431
                  beq          gp, s7, 515f
                  addi         t1, t0, 1231
                  and          s11, t0, gp
                  sltu         s1, t3, zero
                  xor          s10, a2, s1
                  add          s2, a2, s2
503:              srl          s11, a0, t4
                  sra          s8, a4, sp
                  sltiu        zero, t5, -973
                  srli         tp, sp, 23
507:              sltu         a6, t6, t1
                  add          a2, s5, s4
                  slti         a4, t5, -1274
                  slti         a6, s7, 1374
                  beq          ra, tp, 519f
                  slti         a6, s7, 1906
                  and          s5, t1, s1
                  srli         s6, a0, 4
515:              sub          gp, a7, ra
                  lui          s10, 259981
                  xor          t5, a5, s9
                  sltu         a5, t6, s10
519:              sra          s1, s11, s8
                  sll          a2, s3, zero
                  andi         s1, zero, -1702
                  xori         a1, s4, -1797
                  andi         s8, a2, 243
                  auipc        t4, 976886
                  slt          a1, t4, gp
                  sltu         t1, s7, t1
                  srl          t1, zero, ra
                  nop
                  sub          s4, a6, t2
                  sll          t0, s10, t5
                  sll          s3, ra, s8
                  sub          zero, t0, s2
                  sub          ra, sp, a1
                  nop
                  blt          t4, tp, 536f
536:              addi         s10, ra, 2005
                  addi         a1, s5, -340
                  sltiu        zero, t3, 1388
                  sltiu        s0, tp, -19
                  slli         a2, zero, 10
                  srli         s1, t4, 2
                  bne          s0, s3, 560f
                  bgeu         t1, a2, 546f
                  srai         s1, sp, 19
                  slti         a1, t0, 1390
546:              bge          s8, a7, 547f
547:              addi         a5, s7, -1377
                  auipc        t3, 824903
                  addi         s1, t6, -165
                  srli         zero, a1, 11
                  bne          s1, tp, 554f
                  sltiu        s11, s6, -1824
                  add          t3, s6, a5
554:              nop
                  or           a4, a1, a2
                  srli         s8, s2, 27
                  xori         t2, a2, -253
                  nop
                  bge          t0, s1, 570f
560:              xor          t2, t5, gp
                  nop
                  bltu         t0, s9, 582f
                  srl          a4, t0, a6
                  bge          s11, t0, 574f
                  srai         t1, t5, 12
                  xori         s3, s3, 1165
                  or           a6, gp, s9
                  srli         t1, t6, 24
                  and          s6, s2, s5
570:              bltu         s9, a5, 577f
                  sra          t3, t0, t2
                  xori         s5, t3, 478
                  ori          ra, a3, 139
574:              slli         s0, s0, 11
                  sll          s0, s1, t5
                  or           zero, s4, s11
577:              bne          t0, gp, 580f
                  xori         t0, a0, -287
                  bgeu         s11, s8, 583f
580:              lui          s8, 264280
                  slt          s7, s10, ra
582:              bgeu         t4, a1, 589f
583:              sub          a6, s0, ra
                  nop
                  and          s1, t6, t6
                  slt          a1, t0, zero
                  xor          t4, t6, s8
                  xor          tp, a3, s6
589:              bgeu         s4, zero, 607f
                  srl          tp, s0, s3
                  bge          s1, t5, 601f
                  nop
                  sltiu        t2, t4, -1851
                  slti         s0, a3, 664
                  bge          a2, s11, 615f
                  srl          s9, t2, s5
                  slt          t1, s11, s3
                  xori         t5, t0, 1015
                  bne          t0, s3, 604f
                  sll          t2, s10, a3
601:              add          a6, s10, s6
                  sltiu        s2, sp, 1513
                  xor          s8, s3, t1
604:              slti         t4, a4, 1772
                  nop
                  slt          a2, a2, s5
607:              and          ra, s1, s0
                  addi         t6, s2, -2023
                  slti         a6, tp, 1574
                  slt          s8, t6, tp
                  bne          a1, ra, 629f
                  bne          a4, a7, 632f
                  slli         gp, s1, 0
                  auipc        a2, 327923
615:              bgeu         s1, t4, 632f
                  xor          s5, a2, s0
                  blt          t4, a5, 621f
                  sll          s10, t5, s6
                  sltiu        s2, s7, -1749
                  sltiu        t5, a5, -1865
621:              sltiu        a0, t1, 1984
                  sltiu        tp, t2, -628
                  xor          t1, s5, s7
                  sltiu        s10, tp, -702
                  slli         t2, s7, 19
                  sltu         tp, t6, ra
                  slt          t6, s2, s7
                  sltiu        s1, s9, -1725
629:              sub          zero, s2, s11
                  nop
                  beq          s11, s1, 640f
632:              bne          s1, ra, 650f
                  andi         t5, a2, -1417
                  auipc        a0, 19599
                  bltu         tp, s9, 647f
                  srli         s8, zero, 0
                  auipc        t2, 581545
                  or           gp, a3, s9
                  slt          t6, a6, a0
640:              andi         s3, s5, 700
                  ori          ra, a2, -1347
                  bltu         t1, a4, 645f
                  sltu         t2, a4, a0
                  sltu         t4, s5, a5
645:              auipc        a4, 347810
                  slt          a1, s6, tp
647:              bne          a2, t6, 653f
                  srli         a6, s4, 14
                  slli         s8, t0, 9
650:              lui          t2, 978330
                  blt          a2, s1, 653f
                  srai         s11, t3, 12
653:              andi         s4, s3, -1815
                  andi         s5, a3, -520
                  xor          t6, t5, a6
                  lw           s0, 4(sp)
                  addi         sp, sp, 56
                  xor          ra, tp, s2
                  slli         a0, t3, 22
                  sub          s6, gp, t5
                  auipc        s8, 171666
1045:             addi x14, x8, 0
1045:             jalr x14, x14, 0
sub_4:            srai         s6, t5, 21
                  or           s3, s4, s11
                  sltu         zero, t5, a2
                  slli         gp, s8, 20
                  ori          a0, s6, -1348
                  srli         ra, a7, 10
                  addi         sp, sp, -20
                  sub          t2, t2, zero
                  addi         t1, sp, 933
                  sw           s0, 4(sp)
                  lui          s10, 684874
                  xor          ra, s5, a1
                  addi         a1, zero, 0 #init loop 0 counter
                  addi         s0, zero, 19 #init loop 0 limit
                  sra          s3, s9, s9
sub_4_2_0_t:      sub          gp, a6, t5
                  auipc        zero, 638001
                  slli         t1, a5, 20
                  addi         a1, a1, 1 #update loop 0 counter
                  add          a2, s4, tp
                  xori         a5, t0, 1785
                  blt          a1, s0, sub_4_2_0_t #branch for loop 0
                  sltu         gp, s1, a1
                  addi         t5, zero, -3 #init loop 1 counter
                  and          s9, a7, t6
                  slt          s10, a2, s4
                  addi         t6, zero, 11 #init loop 1 limit
                  andi         s1, s4, -501
sub_4_5_1_t:      sltu         s7, sp, a7
                  addi         t5, t5, 7 #update loop 1 counter
                  sll          zero, s0, a3
                  auipc        t2, 367489
                  addi         a1, zero, -6 #init loop 0 counter
                  addi         s6, zero, -14 #init loop 0 limit
                  slt          s7, s3, zero
sub_4_5_0_t:      xori         s0, s3, -5
                  sltu         tp, s8, t2
                  addi         a1, a1, -2 #update loop 0 counter
                  sltu         t2, ra, s2
                  bge          a1, s6, sub_4_5_0_t #branch for loop 0
                  nop
                  ori          s8, a7, 2002
                  bne          t5, t6, sub_4_5_1_t #branch for loop 1
                  srli         s2, a0, 31
                  addi         gp, zero, 1 #init loop 0 counter
                  or           s5, t3, t6
                  auipc        t1, 935217
                  add          s3, s6, s4
                  addi         t6, t3, 334
                  ori          t4, gp, -192
                  addi         a1, zero, -9 #init loop 0 limit
                  srl          s7, t1, sp
                  slli         a5, a0, 17
sub_4_1_0_t:      and          s10, s4, a2
                  andi         s5, a2, -510
                  ori          a0, gp, 1258
                  addi         gp, gp, -10 #update loop 0 counter
                  addi         s11, t6, 1365
                  slti         a6, t5, -1087
                  xori         s7, s4, 1611
                  addi         zero, s7, 317
                  bne          gp, a1, sub_4_1_0_t #branch for loop 0
                  xori         t2, a4, -660
                  addi         a1, zero, 10 #init loop 1 counter
                  sll          s4, a3, a7
                  srai         s4, t1, 14
                  addi         s9, zero, 10 #init loop 1 limit
sub_4_0_1_t:      xori         t0, s3, -319
                  addi         a1, a1, -8 #update loop 1 counter
                  addi         s8, zero, -3 #init loop 0 counter
                  sltu         s6, s4, s4
                  addi         ra, zero, 14 #init loop 0 limit
                  add          t0, s3, s5
                  slli         t2, gp, 29
sub_4_0_0_t:      sltu         s0, s11, s1
                  addi         s8, s8, 5 #update loop 0 counter
                  bltu         s8, ra, sub_4_0_0_t #branch for loop 0
                  bgeu         a1, s9, sub_4_0_1_t #branch for loop 1
                  slti         t0, a1, 1542
                  addi         s4, zero, -5 #init loop 0 counter
                  andi         s1, s7, 914
                  slti         a0, ra, -1821
                  slt          s0, t4, s10
                  lui          gp, 82315
                  xori         s8, t3, 1084
                  lui          s0, 440462
                  addi         a4, zero, 11 #init loop 0 limit
sub_4_4_0_t:      sub          gp, a1, t5
                  addi         a5, tp, -1844
                  addi         s4, s4, 8 #update loop 0 counter
                  and          s6, zero, gp
                  sll          a1, a5, s6
                  srai         s9, sp, 0
                  srai         zero, t3, 12
                  or           tp, ra, a2
                  or           s8, s5, t3
                  nop
                  beq          s4, a4, sub_4_4_0_t #branch for loop 0
                  andi         a5, a2, -796
                  addi         t5, zero, 10 #init loop 1 counter
                  nop
                  sra          s3, a4, s1
                  nop
                  or           s9, s3, a6
                  addi         s7, zero, 10 #init loop 1 limit
                  or           t0, a5, a2
sub_4_3_1_t:      sub          s11, a5, s11
                  sra          s5, a1, a2
                  addi         t5, t5, -6 #update loop 1 counter
                  srai         ra, a6, 10
                  addi         a2, zero, 0 #init loop 0 counter
                  addi         t2, zero, 3 #init loop 0 limit
sub_4_3_0_t:      auipc        s11, 776825
                  slli         a0, a1, 25
                  add          t4, t3, s4
                  andi         a5, t6, 621
                  addi         a2, a2, 5 #update loop 0 counter
                  slti         tp, a5, -182
                  sltu         s3, a7, tp
                  ori          a1, s7, 2000
                  nop
                  slti         t1, zero, -1418
                  xori         a5, s9, -402
                  bltu         a2, t2, sub_4_3_0_t #branch for loop 0
                  sra          s0, tp, t6
                  sll          t3, zero, gp
                  nop
                  bgeu         t5, s7, sub_4_3_1_t #branch for loop 1
                  sra          gp, s4, t0
                  nop
                  sra          s6, s10, sp
                  sltiu        a0, t3, 1122
                  nop
                  sra          s9, t6, s10
                  sub          t6, s10, s5
                  beq          t1, zero, 9f
                  beq          s9, s7, 9f
                  sltu         s4, a7, t2
9:                sub          s3, s2, s6
                  sra          tp, a1, gp
                  addi         s2, t1, -379
                  ori          gp, s1, -939
                  bne          a7, a6, 24f
                  ori          s8, s4, -1276
                  sra          a4, s9, s10
                  addi         ra, sp, -1467
                  sltu         t1, s2, s10
                  or           s1, a5, a6
                  bge          t3, s1, 39f
                  bne          s1, a7, 25f
                  sra          s10, s9, s5
                  sub          a4, s6, gp
                  bgeu         a7, s2, 29f
24:               xori         s9, a1, 989
25:               sra          s0, t1, s6
                  addi         zero, t2, 805
                  sltu         t6, gp, t1
                  auipc        s2, 622428
29:               srl          zero, a3, a2
                  nop
                  slli         a2, zero, 30
                  beq          a3, t2, 43f
                  blt          a6, a7, 53f
                  nop
                  sll          gp, t3, ra
                  auipc        a0, 951000
                  lui          a2, 1043928
                  or           a5, s3, s3
39:               sltu         s3, sp, a2
                  or           t3, zero, t3
                  sub          t6, a4, t0
                  ori          s11, gp, 1830
43:               sltu         s2, s8, a2
                  bge          t1, a7, 47f
                  slt          zero, t6, zero
                  bgeu         t1, t4, 57f
47:               slti         s5, s3, 1812
                  sll          t2, gp, zero
                  slli         t4, a0, 10
                  and          s0, t4, tp
                  auipc        t1, 780145
                  xor          t3, t3, a7
53:               blt          s7, s11, 58f
                  nop
                  bgeu         a3, a2, 71f
                  nop
57:               sltiu        s1, s2, -1784
58:               bne          ra, t5, 76f
                  blt          a2, s9, 74f
                  srai         s10, s10, 3
                  sltiu        t0, a0, -480
                  sltiu        gp, a4, -75
                  sra          t6, a3, t3
                  bgeu         s7, a6, 79f
                  or           a5, gp, t1
                  srai         s4, zero, 16
                  nop
                  srai         s6, t0, 18
                  and          t6, s7, t1
                  slli         s8, t5, 4
71:               addi         s6, a3, 37
                  srli         a0, s5, 23
                  bge          sp, t0, 77f
74:               xor          a5, t3, a4
                  addi         t5, gp, -86
76:               bltu         t4, s5, 80f
77:               srl          a4, a7, t0
                  slt          s8, sp, t5
79:               nop
80:               and          gp, s7, t4
                  xori         tp, a7, -1300
                  andi         a4, a1, -1216
                  sra          s1, ra, s9
                  slti         s5, a0, 314
                  bne          a7, t5, 93f
                  auipc        s6, 321987
                  add          gp, a7, t6
                  xori         t1, t4, -1424
                  and          t4, a6, t6
                  srli         s9, s0, 17
                  beq          gp, a6, 95f
                  sll          s1, t5, ra
93:               sltu         t3, s9, t5
                  bltu         s6, t3, 113f
95:               srai         t6, s10, 1
                  add          s3, t6, s6
                  sub          a6, a2, s4
                  bgeu         ra, a5, 117f
                  srai         t1, s11, 11
                  bge          s8, a0, 108f
                  sub          s4, s2, a1
                  slli         ra, s1, 2
                  sra          s6, s10, sp
                  xor          t2, ra, s7
                  blt          ra, a7, 124f
                  andi         s11, s10, -1456
                  or           s10, s2, t3
108:              add          s5, t1, s9
                  nop
                  srl          t2, a7, a5
                  auipc        ra, 553133
                  add          t1, sp, a6
113:              add          ra, s8, tp
                  bne          t1, a2, 120f
                  beq          t6, t0, 123f
                  srl          ra, s7, s2
117:              blt          t0, s2, 127f
                  bne          a1, t3, 119f
119:              slti         s7, s3, 1753
120:              blt          a5, s4, 127f
                  bltu         s9, s4, 136f
                  nop
123:              srai         s10, zero, 9
124:              or           s8, s7, ra
                  andi         s11, s3, 1298
                  sra          a1, s0, sp
127:              sltu         a1, a7, a0
                  slti         a0, t1, -602
                  sll          t1, s2, t5
                  addi         a4, s9, -1175
                  bgeu         ra, s0, 135f
                  andi         t2, a6, 1880
                  sll          a2, tp, a7
                  slti         s9, a5, 1808
135:              bne          a3, a1, 146f
136:              bge          t2, a6, 139f
                  andi         a1, s10, 265
                  sub          ra, s1, tp
139:              slti         s1, t3, 995
                  bge          a1, s2, 159f
                  sll          a4, t0, a7
                  bne          sp, s4, 160f
                  or           s8, s2, t4
                  srli         a1, a5, 4
                  sltu         s0, s10, a7
146:              bge          tp, t6, 156f
                  or           s2, s8, s5
                  sub          s0, s0, t1
                  slt          t0, a1, sp
                  slti         a1, a5, -504
                  lui          s0, 806255
                  beq          t1, s0, 157f
                  xor          a4, s0, s11
                  xori         tp, a5, 907
                  nop
156:              xori         t6, t3, -113
157:              srai         s8, sp, 15
                  bltu         tp, a7, 162f
159:              xor          s7, s10, s10
160:              sub          t2, s8, s6
                  lui          a4, 507712
162:              srai         t6, t3, 1
                  bgeu         s8, zero, 171f
                  xori         s6, a5, 1636
                  and          t2, zero, s3
                  sra          s6, t1, s4
                  or           a6, s6, s10
                  addi         s1, s6, -607
                  sra          s6, a6, s10
                  bltu         t5, sp, 186f
171:              srl          t6, s6, t1
                  xori         a5, t4, -1213
                  bgeu         s10, t5, 193f
                  slli         gp, t4, 28
                  slti         s0, ra, -1007
                  auipc        ra, 738702
                  sltu         a5, s8, s3
                  andi         a1, s9, 954
                  nop
                  bne          a3, t3, 191f
                  sub          t4, a3, a4
                  sra          t4, t1, a6
                  and          zero, s7, s11
                  addi         a1, s4, 1407
                  bgeu         a1, t4, 192f
186:              sltu         t5, t3, zero
                  nop
                  sub          s9, a3, s9
                  lui          a0, 22721
                  srli         s5, t6, 9
191:              slli         t2, s4, 6
192:              srli         s1, t6, 5
193:              sra          a5, s9, a4
                  bgeu         a1, s2, 199f
                  slt          a0, gp, s6
                  bltu         t3, t4, 200f
                  sra          t3, s0, t1
                  bge          s7, sp, 206f
199:              lui          a4, 373392
200:              addi         s5, a5, 953
                  beq          s7, a6, 212f
                  slt          s7, t0, a3
                  sub          s6, ra, gp
                  lui          a2, 551993
                  srl          a0, t4, s3
206:              bgeu         s2, s9, 214f
                  blt          a5, s0, 213f
                  srai         s2, gp, 30
                  slti         s9, s2, -1912
                  srli         a0, tp, 17
                  auipc        t2, 747548
212:              add          t3, a1, gp
213:              or           s0, s7, s9
214:              sltu         zero, s0, a2
                  slti         a0, ra, 1265
                  slt          s6, a4, a0
                  beq          t3, tp, 232f
                  srli         s11, s7, 23
                  srai         t6, t3, 0
                  ori          s7, a4, -1638
                  srai         s9, a3, 0
                  srai         t2, a4, 4
                  srai         a6, a3, 5
                  bltu         t6, tp, 243f
                  or           s7, t0, zero
                  auipc        a4, 467386
                  xori         t6, a6, 200
                  sra          s6, tp, t3
                  auipc        s10, 852641
                  blt          a5, a5, 233f
                  slti         s6, a2, 293
232:              sub          s3, tp, s4
233:              add          a1, s7, t6
                  srli         s10, s3, 11
                  srai         t2, s4, 5
                  auipc        s9, 733807
                  slli         s3, s7, 25
                  and          s11, a5, s0
                  beq          s4, s8, 241f
                  xor          a4, a3, s7
241:              sll          a0, a6, a3
                  slt          s1, s7, s11
243:              ori          s3, s11, 85
                  bltu         t3, zero, 250f
                  addi         s6, zero, -1112
                  add          a2, a5, s11
                  bgeu         s10, t3, 262f
                  srli         a5, a6, 5
                  or           a2, sp, t2
250:              bgeu         s9, s3, 254f
                  srl          s2, s9, s5
                  sltiu        a5, t2, 1154
                  or           s10, a6, s8
254:              addi         t0, tp, 337
                  addi         t2, s10, -1670
                  bne          s5, s7, 275f
                  sra          zero, a7, gp
                  lui          s2, 44386
                  addi         gp, t0, -1011
                  and          a5, a5, s4
                  sll          s9, a5, s2
262:              addi         t6, s5, 422
                  slti         a2, s2, 462
                  lui          t0, 1007684
                  xor          s9, a6, a2
                  ori          s9, s0, 284
                  auipc        a4, 309499
                  andi         t0, sp, 886
                  srli         a6, t2, 9
                  srli         tp, s3, 1
                  slli         s8, s10, 30
                  bgeu         s11, gp, 276f
                  sltu         a4, a3, a7
                  blt          t5, a6, 294f
275:              slli         ra, s5, 11
276:              nop
                  sra          tp, sp, s1
                  xori         t3, a5, 1434
                  srl          a5, t0, a7
                  sltu         s10, a4, t5
                  nop
                  lui          s6, 736054
                  sll          ra, a6, zero
                  beq          t3, sp, 299f
                  sra          s9, a6, t5
                  sub          tp, s1, tp
                  sltu         t1, t3, a3
                  add          t3, s2, a0
                  and          ra, s2, ra
                  ori          s1, t0, 1587
                  sub          t3, s10, s9
                  srli         s8, s5, 14
                  addi         ra, s9, -1734
294:              slti         a1, zero, -722
                  srli         s0, s5, 18
                  srai         t4, s9, 22
                  nop
                  bge          s7, s7, 299f
299:              lui          s6, 345642
                  sll          a0, gp, t2
                  bne          zero, s4, 317f
                  slti         t2, a5, 1502
                  sltiu        t3, a6, -877
                  ori          tp, a3, 867
                  srai         s7, s7, 17
                  sltu         t2, t5, s2
                  xori         s3, t5, 2043
                  sra          s0, s7, a7
                  auipc        a4, 758557
                  sll          zero, s8, a1
                  bge          t3, s0, 319f
                  slt          s4, t3, a5
                  bltu         a0, a6, 317f
                  auipc        s0, 735850
                  addi         tp, zero, 1 #init loop 1 counter
                  addi         gp, zero, 15 #init loop 1 limit
sub_4_6_1_t:      ori          s0, a1, 1556
                  slli         t0, t1, 2
                  addi         tp, tp, 7 #update loop 1 counter
                  and          s0, t5, s5
                  addi         s3, zero, -7 #init loop 0 counter
                  addi         s5, zero, -16 #init loop 0 limit
sub_4_6_0_t:      xor          a6, a1, s6
                  or           s6, t6, t6
                  addi         s3, s3, -7 #update loop 0 counter
                  srai         a5, s10, 4
                  bge          s3, s5, sub_4_6_0_t #branch for loop 0
                  bne          tp, gp, sub_4_6_1_t #branch for loop 1
                  srl          a4, s2, s5
                  lui          gp, 772231
                  and          s7, a4, t4
317:              xor          s5, ra, t4
                  sltiu        t5, gp, -287
319:              blt          a1, t5, 327f
                  andi         zero, tp, 636
                  ori          t3, s10, 724
                  xori         s9, a7, 1875
                  sra          s5, s5, t5
                  slt          s0, a6, t3
                  blt          t3, a6, 344f
                  xor          a0, tp, s5
327:              bge          a3, s10, 346f
                  xor          s9, t2, a3
                  xor          t4, a6, sp
                  bltu         t0, ra, 334f
                  sltiu        a6, a6, 144
                  slt          t5, s7, s11
                  bgeu         t3, s3, 336f
334:              addi         a4, s3, -1803
                  bge          s4, s2, 350f
336:              bltu         s5, t1, 351f
                  sltiu        ra, a7, -1067
                  sll          s9, a0, a5
                  slti         t1, a4, -215
                  nop
                  addi         gp, a3, -19
                  sltiu        t4, sp, -488
                  slli         t0, s6, 18
344:              auipc        s8, 1043465
                  beq          ra, a3, 353f
346:              bge          t2, s11, 352f
                  sltiu        s9, t1, 986
                  srl          s7, a0, t2
                  sltu         s11, s2, zero
350:              sll          t2, ra, s2
351:              srli         s10, s0, 16
352:              sll          s7, a4, a0
353:              srai         s11, ra, 3
                  andi         a6, s7, 557
                  slti         t3, sp, -186
                  slli         a5, a3, 21
                  sltiu        s10, a6, 1316
                  auipc        s1, 520672
                  addi         a4, t3, -793
                  bltu         s11, s5, 380f
                  srl          s10, ra, t1
                  or           zero, t2, t2
                  add          t4, t2, a3
                  andi         a2, gp, 1070
                  sltu         s5, t5, tp
                  bgeu         a5, a6, 372f
                  ori          gp, s4, 87
                  xori         s1, zero, 890
                  slli         s10, t5, 31
                  ori          s5, a3, -235
                  srl          s5, t2, t1
372:              lui          s5, 63497
                  bltu         a4, t1, 378f
                  ori          t5, s11, -379
                  xori         s6, s8, -164
                  bltu         s9, sp, 378f
                  srli         s4, s5, 3
378:              bge          a1, gp, 388f
                  auipc        s8, 340278
380:              sra          s11, t4, sp
                  bgeu         sp, a6, 385f
                  nop
                  blt          t2, s2, 386f
                  bge          t6, s10, 394f
385:              xori         t3, a2, 1245
386:              or           s8, s2, a1
                  slti         s3, t5, -1969
388:              or           s1, a5, a6
                  xor          a6, gp, gp
                  beq          a7, a5, 394f
                  blt          s10, t2, 392f
392:              add          a4, s8, t6
                  ori          zero, t6, 1497
394:              sltu         s1, s9, a1
                  srai         a6, ra, 24
                  slt          t4, s8, t3
                  lw           s0, 4(sp)
                  sltiu        t5, t0, 385
                  addi         sp, sp, 20
                  lui          a6, 918007
545:              addi x12, x8, 1
545:              jalr x12, x12, 0
sub_5:            sltiu        a2, s1, -947
                  beq          s3, t2, sub_5_stack_p
                  ori          tp, s1, -1387
sub_5_stack_p:    addi         sp, sp, -16
                  sub          ra, t4, s6
                  sra          t0, s5, sp
                  sw           s0, 4(sp)
                  nop
                  addi         ra, zero, 4 #init loop 1 counter
                  xor          t5, s7, a1
                  addi         a1, zero, 9 #init loop 1 limit
                  sll          t4, a4, a7
sub_5_0_1_t:      sub          s9, t1, a6
                  addi         ra, ra, 4 #update loop 1 counter
                  sub          s4, s1, a2
                  sra          a4, s6, s4
                  srl          a4, t0, zero
                  addi         s8, zero, -2 #init loop 0 counter
                  and          s5, t2, s9
                  addi         s1, zero, 4 #init loop 0 limit
                  addi         s3, a4, 1320
                  add          a2, s2, t1
sub_5_0_0_t:      slt          s3, t3, s0
                  sra          tp, zero, s6
                  addi         s8, s8, 2 #update loop 0 counter
                  and          zero, t6, t1
                  beq          s8, s1, sub_5_0_0_t #branch for loop 0
                  sll          t1, a3, s5
                  add          t0, s4, gp
                  srai         t5, s9, 17
                  xori         s7, a0, 1721
                  sltiu        s3, s1, 1398
                  bltu         ra, a1, sub_5_0_1_t #branch for loop 1
                  add          s4, tp, s11
                  addi         t4, zero, 4 #init loop 1 counter
                  addi         s10, zero, 3 #init loop 1 limit
                  auipc        t2, 660955
sub_5_3_1_t:      slti         s8, s11, -1390
                  lui          t1, 126446
                  addi         t4, t4, -1 #update loop 1 counter
                  sra          zero, sp, t6
                  or           tp, sp, s4
                  addi         gp, zero, -10 #init loop 0 counter
                  srai         ra, s4, 24
                  addi         a6, zero, 10 #init loop 0 limit
sub_5_3_0_t:      xor          s3, s8, s4
                  addi         gp, gp, 10 #update loop 0 counter
                  beq          gp, a6, sub_5_3_0_t #branch for loop 0
                  bgeu         t4, s10, sub_5_3_1_t #branch for loop 1
                  sra          t1, t4, a5
                  addi         tp, zero, 10 #init loop 1 counter
                  sra          a6, a7, a0
                  sub          t0, sp, s3
                  sra          s4, t3, s7
                  auipc        gp, 291557
                  srl          a5, a5, s1
                  addi         ra, zero, -18 #init loop 1 limit
                  sltu         t3, ra, sp
                  slt          t3, s6, s9
sub_5_4_1_t:      ori          t2, a0, -621
                  sltu         s9, s1, a4
                  ori          t0, a7, -1860
                  addi         tp, tp, -7 #update loop 1 counter
                  slt          a6, zero, t5
                  addi         t1, zero, 4 #init loop 0 counter
                  sub          a5, t0, a2
                  sra          s2, s0, s6
                  slti         t0, s5, -1994
                  addi         s10, zero, 19 #init loop 0 limit
                  srl          t4, s3, a2
                  xor          s8, a1, sp
                  sra          a5, sp, t0
                  auipc        s4, 15244
                  sltu         a5, t0, a3
sub_5_4_0_t:      or           t5, a7, a1
                  or           t2, s3, zero
                  lui          s8, 554119
                  slli         s9, s6, 18
                  nop
                  srli         t3, t5, 13
                  addi         t1, t1, 4 #update loop 0 counter
                  slt          t0, s3, s1
                  bltu         t1, s10, sub_5_4_0_t #branch for loop 0
                  beq          tp, ra, sub_5_4_1_t #branch for loop 1
                  sltiu        zero, s4, 966
                  addi         t0, zero, 4 #init loop 1 counter
                  addi         s10, zero, 0 #init loop 1 limit
sub_5_2_1_t:      andi         s7, t4, 1187
                  addi         t0, t0, -10 #update loop 1 counter
                  addi         t2, zero, 5 #init loop 0 counter
                  addi         a0, zero, 13 #init loop 0 limit
                  slti         gp, a5, 1025
sub_5_2_0_t:      xor          gp, a1, t3
                  sll          t3, t2, s11
                  addi         t2, t2, 6 #update loop 0 counter
                  blt          t2, a0, sub_5_2_0_t #branch for loop 0
                  bge          t0, s10, sub_5_2_1_t #branch for loop 1
                  lui          s2, 761605
                  addi         a4, zero, -1 #init loop 0 counter
                  and          t2, a2, s2
                  and          t6, s5, t4
                  sra          zero, s6, a0
                  addi         s10, zero, -4 #init loop 0 limit
                  srai         t4, a7, 9
sub_5_1_0_t:      ori          t0, s11, -24
                  addi         a4, a4, -3 #update loop 0 counter
                  srl          s7, t3, t4
                  beq          a4, s10, sub_5_1_0_t #branch for loop 0
                  slti         ra, a1, 1366
                  slti         t5, t0, 1639
                  and          s5, s2, s6
                  sra          a6, s6, a2
                  xori         a6, a0, 185
                  sltu         a6, a4, a1
                  beq          a4, gp, 18f
                  addi         a0, t0, 1463
                  sll          s0, t5, a4
                  and          t1, t2, t6
                  or           tp, ra, a4
                  srai         gp, t6, 2
                  or           s4, t6, ra
                  ori          a6, a4, -1170
                  xori         a5, t0, -1495
                  sltu         s6, a3, s7
                  lui          s1, 92133
                  sltiu        s8, gp, -27
                  bne          tp, s0, 23f
18:               ori          zero, t0, -1086
                  xori         s3, t2, -867
                  bgeu         t4, gp, 40f
                  srli         t1, zero, 1
                  slti         t5, s6, 266
23:               bgeu         t1, t4, 25f
                  xori         t2, t4, -1220
25:               add          gp, a6, a7
                  srli         s10, t0, 12
                  xori         s4, s3, -503
                  sra          s8, a7, s1
                  srl          s0, a1, gp
                  srai         a0, s1, 22
                  sltu         s7, t0, a4
                  xor          t2, s0, s2
                  addi         a0, t4, 819
                  slli         zero, s7, 7
                  blt          s9, a0, 41f
                  xor          s2, zero, a2
                  andi         s10, a4, 160
                  srl          s10, s7, t6
                  sra          s10, tp, t3
40:               slti         s10, s1, -344
41:               sltiu        s1, a4, 1837
                  beq          s9, s9, 54f
                  beq          zero, tp, 44f
44:               andi         s0, t6, 814
                  addi         t4, s6, -116
                  sub          s8, a0, a3
                  auipc        a4, 910137
                  sub          s11, s10, a4
                  xori         zero, s5, 509
                  srai         ra, s4, 14
                  beq          s3, s0, 61f
                  or           a0, s6, a7
                  ori          t1, a4, 921
54:               srli         t1, t1, 6
                  auipc        t6, 558819
                  lui          s0, 974647
                  xor          a0, t4, a7
                  add          s2, a3, a3
                  sub          t6, s7, tp
                  srai         s5, s10, 24
61:               bltu         t4, a0, 64f
                  sra          t2, gp, a1
                  sltu         t3, s0, s4
64:               slti         t0, s11, -1390
                  nop
                  srli         gp, t1, 29
                  and          s0, a0, a0
                  sltiu        a4, t5, -1147
                  sltiu        a1, a1, 1727
                  bne          t2, sp, 73f
                  bgeu         t5, t3, 87f
                  sltu         s3, s8, a7
73:               srl          t5, s7, s10
                  bge          s8, a6, 75f
75:               andi         s6, s11, 754
                  bne          s7, s7, 93f
                  sltiu        s3, s6, -798
                  bne          s8, t4, 92f
                  srli         tp, s1, 2
                  sll          t2, ra, t1
                  ori          a2, tp, 47
                  slt          t6, tp, sp
                  xori         s5, a5, 1885
                  bne          s10, tp, 102f
                  nop
                  bgeu         gp, s5, 95f
87:               bge          t2, s6, 99f
                  slli         t1, gp, 17
                  srl          s10, a6, t0
                  ori          s2, ra, -1575
                  and          t2, gp, a6
92:               beq          t1, s0, 93f
93:               bgeu         s3, t4, 99f
                  slti         s11, ra, 937
95:               and          a0, a3, s8
                  sub          t1, s9, s1
                  add          t2, a2, s9
                  addi         s0, s1, -625
99:               bltu         s4, sp, 113f
                  xor          a6, tp, s6
                  sra          t6, a4, s1
102:              sll          s2, s6, s9
                  srai         s2, a4, 4
                  beq          t2, s4, 115f
                  srl          s10, s6, t3
                  andi         a1, zero, 1210
                  bne          s7, a6, 125f
                  srl          s8, t5, gp
                  or           a0, t6, a3
                  beq          s8, gp, 114f
                  xor          a0, a5, t6
                  sra          s11, ra, t6
113:              bne          a7, s6, 114f
114:              lui          s8, 147847
115:              ori          s3, s9, 618
                  sltiu        s1, a1, 1318
                  nop
                  add          s7, s0, s10
                  slt          a1, a3, a1
                  or           s7, s7, t1
                  bne          gp, a2, 137f
                  srai         t0, sp, 15
                  bge          t5, s10, 135f
                  addi         t6, t5, 1833
125:              ori          t1, t5, 1174
                  slli         s1, a5, 24
                  and          s9, t0, tp
                  srai         s4, s5, 6
                  auipc        s6, 726547
                  srl          s5, t4, s0
                  sltiu        s8, a2, 326
                  bltu         s6, tp, 141f
                  blt          t4, a0, 145f
                  auipc        s5, 690638
135:              bltu         s10, a1, 139f
                  add          a5, t1, s1
137:              slt          s2, t3, gp
                  srai         a1, a4, 28
139:              sltiu        s3, s7, 1473
                  nop
141:              blt          tp, s10, 158f
                  addi         a4, t4, -1600
                  ori          s8, s2, -1463
                  nop
145:              lui          t5, 466533
                  bltu         s3, s3, 157f
                  andi         zero, a2, -1124
                  ori          s0, s0, 125
                  addi         s7, a1, 614
                  lui          a6, 196233
                  addi         s2, s9, 1977
                  xori         a0, s8, 595
                  add          t2, t1, t1
                  nop
                  add          s1, s9, s11
                  xori         s9, a1, 736
157:              addi         zero, a2, 903
158:              slt          a4, gp, zero
                  andi         t0, t6, -1457
                  auipc        s4, 836002
                  sltiu        t6, s2, -1118
                  ori          s6, gp, 1375
                  xori         t3, s0, -767
                  addi         s8, a1, 483
                  srli         a2, t1, 19
                  sra          t5, sp, ra
                  add          s11, t4, s3
                  bne          a3, s5, 185f
                  srai         tp, a6, 4
                  xor          t1, a0, a4
                  nop
                  beq          ra, t5, 188f
                  blt          t4, t5, 175f
                  xori         tp, s1, -1506
175:              lui          gp, 130167
                  sub          s2, t2, a3
                  andi         s0, tp, 49
                  andi         s6, a0, 1758
                  bgeu         ra, s1, 193f
                  xor          a5, s3, tp
                  andi         t6, s3, 1276
                  slti         s3, s9, -1406
                  bge          s6, s8, 201f
                  or           t6, s6, t4
185:              bge          a1, s2, 205f
                  srai         s4, a5, 1
                  bgeu         s3, a6, 188f
188:              lui          a4, 946690
                  addi         t2, s9, -1908
                  srl          s1, sp, a0
                  and          gp, a3, t4
                  srli         t3, s11, 0
193:              sra          t5, t1, t4
                  srai         s0, a4, 2
                  addi         tp, s7, -627
                  bgeu         s7, a7, 209f
                  and          a6, a7, s4
                  slt          s5, s11, t0
                  xor          gp, a6, a5
                  nop
201:              ori          a5, s4, -287
                  or           s11, s10, t0
                  bltu         s1, t0, 207f
                  sll          a2, s10, zero
205:              nop
                  or           s1, gp, t0
207:              bgeu         tp, s1, 216f
                  lui          t3, 216306
209:              or           s5, s3, s4
                  sll          s4, s10, a3
                  slti         a4, a5, -788
                  lui          a2, 693303
                  or           s10, s4, s1
                  sll          tp, sp, s11
                  bge          t4, a0, 229f
216:              or           s0, gp, s2
                  sub          s2, s1, s3
                  srl          ra, t1, s4
                  bltu         s11, a0, 236f
                  srl          s6, t0, s2
                  ori          a6, a3, 546
                  nop
                  beq          sp, sp, 235f
                  auipc        a0, 624180
                  sra          tp, a4, gp
                  sll          tp, s4, a6
                  bltu         a2, a4, 239f
                  nop
229:              slli         zero, t3, 18
                  srai         ra, t3, 4
                  xori         gp, t5, -572
                  sll          s3, s5, s3
                  xor          t4, a3, a2
                  slli         s4, s2, 10
235:              slli         a5, t3, 20
236:              addi         s10, s5, 267
                  bge          a5, t0, 238f
238:              bge          s7, zero, 244f
239:              slli         tp, a7, 31
                  sub          s11, s8, s5
                  bltu         s2, zero, 249f
                  xor          a0, s11, a0
                  beq          t6, t0, 249f
244:              nop
                  sll          ra, a5, ra
                  or           t6, s6, s8
                  srl          a1, a6, s8
                  slli         t3, a3, 22
249:              and          tp, s1, a0
                  xor          gp, s11, a4
                  add          t3, sp, s9
                  lw           s0, 4(sp)
                  srai         a2, a5, 11
                  sll          t0, t3, a7
                  sub          s1, s5, s7
                  addi         sp, sp, 16
                  add          t6, s2, t3
367:              addi x18, x8, 0
367:              jalr x18, x18, 0
sub_2:            slti         a5, t6, 1838
                  blt          s1, a1, sub_2_stack_p
                  sll          s4, a1, s6
sub_2_stack_p:    addi         sp, sp, -8
                  and          s7, a7, t2
                  xor          zero, gp, tp
                  sltu         s1, a1, t0
                  srli         a5, s3, 22
                  sub          s2, a0, a3
                  srai         a6, s5, 13
                  sw           s0, 4(sp)
                  xori         a2, gp, 1732
                  addi         a4, zero, 9 #init loop 1 counter
                  addi         s10, zero, 17 #init loop 1 limit
sub_2_3_1_t:      xori         t1, s0, -234
                  sub          s4, s3, t6
                  slli         s11, s5, 7
                  addi         a4, a4, 1 #update loop 1 counter
                  lui          a5, 837917
                  addi         t0, zero, 1 #init loop 0 counter
                  srl          s6, a4, sp
                  addi         a2, zero, 15 #init loop 0 limit
                  sub          a5, s5, t2
sub_2_3_0_t:      auipc        a6, 170379
                  and          s8, t4, zero
                  addi         t0, t0, 7 #update loop 0 counter
                  slt          s2, gp, a7
                  beq          t0, a2, sub_2_3_0_t #branch for loop 0
                  slt          ra, ra, s6
                  blt          a4, s10, sub_2_3_1_t #branch for loop 1
                  sub          t4, t5, zero
                  addi         s1, zero, -1 #init loop 0 counter
                  xori         s0, a6, 1448
                  srli         t1, s11, 16
                  srl          gp, t3, gp
                  sll          t0, a0, s2
                  sub          ra, t5, t6
                  srai         a2, a2, 4
                  addi         a1, zero, 14 #init loop 0 limit
                  sra          a4, a6, s8
                  xor          s8, s1, tp
                  sll          gp, s7, a6
                  or           s7, a6, s3
                  slli         a4, s8, 30
                  sltiu        a2, s3, -1629
                  sltiu        t4, s1, -865
                  sra          a6, gp, t0
                  sll          gp, s4, t6
                  slti         s2, t2, 1178
sub_2_5_0_t:      add          s3, t6, t5
                  andi         ra, tp, 159
                  slt          t5, s6, s0
                  and          s9, a5, t2
                  sra          s2, t3, s2
                  addi         s1, s1, 5 #update loop 0 counter
                  sra          a4, s9, t0
                  xor          t5, a7, a6
                  lui          t1, 529818
                  sltu         zero, a7, sp
                  bne          s1, a1, sub_2_5_0_t #branch for loop 0
                  xori         a4, s10, 470
                  addi         a5, zero, -4 #init loop 1 counter
                  addi         a4, zero, -1 #init loop 1 limit
sub_2_4_1_t:      or           a6, zero, a0
                  sub          a0, a1, s6
                  addi         a5, a5, 3 #update loop 1 counter
                  addi         s4, zero, -6 #init loop 0 counter
                  srl          t6, ra, a2
                  srli         t1, s9, 30
                  addi         s8, zero, -14 #init loop 0 limit
                  slti         t6, s5, -1995
sub_2_4_0_t:      andi         gp, a1, 376
                  addi         s4, s4, -7 #update loop 0 counter
                  sra          ra, gp, zero
                  bge          s4, s8, sub_2_4_0_t #branch for loop 0
                  andi         s5, s5, -205
                  bne          a5, a4, sub_2_4_1_t #branch for loop 1
                  sltu         s9, s1, t4
                  addi         a2, zero, 1 #init loop 0 counter
                  sra          t2, gp, a7
                  lui          t3, 427104
                  slti         t4, s2, 579
                  sll          a5, a5, s11
                  lui          t2, 422403
                  nop
                  srai         t2, s11, 27
                  addi         s3, zero, -17 #init loop 0 limit
                  slti         t3, a7, 946
                  or           tp, s3, a5
                  srli         s11, zero, 29
sub_2_6_0_t:      nop
                  ori          s4, t6, 1083
                  addi         a2, a2, -9 #update loop 0 counter
                  xori         s11, t5, -1805
                  srli         t3, ra, 2
                  sltiu        ra, t3, 48
                  srli         a0, s11, 18
                  slti         ra, s11, 1753
                  sub          s11, a2, a0
                  beq          a2, s3, sub_2_6_0_t #branch for loop 0
                  slli         s8, s6, 7
                  addi         a1, zero, -7 #init loop 0 counter
                  auipc        zero, 903821
                  sltiu        a4, s1, 2009
                  lui          t6, 998164
                  addi         s3, zero, -14 #init loop 0 limit
                  sub          gp, s8, s0
                  xori         a2, s1, 1919
                  slti         zero, a7, -505
sub_2_0_0_t:      andi         s2, gp, 1627
                  sub          s9, gp, s3
                  slt          t6, a1, sp
                  or           s1, t4, zero
                  sltu         s11, t0, s7
                  addi         a1, a1, -7 #update loop 0 counter
                  sra          t5, s1, s0
                  beq          a1, s3, sub_2_0_0_t #branch for loop 0
                  andi         s11, sp, 437
                  addi         s1, zero, -4 #init loop 1 counter
                  sra          zero, s2, a0
                  addi         a2, zero, -10 #init loop 1 limit
                  slt          s9, a0, t0
                  slti         s3, t4, -1139
                  and          s6, t5, s5
                  xor          s5, s10, s4
                  sll          t0, t4, t2
                  xor          t3, zero, a3
sub_2_2_1_t:      or           t4, zero, a1
                  addi         s1, s1, -6 #update loop 1 counter
                  sltu         a0, s8, s0
                  sltiu        t0, tp, 691
                  addi         t2, zero, 3 #init loop 0 counter
                  addi         t6, a3, 1527
                  addi         s3, s8, 678
                  addi         a1, zero, 16 #init loop 0 limit
                  ori          s5, t1, 1624
sub_2_2_0_t:      andi         s7, s1, -750
                  and          a6, a3, a7
                  addi         t2, t2, 3 #update loop 0 counter
                  sra          a4, a5, a4
                  slli         s3, t3, 31
                  bltu         t2, a1, sub_2_2_0_t #branch for loop 0
                  slti         t3, a7, 1058
                  addi         s7, a0, 696
                  bne          s1, a2, sub_2_2_1_t #branch for loop 1
                  slt          a5, s3, s5
                  or           s11, s1, s8
                  auipc        s3, 383850
                  srli         t3, a5, 2
                  bne          s8, a4, 22f
                  andi         s2, a0, -14
                  beq          s8, sp, 11f
                  srli         zero, s11, 8
                  srli         s11, s5, 18
                  slli         ra, s2, 27
                  bltu         s1, a3, 13f
                  auipc        s11, 588560
11:               beq          t0, a3, 26f
                  xori         a2, t6, -899
13:               andi         tp, t2, -88
                  nop
                  sltiu        s11, s10, 823
                  lui          a4, 509158
                  sra          ra, t6, s10
                  sub          s3, s9, a2
                  sltiu        t5, a7, 1447
                  bne          s5, sp, 32f
                  beq          t6, t6, 40f
22:               sltu         a5, s8, s6
                  bne          s1, t3, 43f
                  lui          gp, 233054
                  sltu         s9, s10, s0
26:               xor          a5, a6, a1
                  addi         s3, s11, 1978
                  blt          a6, s11, 42f
                  srl          t2, s11, a4
                  sra          s6, s9, s4
                  nop
32:               sra          t3, s7, s1
                  sub          s8, a1, s0
                  or           s10, t1, s0
                  srl          a5, t1, s3
                  lui          t6, 126194
                  blt          gp, s1, 54f
                  sll          s7, s6, a5
                  sltu         ra, s1, t3
40:               sltiu        s5, s6, 1466
                  bltu         a3, s1, 56f
42:               srai         t2, t1, 4
43:               beq          s11, s5, 46f
                  sll          a2, t5, t6
                  bge          a2, gp, 59f
46:               xor          s7, a7, s11
                  lui          t6, 450963
                  sltu         s10, a1, ra
                  srli         gp, s1, 12
                  andi         s5, t3, 58
                  auipc        t1, 643775
                  xor          t4, t2, ra
                  slt          t3, ra, t2
54:               srai         t6, s7, 8
                  addi         gp, s2, 641
56:               nop
                  bne          s11, t2, 68f
                  nop
59:               and          s4, a0, a4
                  sub          s4, zero, ra
                  bne          s8, a3, 79f
                  bgeu         s8, s3, 82f
                  bne          t3, a2, 81f
                  bltu         s1, s7, 78f
                  sltiu        t2, t5, 1219
                  bltu         a7, a5, 75f
                  sltiu        s3, t4, 734
68:               slt          a2, s5, s11
                  srai         gp, t1, 18
                  lui          s6, 318903
                  andi         s8, t1, 1361
                  ori          s5, a4, 1751
                  addi         t5, a3, 1571
                  slt          s9, t3, s2
75:               bgeu         s8, a3, 95f
                  ori          s3, t3, 1025
                  sltu         s9, s1, t3
78:               bge          s8, t1, 87f
79:               and          s7, s0, s11
                  sra          s8, s0, s9
81:               bge          s3, t6, 82f
82:               srai         t4, a4, 15
                  xori         t5, s10, -273
                  slti         s3, s6, 1885
                  andi         s10, a5, -570
                  slti         a4, t1, 1330
87:               beq          s6, zero, 99f
                  andi         s3, s11, -1683
                  bltu         s11, sp, 90f
90:               sub          s4, gp, zero
                  beq          s4, s2, 108f
                  and          s3, s3, t5
                  xor          s1, s8, zero
                  xori         a2, s2, -632
95:               sll          s3, s1, t4
                  and          a2, a2, a7
                  bltu         gp, t1, 104f
                  slti         a2, s0, -1927
99:               sub          t0, s10, t2
                  auipc        t1, 54266
                  sra          gp, s2, a5
                  xor          s3, s1, s6
                  addi         s3, tp, -23
104:              bge          s11, s9, 106f
                  add          s9, s9, s5
106:              and          s4, t5, t5
                  bge          s3, sp, 117f
108:              bgeu         t4, s7, 121f
                  add          a2, t0, a4
                  blt          s4, a2, 111f
111:              sltu         s0, t0, t3
                  blt          t0, s8, 121f
                  bltu         a3, t1, 119f
                  lui          t0, 843011
                  bge          t5, t6, 134f
                  sub          t1, t6, a7
117:              bgeu         zero, s8, 132f
                  bltu         t0, s0, 120f
119:              xori         t5, t2, 1689
120:              sltiu        gp, t6, -1720
121:              slli         a0, t0, 13
                  slti         s10, a0, -408
                  and          s6, s4, s6
                  srl          a1, s4, a7
                  and          t2, s8, t5
                  sub          t0, t1, s6
                  and          a6, t1, s10
                  auipc        s5, 895354
                  auipc        a1, 165569
                  slt          tp, s9, t5
                  srai         t6, a3, 8
132:              and          s3, s4, a2
                  bltu         tp, s4, 153f
134:              bltu         t1, t1, 151f
                  or           s11, a3, a7
                  addi         a0, t2, -456
                  slli         a6, sp, 15
                  sltiu        t1, s1, -131
                  srai         zero, t2, 6
                  add          t4, s8, tp
                  sll          t5, a4, s4
                  sltu         gp, zero, s2
                  srl          t6, a6, t4
                  addi         t3, a4, -1080
                  srl          gp, ra, gp
                  sltiu        t1, s3, 1437
                  bge          s0, t4, 159f
                  auipc        s0, 51804
                  andi         t1, a6, 1745
                  sltiu        s3, a2, 834
151:              and          t0, s9, s10
                  slt          a5, sp, s7
153:              xor          gp, t1, t1
                  sltiu        t5, s10, -1421
                  auipc        s6, 94720
                  sll          s1, a1, s6
                  nop
                  lui          a0, 404984
159:              srl          a0, s6, t3
                  xori         t4, s5, 1156
                  xori         zero, s0, -939
                  sltu         t0, s8, s5
                  srl          s1, t1, t5
                  sra          s10, s3, s3
                  bne          t3, tp, 179f
                  srl          s5, a3, s6
                  sll          s8, t2, s0
                  slti         t2, s11, 559
                  lui          a4, 174146
                  ori          s3, a2, -1098
                  or           s0, s2, a3
                  sltiu        a1, a1, -1591
                  srli         t3, t0, 1
                  nop
                  slli         s10, s11, 5
                  and          t6, s2, s9
                  addi         a5, s2, -749
                  sll          t6, gp, ra
179:              auipc        gp, 360672
                  bge          a5, a0, 192f
                  slt          s6, zero, a1
                  ori          a6, a6, 689
                  sub          s6, a6, a6
                  lui          t4, 589115
                  beq          a4, a7, 202f
                  lui          a0, 830575
                  lui          ra, 730617
                  lui          t6, 1012350
                  sltu         s0, a0, zero
                  srli         t2, s6, 21
                  bltu         t0, ra, 211f
192:              xori         a4, s1, 919
                  and          a5, a0, a2
                  addi         a5, ra, 567
                  bge          s10, t4, 205f
                  sltu         a0, s11, t4
                  sltu         ra, sp, s9
                  ori          a1, a7, 1447
                  add          a0, zero, t2
                  sub          t5, a3, a5
                  srli         tp, t4, 19
202:              andi         a4, zero, -438
                  srli         a0, a1, 9
                  bgeu         a7, s1, 205f
205:              sltu         s6, s1, tp
                  slti         zero, t0, -431
                  ori          s10, a0, 1005
                  add          a0, s8, s6
                  bltu         a5, a4, 218f
                  bge          a0, s0, 221f
211:              blt          t5, s8, 220f
                  sltiu        a6, s4, 1068
                  ori          s3, zero, -438
                  srai         s0, s8, 12
                  bltu         gp, a3, 228f
                  andi         s9, sp, -1542
                  addi         t3, s9, -1639
218:              nop
                  sll          s6, s11, t6
220:              and          s4, s11, s7
221:              addi         a1, a5, -243
                  ori          s9, s11, 1625
                  bge          zero, s8, 242f
                  bltu         a2, t4, 239f
                  bltu         t5, t3, 232f
                  bltu         s11, a7, 244f
                  srai         t1, t3, 21
228:              and          t5, a4, s4
                  srli         t1, a6, 6
                  srl          gp, a0, s8
                  xori         s4, zero, -1706
232:              addi         t4, sp, -498
                  andi         t3, a3, 793
                  xori         s1, t4, -851
                  slt          t0, ra, s10
                  sltu         s4, a2, s1
                  xor          s0, s4, s7
                  addi         t6, zero, 7 #init loop 1 counter
                  addi         ra, zero, -2 #init loop 1 limit
sub_2_1_1_t:      or           t1, a2, a1
                  addi         t6, t6, -9 #update loop 1 counter
                  addi         s9, zero, -2 #init loop 0 counter
                  addi         t2, zero, 18 #init loop 0 limit
sub_2_1_0_t:      ori          s8, s6, -1519
                  addi         s9, s9, 5 #update loop 0 counter
                  bltu         s9, t2, sub_2_1_0_t #branch for loop 0
                  beq          t6, ra, sub_2_1_1_t #branch for loop 1
                  or           tp, a0, t3
                  bne          s10, a3, 241f
239:              bne          t3, ra, 257f
                  lui          gp, 508024
241:              sltu         t2, s8, t1
242:              blt          t5, s0, 251f
                  bgeu         t4, ra, 257f
244:              sltu         a1, s5, a2
                  addi         s9, a4, 37
                  xor          s0, a2, sp
                  sra          a1, s4, a0
                  xori         s1, a2, -1486
                  nop
                  slti         zero, t2, -2033
251:              beq          a3, zero, 252f
252:              add          t3, sp, s11
                  bltu         a4, ra, 273f
                  sll          a6, s8, s2
                  slt          s2, t4, s8
                  ori          a4, a0, 1092
257:              bgeu         s4, gp, 258f
258:              and          t1, t3, zero
                  xor          s7, a0, s0
                  andi         a5, ra, 1869
                  slli         a4, s5, 17
                  srai         a5, s8, 6
                  bne          sp, s3, 277f
                  srl          a4, t6, t5
                  slli         t4, t1, 12
                  lui          a4, 350529
                  auipc        zero, 462842
                  add          a1, s0, s7
                  and          t2, a2, s7
                  slli         s6, s5, 10
                  bltu         t0, t2, 275f
                  bltu         t1, s6, 284f
273:              add          s8, s7, a3
                  add          a4, t0, t0
275:              lui          s9, 715450
                  blt          t4, s5, 291f
277:              bne          s0, t5, 295f
                  nop
                  ori          t0, a2, -1039
                  and          s11, t3, tp
                  srai         ra, a3, 13
                  sltiu        t2, a7, -386
                  add          a0, a5, tp
284:              and          s3, a6, gp
                  slli         t2, s2, 24
                  bgeu         tp, t0, 305f
                  xor          s7, a4, zero
                  bge          s1, t2, 297f
                  bltu         t6, a3, 309f
                  auipc        s9, 657118
291:              srli         s1, a3, 14
                  sll          t5, a6, s6
                  xor          gp, s1, s8
                  sltiu        a1, s8, 2041
295:              ori          s5, a4, -2012
                  add          a5, t6, a5
297:              srai         tp, a4, 6
                  bne          s10, tp, 312f
                  xori         s3, s7, -37
                  srli         s8, s10, 0
                  xor          s3, s0, gp
                  sltiu        a4, s7, 1744
                  xor          t4, s3, t1
                  sltu         t4, s6, t5
305:              xori         s10, gp, 323
                  slli         zero, s9, 13
                  slti         zero, s9, -491
                  bne          a6, a6, 318f
309:              sra          gp, a1, t2
                  sra          t3, t5, t4
                  sltu         t0, tp, s11
312:              srai         a4, a2, 13
                  add          tp, s3, t4
                  beq          s9, tp, 331f
                  slti         tp, a1, 1589
                  srli         t5, a3, 17
                  sra          t0, gp, sp
318:              slti         a1, tp, 584
                  sltu         t5, s1, s3
                  add          t2, t3, s5
                  bltu         t0, s1, 340f
                  slt          a4, s9, t1
                  addi         s6, s0, -1919
                  sltiu        a4, zero, -1605
                  addi         tp, t0, -169
                  slt          tp, t5, t1
                  sll          t4, t3, a4
                  xor          t0, a2, zero
                  lui          t4, 130669
                  srl          s2, s10, t2
331:              or           t5, s5, t6
                  xor          s5, t2, s1
                  addi         a6, zero, -285
                  ori          s2, t0, 2019
                  bne          s0, t4, 349f
                  bge          tp, s3, 338f
                  blt          a0, t1, 349f
338:              blt          t6, t6, 347f
                  bne          s4, a4, 354f
340:              srli         a0, a7, 0
                  ori          s0, s9, -1677
                  beq          t4, s11, 346f
                  or           a2, a6, gp
                  sra          a0, s6, a4
                  slt          tp, a0, sp
346:              addi         s11, t4, 558
347:              bgeu         tp, t3, 367f
                  andi         s6, a7, -1817
349:              bgeu         sp, s7, 350f
350:              sll          t6, t4, tp
                  bne          s11, s8, 352f
352:              add          s5, s10, t0
                  sltu         s2, s9, s7
354:              srai         t1, a3, 23
                  nop
                  srli         zero, s9, 2
                  sll          s1, s9, s8
                  sll          s5, a0, s3
                  srli         s5, ra, 10
                  or           a1, gp, a7
                  slt          ra, t1, s0
                  slt          t1, s7, a3
                  xori         s2, tp, 1545
                  sltiu        a0, s1, 1268
                  addi         s5, a4, 547
                  addi         ra, t6, -564
367:              slti         t0, sp, 311
                  srai         s5, a7, 13
                  or           gp, t2, a7
                  beq          a4, t4, 379f
                  ori          s6, a4, -175
                  srl          a5, a2, s9
                  bltu         s0, s8, 385f
                  slt          a0, tp, a7
                  srai         s10, a0, 15
                  sll          s1, a5, s3
                  lui          s5, 965841
                  auipc        t0, 706773
379:              beq          tp, t6, 385f
                  sltiu        s1, t5, 1317
                  srl          a2, s9, gp
                  beq          t0, s10, 385f
                  srl          s7, s1, t0
                  srli         t2, t1, 23
385:              add          t0, s6, tp
                  lw           s0, 4(sp)
                  slt          t6, s1, tp
                  sll          gp, s7, t4
                  slt          t4, a4, a0
                  addi         sp, sp, 8
                  xor          s9, ra, s5
                  sra          t2, s1, s7
                  sltu         s8, s11, s4
                  and          zero, zero, s0
                  sll          s8, a6, a1
553:              addi x18, x8, 1
553:              jalr x18, x18, 0
sub_1:            addi         sp, sp, -28
                  sltiu        s11, s4, -382
                  sll          s8, a6, t3
                  sll          s1, s2, a0
                  sw           s0, 4(sp)
                  or           s6, s2, s4
                  nop
                  bgeu         a3, a4, 9f
                  xor          s2, s2, a2
                  sltu         t6, s8, s9
                  blt          t4, s5, 9f
                  xor          s6, ra, s7
                  or           t4, tp, a1
                  bgeu         s3, t5, 8f
8:                xori         s2, s7, -1984
9:                sll          t6, t5, gp
                  nop
                  lw           s0, 4(sp)
                  sltu         a2, ra, a7
                  auipc        s4, 403277
                  addi         sp, sp, 28
                  sll          t2, a6, s6
                  slti         s3, gp, 1490
23:               addi x29, x8, 1
23:               jalr x29, x29, 0
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
mmode_intr_vector_1:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x17, x2, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x21, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x21, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x21, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x21, x20, ecall_handler
                  li x20, 0x1
                  beq x21, x20, instr_fault_handler
                  li x20, 0x5
                  beq x21, x20, load_fault_handler
                  li x20, 0x7
                  beq x21, x20, store_fault_handler
                  li x20, 0xc
                  beq x21, x20, pt_fault_handler
                  li x20, 0xd
                  beq x21, x20, pt_fault_handler
                  li x20, 0xf
                  beq x21, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x2, x17, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
