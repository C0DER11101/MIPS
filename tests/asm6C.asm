.data

.text

	addi $s0, $0, 10  # s0=0+10
	addi $s1, $0, 4
	
	mul $t0, $s0, $s1
	
	li $v0, 1
	add $a0, $0, $t0
	
	syscall