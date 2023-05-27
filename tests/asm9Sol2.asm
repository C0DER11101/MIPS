.data
	newline: .byte '\n'

.text
	main:
		addi $s0, $0, 10
		
		jal incrReg
		
		li $v0, 11
		lb $a0, newline
		syscall
		
		jal printNumber
	
	
		li $v0, 10
		syscall
	
	incrReg:
		addi $sp, $sp, -4  # reserving 4 bytes in the stack for integer
		sw $s0, 0($sp)  # 0 is the offset
		
		addi, $s0, $s0, 10
		
		addi $t0, $ra, 0
		
		jal printNumber
		
		lw $s0, 0($sp)
		
		addi $sp, $sp, 4 # freeing up the reserved 4 bytes from the stack
		
		add $ra, $t0, $0
	
		jr $ra
		
	printNumber:
	
		li $v0, 1
		add $a0, $s0, $0
		syscall
		
		jr $ra