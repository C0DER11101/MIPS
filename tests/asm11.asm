.data
	msg: .asciiz "Enter a floating point number: "
	output: .asciiz "Number is: "
	Zero: .float 0.0

.text
	lwc1 $f2, Zero # loading the floating point value from the RAM to register $f2
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 6
	syscall  # the input entered by the user will be a float which will be stored in $f0 register.
	
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 2
	add.s $f12, $f0, $f2
	syscall
