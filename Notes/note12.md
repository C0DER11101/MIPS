# Set on less than(slt)

[asm15.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm15.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244374938-df443898-4fd6-4bf0-a6a3-22f8aa174417.png" width="60%" height="60%">

The `slt` or _set less than_ instruction takes three registers.

[asm15B.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm15B.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/244374987-71cf3a5d-0bac-4875-9abd-d3fc8e3a86c0.png" width="60%" height="60%">

```asm
slt $t3, $t0, $t1
```

Here `$t0` and `$t1` are compared. If `$t0` is less than `$t1` then 1(or true) is stored in the register `$t3` otherwise if `$t0` is greater than `$t1` then 0(or false) is stored in the register `$t3`.

<p align="center">
&#9678; &#9678; &#9678;
</p>
