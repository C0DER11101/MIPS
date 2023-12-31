# Sum of diagonal elements of the matrix

.data

myMatrix: .word 2, 5
	.word 10, 7
	
size: .word 2

.eqv DATA_SIZE 4  # data size is 4 bytes since we are using integers

sum: .word 0

SumIs: .asciiz "Sum of diagonal elements of the matrix is: "

.text

	main:
		# load the address of the matrix
		la $a0, myMatrix
		
		# load the size of the matrix
		lw $a1, size
		
		jal sumDiag  # find the sum of the diagonal elements in the matrix
		
		li $v0, 4
		la $a0, SumIs
		syscall
		
		li $v0, 1
		lw $a0, sum
		syscall
	
		li $v0, 10
		syscall
		
	sumDiag:
		li $t0, 0  # i=0 which is the rowIndex
		lw $t1, sum
		
		diagLoop:
			# rowIndex * colSize
			mul $t2, $t0, $a1
			
			# rowIndex * colSize + colIndex
			add $t2, $t2, $t0   # rowIndex = colIndex because we are working with the diagonal elements
			
			# (rowIndex * colSize + colIndex) * dataSize
			mul $t2, $t2, DATA_SIZE
			
			# (rowIndex * colSize + colIndex) * dataSize + baseAddr
			add $t3, $t2, $a0
			
			lw $t2, ($t3)
			
			add $t1, $t1, $t2  # sum = sum+t2
			
			addi $t0, $t0, 1  # i++
			
			blt $t0, $a1, diagLoop
			
		sw $t1, sum
	
		jr $ra