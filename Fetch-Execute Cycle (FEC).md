---
tags:
  - Von-Neumann
  - cpu
  - computer
  - architecture
  - imperfect-tense
  - Fetch-Execute-Cycle
link: 
aliases:
  - Von Neumann Fetch-Execute Cycle
  - Von Neumann FEC
  - FEC
  - Fetch-Execute Cycle
---

![[Von Neumann Fetch-Execute Cycle (FEC).png]]

### Key Components in the Diagram:

1. **Program Counter (PC)**:
    
    - The Program Counter holds the address of the next instruction to be executed. In this diagram, the PC is set to `2`, meaning the [[Components of CPU (Central Processing Unit)|CPU]] is about to fetch the instruction located at memory position `2`.
2. **Memory Address Register ([[Components of CPU (Central Processing Unit)|MAR]])**:
    
    - The [[Components of CPU (Central Processing Unit)|MAR]] holds the address in memory from which data or an instruction is to be fetched or to which data is to be written. In this case, it will temporarily hold the value from the PC.
3. **Memory Data Register ([[Components of CPU (Central Processing Unit)|MDR]])**:
    
    - The [[Components of CPU (Central Processing Unit)|MDR]] stores the data that has been fetched from memory or is about to be written to memory.
4. **Current Instruction Register ([[Components of CPU (Central Processing Unit)|CIR]])**:
    
    - The [[Components of CPU (Central Processing Unit)|CIR]] holds the instruction that has just been fetched from memory and is currently being decoded and executed by the [[Components of CPU (Central Processing Unit)|CPU]].
5. **[[Components of CPU (Central Processing Unit)|Control Unit]] (CU)**:
    
    - The CU manages the execution of the instruction. It decodes the instruction held in the [[Components of CPU (Central Processing Unit)|CIR]] into an opcode and operands, directing the [[Arithmetic Logic Unit (ALU)|ALU]] and other parts of the [[Components of CPU (Central Processing Unit)|CPU]] on what to do next.
6. **[[Arithmetic Logic Unit (ALU)]]**:
    
    - The [[Arithmetic Logic Unit (ALU)|ALU]] performs arithmetic and logical operations. For example, it might add two numbers, compare them, or perform a bitwise operation.



### The Fetch-Execute Cycle Steps:

1. **Fetch**:
    
    - The PC points to the memory location of the next instruction. This address is transferred to the [[Components of CPU (Central Processing Unit)|MAR]].
    - The instruction at that address is fetched from memory and placed into the [[Components of CPU (Central Processing Unit)|MDR]].
    - The instruction is then moved from the [[Components of CPU (Central Processing Unit)|MDR]] to the [[Components of CPU (Central Processing Unit)|CIR]] for decoding.
2. **Decode**:
    
    - The CU decodes the instruction in the [[Components of CPU (Central Processing Unit)|CIR]], breaking it down into an opcode and operands.
    - The opcode tells the [[Components of CPU (Central Processing Unit)|CPU]] what operation to perform, while the operands specify the data or memory locations involved.
3. **Execute**:
    
    - The decoded instruction is executed by the [[Components of CPU (Central Processing Unit)|CPU]]. For example, if the instruction is an addition, the [[Arithmetic Logic Unit (ALU)|ALU]] will add the specified operands.
    - After execution, the result might be stored in a register or memory.
4. **Update PC**:
    
    - The PC is updated to point to the next instruction in memory, and the cycle repeats.



### Example:

If the current instruction is located at memory position 2 and contains the binary sequence `00100100`, this sequence will be fetched into the [[Components of CPU (Central Processing Unit)|CIR]], decoded by the CU, and executed by the [[Arithmetic Logic Unit (ALU)|ALU]] or another part of the [[Components of CPU (Central Processing Unit)|CPU]], depending on the instruction.

This cycle is repeated continuously by the [[Components of CPU (Central Processing Unit)|CPU]], enabling the computer to perform complex tasks by executing a series of simple instructions in sequence.



















