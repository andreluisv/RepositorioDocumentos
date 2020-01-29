#include <reg.h>
.data
string: .ASCIIZ "Gabriel Eden"
//Define uma string de caracteres
caractere: .ASCIIZ "e" //Define o caractere de entrada 
.set noreorder //Obrigatório para essa questão
.text
.globl start
.ent start
start:
// local onde os caracteres serão carregados e comparados
	la a0, string
	lb a1, 0(a0)
	la a2, caractere
	lb a2, 0(a2)
	xor $2, $2, $2
FR: beq a1, $0, FIM	
	bne a1, a2, CNT
	addi $2, $2, 1
CNT:addi a0, a0, 1
	lb a1, 0(a0)
	j FR
FIM:nop
	break
.end start 