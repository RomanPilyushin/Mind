---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - subset
  - bfs
  - breadth-first-search
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

A huge number of coding interview problems involve dealing with Permutations and Combinations of a given set of elements. 

The pattern Subsets describes an efficient Breadth First Search (BFS) approach to handle all these problems.


The pattern looks like this:

Given a set of [1, 5, 3]

1. Start with an empty set: [ [ ] ]
2. Add the first number (1) to all the existing subsets to create new subsets: [ [], [1] ]
3. Add the second number (5) to all the existing subsets: 
[ [], [1], [5], [1,5] ]
4. Add the third number (3) to all the existing subsets: 
[ [], [1], [5], [1,5], [3], [1,3], [5,3], [1,5,3] ]


 ![[Subsets.png]]


### When to use

- Problems where you need to find the combinations or permutations of a given set


### Common Problems

- Subsets With Duplicates (easy)
- String Permutations by changing case (medium)

