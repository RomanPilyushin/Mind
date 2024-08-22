---
tags:
  - Von-Neumann
  - cpu
  - computer
  - architecture
link: 
aliases:
  - Von Neumann CPU
  - Von Neumann Architecture
---


![[Von Neumann CPU.png]]

### Key Components and Concepts:

1. **[[Fetch-Execute Cycle (FEC)|von Neumann CPU]]**:
    
    - The [[Components of CPU (Central Processing Unit)|CPU]] (Central Processing Unit) in the [[Fetch-Execute Cycle (FEC)|von Neumann architecture]] typically consists of two main components: the **[[Components of CPU (Central Processing Unit)|Control Unit]] (CU)** and the **[[Components of CPU (Central Processing Unit)|Arithmetic Logic Unit]] ([[Arithmetic Logic Unit (ALU)|ALU]])**.
    - The **[[Components of CPU (Central Processing Unit)|Control Unit]] (CU)** is responsible for fetching instructions from memory, decoding them, and then executing them by sending the appropriate control signals to other parts of the computer.
2. **Memory Space**:
    
    - In the [[Fetch-Execute Cycle (FEC)|von Neumann architecture]], both data and instructions are stored in the same memory space. This means that the [[Components of CPU (Central Processing Unit)|CPU]] fetches both the program instructions and the data from the same memory.
    - The memory is organized in a linear, addressable space, where each memory location has a unique address.
3. **Buses**:
    
    - **Address Bus**: This bus carries the memory addresses from the [[Components of CPU (Central Processing Unit)|CPU]] to the memory space, indicating where data or instructions should be fetched or stored.
    - **Data Bus**: This bus transfers the actual data between the [[Components of CPU (Central Processing Unit)|CPU]] and the memory. It carries the data that is being read from or written to memory.

### [[Fetch-Execute Cycle (FEC)|von Neumann Architecture]] Characteristics:

- **Single Shared Memory for Data and Instructions**: Both program instructions and data are stored in the same memory, which simplifies the design but can lead to bottlenecks, known as the "von Neumann bottleneck."
- **Sequential Execution of Instructions**: The [[Components of CPU (Central Processing Unit)|CPU]] fetches instructions one at a time from memory, decodes them, and executes them sequentially. This linear flow of execution is a hallmark of [[Fetch-Execute Cycle (FEC)|von Neumann architecture]].

### Limitations:

- **von Neumann Bottleneck**: The major limitation of this architecture is that the [[Components of CPU (Central Processing Unit)|CPU]] can only access either an instruction or data from memory at any given time, not both simultaneously. This can slow down processing as the [[Components of CPU (Central Processing Unit)|CPU]] has to wait for data to be fetched from memory before it can execute an instruction.
- **Lack of Parallelism**: Since instructions are executed sequentially, there is limited opportunity for parallel processing in this architecture, which can be a bottleneck in certain high-performance applications.

This architecture laid the foundation for most modern computers, where the concept of storing programs in memory and executing them sequentially is still prevalent, even as modern CPUs incorporate more sophisticated techniques like pipelining and parallelism to overcome some of the inherent limitations.



















