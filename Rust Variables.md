---
tags:
  - rust
  - variables
  - uncompleted
link: https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html
---

#### Variables are immutable by default


```rust
fn main() {  
    let x;  
    println!("x has the value {}", x);  
}
```

```rust
fn main() {  
    let x = 5;  
    println!("x has the value {}", x);  
}
```


#### Add [mut]


```rust
fn main() {
    let x = 5;
    println!("The value of x is: {x}");
    x = 6;
    println!("The value of x is: {x}");
}
```

```rust
fn main() {
    let mut x = 5;
    println!("The value of x is: {x}");
    x = 6;
    println!("The value of x is: {x}");
}
```

#### Constants

```rust
const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;
```

#### Inner scope

```rust
fn main() {
    let x = 5;

    let x = x + 1;

    {
        let x = x * 2;
        println!("The value of x in the inner scope is: {x}");
    }

    println!("The value of x is: {x}");
}
```


#### Add type

```rust
fn main() {  
    x = 5;  
    println!("x has the value {}", x);  
}
```

```rust
fn main() {  
    let x = 5;  
    println!("x has the value {}", x);  
}
```

#### Add value

```rust
fn main() {  
    let x;  
    if x == 10 {  
        println!("x is ten!");  
    } else {  
        println!("x is not ten!");  
    }  
}
```

```rust
fn main() {  
    let x = 0;  
    if x == 10 {  
        println!("x is ten!");  
    } else {  
        println!("x is not ten!");  
    }  
}
```



