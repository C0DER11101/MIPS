# Priting an integer

We load the number(or the code) `1` onto register `$v0` to print an integer. An integer is the size of a `word` which is 32-bits(or 4 bytes; that's what the `.word` in the program below signifies).

[asm3.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm3.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240684930-c7898c8e-63c4-4067-b7f5-c6e96836b303.png" width="60%" height="60%">

Here, since we are loading a word, so we have use the `lw`(_load word_) instruction to load the value of `year` onto the register `$a0`.

<details>
<summary>Image</summary>

<img src="https://user-images.githubusercontent.com/96164229/240685730-cc0034dc-9313-4d37-b642-fc92cf4fdf5d.png" width="60%" height="60%">

The value of `year` is stored in register `$a0` and its address is stored in register `$at`.

</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
