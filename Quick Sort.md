---
tags:
  - cpp
  - algorithm
  - sorting
link: 
aliases:
---


### Overview

Quick Sort is a recursive sorting algorithm that is more effective than other O(nlogn) algorithms for large datasets that fit in memory, but is unstable. 

Quick Sort in general does not requiere extra space while Merge Sort requires O(n) extra storage


![[42190383-0923306a-7e5d-11e8-86b3-1e9f7a79b782.gif]]


### Explanation

1. Take a pivot

![[Quick Sort.png]]

2. 5 is a pitov

![[Quick Sort-1.png]]

3. Sort into two sublists

![[Quick Sort-2.png]]

4. Do it until the list does contain only one element

![[Quick Sort-3.png]]

5. Then we join the list

![[Quick Sort-4.png]]

![[Quick Sort-5.png]]

![[Quick Sort-6.png]]

### Video

![Quick Sort - Computerphile - YouTube](https://www.youtube.com/watch?v=XE4VP_8Y0BU)



### Big O

| Case                     | Performance |
|--------------------------|-------------|
| Worst case performance   | O(n^2)      |
| Best case performance    | O(n log n)  |
| Average case performance | O(n log n)  |
| Auxiliary Space          | O(log(n))   |



### Code


```cpp
#include <vector>
using namespace std;

int partition(vector <int> &v, int start, int end) {
	
	int pivot = start; // Take the first element as a pivot 
	int i = start + 1;
	int j = end;

	while (i <= j) {
		
		// If element at the left is bigger than the pivot and
		// element at the right is smaller, swap elements
		
		if (v[i] > v[pivot] && v[j] < v[pivot]) {
			swap(v[i], v[j]);
		}
		else if (v[i] <= v[pivot]) { i++; } 
		else if (v[j] >= v[pivot]) { j--; } 
	}

	// we swap the pivot into the right position
	swap(v[j], v[pivot]);
	return j;
}

// QuickSort
void quickSort(vector <int> &v, int start, int end) {

	if (start < end) {
		int pivot = partition(v, start, end);
		quickSort(v, start, pivot);
		quickSort(v, pivot + 1, end);
	}
}

```
