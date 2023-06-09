.data
	done: .asciiz "Loop completed"
	newLine: .byte '\n'

.text

	main:
		li $t0, 0 # i=0;

		while: # this is a label
			# while(i!=10)
			beq $t0, 10, exit 

			# printf("%d", i);
			li $v0, 1 
			addi $a0, $t0, 0
			syscall

			# printf("\n");
			li $v0, 11
			lb $a0, newLine
			syscall

			# i++;
			addi $t0, $t0, 1
			j while # jump unconditionally

		exit: # exit from while
			li $v0, 4
			la $a0, done
			syscall

			li $v0, 10
			syscall
