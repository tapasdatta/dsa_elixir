defmodule BubbleSort do
  @moduledoc """
  A module that provides a Bubble Sort implementation.

  ## Examples

      iex> BubbleSort.sort([4, 2, 7, 1, 3])
      [1, 2, 3, 4, 7]

      iex> BubbleSort.sort([5, 3, 8, 6, 2])
      [2, 3, 5, 6, 8]
  """

  @spec sort(list(integer)) :: list(integer)
  def sort(n) when length(n) < 2, do: n

  def sort(list) do
    do_sort(length(list), list)
  end

  defp do_sort(0, list), do: list

  defp do_sort(n, [head | tail]) do
    sorted_list = bubble_sort(tail, head, [])
    do_sort(n - 1, sorted_list)
  end

  defp bubble_sort([], current_head, acc), do: Enum.reverse([current_head | acc])

  defp bubble_sort([head | tail], current_head, acc) when current_head < head do
    bubble_sort(tail, head, [current_head | acc])
  end

  defp bubble_sort([head | tail], current_head, acc) do
    bubble_sort(tail, current_head, [head | acc])
  end
end
