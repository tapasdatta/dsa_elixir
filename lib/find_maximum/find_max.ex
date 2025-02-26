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

  def max(list), do: find_max(list, 0)

  defp find_max([], current_max), do: current_max

  defp find_max([head | tail], current_max) when current_max > head do
    find_max(tail, current_max)
  end

  defp find_max([head | tail], _current_max), do: find_max(tail, head)
end
