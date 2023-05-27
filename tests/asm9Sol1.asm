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
		addi $sp, $sp, -8  # reserving 8 bytes in the stack for integer value in $sp and the address in $ra
		sw $s0, 0($sp)  # 0 is the offset
		
		addi, $s0, $s0, 10
		
		sw $ra, 4($sp)
		
		jal printNumber
		
		lw $s0, 0($sp)
		
		lw $ra, 4($sp)
		
		addi $sp, $sp, 8 # freeing up the reserved 8 bytes from the stack
	
		jr $ra
		
	printNumber:
	
		li $v0, 1
		add $a0, $s0, $0
		syscall
		
		jr $ra