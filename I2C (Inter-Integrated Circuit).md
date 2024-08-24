---
tags:
  - i2c
  - interface
  - embedded
  - c
link: 
aliases:
  - i2c
---


**I2C** is a synchronous, multi-master, multi-slave, packet-switched, single-ended serial communication protocol. It's commonly used for communication between microcontrollers and peripherals like EEPROMs, sensors, and LCDs.

**Key Concepts in C:**

- **Clock Line (SCL) and Data Line (SDA):** I2C uses two wires for communication. SCL carries the clock signal, and SDA carries the data.
- **Master/Slave Configuration:** The master initiates communication, and slaves respond. You must configure your microcontroller as either a master or a slave in your C code.
- **Addressing:** Each device on the I2C bus has a unique address, and communication is initiated by sending the address of the target device.
- **Acknowledge Bit:** After each byte is transmitted, the receiver must send an acknowledge (ACK) bit to confirm receipt.

**Example C Code:**

```c
#include <avr/io.h>

// Function to initialize I2C as master
void i2c_init(void) {
    TWSR = 0x00; // Set prescaler to 1
    TWBR = ((F_CPU / 100000UL) - 16) / 2; // Set SCL frequency
    TWCR = (1<<TWEN); // Enable TWI (I2C)
}

// Function to start I2C communication
void i2c_start(void) {
    TWCR = (1<<TWSTA) | (1<<TWEN) | (1<<TWINT); // Send start condition
    while (!(TWCR & (1<<TWINT))); // Wait for start condition to be transmitted
}

// Function to write data to the I2C bus
void i2c_write(uint8_t data) {
    TWDR = data;
    TWCR = (1<<TWEN) | (1<<TWINT); // Start transmission
    while (!(TWCR & (1<<TWINT))); // Wait for transmission to complete
}

// Function to read data from the I2C bus
uint8_t i2c_read_ack(void) {
    TWCR = (1<<TWEN) | (1<<TWINT) | (1<<TWEA); // Enable ACK
    while (!(TWCR & (1<<TWINT))); // Wait for reception to complete
    return TWDR;
}
```


### Summary

- **[[UART (Universal Asynchronous Receiver Transmitter)|UART]]** is used for asynchronous serial communication and is simple but requires precise timing.
- **I2C** is useful for connecting multiple devices on the same [[bus]], using two wires and a master/slave relationship.
- **[[SPI (Serial Peripheral Interface)|SPI]]** is faster and more flexible than I2C but requires more pins and is often used for high-speed communication with peripherals.































