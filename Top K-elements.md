---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - k-elements
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

Any problem that asks us to find the top/smallest/frequent ‘K’ elements among a given set falls under this pattern.

The best data structure to keep track of ‘K’ elements is Heap. This pattern will make use of the Heap to solve multiple problems dealing with ‘K’ elements at a time from a set of given elements. The pattern looks like this:

1. Insert ‘K’ elements into the min-heap or max-heap based on the problem.
2. Iterate through the remaining numbers and if you find one that is larger than what you have in the heap, then remove that number and insert the larger one.

![[Top K-elements.png]]



### When to use

- If you’re asked to find the top/smallest/frequent ‘K’ elements of a given set
- If you’re asked to sort an array to find an exact element


### Common Problems

- Top ‘K’ Numbers (easy)
- Top ‘K’ Frequent Numbers (medium)

