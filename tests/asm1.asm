.data  # first section in a MIPS program
	myMessage: .asciiz "Hello assembly!!\n"  # place this text in RAM

.text  # second section in a MIPS program
	li $v0, 4
	la $a0, myMessage
	syscall