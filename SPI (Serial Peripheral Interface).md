---
tags:
  - spi
  - interface
  - c
  - embedded
link: 
aliases:
  - spi
---

**SPI** is a synchronous serial communication protocol primarily used for short-distance communication in embedded systems. It's commonly used for communication with SD cards, flash memory, sensors, and display modules.

**Key Concepts in C:**

- **Full-Duplex Communication:** SPI can transmit and receive data simultaneously using separate data lines for input (MISO) and output (MOSI).
- **Master/Slave Configuration:** Like [[I2C (Inter-Integrated Circuit)|I2C]], SPI has master and slave devices. The master controls the clock (SCK) and initiates communication.
- **Chip Select (CS) Line:** The master uses the CS line to select which slave device to communicate with.
- **Clock Polarity and Phase (CPOL and CPHA):** SPI allows you to configure the clock polarity and phase to match the requirements of the connected devices.

**Example C Code:**

```c
#include <avr/io.h>

// Function to initialize SPI as master
void spi_init(void) {
    DDRB = (1<<PB2)|(1<<PB3)|(1<<PB5); // Set MOSI, SCK, and SS as output
    SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0); // Enable SPI, set as master, and set clock rate
}

// Function to transmit data via SPI
void spi_transmit(char data) {
    SPDR = data; // Load data into the SPI data register
    while(!(SPSR & (1<<SPIF))); // Wait until transmission is complete
}

// Function to receive data via SPI
char spi_receive(void) {
    while(!(SPSR & (1<<SPIF))); // Wait until reception is complete
    return SPDR; // Return received data
}
```

### Summary

- **[[UART (Universal Asynchronous Receiver Transmitter)|UART]]** is used for asynchronous serial communication and is simple but requires precise timing.
- **[[I2C (Inter-Integrated Circuit)|I2C]]** is useful for connecting multiple devices on the same [[bus]], using two wires and a master/slave relationship.
- **SPI** is faster and more flexible than [[I2C (Inter-Integrated Circuit)|I2C]] but requires more pins and is often used for high-speed communication with peripherals.





































