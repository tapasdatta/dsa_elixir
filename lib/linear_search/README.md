# Linear Search Module

This directory contains the `LinearSearch` module, which provides functionality to perform a linear search on a list.

## Module

### LinearSearch

A module for performing a linear search on a list.

#### Purpose

The `LinearSearch` module provides a function to search for an item in a list and return its position if found.

#### Usage

To use the `LinearSearch` module, you can call the `search/2` function with a list and the item you want to search for. Here are some examples:

```elixir
iex> LinearSearch.search([1, 2, 3, 4], 3)
{:ok, 2}

iex> LinearSearch.search([1, 2, 3, 4], 5)
:not_found
```

#### Time Complexity

- Best case: O(1)
- Average case: O(n)
- Worst case: O(n)

## Running Tests

To run the tests for the `LinearSearch` module, use the following command:

```sh
mix test
```

This will execute all the test cases defined for the module in this directory.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License.
