# QuickSort Implementation in Elixir

A simple implementation of the QuickSort algorithm in Elixir. This module provides functionality to sort lists using the QuickSort divide-and-conquer strategy.

## Overview

QuickSort is a highly efficient, comparison-based sorting algorithm that works by:
1. Selecting a pivot element from the list
2. Partitioning other elements into two sub-lists based on whether they are less than or greater than the pivot
3. Recursively sorting the sub-lists

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
