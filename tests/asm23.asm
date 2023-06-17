# Recursions

.data
	input: .asciiz "enter a number: "
	output: .asciiz "factorial: "
	fact: .word 0

.text
	main:
		# prompt the user to enter a number
		li $v0, 4
		la $a0, input
		syscall

		# user input(integer)
		li $v0, 5
		syscall

		addi $a1, $v0, 0

		sw $a1, fact

		jal factorial

		li $v0, 4
		la $a0, output
		syscall

		li $v0, 1
		lw $a0, fact
		syscall

		li $v0, 10
		syscall
	
	factorial:
		subi $a1, $a1, 1
		beq $a1, 0, end

		subi $sp, $sp, 4
		sw $ra, ($sp)
		lw $v1, fact
		mul $v1, $v1, $a1
		sw $v1, fact
		jal factorial

	end:
		lw $ra ($sp)
		addi $sp, $sp, 4
		jr $ra
