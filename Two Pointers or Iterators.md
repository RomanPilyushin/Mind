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

Two Pointers is a pattern where two pointers iterate through the data structure in tandem until one or both of the pointers hit a certain condition.

Two Pointers is often useful when searching pairs in a sorted array or linked list; for example, when you have to compare each element of an array to its other elements.


Two pointers are needed because with just pointer, you would have to continually loop back through the array to find the answer. 

This back and forth with a single iterator is inefficient for time and space complexity — a concept referred to as asymptotic analysis. 

While the brute force or naive solution with 1 pointer would work, it will produce something along the lines of O(n²). 

In many cases, two pointers can help you find a solution with better space or runtime complexity.


![[Two Pointers or Iterators.png]]



### When to use

- It will feature problems where you deal with sorted arrays (or Linked Lists) and need to find a set of elements that fulfill certain constraints
- The set of elements in the array is a pair, a triplet, or even a subarray

### [[Fast and Slow pointers]] vs [[Two Pointers or Iterators]]

- There are some cases where you shouldn’t use the Two Pointer approach such as in a singly linked list where you can’t move in a backwards direction. 
- An example of when to use the Fast and Slow pattern is when you’re trying to determine if a linked list is a palindrome.


### Common Problems

- Squaring a sorted array (easy)
- Triplets that sum to zero (medium)
- Comparing strings that contain backspaces (medium)

