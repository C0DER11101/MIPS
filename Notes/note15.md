# Arrays
[asm18.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm18.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244830533-b0f7f3a1-fe07-4ae6-8010-794cba51d71b.png" width="60%" height="60%">

To declare an array we use the `.space` specifier. Here we are declaring an integer array that can store 3 integers and we know that each integer is 4 bytes so we reserve 12 bytes for the 3 integers. Now, this is all done in the _Data Segment_ of the program i.e in the RAM.

When we want to store any value in the array, we need to use the instruction `sw` or _store word_(because `array` is in the data section) which will basically store the value in the register into the array.

Note: _There is a difference between writing_ `($t0)array` _and writing_ `array($t0)`. _The former is an error and the latter is like indexing the array._

```asm
li $t0, 0
sw $s0, array($t0)
```
The second instruction means _store the value of register_ `$s0` _into the_ $0^{th}$ _index index of the array_. Now, the $0^{th}$ index is itself 4 bytes long so we don't need to add any offset to the array.

Next we increment `$t0` by 4 because we need to move to the next location in the array.

```asm
addi $t0, $t0, 4
sw $s1, array($t0)
```
`$t0` actually acts like an offset which is basically added to the base address to get to the desired location. The next location is 4 bytes away from the first location.

The third location is again 4 bytes away from the second location so we add another 4 bytes to `$t0` after which the value in `$t0` becomes 8.

```asm
addi $t0, $t0, 4
sw $s1, array($t0)
```

Here's how the values are stored in the data segment:

<img src="https://user-images.githubusercontent.com/96164229/244830629-a00e7038-2014-4ec2-83dc-e9827ea17c5f.png" width="60%" height="60%">

Now, to retrieve the values we will apply the offset in exactly the same manner as we did for storing the values into the array but this time since we are retrieving, we will use the instruction `lw` or _load word_.

<p align="center">
&#9678; &#9678; &#9678;
</p>
