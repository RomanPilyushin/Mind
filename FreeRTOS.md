---
tags:
  - freertos
  - embedded
  - c
  - rtos
link: 
aliases:
  - FreeRTOS
---

**FreeRTOS** is another popular open-source RTOS that provides a lightweight, easy-to-use environment for embedded systems. It's widely used in industry and supports many microcontroller platforms. Like [[Zephyr RTOS|Zephyr]], FreeRTOS is written in C, and you write your application code using FreeRTOS APIs.

**Key Concepts in C:**

- **Tasks:** In FreeRTOS, tasks are equivalent to threads in [[Zephyr RTOS|Zephyr]]. You define tasks in your C code, and the FreeRTOS scheduler manages their execution based on priority and timing requirements.

- **Queues:** FreeRTOS provides queues for passing data between tasks. This is essential for synchronization and communication in multitasking environments.

- **Semaphores and Mutexes:** FreeRTOS offers semaphores and mutexes to manage access to shared resources, ensuring that critical sections of your C code are executed without interference from other tasks.

- **Timers:** FreeRTOS includes software timers that you can use to execute functions at specific intervals, which is particularly useful for periodic tasks like sensor polling.

- **ISR (Interrupt Service Routines):** FreeRTOS allows you to write ISRs in C to handle hardware interrupts, ensuring that time-critical tasks are managed efficiently.



**Example C Code:**

```c
#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include <semphr.h>
#include <stdint.h>

// LED task
void vLEDTask(void *pvParameters) {
    const TickType_t xDelay = pdMS_TO_TICKS(1000);
    
    for (;;) {
        // Toggle LED
        // Assume LED_Toggle() is a user-defined function to toggle an LED
        LED_Toggle();
        vTaskDelay(xDelay);  // Delay for 1 second
    }
}

// Main function
int main(void) {
    // System initialization code here
    
    // Create the LED task
    xTaskCreate(vLEDTask, "LED", configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    
    // Start the scheduler
    vTaskStartScheduler();
    
    // Should never reach here
    for (;;) {}
}
```


### Comparison in Terms of C Programming

- **APIs and Abstraction:** Both [[Zephyr RTOS|Zephyr]] and FreeRTOS provide APIs for creating tasks, managing memory, and interacting with hardware. However, [[Zephyr RTOS|Zephyr]] offers a more extensive set of APIs, including more advanced features like a native shell, device tree management, and power management.

- **Configuration:** [[Zephyr RTOS|Zephyr]] is highly configurable using Kconfig and Devicetree, allowing you to tailor the OS to your specific needs. FreeRTOS is simpler and more lightweight, making it easier to get started with but potentially requiring more custom C code for complex configurations.

- **Portability:** Both RTOSes support a wide range of hardware, but [[Zephyr RTOS|Zephyr]] has a broader ecosystem with support for many architectures and platforms. FreeRTOS is also highly portable but focuses more on microcontrollers.

- **Community and Ecosystem:** [[Zephyr RTOS|Zephyr]] has a large and growing community with contributions from major industry players like Intel and Nordic Semiconductor. FreeRTOS has a vast user base as well, with strong support from Amazon Web Services (AWS).


In summary, both [[Zephyr RTOS|Zephyr]] and FreeRTOS provide powerful tools for embedded C programming, with [[Zephyr RTOS|Zephyr]] being more feature-rich and suitable for complex applications, while FreeRTOS is lightweight and easier to use for simpler, resource-constrained devices.


























