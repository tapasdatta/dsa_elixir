defmodule SumOfFactorial do
  @moduledoc """
  Provides a function to calculate the sum of factorials from 1 to a given number `n`.

  The sum of factorials for a given `n` is calculated as:
  sum = 1! + 2! + 3! + ... + n!

  ## Examples

      iex> SumOfFactorial.sum(3)
      9  # (1! + 2! + 3! = 1 + 2 + 6 = 9)

      iex> SumOfFactorial.sum(4)
      33  # (1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33)
  """

  def sum(n), do: do_sum(n, 0)

  defp do_sum(0, acc), do: acc

  defp do_sum(n, acc) do
    do_sum(n - 1, fact(n, 1) + acc)
  end

  defp fact(1, acc), do: acc

  defp fact(n, acc) do
    fact(n - 1, n * acc)
  end
end
