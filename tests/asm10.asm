.data
	prompt: .asciiz "Enter a number: "
	msg: .asciiz "\nNumber is: "

.text

	li $v0, 4
	la $a0, prompt
	syscall
	
	# get input
	li $v0, 5
	syscall
	
	addi $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 1
	addi $a0, $t0, 0
	syscall