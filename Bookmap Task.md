---
tags:
  - java
  - algorithm
link: 
aliases:
---

**Query Processing (`processQuery()`):** For each query, the following steps are performed:

- **Calculate length and check bounds:** The length of the substring is computed as `len = r − l + 1`. If k is larger than this length, it returns `-1` since the query is invalid.
    
- **Find the k-th character:** The position of the k-th character in the substring [l,r] is calculated as `p = l + k − 1`. The character at this position, c_k, is identified.
    
- **Count occurrences of `c_k` and its opposite:** The opposite character of c_k​ (i.e., if c_k​ is 'A', the opposite is 'B', and vice versa) is determined. Using the prefix arrays, the function computes the number of occurrences of c_k​ in the substring [l,p] and the number of occurrences of the opposite character in the entire range [l,r].
    
- **Early exit condition:** If the occurrences of c_k​ exceed the occurrences of the opposite character, return `-1` since it's impossible to satisfy the conditions.
    
- **Binary search:** The function performs a binary search within the range [l,r] to find the smallest index where the number of opposite characters is at least equal to the number of c_k​. During this search, `left` and `right` pointers are adjusted, and the position `pos` is updated if the condition is satisfied.
    
- **Return result:** If no valid position is found (`pos == -1`), the function returns `-1`. Otherwise, it returns the position `pos` relative to the left boundary `L`.



### Task Overview

The task is to process multiple queries on a string composed of characters 'A' and 'B'. Each query gives you a substring defined by a range [l,r] and a position k, and the goal is to find a specific position in this substring where a certain condition is satisfied.

Here’s how it works:

- You are provided with:
    1. A string `S` consisting of 'A's and 'B's.
    2. Queries, each defined by:
        - A range [l,r] in the string.
        - An integer k representing the position of interest within this range.
    3. Your task for each query is:
        - Find the k-th character in the substring [l,r].
        - Then, find the first position within the substring where the number of the opposite character (relative to the k-th character) is greater than or equal to the number of occurrences of thekk-th character up to that point.

If no such position exists, return `-1`.

### Example

Consider the string `S = "ABBAB"`, and a query defined by:

- l=1, r=5, and k=3.

This query means:

1. We are interested in the substring `S[1:5] = "ABBAB"`.
2. The 3-rd character in this substring is `B` (i.e., the k-th character).
3. The opposite character of `B` is `A`.

The goal is to find the first position where the number of `A`s in the substring is at least as many as the number of `B`s up to that position.

### Binary Search Explanation in Terms of This Task

Let’s break down how binary search is used in this context.

1. **Preprocessing with Prefix Sums:** We preprocess the string by calculating two prefix arrays:
    
    - `prefixA[]`: Stores the cumulative count of 'A's up to each index in the string.
    - `prefixB[]`: Stores the cumulative count of 'B's up to each index.
    
    These arrays allow us to efficiently calculate the number of 'A's or 'B's in any substring using the formula:
    
![[Bookmap Task.png]]
    
2. **Finding the k-th Character:**
    
    - From the query, we know the range [l,r] and k.
    - The position of the kkk-th character in the substring is p=l+k−1.
    - We identify the character at position ppp, which could be either 'A' or 'B'. Let’s say it’s `B`.
3. **Binary Search:** The task now is to find the first position in the range [l,r] where the number of the opposite character ('A') is greater than or equal to the number of 'B's up to that position.
    
    Here’s how binary search is applied:
    
    - **Initialization:** We initialize the binary search with `left = l` and `right = r`. We are looking for the smallest `mid` where the number of 'A's is at least the number of 'B's in the substring from `l` to `mid`.
        
    - **Checking the Midpoint:** At each step of the binary search, we compute the midpoint:
			![[Bookmap Task-2.png]]
        - We count the occurrences of the opposite character ('A') in the range [l,mid] using prefix sums.
        - We also calculate the occurrences of the kkk-th character ('B') in the range [l,p].
    - **Condition Check:**
        
        - If the number of 'A's in the range [l,mid] is greater than or equal to the number of 'B's in the range [l,p], this is a potential solution. We update `pos` to `mid` and adjust `right` to `mid - 1` to search for an even smaller position.
        - If the number of 'A's is less than the number of 'B's, we adjust `left` to `mid + 1` to search for a valid position in the right half.
    - **Ending the Search:** The binary search continues until `left` exceeds `right`. If a valid position is found (`pos` is updated), we return the position. Otherwise, we return `-1` if no such position exists.
        

### Example Walkthrough

For the query:

![[Bookmap Task-1.png]]

1. The substring is `S[1:5] = "ABBAB"`, and the 3rd character is `B` (position p=3).
    
2. We want to find the first position where the number of 'A's is greater than or equal to the number of 'B's up to position 3.
    
3. **Binary Search:**
    
    - Start with `left = 1`, `right = 5`.
        
    - Calculate `mid = (1 + 5) / 2 = 3`.
        
        - The number of 'A's in `S[1:3]` is 1.
        - The number of 'B's in `S[1:3]` is 2.
        - Since the number of 'A's (1) is less than the number of 'B's (2), adjust `left = mid + 1 = 4`.
    - Recalculate `mid = (4 + 5) / 2 = 4`.
        
        - The number of 'A's in `S[1:4]` is 1.
        - The number of 'B's in `S[1:3]` is 2.
        - The number of 'A's is still less than 'B's, so adjust `left = mid + 1 = 5`.
    - Finally, `mid = (5 + 5) / 2 = 5`.
        
        - The number of 'A's in `S[1:5]` is 2.
        - The number of 'B's in `S[1:3]` is 2.
        - The number of 'A's is equal to 'B's, so we update `pos = 5` and stop the search.
4. The first position where the number of 'A's equals or exceeds the number of 'B's is at index 5 in the substring, so the result of the query is `5`.
