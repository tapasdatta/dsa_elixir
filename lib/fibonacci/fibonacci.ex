defmodule Fibonacci do
  @moduledoc """
  A module for generating Fibonacci sequences.

  ## Examples

      iex> Fibonacci.sequence(5)
      [0, 1, 1, 2, 3]

      iex> Fibonacci.sequence(10)
      [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  """

  def sequence(n) when n <= 0, do: []

  def sequence(n) do
    do_sequence(n, [1, 0])
  end

  defp do_sequence(2, acc), do: Enum.reverse(acc)

  defp do_sequence(n, [a, b | _] = acc) do
    do_sequence(n - 1, [a + b | acc])
  end
end
