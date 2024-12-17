defmodule SumList do
  @moduledoc """
  A module that provides functions to sum a list of numbers.
  """

  @doc """
  Sums a list of numbers.

  ## Examples

      iex> SumList.sum([1, 2, 3, 4])
      10

      iex> SumList.sum([])
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
end
