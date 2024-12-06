defmodule FindMin do
  @moduledoc """
  A module to find the minimum value in a list.
  """

  @doc """
  Finds the minimum value in a list.

  ## Examples

      iex> FindMin.find_min([3, 1, 4, 1, 5, 9])
      {:ok, 1}

      iex> FindMin.find_min([])
      []

  """
  @spec find_min(list(number())) :: {:ok, number()} | []
  def find_min([]), do: []

  def find_min([head | tail]) do
    {min} = find_min(tail, head)
    {:ok, min}
  end

  @doc false
  defp find_min([], min), do: {min}

  @doc false
  defp find_min([head | tail], min) when head < min do
    find_min(tail, head)
  end

  @doc false
  defp find_min([_head | tail], min) do
    find_min(tail, min)
  end
end
