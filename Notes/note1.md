# Basic
>Every MIPS assembly program has two sections: the `.data` section and the `.text` section.

`.data` has the all the data of the program(eg. all the variables).

`.text` has all the instructions that the program needs.

<details>
<summary>asm1.asm</summary>

[asm1.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm1.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240642339-489063c2-a3a0-4edd-9795-7f17e823bb52.png" width="60%" height="60%">

In the above assembly program, `myMessage` is a variable that stores the string `"Hello assembly!!\n"` and is stored in RAM.

Now, since we want to display the string into the output, we need to load the code `4` onto the register `$v0`:
```mips
li $v0 4
```
this basically tells the system that a string is about to be printed. `li` means _load immediate_.

`la` $\rightarrow$ _load address_. So we basically load the variable `myMessage` from RAM to the register `$a0`.

`syscall` is just an instruction that tells the system to execute the instructions that we had entered previously.

</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
