## Factorial Module

The `Factorial` module provides a function to calculate the factorial of a non-negative integer. This module is implemented in Elixir and uses a recursive approach to compute the factorial.

### Usage

To use the `Factorial` module, you need to call the `fact/1` function with a non-negative integer as an argument. The function will return the factorial of the given number.

#### Example

```elixir
iex> Factorial.fact(5)
120

iex> Factorial.fact(0)
1
```

### Complexity

The `Factorial.fact/1` function uses a recursive approach to compute the factorial of a number. The time complexity of this implementation is O(n), where n is the input number. This is because the function makes n recursive calls to compute the factorial.

The space complexity is also O(n) due to the call stack used by the recursive function. Each recursive call adds a new frame to the call stack, and there are n such frames for an input of n.

For large values of n, this recursive approach may lead to a stack overflow. In such cases, an iterative approach or tail-recursive optimization can be used to improve performance and avoid stack overflow.
