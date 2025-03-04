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

    iex> BinarySearch.search([1, 2, 3, 4, 5], 2)
    :not_found
  """

  def search(list, item) when is_list(list), do: do_search(list, item, 0)

  defp do_search([], _item, _index), do: :not_found

  defp do_search(list, item, index) do
    mid = div(length(list), 2)
    {left, [value | right]} = Enum.split(list, mid)

    cond do
      value == item -> {:ok, index + mid}
      value > item -> do_search(left, item, index)
      true -> do_search(right, item, index + mid + 1)
    end
  end
end
