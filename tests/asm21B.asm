# More on floating point arithmetic

.data
	floatMsg: .asciiz "Floating point arithmetic: "
	doubleMsg: .asciiz "Double arithmetic: "
	Add: .asciiz "\nAddition\n"
	Sub: .asciiz "\nSubtraction\n"
	Mul: .asciiz "\nMultiplication\n"
	Div: .asciiz "\nDivision\n"
	nf1: .float 3.14
	nf2: .float 2.71
	nd1: .double 3.00
	nd2: .double 2.00
	newLine: .byte '\n'

.text

	main:
		li $v0, 4
		la $a0, floatMsg
		syscall

		# ADDING FLOATS
		li $v0, 4
		la $a0, Add
		syscall

		lwc1 $f2, nf1
		lwc1 $f4, nf2

		li $v0, 2
		# add.s -> floating point addition single precision
		add.s $f12, $f2, $f4 # f12=f2+f4
		syscall

		li $v0, 4
		la $a0, Mul
		syscall

		li $v0, 2
		mul.s $f12, $f2, $f4 # mul.s -> floating point multiplication single precision
		syscall

		li $v0, 4
		la $a0, Div
		syscall

		li $v0, 2
		div.s $f12, $f2, $f4 # div.s -> floating point division single precision
		syscall

		li $v0, 4
		la $a0, Sub
		syscall

		li $v0, 2
		sub.s $f12, $f2, $f4 # sub.s -> floating point subtraction with single precision
		syscall

		li $v0, 11
		lb $a0, newLine
		syscall

		li $v0, 4
		la $a0, doubleMsg
		syscall


		# ADDING DOUBLES

		li $v0, 4
		la $a0, Add
		syscall


		ldc1 $f6, nd1 #ldc1 -> load double word coprocessor 1; we are loading the double values from RAM
		ldc1 $f8, nd2

		li $v0, 3
		add.d $f12, $f6, $f8 # add.d -> floating point addition double precision
		syscall

		li $v0, 4
		la $a0, Mul
		syscall

		li $v0, 3
		mul.d $f12, $f6, $f8 # mul.d -> floating point multiplication double precision
		syscall

		li $v0, 4
		la $a0, Div
		syscall

		li $v0, 3
		div.d $f12, $f6, $f8 # div.d -> floating point division double precision
		syscall

		li $v0, 4
		la $a0, Sub
		syscall

		li $v0, 3
		sub.d $f12 $f6, $f8 # sub.d -> floating point subtraction with double precision
		syscall

		li $v0, 10
		syscall
