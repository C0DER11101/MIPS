.data
	assert: .asciiz "Equal"
	negate: .asciiz "Not equal"
	idle: .asciiz "I am idle"

.text

	main:
		li $t0, 5
		li $t1, 4

		bne $t0, $t1, Unequal # branch if equal(beq)
		
		li $v0, 10
		syscall


	Equal:
		li $v0, 4
		la $a0, assert
		syscall

		li $v0, 10
		syscall # because we didn't reach here via the jal instruction

	Unequal:
		li $v0, 4
		la $a0, negate
		syscall

		li $v0, 10
		syscall # because we didn't reach here via the jal instruction
	
	Idle:
		li $v0, 4
		la $a0, idle
		syscall

		li $v0, 10
		syscall

