---
tags:
  - cpu
  - scheduling
link: 
aliases:
  - CPU Scheduling
---

### Overview of CPU Scheduling:

CPU scheduling is the process by which an operating system decides which processes run on the CPU at any given time. This is crucial for maintaining the efficiency and responsiveness of a system, particularly when there are multiple processes competing for CPU time.

### Types of Schedulers:

- **Long-term scheduler**: Decides which processes are admitted to the system for processing. It controls the degree of multiprogramming.
- **Mid-term scheduler**: Determines which processes are currently active and using the CPU. It can swap processes in and out of memory.
- **Short-term scheduler**: Also known as the CPU scheduler, it selects which of the ready, in-memory processes will be executed next by the CPU.

### Key Concepts:

1. **Process States**: Processes can be in different states such as new, ready, running, waiting, or terminated. The scheduler manages these states as processes move through the system.
    
2. **CPU Bursts and I/O Bursts**: Processes alternate between periods of CPU activity (CPU bursts) and periods of waiting for I/O operations (I/O bursts). Processes with long CPU bursts are CPU-bound, while those with long I/O bursts are I/O-bound.
    
3. **Cooperative vs. Pre-emptive Scheduling**:
    
    - **Cooperative Scheduling**: Processes run until they voluntarily yield control back to the CPU. This is simpler but can lead to inefficiency if a process does not yield.
    - **Pre-emptive Scheduling**: The operating system forcibly takes control of the CPU after a certain time period (quantum). This prevents any single process from monopolizing the CPU but requires more complex management.
4. **Scheduling Algorithms**:
    
    - **First-Come, First-Serve (FCFS)**: Processes are executed in the order they arrive. Simple but can lead to long wait times, especially if a long process arrives first.
    - **Round Robin (RR)**: Each process is assigned a time slice (quantum) and processes are cycled through, giving each a fair share of CPU time.
    - **Shortest Job First (SJF)**: The process with the shortest execution time is chosen next. This can minimize waiting time but may lead to starvation if long processes are continually delayed.
5. **Challenges in Scheduling**:
    
    - **Starvation**: Occurs when low-priority processes are never executed because higher-priority processes keep getting scheduled.
    - **Prediction Difficulties**: Predicting the length of CPU bursts is inherently challenging due to the complexity of software.
6. **Dynamic Priority Systems**: Systems like Linux use dynamic priorities, often controlled by "nice" values, to determine which processes should be prioritized. Lower "nice" values mean higher priority.
    

### Practical Example:

In the video, Linux’s dynamic priority system is demonstrated with processes assigned different "nice" values. This shows how different priority levels affect the execution order and completion times of processes.

For more details, you can watch the full video [here](https://www.youtube.com/watch?v=Jkmy2YLUbUY).

![CPU Scheduling Basics - YouTube](https://www.youtube.com/watch?v=Jkmy2YLUbUY)

