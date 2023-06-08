# Getting integer input from the user

[asm10.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm10.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244305441-56510a8e-7775-4a1d-aaac-973f4cdadf15.png" width="60%" height="60%">

# Getting float input from the user

[asm11.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm11.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244319858-af56d19d-35af-4f12-8d70-3d01236a1a87.png" width="60%" height="60%">

```asm
lwc1 $f2 Zero
```
basically loads `Zero`'s value which is `0.0` into the register `$f2`. It's just like `lw` command that we used in [asm3.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm3.asm).

Now, below,
```asm
li $v0, 6
syscall
```
here the code `6` means that we have to provide a floating point number as input and this input will be stored in the register `$f0`.

`add.s` is the instruction used to add two float registers and store the output into a third register.

```asm
li $v0, 2
```
here `2` is the code used to print a float to the screen.

# Getting double input from user.

[asm12.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm12.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244337452-60ec508a-2054-4580-a4a7-ffa01c725ede.png" width="60%" height="60%">

# Getting text from the user

[asm13.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm13.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244343324-79d26229-555b-4892-9853-422e21c62616.png" width="60%" height="60%">

The way of getting string input from the user
```asm
li $v0, 8
la $a0, userInput
li $a1, 20
```
so, to take a string input from the user, we first need to load the code `8` into register `$v0` and then load the address of the input buffer into the register `$a0` and load the maximum number of characters to read into the register `$a1`.

[asm13B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm13B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244353043-935f8a2e-61f6-4c8c-8c58-83a7e9d50894.png" width="60%" height="60%">

Here, we have taken the maximum number of characters that will be read to be `8` and stored into `$a1`. Since the maximum of number of characters to be read was 8 so only 7(i.e. 8-1) characters are read and then the next instruction is executed.

Initially `pc` stores the address `4194304` which is the address of `li $v0, 8`. At `syscall` (below `li $a1, 8`), `pc`'s value updates to the address `4194320`. After that we enter the text which is `Priyanu` in our case. There are a total of 7 characters in this string, so as soon as 7 characters are read, `pc` automatically updates to `4194324` which is the address of `jal showText` and after this it jumps to the definition of `showText` and the execution continues. Notice that there is no newline between the input and `Greetings, Priyanu` in the output. In this case, after providing the string as input there was no need to press enter. But in `asm13.asm` we had to press enter because the length of the string was very much less than 20.

<p align="center">
&#9678; &#9678; &#9678;
</p>
