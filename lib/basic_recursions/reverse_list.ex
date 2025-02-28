defmodule ReverseList do
  @moduledoc """
  A module for reversing lists.
  """

  # Example: ReverseList.reverse([1, 2, 3]) => [3, 2, 1]

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], reverse_list), do: reverse_list

  defp do_reverse([head | tail], reverse_list) do
    do_reverse(tail, [head | reverse_list])
  end
end
