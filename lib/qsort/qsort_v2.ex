defmodule QuickSortV2 do
  @moduledoc """
  An implementation of the quicksort algorithm that sorts lists in ascending order.
  Partitions around first element as pivot and recursively sorts sublists.
  """

  @doc """
  Sorts the given list using the quicksort algorithm.
  Returns empty list if input is empty.
  """
  @spec qsort(list()) :: list()
  def qsort([]), do: []

  @spec qsort([number(), ...]) :: list()
  def qsort([pivot | tail]) do
    {lesser, greater} = Enum.split_with(tail, &(&1 <= pivot))

    qsort(lesser) ++ [pivot] ++ qsort(greater)
  end
end
