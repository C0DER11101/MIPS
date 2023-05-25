# Printing a float

The code for printing out a floating point number is `2`. We will load it onto register `$v0` using the `li` instruction:
```asm
li $v0, 2
```

<img src="https://user-images.githubusercontent.com/96164229/240690919-78899b2f-3f25-4f75-8d84-bcf9fd641d04.png" width="60%" height="60%">

The registers to handle a float value are in `Coproc1`.

So, to display the value we need to load that value onto register `$f12` by using `lwc1`(_load word into Coprocessor 1_) instruction since register `$f12` is in `Coproc1`:
```asm
lwc1 $f12 pi
```

[asm4.asm](https://github.com/C0DER11101/MIPS/blob/MIPS/tests/asm4.asm)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240690430-2f9364e0-dd9e-45a3-8654-1cfb6e14414b.png" width="60%" height="60%">

<details>
<summary>More images</summary>

<img src="https://user-images.githubusercontent.com/96164229/240690621-978c507d-4134-4311-a9d3-82071bb69fa9.png" width="60%" height="60%">

The decimal equivalent of the address of `pi` is stored in register `$at`.

Value of `pi` i.e `3.14` is stored in register `$f12` :point_down:

<img src="https://user-images.githubusercontent.com/96164229/240691221-9ea5b97e-7743-4c4e-8477-4597f83c3848.png" width="60%" height="60%">

</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
