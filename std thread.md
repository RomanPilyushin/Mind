---
tags:
  - study
  - thread
link: 
aliases:
---

`std::thread` and `std::async` are part of the C++ Standard Library and provide ways to perform concurrent programming. They enable you to execute code in parallel, improving performance or responsiveness in certain types of applications. Let's explore both in detail.


**Overview:**

- `std::thread` is a low-level construct that represents a thread of execution. When you create a `std::thread`, a new thread is launched, and the specified function or callable object starts running in parallel with the rest of your program.

**Usage:**

- To use `std::thread`, you typically pass a function or a callable object (like a lambda or functor) to the thread constructor. The thread will then execute this function concurrently with the main thread or other threads.


```cpp
#include <iostream>
#include <thread>

void printMessage(const std::string& message) {
    std::cout << message << std::endl;
}

int main() {
    std::string msg = "Hello from thread!";
    
    // Create a thread that runs the printMessage function
    std::thread t(printMessage, msg);

    // Wait for the thread to finish before continuing
    t.join();

    return 0;
}

```


### **1. Joining:**

- `join()` is called on a thread to wait for it to finish execution before continuing. If you don’t join a thread, and the program exits, it will cause a crash or undefined behavior.

### **2. Detaching:**

- `detach()` allows the thread to run independently. Once detached, the thread will execute until it finishes, even if the main program ends. However, you can no longer join or interact with the thread.

```cpp
std::thread t(printMessage, msg);
t.detach(); // Thread runs independently
```


### **3. Thread Safety:**

Since `std::thread` allows parallel execution, you need to be cautious with shared resources. Using synchronization mechanisms like `std::mutex` ensures thread safety when multiple threads access shared data.


```cpp
std::mutex mtx;
std::thread t([&]() {
    std::lock_guard<std::mutex> lock(mtx);
    printMessage(msg);
});
t.join();

```


### **Comparison Between `std::thread` and `std::async`:**

- **Low-level vs. High-level:**
    
    - `std::thread` gives you low-level control over thread management, such as starting, joining, and detaching threads. It’s more manual and requires careful handling of resources and synchronization.
    - `std::async` is a higher-level abstraction that simplifies running tasks asynchronously. It manages the underlying threading for you and provides an easier way to retrieve results via `std::future`.
- **Resource Management:**
    
    - With `std::thread`, you must ensure that threads are joined or detached to avoid resource leaks.
    - `std::async` handles thread management automatically, making it less error-prone.
- **Flexibility:**
    
    - `std::thread` is more flexible in scenarios where you need direct control over thread behavior, such as creating long-running threads or managing thread pools.
    - `std::async` is ideal for tasks where you want a result in the future without worrying about the thread's lifecycle.
- **Synchronization:**
    
    - `std::thread` often requires additional synchronization mechanisms (`std::mutex`, `std::condition_variable`, etc.) to manage shared data.
    - `std::async` encapsulates synchronization internally, making it easier to use for simple tasks.

### **When to Use Which:**

- **Use `std::thread`** when you need:
    
    - Precise control over thread creation and management.
    - To handle complex threading scenarios, such as managing thread pools or long-running threads.
    - Low-level performance optimizations.
- **Use `std::async`** when you need:
    
    - To perform simple asynchronous tasks without worrying about thread management.
    - A future value from an asynchronous operation, with easy exception handling and synchronization.

Both `std::thread` and `std::async` are powerful tools in C++ for concurrent programming, each suited to different use cases depending on the level of control and abstraction required.























