## 0x1E. C - Search Algorithms
---
## DESCRIPTION
This project is a collection of various search algorithms implemented in C. The goal of this project is to provide a comprehensive guide to understanding how different search algorithms work and how they can be used in real-world applications.

# Table of Contents
* Linear Search
* Binary Search
* Linear Search
Linear search is a simple search algorithm that searches for a target value in a list of values. It compares each element in the list with the target value until it finds a match or reaches the end of the list.

Complexity
Time Complexity: O(n)
Space Complexity: O(1)
Implementation
The following is an example of a linear search algorithm implemented in C:

int linear_search(int arr[], int n, int target) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == target) {
            return i;
        }
    }
    return -1;
}
Binary Search
Binary search is a search algorithm that finds the position of a target value within a sorted array. It compares the target value to the middle element of the array and eliminates half of the remaining elements each time it does not find a match.

Complexity
Time Complexity: O(log n)
Space Complexity: O(1)
Could be O(log n) if recursive implementation is used.
Notes
Binary search is a divide-and-conquer algorithm.
The array must be sorted for binary search to work.
Binary search is more efficient than linear search for large arrays.
Implementation
The following is an example of a binary search algorithm implemented in C:

/* recursive implementation */

int binary_search_recursive(int *array, size_t low, size_t high, int value)
{
    size_t mid;

    if (low > high)
        return (-1);

    mid = low + (high - low) / 2;

    if (array[mid] == value)
        return (mid);

    else if (array[mid] < value)
        return (binary_search_recursive(array, mid + 1, high, value));

    else
        return (binary_search_recursive(array, low, mid - 1, value));
}

int binary_search(int *array, size_t size, int value)
{
    if (array == NULL || size == 0)
        return (-1);

    return (binary_search_recursive(array, 0, size - 1, value));
}
/* iterative implementation */

int binary_search(int *array, size_t size, int value)
{
    size_t low, high, mid;

    if (array == NULL || size == 0)
        return (-1);

    low = 0;
    high = size - 1;

    while (low <= high)
    {
        mid = low + (high - low) / 2;

        if (array[mid] == value)
            return (mid);

        else if (array[mid] < value)
            low = mid + 1;

        else
            high = mid - 1;
    }

    return (-1);
}

## TASKS
* 0. Linear search
Write a function that searches for a value in an array of integers using the Linear search algorithm
Prototype : int linear_search(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the first index where value is located
If value is not present in array or if array is NULL, your function must return -1
Every time you compare a value in the array to the value you are searching, you have to print this value (see example below)
* 1. Binary search
Write a function that searches for a value in a sorted array of integers using the Binary search algorithm
Prototype : int binary_search(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the index where value is located
You can assume that array will be sorted in ascending order
You can assume that value won’t appear more than once in array
If value is not present in array or if array is NULL, your function must return -1
You must print the array being searched every time it changes. (e.g. at the beginning and when you search a subarray) (See example)
* 2. Big O #0
What is the time complexity (worst case) of a linear search in an array of size n?
* 3. Big O #1
What is the space complexity (worst case) of an iterative linear search algorithm in an array of size n?
* 4. Big O #2
What is the time complexity (worst case) of a binary search in an array of size n?
* 5. Big O #3
What is the space complexity (worst case) of a binary search in an array of size n?
* 6. Big O #4
What is the space complexity of this function / algorithm?
* 7. Jump search
Write a function that searches for a value in a sorted array of integers using the Jump search algorithm
Prototype : int jump_search(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the first index where value is located
You can assume that array will be sorted in ascending order
If value is not present in array or if array is NULL, your function must return -1
You have to use the square root of the size of the array as the jump step.
You can use the sqrt() function included in <math.h> (don’t forget to compile with -lm)
Every time you compare a value in the array to the value you are searching for, you have to print this value (see example)
* 8. Big O #5
What is the time complexity (average case) of a jump search in an array of size n, using step = sqrt(n)?
* 9. Interpolation search
Write a function that searches for a value in a sorted array of integers using the Interpolation search algorithm
Prototype : int interpolation_search(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the first index where value is located
You can assume that array will be sorted in ascending order
If value is not present in array or if array is NULL, your function must return -1
To determine the probe position, you can use : size_t pos = low + (((double)(high - low) / (array[high] - array[low])) * (value - array[low]))
Every time you compare a value in the array to the value you are searching, you have to print this value (see example below)
* 10. Exponential search
Write a function that searches for a value in a sorted array of integers using the Exponential search algorithm
Prototype : int exponential_search(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the first index where value is located
You can assume that array will be sorted in ascending order
If value is not present in array or if array is NULL, your function must return -1
You have to use powers of 2 as exponential ranges to search in your array
Every time you compare a value in the array to the value you are searching for, you have to print this value (See example)
Once you’ve found the good range, you need to use a binary search:
Every time you split the array, you have to print the new array (or subarray) you’re searching in (See example)
* 11. Advanced binary search
You may have noticed that the basic binary search does not necessarily return the index of the first value in the array (if this value appears more than once in the array). In this exercise, you’ll have to solve this problem.
Write a function that searches for a value in a sorted array of integers.
Prototype : int advanced_binary(int *array, size_t size, int value);
Where array is a pointer to the first element of the array to search in
size is the number of elements in array
And value is the value to search for
Your function must return the index where value is located
You can assume that array will be sorted in ascending order
If value is not present in array or if array is NULL, your function must return -1
Every time you split the array, you have to print the new array (or subarray) you’re searching in (See example)
You have to use recursion. You may only use one loop (while, for, do while, etc.) in order to print the array
* 12. Jump search in a singly linked list
You might think that linear search is not as effective as any other algorithm, right? Well, we should see what happens with a singly linked list.
Please define the following data structure in your search_algos.h header file:
* 13. Linear search in a skip list
As you see now, looking for a specific value in a singly linked list always leads to browse every element of the list. A common way to optimize the time complexity of a search in a singly linked list is to modify the list itself by adding an “express lane” to browse it. A linked list with an express lane is called a skip list. This change does not come without consequences. Indeed, the space complexity of a search in this kind of list will grow as sizeof(skiplist_t) > sizeof(listint_t) (see example below).
Please define the following data structure in your search_algos.h header file:
* 14. Big O #6
What is the time complexity (average case) of a jump search in a singly linked list of size n, using step = sqrt(n)?
* 15. Big O #7
What is the time complexity (average case) of a jump search in a skip list of size n, with an express lane using step = sqrt(n)?
