.data
	msg1: .asciiz "Hello"
	msg2: .asciiz "Nothing"

.text

	main:
		li $s0, 14
		li $s1, 10

		bgt $s0, $s1, sayHello # if s0>s1 then goto sayHello
		
		li $v0, 4
		la $a0, msg2
		syscall

		li $v0, 10
		syscall

	sayHello:
		li $v0, 4
		la $a0, msg1
		syscall

		li $v0, 10
		syscall
