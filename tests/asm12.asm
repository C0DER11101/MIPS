# reading double from user

.data
	prompt: .asciiz "Enter a double: "
	msg: .asciiz "Number is: "

.text

	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 7
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 3
	add.d $f12, $f0, $f2
	syscall
