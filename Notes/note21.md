# Bit manipulation
* A negative number is a 2's complement of the positive number.

Example:

$(3)_{10}$ $\rightarrow$ $(00000000\ 00000000\ 00000000\ 00000011)_2$

To find the 2's complement $\rightarrow$ invert all the bits:

$(11111111\ 11111111\ 11111111\ 11111100)_2$

After that add $1$ to it and our 2's complement is:

$(11111111\ 11111111\ 11111111\ 11111101)_2$

This is $-3$

Here is the MIPS assembly code that clears the $0_{th}$ bit:

```asm
# Bit manipulation in MIPS

.data
	newLine: .ascii "\n"

.text

	main:
		li $a1, 11    # loading the number 11 into register a1
		jal showNumber    # display the number

		jal clearBitZero

		addi $a1, $v1, 0

		jal showNumber


		li $v0, 10
		syscall

	showNumber:
		li $v0, 1
		addi $a0, $a1, 0
		syscall

		jr $ra

	clearBitZero:
		li $v0, 4
		la $a0, newLine
		syscall
		
		addi $sp, $sp, -4
		sw $s0, ($sp)     # s-registers are callee saved registers, so we are saving this register to the stack
		
		li $s0, -1
		
		sll $s0, $s0, 1  # shifting $s0 to the left by 1 bit
		
		# Bitwise AND
		
		and $v1, $a1, $s0   # perform bitwise AND between $a1 and $s0 and put the result into $v1
		addi $sp, $sp, 4  # restoring the stack

		jr $ra
```

View the code [here](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm24.asm).

<p align="center">
&#9678; &#9678; &#9678;
</p>
