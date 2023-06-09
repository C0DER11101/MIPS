# Pseudo instructions
>As the name implies these are _pseudo_ instructions meaning that these are not real instructions but a combination of two or more real instructions. The assembler breaks these instructions into two or more real instructions.

1. `bgt` or _branch if greater than_
>This is a pseudo instruction that takes three arguments.

```asm
bgt $s0, $s1, sayHello
```
Here the control will jump to the label `sayHello` only if `$s0` is greater than `$s1`.

[asm16.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm16.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244563315-971f6c3e-c2e6-49e7-a898-ae1e7f0f32d6.png" width="60%" height="60%">

This pseudo instruction is broken down into two real instructions by the assembler: `slt` and `bne`.

<img src="https://user-images.githubusercontent.com/96164229/244564319-c599bf49-fd36-4acf-ad9b-b6b44e1d0435.png" width="60%" height="60%">

2. `blt` or _branch if less than_
>This is a pseudo instruction that again takes three arguments.

```asm
blt $s0, $s1, sayHello
```
Here the control will jump to the label `sayHello` only if `$s0` is less than `$s1`.

[asm16B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm16B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244563354-c53e4f82-65d6-42d7-9b1c-ba4ec6119ead.png" width="60%" height="60%">

This instruction is also broken down into two real instructions: `slt` and `bne`.

<img src="https://user-images.githubusercontent.com/96164229/244564472-82838a58-2ee2-49bb-9f28-c9e4655563e7.png" width="60%" height="60%">


# Following are not pseudo instructions

1. bgtz or _branch if greater than zero_
>This instruction takes only one argument.

```asm
bgtz $t0, sayHello
```
Here, the control will jump to the label `sayHello` only if the value in `$t0` is greater than 0.

[asm16C.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm16C.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244563408-b9dcee9e-97eb-49a2-8889-74225d2bf875.png" width="60%" height="60%">

Not a pseudo instruction:

<img src="https://user-images.githubusercontent.com/96164229/244564639-1eec492f-7cb9-4ba0-832d-f15396c90d0b.png" width="60%" height="60%">

2. bltz or _branch if less than zero_
>This instruction also takes one argument.

[asm16D.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm16D.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244563541-c8367255-955f-4b72-8705-ca9bc68083d2.png" width="60%" height="60%">

Not a pseudo instruction:

<img src="https://user-images.githubusercontent.com/96164229/244564731-1f69b411-f6d8-429d-a2cc-7dae041044d2.png" width="60%" height="60%">

<p align="center">
&#9678; &#9678; &#9678;
</p>
