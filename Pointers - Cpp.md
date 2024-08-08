---
tags:
  - cpp
  - pointers
link: 
aliases:
---


```cpp
#include <iostream>

int main() {
    int x = 5;
    int* p = &x;
    std::cout << *p;
    return 0;
}

5
```


```cpp
#include <iostream>

int main() {
    int x = 5;
    int* p = &x;
    std::cout << p;
    return 0;
}

0x7ffeefbff58c
```


```cpp
#include <iostream>

int main() {
	// Use a valid integer value for initialization
    int x = 0; 
    int* p = &x;
    std::cout << *p;
    return 0;
}

0
```


```cpp
#include <iostream>

int main() {
	// Initialize the pointer with nullptr
    int* p = nullptr; 
    if (p != nullptr) {
	    // This block will not execute
	    // Because p is nullptr
        std::cout << *p;
    } else {
        std::cout << "Pointer is null";
    }
    return 0;
}

Pointer is null
```