---
tags:
  - sorting
  - cpp
  - algorithm
link: 
aliases:
---


### Overview

Insertion sort is a simple sorting algorithm that works the way we sort playing cards. It is efficient for (quite) small data sets.  

It is often used when the data set is nearly sorted (it takes minimum time (Order of n)). 

It takes maximum time to sort if elements are sorted in reverse order.

![[42171484-b508016a-7e19-11e8-8d47-3b95d788d579.gif]]


### Explanation


1. Begin with index 1

![[Insertion Sort.png]]


2. Move value to the temp storage

![[Insertion Sort-1.png]]


3. Examine an element behind

![[Insertion Sort-2.png]]


4. If this prev element is lower than our temp value
Shift the prev element to the right


![[Insertion Sort-3.png]]


5. Then temp value go to the place where the shifted number was
The first iteration is over

![[Insertion Sort-4.png]]


6. Move on into the iteration 2
Move the next value (7) to the temp storage

![[Insertion Sort-5.png]]

![[Insertion Sort-6.png]]



7. Examine the element on the left

![[Insertion Sort-7.png]]


8. 6 is not greater than 7
Then place the temp value (7) where it came from

![[Insertion Sort-8.png]]

9. Iteration 3

![[Insertion Sort-9.png]]


![[Insertion Sort-10.png]]


![[Insertion Sort-11.png]]


![[Insertion Sort-12.png]]


![[Insertion Sort-13.png]]



### Video


![Learn Insertion Sort in 7 minutes 🧩 - YouTube](https://www.youtube.com/watch?v=8mJ-OhcfpYg)


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

void insertionSort(vector <int> &v, int n) {
	int current, pos;

	for (int i = 1; i < n; i++) {
		current = v[i]; 
		pos = i; // limit of the ordered part, pos not included

		// we make space
		while (pos > 0 && v[pos - 1] > current) {
			v[pos] = v[pos - 1]; 
			pos--;
		}
		
		// we move the current value to its position 
		if (pos != i)  
			v[pos] = current; 
	}
}
```

