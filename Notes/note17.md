# Array initializers

[asm20.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm20.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244839724-fa7b88aa-ec79-4cb1-8503-4d2c13fb0ca3.png" width="60%" height="60%">

The assembly program above shows another way of creating array(an initialized array).

Here we created the array using `.word`. Now, `.word` is used for only one integer but here we created an array of 3 integers.

```asm
array: .word 1:3
```
Here, the statement above means that _create an array of 3 integers where each integer is initialized to 1_.

The rest of the code remains same as [asm19.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm19.asm).

<p align="center">
&#9678; &#9678; &#9678;
</p>
