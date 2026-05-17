.data
N:		.word 0		# Value of N
Result:		.word 0		# Initialize result to zero
Error:		.asciiz 	"N < 0, invalid for this program!\n"
Prompt_N:	.asciiz		"Enter N:"	
	
	.eqv	sum	$t2
	.eqv	counter	$t3
.text

main:
	# Read N from the keyboard
	la $a0, Prompt_N
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	sw $v0, N
	
	# Save the "N" argument into one of the saved temporary registers
	la	$t0, N
	lw	$t1, 0($t0)		# Load length value to $t1
	
	bltz	$t1, error		# If N < 0, error
	
	slti	$t4, $t1, 2		# Check if N < 2
	bnez	$t4, store_result	# If N < 2, store_result
	
	move	sum, $zero		# initialize sum to 0
	move	counter, $zero		# initialize counter to zero
	
sum_loop:
	andi	$t4, counter, 1		# check if counter is even
	beqz	$t4, add_to_sum		# if counter is even, add to sum
	j	increment_counter
	
add_to_sum:
	add sum, sum, counter		# add counter to sum
	
increment_counter:
	addi	counter, counter, 1	# +1 to counter
	ble	counter, $t1, sum_loop	# If counter <= N, continue loop
	
store_result:
	la 	$t0, Result		# Load address of Result into $t0
	sw 	sum, 0($t0)		# Store sum into result
	
	# Print the result
	li $v0, 1
	move $a0, sum
	syscall
	
exit:
	li $v0, 10
	syscall

error:
	# Print error message
	li $v0, 4
	la $a0, Error
	syscall
	
	# Store -1 in Result
	la $t0, Result
	li $t1, -1
	sw $t1, 0($t0)
	
	j exit

.globl main

# By Ndubueze Echefu
# This program sums all even numbers less than or equal to N. Anything less than 0 is wrong! >:(