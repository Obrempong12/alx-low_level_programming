## 0x1E. C - Search Algorithms
---
## DESCRIPTION
This project is a collection of various search algorithms implemented in C. The goal of this project is to provide a comprehensive guide to understanding how different search algorithms work and how they can be used in real-world applications.

# Table of Contents
* Linear Search
* Binary Search
* Linear Search
Linear search is a simple search algorithm that searches for a target value in a list of values. It compares each element in the list with the target value until it finds a match or reaches the end of the list.

** Complexity
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
