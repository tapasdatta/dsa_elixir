defmodule TradingAPiano do
  def search(graph, start) do
    distances = %{start => 0}
    to_visit = [{0, start}]
    visited = MapSet.new()

    distances
    |> do_search(graph, to_visit, visited)
    |> Enum.sort_by(fn {_, distance} -> distance end)
  end

  defp do_search(distances, _graph, [], _visited), do: distances

  defp do_search(distances, graph, [{current_amount, current_item} | rest_items], visited) do
    if(MapSet.member?(visited, current_item)) do
      do_search(distances, graph, rest_items, visited)
    else
      neighbours = Map.get(graph, current_item, [])

      {new_distances, new_items} =
        Enum.reduce(neighbours, {distances, rest_items}, fn {item, amount},
                                                            {distances, rest_items} ->
          new_amount = current_amount + amount
          old_amount = Map.get(distances, item, :infinity)

          if new_amount < old_amount do
            {Map.put(distances, item, new_amount), [{new_amount, item} | rest_items]}
          else
            {distances, rest_items}
          end
        end)

      do_search(new_distances, graph, new_items, MapSet.put(visited, current_item))
    end
  end
end
