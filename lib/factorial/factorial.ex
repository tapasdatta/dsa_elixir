defmodule Factorial do
  @moduledoc """
  A module for calculating the factorial of a number.
  """

  @doc """
  Calculates the factorial of a given number.

  ## Examples

      iex> Factorial.fact(5)
      120

  """
  @spec fact(integer) :: integer
  def fact(0), do: 1
  def fact(1), do: 1

  def fact(number) do
    number * fact(number - 1)
  end
end
