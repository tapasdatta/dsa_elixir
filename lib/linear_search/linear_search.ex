defmodule LinearSearch do
  @moduledoc """
  A module for performing a linear search on a list.
  """

  @doc """
  Searches for an item in the list and returns its position if found.

  ## Parameters

      - list: The list to search through.
      - item: The item to search for.

  ## Returns

      - `{:ok, position}` if the item is found.
      - `:not_found` if the item is not found.

  ## Examples

          iex> LinearSearch.search([1, 2, 3, 4], 3)
          {:ok, 2}

          iex> LinearSearch.search([1, 2, 3, 4], 5)
          :not_found
  """
  @spec search(list(any), any) :: {:ok, non_neg_integer} | :not_found
  def search(list, item) do
    do_search(list, item, 0)
  end

  @spec do_search(list(any), any, non_neg_integer) :: {:ok, non_neg_integer} | :not_found
  defp do_search([], _item, _position), do: :not_found

  defp do_search([head | tail], item, position) do
    cond do
      head == item -> {:ok, position}
      true -> do_search(tail, item, position + 1)
    end
  end
end
