---
tags:
  - algorithm
  - sorting
  - cpp
link: 
aliases:
---

### Overview

A slow sorting algorithm for the simplest data sets


![[42171410-83532a64-7e19-11e8-95a1-b2dd3aaedc43.gif]]


### Explanation


![[Bubble Sort-1.png]]


1. Get a pair of the elements. If you need to swap them, you swap them


![[Bubble Sort-2.png]]

2. 5 and 3. Swap. 3 and 5

![[Bubble Sort-3.png]]


3. 5 and 7. Don't swap

![[Bubble Sort-4.png]]

4. 7 and 8. No

![[Bubble Sort-5.png]]


5. Go back to the start of the list. We check every par, if we dont sort nothing, it's over

![[Bubble Sort-6.png]]


### Video


![Getting Sorted & Big O Notation - Computerphile - YouTube](https://www.youtube.com/watch?v=kgBjXUE_Nwc)

### Big O

| Case                     | Performance |
|--------------------------|-------------|
| Worst case performance   | O(n^2)      |
| Best case performance    | O(n)        |
| Average case performance | O(n^2)      |
| Auxiliary Space          | O(1)        |

### Code


```cpp
#include <vector>
using namespace std;

void bubbleSort(vector <int> &v, int n) {
	bool swapped = true;
	int i = 0;
	
	// keep going while we swap in the unordered part
	while (i < n - 1 && swapped) { 
		swapped = false;

		// unordered part
		for (int j = n - 1; j > i; j--) { 
			
			if (v[j] < v[j - 1]) {
				swap(v[j], v[j - 1]);
				swapped = true;
			}
		}
		i++;
	}
}
```




