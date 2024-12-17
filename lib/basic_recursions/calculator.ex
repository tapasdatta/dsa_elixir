defmodule Calculator do
  @moduledoc """
  A simple calculator module that provides functions to sum a list of numbers
  and count the number of elements in a list.
  """

  @doc """
  Sums a list of numbers.

  ## Examples

      iex> Calculator.sum([1, 2, 3, 4])
      10

      iex> Calculator.sum([])
      0

  """
  @spec sum([number]) :: number
  def sum([]), do: 0

  def sum(list), do: do_sum(0, list)

  @spec do_sum(number, [number]) :: number
  defp do_sum(current_sum, []), do: current_sum

  defp do_sum(current_sum, [head | tail]) do
    do_sum(current_sum + head, tail)
  end

  @doc """
  Counts the number of elements in a list.

  ## Examples

      iex> Calculator.count([1, 2, 3, 4])
      4

      iex> Calculator.count([])
      0

  """
  @spec count([any]) :: non_neg_integer
  def count(list) do
    do_count(0, list)
  end

  @spec do_count(non_neg_integer, [any]) :: non_neg_integer
  defp do_count(current_count, []), do: current_count

  defp do_count(current_count, [_head | tail]) do
    do_count(current_count + 1, tail)
  end
end
