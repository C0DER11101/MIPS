# Recursions
>When a function calls itself then it's called a recursion.
Every called function is stored in the stack.

[asm23.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm23.asm).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/246594769-e5f1caaf-0cf0-4495-9c51-ad60b8d808d2.png" width="60%" height="60%">

## Stack(`$sp`)

[spStack.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/spStack.asm).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/246600465-b313f455-1729-4a5d-9ecd-8e88daeb079c.png" width="60%" height="60%">

The real part is the stack that is very important while performing recursions.

Consider the following assembly snippet:

```asm
subi $sp, $sp, 8
```
So, initially the value in `$sp` is `2147479548` and when we subtracted `8` from `2147479548`, the value in `$sp` became `2147479540`. Consider one more snippet:
```asm
li $t0, 10
sw $t0, ($sp)
```
Here, we are storing the value of `$t0` into the stack. But where? In the location `2147479540`. Since we subtracted 8 from the initial address in `$sp`, the address in `$sp` is `2147479540` which can be thought of as the base address of the stack. Notice that we have written `($sp)` and not `$sp` because `$sp` is the _stack pointer_ and a we know that a pointer stores address so writing `($sp)` is similar to writing `sp[0]` or `*(sp+0)`(dereferencing) in C.

```asm
addi $t0, $t0, 10
sw $t0, 4($sp)
```
4 is the _offset_ here. It's similar to writing `sp[1]` or `*(sp+1)` in C. Here we are actually storing the value in the location `2147479540+4`(which is `2147479544`.

```asm
addi $t0, $t0, 10
sw $t0, 8($sp)
```
Again, here we are storing the value of `$t0` in the location `2147479540+8`.

Also, note that you can the store the address of `$sp` into another register.

```asm
addi $t1, $sp, 0
```
`$t1` stores the address in `$sp` which is 2147479540`.

So the base address of `$sp` is the final address that you get after subtracting your required number of bytes from the initial address in `$sp`.

<p align="center">
&#9678; &#9678; &#9678;
</p>
