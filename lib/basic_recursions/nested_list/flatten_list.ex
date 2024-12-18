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

  def flatten([]), do: []

  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)

  def flatten(head), do: [head]
end
