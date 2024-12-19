defmodule Tribonacci do
  @moduledoc """
  A module to generate the Tribonacci sequence.

  ## Examples

      iex> Tribonacci.sequence(3)
      [1, 1, 0]

      iex> Tribonacci.sequence(5)
      [4, 2, 1, 1, 0]

  """

  def sequence(n) do
    do_sequence(n, [1, 1, 0])
  end

  defp do_sequence(3, acc), do: Enum.reverse(acc)

  defp do_sequence(n, [a, b, c | _] = acc) do
    do_sequence(n - 1, [a + b + c | acc])
  end
end
