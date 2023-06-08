.data
	greet: .asciiz "Greetings, "
	userInput: .space 20

.text
	main:
		li $v0, 8
		la $a0, userInput
		li $a1, 8
		syscall

		jal showText

		li $v0, 10
		syscall

	showText:
		li $v0, 4
		la $a0, greet
		syscall

		li $v0, 4
		la $a0, userInput
		syscall

		jr $ra
