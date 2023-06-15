# If statements with floats and doubles
[asm22.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm22.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/245966839-0476e294-6c5a-436e-93f9-0831d7ceaf19.png" width="60%" height="60%">

[asm22B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm22B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/245966876-9d4d7f37-8ecc-4a0c-be58-ec1e5b5ec2f8.png" width="60%" height="60%">

## The various conditionals used with floats and doubles

**For floats:**

* `c.eq.s` $\rightarrow$ _compare to check if two registers are equal or not_.

Example:
```asm
c.eq.s $f0, $f2
```
The instruction above compares two registers `$f0` and `$f2` to check if they are equal to one another or not. If they are then true will be yielded otherwise false will be yielded.
* `c.le.s` $\rightarrow$ _compare to check if first register is less than or equal to the second register_.

Example:
```asm
c.le.s $f0 $f2
```
The instruction above compares two registers `$f0` and `$f2` to check if `f0` is less than or equal to `$f2` or not.

* `c.lt.s` $\rightarrow$ _compare to check if first register is less than the second register_.

Example:
```asm
c.lt.s $f0, $f2
```
The instruction above compares two registers `$f0` and `$f2` to check if `$f0` is less than `$f2` or not.

**For doubles:**

* `c.eq.d` $\rightarrow$ _compare to check if two registers are equal or not_.
* `c.le.d` $\rightarrow$ _compare to check if first register is less than or equal to the second register_.
* `c.lt.d` $\rightarrow$ _compare to check if the first register is less than the second register_.

All these instructions work the same way as the instructions for floats.

## How to work with the value yielded by the conditionals?
>Notice the conditionals for floats and doubles are not like those for integers like `bne`, `beq`, etc.. These instructions took three arguments: _first two arguments were the registers and the third argument was a label_. But these instructions take only two arguments: _two registers._

To work with these instructions, we need to use the special branching instructions for floats and doubles which are: `bc1t` and `bc1f`. These instructions take only one argument: _label name_. Whether or not to branch depends on the value yielded by the conditionals(discussed above).

### `bc1t` or _branch if co-processor-1 is true_
```asm
c.eq.s $f0, $f2
bc1t exit
```
Now, if `$f0` and `$f2` are equal then the instruction `c.eq.s $f0, $f2` will yield true(or 1) and based on that the `bc1t` will work. Because `bc1t` will work only if the conditional yields true so in our case as well `bc1t` will branch to the label `exit` only if the `c.eq.s` yields true(or 1) otherwise the instruction(s) after `bc1t` will be executed.

## `bc1f` or _branch if co-processor is false_
```asm
c.lt.s $f0, $f2
bc1f finish
```
If the conditional `c.lt.s` evaluates to true i.e `$f0` is less than `$f2` then the instruction `bc1f finish` will not be executed because this instruction executes only when the conditional yields false.

<p align="center">
&#9678; &#9678; &#9678;
</p>
