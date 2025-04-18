defmodule ScheduleSelector do
  @moduledoc """
  A module to determine the maximum number of non-overlapping classes
  that can be attended from a given class schedule.

  This solves the classic *Activity Selection Problem* using a greedy
  algorithm that selects classes based on the earliest end time.

  ## Example

      iex> ScheduleSelector.optimal_class_schedule()
      %{
        "Art" => %{start_time: 9.0, end_time: 10.0},
        "Math" => %{start_time: 10.0, end_time: 11.0},
        "Music" => %{start_time: 11.0, end_time: 12.0}
      }

  """

  @doc """
  Returns the optimal set of classes that can be attended without any time overlap.

  The function defines a fixed list of classes with start and end times, and
  selects the maximum number that don't conflict with each other.

  The return value is a map of class names to their schedules.

  ## Returns

    - `%{class_name => %{start_time: float, end_time: float}}`

  """
  def optimal_class_schedule do
    class_times = %{
      "Art" => %{start_time: 9.00, end_time: 10.00},
      "Eng" => %{start_time: 9.30, end_time: 10.30},
      "Math" => %{start_time: 10.00, end_time: 11.00},
      "CS" => %{start_time: 10.30, end_time: 11.30},
      "Music" => %{start_time: 11.00, end_time: 12.00}
    }

    # Step 1: Sort classes by their end time to allow optimal greedy selection
    class_times
    |> Enum.sort_by(fn {_name, time} -> time.end_time end)
    |> select_max_non_overlapping()
  end

  @doc false
  # Selects the maximum number of non-overlapping classes
  defp select_max_non_overlapping(sorted_classes) do
    Enum.reduce(sorted_classes, {%{}, 0.0}, fn {name, %{start_time: start, end_time: end_time}},
                                               {selected, last_end_time} ->
      # If the current class starts after the last selected one ends, add it
      if start >= last_end_time do
        {Map.put(selected, name, %{start_time: start, end_time: end_time}), end_time}
      else
        {selected, last_end_time}
      end
    end)
    # Return only the selected classes, discard the final end time
    |> elem(0)
  end
end
