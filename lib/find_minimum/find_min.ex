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
  def min(list), do: find_min(list, 0)

  defp find_min([], current_min), do: current_min

  defp find_min([head | tail], 0), do: find_min(tail, head)

  defp find_min([head | tail], current_min) when current_min < head do
    find_min(tail, current_min)
  end

  defp find_min([head | tail], _current_min), do: find_min(tail, head)
end
