---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - tree
  - dfs
  - depth-first-search
  - recursion
  - stack
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

Tree DFS is based on the Depth First Search (DFS) technique to traverse a tree.

You can use recursion (or a stack for the iterative approach) to keep track of all the previous (parent) nodes while traversing.

The Tree DFS pattern works by starting at the root of the tree, if the node is not a leaf you need to do three things:

1. Decide whether to process the current node now (pre-order), or between processing two children (in-order) or after processing both children (post-order).

2. Make two recursive calls for both the children of the current node to process them.

### When to use

- If you’re asked to traverse a tree with in-order, preorder, or postorder DFS
- If the problem requires searching for something where the node is closer to a leaf

### Common Problems

- Sum of Path Numbers (medium)
- All Paths for a Sum (medium)

