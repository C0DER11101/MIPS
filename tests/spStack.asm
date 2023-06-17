.data
	input: .asciiz "enter a number: "
	newLine: .byte '\n'
	restored: .asciiz "\nStack restored\n"
	num: .word 0

.text
	main:
		li $v0, 4
		la $a0, input
		syscall

		li $v0, 5
		syscall

		addi $t0, $v0, 0
		addi $t1, $sp, 0

		loop:
			beq $t0, 21 display
			subi $sp, $sp, 4
			sw $t0, ($sp)
			addi $t0, $t0, 4
			j loop

	display:
		li $v0, 1
		lw $a0, 4($sp)
		syscall

		li $v0, 11
		lb $a0, newLine
		syscall
		
		li $v0, 1
		lw $a0, 8($sp)
		syscall

		restoreStack:
			addi $t0, $sp, 0
			beq $t0, $t1, over
			addi $sp, $sp, 4
			j restoreStack

	over:
		li $v0, 4
		la $a0, restored
		syscall

		li $v0, 10
		syscall
