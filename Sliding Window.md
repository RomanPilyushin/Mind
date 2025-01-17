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

The Sliding Window pattern is used to perform a required operation on a specific window size of a given array or linked list, such as finding the longest subarray containing all 1s. 

Sliding Windows start from the 1st element and keep shifting right by one element and adjust the length of the window according to the problem that you are solving. In some cases, the window size remains constant and in other cases the sizes grows or shrinks.


![[Sliding Window.png]]



### When to use

- The problem input is a linear data structure such as a linked list, array, or string
- You’re asked to find the longest/shortest substring, subarray, or a desired value


### Common Problems

- Maximum sum subarray of size ‘K’ (easy)
- Longest substring with ‘K’ distinct characters (medium)
- String anagrams (hard)

