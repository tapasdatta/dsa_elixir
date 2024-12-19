defmodule FindMaxNested do
  def max([]), do: {:error, "Empty list"}

  def max(list) do
    find_max(list, 0)
  end

  defp find_max([], current_max), do: current_max

  defp find_max([head | tail], current_max) when is_list(head) do
    find_max(tail, find_max(head, current_max))
  end

  defp find_max([head | tail], current_max) when is_number(head) do
    find_max(tail, Kernel.max(head, current_max))
  end

  defp find_max([_ | tail], current_max) do
    find_max(tail, current_max)
  end
end
