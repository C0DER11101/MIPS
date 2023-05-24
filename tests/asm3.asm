.data
	year: .word 2023 # .word means year is a 32-bit number(or 4 byte number).

.text
	li $v0, 1
	lw $a0, year
	syscall