.data
	a: .word 20
	b: .word 8

.text
	lw $s0, a
	lw $s1, b
	
	sub $t0, $s0, $s1  # t0=s0-s1
	
	li $v0, 1
	move $a0, $t0 # a0=t0
	syscall