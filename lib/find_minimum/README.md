# Find Minimum Module

This directory contains the `FindMin` module, which provides functionality to find the minimum value in a list.

## Module

### FindMin

A module to find the minimum value in a list.

#### Purpose

The `FindMin` module provides a function to find the minimum value in a list.

#### Usage

To use the `FindMin` module, you can call the `find_min/1` function with a list of numbers. Here are some examples:

```elixir
iex> FindMin.find_min([3, 1, 4, 1, 5, 9])
{:ok, 1}

iex> FindMin.find_min([])
[]
```

#### Time Complexity

- Best case: O(n)
- Average case: O(n)
- Worst case: O(n)

## Running Tests

To run the tests for the `FindMin` module, use the following command:

```sh
mix test
```

This will execute all the test cases defined for the module in this directory.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.
