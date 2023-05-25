.data
	newline: .byte '\n'

.text

	addi $t0, $0, 30
	addi $t1, $0, 6
	
	div $t0, $t1
	
	mfhi $t2
	mflo $t3
	
	li $v0, 1
	add $a0, $0, $t3   # displaying the quotient
	syscall
	
	li $v0, 11
	lb $a0, newline
	syscall
	
	li $v0, 1
	add $a0, $0, $t2   # displaying the remainder
	syscall