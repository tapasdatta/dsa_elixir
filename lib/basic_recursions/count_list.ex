defmodule CountList do
  @moduledoc """
  This module provides a function to count the number of elements in a list.

  ## Examples

      iex> CountList.count([1, 2, 3, 4])
      4

      iex> CountList.count([])
      0
  """
  @spec count([any]) :: non_neg_integer
  def count(list) do
    do_count(0, list)
  end

  defp do_count(current_count, []), do: current_count

  defp do_count(current_count, [_head | tail]) do
    do_count(current_count + 1, tail)
  end
end
