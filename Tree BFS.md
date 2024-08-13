---
tags:
  - algorithm
  - patterns
  - interview
  - programming
  - bfs
  - tree
  - breadth-first-search
  - queue
link: https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed
aliases:
---


### Overview

This pattern is based on the Breadth First Search (BFS) technique to traverse a tree and uses a queue to keep track of all the nodes of a level before jumping onto the next level. 

Any problem involving the traversal of a tree in a level-by-level order can be efficiently solved using this approach.


The Tree BFS pattern works by pushing the root node to the queue and then continually iterating until the queue is empty. For each iteration, we remove the node at the head of the queue and “visit” that node. 

After removing each node from the queue, we also insert all of its children into the queue.


### When to use

- If you’re asked to traverse a tree in a level-by-level fashion (or level order traversal)

### Common Problems

- Binary Tree Level Order Traversal (easy)
- Zigzag Traversal (medium)

