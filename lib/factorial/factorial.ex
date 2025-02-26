defmodule Factorial do
  @moduledoc """
  A module for calculating the factorial of a number.
  """

  @doc """
  Calculates the factorial of a given number by using Tail-recursive method.

  ## Examples

      iex> Factorial.fact(5)
      120

  """

  def fact(n) when n <= 1, do: 1

  def fact(n), do: do_fact(n, 1)

  defp do_fact(1, acc), do: acc

  defp do_fact(n, acc) do
    do_fact(n - 1, acc * n)
  end
end
