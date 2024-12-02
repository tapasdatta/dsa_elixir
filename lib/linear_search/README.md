## Linear Search

Linear search is a simple search algorithm that checks every element in a list sequentially until the desired element is found or the list ends. It is one of the most basic and straightforward search algorithms.

### How Linear Search Works

1. Start from the first element of the list.
2. Compare the current element with the target element.
3. If the current element matches the target, return the index of the current element.
4. If the current element does not match the target, move to the next element and repeat step 2.
5. If the end of the list is reached without finding the target, return `nil` indicating the target is not in the list.

### Example

Here is an example of how to use the linear search function with a list:

```elixir
iex> LinearSearch.search([1, 3, 5, 7, 9], 3)
{:ok, integer}

iex> LinearSearch.search([1, 3, 5, 7, 9], 6)
:not_found
```

In this example, the `search` function will look for the target value `5` in the list `[1, 3, 5, 7, 9]`. If the target is found, it will print the index of the target element; otherwise, it will print "Element not found".

### Time Complexity

The time complexity of the linear search algorithm is O(n), where n is the number of elements in the list. In the worst case, the algorithm will have to check all elements before finding the target or concluding that the target is not in the list.
