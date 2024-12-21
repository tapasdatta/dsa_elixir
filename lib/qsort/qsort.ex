defmodule QuickSort do
  @moduledoc """
  Implementation of the QuickSort algorithm for sorting lists.
  QuickSort is a divide-and-conquer sorting algorithm that works by selecting a pivot
  element and partitioning the list around it.
  """

  @doc """
  Sorts a list using the QuickSort algorithm.
  Returns the input list when length is less than 2 since it's already sorted.
  Main QuickSort implementation that partitions around the head element as pivot
  and recursively sorts the left and right partitions.
  """
  @spec qsort(list()) :: list()
  def qsort(list) when length(list) < 2 do
    list
  end

  @spec qsort([any()]) :: [any()]
  def qsort([head | tail]) do
    {left, right} = partition(tail, head, [], [])

    qsort(left) ++ [head] ++ qsort(right)
  end

  # Returns the final partitioned lists when input list is empty
  defp partition([], _pivot, left, right) do
    {left, right}
  end

  # Adds elements <= pivot to left partition
  defp partition([head | tail], pivot, left, right) when head <= pivot do
    partition(tail, pivot, [head | left], right)
  end

  # Adds elements > pivot to right partition
  defp partition([head | tail], pivot, left, right) do
    partition(tail, pivot, left, [head | right])
  end
end
