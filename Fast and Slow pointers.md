---
tags:
  - algorithm
  - patterns
  - interview
  - programming
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

The Fast and Slow pointer approach, also known as the **Hare & Tortoise algorithm**, is a pointer algorithm that uses two pointers which move through the array (or sequence/linked list) at different speeds. 

**This approach is quite useful when dealing with cyclic linked lists or arrays.**


By moving at different speeds (say, in a cyclic linked list), the algorithm proves that the two pointers are bound to meet. 

The fast pointer should catch the slow pointer once both the pointers are in a cyclic loop.


![[Fast and Slow pointers.png]]

### When to use

- The problem will deal with a loop in a linked list or array
- When you need to know the position of a certain element or the overall length of the linked list.

### [[Fast and Slow pointers]] vs [[Two Pointers or Iterators]]

- There are some cases where you shouldn’t use the Two Pointer approach such as in a singly linked list where you can’t move in a backwards direction. 
- An example of when to use the Fast and Slow pattern is when you’re trying to determine if a linked list is a palindrome.


### Common Problems

- Linked List Cycle (easy)
- Palindrome Linked List (medium)
- Cycle in a Circular Array (hard)

