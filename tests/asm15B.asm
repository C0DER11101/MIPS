.data
	greater: .asciiz "Number is less than the other"
	smaller: .asciiz "Number is greater than the other"

.text

	main:
		li $t0, 6
		li $t1, 5

		slt $t3, $t0, $t1 # if t1 < t2 then t3=1(true) otherwise t3=0(false)

		bne $t3, $0, Greater
		beq $t3, $0, Smaller


		li $v0, 10
		syscall
	
	Greater:
		li $v0, 4
		la $a0, greater
		syscall

		li $v0, 10
		syscall

	Smaller:
		li $v0, 4
		la $a0, smaller
		syscall

		li $v0, 10
		syscall
