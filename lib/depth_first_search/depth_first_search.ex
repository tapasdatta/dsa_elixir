defmodule DepthFirstSearch do
  @moduledoc """
  A module to perform Depth-First Search (BFS) on a graph.

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
    iex> DepthFirstSearch.search(graph, "tapas")
    ["tapas", "claire", "jonny", "thom", "bob", "peggy", "anuj", "alice", "peggy"]
  """

  def search(graph, start) do
    stack = :queue.from_list([start])
    do_search(graph, stack, [])
  end

  defp do_search(graph, stack, result) do
    case :queue.out(stack) do
      {{:value, current}, new_stack} ->
        neighbours = Map.get(graph, current, [])
        new_stack = Enum.reduce(neighbours, new_stack, &:queue.in_r/2)
        do_search(graph, new_stack, [current | result])

      {:empty, _} ->
        Enum.reverse(result)
    end
  end
end
