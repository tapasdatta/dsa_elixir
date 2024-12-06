# Binary Search Module

This directory contains the `BinarySearch` module, which provides functionality to perform a binary search on a sorted list.

## Module

### BinarySearch

A module to perform a binary search on a sorted list.

#### Purpose

The `BinarySearch` module provides a function to search for an item in a sorted list and return its position if found.

#### Usage

To use the `BinarySearch` module, you can call the `search/2` function with a sorted list and the item you want to search for. Here are some examples:

```elixir
iex> BinarySearch.search([1, 2, 3, 4, 5], 3)
{:ok, 2}

iex> BinarySearch.search([1, 2, 3, 4, 5], 6)
:not_found
```

#### Time Complexity

- Best case: O(1)
- Average case: O(log n)
- Worst case: O(log n)

## Running Tests

To run the tests for the `BinarySearch` module, use the following command:

```sh
mix test
```

This will execute all the test cases defined for the module in this directory.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.
