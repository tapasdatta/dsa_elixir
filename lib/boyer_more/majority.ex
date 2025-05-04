defmodule Majority do
  @moduledoc """
  Implementation of Boyer-Moore majority vote algorithm to find the majority element in a list.
  A majority element appears more than n/2 times in a list of size n.
  """

  @doc """
  Finds the majority element in the given list.

  ## Examples

      iex> Majority.find_majority([1, 1, 1, 1, 2, 2, 1, 1])
      1

      iex> Majority.find_majority([3, 3, 4, 2, 4, 4, 2, 4, 4])
      4
  """
  def find_majority(nums \\ [1, 1, 1, 1, 2, 2, 1, 1]) do
    candidate = 0
    count = 0

    check_majority(nums, candidate, count)
  end

  defp check_majority([], candidate, _count), do: candidate

  defp check_majority([head | tail], _candidate, count) when count == 0 do
    check_majority(tail, head, count + 1)
  end

  defp check_majority([head | tail], candidate, count) when head == candidate do
    check_majority(tail, candidate, count + 1)
  end

  defp check_majority([head | tail], candidate, count) when head != candidate do
    check_majority(tail, candidate, count - 1)
  end
end
