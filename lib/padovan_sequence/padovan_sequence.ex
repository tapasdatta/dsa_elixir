defmodule PadovanSequence do
  @moduledoc """
  Module for generating Padovan sequence.
  """

  @doc """
  Generates the Padovan sequence up to the nth element.

  ## Parameters
  - n: The number of elements to generate.

  ## Returns
  - A list containing the Padovan sequence up to the nth element.

  ## Examples

      iex> PadovanSequence.sequence(10)
      [1, 1, 1, 2, 2, 3, 4, 5, 7, 9, 12]

  """

  def sequence(n), do: do_sequence(n, [])

  defp do_sequence(n, acc) when n < 0, do: acc

  defp do_sequence(n, acc) do
    do_sequence(n - 1, [do_padovan(n) | acc])
  end

  defp do_padovan(n) when n < 3, do: 1

  defp do_padovan(n) do
    do_padovan(n - 2) + do_padovan(n - 3)
  end
end
