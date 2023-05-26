.data

.text
	# arguments are stored in registers i.e $a0, $a1, $a2 and $a3
	
	addi $a1, $0, 20
	addi $a2, $0, 100
	
	main:
		jal sum
		
		li $v0, 1
		add $a0, $0, $v1
		syscall
		
		li $v0, 10
		syscall
	
	sum:
		add $v1, $a1, $a2
		
		jr $ra
