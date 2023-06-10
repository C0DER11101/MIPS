.data
	array: .space 12 # one integer needs 4 bytes so three integers will need 12 bytes, so this is the space for 3 ints
	newLine: .byte '\n'

.text

	main:
		li $s0, 4
		li $s1, 5
		li $s2, 6

		li $t0, 0

		sw $s0, array($t0) # similar to writing array[0]=s0
		addi $t0, $t0, 4

		sw $s1, array($t0) # similar to writing array[1]=s1

		addi $t0, $t0, 4

		sw $s2, array($t0) # similar to writing array[2]=s2

		# Retrieve the values from the array

		li $t0, 0

		lw $t5, array($t0) # similar to writing t5=array[0]
		addi $t0, $t0, 4

		lw $t6, array($t0) # similar to writing t6=array[1]
		addi $t0, $t0, 4

		lw $t7, array($t0) # similar to writing t7=array[2]


		# Displaying the values

		li $v0, 1
		addi $a0, $t5, 0
		syscall

		li $v0, 11
		lb $a0, newLine
		syscall

		li $v0, 1
		addi $a0, $t6, 0
		syscall

		li $v0, 11
		lb $a0, newLine
		syscall

		li $v0, 1
		addi $a0, $t7, 0
		syscall

		li $v0, 10
		syscall
