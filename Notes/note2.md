# Printing a character

[asm2.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm2.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240655752-95a2fcf2-e2cc-4228-8e8a-a5fda93cabe9.png" width="60%" height="60%">

<details>
<summary>Details</summary>

Here, we are loading `4`(code to print a string) onto register `$v0`, so it prints `m` in the output. Now, the printing operation stops when the null terminator is encountered. Since we used the code `4` that's why we had to use `la` instruction to load the address of `myChar` onto register `$a0`.
</details>

[asm2B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm2B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240655830-a892284e-9595-41e9-b34f-1110ec451fab.png" width="60%" height="60%">

<details>
<summary>Details</summary>

Here, things are a bit different. Here, we are loading `11`, the code to print a character in the output, onto register `$v0`. Now, we know that a character is 1 byte(as shown in the program via `.byte`), so we need to use the `lb`(_load byte_) instruction to load the value of `myChar` onto register `$a0`. `lb` actually loads the ASCII value of `'m'` onto `$a0`. We can see that in the screenshot below:

<img src="https://user-images.githubusercontent.com/96164229/240655932-9f9c87db-d6bd-488e-9ec6-ddadde592bfe.png" width="60%" height="60%">

The number that you see stored in `$at` is actually the decimal equivalent of the address of `myChar` which is `0x100100001`.

</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
