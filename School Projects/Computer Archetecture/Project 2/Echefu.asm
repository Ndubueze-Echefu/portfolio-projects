# Ndubueze Echefu | nce210002 | Project 2

# Reference:
# - $s0 = order1 | arr1[]
# - $s1 = order2 | arr2[]
# - $s2 = Total size of preferred sizes
# - $s3 = preferred_size1 | arr1Size
# - $s4 = preferred_size2 | arr2Size
# - $s5 = base address of merged[]

# This program follows the merge prompt from Project 2.
# - What it does first is asking the user TWICE the amount of numbers they're gonna input; aka. how big the list is going to be
# - Then it asks the user to actually implement their choice of numbers; again, twice.
# 	- CAUTION: It's the user's responsibility to put them in order; the program automatically assumes that they are regardless.
# - Then it does the magic!

# Note: this whole thing is based on a C++ code I made eariler. Some of the comments may refer to the code itself.
# Don't worry, I'll upload the C++ file on top of this one! :D

	.data
# Main variables
order1: 		.space 4096	# Allocates 1024 words
order2: 		.space 4096	# Allocates 1024 words
preferred_size1:	.word 0		# Initalizes to 0
preferred_size2:	.word 0		# Initalizes to 0

# Prompts for main:
intro:			.asciiz "It's merging time! Enter the first list."
prompt_preferred_size1:	.asciiz "How many numbers are you listing? (up to 1024)"
newline:		.asciiz "\n"
enter_number:		.asciiz "Enter an number for positon "
intro2:			.asciiz "Alright, give me another amount of numbers in the second list!"
retry_prompt:		.asciiz "NO! Try again...\n"
merge_prompt:		.asciiz "Merging both lists together...\n"
space:			.asciiz " "

	
	.text
	.globl main
	
main:
# 	Display the intro prompt
	la $a0, intro
	la $v0, 4
	syscall
	
#	Display newline
	la $a0, newline
	la $v0, 4
	syscall
	
#	Ask user for amount of numbers for the first list
	la $a0, prompt_preferred_size1
	la $v0 4
	syscall
	
#	Another newline...
	la $a0, newline
	la $v0, 4
	syscall
	
#	Read the preferred size 1
	li $v0, 5
	syscall
	
#	Check if number is between 1 and 1024
	bgt $v0, 1024, preferred_size_error
	blt $v0, 1, preferred_size_error
	jal main_part2
	
main_part2:
#	Save in variable
	sw $v0, preferred_size1
	
#	Load preferred_size1 into register
	lw $t1, preferred_size1
	
#	Initalize $t0 to 0 for our loop counter
	li $t0, 0
	
#	Load the address of order1 into $s0
	la $s0, order1
	jal forloop1
	
#	Alright, let's continue on!
	la $a0, intro2
	li $v0, 4
	syscall
	
#	Yet another newline...
	la $a0, newline
	li $v0, 4
	syscall
	
#	Read the preferred size 2
	li $v0, 5
	syscall
	
	
#	Check if number is between 1 and 1024
	bgt $v0, 1024, preferred_size_error2
	blt $v0, 1, preferred_size_error2
	jal main_part3
	
main_part3:
#	Save in variable
	sw $v0, preferred_size2
	
#	Load preferred_size2 into register
	lw $t1, preferred_size2
	
#	Initalize $t0 to 0 for loop counter 2
	li $t0, 0
	
#	Load the address of order2 into $s1
	la $s1, order2
	jal forloop2
	
#	Prompt the merging message
	la $a0, merge_prompt
	li $v0, 4
	syscall
	
#	Load preferred_size1 and preferred_size2 into $t0 and $t1
	lw $s3, preferred_size1
	lw $s4, preferred_size2
	
#	Now, calculate them
	add $s2, $s3, $s4
	
#	Multiply by 4 to get the number of bytes (since each int is 4 bytes)
	sll $s2, $s2, 2
	
#	Allocate memory on the heap
	li $v0, 9	# system call code for sbrk
	move $a0, $s2	# number of bytes to allocate
	syscall
	
#	Permantely save $v0
	move $s5, $v0
	
#	Initalize counters
	li $t0, 0
	li $t1, 0
	li $t2, 0
	
#	Jump to mergeArrays
	jal mergeArrays
	
main_part4:
#	Now to show the merge results!
	add $t0, $s3, $s4	# Calculate preferred_size1 + preferred_size2
	li $t1, 0		# Initalize i to 0
	jal forloop_print
	
main_part5:	
#	Exit
	li $v0, 10
	syscall
##############################################################################################################################################

#---------------------- FOR LOOP 1--------------------------------------	
forloop1:
#	Check if $t0 < preferred_size1
	blt $t0, $t1, forloop1_body
	jr $ra
	
forloop1_body:
#	Print prompt
	li $v0, 4
	la $a0, enter_number
	syscall
	
#	Print position (i + 1)
	addi $a0, $t0, 1
	li $v0, 1
	syscall
	
#	Print newline
	li $v0, 4
	la $a0, newline
	syscall
	
#	Read integer
	li $v0, 5
	syscall
	
#	Calculuate address of order1[i] and store the read integer there
	sll $t2, $t0, 2
	add $t2, $s0, $t2
	sw $v0, 0($t2)
	
#	Increment $t0 and jump back to the start of the loop
	addi $t0, $t0, 1
	j forloop1
#-------------------------------------------------------------------------

#---------------------- FOR LOOP 2--------------------------------------	
forloop2:
#	Check if $t0 < preferred_size2
	blt $t0, $t1, forloop2_body
	jr $ra
	
forloop2_body:
#	Print prompt
	li $v0, 4
	la $a0, enter_number
	syscall
	
#	Print position (i + 1)
	addi $a0, $t0, 1
	li $v0, 1
	syscall
	
#	Print newline
	li $v0, 4
	la $a0, newline
	syscall
	
#	Read integer
	li $v0, 5
	syscall
	
#	Calculuate address of order2[i] and store the read integer there
	sll $t2, $t0, 2
	add $t2, $s1, $t2
	sw $v0, 0($t2)
	
#	Increment $t0 and jump back to the start of the loop
	addi $t0, $t0, 1
	j forloop2
#-------------------------------------------------------------------------

#------------------------FOR LOOP FOR PRINTING------------------------------
forloop_print:
	slt $t2, $t1, $t0	# Check if i < preferred_size1 +  preferred_size2
	beq $t2, $zero, main_part5
	
	sll $t3, $t1, 2		# Calculate offset for merged[i]
	add $t3, $s5, $t3	# Calculate address of merged[i]
	lw $t4, 0($t3)		# Load merged[i] into $t4
	
#	Print merged[i]
	move $a0, $t4	# Move merged[i] to $a0 for printing
	li $v0, 1	# System call code for print_int
	syscall
	
#	Print space
	li $v0, 4		# System call code for print_string
	la $a0, space		# Load address of space string
	syscall
	
	addi $t1, $t1, 1	# Increment i
	j forloop_print		# Jump back to the beginning
#---------------------------------------------------------------------------

#-----------------------PREFERRED SIZE ERROR-------------------------------
preferred_size_error:
#	Print error
	la $a0, retry_prompt
	li $v0 4
	syscall
	
#	You got another try!
	li $v0, 5
	syscall
	
#	Check if the user isn't stubborn enough
	bgt $v0, 1024, preferred_size_error
	blt $v0, 1, preferred_size_error
	
#	Otherwise, jump back
	jal main_part2
#--------------------------------------------------------------------------

#-----------------------PREFERRED SIZE ERROR 2-------------------------------
preferred_size_error2:
#	Print error
	la $a0, retry_prompt
	li $v0 4
	syscall
	
#	You got another try!
	li $v0, 5
	syscall
	
#	Check if the user isn't stubborn enough
	bgt $v0, 1024, preferred_size_error2
	blt $v0, 1, preferred_size_error2
	
#	Otherwise, jump back
	jal main_part3
#--------------------------------------------------------------------------

#========================mergeArrays FUNCTION====================================
mergeArrays:
	
#	Check if counter1 < arr1Size and j < arr2Size
	slt $t3, $t0, $s3		# $t3 = 1 if $t0 < $s3
	slt $t4, $t1, $s4		# $t4 = 1 if $t1 < $s4
	and $t5, $t3, $t4		# $t5 = 1 if both conditons are true
	beq $t5, $zero, copy_arr1	# If $t5 is zero, go to this branch
	
#	Load array elements
	sll $t6, $t0, 2		# Calculate offset for arr1[i]
	add $t6, $s0, $t6	# Calculate address of arr1[i]
	lw $t7, 0($t6)		# Load arr1[i] into $t7
	
	sll $t8, $t1, 2		# Calculate offset of arr2[j]
	add $t8, $s1, $t8	# Calculate address of arr2[j]
	lw $t9, 0($t8)		# Load arr2[j] into $t9
	
#	Compare arr1[i] and arr2[j]
	slt $t3, $t7, $t9			# $t3 = 1 if arr1[i] < arr2[j]
	beq $t3, $zero, mergeArrays_else	# If $t3 is zero, go to else
	
#	arr1[i] < arr2[j], so merged[k++] = arr1[i++]
	sll $t4, $t2, 2		# Calculate offset for merged[k]
	add $t4, $s5, $t4	# Calculate address of merged[k]
	sw $t7, 0($t4)		# Store arr1[i] into merged[k]
	addi $t0, $t0, 1	# Increment i
	addi $t2, $t2, 1	# Increment k
	j mergeArrays		# Jump back to the start of the loop
	
#-----------------------ELSE SECTION----------------------------------------------------
mergeArrays_else:
#	arr1[i] >= arr2[j], so merged[k++] = arr2[j++]
	sll $t4, $t2, 2		# Calculate offset for merged[k]
	add $t4, $s5, $t4	# Calculate address of merged[k]
	sw $t9, 0($t4)		# Store arr2[j] into merged[k]
	addi $t1, $t1, 1	# Increment j
	addi $t2, $t2, 1	# Increment k
	j mergeArrays		# go back to the start of the function
#--------------------------------------------------------------------------------------
	
#-----------------------COPY ARRAY 1--------------------------------------------
copy_arr1:
#	Check if counter $t0 < arr1Size
	slt $t3, $t0, $s3		# $t3 = 1 if $t0 < $s3
	beq $t3, $zero, copy_arr2	# If $t3 is zero, go to this branch
	
#	Copy remaining elements of arr1: merged[k++] = arr1[i++]
    	sll $t6, $t0, 2  	# Calculate offset for arr1[i]
    	add $t6, $s0, $t6  	# Calculate address of arr1[i]
    	lw $t7, 0($t6)  	# Load arr1[i] into $t7

    	sll $t4, $t2, 2  	# Calculate offset for merged[k]
    	add $t4, $s5, $t4  	# Calculate address of merged[k]
    	sw $t7, 0($t4)  	# Store arr1[i] into merged[k]

    	addi $t0, $t0, 1  	# Increment i
    	addi $t2, $t2, 1  	# Increment k
    	j copy_arr1  		# Jump back to the start of the loop
#-------------------------------------------------------------------------------

#-----------------------COPY ARRAY 2-------------------------------------------
copy_arr2:
#	Check if j < arr2Size
	slt $t4, $t1, $s4		# $t4 = 1 if j < arr2Size
	beq $t4, $zero, main_part4	# If $t4 is zero, go back to main
	
#	Copy remaining elements of arr2: merged[k++] = arr2[j++]
	sll $t8, $t1, 2		# Calculate offset for arr2[j]
	add $t8, $s1, $t8	# Calculate address of arr2[j]
	lw $t9, 0($t8)		# Load arr2[j] into $t9
	
	sll $t4, $t2, 2		# Calculate offset for merged[k]
	add $t4, $s5, $t4	# Calculate address of merged[k]
	sw $t9, 0($t4)		# Store arr2[j] into merged[k]
	
	addi $t1, $t1, 1	# Increment j
	addi $t2, $t2, 1	# Increment k
	
	j copy_arr2		# Jump back to the start of the loop
#------------------------------------------------------------------------------
#================================================================================
