defmodule ProductList do
  @moduledoc """
  Provides a function to calculate the product of a list of numbers.

  ## Examples

      iex> ProductList.product([1, 2, 3, 4])
      24

      iex> ProductList.product([5, 6, 7])
      210
  """

  @spec product([number]) :: number
  def product(list), do: do_product(list, 1)

  # Base case
  defp do_product([], acc), do: acc

  defp do_product([head | tail], acc), do: do_product(tail, acc * head)
end
