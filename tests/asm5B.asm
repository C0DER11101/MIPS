.data
	doubleVal: .double 34.785

.text
	li $v0, 3
	ldc1 $f12, doubleVal
	syscall