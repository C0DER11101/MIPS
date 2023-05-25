# Adding integers
> We use the `add` instruction to perform integer addition.

```asm
add $t3, $t1, $t2
```
*The above instruction basically means* `t3=t1+t2`.

[asm6.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240891217-10cf5e82-efc7-414b-9ffa-e36d0afd5c4c.png" width="60%" height="60%">

<details>
<summary>More</summary>

<img src="https://user-images.githubusercontent.com/96164229/240891346-07196e4f-9487-425a-ba30-57754aca15b1.png" width="60%" height="60%">

Here we can see that the integers `a` and `b` are stored like array elements(in contiguous manner).

<img src="https://user-images.githubusercontent.com/96164229/240891520-7858b53d-ce55-4502-a28c-17199e380bd1.png" width="60%" height="60%">

We can see that there are some "background" instructions that run for every instruction that were typed.

The register `$1` is actually the register `$at`(_assembler temporary_). `$8` is `$t0`.

Also, we wrote `add` instruction to move the value in `$t2` to `$a0` because `add` is the real MIPS instruction. However, there is a pseudo instruction called `move` that is used to transfer the value of one register to another.

`a($zero)` is actually an explicit way of retrieving the value of `a` from the RAM. If we donot write `($zero)` then it will implicitly retrieve the value from RAM. Same goes for `b($zero)`

</details>

# Subtracting integers

[asm6B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240906518-55e6effa-a23d-4780-b3e4-ea81749607cd.png" width="60%" height="60%">

The `sub` instruction is used to subtract two registers. The syntax is exactly like `add`.

```asm
sub $t2, $t1, $t0
```
This instruction basically means: `t2=t1-t0`

# Multiplying integers
Ways to multiply integers:

* Use `mul` $\rightarrow$ takes 3 registers.
* Use `mult` $\rightarrow$ takes 2 registers.
* Use `sll`(_shift left logical_) $\rightarrow$ takes 2 registers and one number(specifying the number of bits). Similar to the `<<` operator in C.

## Multiplying using `mul`

[asm6C.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6C.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240914234-a5a94263-c8cd-48fc-936d-81ca7dfde4d0.png" width="60%" height="60%">

<details>
<summary>Getting values into register without using RAM</summary>

In the assembly program above, we have stored values into the registers `$s0` and `$s1` without using the RAM. We used the `addi`(_addition immediate_) instruction to store values into the registers.

```asm
addi $t0, $zero, 10
```
This instruction basically means: `t0=0+10`

</details>

**This instruction cannot multiply two 32-bit numbers because the result of this multiplication will be a 64-bit number but a register is only 32-bits long. This is the drawback of** `mul`.

## Multiplying using `mult`
>Useful when multiplying register which have size greater than 16-bits(maximum size of the registers can be 32-bits).

This instruction only takes two registers and stores the result in the registers `hi` and `lo`. This instruction can perform 32-bit multiplication and easily store the 64-bit result(since `hi` is 32-bit and `lo` is also 32-bit).

[asm6D.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6D.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240930800-f878aeeb-7e40-4e41-9662-a60f5375f347.png" width="60%" height="60%">

Here we can see that the product is stored in the register `lo` because the values that are stored in `$t0` and `$t1` are not 32-bits long.

So, to move the value stored in `lo` to any other register we use the `mflo`(_move from LO register_) instruction.

```asm
mflo $s0
```
This instruction means: _move the value stored in_ `lo` _register to register_ `$s0`.

<details>
<summary>Another</summary>

Here is another assembly program:

[testing.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/testing.asm)

**Values stored in registers** `hi` **and** `lo`**:**

<img src="https://user-images.githubusercontent.com/96164229/240933603-14ad0b75-0a75-4f2b-9ff9-aa4506061b0c.png" width="60%" height="60%">

`1258545556` is a 32-bit long number and we are multiplying it with itself and so the result is a 64-bit number which is stored in `hi` and `lo`.

</details>

## Multiplying using `sll`
>This operator is just like the left shift operator in C.

Checkout from [https://github.com/C0DER11101/CPrograms/blob/CProgramming/OpOnBits/Basic.md#shift-operators](https://github.com/C0DER11101/CPrograms/blob/CProgramming/OpOnBits/Basic.md#shift-operators).


[asm6E.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6E.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240940180-d480bd03-3556-4a63-a540-7a2f71641397.png" width="60%" height="60%">

```asm
sll $t0, $s0, 2
```
The above instruction basically means $t0\ =\ s0 \times 2^{2}$

# Dividing integers

## Dividing using `div`
>This `div` instruction uses three registers.

```asm
div $t2, $t1, $t0
```
This instruction basically means: `t2=t1/t0`.

<details>
<summary>Asm</summary>

[asm6F.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6F.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240945494-b914e59a-8cce-4b76-8018-1789029bf29c.png" width="60%" height="60%">

</details>

## Dividing using `div`
>This `div` uses two registers and one constant.

```asm
div $t1, $t0, 10
```
This instruction means: `t1=t0/10`.

<details>
<summary>Asm</summary>

[asm6G.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6G.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240945632-1ae9e3ef-5263-479a-92e7-01055ebf4204.png" width="60%" height="60%">

</details>

## Dividing using `div`
>This `div` uses two registers.
```asm
div $t0, $t1
```
This instruction means: `t0/t1`, the quotient is stored in register `lo` and the remainder is stored in register `hi`.

<details>
<summary>Asm</summary>

[asm6H.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm6H.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240981366-97bff551-7baf-47c6-b2d3-db0707833260.png" width="60%" height="60%">

Here, the quotient is `5` and the remainder is `0`.

To move the value at register `hi` to another register, we use the `mfhi`(_move from HI register_) instruction.
```asm
mfhi $s0
```
This instruction moves the value in register `hi` to the register `$s0`.

</details>


<p align="center">
&#9678; &#9678; &#9678;
</p>
