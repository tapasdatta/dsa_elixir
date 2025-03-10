defmodule Dijkstra do
  @moduledoc """
  A module to find the shortest paths using Dijkstra's Algorithm, like a treasure hunt!
  """

  @doc """
  Finds the shortest time to each town from the start town.

  ## Parameters
  - graph: A map where keys are towns and values are lists of {neighbor, time} tuples.
  - start: The starting town.

  ## Returns
  - A map of towns to their shortest times.

  ## Examples
      iex> graph = %{"start" => [{"apple", 4}, {"banana", 2}], "apple" => [{"gold", 3}, {"banana", 1}], "banana" => [{"apple", 1}, {"gold", 5}], "gold" => []}
      iex> Dijkstra.search(graph, "start")
      %{"start" => 0, "apple" => 3, "banana" => 2, "gold" => 6}
  """
  def search(graph, start) do
    # Step 1: Make our list of times (distances) and towns to visit
    # Startville is 0 minutes
    distances = Map.put(%{}, start, 0)
    # Our "to explore" list starts with Startville
    to_visit = :queue.from_list([start])
    # Towns we’ve finished exploring
    visited = MapSet.new()

    # Step 2: Start the adventure!
    do_search(graph, to_visit, visited, distances)
  end

  defp do_search(graph, to_visit, visited, distances) do
    case :queue.out(to_visit) do
      # If there’s a town to visit
      {{:value, current}, new_to_visit} ->
        # Skip if we’ve already explored it
        if MapSet.member?(visited, current) do
          do_search(graph, new_to_visit, visited, distances)
        else
          # Get the time to this town (default to infinity if unknown)
          current_distance = Map.get(distances, current, :infinity)

          # Step 3: Check all paths from this town
          neighbours = Map.get(graph, current, [])

          {new_distances, new_to_visit} =
            Enum.reduce(neighbours, {distances, new_to_visit}, fn {neighbor, time},
                                                                  {dists, queue} ->
              # New time = time to current + path time
              new_dist = current_distance + time

              # If it’s faster than what we knew, update it!
              old_dist = Map.get(dists, neighbor, :infinity)

              if new_dist < old_dist do
                {
                  Map.put(dists, neighbor, new_dist),
                  # Add neighbor to visit later
                  :queue.in(neighbor, queue)
                }
              else
                # No update needed
                {dists, queue}
              end
            end)

          # Mark this town explored
          new_visited = MapSet.put(visited, current)
          do_search(graph, new_to_visit, new_visited, new_distances)
        end

      # If no more towns to visit, we’re done!
      {:empty, _} ->
        distances
    end
  end
end
