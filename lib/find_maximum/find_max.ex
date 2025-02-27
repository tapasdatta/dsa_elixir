defmodule FindMax do
  @moduledoc """
  A module for finding the maximum value in a list.
  """

  @doc """
  Finds the maximum value in a list.

  ## Examples

      iex> FindMax.max([1, 2, 3, 4, 5])
      5
  """

  def max(list), do: find_max(list)

  defp find_max([x]), do: x

  defp find_max([x, y | tail]) when x > y do
    find_max([x | tail])
  end

  defp find_max([_x, y | tail]) do
    find_max([y | tail])
  end
end
