defmodule FindMin do
  @moduledoc """
  A module to find the minimum value in a list.
  """

  @doc """
  Finds the minimum value in a list.

  ## Examples

      iex> FindMin.min([3, 1, 4, 1, 5, 9])
      1

  """
  def min(list), do: find_min(list)

  defp find_min([x]), do: x

  defp find_min([x, y | tail]) when x < y do
    find_min([x | tail])
  end

  defp find_min([_x, y | tail]), do: find_min([y | tail])
end
