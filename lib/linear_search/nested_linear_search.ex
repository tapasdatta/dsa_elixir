defmodule NestedLinearSearch do
  # [1, 2, [5, 6], 7, [8, [9]]]

  def search(list, item), do: do_search(list, item, 0)

  defp do_search([], _item, _position), do: :not_found

  defp do_search([head | tail], item, position) when is_list(head) do
    case do_search(head, item, 0) do
      {:ok, _nested_pos} -> {:ok, position}
      :not_found -> do_search(tail, item, position + 1)
    end
  end

  defp do_search([head | _tail], item, position) when head == item do
    {:ok, position}
  end

  defp do_search([_head | tail], item, position), do: do_search(tail, item, position + 1)
end
