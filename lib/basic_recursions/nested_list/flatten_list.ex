defmodule Flatten do
  @moduledoc """
  A module for flattening nested lists into a single list.

  ## Examples

      iex> Flatten.flatten([1, [2, 3], [4, [5, 6]], 7])
      [1, 2, 3, 4, 5, 6, 7]

      iex> Flatten.flatten([[], [1, [2, [3]]], 4])
      [1, 2, 3, 4]

      iex> Flatten.flatten([1, 2, 3])
      [1, 2, 3]

      iex> Flatten.flatten([])
      []
  """

  def flatten(list), do: do_flatten(list, []) |> Enum.reverse()

  defp do_flatten([], acc), do: acc

  defp do_flatten([head | tail], acc) when is_list(head) do
    do_flatten(tail, do_flatten(head, acc))
  end

  defp do_flatten([head | tail], acc), do: do_flatten(tail, [head | acc])
end
