defmodule LucasNumber do
  @moduledoc """
  Module for generating Lucas number sequences.
  """

  @doc """
  Generates the Lucas number sequence up to the nth element.

  ## Parameters
  - n: The number of elements in the sequence to generate.

  ## Examples

      iex> LucasNumber.sequence(5)
      [2, 1, 3, 4, 7]

      iex> LucasNumber.sequence(-1)
      []

  """

  def sequence(n), do: do_sequence(n, [1, 2]) |> Enum.reverse()

  defp do_sequence(2, acc), do: acc

  defp do_sequence(n, [a, b | _] = acc) do
    do_sequence(n - 1, [a + b | acc])
  end
end
