.data
	row: .word 256  # height
	col: .word 512  # width
	frame: .space 0x20000
	
	.eqv DATA_SIZE 4

.text
	main:
		la $a0, frame
		
		jal drawLine  # procedure to draw a line
		
		li $v0, 10
		syscall
		
	drawLine:
		li $t0, 100   # X-coordinate
		li $t1, 200   # Y-coordinate
		li $t2, 0x0047FAAF  # loading color
		
		lw $t6, row
		lw $t7, col
		
		
		
		drawLoop:
			# calculate address for pixel
			
			# We will move horizontally(that is, in a row)
			
			# rowIndex * colSize
			mul $t3, $t1, $t7
			
			# rowIndex * colSize + colIndex
			add $t3, $t3, $t0
			
			# (rowIndex * colSize + colIndex) * dataSize
			mul $t3, $t3, DATA_SIZE
			
			# (rowIndex * colSize + rowIndex) * dataSize + baseAddr
			add $t3, $t3, $a0
			
			sw $t2, ($t3)
			
			addi $t0, $t0, 1
			
			blt $t0, 200, drawLoop

		jr $ra