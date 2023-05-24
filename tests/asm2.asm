.data
	myChar: .byte 'm' # we use .byte to declare a character

.text
	li $v0, 4
	la $a0, myChar
	syscall