defmodule SumN do
  @moduledoc """
  Provides two methods to calculate the sum of the first `n` natural numbers.

  ## Methods

    * Formula-Based Solution: Uses the mathematical formula `n * (n + 1) / 2` to compute the sum.
    * Tail-Recursive Solution: Uses a tail-recursive approach to compute the sum iteratively.
  """

  # Example: sum(5, "formula") -> 15
  @spec sum(integer(), String.t()) :: integer()
  def sum(n, version) when version == "formula" do
    div(n * (n + 1), 2)
  end

  # Example: sum(5) -> 15
  @spec sum(integer()) :: integer()
  def sum(n), do: do_sum(n, 0)

  defp do_sum(0, acc), do: acc

  defp do_sum(n, acc) do
    do_sum(n - 1, acc + n)
  end
end
