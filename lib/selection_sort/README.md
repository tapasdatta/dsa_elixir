# Selection Sort Module

This directory contains the `SelectionSort` module, which provides functionality to perform selection sort on a list.

## Module

### SelectionSort

A module for performing selection sort on a list.

#### Purpose

The `SelectionSort` module provides a function to sort a list using the selection sort algorithm.

#### Usage

To use the `SelectionSort` module, you can call the `sort/1` function with a list of elements. Here are some examples:

```elixir
iex> SelectionSort.sort([3, 1, 2])
[1, 2, 3]

iex> SelectionSort.sort([4, 2, 2, 3, 1])
[1, 2, 2, 3, 4]

iex> SelectionSort.sort([3, -1, 2, -2])
[-2, -1, 2, 3]
```

#### Time Complexity

- Best case: O(n^2)
- Average case: O(n^2)
- Worst case: O(n^2)

## Running Tests

To run the tests for the `SelectionSort` module, use the following command:

```sh
mix test
```

This will execute all the test cases defined for the module in this directory.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.