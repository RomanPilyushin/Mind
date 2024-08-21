---
tags:
  - emulator
  - bitwise
  - nes
link: https://www.youtube.com/watch?v=F8kx56OZQhg&list=PLrOv9FMX8xJHqMvSGB_9G9nZZ_4IgteYf&index=2
aliases:
  - bitwise
---

### The Six Primary Bitwise Operators:

![[Bitwise Operations-4.png]]


1. **AND (`&`):**
    
    - **Operation:** Compares each bit of two operands. If both bits are `1`, the resulting bit is `1`; otherwise, the resulting bit is `0`.
    - **Example:**
        - `1100 & 1010` results in `1000`.
2. **OR (`|`):**
    
    - **Operation:** Compares each bit of two operands. If at least one of the bits is `1`, the resulting bit is `1`; otherwise, the resulting bit is `0`.
    - **Example:**
        - `1100 | 1010` results in `1110`.
3. **NOT (`~`):**
    
    - **Operation:** Inverts each bit of the operand. If the bit is `1`, it becomes `0`; if it's `0`, it becomes `1`.
    - **Example:**
        - `~1100` results in `0011` (assuming a 4-bit representation).
4. **XOR (`^`):**
    
    - **Operation:** Compares each bit of two operands. The resulting bit is `1` if the bits are different (one `0` and one `1`), and `0` if the bits are the same.
    - **Example:**
        - `1100 ^ 1010` results in `0110`.
5. **Shift Left (`<<`):**
    
    - **Operation:** Shifts the bits of the operand to the left by the specified number of positions. Each shift left operation effectively multiplies the number by `2` for each position shifted.
    - **Example:**
        - `1010 << 1` results in `10100`.
6. **Shift Right (`>>`):**
    
    - **Operation:** Shifts the bits of the operand to the right by the specified number of positions. Each shift right operation effectively divides the number by `2` for each position shifted.
    - **Example:**
        - `1010 >> 1` results in `0101`.

#### Summary:

These bitwise operators allow for efficient manipulation of individual bits within binary numbers, which is particularly useful in embedded systems, low-level programming, and scenarios where performance optimization is critical. Each operator has specific use cases, such as masking, setting, clearing, or toggling bits, and performing arithmetic operations.




### Extracting the Last 4 Bits

![[Untitled-1.png]]


The goal here is to extract the last 4 bits from a char. A char in most systems is an 8-bit (1-byte) data type. The example in the image uses the bitwise AND operation to isolate these last 4 bits.

#### Breaking Down the Example:

1. **Original Char Value:**
    
    - The char is represented as `01101011` in binary.
    - Each bit in this byte can represent a different piece of information, like state flags or small numbers.
2. **Masking with AND Operation:**
    
    - The image shows that you can extract specific bits using a bitwise AND operation.
    - To isolate the last 4 bits, you use a mask. In binary, the mask would be `00001111`.
    
    **Explanation:**
    
    - Binary `01101011` (original value)
    - AND `00001111` (mask)
    - Result: `00001011`
    
    When you apply the AND operation:
    
    - Each bit of the original char is compared to the corresponding bit of the mask.
    - If both bits are `1`, the resulting bit is `1`; otherwise, it's `0`.
3. **Result:**
    
    - After applying the AND operation, the result is `00001011`.
    - This result isolates the last 4 bits (`1011` in binary), effectively "extracting" these bits while setting the others to `0`.

#### Summary:

To extract the last 4 bits from an 8-bit char, you perform a bitwise AND operation using a mask of `00001111`. This keeps only the last 4 bits intact and zeroes out the rest.


```cpp
char value = 0b01101011; // original value
char last4Bits = value & 0b00001111; // mask to extract last 4 bits
```

After running this code, `last4Bits` will contain the value `0b00001011`, which corresponds to the binary number `1011`.


Then extract other 2 bits

![[Bitwise Operations.png]]


### Bitwise Shifting:

![[Bitwise Operations-1.png]]

1. **Right Shift (`>>`):**
    
    - The operation `x >> 3` shifts the bits of `x` to the right by 3 positions.
    - Each right shift operation effectively divides the number by 2 for each bit shifted (assuming no sign extension for unsigned values).
    
    **Example from the Image:**
    
    - Original binary value: `00001100`
    - After `x >> 3`: The result is `00000001`
    - The three rightmost bits are shifted out, and zeros are inserted from the left.
    
    This operation results in the binary `00000001`, which is the decimal value `1`.
    
2. **Left Shift (`<<`):**
    
    - The operation `x << 3` shifts the bits of `x` to the left by 3 positions.
    - Each left shift operation effectively multiplies the number by 2 for each bit shifted.
    
    **Example from the Image:**
    
    - Original binary value: `00001100`
    - After `x << 3`: The result is `01100000`
    - The three leftmost bits are shifted out, and zeros are inserted from the right.
    
    This operation results in the binary `01100000`, which is the decimal value `96`.
    

#### Summary:

- **Right Shift (`>>`)**: Moves the bits to the right, inserting zeros on the left side. This operation can be used to perform division by powers of 2.
    
- **Left Shift (`<<`)**: Moves the bits to the left, inserting zeros on the right side. This operation can be used to perform multiplication by powers of 2.
    

In both cases, shifting bits can be a very efficient way to perform arithmetic operations or manipulate data at the binary level.[^1]


### Bitwise OR

![[Bitwise Operations-2.png]]


1. **Initial Values:**
    
    - `x` is initially `00000000` in binary.
    - `y` is `5`, which in binary is `00000101`.
2. **Left Shift Operation (`y << 2`):**
    
    - The operation `y << 2` means you are shifting the bits of `y` (which is `00000101`) two positions to the left.
    - This results in `00010100` in binary.
    - Essentially, shifting left by 2 positions multiplies `y` by `2^2 = 4`, resulting in a new value.
3. **Bitwise OR Operation (`x |= (y << 2)`):**
    
    - The operation `x |= (y << 2)` means you are performing a bitwise OR between `x` and the result of `(y << 2)`.
    - Initially, `x` is `00000000`, and `(y << 2)` is `00010100`.
    - The OR operation compares each corresponding bit in `x` and `(y << 2)`:
        - If either of the bits is `1`, the resulting bit is `1`.
        - If both bits are `0`, the resulting bit is `0`.
    - After the operation, `x` becomes `00010100`.

#### Summary:

- **Left Shift (`<<`)**: This operation shifts the bits of `y` to the left by 2 positions, effectively multiplying `y` by 4.
- **Bitwise OR (`|=`)**: This operation sets specific bits in `x` based on the result of `(y << 2)`. After the operation, the binary value of `x` is updated to `00010100`.

The final value of `x` is `00010100` in binary, which is `20` in decimal. This is a common technique used in low-level programming, especially when dealing with flags, masks, and setting specific bits in [[Components of CPU (Central Processing Unit)|registers]] or memory.


### Extracting a specifit bit

![[Bitwise Operations-3.png]]

1. **Initial Values:**
    
    - The binary value of `x` is `10110101`.
    - A specific bit within `x` (in this case, the bit highlighted in blue) is the target for extraction or manipulation.
2. **Bitwise NOT Operation (`~`):**
    
    - The bitwise NOT (`~`) operation inverts all bits in a number. If a bit is `1`, it becomes `0`, and vice versa.
    - The example shows a mask being created by shifting the value `y` (not shown in this particular snippet, but presumably provided earlier) to the left by 5 bits: `(y << 5)`.
    - The result of the shift operation is then inverted with `~`, changing all `0`s to `1`s and vice versa.
3. **AND Operation (`&`):**
    
    - The AND operation (`&`) is used to isolate specific bits.
    - After the NOT operation, the mask is applied to `x` using the AND operation: `x &= ~(y << 5)`.
    - This operation effectively clears the specific bit(s) that you want to manipulate, leaving other bits in `x` unchanged.

#### Example in the Image:

- **Original `x`:** `10110101`
- **Mask after NOT operation:** `11011111`
- **Result after AND operation:** `10010101`

#### Summary:

- **Bitwise NOT (`~`)**: Inverts all bits in the number.
- **Bitwise AND (`&`)**: Clears the specified bit(s) by applying the mask.

The final result `10010101` shows that the specific bit has been cleared, while the rest of the bits in `x` remain the same. This technique is commonly used in bit manipulation tasks to extract, clear, or set specific bits within a binary value.



























---
[^1]: You can find more in this video [NES Emulator Part #1: Bitwise Basics & Overview - YouTube](https://www.youtube.com/watch?v=F8kx56OZQhg&list=PLrOv9FMX8xJHqMvSGB_9G9nZZ_4IgteYf&index=2)