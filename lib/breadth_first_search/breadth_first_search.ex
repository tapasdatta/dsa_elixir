defmodule BreadthFirstSearch do
  @moduledoc """
  A module to perform Breadth-First Search (BFS) on a graph.

  Example graph:
          tapas
        /   |   \
    alice  bob   claire
    |    /  \       /   \
  peggy anuj peggy thom jonny
  """

  # Example output: ["tapas", "alice", "bob", "claire", "peggy", "anuj", "thom", "jonny"]

  def search() do
    graph = %{
      "tapas" => ["alice", "bob", "claire"],
      "bob" => ["anuj", "peggy"],
      "alice" => ["peggy"],
      "claire" => ["thom", "jonny"],
      "peggy" => [],
      "thom" => [],
      "jonny" => []
    }

    do_search(graph, ["tapas"], [], [])
  end

  defp do_search(_graph, [], _visited, result), do: Enum.reverse(result)

  defp do_search(graph, [current | queue], visited, result) do
    if current in visited do
      do_search(graph, queue, visited, result)
    else
      neighbours = Map.get(graph, current, [])
      do_search(graph, queue ++ neighbours, [current | visited], [current | result])
    end
  end
end
