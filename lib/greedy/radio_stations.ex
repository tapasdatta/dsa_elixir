defmodule RadioStations do
  @moduledoc """
  A module to determine the minimal set of radio stations needed
  to cover all required states using a greedy algorithm.
  """

  @doc """
  Determines the optimal set of radio stations to cover all required states.

  Returns a list of station names that provide the best coverage.
  """
  def select_stations() do
    needed_states = MapSet.new(["mt", "wa", "or", "id", "nv", "ut", "ca", "az"])

    stations = %{
      "kone" => MapSet.new(["id", "nv", "ut"]),
      "ktwo" => MapSet.new(["wa", "id", "mt"]),
      "kthree" => MapSet.new(["or", "nv", "ca"]),
      "kfour" => MapSet.new(["nv", "ut"]),
      "kfive" => MapSet.new(["ca", "az"])
    }

    final = MapSet.new()

    pick_stations(needed_states, stations, final)
  end

  @doc false
  defp pick_stations(needed_states, stations, final) do
    if MapSet.size(needed_states) == 0 do
      final
    else
      {best_station, states_covered} =
        Enum.reduce(stations, {nil, MapSet.new()}, fn {station, states},
                                                      {best_station, states_covered} ->
          covered = MapSet.intersection(needed_states, states)

          if MapSet.size(covered) > MapSet.size(states_covered) do
            {station, covered}
          else
            {best_station, states_covered}
          end
        end)

      pick_stations(
        MapSet.difference(needed_states, states_covered),
        stations,
        MapSet.put(final, best_station)
      )
    end
  end
end
