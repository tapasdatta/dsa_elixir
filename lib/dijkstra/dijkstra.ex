defmodule Dijkstra do
  @moduledoc """
  A module to find the shortest paths using Dijkstra's Algorithm.
  """

  @doc """
  Finds the shortest time to each town from the start town.

  ## Parameters
  - graph: A map where keys are towns and values are lists of {neighbor, time} tuples.
  - start: The starting town.

  ## Returns
  - A sorted list of {town, time} tuples.

  ## Examples
      iex> graph = %{
      ...>   "start" => [{"apple", 4}, {"banana", 2}],
      ...>   "apple" => [{"gold", 3}, {"banana", 1}],
      ...>   "banana" => [{"apple", 1}, {"gold", 5}],
      ...>   "gold" => []
      ...> }
      iex> Dijkstra.search(graph, "start")
      [{"start", 0}, {"banana", 2}, {"apple", 3}, {"gold", 6}]
  """
  def search(graph, start) do
    distances = %{start => 0}
    # Priority queue: sorted by distance
    to_visit = [{0, start}]
    visited = MapSet.new()

    distances
    |> do_search(graph, to_visit, visited)
    |> Enum.sort_by(fn {_, distance} -> distance end)
  end

  defp do_search(distances, _graph, [], _visited), do: distances

  defp do_search(distances, graph, [{current_distance, current_city} | rest_cities], visited) do
    if MapSet.member?(visited, current_city) do
      do_search(distances, graph, rest_cities, visited)
    else
      neighbors = Map.get(graph, current_city, [])

      {new_distances, new_to_visit} =
        Enum.reduce(neighbors, {distances, rest_cities}, fn {neighbor, time}, {dists, queue} ->
          new_dist = current_distance + time
          old_dist = Map.get(dists, neighbor, :infinity)

          if new_dist < old_dist do
            {Map.put(dists, neighbor, new_dist), Enum.sort([{new_dist, neighbor} | queue])}
          else
            {dists, queue}
          end
        end)

      do_search(new_distances, graph, new_to_visit, MapSet.put(visited, current_city))
    end
  end
end
