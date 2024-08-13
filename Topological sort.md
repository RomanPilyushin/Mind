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

Topological Sort is used to find a linear ordering of elements that have dependencies on each other. 

For example, if event ‘B’ is dependent on event ‘A’, ‘A’ comes before ‘B’ in topological ordering.


This pattern defines an easy way to understand the technique for performing topological sorting of a set of elements.


The pattern works like this:

1. Initialization
a) Store the graph in adjacency lists by using a HashMap
b) To find all sources, use a HashMap to keep the count of in-degreesBuild the graph and find in-degrees of all vertices

2. Build the graph from the input and populate the in-degrees HashMap.

3. Find all sources
a) All vertices with ‘0’ in-degrees will be sources and are stored in a Queue.

4. Sort
a) For each source, do the following things:
—i) Add it to the sorted list.
— ii)Get all of its children from the graph.
— iii)Decrement the in-degree of each child by 1.
— iv)If a child’s in-degree becomes ‘0’, add it to the sources Queue.
b) Repeat (a), until the source Queue is empty.

![[Topological sort.png]]



### When to use

- The problem will deal with graphs that have no directed cycles
- If you’re asked to update all objects in a sorted order
- If you have a class of objects that follow a particular order


### Common Problems

- Task scheduling (medium)
- Minimum height of a tree (hard)

