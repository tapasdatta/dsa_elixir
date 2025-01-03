defmodule DepthFirstSearch do
  @moduledoc """
  A module to perform Depth-First Search (BFS) on a graph.
      tapas
      /     \
    alice     bob
    /   \      /  \
  thom claire anuj peggy
    |
  jonny
  """

  # Example output: ["tapas", "alice", "thom", "johny", "claire", "bob", "anuj", "peggy"]

  def search() do
    graph = [
      {"tapas", "alice"},
      {"tapas", "bob"},
      {"alice", "thom"},
      {"alice", "claire"},
      {"bob", "anuj"},
      {"bob", "peggy"},
      {"thom", "johny"}
    ]

    do_search(graph, ["tapas"], [])
  end

  defp do_search(_graph, [], result), do: Enum.reverse(result)

  defp do_search(graph, [current | stack], result) do
    neighbours = find_neighbours(graph, current)
    do_search(graph, neighbours ++ stack, [current | result])
  end

  defp find_neighbours(graph, node) do
    graph
    |> Enum.filter(fn {from, _} -> from == node end)
    |> Enum.map(fn {_, to} -> to end)
  end
end
