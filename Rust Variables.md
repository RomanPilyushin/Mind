---
tags:
  - rust
  - rustlings/variables
  - uncompleted
link: https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html
---

In Rust, variables are immutable by default. When a variable is immutable, once a value is bound to a name, you can’t change that value. You can make them mutable by adding `mut` in front of the variable name.


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

---

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

---

```rust
const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;
```

---

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

---

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

---

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

---

