#include <reg.h>
.data
A: .word 7, 6, 5, 4, 1, 2
.text
.globl start
.ent start
start: lui a0,0x8002
ori a0, a0, 0x00a0
addi a1, $0,0x6
xor t0,t0,t0
nop
CW1: beq t0,a1,EW1
addi t1,t0,1
nop
nop
CW2: beq t1, a1, EW2
add t2, t0, t0
add t2, t2, t2
add t2, a0, t2
add t3, t1, t1
add t3, t3, t3
add t3, a0, t3
lw t4, 0(t2)
lw t5, 0(t3)
slt t6, t4, t5
nop
nop
nop
bne t6, $0, IGN
beq t4, t5, IGN
sw t5, 0(t2)
sw t4, 0(t3)
IGN: addi t1, t1, 1
nop
beq $0, $0, CW2
EW2: addi t0, t0, 1
nop
beq $0, $0, CW1
EW1: beq $0, $0, FIM
FIM: nop
 break
.end start