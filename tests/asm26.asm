# Multi-dimensional arrays in MIPS

.data
	myMatrix: .word 2, 5
		.word 3, 7

	size: .word 2

# a constant
	.eqv DATA_SIZE 4  # much like #define in C

.text

	main:
# store the address of myMatrix into t0
		la $t0, myMatrix

		lw $t1, size

		jal sumDiag

		li $v0, 10
		syscall
