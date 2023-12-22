# Bit manipulation in MIPS

.data
	newLine: .ascii "\n"

.text

	main:
		li $a1, 11    # loading the number 11 into register a1
		jal showNumber    # display the number

		jal clearBitZero

		addi $a1, $v1, 0

		jal showNumber


		li $v0, 10
		syscall

	showNumber:
		li $v0, 1
		addi $a0, $a1, 0
		syscall

		jr $ra

	clearBitZero:
		li $v0, 4
		la $a0, newLine
		syscall
		
		addi $sp, $sp, -4
		sw $s0, ($sp)
		
		li $s0, -1
		
		sll $s0, $s0, 1  # shifting $s0 to the left by 1 bit
		
		# Bitwise AND
		
		and $v1, $a1, $s0   # perform bitwise AND between $a1 and $s0 and put the result into $v1
		addi $sp, $sp, 4  # restoring the stack

		jr $ra
