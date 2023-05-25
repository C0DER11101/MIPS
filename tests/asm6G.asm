.data

.text
	addi $t0, $0, 30
	
	div $t1, $t0, 10
	
	li $v0, 1
	add $a0, $0, $t1
	syscall