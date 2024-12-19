defmodule SelectionSort do
  @moduledoc """
  A module for performing selection sort on a list.
  """

  @doc """
  Sorts a list using the selection sort algorithm.

  ## Examples

      iex> SelectionSort.sort([3, 1, 2])
      [1, 2, 3]

  """
  @spec sort(list) :: list
  def sort([]), do: []

  def sort(list) do
    {min, rest} = find_min(list)
    [min | sort(rest)]
  end

  defp find_min([head | tail]) do
    find_min(tail, head, [])
  end

  defp find_min([], min, rest), do: {min, rest}

  defp find_min([head | tail], min, rest) when head < min do
    find_min(tail, head, [min | rest])
  end

  defp find_min([head | tail], min, rest) do
    find_min(tail, min, [head | rest])
  end
end
