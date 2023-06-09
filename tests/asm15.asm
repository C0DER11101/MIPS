.data
	message: .asciiz "Number is less than the other"

.text

	main:
		li $t0, 1
		li $t1, 5

		slt $t3, $t0, $t1 # if t0 < t1 then t3=1(true) otherwise t3=0(false)

		bne $t3, $0, Greater


		li $v0, 10
		syscall
	
	Greater:
		li $v0, 4
		la $a0, message
		syscall

		li $v0, 10
		syscall
