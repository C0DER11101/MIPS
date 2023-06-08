# Branching instructions

[asm14.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm14.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244365242-6bc28980-686a-4a63-bb62-027b3748ccd6.png" width="60%" height="60%">

The `beq` or _branch if equal_ instruction compares the values in two registers and if they are equal it jumps to the label mentioned.

```asm
beq $t0, $t1, Equal
```
Here, if `$t0` and `$t1` are equal then the control will move(jump) to the label `Equal` and execute the instructions in it. Note that here the `$ra` is not used since we are not using `jal`. So `$ra` doesn't store anything.


[asm14B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm14B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244365381-0e44e022-8477-42de-80e6-86d005448e7b.png" width="60%" height="60%">

The `bne` or _branch if not equal_ instruction also compares the values two registers and if they are not equal it jumps to the label mentioned.

```asm
bne $t0, $t1, Unequal
```
Here, if `$t0` and `$t1` are not equal then only the control will move(jump) to the label `Unequal` and execute the instructions in it. No `$ra` register used.

[asm14C.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm14C.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244365451-debca6c0-6d97-4378-8907-13c35216aec1.png" width="60%" height="60%">

The `b` or _branch unconditionally_ instructions jumps to the mentioned label unconditionally without any comparision between any registers.

```asm
b Idle
```
Here, the control just jumps(moves) to the label `Idle` and executes the instructions in it. Again, no `$ra` register used.

<p align="center">
&#9678; &#9678; &#9678;
</p>
