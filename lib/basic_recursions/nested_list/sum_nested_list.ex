defmodule SumNested do
  @moduledoc """
  Provides functionality to sum all numbers in a nested list.

  ## Examples

      iex> SumNested.sum([1, [2, 3], 4])
      10

      iex> SumNested.sum([1, [2, [3, 4]], 5])
      15

      iex> SumNested.sum([1, [2, "a", 3], 4])
      10
  """

  @spec sum(list) :: number
  def sum([]), do: 0

  def sum(list), do: do_sum(list, 0)

  defp do_sum([], acc), do: acc

  defp do_sum([head | tail], acc) when is_list(head) do
    do_sum(head ++ tail, acc)
  end

  defp do_sum([head | tail], acc) when is_number(head) do
    do_sum(tail, acc + head)
  end

  defp do_sum([_ | tail], acc), do: do_sum(tail, acc)
end
