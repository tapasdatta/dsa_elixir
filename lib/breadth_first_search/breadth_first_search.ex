defmodule BreadthFirstSearch do
  @moduledoc """
  A module to perform Breadth-First Search (BFS) on a graph.

  Example graph:
          tapas
        /   |   \
    alice  bob   claire
    |    /  \       /   \
  peggy anuj peggy thom jonny

  graph = %{
    "tapas" => ["alice", "bob", "claire"],
    "bob" => ["anuj", "peggy"],
    "alice" => ["peggy"],
    "claire" => ["thom", "jonny"],
    "peggy" => [],
    "thom" => [],
    "jonny" => []
  }
  """

  @doc """
  Performs BFS on a graph starting from a given node.

  ## Parameters
  - graph: A map where keys are nodes and values are lists of neighbors.
  - start: The starting node.

  ## Returns
  - A list of nodes in BFS order.

  ## Examples
      iex> graph = %{"tapas" => ["alice", "bob", "claire"], "bob" => ["anuj", "peggy"], "alice" => ["peggy"], "claire" => ["thom", "jonny"], "anuj" => [], "peggy" => [], "thom" => [], "jonny" => []}
      iex> BreadthFirstSearch.search(graph, "tapas")
      ["tapas", "alice", "bob", "claire", "peggy", "anuj", "thom", "jonny"]
  """
  def search(graph, start) do
    queue = :queue.from_list([start])

    do_search(graph, queue, MapSet.new(), [])
  end

  defp do_search(graph, queue, visited, result) do
    case :queue.out(queue) do
      {{:value, current}, new_queue} ->
        if MapSet.member?(visited, current) do
          do_search(graph, new_queue, visited, result)
        else
          neighbours = Map.get(graph, current, [])
          new_queue = Enum.reduce(neighbours, new_queue, &:queue.in/2)
          do_search(graph, new_queue, MapSet.put(visited, current), [current | result])
        end

      {:empty, _} ->
        Enum.reverse(result)
    end
  end
end
