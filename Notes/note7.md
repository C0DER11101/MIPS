# Functions
>`jal`(_jump and link_) instruction is used to jump to the next label.
```asm
jal showMsg
```
The C equivalent of this instruction will be: `showMsg();` which is a function call.

>`jr`(_jump register unconditionally_) instruction is used to return to the caller procedure and execute the next instructions after it.
```asm
jr $ra
```
The C equivalent of this instruction could be: `return;` or `return 0;`(More explanations are provided below).

The image $(I)$ below shows the address of the procedure and the variables. Images $(II)$ and $(III)$ show the address of each instruction.

<img src="https://user-images.githubusercontent.com/96164229/241086235-dd807489-7f43-4730-964b-c86bb6a40e64.png" width="60%" height="60%">

$$(I)$$

<img src="https://user-images.githubusercontent.com/96164229/241085955-e3453c72-7f6f-4084-9bab-753f0b3a7770.png" width="60%" height="60%">

$$(II)$$

<img src="https://user-images.githubusercontent.com/96164229/241086025-428d6275-028d-4c6c-acda-cbdaa3d33b4d.png" width="60%" height="60%">

$$(III)$$$


**Label**
>To put simply, it's just a name with a colon(everything that we write in the `.data` section are labels).

[asm7.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm7.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/241087002-65579d86-4efa-46cb-b2e0-4eee1f446ada.png" width="60%" height="60%">

<details>
<summary>More Details</summary>

<img src="https://user-images.githubusercontent.com/96164229/241088196-88642b97-b60c-40aa-b6c7-811668cc5da9.gif" width=510 height=50>

$$(a)$$

A above gif shows the how the program counter(`pc`) changes its values. To understand this gif better we need another gif :point_down:

<img src="https://user-images.githubusercontent.com/96164229/241088708-9cde383c-dd9f-4ba9-9e6c-6bdebca79705.gif" width=800 height=300>
$$(b)$$

From the gif $(b)$ we can see that each instruction has an address.

Initially, `pc` stores the address of the very first instruction(`li $v0, 4`) which is `4194304` which is the decimal equivalent of `0x00400000`. From gif $(b)$, we can see that we are moving from instruction to instruction and as soon as we encounter `jal showMsg`, the yellow highlight line suddenly moves to `li $v0, 4` inside the procedure `showMsg`.

Take look at gif $(a)$ now, we can see that each instruction is 4 bytes apart, so the value in `pc` increments by 4 everytime we move to the next instruction(except when we jump to `showMsg`).

So, when `pc` stores `4194320` and we move to the next instruction which is `jal showMsg`(which is also 4 bytes apart from the previous instruction). We see that as soon as the control moves to this instruction the value of `pc` suddenly becomes `4194348` from `4194320` and we can see that `$ra` now stores `4194324`. Actually `4194348` is the decimal equivalent of the address of the procedure `showMsg`(Hex address: `0x0040002c`). So writing `jal showMsg` is similar to writing `jal 0x0040002c` or `jal 4194348`.

Now let us come to the `jr` instruction.

`jr` simply jumps to the address of the next instruction after the `jal` instruction. Observe gif $(b)$ closely, you will notice that as soon as the yellow highlighted line reaches `jr $ra` it quickly moves to `li $v0, 4` which is right below `jal showMsg` and now notice gif $(a)$ you will see that the values of `$ra` and `pc` both have become `4194324`. Actually `4194324` is the the decimal equivalent of the address of the instruction `li $v0, 4`(Hex address: `0x00400014`) which is right below `jal showMsg` instruction.

`jr $ra` basically means `jr 0x00400014` or `jr 4194324` which means `jump to this address of the instruction which is right below the call made to showMsg.`

Read below :point_down:

</details>

>`jal` basically sets the register `$ra` to the value in the program counter(`pc`) and then jump to the target address.

<p align="center">
&#9678; &#9678; &#9678;
</p>
