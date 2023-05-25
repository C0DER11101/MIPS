# Printing a double
>A double is a 64-bit(8 bytes) value. So it needs to be stored in two registers because one register is 32-bits(4 bytes).

[asm5.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm5.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240777193-96b5b59f-88d7-48b4-96bc-4896c5c36e18.png" width="60%" height="60%">

`ldc1`(_load double word coprocessor 1_) instruction loads the value of a variable onto a register.

```asm
ldc1 $f2, doubleVal
```
will load the value of `doubleVal` onto registers `$f2` and `$f3`. We have also loaded the value `zero` onto registers `$f0` and `$f1`.

The code to print a double value is `3`, we will load this value onto register `$v0`.

```asm
add.d $f12, $f0, $f2
```
`add.d`(floating point addition double precision). Here, we are adding the double values in the registers `$f0` and `$f2` and storing the result onto register `$f12`. Actually the sum is stored in the registers `$f12` and `$f13`(since the sum is also double) :point_down:

<img src="https://user-images.githubusercontent.com/96164229/240777356-bec82964-6762-43ec-a799-114e4196072c.png" width="60%" height="60%">

It is not necessary to add zero, but it may happen that sometimes the registers may store an invalid value so it is useful to clear them.


:point_down: is another way of displaying a double.

[asm5B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm5B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240779779-30d457c4-b64d-42cf-b602-95a09fb972aa.png" width="60%" height="60%">

<p align="center">
&#9678; &#9678; &#9678;
</p>
