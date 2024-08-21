---
tags:
  - cpu
  - computer
  - addressing
link: 
aliases:
---

![[Indirect Addressing.png]]


### How Indirect Addressing Works:

1. **Instruction**: The instruction shown is `ADD`, which tells the [[Components of CPU (Central Processing Unit)|CPU]] to add a value to the accumulator.
2. **Operand**: The operand provided is `0111`, which represents a memory location (in this case, memory location 7).
3. **First Step**:
    - The [[Components of CPU (Central Processing Unit)|CPU]] goes to memory location 7.
    - Instead of finding the actual data to be used in the operation, it finds another memory address (in this case, `6`).
4. **Second Step**:
    - The [[Components of CPU (Central Processing Unit)|CPU]] then uses this address (`6`) to find the actual data value in memory location 6, which is `10`.
5. **Operation**:
    - The [[Components of CPU (Central Processing Unit)|CPU]] adds the value `10` (found in memory location 6) to the accumulator.

### Summary of Indirect Addressing:

- **Memory Location as a Pointer**: Indirect addressing uses a memory location to point to another memory location where the actual data resides.
- **Two-Step Access**: The first memory access retrieves an address, and the second memory access retrieves the data from that address.
- **Usage**: Indirect addressing is often used in scenarios where the location of the data may change dynamically or where accessing a range of data sequentially is needed.

Indirect Addressing is more flexible compared to [[Immediate and Direct Addressing|direct addressing]] but requires additional memory access, which can make it slower. However, it is powerful for implementing data structures like arrays, tables, and linked lists, where the exact memory locations of the data can vary.




































