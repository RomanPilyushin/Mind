---
tags:
  - cpu
  - computer
  - addressing
link: 
aliases:
  - Direct Addressing
  - Immediate Addressing
---

![[Immediate and.png]]

![[Immediate and Direct Addressing.png]]


In computer architecture, **addressing modes** determine how the operand of an instruction is selected. The two addressing modes shown in your image, **Immediate Addressing** and **Direct Addressing**, are common ways to specify operands in machine instructions.

### 1. **Immediate Addressing:**

- **Definition**: In Immediate Addressing, the operand is directly specified in the instruction itself. This means the actual data value (rather than an address) is included in the instruction.
- **Example**: Suppose the instruction is `ADD 5`, where `ADD` is the [[Opcode (Operation Code) and Operands|opcode]], and `5` is the operand. In Immediate Addressing, `5` is directly added to the contents of a register or the accumulator, without referencing memory.
- **Usage**: Immediate Addressing is typically used when the operation requires a constant value. It's fast because there’s no need to access memory for the operand.

### 2. **Direct Addressing:**

- **Definition**: In Direct Addressing, the operand is the address of the memory location where the actual data is stored. The instruction contains the address, and the [[Components of CPU (Central Processing Unit)|CPU]] accesses the data at that memory location.
- **Example**: As shown in your image, if the instruction is `01100111`, where `0110` is the [[Opcode (Operation Code) and Operands|opcode]] for `ADD` and `0111` is the operand, it means "Add the value found at memory address 7 to the accumulator." The operand `0111` represents the memory location where the data to be added is stored.
- **Usage**: Direct Addressing is useful when the data is stored in memory rather than being a constant value. However, accessing memory is generally slower than accessing data that is immediately available in the instruction.

### **Key Differences:**

- **Immediate Addressing** uses the actual value within the instruction as the operand, leading to faster execution since it doesn’t require an additional memory access.
- **Direct Addressing** uses the operand in the instruction as an address to look up in memory, which involves a memory access to retrieve the actual data.

Both addressing modes are essential in different scenarios. Immediate Addressing is beneficial for small constants and faster operations, while Direct Addressing is more flexible for accessing data stored in memory.




































