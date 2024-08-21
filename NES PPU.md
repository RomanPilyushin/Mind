---
tags:
  - nes
  - architecture
  - ppu
link: 
aliases:
---

![[NES PPU.png]]

### NES PPU (Picture Processing Unit):

1. **PPU 2C02:**
    
    - The NES PPU is responsible for generating the video output by processing graphical data and producing the pixels that are displayed on the screen.
    - It operates independently of the CPU but is tightly integrated with the overall system through shared memory and bus interactions.
2. **Clocks and Timing:**
    
    - The PPU operates on its own clock, which ticks faster than the CPU. Specifically, the PPU updates three times faster than the CPU.
    - This faster update rate is crucial for rendering the graphics smoothly and in sync with the display.
3. **DMA (Direct Memory Access):**
    
    - The NES employs DMA to efficiently transfer data from memory to the PPU without burdening the CPU.
    - DMA is typically used to transfer sprite data (from Object Attribute Memory or OAM) directly to the PPU for rendering.
4. **Memory Layout:**
    
    - **Graphics (8KB):** This memory region is used to store the graphical data, such as tiles, sprites, and backgrounds. It is mapped to the address range `$0000 - $1FFF`.
    - **VRAM (2KB):** Video RAM is used by the PPU for storing tile maps, attributes, and other graphical data that the PPU uses to generate the display. It is mapped to `$2000 - $27FF`.
    - **Palettes:** The palette memory stores the color information for the sprites and background tiles. It is mapped to `$3F00 - $3FFF`.
    - **Cartridge Graphics:** The graphics data could also reside on the cartridge. Some cartridges include additional graphics ROMs or RAMs that are mapped to the NES address space, allowing for more complex or larger graphics.
5. **Cartridge Mapper:**
    
    - The cartridge may include a mapper, which is a hardware component that allows for more complex memory configurations. The mapper can switch banks of memory in and out of the NES's addressable memory space, enabling larger games than the standard 32KB of PRG-ROM.
    - The mapper could also have different configurations, which could include additional RAM, enhanced graphics capabilities, or additional sound channels.
6. **OAM (Object Attribute Memory):**
    
    - OAM is a special memory that stores the attributes (like position, priority, and palette) of the sprites. The PPU uses OAM data to render sprites on the screen.
    - OAM is typically 256 bytes in size and holds information for up to 64 sprites.
7. **Pixel Production:**
    
    - As the clock ticks, the PPU reads the data from VRAM, OAM, and palettes, and produces the corresponding pixels that are sent to the display.
    - The PPU has its own maps (name tables and attribute tables) that it uses to determine what to draw on the screen.

### Summary:

- **PPU**: The heart of NES's graphical processing, working independently but in sync with the CPU.
- **Memory Layout**: Includes regions for graphics, VRAM, and palettes, all mapped into the PPU's memory space.
- **Cartridge**: Can augment the NES's capabilities with mappers that allow for expanded graphics and memory configurations.
- **OAM**: Holds sprite attributes for rendering.
- **DMA**: Allows for efficient memory transfers to the PPU.

The interaction between the CPU, PPU, and memory, along with the potential enhancements provided by cartridge mappers, allows the NES to deliver complex and varied graphics, which was quite advanced for its time.


































