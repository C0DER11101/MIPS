# Floating point arithmetic

.data
	floatMsg: .asciiz "Floating point addition: "
	doubleMsg: .asciiz "Double addition: "
	nf1: .float 3.14
	nf2: .float 2.71
	nd1: .double 3.14
	nd2: .double 2.71
	newLine: .byte '\n'

.text

	main:
		li $v0, 4
		la $a0, floatMsg
		syscall

		# ADDING FLOATS
		lwc1 $f2, nf1
		lwc1 $f4, nf2

		li $v0, 2
		# add.s -> floating point addition single precision
		add.s $f12, $f2, $f4 # f12=f2+f4
		syscall

		li $v0, 11
		lb $a0, newLine
		syscall

		li $v0, 4
		la $a0, doubleMsg
		syscall


		# ADDING DOUBLES

		ldc1 $f6, nd1 #ldc1 -> load double word coprocessor 1; we are loading the double values from RAM
		ldc1 $f8, nd2

		li $v0, 3
		add.d $f12, $f6, $f8 # add.d -> floating point addition double precision
		syscall

		li $v0, 10
		syscall
