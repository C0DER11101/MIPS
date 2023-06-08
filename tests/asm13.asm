.data
	msg: .asciiz "Greeings, "
	userInput: .space 20

.text

	main:
		li $v0, 8
		la $a0, userInput # load the address of the input buffer(which, in this case, is 'userInput')
		li $a1 20 # this is necessary: also load the maximum number of characters to read
		syscall

		jal showText
	
		li $v0, 10
		syscall

	showText:
		li $v0, 4
		la $a0, msg
		syscall

		li $v0, 4
		la $a0, userInput
		syscall
		
		jr $ra
