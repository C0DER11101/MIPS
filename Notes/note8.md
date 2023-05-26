# Saving registers to the stack
**Note:** _The_ `t` _registers(_`$t0` _till_ `$t7`_) are callee saved._

**It's by convention that the** `s` **registers(**`$s0` **to** `$s7`**), the programmer or the procedure doesn't have permission to modify the value of these registers.**

Say, we have a register that stores an important value and also there is a procedure that uses that register and modifies that value but the value stored by that register is important and we donot want to lose it. So, in situations such as these we use the stack so that we can save the value of that register to the stack and when the procedure is done modifying its value for some action then we can restore that original value of that register from the stack.

[asm8.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm8.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/241216453-0547b3de-b1e0-42d5-8830-39fc2b789fbd.png" width="60%" height="60%">

Have a look at this image:

<img src="https://user-images.githubusercontent.com/96164229/241217031-d6988660-9924-4560-8246-5c6871987a0c.jpg" width="60%" height="60%">

From here, we can see that a stack grows downwards and the heap grows upwards when memory and that's the reason why we used `-4` in this instruction:

```asm
addi $sp, $sp, -4
```

Initially `$sp` stored the address `2147479548` and after this above instruction its value becomes `2147479544`. Actually this above instruction reserves 4 bytes(which is the size of an integer).

In the instruction:
```asm
sw $s0, 0($sp)
```

Here `0` is the _offset_ it's more like array indexing in C. Here we are accessing the $0^{th}$ value in the stack(which is `10`).

It's like this:

_If we have an array_ `ar[5]` _which stores 5 integers then writing_ `ar+0` _will basically mean that we are accessing the address of the_ $0^{th}$ _element. Writing_ `ar+1` _will basically mean we have added 4 bytes to the base address(which is the address of the_ $0^{th}$ _element i.e we are now accessing the address of the_ $1^{st}$ _element in the array. Likewise writing_ `ar+2` _means_ $ar+2 \times 4$ _i.e we are accessing the address of the_ $2^{nd}$ _element._ Here the numbers that we are adding with `ar` are basically _offsets_.

```asm
addi $sp, $sp, 4
```
Here we are freeing up the 4 bytes that we had reserved for the integer.

<p align="center">
&#9678; &#9678; &#9678;
</p>
