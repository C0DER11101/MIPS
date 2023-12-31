# displaying a pixel on the bitmap display!!

.data
	row: .word 256
	col: .word 512
	frame: .space 0x20000
	
	.eqv DATA_SIZE 4 # working with words/integers

.text
	main:
		la $v1, frame  # load the base address of the array
		lw $t6, row    # row
		lw $t7, col    # column
		
		# taking the X-coordinate
		li $t0, 100
		
		# taking the Y-coordinate
		li $t1, 200
		
		# load the pixel color
		
		li $t2, 0x0040F7BC  # this is blue-green color
		
		# calculate the memory address for this pixel
		
		# rowIndex * colSize
		mul $t3, $t0, $t7
		
		# rowIndex * colSize + colIndex
		add $t3, $t3, $t1
		
		# (rowIndex * colSize + colIndex) * dataSize
		mul $t3, $t3, DATA_SIZE
		
		# (rowIndex * colSize + colIndex) * dataSize + baseAddr
		add $t3, $t3, $v1
		
		# store the pixel in this acquired address for the pixel in the frame
		sw $t2, ($t3)
	
		li $v0, 10
		syscall