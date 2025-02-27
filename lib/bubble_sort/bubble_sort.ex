defmodule BubbleSort do
  @moduledoc """
  A module that provides a Bubble Sort implementation.

  ## Examples

      iex> BubbleSort.sort([4, 2, 7, 1, 3])
      [1, 2, 3, 4, 7]

      iex> BubbleSort.sort([5, 3, 8, 6, 2])
      [2, 3, 5, 6, 8]
  """

  def sort(list), do: do_sort(list, length(list))

  defp do_sort(list, 0), do: list

  defp do_sort(list, n) do
    list
    |> bubble_pass([])
    |> do_sort(n - 1)
  end

  defp bubble_pass([], acc), do: Enum.reverse(acc)

  defp bubble_pass([x], acc), do: [x | acc]

  defp bubble_pass([x, y | tail], acc) when x > y do
    bubble_pass([y | tail], [x | acc])
  end

  defp bubble_pass([x, y | tail], acc) do
    bubble_pass([x | tail], [y | acc])
  end
end
