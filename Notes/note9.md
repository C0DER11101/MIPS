# Nested procedures
>Calling one procedure inside another is called nesting of procedures.

[asm9.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm9.asm) is an errornous program that tries to implement nested procedures.

**Error:**

<img src="https://user-images.githubusercontent.com/96164229/241342533-0a5c0f08-5552-44e1-b612-37ce9740e831.png" width="60%" height="60%">

The error basically occurred due to values in registers `$ra` and `pc`.

The addresses of procedures `main`, `incrReg` and `printNumber` are shown in the image below:

<img src="https://user-images.githubusercontent.com/96164229/241342729-442260aa-55d7-4837-ba35-e39fd64b07cb.png" width="60%" height="60%">

Initially, `pc` stores the address of the first instruction inside `main` i.e `addi $s0, $0, 10` which is `4194304` in decimal. As the control moves to the next line viz `jal incrReg`, the address in `pc` becomes `4194308` and as soon the control passes to the next line(below `jal incrReg`) the value in `pc` becomes `4194312` but since we already encountered `jal` instruction, so `$ra` stores `4194312` and `pc` stores the address of `incrReg` which is `4194340` in decimal and the control goes inside the body of the procedure `incrReg` and starts executing the instructions in there. It executes the first line `incrReg` which is `addi $sp, $sp, -4`(addres:`4194340`) and then moves to the next line, value in `pc` becomes `4194344`). After executing the next 2 instructions (till `addi $s0, $s0, 10`), the control moves to the next line viz `jal printNumber`. Till now, the address in `pc` is `4194352`. As soon the contol leaves `jal printNumber` the address of the next instruction viz `lw $s0, 0($sp)`(address: `4194356`) is stored in `$ra` and the address of `printNumber` viz `4194368` is stored in `pc` and the control jumps to `printNumber` and starts executing its body. Notice that we have **lost** the address `4194312` which was the address of the instruction right below `jal incrReg` which was previously stored in `$ra`. Now, after executing the body of `printNumber`, the control returns to the next instruction below `jal printNumber` via `jr $ra` in `printNumber`. Now, there is a problem, since we lost the address `4194312`, the control is going to loop inside `incrReg` infinitely since `$ra` is still storing `4194356` and `jr $ra`(inside `incrReg`) means `jr 4194356` and this is why we get the arithmetic overflow error.

There are two solutions to this problem:

**The** $1^{st}$ **way is by saving** `$ra` **into the stack.**

[asm9Sol1.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm9Sol1.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/241345986-747d0ef5-c87e-4068-bb5e-7ed1887b7b2a.png" width="60%" height="60%">

Here, `4($sp)` means from the base address in `$sp` move 4 bytes forward(to the next location where the value of `$ra` is stored).

Have a look at [note8.md](https://github.com/C0DER11101/MIPS/blob/MIPS/Notes/note8.md) to understand about saving registers to the stack.


**The** $2^{nd}$ **way is by saving** `$ra` **into a temporary register or any other register.**

[asm9Sol2.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm9Sol2.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/241346436-0d2b2b0b-dc7b-4f0e-860d-7e8a0542e9f2.png" width="60%" height="60%">

This method is not very efficient because if you have many nested functions then it you will need to use many temporary registers to store the addresses.


<p align="center">
&#9678; &#9678; &#9678;
</p>
