# QuickSort Implementation in Elixir

A simple implementation of the QuickSort algorithm in Elixir. This module provides functionality to sort lists using the QuickSort divide-and-conquer strategy.

## Overview

QuickSort is a highly efficient, comparison-based sorting algorithm. Here’s a step-by-step explanation of how it works:

1. **Selecting a Pivot Element**: Choose an element from the list to be the pivot. In this implementation, the head of the list is used as the pivot.
2. **Partitioning the List**: Divide the remaining elements into two sub-lists:
   - Elements less than the pivot
   - Elements greater than or equal to the pivot
3. **Recursively Sorting Sub-lists**: Apply the same process to the sub-lists. Continue partitioning and sorting until the sub-lists are empty or contain a single element.
4. **Combining Results**: Concatenate the sorted sub-lists and the pivot to form the final sorted list.

## Usage

```elixir
# Sort a list of numbers
iex> QuickSort.qsort([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5])
[1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

## Implementation Details

The implementation uses:
- Pattern matching to handle different cases
- Head of the list as the pivot element
- Recursive partitioning of the list around the pivot
- Concatenation of sorted sub-lists with the pivot

## Time Complexity

The time complexity of QuickSort varies depending on the pivot selection and the input data:

- Best Case: O(n log n)
  - Occurs when the pivot always divides the list into roughly equal halves

- Average Case: O(n log n)
  - Expected performance in practice with random data

- Worst Case: O(n²)
  - Occurs when the list is already sorted or reverse sorted
  - Can be mitigated with better pivot selection strategies

Space Complexity: O(log n) for the recursive call stack in the best and average cases.
