---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - binary-search
  - search
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

Whenever you are given a sorted array, linked list, or matrix, and are asked to find a certain element, the best algorithm you can use is the Binary Search. 

This pattern describes an efficient way to handle all problems involving Binary Search.


The patterns looks like this for an ascending order set:

1. First, find the middle of start and end. An easy way to find the middle would be: middle = (start + end) / 2. But this has a good chance of producing an integer overflow so it’s recommended that you represent the middle as: middle = start + (end — start) / 2

2. If the key is equal to the number at index middle then return middle

3. If ‘key’ isn’t equal to the index middle:

4. Check if key < arr[middle]. If it is reduce your search to end = middle — 1

5. Check if key > arr[middle]. If it is reduce your search to end = middle + 1


![[Modified Binary Search.png]]

### Common Problems

- Order-agnostic Binary Search (easy)
- Search in a Sorted Infinite Array (medium)

