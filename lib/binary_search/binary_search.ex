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
        tuple = List.to_tuple(list)
        do_search(tuple, item, 0, tuple_size(tuple) - 1)
    end

    @spec do_search(tuple, any, integer, integer) :: {:ok, integer} | :not_found
    defp do_search(_, _, start, stop) when start > stop, do: :not_found

    defp do_search(tuple, item, start, stop) do
        mid = div(start + stop, 2)
        value = elem(tuple, mid)

        cond do
            value == item -> {:ok, mid}
            value > item -> do_search(tuple, item, start, mid - 1)
            true -> do_search(tuple, item, mid + 1, stop)
        end
    end
end
