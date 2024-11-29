# Data Structures and Algorithms

## Binary Search

Binary search is an efficient algorithm for finding an item from a sorted list of items. It works by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.

### How Binary Search Works

1. Start with the middle element of the sorted list.
2. If the middle element is equal to the target value, the search is complete.
3. If the target value is less than the middle element, repeat the search on the left half of the list.
4. If the target value is greater than the middle element, repeat the search on the right half of the list.
5. Continue this process until the target value is found or the subarray size becomes zero.

### Example Code

Here is an example implementation of binary search in Elixir, as defined in the `BinarySearch` module:

```elixir
iex> BinarySearch.search([1, 2, 3, 4, 5], 3)
2

iex> BinarySearch.search([1, 2, 3, 4, 5], 6)
nil
```

### Time Complexity

The time complexity of binary search is O(log n), where n is the number of elements in the sorted list.
