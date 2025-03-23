defmodule Nodes do
  @doc """
    # Example usage

    graph = %{
      "Start" => [{"A", 6}, {"B", 2}],
      "A" => [{"Finish", 1}],
      "B" => [{"A", 3}, {"Finish", 5}],
      "Finish" => []
    }

    Nodes.search(graph, "start")

    # Output: [{"start", 0}, {"B", 2}, {"A", 5}, {"Finish", 6}]
  """

  def search(graph, start) do
    nodes = %{start => 0}
    to_visit = [{0, start}]
    visited = MapSet.new()

    nodes
    |> do_search(graph, to_visit, visited)
    |> Enum.sort_by(fn {_, distance} -> distance end)
  end

  defp do_search(nodes, _graph, [], _visited), do: nodes

  defp do_search(nodes, graph, [{current_distance, current_node} | next_nodes], visited) do
    if MapSet.member?(visited, current_node) do
      do_search(nodes, graph, next_nodes, visited)
    end

    neighbours = Map.get(graph, current_node, [])

    {new_nodes, new_next_visits} =
      Enum.reduce(neighbours, {nodes, next_nodes}, fn {neighbour, time}, {nodes, next_nodes} ->
        new_time = current_distance + time

        old_time = Map.get(nodes, neighbour, :infinity)

        if new_time < old_time do
          {Map.put(nodes, neighbour, new_time), [{new_time, neighbour} | next_nodes]}
        else
          {nodes, next_nodes}
        end
      end)

    do_search(new_nodes, graph, new_next_visits, MapSet.put(visited, current_node))
  end
end
