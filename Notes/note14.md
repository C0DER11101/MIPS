# Loops

[asm17.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm17.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244596591-e4d9dc1a-64d0-41ae-b50c-2686eb6ec368.png" width="60%" height="60%">

**The** `j` or **_jump unconditionally instruction_** : This instruction takes only one argument and that is the label.
```asm
j while
```
This instruction is going to jump to the label `while` unconditionally. This instruction is the main ingredient in loops in MIPS. Without it the loops will just be like simple labels. The iteration that is performed is due to this instruction.

Address of `beq $t0, 10, exit`, the first instruction inside the `while` label, in the given assembly program is shown below:

<img src="https://user-images.githubusercontent.com/96164229/244599040-626ddf71-3981-42be-9702-e9107fcd0ec7.png" width="60%" height="60%">

Address of `j while` in the given assembly program is shown below:

<img src="https://user-images.githubusercontent.com/96164229/244599163-9fcce132-4197-4f28-b1cb-779d1206c172.png" width="60%" height="60%">

When the control reaches the instruction `j while` then it is sent back to the first instruction inside the `while` label. This action is demonstrated by the gif given below:

<img src="https://user-images.githubusercontent.com/96164229/244596934-8a97a5a0-2cd3-4f64-9828-ccf90f1a6071.gif" width="800" height="300">

We can see that as soon as the control reaches `j while` it is sent back to `beq $t0, 10, exit` instruction. This is how `j` instruction works.

<p align="center">
&#9678; &#9678; &#9678;
</p>
