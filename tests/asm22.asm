.data
	equal: .asciiz "Equal\n"
	unequal: .asciiz "Unequal\n"
	nf1: .float 12.4
	nf2: .float 3.5

	nd1: .double 12.4
	nd2: .double 3.5

.text

	main:
		lwc1 $f0, nf1
		lwc1 $f2, nf2

		# c.eq.d -> compare equal double precision
		# c.eq.s -> compare equal single precision
		# c.le.d -> compare less or equal double precision
		# c.le.s -> compare less or equal single precision
		# c.lt.d -> compare less than double precision
		# c.lt.s -> compare less than single precision

		c.eq.s $f0, $f2 # if(f0==f2)

		# how whether the above comparision evaluated to true or false?
		bc1t exit # branch if co-processor1 is true

		li $v0, 4
		la $a0, unequal
		syscall

		li $v0, 10
		syscall

	exit:
		li $v0, 10
		la $a0, equal
		syscall

		li $v0, 10
		syscall
