.data
	array: .space 12
	input: .asciiz "Enter elements into the array:\n"
	message: .asciiz "Displaying the values:\n"
	exitMsg: .asciiz "Program over\n"
	newLine: .byte '\n'

.text

	main:
		# take input from the user!!
		li $v0, 4
		la $a0, input
		syscall

		li $t0, 0
		while:
			beq $t0, 12, showArray
			li $v0, 5
			syscall

			sw $v0, array($t0)

			addi $t0, $t0, 4

			j while

		showArray:
			li $v0, 4
			la $a0, message
			syscall

			li $t0, 0
			While:
				beq $t0, 12, finish
				li $v0, 1
				lw $a0, array($t0)
				syscall

				li $v0, 11
				lb $a0, newLine
				syscall

				addi $t0, $t0, 4

				j While

		finish:
			li $v0, 4
			la $a0, exitMsg
			syscall

			li $v0, 10
			syscall

		li $v0, 10
		syscall
