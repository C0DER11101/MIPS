.data
	a: .word 5
	b: .word 10

.text
	lw $t0, a($zero)
	lw $t1, b($zero)
	
	add $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	
	#add $t2, $t0, $t1 # t2=t0+t1
