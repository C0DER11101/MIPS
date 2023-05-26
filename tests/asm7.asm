.data
	message: .asciiz "Hello, MIPS!! Assembly Language!\n"
	mainText: .asciiz "In main()\n"
	endProcedure: .asciiz "Procedure ended!\n"

.text

	main:
		li $v0, 4
		la $a0, mainText
		syscall
		
		jal showMsg
		
		li $v0, 4
		la $a0, mainText
		syscall
		
		
		li $v0, 10
		syscall
	
	
	
	showMsg:
		li $v0, 4
		la $a0, message
		syscall
		
		li $v0, 4
		la $a0, endProcedure
		syscall
		
		jr $ra  # just like return; in C
