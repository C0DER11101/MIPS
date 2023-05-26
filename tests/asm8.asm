.data
	newline: .byte '\n'

.text
	main:
		addi $s0, $0, 10
		
		jal incrReg
		
		li $v0, 11
		lb $a0, newline
		syscall
		
		li $v0, 1
		add $a0, $s0, $0
		syscall
	
	
		li $v0, 10
		syscall
	
	incrReg:
		addi $sp, $sp, -4  # reserving 4 bytes in the stack for integer
		sw $s0, 0($sp)  # 0 is the offset
		
		addi, $s0, $s0, 10
		

		
		li $v0, 1
		add $a0, $s0, $0
		syscall
		
		lw $s0, 0($sp)
		
		addi $sp, $sp, 4 # freeing up the reserved 4 bytes from the stack
	
		jr $ra