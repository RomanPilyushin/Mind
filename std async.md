---
tags:
  - study
  - async
  - cpp
link: 
aliases:
---


**Overview:**

- `std::async` is a higher-level abstraction compared to `std::thread`. It allows you to run a function asynchronously, returning a `std::future` object that will eventually hold the result of the function. You don't need to manage threads directly, as `std::async` handles that for you.

**Usage:**

- When you use `std::async`, you pass a function and its arguments. The function is then executed asynchronously, and you can retrieve the result using the `std::future` returned by `std::async`.



```cpp
#include <iostream>
#include <future>

int computeSquare(int x) {
    return x * x;
}

int main() {
    // Run computeSquare asynchronously
    std::future<int> result = std::async(computeSquare, 5);

    // Do some other work...

    // Get the result of the async operation
    std::cout << "Square is: " << result.get() << std::endl;

    return 0;
}

```



### **1. Deferred vs. Asynchronous Execution:**

- By default, `std::async` may run the function asynchronously or defer its execution until `get()` is called on the `std::future`. You can control this with the launch policy:


```cpp
auto future1 = std::async(std::launch::async, computeSquare, 5); // Force async execution
auto future2 = std::async(std::launch::deferred, computeSquare, 5); // Deferred execution

```

### **2. Future and Promise:**

- `std::future` is an object that represents a value that will be available in the future. You use `get()` to retrieve the value when it’s ready.
- `std::promise` is another related concept where you explicitly set a value or an exception that a `std::future` will hold. `std::async` abstracts away the need to manually create promises.


```cpp
std::promise<int> p;
std::future<int> f = p.get_future();

std::thread t([&p]() {
    p.set_value(10); // Set the value of the promise
});

std::cout << "Value from promise: " << f.get() << std::endl;
t.join();

```


### **3. Exception Handling:**

- If an exception is thrown within the asynchronous function, it can be caught when calling `get()` on the `std::future`.


```cpp
std::future<int> result = std::async([]() -> int {
    throw std::runtime_error("Error occurred");
});

try {
    int value = result.get(); // Will throw the exception here
} catch (const std::exception& e) {
    std::cerr << "Caught exception: " << e.what() << std::endl;
}

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



























