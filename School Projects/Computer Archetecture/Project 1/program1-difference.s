.data	
difference_notice:	.asciiz	"These two arguments are not the same..."
prompt_arg1:		.asciiz "Enter arg1: "
prompt_arg2:		.asciiz "Enter arg2: "
arg1:			.word 0
arg2:			.word 0
zero:			.asciiz "0"

.text
.globl main
main:
	#	Prompt for arg1
	la	$a0, prompt_arg1
	li	$v0, 4
	syscall
	
	#	Read arg1
	li	$v0, 5
	syscall
	bltz	$v0, zero_out	#	If input is negative, jump to zero_out
	sw	$v0, arg1	#	Store input in arg1
	
	#	Prompt for arg2
	la	$a0, prompt_arg2
	li	$v0, 4
	syscall
	
	#	Read arg2
	li	$v0, 5
	syscall
	bltz	$v0, zero_out	#	If input is negative, jump to zero_out
	sw	$v0, arg2	#	Store input in arg2
	
	#	Load values to registers
	lw	$t0, arg1
	lw	$t1, arg2
	
	#	Compare values
	beq	$t0, $t1, fin
	la	$a0, difference_notice
	li	$v0, 4
	syscall
	j	fin
	
zero_out:
	li	$v0, 4
	la	$a0, zero
	syscall
	
fin:	
	li	$v0, 10		#	Exit number 10
	syscall			#	Execute


# Project 1
# By Ndubueze Echefu
# This file counts and adds the amount of what "arg" has in its .word derivitive until it runs out.
