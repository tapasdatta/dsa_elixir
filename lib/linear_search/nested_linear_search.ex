defmodule NestedLinearSearch do
  # [1, 2, [5, 6], 7, [8, [9]]]
  def search(list, q) do
    do_search(list, q)
  end

  defp do_search([head | tail], q) when is_list(head) do
    case do_search(head, q) do
      {:ok, :found} -> {:ok, :found}
      _ -> do_search(tail, q)
    end
  end

  defp do_search([head | _tail], q) when head == q do
    {:ok, :found}
  end

  defp do_search([_head | tail], q) do
    do_search(tail, q)
  end

  defp do_search([], _q), do: {:error, :not_found}
end
