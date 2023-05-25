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

Also, we wrote `add` instruction to move the value in `$t2` to `$a0` because `add` is the real MIPS instruction. However, there is a pseudo instruction called `move` that used to transfer the value of one register to another.

`a($zero)` is actually an explicit way of retrieving the value of `a` from the RAM. If we donot write `($zero)` then it will implicitly retrieve the value from RAM. Same goes for `b($zero)`

</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
