defmodule Test do
  def search(graph, start) do
    distances = Map.put(%{}, start, 0)
    to_visit = :queue.from_list([start])
    visited = MapSet.new()

    do_search(graph, to_visit, visited, distances)
  end

  defp do_search(graph, to_visit, visited, distances) do
    case :queue.out(to_visit) do
      {{:value, current}, new_to_visit} ->
        if MapSet.member?(visited, current) do
          do_search(graph, new_to_visit, visited, distances)
        end

        current_distance = Map.get(distances, current, :infinity)
        # 0

        neighbours = Map.get(graph, current, [])

        {new_distances, new_to_visit} =
          Enum.reduce(neighbours, {distances, new_to_visit}, fn {neighbour, time},
                                                                {dists, queue} ->
            new_dist = current_distance + time

            old_dist = Map.get(dists, neighbour, :infinity)

            if new_dist < old_dist do
              Map.put(dists, neighbour, new_dist)
              :queue.in(neighbour, queue)
            end
          end)

        new_visited = MapSet.put(visited, current)
        do_search(graph, new_to_visit, new_visited, new_distances)

      {:empty, _} ->
        distances
    end
  end
end
