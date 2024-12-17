defmodule SumN do
  # Formula-Based Solution
  def sum(n, version) when version == "formula" do
    div(n * (n + 1), 2)
  end

  # Tail-Recursive Solution
  def sum(n), do: do_sum(n, 0)

  defp do_sum(0, acc), do: acc

  defp do_sum(n, acc) do
    do_sum(n - 1, acc + n)
  end
end
