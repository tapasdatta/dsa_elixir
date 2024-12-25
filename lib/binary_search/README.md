## What is Binary Search?

Binary search is a highly efficient algorithm used to find an item in a sorted list. Unlike linear search, which checks each element one by one, binary search divides the list into halves, significantly reducing the number of comparisons needed to find the target item. This makes binary search an excellent choice for large datasets.

## How Binary Search Works

Binary search operates on the principle of divide and conquer. Here's a step-by-step breakdown of how it works:

### Step 1: Initial Setup

Start with two pointers:
- `low`: Points to the beginning of the list.
- `high`: Points to the end of the list.

### Step 2: Calculate Midpoint

Find the midpoint of the list using the formula:
```elixir
mid = (low + high) // 2
```

### Step 3: Compare Midpoint Value

Compare the target value to the value at the midpoint:
- If the target value is equal to the midpoint value, you've found the item and return its position.
- If the target value is less than the midpoint value, adjust the `high` pointer to `mid - 1` to search the left half of the list.
- If the target value is greater than the midpoint value, adjust the `low` pointer to `mid + 1` to search the right half of the list.

### Step 4: Repeat

Repeat steps 2 and 3 until the `low` pointer exceeds the `high` pointer, which means the target value is not in the list.

### Example

Let's walk through an example to illustrate how binary search works:

Suppose we have a sorted list `[1, 2, 3, 4, 5]` and we want to find the position of the number `3`.

1. **Initial Setup**: `low = 0`, `high = 4`
2. **Calculate Midpoint**: `mid = (0 + 4) // 2 = 2`
3. **Compare Midpoint Value**: The value at index `2` is `3`, which matches our target value.
4. **Result**: We found the target value at index `2`.

If we were searching for `6` instead:

1. **Initial Setup**: `low = 0`, `high = 4`
2. **Calculate Midpoint**: `mid = (0 + 4) // 2 = 2`
3. **Compare Midpoint Value**: The value at index `2` is `3`, which is less than `6`. Adjust `low` to `3`.
4. **Repeat**:
   - New `mid = (3 + 4) // 2 = 3`
   - The value at index `3` is `4`, which is less than `6`. Adjust `low` to `4`.
   - New `mid = (4 + 4) // 2 = 4`
   - The value at index `4` is `5`, which is less than `6`. Adjust `low` to `5`.
5. **Result**: `low` exceeds `high`, so the target value `6` is not in the list.

## Using Binary Search in Elixir

To use the `BinarySearch` module in Elixir, you can call the `search/2` function with a sorted list and the item you want to search for. Here are some examples:

```elixir
iex> BinarySearch.search([1, 2, 3, 4, 5], 3)
{:ok, 2}

iex> BinarySearch.search([1, 2, 3, 4, 5], 6)
:not_found
```

## Time Complexity

Binary search is known for its efficiency:
- **Best case**: O(1) - The target value is at the midpoint on the first check.
- **Average case**: O(log n) - The list is divided in half each time, leading to a logarithmic number of comparisons.
- **Worst case**: O(log n) - The target value is not in the list, requiring a full logarithmic number of comparisons.

## Running Tests

To ensure your implementation is correct, you can run tests for the `BinarySearch` module using the following command:

```sh
mix test
```

This will execute all the test cases defined for the module in this directory.

## Contributing

We welcome contributions! If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.
