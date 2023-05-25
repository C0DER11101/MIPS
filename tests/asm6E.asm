.data

.text
	addi $s0, $0, 4
	
	sll $t0, $s0, 2   # t0=s0x2^2
	

	
	li $v0, 1
	add $a0, $0, $t0
	syscall