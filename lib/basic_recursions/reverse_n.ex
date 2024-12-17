defmodule ReverseN do
  def reverse(n) when n >= 0 do
    do_reverse(n, [])
  end

  defp do_reverse(0, reverseList), do: reverseList

  defp do_reverse(n, reverseList) when n > 0 do
    do_reverse(n - 1, [n | reverseList])
  end
end
