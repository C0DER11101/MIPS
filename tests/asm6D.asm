.data

.text
	addi $t0, $0, 2000
	addi $t1, $0, 10
	
	mult $t0, $t1
	
	mflo $s0
	
	li $v0, 1
	add $a0, $0, $s0
	syscall