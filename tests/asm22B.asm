.data
	n1: .float 10.4
	n2: .float 10.4
	equal: .asciiz "Equal\n"
	unequal: .asciiz "Unequal\n"

.text

	main:
		lwc1 $f0, n1
		lwc1 $f2, n2

		c.eq.s $f0, $f2

		bc1f exit

		li $v0, 4
		la $a0, equal
		syscall

		li $v0, 10
		syscall

	exit:
		li $v0, 4
		la $a0, unequal

		li $v0, 10
		syscall
