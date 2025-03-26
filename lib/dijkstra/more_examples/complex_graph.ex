defmodule ComplexGraph do
  # graph = %{
  #   "start" => [{"A", 2}, {"B", 5}],
  #   "A" => [{"B", 8}, {"E", 7}],
  #   "B" => [{"D", 4}, {"E", 2}],
  #   "D" => [{"E", 6}, {"Finish", 3}],
  #   "E" => [{"Finish", 1}],
  #   "Finish" => []
  # }

  def search(graph, start) do
    distances = %{start => 0}
    to_visit = [{0, start}]
    visited = MapSet.new()

    distances
    |> do_search(graph, to_visit, visited)
    |> Enum.sort_by(fn {_, distance} -> distance end)
  end

  defp do_search(distances, _graph, [], _visited), do: distances

  defp do_search(distances, graph, [{currenct_distance, current_node} | rest_nodes], visited) do
    if MapSet.member?(visited, current_node) do
      do_search(distances, graph, rest_nodes, visited)
    else
      neighbours = Map.get(graph, current_node, [])

      {new_destances, new_rest_nodes} =
        Enum.reduce(neighbours, {distances, rest_nodes}, fn {neighbour, distance},
                                                            {distances, rest_nodes} ->
          new_distance = currenct_distance + distance
          old_distance = Map.get(distances, neighbour, :infinity)

          if new_distance < old_distance do
            {Map.put(distances, neighbour, new_distance),
             Enum.sort([{new_distance, neighbour} | rest_nodes])}
          else
            {distances, rest_nodes}
          end
        end)

      do_search(new_destances, graph, new_rest_nodes, MapSet.put(visited, current_node))
    end
  end
end
