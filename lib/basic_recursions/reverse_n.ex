defmodule ReverseN do
  # Public function to reverse the sequence of numbers from n down to 1
  def reverse(n) when n >= 0 do
    do_reverse(n, [])
  end

  # Private helper function to accumulate the reversed list
  defp do_reverse(0, reverseList), do: reverseList

  # Recursive case for the private helper function
  defp do_reverse(n, reverseList) when n > 0 do
    do_reverse(n - 1, [n | reverseList])
  end
end
