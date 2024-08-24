---
tags:
  - uart
  - c
  - embedded
  - interface
link: 
aliases:
  - uart
---

**UART** is a simple, asynchronous serial communication protocol. It transmits data byte-by-byte without needing a separate clock signal. UART is typically used for communication between microcontrollers and devices like GPS modules, Bluetooth modules, or PCs.

**Key Concepts in C:**

- **No Clock Line:** Data is transmitted asynchronously, so you need to set the baud rate (the speed of communication) on both the transmitting and receiving devices to the same value.
- **Data Transmission:** UART uses a TX (Transmit) and RX (Receive) line to send and receive data.
- **Start and Stop Bits:** Data transmission is framed with a start bit and one or more stop bits to signify the beginning and end of data transmission.
- **Parity:** Optional error-checking feature that can be enabled in C to ensure data integrity.

**Example C Code:**

```c
#include <avr/io.h>

// Function to initialize UART
void uart_init(unsigned int baud) {
    unsigned int ubrr = F_CPU/16/baud - 1;
    UBRR0H = (unsigned char)(ubrr>>8);
    UBRR0L = (unsigned char)ubrr;
    UCSR0B = (1<<RXEN0) | (1<<TXEN0); // Enable receiver and transmitter
    UCSR0C = (1<<USBS0) | (3<<UCSZ00); // 8-bit data, 1 stop bit
}

// Function to send a character via UART
void uart_transmit(unsigned char data) {
    while (!( UCSR0A & (1<<UDRE0))); // Wait until the buffer is empty
    UDR0 = data; // Put data into buffer, sends the data
}

// Function to receive a character via UART
unsigned char uart_receive(void) {
    while (!(UCSR0A & (1<<RXC0))); // Wait until data is received
    return UDR0; // Get and return received data from buffer
}
```

### Summary

- **UART** is used for asynchronous serial communication and is simple but requires precise timing.
- **[[I2C (Inter-Integrated Circuit)|I2C]]** is useful for connecting multiple devices on the same [[bus]], using two wires and a master/slave relationship.
- **[[SPI (Serial Peripheral Interface)|SPI]]** is faster and more flexible than [[I2C (Inter-Integrated Circuit)|I2C]] but requires more pins and is often used for high-speed communication with peripherals.














































