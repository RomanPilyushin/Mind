---
tags:
  - algorithm
  - cpp
  - sorting
link: 
aliases:
---

### Overview

Selection sort is noted for its simplicity, and it has performance advantages over more complicated algorithms in certain situations, particularly where auxiliary memory is limited


![[42171344-5554d9d2-7e19-11e8-8537-7811ebbbd1b6.gif]]


### Explanation

1. Keep track the minimum value of each iteration
Each iteration update and swap elements

![[Selection Sort.png]]

2. Open each box and check value inside

![[Selection Sort-1.png]]

3. 9 is the first lowest number, write down this
9 is a new minimum


![[Selection Sort-2.png]]

4. Now we open the next box and 1 is new minimum

![[Selection Sort-3.png]]



5. Open next all boxes but 1 is still be our minimum

![[Selection Sort-4.png]]


6. Then we need move 1 to the first place of our array
Save 9 in our temp storage and swap 1 and 9

![[Selection Sort-5.png]]

![[Selection Sort-6.png]]


7. The first iteration is done


![[Selection Sort-7.png]]


8. Move to iteration 2 and clear min and temp

![[Pasted image 20240811121702.png]]



9. Start from the new beginning

![[Selection Sort-8.png]]


10. Iterate the list and store in our min 9 then 8 then 2
And after we check every numbers include 5
Our minimun is still 2


![[Selection Sort-9.png]]


11. Swap the second element with minimum
Now is 9 (the second) and 2 (minimum)


![[Selection Sort-10.png]]


![[Selection Sort-11.png]]


![[Selection Sort-12.png]]


12. The second iteration is done.


### Video


![Learn Selection Sort in 8 minutes 🔦 - YouTube](https://www.youtube.com/watch?v=EwjnF7rFLns)


### Big O


| Case                     | Performance |
|--------------------------|-------------|
| Worst case performance   | O(n^2)      |
| Best case performance    | O(n^2)      |
| Average case performance | O(n^2)      |
| Auxiliary Space          | O(1)        |


### Code


```cpp
#include <vector>
using namespace std;

void selectionSort(vector <int> &v, int n) {
	int minPosition, aux;

	for (int i = 0; i < n - 1; i++) {
		minPosition = i; // suppose "i" is the minimum

		// find the "min" element in the unsorted part
		for (int j = i + 1; j < n; j++) { /
			
			if (v[j] < v[minPosition]) { 
				minPosition = j;
			}
		}
		//  swap the found "min" element to the sorted part
		if (minPosition > i) { 
			swap(v[minPosition], v[i]);
		}
	}

}

```


