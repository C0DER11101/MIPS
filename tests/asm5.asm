.data
	doubleVal: .double 34.565 # a double is 64-bits(8 bytes)
	zero: .double 0.0

.text
	ldc1 $f2, doubleVal
	ldc1 $f0, zero
	
	li $v0, 3
	add.d $f12, $f0, $f2
	syscall