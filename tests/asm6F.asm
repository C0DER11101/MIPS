.data

.text

	addi $t0, $0, 30
	addi $t1, $0, 5
	
	div $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $0, $t2
	syscall