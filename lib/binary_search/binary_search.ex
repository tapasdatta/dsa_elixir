defmodule BinarySearch do
  @moduledoc """
  A module for performing binary search on a sorted list.
  """

  @doc """
  Searches for an item in a sorted list using binary search.

  ## Parameters
  - list: A sorted list of elements.
  - item: The item to search for.

  ## Returns
  - `{:ok, index}` if the item is found.
  - `:not_found` if the item is not found.

  ## Examples

          iex> BinarySearch.search([1, 2, 3, 4, 5], 3)
          {:ok, 2}

          iex> BinarySearch.search([1, 2, 3, 4, 5], 6)
          :not_found
  """
  @spec search(list(any), any) :: {:ok, integer} | :not_found
  def search(list, item) do
    do_search(list, item, 0, length(list) - 1)
  end

  @spec do_search(list(any), any, integer, integer) :: {:ok, integer} | :not_found
  defp do_search(_, _, start, stop) when start > stop, do: :not_found

  defp do_search(list, item, start, stop) do
    mid = div(start + stop, 2)
    value = Enum.at(list, mid)

    cond do
      value == item -> {:ok, mid}
      value > item -> do_search(list, item, start, mid - 1)
      true -> do_search(list, item, mid + 1, stop)
    end
  end
end
