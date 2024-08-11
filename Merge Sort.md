---
tags:
  - algorithm
  - cpp
  - sorting
link: 
aliases:
---

### Overview


Merge Sort is a Divide and Conquer algorithm that continually splits a list in half and then merge the sublists in a sorted way.  

A single most important advantage of merge sort over quick sort is its stability: the elements compared equal retain their original order.


![[42171944-ed5814c8-7e1a-11e8-9d30-10ae8047bb17.gif]]


### Explanation


1. Split the list into two parts

![[Merge Sort.png]]


2. Split these lists into 2 and that split lists into 2

![[Merge Sort-1.png]]


3. Split again until we have sublists with two or one cards

![[Merge Sort-2.png]]



4. Sort these sublists, a small number first

![[Merge Sort-3.png]]

![[Merge Sort-4.png]]


5. You can see only a top element of each list

![[Merge Sort-5.png]]

6. We merge these two lists. Which card is the lowest, 4 and 8

![[Merge Sort-6.png]]


![[Merge Sort-7.png]]


7. Which of the lowest between 7 and 8

![[Merge Sort-8.png]]

![[Merge Sort-9.png]]

![[Merge Sort-10.png]]


![[Merge Sort-11.png]]


8. Then these two lists

![[Merge Sort-12.png]]


![[Merge Sort-13.png]]



![[Merge Sort-14.png]]


![[Merge Sort-15.png]]


![[Merge Sort-16.png]]



9. Then merge these two lists

![[Merge Sort-17.png]]


![[Merge Sort-18.png]]


![[Merge Sort-19.png]]


![[Merge Sort-20.png]]



![[Merge Sort-21.png]]


![[Merge Sort-22.png]]


![[Merge Sort-23.png]]



### Video

![Getting Sorted & Big O Notation - Computerphile - YouTube](https://www.youtube.com/watch?v=kgBjXUE_Nwc)


### Big O


| Case                     | Performance |
|--------------------------|-------------|
| Worst case performance   | O(n log n)  |
| Best case performance    | O(n log n)  |
| Average case performance | O(n log n)  |
| Auxiliary Space          | O(n)        |


### Code

```cpp
#include <vector>
using namespace std;

void merge(vector <int> &v, int start, int mid, int end)
{
	vector <int> aux(v.size());
	int i = start;    // begin of the first part
	int j = mid + 1; // begin of the second part
	int k = start;  // start of the aux vector


	// Elements in both parts
	while (i <= mid && j <= end) {
		if (v[i] < v[j])
			aux[k] = v[i++];
		else
			aux[k] = v[j++];

		k++;
	}

	// Left part has elements
	while (i <= mid) {
		aux[k] = v[i++];
		k++;
	}

	// Right part has elements
	while (j <= end) {
		aux[k] = v[j++];
		k++;
	}

	// Copy the vector
	for (int i = start; i <= end; i++) {
		v[i] = aux[i];
	}

}

// Merge sort
void mergeSort(vector <int> &v, int start, int end) {

	if (start < end) {
		int m = (start + end) / 2;
		mergeSort(v, start, m);
		mergeSort(v, m + 1, end);
		merge(v, start, m, end);
	}
}

```
