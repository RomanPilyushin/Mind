---
tags:
  - programming
  - oop
  - patterns
  - design-patterns
link: 
aliases:
---

## Creational

- **Use Cases**: When the precise nature of object creation needs control or is complex.
### Factory Method

Абстрактная команда, которая имеет разную реализацую у разных наследников

Abstract class Creator
Abstract class has abstract method CreateShape()

Realisation
Class CreatorCirle creates CreateShape() -> Cirle
Class CreatorSquare creates CreateShape() -> Square

Different master of sword
We choose master, not sword

### Abstract Factory

Представляет интерфейс для создания семейств объектов
Но не конкретные классы

Abstract class AbstractFactory
AbstractFactory has abstract methods

Создание в отдельном классе

Abstract Factory could dont have Factory Method
Using Prototype

### Builder

Different stages
And than .build()

### Prototype

Clone the object

Java use Clonable
Without only copy reference

### Singleton

Only one instance
Call from any part of the program

## Structural

- **Use Cases**: When there’s a need to structure complex relationships between objects or manage dependencies.
### Decorator (Wrapper)

Add new function using wrapping

Interface Car(int getSpeed)

class SimpleCar implement Car
class SportCar implement Car + inject the wrapped car

### Facade

Provide method that we only need in complex library

### Proxy

Middleman
Chaching
Level of access

### Adapter

Transform one interface to another that suite to client
## Behavioral

- **Use Cases**: When objects need to communicate or the logic needs separation from the calling code.
### Observer

Notify Subs about changes
Use Subscription model

HealthBar (SRP) changes health, not Player
Player doest care who subscribes

All classes ISubject or IObserver
Player implements ISubject (Attach calls Observer, Detach, Notify triggers (for each calls) all Observers)
HealthBar implements IObserver (void HealthChanged)

### Strategy

Defines a family of algorithms, encapsulating each one and making them interchangeable.

- _Use case_: Implementing different sorting algorithms that can be selected based on the dataset.

### Memento

Captures and externalizes an object’s internal state for later restoration.

- _Use case_: Implementing checkpoints in games where states need to be saved and restored.

### Iterator

Provides a way to access elements of a collection without exposing its underlying structure.

- _Use case_: Sequentially accessing elements in complex data structures like trees or graphs.

### Visitor

**Visitor**: Separates operations from the objects on which they operate, allowing new operations without changing the objects.

- _Use case_: Performing operations across a complex object structure, like traversing an AST in a compiler.
