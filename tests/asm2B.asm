.data
	myChar: .byte 'm'

.text
	li $v0, 11
	lb $a0, myChar
	syscall