# Finding the average of sum of elements of an array

.data
	array: .word 10, 8, 6
	sum: .word 0
	average: .word 0

	outputSum: .asciiz "SUM = "
	outputAvg: .asciiz "AVERAGE = "
	newLine: .byte '\n'

.text
	main:
		# load the base address of the array onto $t0
		la $t0, array

		# i=0
		li $t1, 0

		# sum=0
		li $t2, 0

		# average=0
		li $t3, 0


		SUM:
			lw $t4, ($t0)  # t4=array[i]

			add $t2, $t2, $t4  # sum=sum+t4

			addi $t1, $t1, 4   # i++
			la $t0, array   # never lose the base address
			add $t0, $t0, $t1

			beq $t1, 12, END
			
			j SUM

		END:
			sw $t2 sum
			li $v0, 4
			la $a0, outputSum
			syscall

			div $t3, $t2, 3
			sw $t3, average

			li $v0, 1
			lw $a0, sum
			syscall

			li $v0, 11
			lb $a0, newLine
			syscall

			li $v0, 4
			la $a0, outputAvg
			syscall

			li $v0, 1
			lw $a0, average
			syscall

		li $v0, 10
		syscall
