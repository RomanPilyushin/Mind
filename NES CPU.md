---
tags:
  - nes
  - cpu
  - architecture
link: 
aliases: []
---

![[NES CPU.png]]

### Breakdown of the NES [[Components of CPU (Central Processing Unit)|CPU]] Architecture:

1. **[[Components of CPU (Central Processing Unit)|CPU]] 2A03:**
    
    - The NES uses a Ricoh 2A03 processor, which is a variant of the MOS Technology 6502 [[Components of CPU (Central Processing Unit)|CPU]].
    - This [[Components of CPU (Central Processing Unit)|CPU]] is the central processing unit of the NES, responsible for executing game code, handling inputs, and managing interactions with other components like memory and sound.
2. **Memory (2KB):**
    
    - The NES has 2KB of onboard RAM (Random Access Memory).
    - The memory is mapped to the address range `$0000 - $07FF`.
    - The memory addresses `$0800 - $1FFF` are mirrors of this 2KB RAM, meaning that writing to these addresses is equivalent to writing to the original RAM range.
3. **APU (Audio Processing Unit):**
    
    - The APU is responsible for generating audio, including sound effects and music.
    - The APU is mapped to the address range `$4000 - $4017`.
    - It has [[Components of CPU (Central Processing Unit)|registers]] that can be accessed by the [[Components of CPU (Central Processing Unit)|CPU]] to control sound generation.
4. **Cartridge (ROM):**
    
    - The NES cartridge (which contains the game data) is mapped to the address range `$4020 - $FFFF`.
    - This range includes the program code (PRG-ROM) and other data necessary for game execution.
    - Depending on the cartridge, this memory space might also include additional RAM or memory-mapped [[Components of CPU (Central Processing Unit)|registers]] specific to the game or hardware add-ons.
5. **System Bus:**
    
    - The [[Components of CPU (Central Processing Unit)|CPU]], memory, APU, and cartridge are all connected to a common bus.
    - The bus is a communication pathway that allows data to be transferred between the [[Components of CPU (Central Processing Unit)|CPU]] and the other components.

### Memory Map Summary:

- **$0000 - $07FF**: 2KB onboard RAM.
- **$4000 - $4017**: APU [[Components of CPU (Central Processing Unit)|registers]] for audio control.
- **$4020 - $FFFF**: Cartridge memory, including game code and data.

### Key Points:

- The NES [[Components of CPU (Central Processing Unit)|CPU]] interacts with various components through memory-mapped I/O, meaning that specific memory addresses correspond to specific hardware functions.
- The memory map is an essential aspect of how the NES functions, as it dictates how the [[Components of CPU (Central Processing Unit)|CPU]] accesses RAM, audio, and game data.
- The mirroring of memory addresses means that multiple address ranges can point to the same physical memory, which helps to optimize the limited memory space available on the NES.

This overall architecture allows the NES to handle game logic, graphics, sound, and input in a cohesive and efficient manner, making it a powerful system for its time.




