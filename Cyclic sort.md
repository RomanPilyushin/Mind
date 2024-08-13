---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - sorting
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

This pattern describes an interesting approach to deal with problems involving arrays containing numbers in a given range. 

The Cyclic Sort pattern iterates over the array one number at a time, and if the current number you are iterating is not at the correct index, you swap it with the number at its correct index. 

You could try placing the number in its correct index, but this will produce a complexity of O(n^2) which is not optimal, hence the Cyclic Sort pattern.

![[Cyclic sort.png]]


### When to use

- They will be problems involving a sorted array with numbers in a given range
- If the problem asks you to find the missing/duplicate/smallest number in an sorted/rotated array


### Common Problems

- Find the Missing Number (easy)
- Find the Smallest Missing Positive Number (medium)

